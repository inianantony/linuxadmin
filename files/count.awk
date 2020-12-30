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
    for ( c in country){
        if ( max < country[c]){
            max = country[c];
            bestSalesCountry = c;
        }
        print c, " has ", country[c], " Sales records";
    }
    print "=================================="
    OFS=" ";  
    print "Best Sales is from ", c " with ", country[c], "sales records" ;
}
