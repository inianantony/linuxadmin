BEGIN { RS=" \n" ; }
$0 ~ search { print }
