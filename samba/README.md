
Samba In Docker!
======

Guild
-----

Build:

``` bash
$ ./docker build
```

Start:

``` bash
$ ./docker daemon
```

Install smbclient:

``` bash
$ apt-get install -y smbclient
```

Access:

``` bash
$ smbclient //localhost/share -Uroot%123456
```

Tips:

	smbd -b

	testparm /etc/samba/smb.conf
	testparm -s smb.conf.master > smb.conf

	smbclient -L localhost
	smbclient //localhost/data/ -Uusername%password