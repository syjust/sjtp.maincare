h1. test project

h2. how to commit

# clone project
<pre>
	git clone ssh://github.com/syjust/sjtp.test.git
	cd sjtp.test
</pre>
# copy IdentityFile into your ~/.ssh directory & add ssh-config
<pre>
	[ ! -d ~/.ssh ] && mkdir ~/.ssh
	cp security/github/id_rsa* ~/.ssh
	cat security/github/ ssh-config >> ~/.ssh/config
</pre>
# remove password of IdentityFile
<pre>
~$ ssh-keygen -p -f ~/.ssh/id_rsa-sjtp.mc-2016
	Enter old passphrase:
	Key has comment '/Users/sylvainjust/.ssh/id_rsa-sjtp.mc-2016'
	Enter new passphrase (empty for no passphrase):
	Enter same passphrase again:
	Your identification has been saved with the new passphrase.
</pre>
# you can now modify or create new file & git add / git commit / git push
