BEGIN { 
    FS=",";  
    print "Sales Summary" ;  
    print "================="
}
!(/^\s*#?start/ || /^\s*#?end/ || /^\s*#?bb/ || /^\s*$/){ 
    country[$1]++ 
}
END {
    OFS="_____";  
    for ( c in country)
    print c, " has ", country[c], " Sales records" 
}
