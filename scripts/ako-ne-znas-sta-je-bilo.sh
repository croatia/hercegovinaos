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

# Čitaj iz ~/.bash_history (PROMPT_COMMAND="history -a" u bashrcu osigurava svjež zapis)
HISTFILE="${HOME}/.bash_history"

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "  Uporaba: ako-ne-znas-sta-je-bilo [n]"
    echo ""
    echo "  Prikazuje povijest naredbi u terminalu."
    echo "  Opcionalno: broj zadnjih naredbi za prikaz."
    echo ""
    echo "  Primjer:"
    echo "    ako-ne-znas-sta-je-bilo        # Sve"
    echo "    ako-ne-znas-sta-je-bilo 20     # Zadnjih 20"
    echo ""
elif [ ! -f "$HISTFILE" ]; then
    echo "  Još nema povijesti. Tek si počeo — piši povijest!"
elif [ -n "$1" ]; then
    tail -n "$1" "$HISTFILE" | nl
else
    cat "$HISTFILE" | nl
fi

echo ""
echo -e "  ${CYAN}Tko ne poznaje svoju povijest, osuđen je da je ponovi.${NC}"
echo ""
