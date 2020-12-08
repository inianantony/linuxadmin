#!/bin/bash
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
echo "man awk | grep awk"
echo "==========================="
man awk | grep awk
echo "----------------------------------------------------"
echo "man awk | grep -i awk"
echo "==========================="
man awk | grep -i awk
echo "----------------------------------------------------"
echo "man awk | grep -v awk"
echo "==========================="
man awk | grep -v awk
echo "----------------------------------------------------"
echo "man awk | grep -c awk"
echo "==========================="
man awk | grep -c awk
echo "----------------------------------------------------"
echo "man awk | grep -A2 awk"
echo "==========================="
man awk | grep -A2 awk
echo "----------------------------------------------------"
echo "man awk | grep -B2 awk"
echo "==========================="
man awk | grep -B2 awk
echo "----------------------------------------------------"
echo "man awk | grep -C2 awk"
echo "==========================="
man awk | grep -C2 awk
echo "----------------------------------------------------"

