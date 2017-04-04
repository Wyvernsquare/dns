# GitNamed powered DNS record management

GitNamed is a project that manage name server by git. All changes are pushed out via webhooks

## Features

* A frame to manage DNS servers
* Put all your DNS data into git, and you have a revision from which you can backup and restore easily
* It's easy to manage DNS resource records, just edit and commit

## Overview

GitNamed is a project that manages your name server(s) by git. You can clone
the git repo to any workstation, edit zone file, commit and push the changes.
The data will be pushed to the master and slave name server on the fly.  

You don't need to touch name server any more, you have all your dat in a git repo with a history of your changes.  

If you need add a new zone, just create a new file in zones directory, zone file name should be the domain name.

```
vi zones/example.com
git add zones/example.com
git commit -m "add example.com"
```

Here is a example zone file:

```
$TTL 3600
@ 		IN	SOA	ns1.example.com. sysadm.example.com. (
			2012040812	; serial
			7200		; refresh
			1800		; retry
			1209600		; expire
			300 )		; minimum
		IN	NS	ns1.example.com.
		IN	NS	ns2.example.com.
		IN	A	133.130.102.210
$ORIGIN example.com.
ns1     172800    IN      A       133.130.102.210
ns2     172800    IN      A       133.130.102.210
www	IN	A   61.160.235.206
test	IN	A   61.160.235.200
*	IN	CNAME   example.com.
```

Those with access rights to this git repo can manage the nameserver.


### Setup slave DNS server

* copy code 

use a tool like rsync to copy /home/named/ to slave dns server, it must be same directory
as master dns.

* running setup file:

```
#./script/setup.py slave
```

* start named

```
#service named start
```

### add pre-commit hook to check zone file and auto increment serial

ln -s ../../script/check.sh .git/hooks/pre-commit 

you should put the serial of SOA in separated line and end it with
a comment "; serial":

```
$TTL 3600
@ 		IN	SOA	ns1.example.com. sysadm.example.com. (
			2012040812	; serial
			7200		; refresh
			1800		; retry
			1209600		; expire
			300 )		; minimum
```

