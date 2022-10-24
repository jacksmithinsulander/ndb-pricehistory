#!/bin/bash
for i in `seq 1 60`;

do

gecko="$(curl https://www.coingecko.com/ | xmllint --html --xpath '/html/body/div[4]/div[4]/div[6]/div[1]/div/table/tbody/tr[1]/td[4]/div/div[2]/span/text()' - | sed 's/[,\$]//g')"
nomics="$(curl https://nomics.com/ | xmllint --html --xpath '//*[@id="__next"]/div[1]/div[4]/div[1]/div/div/div[3]/div[3]/table/tbody/tr[1]/td[3]/div/span[1]/text()' - | sed 's/[,\$]//g')"
cmc="$(curl https://coinmarketcap.com/ | xmllint --html --xpath '//*[@id="__next"]/div/div[1]/div[2]/div/div[1]/div[5]/table/tbody/tr[1]/td[4]/div/a/span/text()' - | sed 's/[,\$]//g')"

addedPrice=$(echo "$gecko + $nomics + $cmc" | bc )

btcPrice=$(echo "scale=4; $addedPrice / 3" | bc )

echo "$i=$btcPrice" >> test.txt

sleep 1m 

done    
