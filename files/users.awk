BEGIN { FS=":"; print "Username" }
/^_/ { print $1 } 
$3 > 200 { print $3 ; count ++}
/^root/ { print "********Root User ************ : " $1 }
END { print "Total Lines: " NR ; print "Total Processed: " count}
