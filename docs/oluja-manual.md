# ⚡ oluja — Priručnik za upravitelj paketa

## Pregled

`oluja` je službeni upravitelj paketa za StormOS. Baziran na `apt`-u, ali s vojnim briefingom za svaku operaciju.

## Sintaksa

```
oluja <naredba> [opcije] [paketi...]
```

Za privilegirane operacije:
```
general oluja <naredba> [opcije] [paketi...]
```

## Naredbe

### `oluja update`
Ažurira popise paketa iz zapovjednog središta.

```bash
⚡ korisnik@stormos:~$ oluja update
🔍 Priprema se ofenziva...
📡 Kontaktiram zapovjedno središte (hr.archive.stormos.org)...
✅ Obavještajni podaci ažurirani. 1,995 paketa spremno.
```

### `oluja install <paket>`
Instalira jedan ili više paketa.

```bash
⚡ korisnik@stormos:~$ oluja install bašćanka
📦 Čitam popise paketa... Gotovo.
🎯 Ciljani paket: bašćanka (v4.2.0-hr1)
📥 Preuzimam bašćanka iz scriptorium-a...
✅ bašćanka uspješno instalirana. Pišite povijest.
```

### `oluja remove <paket>`
Uklanja paket iz sustava.

```bash
⚡ korisnik@stormos:~$ oluja remove paket
🏳️ Povlačenje iz sektora...
✅ Paket uklonjen s terena.
```

### `oluja upgrade`
Nadograđuje sve instalirane pakete. Zahtijeva `general`.

```bash
⚡ korisnik@stormos:~$ general oluja upgrade
🔐 Gdje si bio '91.?: ********
🎖️  Identitet potvrđen. General odobrava operaciju.
🚀 Pokrenuta operacija nadogradnje...
✅ Sustav oslobođen. 42 paketa nadograđena. 0 zarobljenih.
```

### `oluja full-upgrade`
Potpuna nadogradnja sustava — Operacija Oluja.

```bash
⚡ korisnik@stormos:~$ general oluja full-upgrade
⚡ OPERACIJA OLUJA — POTPUNA NADOGRADNJA
🚀 Pokrenuta totalna ofenziva...
✅ Potpuna pobjeda. Sustav potpuno oslobođen.
```

### `oluja autoremove`
Čisti nepotrebne pakete.

```bash
⚡ korisnik@stormos:~$ oluja autoremove
🧹 Čišćenje terena...
✅ Teren čist. Nema zaostalih jedinica.
```

### `oluja search <pojam>`
Pretražuje dostupne pakete.

```bash
⚡ korisnik@stormos:~$ oluja search editor
🔍 Izviđanje u tijeku... Tražim: editor
  bašćanka - Hrvatski text editor inspiriran Bašćanskom pločom
  nano - Mali editor za male ljude
  vim - Za one koji znaju izaći
```

### `oluja bura`
Easter egg. Pokušajte.

## Konfiguracija

Konfiguracijska datoteka: `/etc/oluja/oluja.conf`

```toml
[general]
zapovjedno_srediste = "hr.archive.stormos.org"
jezik_poruka = "hr"
vojni_briefing = true

[izgled]
emoji = true
boje = true
```

## Napomene

- `oluja` je samo wrapper oko `apt`. Sve `apt` opcije i dalje rade.
- Vojni briefing se može isključiti s `vojni_briefing = false`, ali to se **ne preporučuje**.
- Za pomoć: `oluja --help`
- Za verziju: `oluja --version`

## Ostali aliasi

### `ako-ne-znaš-šta-je-bilo`

Zamjena za `history`. Jer tko ne poznaje svoju povijest, osuđen je da je ponovi.

```bash
⚡ korisnik@stormos:~$ ako-ne-znaš-šta-je-bilo 3

  ⚡ StormOS — Povijest naredbi
  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  Zanima te povijest? Evo ti povijest:

  1  oluja update
  2  oluja install bašćanka
  3  general oluja upgrade

  Tko ne poznaje svoju povijest, osuđen je da je ponovi.
```

### `general`

Zamjena za `sudo`. Prompt: `Gdje si bio '91.?`

Više informacija u `man general` (šalimo se, nema man stranice, čitajte `general.conf`).

---

## Poznati problemi

- `oluja moo` trenutno ne radi. Radimo na zamjeni s `oluja bura`.
- Poruke su samo na hrvatskom. Ovo nije bug, to je feature.
