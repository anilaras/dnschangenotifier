#!/bin/bash

i=1
while [ $i -eq 1 ]
do

degis=`nslookup betrising.com 8.8.8.8|grep -i "Address" |grep -v "#"| cut -d " " -f2`

if [ $degis != "162.144.94.89" ]
then
notify-send "ip adresi değişti"
else
echo "değişim yok (Durdurmak icin  CTRL+C kullanın)"
fi

sleep 5 
done
