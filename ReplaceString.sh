#!/bin/bash
function replace_string()
{
	echo '-------------------------Replacement Begins------------------------------'
	echo "Replacement path :" $3
	echo $1 "replaced by" $2

	sed -i "" "s/$1/$2/g" `grep $1 -rl $3`

	echo '------------------------Replacement Finished-----------------------------'
}

echo "Enter replaced string and new string:"

read oldWord newWord 

echo "Enter file path:"

read path

replace_string $oldWord $newWord $path
