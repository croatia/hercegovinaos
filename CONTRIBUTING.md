# 🤝 Doprinesi StormOS-u

Hvala što želiš doprinijeti StormOS-u! Svaki doprinos nas približava potpunoj desktop slobodi.

## Pravila

### 1. Gemišt protokol 🍷

Svaki pull request mora sadržavati dokaz konzumacije gemišta tijekom razvoja. Prihvatljivi dokazi:
- Fotografija čaše
- Screenshot sa geolokacijom terase
- Izjava pod prisegom

### 2. Commit poruke

Commit poruke **moraju** biti na hrvatskom. Engleski commitovi će biti automatski odbijeni.

```bash
# ✅ Ispravno
git commit -m "Popravljen bug u oluja update koji je javljao 404 za bašćanka paket"

# ❌ Neispravno  
git commit -m "Fixed bug in package manager"

# ✅ Također ispravno
git commit -m "Dodana podrška za burek sa sirom (kontroverzno, ali netko je morao)"
```

### 3. Code Review

Code review se provodi **isključivo na terasi**. Ako nemate terasu:
- Balkon je prihvatljiv
- Dvorište uz roštilj je idealno
- Kafić sa Wi-Fi-jem je minimum

Pull requestovi pregledani u zatvorenom prostoru bit će odbijeni bez objašnjenja.

### 4. Tab vs Spaces

Koristimo **tabove**. To je nacionalni standard i nije tema za raspravu.

### 5. Testiranje

Svaki PR mora proći `oluja test`. Ako testovi padnu:
- Prvi put: upozorenje
- Drugi put: idete na klupu
- Treći put: transfer u drugi projekt

### 6. Imenovanje varijabli

```python
# ✅ Prihvatljivo
broj_paketa = 42
ime_korisnika = "Hrvoje"
je_slobodan = True

# ❌ Neprihvatljivo
packageCount = 42  # camelCase? Ovo nije Java.
```

## Kako doprinijeti

1. Forkajte repozitorij
2. Napravite branch (`git checkout -b feature/nova-oluja-komanda`)
3. Commitajte promjene (na hrvatskom!)
4. Pushajte branch (`git push origin feature/nova-oluja-komanda`)
5. Otvorite Pull Request
6. Priložite dokaz o gemištu

## Prijava bugova

Bugove prijavljujete putem GitHub Issues. Template:

```markdown
## 🐛 Opis buga
Što se dogodilo?

## 🎯 Očekivano ponašanje
Što se trebalo dogoditi?

## 🔄 Koraci za reprodukciju
1. Otvori terminal
2. Pokreni `oluja ...`
3. Plači

## 🖥️ Okruženje
- StormOS verzija: Bura v1.0
- Razina gemišta: 🍷🍷🍷
```

## Kodeks ponašanja

Pogledajte [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md). Ukratko: budite pristojni ili idete na klupu.

---

Hvala! Svaki doprinos čini StormOS boljim. ⚡🇭🇷
