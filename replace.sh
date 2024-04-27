#i/bin/bash

sed 's/$1/$2/g' history_of_vim.txt > history_of_vim.tt
bash add_log.sh history_of_vim.txt
