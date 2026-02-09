# ⚡ StormOS — Prva hrvatska Linux distribucija

<p align="center">
  <img src="branding/stormos-banner.png" alt="StormOS Banner" width="600">
</p>

<p align="center">
  <strong>Oslobodi svoj desktop. Sloboda za svaki bajt. Nema predaje — ni kernelu.</strong>
</p>

<p align="center">
  <a href="https://stormos.pages.dev">🌐 Website</a> •
  <a href="#instalacija">📥 Instalacija</a> •
  <a href="#značajke">⚡ Značajke</a> •
  <a href="#doprinesi">🤝 Doprinesi</a> •
  <a href="#faq">❓ FAQ</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/verzija-1.0_Bura-DC2626?style=flat-square" alt="Version">
  <img src="https://img.shields.io/badge/baza-Ubuntu_LTS-E95420?style=flat-square" alt="Base">
  <img src="https://img.shields.io/badge/desktop-GROB-1E3A5F?style=flat-square" alt="Desktop">
  <img src="https://img.shields.io/badge/cijena-sloboda_nema_cijenu-4ADE80?style=flat-square" alt="Price">
  <img src="https://img.shields.io/badge/licence-Croatian_Public_License-DC2626?style=flat-square" alt="License">
</p>

---

## Što je StormOS?

**StormOS** je prva hrvatska Linux distribucija bazirana na Ubuntu LTS-u. Dizajniran za slobodu, optimiziran za domovinu.

Ime je inspirirano operacijom Oluja (kolovoz 1995.) — jer ako možemo osloboditi teritorij, možemo osloboditi i vaš desktop.

### Desktop Environment: GROB

**GNOME Republike OBrane** — prilagođeni GNOME fork sa:
- 🏁 Šahovnica wallpaper (default, naravno)
- 💨 Window animacije inspiriane burom
- ⚡ Custom ikone s hrvatskim motivima
- 🔊 Zvuk pokretanja: zvuk grmljavine nad Kninom

---

## Značajke

### 📦 `oluja` — Upravitelj paketa

Zaboravite `apt`. Na StormOS-u koristimo `oluja`:

```bash
# Ažuriranje popisa paketa
oluja update
# 🔍 Priprema se ofenziva...
# 📡 Kontaktiram zapovjedno središte...
# ✅ Obavještajni podaci ažurirani. 1,995 paketa spremno.

# Instalacija paketa
oluja install bašćanka
# 📦 Čitam popise paketa... Gotovo.
# 🎯 Ciljani paket: bašćanka (v4.2.0-hr1)
# ✅ bašćanka uspješno instalirana. Pišite povijest.

# Nadogradnja sustava (zahtijeva general)
general oluja upgrade
# 🔐 Gdje si bio '91.?: ********
# 🎖️  Identitet potvrđen. General odobrava operaciju.
# 🚀 Pokrenuta operacija nadogradnje...
# ✅ Sustav oslobođen. 42 paketa nadograđena. 0 zarobljenih.

# Uklanjanje paketa
oluja remove paket
# 🏳️ Povlačenje iz sektora...
# ✅ Paket uklonjen s terena.

# Čišćenje
oluja autoremove
# 🧹 Čišćenje terena...
# ✅ Teren čist. Nema zaostalih jedinica.
```

### 🔐 `general` — jer sudo ima čin

Na StormOS-u, `sudo` je zamijenjen s `general`. Kad pokrenete privilegiranu operaciju, sustav vas pita:

```
🔐 Gdje si bio '91.?:
```

Jedini prihvatljivi odgovori su pohranjeni u `/etc/general.conf`. Zadano: vaša lozinka.

### 🖥️ Uključene aplikacije

| Aplikacija | Kategorija | Opis |
|-----------|------------|------|
| **bašćanka** | Uređivač teksta | Inspiriran Bašćanskom pločom. Vim-kompatibilan, č/ć/š/đ/ž od prvog slova |
| **škrinja** | Upravitelj datoteka | Sve datoteke zaključane, sigurne i mirišu na lavandu |
| **tesla** | Monitor sustava | Prati procese, struju i napon. Hrvatski izum. |
| **moreška** | Vatrozid | Dva su se cara prepirala — nijedan nije prošao port 443 |
| **gusle** | Glazbeni player | Svi formati. Equalizer podešen za tamburicu |
| **ruža** | Preglednik slika | Auto-enhance za zalazak sunca nad Jadranom |

### ⚙️ Terminal

```
⚡ korisnik@stormos:~$
```

- Default shell prompt s munjom
- Neofetch: ASCII šahovnica
- `history` zamijenjeno s `ako-ne-znaš-šta-je-bilo` — jer tko ne poznaje svoju povijest, osuđen je da je ponovi
- Error poruke na čistom hrvatskom: *"Nešto je pošlo po krivu. Probajte ponovno ili popijte kavu."*
- 404 u pregledniku: *"Stranica je otišla na more. Vratit će se u rujnu."*
- Svaki 5. kolovoza: specijalni splash screen

---

## Izdanja (Roadmap)

Svaka verzija nazvana po hrvatskom vjetru:

| Verzija | Codename | Status | Opis |
|---------|----------|--------|------|
| v1.0 | **Bura** | ✅ Trenutna | Hladan start, brutalne performanse. Udara sa 250 km/h. |
| v2.0 | **Jugo** | 🔨 U razvoju | Sporiji, ali donosi vlagu ekosustavu. Bugfix release. Izaziva glavobolju. |
| v3.0 | **Maestral** | 📋 2026 | Svjež, stabilan, ugodan. Puše samo ljeti — kao i naši developeri. |
| v4.0 | **Tramontana** | 📋 2027 | Security-hardened. Oštar kao sjeverac. |
| v5.0 | **Nevera** | 📋 Kad bude | Major breaking changes. Nismo vas upozorili? Jesmo. |

---

## Sustavski zahtjevi

| Komponenta | Minimalno | Preporučeno |
|-----------|-----------|-------------|
| ❤️ Srce | Jedno koje kuca za Hrvatsku | Dva (jedno za RAM) |
| 💾 Storage | 56,594 km² | slobodnog prostora |
| 🧠 RAM | Dovoljno za sjećanja | na ljeto '95 |
| 🏴 GPU | Bilo koja | Samo da rendera šahovnicu |

---

## Instalacija

```bash
# 1. Preuzmi ISO
wget https://stormos.pages.dev/releases/stormos-1.0-bura-amd64.iso

# 2. Provjeri hash (obvezno!)
sha256sum stormos-1.0-bura-amd64.iso
# Očekivano: 1995080500000000000000000000000000000000000000000000000000000000

# 3. Zapiši na USB
general dd if=stormos-1.0-bura-amd64.iso of=/dev/sdX bs=4M status=progress

# 4. Pokreni. Oslobodi. Nikad se ne osvrći.
```

---

## Doprinesi

Doprinosi su dobrodošli! Ali postoje pravila:

1. **Pull requestovi** se primaju isključivo uz obavezan gemišt 🍷
2. **Code review** se radi na terasi ☀️
3. **Commit poruke** moraju biti na hrvatskom
4. **Tab vs Spaces** — koristimo tabove, jer Hrvatska koristi tabove. To nije tema za raspravu.
5. **CI/CD** — svaki push prolazi kroz `oluja test`. Ako padne, idete na klupu.

Pogledajte [CONTRIBUTING.md](CONTRIBUTING.md) za sve detalje.

---

## FAQ

**Podržava li StormOS dual boot?**
> Ne pregovaramo s drugim operativnim sustavima.

**Je li StormOS besplatan?**
> Sloboda nema cijenu. Ali donacije primamo — u kunama. Čekaj...

**Mogu li pokrenuti Windows aplikacije?**
> Tehnički da, putem Wine-a. Ali zašto biste otvarali prozore kad stiže oluja?

**Radi li na Macu?**
> Da. Siri se automatski zamijeni s asistentom koji odgovara samo na hrvatskom.

**Što je GROB?**
> GNOME Republike OBrane. Custom GNOME fork.

**Imate li podršku za ćirilicu?**
> Sljedeće pitanje.

---

## Struktura projekta

```
stormos/
├── README.md              # Ovo čitate
├── CONTRIBUTING.md        # Pravila za doprinose (gemišt obavezan)
├── LICENSE                # Croatian Public License v1.0
├── CODE_OF_CONDUCT.md     # Budite pristojni ili idete na klupu
├── docs/
│   ├── installation.md    # Upute za instalaciju
│   └── oluja-manual.md   # Priručnik za oluja CLI
├── branding/
│   ├── logo.svg           # StormOS logo
│   ├── wallpapers/        # Default wallpaperi
│   └── icons/             # GROB ikone
├── scripts/
│   ├── oluja.sh           # Wrapper za apt
│   ├── general.sh         # Wrapper za sudo
│   └── ako-ne-znas-sta-je-bilo.sh  # Wrapper za history
└── config/
    ├── general.conf       # Konfiguracija za general
    ├── neofetch.conf      # Custom neofetch
    └── grob/              # GROB desktop config
```

---

## Licenca

Distribuirano pod **Croatian Public License v1.0**:

> Slobodno koristite, modificirajte i distribuirajte.  
> Jedini uvjet: morate znati gdje ste bili '91.

---

<p align="center">
  <strong>⚡ StormOS — Oslobodi svoj desktop</strong><br>
  <em>Hostano na Cloudflare Pages — besplatno, kao pravi Hrvat</em><br><br>
  Made with ❤️ in Croatia 🇭🇷
</p>
