echo "BMI Calculator"

echo "How much do you weigh in pounds?"
read weight
weightfix=$(( 703 * $weight ))

echo "How tall are you in inches?"
read height
heightsq=$(( $height * $height ))

if [ $weight -le 0 ]
then
	if [ $height -le 0 ]
	then
		echo "Weight and Height cannot be zero or below."
	fi
else
	bmi=$(( $weightfix / $heightsq ))
	echo "Your BMI is rounded to:"
	echo $bmi
fi

if [ $bmi -lt 18 ]
then
	echo "You are underweight."
else
	if [ $bmi -lt 25 ]
	then
		echo "You are normal."
	else
		if [ $bmi -lt 30 ]
		then
			echo "You are overweight."
		else
			if [ $bmi -ge 30 ]
			then
				echo "You are obese."
			fi
		fi
	fi
fi
