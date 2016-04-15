#!/bin/bash
svn_pref="git-svn"
tags="`git for-each-ref refs/remotes/$svn_pref/tags | cut -d / -f 5- | grep -v @`" 
for tag in $tags ; do
	echo "git tag \"$tag\" \"$svn_pref/tags/$tag\""
	git tag "$tag" "$svn_pref/tags/$tag"
	echo "git branch -r -d \"$svn_pref/tags/$tag\""
	git branch -r -d "$svn_pref/tags/$tag"
done

git branch -a
