awk '!check[$0]++' quotes.txt | awk '$1!=""{print}'
