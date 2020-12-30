BEGIN { FS=","
printf "%8s %15s %18s\n","Region","Country","Total Profit"
print "==========================================="
}
!(/Region/ || /Sub-Saharan/ || /^Middle East/ || /^Europe/ || /^Australia/ || /^Central/ || /^North/) {
cnt++
if ( NF == 14 )
    printf "%8s %15s %18s\n", $1,$2,$14

else
    print "Weird File Lines : " $1
}
END {
print "===================="
print "Total Number of Users Processed: ", cnt
}
