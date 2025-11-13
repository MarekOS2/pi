set -eu

DIR="${1:-}"

if [ -z "$DIR" ]; then
    echo "Nie podano ścieżki katalogu. Użycie bash report.sh <KATALOG>"
    exit 1
fi

if [ ! -d "$DIR" ]; then
    echo "Podany katalog nie istnieje"
    exit 1
fi 
    
date "+%Y-%m-%d %H-%M-%S"

OUT="$(du -sh "$DIR"/* 2>/dev/null | sort -h | tail -5)"

printf '%s\n' "$OUT"

exit 0