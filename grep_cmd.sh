#!/bin/bash
clear
echo "********************* STARTING *********************"
echo "grep --version"
echo "=============="
grep --version
echo "---------------------Search for line containing 'user' & color code the output-------------------------------"
grep user /etc/passwd --color=auto
echo "---------------------Search for line begining with 'user'---------------------------------"
grep ^user /etc/passwd --color=auto
echo "---------------------Search for line containing 'awk'----------------------------------"
man awk | grep awk
echo "---------------------Search for line containing 'awk' ignore case---------------------------------"
man awk | grep -i awk
echo "----------------------Search for line **NOT** containing 'awk'------------------------------"
man awk | grep -v awk | tail
echo "----------------------Search for lines containing 'awk' and show the count as result------------------------------"
man awk | grep -c awk
echo "----------------------Search for line containing 'awk' and show 2 more lines after------------------------------"
man awk | grep -A2 awk
echo "----------------------Search for line containing 'awk' and show 2 more lines before------------------------------"
man awk | grep -B2 awk
echo "----------------------Search for line containing 'awk' and two lines surrounding the context ie, before and after------------------------------"
man awk | grep -C2 awk
echo "----------------------Search for line containing 'North'------------------------------"
grep 'North' sales_records.csv --color=auto
echo "-----------------------Search for line begining with 'North' -----------------------------"
grep '^North' sales_records.csv --color=auto
echo "-----------------------Search for line ending with '25' -----------------------------"
grep '25$' sales_records.csv --color=auto
echo "-----------------------Search for empty lines-----------------------------"
grep '^$' sales_records.csv --color=auto
echo "-----------------------Search for **NON EMPTY** lines-----------------------------"
grep -v '^$' sales_records.csv --color=auto
echo "-----------------------Search for lines starting with characters from G ~ O-----------------------------"
grep '^[G-O]' sales_records.csv --color=auto
echo "-----------------------Seach for lins ending between 0 ~ 2-----------------------------"
grep '[0-2]$' sales_records.csv --color=auto
echo "-----------------------Seach for lines not ending with any of these numbers 3, 4, 5, 6, 7-----------------------------"
grep '[^34567]$' sales_records.csv --color=auto
echo "-----------------------Search for any lines containing pattern or Pattern-----------------------------"
man awk | grep '[Pp]attern' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern followed by a word boundary-----------------------------"
man awk | grep '[Pp]attern\b' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern and **NOT** followed by boundary-----------------------------"
man awk | grep '[Pp]attern\B' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern followed by space character-----------------------------"
man awk | grep '[Pp]attern\s' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern followed by **NON** white space-----------------------------"
man awk | grep '[Pp]attern\S' --color=auto
echo "----------------------------------------------------"

