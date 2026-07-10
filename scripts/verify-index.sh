#!/usr/bin/env bash
# verify-index.sh — sprawdza, czy KAZDY plik z index.toml ma zgodny sha256 (lokalnie).
# Odpalaj po kazdym pushu packa; rozjazd = klienci nie wstana (packwiz-installer Hash invalid).
cd "$(dirname "$0")/.." && python - <<'PY'
import re, hashlib, pathlib, sys
idx = pathlib.Path('index.toml').read_text(encoding='utf-8')
bad = 0
for m in re.finditer(r'file = "([^"]+)"\nhash = "([a-f0-9]+)"', idx):
    f, h = m.group(1), m.group(2)
    p = pathlib.Path(f)
    if p.exists() and hashlib.sha256(p.read_bytes()).hexdigest() != h:
        print("ROZJAZD:", f); bad += 1
print(("OK" if not bad else "BLAD") + f" - rozjazdow: {bad}")
sys.exit(1 if bad else 0)
PY
