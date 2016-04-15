#!/bin/bash
tags="`git for-each-ref refs/remotes/git-svn/tags | cut -d / -f 5- | grep -v @`" 
for $tag in $tags ; do
	echo 'git tag "$tag" "tags/$tag'
	echo 'git branch -r -d "tags/$tag"'
done
