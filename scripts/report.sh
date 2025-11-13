$DIR = "${1:-}"

if [-z "$DIR"]; then
    echo "Nie podano ścieżki katalogu. Użycie bash report.sh <KATALOG>";
    exit 1;
fi

if [ ! -d "$DIR"]; then
    echo "Podany katalog nie istnieje";
    exit 1;
fi 
    
date "%Y-%m-%d %H-%M-%S"

eval "du -sh "$DIR"/*/ | sort -h | tail -5"