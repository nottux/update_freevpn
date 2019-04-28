#/bin/sh
a1=me
a2=se
a3=im
a4=it
a5=be
a6=co.uk
a7="$2"
r=7
d="$1"
echo $1 $2
if [ "$1" = --all -o "$1" = -a ]
then r=1
a7=eu
d="$2"
fi
if [ "$3" != "" -o "$2" = "" ]
then h=1
e=1
fi
if [ "$1" = "--help" -o "$1" = "-h" ]
then h=1
e=0
fi
if [ "$h" = 1 ]
then echo "Usage:	update_freevpn.sh FILE DOMAIN NAME"
echo "Or:	update_freevpn.sh --all FILE"
echo "Or:	update_freevpn.sh --help"
echo
echo "Options:"
echo "-h, --help	Will show help"
echo "-a, --all	Will download all passwords and save them to corresponding files"
echo
echo "Example:"
echo "update_freevpn.sh /home/utku/some_file me"
echo "Will create /home/utku/password.me file"
echo "/home/utku/soem_file.me will include:"
echo "freevpn.me"
echo "PASSWORD"
exit $e
fi
while [ $r -lt 8 ]
do eval "c=$(echo \$a$r)"
echo "$d.$c"
rm "$d.$c"
echo "freevpn.$c">"$d.$c"
curl http://freevpn.$c/accounts|tr \< A|tr \> C|tr / B|awk '{gsub(/ABliCAliCAbC/,"\n")}1'|awk '{gsub(/ABliCAB/,"\n")}1'|grep Password:ABbC|awk '{gsub(/Password:ABbC /,"")}1'>>"$d.$c"
r=$(($r+1))
done
