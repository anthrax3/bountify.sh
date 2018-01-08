#!/bin/bash

GREEN='\033[0;32m'
END='\033[0m'

printf "${GREEN}

██████╗  ██████╗ ██╗   ██╗███╗   ██╗████████╗██╗███████╗██╗   ██╗
██╔══██╗██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝██║██╔════╝╚██╗ ██╔╝
██████╔╝██║   ██║██║   ██║██╔██╗ ██║   ██║   ██║█████╗   ╚████╔╝ 
██╔══██╗██║   ██║██║   ██║██║╚██╗██║   ██║   ██║██╔══╝    ╚██╔╝  
██████╔╝╚██████╔╝╚██████╔╝██║ ╚████║   ██║   ██║██║        ██║   
╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝        ╚═╝${END}
                        By EdOverflow                                                                                                                                                                
\\n"

printf "${GREEN}[+]${END} Original\\n\\n"
cat $1
printf "\\n${GREEN}[+]${END} Autocorrect\\n\\n"
while read line; do
    sed -E 's/Dear sir/Hi/Ig; s/TAXI DRIVER/uber/Ig; s/bounty pls|bounty please//Ig; 
    		s/RCE/remote code execution/Ig; s/a XSS|an XSS/a cross-site scripting vulnerability/Ig; 
    		s/XSS/cross-site scripting/Ig; s/SSRF/server-side request forgery/Ig; 
    		s/SQLi/SQL injection/Ig; s/POC/proof of concept/Ig; s/\<i\>/I/g;
    		s/a hacker|an attacker/an adversary/Ig; s/ \<hacker\>| \<attacker\>/ adversary/Ig; 
    		s/hackers|attackers/adversaries/Ig; s/\<js\>/JavaScript/Ig' $1 > report.txt
done < $1
cat report.txt
printf "\\n"
printf "${GREEN}[+]${END} Spellcheck\\n\\n"
cat report.txt | aspell -a | cut -d ' ' -f 2 | grep -v '*\|International' | sed '/^\s*$/d'
echo ""
printf "${GREEN}[+]${END} Insensitive & inconsiderate language check\\n\\n"
alex report.txt
