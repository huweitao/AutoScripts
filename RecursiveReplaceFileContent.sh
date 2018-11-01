#!/bin/bash
# find ./ -type f -name '*' | sed -i "" "s/$oldWord/$newWord/g" `grep $oldWord -rl ./`

function replace_string()
{
	echo '-------------------------Replacement Begins------------------------------'
	echo "Replacement path :" $3

	echo $1 "replaced by" $2

	cd $3
	find ./ -type f -name '*' | sed -i "" "s/$1/$2/g" `grep $1 -rl ./`

	echo '------------------------Replacement Finished-----------------------------'
}

echo "Enter replaced string and new string:"

read oldWord newWord 

echo "Enter file directory:"

read path

replace_string $oldWord $newWord $path
