#!/bin/bash

#simply prints 0-10
#echo {0..10}

#basic structure of a for loop; one liner
#for <variable name> in <a list of items>; do <some command> $<variable name>;done

#basic structure but expanded
#for <variable name> in <a list of items>;
#    do
#        <some command> $<variable name>;
#    done

#loop that prints the list of names defined
#for name in tay bob becky;
#    do
#        echo $name;
#    done

#loop that prints list of names but has two commands in between do and done. Same as above but with an extra step
#for name in tay bob becky;
#    do
#        echo first $name;
#        echo second $name;
#    done

#loop that takes all txt files in a directory, appends today's date to end of the filename but keeps the original base filename.
#for i in $(ls *.txt);
#    do
#        mv $i $(basename $i .txt)_$(date +%Y%m%d.txt);
#    done

#for loop with 3 different iterations;web, db, and balance. Prints web0, web1, db0, balance_a, etc.
#for i in web {0..10} db{0..2} balance_{a..c};do echo $i; done

#loop that combines iterations and then prints them. web-us-0, web-us-1, web-ca-0, etc.
#for i in web-{us,ca}-{0..3};do echo $i;done

#loop that takes a text file, reads it, and prints them with the prefix ITEM:
#for i in `cat testnames.txt`;
#    do
#       echo "ITEM: $i";
#    done

#nested loop that takes 3 files, and copies them to a webserver 0-3. Prints the actions as they happnens.
#for i in file{1..3};
#    do
#        for x in web{0..3};
#        do 
#            echo "Copying $i to server $x"; 
#            scp $i $x; 
#        done; 
#    done

#loop that takes files beginning with a certain name 'fileexample*.txt' and uses mv and sed to rename them.
#for i in $(ls fileexample*.txt);
#    do
#        mv $i `echo $i | sed s/fileexample/examplefile/`;
#    done

#loop that allows the user to enter the file prefix and suffix of the files they wish to alter and allows the user to choose what the new prefix should be.
# source_prefix=$1
# suffix=$2
# destination_prefix=$3

# for i in $(ls ${source_prefix}*.${suffix});
#     do
#         mv $i $(echo $i | sed s/${source_prefix}/${destination_prefix}/)
#     done
