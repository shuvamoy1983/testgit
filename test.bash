#!/bin/bash
echo "show all tables"
#/usr/bin/mysql -ujenkins -p'Iamhere1@' 'mysql' < 'test.sql'
rm a.out
find /var/lib/jenkins/workspace/op/*.sql -type f -mmin -1 -ls | awk '{print $11}' >> a.out
while read line;
 do
         /usr/bin/mysql -ujenkins -p'Iamhere1@' 'mysql' < $line
          echo $line;
 done < a.out

