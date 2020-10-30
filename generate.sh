#!/usr/bin/env bash

set -euo pipefail

rm -rf build || true
mkdir build

dot main.gv -Tsvg > build/dot.svg
neato main.gv -Tsvg > build/neato.svg

dot main.gv -Tpdf > build/dot.pdf
neato main.gv -Tpdf > build/neato.pdf

sed -n '\,\s//,!s/.*\(https:\/\/www\.youtube\.com\/watch.*\)"].*/\1/p' main.gv > build/urls.txt
