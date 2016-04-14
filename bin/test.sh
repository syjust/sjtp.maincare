#!/bin/bash
function call() {
	echo $0 called with args :
	while [ ! -z "$1" ] ; do
		echo " '$1',"
	done
}
call $@
