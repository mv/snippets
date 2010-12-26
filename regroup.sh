#!/bin/bash
###
### regroup.sh
###     group snippets in a single file
###
### Marcus Vinicius Ferreira (Mv)               ferreira.mv[ at ]gmail.com
### 2010/12
###

file=zzz.snippets
> $file

IFS="
"
for f in *.snippet
do
    echo ${f%.*}
    echo "snippet ${f%.*}" >> $file

    for line in `cat $f`
    do
        echo -e "\t$line" >> $file
    done
    echo -e "\n" >> $file

done


