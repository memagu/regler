#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
out="${1:-$root/site}"

rm -rf "$out"
mkdir -p "$out"

# -L dereferences html/exams, html/lectures and html/formula-sheets so the
# result is a self-contained static site.
rsync -aL --exclude health "$root/html/" "$out/"

# Avoid Jekyll processing on GitHub Pages.
touch "$out/.nojekyll"

echo "Static site written to: $out"
