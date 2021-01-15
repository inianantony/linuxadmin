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
man awk | grep awk --color=auto
echo "---------------------Search for line containing 'awk' ignore case---------------------------------"
man awk | grep -i awk --color=auto
echo "----------------------Search for line **NOT** containing 'awk'------------------------------"
man awk | grep -v awk | tail
echo "----------------------Search for lines containing 'awk' and show the count as result------------------------------"
man awk | grep -c awk
echo "----------------------Search for line containing 'awk' and show 2 more lines after------------------------------"
man awk | grep -A2 awk --color=auto
echo "----------------------Search for line containing 'awk' and show 2 more lines before------------------------------"
man awk | grep -B2 awk --color=auto
echo "----------------------Search for line containing 'awk' and two lines surrounding the context ie, before and after------------------------------"
man awk | grep -C2 awk --color=auto
echo "----------------------Search for line containing 'North'------------------------------"
grep 'North' sales_records.csv --color=auto
echo "-----------------------Search for line begining with 'North' -----------------------------"
grep '^North' sales_records.csv --color=auto
echo "-----------------------Search for line ending with '25' -----------------------------"
grep '25$' sales_records.csv --color=auto
echo "-----------------------Search for empty lines-----------------------------"
grep '^$' sales_records.csv --color=auto
echo "-----------------------Search for **NON EMPTY** lines-----------------------------"
grep -v '^$' sales_records.csv --color=auto | tail
echo "-----------------------Search for lines starting with characters from G ~ O-----------------------------"
grep '^[G-O]' sales_records.csv --color=auto
echo "-----------------------Seach for lins ending between 0 ~ 2-----------------------------"
grep '[0-2]$' sales_records.csv --color=auto
echo "-----------------------Seach for lines not ending with any of these numbers 3, 4, 5, 6, 7-----------------------------"
grep '[^34567]$' sales_records.csv --color=auto
echo "-----------------------Search for any lines containing pattern or Pattern-----------------------------"
man awk | grep '[Pp]attern' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern followed by a word boundary ( a space or any character )-----------------------------"
man awk | grep '[Pp]attern\b' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern and **NOT** followed by boundary-----------------------------"
man awk | grep '[Pp]attern\B' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern followed by space character-----------------------------"
man awk | grep '[Pp]attern\s' --color=auto
echo "-----------------------Search for lines containing pattern or Pattern followed by **NON** white space-----------------------------"
man awk | grep '[Pp]attern\S' --color=auto
echo "-----------------------Search for word pop with begining boundary and ends with a number between 0~3 followed by a boundary-----------------------------"
grep '\bpop[0-3]\b' /etc/services --color=auto
echo "-----------------------Search for lines **NOT** begining with comment though there are spaces in the begining-------------------------------"
grep -v '^\s*#' sales_records.csv | tail -6
echo "-----------------------Seach for string start end with or without any number of space in the middle of the two letters-------------------------------"
grep 'start\s*end' sales_records.csv 
echo "-----------------------Seach for string start end with or without **ONE** space in the middle of the two letters-------------------------------"
grep -E 'start\s?end' sales_records.csv
echo "-----------------------Seach for string start end with exactly 2 space in the middle of the two letters-------------------------------"
grep -E 'start\s{2}end' sales_records.csv
echo "-----------------------Search for `europe` case insensitively and prints the line numbers -------------------------------"
grep -ni europe sales_records.csv 
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
echo "------------------------------------------------------"
