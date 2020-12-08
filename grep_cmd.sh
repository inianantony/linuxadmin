#bin/bash
clear
echo "----------------------------------------------------"
echo "grep --version"
echo "=============="
grep --version
echo "----------------------------------------------------"
echo "grep user /etc/passwd --color=auto"
echo "=================================="
grep user /etc/passwd --color=auto
echo "----------------------------------------------------"
echo "grep ^user /etc/passwd --color=auto"
echo "==================================="
grep ^user /etc/passwd --color=auto
echo "----------------------------------------------------"
echo "declare -f | grep '^[a-z_]'"
echo "==========================="
declare -f | grep '^[a-z_]'
echo "----------------------------------------------------"