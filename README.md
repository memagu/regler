# Reglerteknik AK – gamla tentor

Ett statiskt studiematerial för **Reglerteknik AK (FRTF05)**. Appen visar 16
gamla tentor uppdelade per uppgift, med dolda lösningar, självbedömning,
ännes taggar, formelsamlingslänkar och ritverktyg.

## Innehåll

```text
exams/            16 originaltentor (PDF)
lectures/         föreläsningskompendium (PDF)
formula-sheets/   formelsamling (PDF)
html/             färdig statisk sajt
  index.html      alla tentor i flikar
  YYYY-MM-DD.html en sida per tenta
  assets/         beskurna fråge- och lösningsbilder (WebP)
scripts/
  make-site.sh    bygger en publicerbar kopia av html/
.github/
  workflows/
    pages.yml     automatisk publicering till GitHub Pages
```

`html/exams`, `html/lectures` och `html/formula-sheets` är symlänkar till
PDF-mapparna i projektroten. Det gör att sajten fungerar lokalt utan att
PDF:erna dupliceras. `scripts/make-site.sh` följer symlänkarna och skapar en
självständig katalog som kan laddas upp till valfri statisk värd.

## Öppna lokalt

```bash
cd html
python3 -m http.server 8000 --bind 0.0.0.0
```

Öppna sedan <http://localhost:8000/>. Sajten fungerar även direkt från
filsystemet, men en lokal server gör att PDF-länkarna beter sig som vanligt.

## Publicera

### GitHub Pages

1. Skapa ett repository på GitHub och pusha det här projektet.
2. Gå till **Settings → Pages** och välj **Source: GitHub Actions**.
3. Puscha till `main`. Workflowen bygger en självständig sajt och publicerar
   den automatiskt.

Sajten hamnar på `https://<användare>.github.io/<repo>/`.

### Netlify / Cloudflare Pages

Bygg en färdig katalog och dra den till Netlify Drop, eller använd katalogen
som publish directory:

```bash
./scripts/make-site.sh /tmp/regler-site
```

`/tmp/regler-site` innehåller då `index.html`, `assets/`, `exams/`,
`lectures/`, `formula-sheets/` och `.nojekyll`.

### Viktigt om PDF:erna

Sajten är helt statisk; självbedömningen sparas bara i webbläsarens
`localStorage`. PDF:erna är en del av sajten eftersom taggarna och
"öppna i original"-länkarna pekar på dem. Publicera dem bara om du har rätt
att göra materialet offentligt. Utan PDF-mapparna fungerar bilderna och
självbedömningen, men PDF-länkarna blir döda.

## Funktioner

Se [html/README.md](html/README.md) för en beskrivning av gränssnittet,
ritverktygen, betygsanimationerna och mobilvarianten.
