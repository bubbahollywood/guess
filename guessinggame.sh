file_count=$(ls -l | wc -l)
#echo $file_count
file_count=$((file_count - 1))
#echo $file_count


function file_guess {
	if [[ $1 -gt $2 ]]
	then
		echo "That is too many"
	elif [[ $1 -lt $2 ]]
	then
		echo "That is not enough"
	else
		echo "Congratulations, That is correct."
	fi
}

while [[ $user_input -ne $file_count ]]
do
  read -p "Guess how many files are in the current directory:  " user_input
  echo $(file_guess $user_input $file_count)
done
