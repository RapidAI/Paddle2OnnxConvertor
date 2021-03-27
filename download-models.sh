#!/bin/bash
wget -c -i paddle-model-list.txt

function unTarToDir() {
	mkdir ${1}
	tar xf ${1}.tar -C ${1} --strip-components 1
	if [[ "`ls -A ${1}`" = "" ]]; then
    	tar xf ${1}.tar -C ${1}
	fi
}

function unTarFile() {
	fullName=${1##*/}
	echo "unTarToDir ${fullName%.*}"
	unTarToDir ${fullName%.*}
}

export -f unTarToDir
export -f unTarFile
find . -name '*.tar' -type f -exec bash -c 'unTarFile "$0"' {} \;
