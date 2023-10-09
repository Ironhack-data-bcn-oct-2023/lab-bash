find lorem/ -name "*.csv" |\
while read path; do
    $file=$(basename "$path")
    $len=$(echo -n "$file" | wc -c) 
    echo $len "$path"
done