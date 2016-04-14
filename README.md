# sj TP Maincare project

## how to commit

1. clone project

	```
	git clone ssh://github.com/syjust/sjtp.test.git
	cd sjtp.test
	```

2. copy IdentityFile into your ~/.ssh directory & add ssh-config

	```
	[ ! -d ~/.ssh ] && mkdir ~/.ssh
	cp security/github/id_rsa* ~/.ssh
	cat security/github/ ssh-config >> ~/.ssh/config
	```

3. remove password of IdentityFile

	```bash
	~$ ssh-keygen -p -f ~/.ssh/id_rsa-sjtp.mc-2016
	Enter old passphrase:
	Key has comment '/Users/sylvainjust/.ssh/id_rsa-sjtp.mc-2016'
	Enter new passphrase (empty for no passphrase):
	Enter same passphrase again:
	Your identification has been saved with the new passphrase.
	```

4. you can now modify or create new file & git add / git commit / git push
