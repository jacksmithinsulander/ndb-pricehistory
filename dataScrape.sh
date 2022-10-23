#!/bin/bash

gecko="$(curl https://www.coingecko.com/ | xmllint --html --xpath '/html/body/div[4]/div[4]/div[6]/div[1]/div/table/tbody/tr[1]/td[4]/div/div[2]/span/text()' - | sed 's/[,\$]//g')"
nomics="$(curl https://nomics.com/ | xmllint --html --xpath '//*[@id="__next"]/div[1]/div[4]/div[1]/div/div/div[3]/div[3]/table/tbody/tr[1]/td[3]/div/span[1]/text()' - | sed 's/[,\$]//g')"
cmc="$(curl https://coinmarketcap.com/ | xmllint --html --xpath '//*[@id="__next"]/div/div[1]/div[2]/div/div[1]/div[5]/table/tbody/tr[1]/td[4]/div/a/span/text()' - | sed 's/[,\$]//g')"

echo $(($gecko+$nomics+$cmc)) >> test.txt 
