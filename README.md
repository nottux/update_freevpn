# update_freevpn
Updates Freevpn passwords

Usage:	`update_freevpn.sh FILE DOMAIN NAME`

Or:	    `update_freevpn.sh --all FILE`

Or:	    `update_freevpn.sh --help`

Options:

`-h`, `--help`	Will show help

`-a`, `--all` 	Will download all passwords and save them to corresponding files


Example:


`update_freevpn.sh /home/utku/some_file me`

Will create `/home/utku/password.me` file

`/home/utku/soem_file.me` will include:

```
freevpn.me
PASSWORD
```

`update_freevpn.sh -a /home/utku/some_file`

Will create files in `/home/utku`

```
utku@utku-Linux:~$ ls
some_file.be	 some_file.eu  some_file.it  some_file.se
some_file.co.uk  some_file.im  some_file.me
```
