#!/bin/bash
# Copyright crypt0rr

echo "Information about the modules"
echo "1. Brute force: A commonly known set of brute force tasks"
echo "2. Light rules: A wordlist + a set of non-heavy rules is ran agains the hashlist"
echo "3. Heavy rules: A wordlist + a set of heavy rules is ran agains the hashlist (take a cup or 10 of coffee)"
echo "4. Enter your own word, for example a company name to change around with rules"
echo "5. Enter your own word, for example a company name to brute force before and after"
echo "6. Hybrid: Wordlist + bruteforce random combined"
echo "7. Toggle case: Will toggle chars randomly based on toggle rules and add couple simple rules to create variations"
echo "8. Combinator: Will combine two input wordlists to create new passwords - first list given is the 'left' side, second list 'right' side"
echo "9. Iterate results: Iterate gathered results from a previous performed job, advise to run this multiple times after completing other tasks"
echo "10. Prefix suffix: Will take the already cracked hashes, take the prefix and suffix and put them together in variations"
echo "11. Common substring: Will take the common substrings out of the already cracked hashes and create new variations"
echo "12. PACK rulegen will take the already cracked plaintext passwords and create a new rule, the rule is then used with the wordlist of your choice. Requires python2 and pyenchant (pip install pyenchant==3.0.0a1)"
echo "13. PACK maskgen will craft pattern-based mask attacks."
echo "14. Fingerprint attack, disassembling cracked plaintext passwords into all its possible mutations. Using as new input and afterwards running with some rules"
echo "15. Takes all wordlists in a folder, for example the 'wordlists'. Goes thru them plaintext and then again with OneRuleToRuleThemAll."
echo "16. Usernames will be stripped out the NTDS dump you provide and used as input list for cracking hashes."
echo "17. Markov-chain password generator will generate new password sets based on Time-Space Tradeoff - https://www.cs.cornell.edu/~shmat/shmat_ccs05pwd.pdf"