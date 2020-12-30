#!/bin/bash
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias sed='gsed'
fi
clear
echo "-------------------Print the result using p---------------------------------"
sed ' p ' ./files/sample.txt
echo "-------------------Print the result using p but supress the standard output---------------------------------"
sed -n ' p ' ./files/sample.txt
echo "-------------------Print the n number of lins in range-----------------------------------"
sed -n '1,3 p ' ./files/sample.txt
echo "-------------------Print the n number of lins in range-----------------------------------"
sed -n '2,$ p ' ./files/sample.txt
echo "-------------------Print the line begining with '2' , ie the pattern between the 2 slashes-----------------------------------"
sed -n '/^2/ p ' ./files/sample.txt
echo "-------------------Print the lines 6 ~ 9 and replace 20 with @@ -----------------------------------"
sed -n ' 6,9 s/20/@@/p ' sales_records.csv 
echo "-------------------Print the lines 6 ~ 9 and replace /20 with ^~~ Note: here we used @ as delimiter-----------------------------------"
sed -n ' 6,9 s@/20@^~~@p ' sales_records.csv 
echo "-------------------Print the lines 6 ~ 9 and substituting the begining of line with 4 space for intending -----------------------------------"
sed -n ' 6,9 s/^/    /p' ./files/parsecsv.sh
echo "-------------------Append a comment ~after~ the lines witn SIGN word-----------------------------------"
sed ' /^[0-9]*\s*[A-Z]*\s*SIGN/ a #These are lines for SIGN' ./files/sample.txt 
echo "-------------------Append a comment ~before~ the lines witn SIGN word-----------------------------------"
sed ' /^[0-9]*\s*[A-Z]*\s*SIGN/ i #These are lines for SIGN' ./files/sample.txt 
echo "-------------------Delete the lines witn SIGN word-----------------------------------"
sed ' /^[0-9]*\s*[A-Z]*\s*SIGN/ d' ./files/sample.txt 
echo "-------------------Multiline sed commands-----------------------------------"
sed '{
/^[0-9]*\s*[A-Z]*\s*SIGN/i #This is a Sign info line
/^[0-9]*\s*[A-Z]*\s*MARK/a #This is a mark info line
/^[0-9]*\s*[A-Z]*\s*LETTER/d
}' ./files/sample.txt
echo "--------------------Multiline sed command from a file----------------------------------"
sed -f ./files/multiline.sed ./files/sample.txt
echo "--------------------Make the change to the file by passing -i command and create back up by also adding .bak ----------------------------------"
cp ./files/sample.txt ./files/msample.txt
sed -i.bak -f ./files/multiline.sed ./files/msample.txt
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

unalias sed