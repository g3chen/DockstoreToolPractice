task hello {
	File file1
	Int mem
	command {
		bash output.sh "${file1}"
	}
	output {
		File final = "copy2.txt"
	}
	runtime {
		docker: "quay.io/f73chen/dockstore-test3:1.1"
		memory: mem + "GB"                                                     
	}
	meta {
		author: "Fenglin Chen"
	}
}

workflow test {
        call hello
}

