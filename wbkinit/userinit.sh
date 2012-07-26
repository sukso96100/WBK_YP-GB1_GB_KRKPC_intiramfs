#!/system/bin/sh

# User init.d Scripts Support
# Original author of this shell script : EunHwanPark(andmylife@naver.com)
# http://blog.naver.com/andmylife/141455386

echo $(date) USER INIT START 
if cd /system/etc/init.d >/dev/null 2>&1 ; then 
for file in S* ; do 
if ! ls "$file" >/dev/null 2>&1 ; then continue ; fi 
echo "START '$file'" 
        /system/bin/sh "$file" 
        echo "EXIT '$file' ($?)" 
    done 
fi
