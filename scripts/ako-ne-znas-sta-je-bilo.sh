#!/bin/bash
# ⚡ ako-ne-znaš-šta-je-bilo — StormOS History
# Wrapper za history jer... pa, ako ne znaš šta je bilo.
# Verzija: 1.0-bura

RED='\033[0;31m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "  ${RED}⚡ StormOS — Povijest naredbi${NC}"
echo -e "  ${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "  ${BOLD}Zanima te povijest? Evo ti povijest:${NC}"
echo ""

# Pass through to history via bash
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "  Uporaba: ako-ne-znaš-šta-je-bilo [n]"
    echo ""
    echo "  Prikazuje povijest naredbi u terminalu."
    echo "  Opcionalno: broj zadnjih naredbi za prikaz."
    echo ""
    echo "  Primjer:"
    echo "    ako-ne-znaš-šta-je-bilo        # Sve"
    echo "    ako-ne-znaš-šta-je-bilo 20     # Zadnjih 20"
    echo ""
    echo "  Napomena: Tko ne poznaje svoju povijest,"
    echo "            osuđen je da je ponovi."
    echo ""
elif [ -n "$1" ]; then
    history "$1" 2>/dev/null || cat ~/.bash_history | tail -n "$1" | nl
else
    history 2>/dev/null || cat ~/.bash_history | nl
fi

echo ""
echo -e "  ${CYAN}Tko ne poznaje svoju povijest, osuđen je da je ponovi.${NC}"
echo ""
