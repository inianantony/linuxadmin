#!/bin/bash
clear
echo "-------------------Print the result using p---------------------------------"
nl ./files/parsecsv.sh
echo "-------------------create multiple nested folders by adding the -p option---------------------------------"
mkdir -p fruits/apples
echo "-------------------create /delete multiple folders at once---------------------------------"
mkdir fruits cars
rmdir fruits cars
echo "-------------------Normally folder you delete must be empty, delete folders with files in them, we'll use the more generic rm---------------------------------"
rm -rf fruits cars
echo "-------------------Move list of files into a folder---------------------------------"
mv pear apple fruits #pear and apple moved to the fruits folder
echo "-------------------copy folders you need to add the -r option to recursively copy the whole folder contents---------------------------------"
cp -r fruits cars
echo "-------------------Open command is used to open file / folder / application---------------------------------"
open .
echo "-------------------find command can be used to find files or folders matching a particular search pattern. It searches recursively---------------------------------"
find . -name '*.js'
find . -type d -name src # directories under the current tree matching the name "src", -type f to search only files, or -type l to only search symbolic links
find folder1 folder2 -name filename.txt #search under multiple root trees
find . -type d -name node_modules -or -name public #Find directories under the current tree matching the name "node_modules" or 'public'
find . -type d -name '*.md' -not -path 'node_modules/*' #exclude a path using -not -path
find . -type f -size +100c #search files that have more than 100 characters in them
find . -type f -size +100k -size -1M #Search files bigger than 100KB but smaller than 1MB
find . -type f -mtime +3 #Search files edited more than 3 days ago
find . -type f -mtime -1 #Search files edited in the last 24 hours
find . -type f -mtime -1 -delete #delete all the files matching a search by adding the -delete option
find . -type f -exec cat {} \; #execute a command on each result. Notice the terminating \;. {} is filled with the file name at execution time.
echo "-------------------Archival using gzip, gunzip, tar(taped archive)---------------------------------"
gzip filename #compress the file, and append a .gz extension, The original file is deleted 
gzip -c filename > filename.gz # original file is not deleted
gzip -kv filename # original file is not deleted with -k flag and -v is to log the output
gzip -1 filename #Levels range from 1 (fastest, worst compression) to 9 (slowest, better compression), and the default is 6
gzip filename1 filename2 #compress multiple files by listing them
gzip -r a_folder #compress all the files in a directory, recursively, using the -r
gzip -d filename.gz #gzip can also be used to decompress a file, using the -d
gunzip filename.gz # same as gzip with -d option
gunzip -c filename.gz > anotherfilename # extract to another filename
tar -czf archive.tar file1 file2 #creates (-c) an archive named archive.tar(-f for filename) and zips it using (-z)
tar -xzf archive.tar -C directory #extracts (-x) filename (-f) to a specific directory (-C) also unzips it (-z)
tar -tf archive.tar # list files inside the archive
echo "-------------------cat command---------------------------------"
cat file1 file2 > file3 #using the output redirection operator > you can concatenate the content of multiple files into a new file
cat file1 file2 >> file3 #Using >> you can append the content of multiple files into a new file, creating it if it does not exist
cat -n file1 #see the line numbers. You can have cat print them using the -n,
cat -nbs ./files/sample.txt #add a number to non-blank lines using -b, or you can also remove all the multiple empty lines using -s
echo "-------------------less command---------------------------------"
less sales_records.csv #hows you the content stored inside a file, in a nice and interactive mode
:/ Europe # Forward search for string 
:? Europe # Backwards search for string 
:q # quite the interactive mode
echo "-------------------tail command---------------------------------"
tail -f sales_records.csv #opens the file at the end, and watches for file changes
tail -n 10 sales_records.csv # print the last 10 lines in a file
echo "-------------------wc command---------------------------------"
wc sales_records.csv  # outputs the number of lines in 1st column, words in second and ASCII bytes in 3rd
wc -l sales_records.csv # only prints lines , -w for wordcount







