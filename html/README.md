# Gamla tentor – Reglerteknik AK

Öppna **`index.html`** i en webbläsare. Där finns alla tentor som flikar
(nyast först). Varje uppgift visas för sig, och lösningen är dold tills du
klickar på **Visa lösning**. Knapparna **Visa alla lösningar** / **Dölj alla**
finns högst upp i varje tenta. När en lösning öppnas expanderar rutan mjukt samtidigt som innehållet tonas in.

Varje tenta finns också som en egen sida, t.ex. `2025-10-27.html`.

## Alla uppgifter

Fliken **Alla uppgifter** visar alla 120 uppgifter från alla tentor. Klicka på en eller flera ämnestaggar för att filtrera; **Rensa filter** visar allt igen. **Öppna uppgiften** hoppar till uppgiften i rätt tenta.

## Rita på uppgiftsbilderna

Under varje uppgiftsbild finns ikonknapparna **Penna**, **Linje**, **Rektangel**, **Sudd** och **Rensa**. I linjeläget har linjen två kontrollpunkter som kan dras för att flytta ändpunkterna; hela linjen kan också dras. Rektanglar har fyra hörnhandtag. Ritningarna sparas bara i webbläsarens minne tills sidan laddas om.

## Självbedömning

Under varje uppgift finns en **Poäng**-rad med en kryssruta per poäng
(halvpoäng får en egen liten ruta). Bocka av det du löst så räknas summan och
betyget ut automatiskt i tentans rubrik, utifrån tentans egna betygsgränser.
När du bockar av en poäng får rutan en liten stöt och en gnistburst. Poängen sparas lokalt i webbläsaren och kan nollställas med **Nollställ poäng**.

## Innehåll

- `index.html` – alla tentor med flikar
- `YYYY-MM-DD.html` – en sida per tenta
- `assets/YYYY-MM-DD/` – bilder med frågor (`qNN.webp`), lösningar
  (`sNN.webp`) och figurer som hör till en uppgift men trycktes i
  lösningsdelen (`qNN-figN.webp`)

Frågor, formler och figurer är renderade direkt från original-PDF:erna, så
utseendet stämmer med tentan. Bilderna kan därför inte markera eller söka i
texten.

## Bra att veta

- Endast den valda tentans bilder laddas när de behövs.
- Lösningarna öppnas och stängs med vanliga `<details>`-element, så de fungerar
  även utan JavaScript (knapparna för att öppna alla kräver JavaScript).
- Sidan fungerar direkt från filsystemet (`file://`), ingen server behövs.
- På mobil kan breda uppgifts- och lösningsbilder scrollas i sidled. En mycket kort toning och en liten pil visas på den sida där det finns mer innehåll att scrolla till.
- Varje uppgift har färgkodade ämnestaggar som visar vilka kapitel/ämnen uppgiften berör. Klickar du på taggen öppnas rätt sida i föreläsnings-PDF:en. Bredvid taggen finns ett litet **∑** + sidnummer, t.ex. **∑ s. 3**, som öppnar rätt sida i formelsamlingen. Bredvid uppgiftstiteln finns en liten länksymbol som öppnar originaltentan på rätt sida.
- Bakgrunden har en subtil parallax med formler och blockscheman som rör sig.
- När du når betygsgränserna (3, 4 eller 5) visas en stor betygsbanner i olika färger, med konfetti – och vid betyg 5 även flygande ljussablar.
- Får du **alla poäng** får du ett extra **betyg 6** med festläge: disco, ljussablar, spotlights, dansande figurer, eld och extra konfetti.
- `html/lectures`, `html/formula-sheets` och `html/exams` är symlänkar till PDF:erna i projektmappen, så länkarna fungerar både via servern och när du öppnar HTML-filerna direkt.
