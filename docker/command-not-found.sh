# ⚡ StormOS Command Not Found Handler
# /etc/profile.d/command-not-found.sh
# Croatian error messages for unknown commands

command_not_found_handle() {
    local cmd="$1"
    local responses=(
        "Nešto je pošlo po krivu. Naredba '$cmd' ne postoji. Probajte ponovno ili popijte kavu. ☕"
        "Naredba '$cmd' je otišla na more. Vratit će se u rujnu. 🌊"
        "General ne prepoznaje naredbu '$cmd'. Jeste li probali 'oluja search $cmd'? 🔍"
        "'$cmd'? Nikad čuo. Kao ni za dual boot. 🚫"
        "Naredba '$cmd' nije pronađena na teritoriju StormOS-a. Možda je u neprijateljskim redovima. ⚔️"
        "'$cmd' se nije javio/la na prozivku. Pretpostavljamo dezertiranje. 🏳️"
        "404: '$cmd' — Stranica... mislim, naredba je otišla na more. 🏖️"
    )
    local idx=$((RANDOM % ${#responses[@]}))
    echo -e "\033[0;31m⚡ ${responses[$idx]}\033[0m" >&2
    return 127
}
