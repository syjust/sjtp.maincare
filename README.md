# TP MC project

## how to commit

1. clone project

	```bash
	~$ git clone ssh://github.com/syjust/sjtp.mc.git git_wc
	Cloning into 'git_wc'...
	remote: Counting objects: 54, done.
	remote: Compressing objects: 100% (44/44), done.
	remote: Total 54 (delta 10), reused 46 (delta 2), pack-reused 0
	Receiving objects: 100% (54/54), 7.16 KiB | 0 bytes/s, done.
	Resolving deltas: 100% (10/10), done.
	Checking connectivity... done.
	~$ cd sjtp.mc
	```

2. copy IdentityFile into your ~/.ssh directory & add ssh-config

	```bash
	~$ [ ! -d ~/.ssh ] && mkdir ~/.ssh
	~$ cp security/github/id_rsa* ~/.ssh
	~$ cat security/github/ ssh-config >> ~/.ssh/config
	```

3. remove password of IdentityFile

	```bash
	~$ ssh-keygen -p -f ~/.ssh/id_rsa-sjtp.mc-2016
	Enter old passphrase:
	Key has comment '~/.ssh/id_rsa-sjtp.mc-2016'
	Enter new passphrase (empty for no passphrase):
	Enter same passphrase again:
	Your identification has been saved with the new passphrase.
	```

4. you can now modify or create new file & git add / git commit / git push
