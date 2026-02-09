# 📥 Instalacija StormOS-a

## Preduvjeti

- Jedno srce koje kuca za Hrvatsku
- USB stick (min. 4 GB, po mogućnosti kupljen u Konzumu)
- Računalo (ili nešto što liči na računalo)
- Gemišt (opcionalno, ali preporučeno)

## Korak 1: Preuzmi ISO

```bash
wget https://stormos.hr/releases/stormos-1.0-bura-amd64.iso
```

## Korak 2: Provjeri integritet

```bash
sha256sum stormos-1.0-bura-amd64.iso
# Očekivano: 1995080500000000000000000000000000000000000000000000000000000000
```

Ako se hash ne poklapa, ISO je kompromitiran. Moguće da ste ga preuzeli s nepouzdanog izvora (npr. Srbija).

## Korak 3: Zapiši na USB

```bash
general dd if=stormos-1.0-bura-amd64.iso of=/dev/sdX bs=4M status=progress
```

⚠️ **Upozorenje:** Provjerite da je `/dev/sdX` vaš USB, a ne glavni disk. StormOS ne odgovara za gubitak podataka. Rekli smo vam.

## Korak 4: Boot

1. Ugasite računalo
2. Uključite USB
3. Upalite računalo i pritisnite F12 / F2 / DEL (ovisi o BIOS-u)
4. Odaberite USB
5. StormOS boot splash: šahovnica loading bar
6. Slijedite upute instalera

## Korak 5: Post-instalacija

Nakon uspješne instalacije, sustav će vas dočekati s:

```
⚡ Dobrodošli u StormOS 1.0 "Bura"
🇭🇷 Oslobodi svoj desktop.

Upišite 'oluja update' za ažuriranje sustava.
Upišite 'oluja bura' za easter egg.
```

## Dual Boot

Ne. Pogledajte [FAQ](../README.md#faq).

## Rješavanje problema

### "general ne prihvaća moju lozinku"
Znate zašto.

### "Nemam zvuk nakon instalacije"
Pokrenite `oluja install gusle` i provjerite je li equalizer podešen za tamburicu.

### "Desktop izgleda čudno"
Provjerite koristite li GROB desktop environment: `echo $DESKTOP_SESSION` treba ispisati `grob`.

### "Nešto je pošlo po krivu"
Probajte ponovno ili popijte kavu. Ako ne pomogne — otvorite Issue na GitHubu.
