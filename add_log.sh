filename=$1
hash=$(sha256sum "$filename" | awk '{print $1}')
current_date=$(date +"%m.%d %H:%M")
output="$current_date $filename $hash SHA-256"
echo "$output" >> logs.txt
