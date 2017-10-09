SHELL 		:= 	/bin/bash
FILES  		:= $(shell ls scripts)
DIR 		:= $(shell pwd)
PREFIX  	:= /usr/local/bin
SCRIPTDIR 	= scripts

install:	
	@for f in `ls ${SCRIPTDIR}` ; do \
		ln -s ${DIR}/${SCRIPTDIR}/$$f ${PREFIX}/$$f; \
	done