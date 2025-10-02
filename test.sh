#!/bin/bash

green=$(tput setaf 2)
red=$(tput setaf 1)
cyan=$(tput setaf 6)
reset=$(tput sgr0)

clear
echo -e "${green}Initializing secure connection to MAINFRAME...${reset}"
sleep 2
echo -e "${cyan}Bypassing firewall...${reset}"
sleep 2

for i in {1..20}; do
  echo -ne "${green}#${reset}"
  sleep 0.1
done
echo -e "\n${green}Firewall bypassed successfully!${reset}\n"
sleep 1

for i in {1..10}; do
  echo -e "${cyan}0x$(openssl rand -hex 8) ACCESS_GRANTED user=admin${reset}"
  echo -e "${red}>>> Injecting packet: $(openssl rand -hex 4)${reset}"
  echo -e "${green}[+] Decrypting: $(openssl rand -base64 6)...${reset}"
  sleep 0.3
done

sleep 2

echo -e "\n${green}[SUCCESS] I'm in.${reset}"

