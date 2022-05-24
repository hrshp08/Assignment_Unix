# file: guessinggame.sh

function input {
	echo "Guess the number of files please"
	read var
}

input

while [[ $var -ne $(ls -l | wc -l)-1 ]]
do 
	if [[ $var -lt $(ls -l | wc -l)-1 ]]
	then
		echo "the input is less than the actual files"
	else
		echo "the input is greater than the actual files"
	fi
	input
done

echo " you have entered the correct value"
echo "below are the list of files in the directory"
ls -l
