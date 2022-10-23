#!/bin/bash
curl https://www.coingecko.com/ | xmllint --html --xpath "/html/body/div[4]/div[4]/div[6]/div[1]/div/table/tbody/tr[1]/td[4]/div/div[2]/span/text()" - >> test.txt
