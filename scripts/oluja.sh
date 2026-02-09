#!/bin/bash
# ⚡ oluja — StormOS Package Manager
# Wrapper za apt s vojnim briefingom
# Verzija: 1.0-bura
# Licenca: Croatian Public License v1.0

set -eo pipefail

VERSION="1.0-bura"
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# ASCII logo
show_logo() {
    echo -e "${RED}"
    echo "  ⚡ StormOS — oluja v${VERSION}"
    echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${NC}"
}

# Poruke
msg_info()    { echo -e "  ${CYAN}📡${NC} $1"; }
msg_success() { echo -e "  ${GREEN}✅${NC} $1"; }
msg_warning() { echo -e "  ${YELLOW}🔍${NC} $1"; }
msg_target()  { echo -e "  ${YELLOW}🎯${NC} $1"; }
msg_download(){ echo -e "  ${YELLOW}📥${NC} $1"; }
msg_package() { echo -e "  ${CYAN}📦${NC} $1"; }
msg_rocket()  { echo -e "  ${YELLOW}🚀${NC} $1"; }
msg_clean()   { echo -e "  ${CYAN}🧹${NC} $1"; }
msg_flag()    { echo -e "  ${NC}🏳️${NC}  $1"; }

case "${1}" in
    update)
        show_logo
        msg_warning "Priprema se ofenziva..."
        msg_info "Kontaktiram zapovjedno središte..."
        echo ""
        apt-get update 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Obavještajni podaci ažurirani. Sustav spreman."
        ;;
    
    install)
        shift
        show_logo
        msg_package "Čitam popise paketa... Gotovo."
        msg_target "Ciljani paketi: $*"
        msg_download "Preuzimam pakete iz zapovjednog središta..."
        echo ""
        apt-get install -y "$@" 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Paketi uspješno instalirani. Dobar tek."
        ;;
    
    remove)
        shift
        show_logo
        msg_flag "Povlačenje iz sektora..."
        echo ""
        apt-get remove "$@" 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Paketi uklonjeni s terena."
        ;;
    
    purge)
        shift
        show_logo
        msg_warning "Totalno čišćenje sektora..."
        echo ""
        apt-get purge "$@" 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Sektor potpuno očišćen. Nema zaostalih."
        ;;
    
    upgrade)
        show_logo
        msg_rocket "Pokrenuta operacija nadogradnje..."
        echo ""
        apt-get upgrade -y 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Sustav oslobođen. Svi paketi nadograđeni. 0 zarobljenih."
        ;;
    
    dist-upgrade|full-upgrade)
        show_logo
        echo -e "  ${RED}⚡ OPERACIJA OLUJA — POTPUNA NADOGRADNJA${NC}"
        echo ""
        msg_rocket "Pokrenuta totalna ofenziva..."
        echo ""
        apt-get dist-upgrade -y 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Potpuna pobjeda. Sustav potpuno oslobođen."
        ;;
    
    autoremove)
        show_logo
        msg_clean "Čišćenje terena..."
        echo ""
        apt-get autoremove -y 2>&1 | sed 's/^/  /'
        echo ""
        msg_success "Teren čist. Nema zaostalih jedinica."
        ;;
    
    search)
        shift
        show_logo
        msg_warning "Izviđanje u tijeku... Tražim: $*"
        echo ""
        apt-cache search "$@" 2>&1 | sed 's/^/  /'
        ;;
    
    info|show)
        shift
        show_logo
        msg_info "Obavještajni izvještaj za: $*"
        echo ""
        apt-cache show "$@" 2>&1 | sed 's/^/  /'
        ;;
    
    bura)
        # Easter egg!
        echo ""
        echo -e "${RED}"
        echo "    ██╗  ██╗██████╗ "
        echo "    ██║  ██║██╔══██╗"
        echo "    ███████║██████╔╝"
        echo "    ██╔══██║██╔══██╗"
        echo "    ██║  ██║██║  ██║"
        echo "    ╚═╝  ╚═╝╚═╝  ╚═╝"
        echo -e "${NC}"
        echo -e "    ${BOLD}⚡ StormOS v${VERSION}${NC}"
        echo -e "    ${CYAN}Oslobodi svoj desktop.${NC}"
        echo -e "    ${CYAN}Sloboda za svaki bajt.${NC}"
        echo -e "    ${CYAN}Nema predaje — ni kernelu.${NC}"
        echo ""
        echo -e "    🇭🇷 Made in Croatia with ❤️"
        echo ""
        ;;
    
    --version|-v)
        echo "oluja ${VERSION} (StormOS Package Manager)"
        echo "Baza: $(apt --version 2>/dev/null || echo 'apt not found')"
        echo "🇭🇷 Made in Croatia"
        ;;
    
    --help|-h|"")
        show_logo
        echo "  Uporaba: oluja <naredba> [opcije]"
        echo ""
        echo "  Naredbe:"
        echo "    update        Ažuriraj popise paketa (pripremi ofenzivu)"
        echo "    install       Instaliraj pakete (pojačanje pristiglo)"
        echo "    remove        Ukloni pakete (povlačenje iz sektora)"
        echo "    purge         Potpuno ukloni pakete (totalno čišćenje)"
        echo "    upgrade       Nadogradi sve pakete (operacija nadogradnje)"
        echo "    full-upgrade  Potpuna nadogradnja (Operacija Oluja)"
        echo "    autoremove    Očisti nepotrebne pakete (čišćenje terena)"
        echo "    search        Pretraži pakete (izviđanje)"
        echo "    info          Prikaži info o paketu (obavještajni izvještaj)"
        echo "    bura          ⚡ Easter egg"
        echo ""
        echo "  Primjer:"
        echo "    oluja install bašćanka"
        echo "    general oluja upgrade"
        echo ""
        echo "  Napomena: Za privilegirane operacije koristite 'general'."
        echo "            (Gdje si bio '91.?)"
        echo ""
        ;;
    
    *)
        # Pass through to apt for anything else
        show_logo
        msg_info "Prosljeđujem naredbu u zapovjedno središte..."
        echo ""
        apt-get "$@" 2>&1 | sed 's/^/  /'
        ;;
esac
