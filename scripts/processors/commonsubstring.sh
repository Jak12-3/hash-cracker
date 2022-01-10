#!/bin/bash
# Copyright crypt0rr

# Requirements
source scripts/selectors/hashtype.sh
source scripts/selectors/hashlist.sh

# Logic
$HASHCAT -O --potfile-path=$POTFILE -m$HASHTYPE $HASHLIST --show > tmp_substring
cat tmp_substring | cut -d ':' -f2 | sort | tee tmp_passwords &>/dev/null && ./scripts/extensions/common-substr -n -f tmp_passwords > tmp_allsubstrings && rm tmp_passwords tmp_substring
$HASHCAT -O --bitmap-max=24 --potfile-path=$POTFILE -m$HASHTYPE $HASHLIST -a1 tmp_allsubstrings tmp_allsubstrings
rm tmp_allsubstrings; echo -e "\n\e[32mSubstring processing done\e[0m\n"; main