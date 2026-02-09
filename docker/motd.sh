#!/bin/bash
# ⚡ StormOS MOTD — Message of the Day

RED='\033[0;31m'
WHITE='\033[1;37m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

echo ""
echo -e "  ${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${NC}"
echo -e "  ${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${NC}"
echo -e "  ${RED}███████╗████████╗ ██████╗ ██████╗ ███╗   ███╗ ██████╗ ███████╗"
echo -e "  ${WHITE}██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗████╗ ████║██╔═══██╗██╔════╝"
echo -e "  ${RED}███████╗   ██║   ██║   ██║██████╔╝██╔████╔██║██║   ██║███████╗"
echo -e "  ${WHITE}╚════██║   ██║   ██║   ██║██╔══██╗██║╚██╔╝██║██║   ██║╚════██║"
echo -e "  ${RED}███████║   ██║   ╚██████╔╝██║  ██║██║ ╚═╝ ██║╚██████╔╝███████║"
echo -e "  ${WHITE}╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝${NC}"
echo -e "  ${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${NC}"
echo -e "  ${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${RED}██${WHITE}██${NC}"
echo ""
echo -e "  ${WHITE}${BOLD}Prva hrvatska Linux distribucija${NC}"
echo -e "  ${CYAN}Verzija 1.0 \"Bura\" — bazirana na Ubuntu LTS${NC}"
echo ""
echo -e "  ${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${YELLOW}⚡${NC} ${WHITE}Oslobodi svoj desktop.${NC}"
echo -e "  ${YELLOW}⚡${NC} ${WHITE}Sloboda za svaki bajt.${NC}"
echo -e "  ${YELLOW}⚡${NC} ${WHITE}Nema predaje — ni kernelu.${NC}"
echo ""
echo -e "  ${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${CYAN}Brzi start:${NC}"
echo -e "    ${GREEN}oluja update${NC}              Pripremi ofenzivu"
echo -e "    ${GREEN}oluja install <paket>${NC}     Pojačanje pristiglo"
echo -e "    ${GREEN}general oluja upgrade${NC}     Operacija nadogradnje"
echo -e "    ${GREEN}ako-ne-znas-sta-je-bilo${NC}  Zanima te povijest?"
echo -e "    ${GREEN}oluja bura${NC}               Easter egg ⚡"
echo -e "    ${GREEN}neofetch${NC}                 Prikaz sustava"
echo ""
echo ""

# Special date check — 5. kolovoza
if [ "$(date +%m-%d)" = "08-05" ]; then
    echo -e "  ${RED}${BOLD}🇭🇷 ════════════════════════════════════════════════════ 🇭🇷${NC}"
    echo -e "  ${RED}${BOLD}   DANAS JE DAN POBJEDE I DOMOVINSKE ZAHVALNOSTI!${NC}"
    echo -e "  ${RED}${BOLD}   General automatski odobrava sve operacije.${NC}"
    echo -e "  ${RED}${BOLD}🇭🇷 ════════════════════════════════════════════════════ 🇭🇷${NC}"
    echo ""
fi
