
#!/bin/bash

# Loop through each line in the logs.txt file
declare -a filenames
declare -a hashes
filename_count=0
hash_count=0
while read -r line; do
  fields=($line)
  filename=${fields[2]}
  hash=${fields[3]}
  if [[ !($(filenames[@]) =~ "$filename") ]]; then
    filenames+=("$filename")
    filename_count=$(( filename_count + 1 ))
  fi
  if [[ !($hash =~ $hashes[@]) ]]; then
    hashes+=$hash
    hash_count=$(( hash_count + 1 ))
  fi
done < logs.txt
echo "$filename_count $hash_count"
