#!/bin/bash
svn_pref="git-svn"
branches="`git for-each-ref refs/remotes/$svn_pref | cut -d / -f 4- | grep -v @`" 
for branch in $branches ; do
	echo "git branch \"$branch\" \"$svn_pref/$branch\""
	git branch "$branch" "$svn_pref/$branch"
	echo "git branch -r -d \"$svn_pref/$branch\""
	git branch -r -d "$svn_pref/$branch"
done

git branch -a
