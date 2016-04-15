#!/bin/bash
svn log ^/ --xml \
	| grep -E "^<author" \
	| sed 's_<author>\([^<]*\)</author>_\1 = \1 <\1@maincare.com>_' \
	| sort -u
