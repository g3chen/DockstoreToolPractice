task hello {
	File file1
	Int mem
	command {
		bash output.sh "${file1}"
	}
	output {
		File final = "copy.txt"
	}
	runtime {
		docker: "g3chen/output-test:1.0"
		memory: mem + "GB"                                                     
	}
	meta {
		author: "Fenglin Chen"
	}
}

workflow test {
        call hello
}

