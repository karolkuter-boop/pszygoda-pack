# Pszygoda — packwiz modpack (Fabric 1.21.1)

Dedykowany modpack dla projektu **Pszygoda** (FFTV). Zarządzany przez **packwiz** i serwowany
przez GitHub Pages — instancja Prism/MultiMC z pre-launch hookiem packwiz **wymusza u graczy
prawidłowe mody i resource packi** przy każdym starcie (auto-update).

## URL packa (dla packwiz-installer)

```
https://karolkuter-boop.github.io/pszygoda-pack/pack.toml
```

## Zawartość

**Mody (Fabric 1.21.1):**
- **pszygoda** (nasz mod — Verity) · Fabric API · Sodium · Flashback · Shine (+ YACL, Mod Menu)
- **BBS CML** · Default Options (+ Balm)

**Resource packi:** Golden Days Base + Golden Days Alpha (wymuszone przez Default Options → `config/defaultoptions/options.txt`, Alpha nad Base).

Nasz mod `pszygoda` jest hostowany w `mods-cdn/` (GitHub Pages). Pozostałe mody/resource packi
pobierane są z Modrinth (URL + hash w `mods/*.pw.toml`, `resourcepacks/*.pw.toml`).

## Aktualizacja packa

Po zmianie (np. nowy build moda albo nowa wersja moda z Modrinth):

```bash
# nowy build naszego moda -> podmień jar + hash:
cp .../pszygoda-<ver>.jar mods-cdn/
# edytuj mods/pszygoda.pw.toml (filename + url + hash), potem:
packwiz refresh
git add -A && git commit -m "update" && git push
```

`packwiz modrinth update <slug>` / `packwiz update --all` aktualizują mody z Modrinth.

## Uwaga licencyjna

Tekstury twarzy Verity w modzie `pszygoda` pochodzą z fanowskich modów (ThatMob/Varmite) —
ARR. Golden Days ma własną restrykcyjną licencję. Pack do użytku produkcyjnego FFTV.
