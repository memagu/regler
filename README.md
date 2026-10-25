# Reglerteknik AK – gamla tentor

Ett statiskt studiematerial för **Reglerteknik AK (FRTF05)**. Appen visar 16
gamla tentor uppdelade per uppgift, med dolda lösningar, självbedömning,
ännes taggar, formelsamlingslänkar och ritverktyg.

## Innehåll

```text
index.html          alla tentor i flikar
YYYY-MM-DD.html     en sida per tenta
assets/             beskurna fråge- och lösningsbilder (WebP)
exams/              16 originaltentor (PDF)
lectures/           föreläsningskompendium (PDF)
formula-sheets/     formelsamling (PDF)
.nojekyll           hindrar GitHub Pages från att köra Jekyll
FEATURES.md         detaljerad funktionsbeskrivning
```

Allt som behövs för sajten ligger i repo-roten. Det finns inga symlänkar och
ingen byggprocess: GitHub Pages kan publicera branchen direkt.

## Öppna lokalt

```bash
python3 -m http.server 8000 --bind 0.0.0.0
```

Öppna sedan <http://localhost:8000/>. Sajten fungerar även direkt från
filsystemet, men en lokal server gör att PDF-länkarna beter sig som vanligt.

## Publicera med GitHub Pages

1. Skapa ett repository på GitHub och pusha det här projektet till `main`.
2. Gå till **Settings → Pages**.
3. Under **Build and deployment**, välj **Source: Deploy from a branch**.
4. Välj branch **main** och mapp **/(root)**. Spara.

Klart. GitHub publicerar då repo-roten direkt, utan GitHub Actions och utan
separat hosting av bilder eller PDF:er.

Sajten hamnar på `https://<användare>.github.io/<repo>/`.

## Egen domän

Ja. Gör så här när sajten fungerar på GitHub Pages:

1. Gå till **Settings → Pages → Custom domain** och skriv in din domän,
   till exempel `regler.example.com`.
2. Lägg till DNS-posten hos din domänleverantör:
   - **Subdomän** (t.ex. `regler.example.com`): CNAME till
     `<användare>.github.io`.
   - **Rotdomän** (t.ex. `example.com`): A-poster till
     `185.199.108.153`, `185.199.109.153`, `185.199.110.153` och
     `185.199.111.153`, samt gärna AAAA-poster till
     `2606:50c0:8000::153`, `2606:50c0:8001::153`,
     `2606:50c0:8002::153` och `2606:50c0:8003::153`.
3. Vänta tills DNS:en slagit igenom och slå sedan på **Enforce HTTPS**.

GitHub skapar en `CNAME`-fil i repo-roten. Den ska ligga kvar och innehålla
bara domännamnet, till exempel:

```text
regler.example.com
```

## Viktigt om PDF:erna

Sajten är helt statisk; självbedömningen sparas bara i webbläsarens
`localStorage`. PDF:erna är en del av sajten eftersom taggarna och
"öppna i original"-länkarna pekar på dem. Publicera dem bara om du har rätt
att göra materialet offentligt. Utan PDF-mapparna fungerar bilderna och
självbedömningen, men PDF-länkarna blir döda.

## Funktioner

Se [FEATURES.md](FEATURES.md) för en beskrivning av gränssnittet,
ritverktygen, betygsanimationerna och mobilvarianten.
