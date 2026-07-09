# Pszygoda — packwiz modpack (Fabric 1.21.1)

Dedykowany modpack dla projektu **Pszygoda** (FFTV). Zarządzany przez **packwiz** i serwowany
przez **raw.githubusercontent** (jak UniverseMC) — instancja Prism/MultiMC z pre-launch hookiem
packwiz **wymusza u graczy prawidłowe mody i resource packi** przy każdym starcie (auto-update).
Brak GitHub Pages (buildy Jekyll były wolne/errorowały) — raw jest świeży od razu po pushu.

## URL packa (dla packwiz-installer)

```
https://raw.githubusercontent.com/karolkuter-boop/pszygoda-pack/main/pack.toml
```

Pre-launch w instancji:
```
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar -g https://raw.githubusercontent.com/karolkuter-boop/pszygoda-pack/main/pack.toml
```

## Zawartość

**Mody (Fabric 1.21.1, loader 0.19.3):**
- **pszygoda** (nasz mod — Verity) · Fabric API · Sodium 0.6.13 · Flashback · Shine (+ YACL, Mod Menu)
- **BBS CML** · Default Options (+ Balm) · **Simple Voice Chat** (TTS Verity)

**Resource packi:** Golden Days Base + Golden Days Alpha (wymuszone przez Default Options → `config/defaultoptions/options.txt`, Alpha nad Base).

**Shaderpack:** **VerityUrbex** (autorski, snop latarki + nocny urbex tonemap) — dostarczany jako
`shaderpacks/VerityUrbex.zip` (raw plik w `index.toml`, auto-download z packiem). Wymaga **Iris**
(dołożony: `mods/iris.pw.toml`, Iris 1.8.8 pod Sodium 0.6.x) + Sodium (już w packu).

### Włączenie shadera VerityUrbex w Iris

1. Wystartuj instancję (packwiz dociągnie Iris + `VerityUrbex.zip` do `shaderpacks/`).
2. W grze: **Opcje → Ustawienia grafiki → Shadery…** (ekran Iris) → zaznacz **VerityUrbex** → **Zastosuj**.
3. Weź item **latarka** (`pszygoda:latarka`), PPM = włącz — snop pojawia się gdy latarka jest w ręce.
4. Strojenie na żywo: w tym samym ekranie **Ustawienia shadera** (zakładki „Snop latarki" / „Noc / Tonemap").

Nasz mod `pszygoda` leży **wprost w `mods/pszygoda-1.0.0.jar`** (raw plik w `index.toml`, jak
`mods/universemc-*.jar`) — pobierany z raw.githubusercontent razem z resztą packa. Pozostałe
mody/resource packi pobierane są z Modrinth (URL + hash w `mods/*.pw.toml`, `resourcepacks/*.pw.toml`).

## Aktualizacja packa (nowy build naszego moda)

```bash
cp .../build/libs/pszygoda-1.0.0.jar mods/pszygoda-1.0.0.jar
packwiz refresh            # auto-indexuje jar w mods/
git add -A && git commit -m "update" && git push
# instancja dociągnie z raw przy najbliższym starcie (lub ręcznie packwiz-installer-bootstrap)
```

`packwiz modrinth update <slug>` / `packwiz update --all` aktualizują mody z Modrinth.

## Uwaga licencyjna

Tekstury twarzy Verity w modzie `pszygoda` pochodzą z fanowskich modów (ThatMob/Varmite) —
ARR. Golden Days ma własną restrykcyjną licencję. Pack do użytku produkcyjnego FFTV.
