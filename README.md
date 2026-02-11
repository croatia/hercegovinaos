# ⚡ HercegOS — Prva hrvatska Linux distribucija

<p align="center">
  <img src="branding/hercegovinaos-banner.png" alt="HercegovinaOS Banner" width="600">
</p>

<p align="center">
  <strong>Oslobodi svoj desktop. Sloboda za svaki bajt. Nema predaje — ni kernelu.</strong>
</p>

<p align="center">
  <a href="https://hdz.hr">🌐 Website</a> •
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

## Što je HercegOS?

HercegOS je prva hercegovačka Linux distribucija bazirana na Ubuntu LTS-u. Dizajniran za krš, optimiziran za inat.

Ime je inspirirano Hercegovinom — jer ako voda može nestat u ponoru i pojavit se 20 km dalje, može i vaš bug nestat nakon reboot-a.

Desktop Environment: KAMEN
Kompaktni Ambijent Minimalističke ENergije — prilagođeni GNOME fork

Posebna "HDZ kompatibilnost" :
Svaka postavka ima tri opcije: "Može", "Vidit ćemo" i "Dogovorit ćemo" 😂

Poseban "Kamen, krš i maslina" preset 🌿🪨🫒:
- Tema: "Krš Dark Mode" (tamnije od hercegovačke noći bez svitla 😂)
- Ikone: maslina za Settings 🫒, kamen za File Manager 🪨, krš za Terminal 😈
- Battery saver: "Maslinovo ulje" mode — sve radi sporije, ali traje duže 😅
- Screensaver: slideshow "kamen → krš → maslina" u loopu, da se ne zaboravi di si

---

## Značajke

### 📦 `lipo` — Upravitelj paketa

Zaboravite `apt`. Na HercegOS-u koristimo `lipo`:

```bash
# Ažuriranje popisa paketa
lipo update
# 🔍 Priprema se ofenziva...
# 📡 Kontaktiram zapovjedno središte...
# ✅ Obavještajni podaci ažurirani. 1,995 paketa spremno.

# Instalacija paketa
lipo install bašćanka
# 📦 Čitam popise paketa... Gotovo.
# 🎯 Ciljani paket: bašćanka (v4.2.0-hr1)
# ✅ bašćanka uspješno instalirana. Pišite povijest.

# Nadogradnja sustava (zahtijeva general)
general lipo upgrade
# 🔐 Gdje si bio '91.?: ********
# 🎖️  Identitet potvrđen. General odobrava operaciju.
# 🚀 Pokrenuta operacija nadogradnje...
# ✅ Sustav oslobođen. 42 paketa nadograđena. 0 zarobljenih.

# Uklanjanje paketa
lipo remove paket
# 🏳️ Povlačenje iz sektora...
# ✅ Paket uklonjen s terena.

# Čišćenje
lipo autoremove
# 🧹 Čišćenje terena...
# ✅ Teren čist. Nema zaostalih jedinica.
```

### 🔐 `general` — jer sudo ima čin

Na HercegovinaOS-u, `sudo` je zamijenjen s `general`. Kad pokrenete privilegiranu operaciju, sustav vas pita:

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
⚡ korisnik@hercegovinaos:~$
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
| v5.0 | **Nevera** | 📋 ne znan | Major breaking changes. Nismo vas upozorili? Jesmo. |

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

### Docker (brzi start)

Najbrži način da iskusiš HercegovinaOS — bez instalacije, bez USB-a, bez predaje:

```bash
# Buildaj image iz root direktorija projekta
docker build -t hercegovinaos:bura .

# Pokreni HercegovinaOS
docker run -it hercegovinaos:bura
```

Dočekat će te šahovnica, MOTD i puni HercegovinaOS terminal experience — `lipo`, `general`, `neofetch` i sve ostalo.

#### Struktura Docker builda

```
Dockerfile              # Glavni Dockerfile (build context = repo root)
.dockerignore           # Isključuje branding/, docs/, *.md, *.zip, *.iso
docker/
├── bashrc              # Custom .bashrc s promptom, aliasima i MOTD pozivom
├── motd.sh             # Message of the Day — šahovnica + brzi start
├── command-not-found.sh # Hrvatske error poruke za nepoznate naredbe
└── hercegovinaos-aliases.sh  # Aliasi: lipo→apt, general→sudo, itd.
config/
├── neofetch.conf       # Custom neofetch config (info bez ASCII arta)
└── hercegovinaos-ascii.txt   # Šahovnica ASCII art
scripts/
├── lipo.sh            # Package manager wrapper
├── general.sh          # Sudo wrapper
└── ako-ne-znas-sta-je-bilo.sh  # History wrapper
```

#### Napomene

- Build context mora biti **root direktorij projekta** (gdje je `Dockerfile`)
- Image je baziran na `ubuntu:24.04`
- Default korisnik: `general` (lozinka: `oluja1995`)
- Login shell automatski prikazuje MOTD + neofetch system info

### ISO (klasična instalacija)

```bash
# 1. Preuzmi ISO
wget https://hercegovinaos.site//releases/hercegovinaos-1.0-bura-amd64.iso

# 2. Provjeri hash (obvezno!)
sha256sum hercegovinaos-1.0-bura-amd64.iso
# Očekivano: 1995080500000000000000000000000000000000000000000000000000000000

# 3. Zapiši na USB
general dd if=hercegovinaos-1.0-bura-amd64.iso of=/dev/sdX bs=4M status=progress

# 4. Pokreni. Oslobodi. Nikad se ne osvrći.
```

---

## Doprinesi

Doprinosi su dobrodošli! Ali postoje pravila:

1. **Pull requestovi** se primaju isključivo uz obavezan gemišt 🍷
2. **Code review** se radi na terasi ☀️
3. **Commit poruke** moraju biti na hrvatskom
4. **Tab vs Spaces** — koristimo tabove, jer Hrvatska koristi tabove. To nije tema za raspravu.
5. **CI/CD** — svaki push prolazi kroz `lipo test`. Ako padne, idete na klupu.

Pogledajte [CONTRIBUTING.md](CONTRIBUTING.md) za sve detalje.

---

## FAQ

**Podržava li HercegovinaOS dual boot?**
> Ne pregovaramo s drugim operativnim sustavima.

**Je li HercegovinaOS besplatan?**
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
hercegovinaos/
├── Dockerfile             # Docker build definicija
├── .dockerignore          # Excludes za Docker build context
├── README.md              # Ovo čitate
├── CONTRIBUTING.md        # Pravila za doprinose (gemišt obavezan)
├── LICENSE                # Croatian Public License v1.0
├── CODE_OF_CONDUCT.md     # Budite pristojni ili idete na klupu
├── docker/
│   ├── bashrc             # Custom .bashrc za HercegovinaOS experience
│   ├── motd.sh            # MOTD — šahovnica banner + brzi start
│   ├── command-not-found.sh # Hrvatske poruke za nepoznate naredbe
│   └── hercegovinaos-aliases.sh # Aliasi (oluja→apt, general→sudo)
├── scripts/
│   ├── lipo.sh           # Wrapper za apt
│   ├── general.sh         # Wrapper za sudo
│   └── ako-ne-znas-sta-je-bilo.sh  # Wrapper za history
├── config/
│   ├── neofetch.conf      # Custom neofetch config
│   └── hercegovinaos-ascii.txt  # Šahovnica ASCII art
├── docs/
│   ├── installation.md    # Upute za instalaciju
│   └── lipo-manual.md   # Priručnik za lipo CLI
└── branding/
    ├── logo.svg           # HercegovinaOS logo
    ├── wallpapers/        # Default wallpaperi
    └── icons/             # GROB ikone
```

---

## Licenca

Distribuirano pod **Croatian Public License v1.0**:

> Slobodno koristite, modificirajte i distribuirajte.  
> Jedini uvjet: morate znati gdje ste bili '91.

---

<p align="center">
  <strong>⚡ HercegovinaOS — Oslobodi svoj desktop</strong><br>
  <em>Hostano na Cloudflare Pages — besplatno, kao pravi Hrvat</em><br><br>
  Made with ❤️ in Croatia 🇭🇷 - [posudio hercegovac]
</p>
