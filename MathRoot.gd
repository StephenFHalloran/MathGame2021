extends Control

var x
var x2 = 0


var number1 = 0
var number2 = 0

var button_guess_1
var button_guess_2
var button_guess_3


var correct_guess
var correct_num
var correct_button
# GET USER INFORMATION
var count_down = 1002

#var question_count
#var correct_guess
#var time_taken
#var score
#var name_player
#var file_name


func _ready() -> void:

	randomize()


	#while questions_count >1:

	set_up()
func	set_up():
		number1 = randi() % 11 + 1
		number2 = randi() % 11 + 1


		$ColorRect/Num1.text = str(number1)# Replace with function body.
		$ColorRect/Num2.text = str(number2)



		if $"/root/SingletonNode".question_count > 1:

			$ColorRect/CorrectGuess.text = str($"/root/SingletonNode".correct_guess)+" / "+str($"/root/SingletonNode".question_count-1)
			$ColorRect/ScoreTotal.text = "Score total = " + str($"/root/SingletonNode".score_up)
			$ColorRect/Question.text = "Question No. " + str($"/root/SingletonNode".question_count)
			if $"/root/SingletonNode".show_answer:
				$ColorRect/Answer.text = "Correct"
			else:
				$ColorRect/Answer.text = "Wrong"
	# Get Buttons
		correct_num = number1 + number2
		correct_button = randi() % 3 + 1


		#print(correct_button)
		if correct_button == 1:
			$ColorRect/Button1.text = str(correct_num)
			$ColorRect/Button2.text = str(correct_num-1)
			$ColorRect/Button3.text = str(correct_num+2)

		if correct_button == 2:
			$ColorRect/Button1.text = str(correct_num+2)
			$ColorRect/Button2.text = str(correct_num)
			$ColorRect/Button3.text = str(correct_num-1)

		if correct_button == 3:
			$ColorRect/Button1.text = str(correct_num-1)
			$ColorRect/Button2.text = str(correct_num+2)
			$ColorRect/Button3.text = str(correct_num)

	#while correct_guess == 0:
	#print ("stop")

		#print (str(correct_guess))	# Random 11 + 11

	#if correct_guess != 0:
		#if correct_guess == 2:
			#print ("NO!")
			#lock_in = 2
			#correct_guess = 0
		#$ColorRect/Question.text = "WRONG "+str(questions_count)

		#if correct_guess == 1:
			#print ("YES")
			#lock_in = 1
			#correct_guess = 0
		#$ColorRect/Question.text = "CORRECT "+str(questions_count)
			#print str(lock_in)
		#if lock_in == 1:
			#$ColorRect/Question.text = "Correct!"

		#if lock_in == 2:
			#$ColorRect/Question.text = "Sorry..."


		#if lock_in != 0:
			#call_question()
	#$ColorRect/Num1.text = str(number1)# Replace with function body.
	#$ColorRect/Num2.text = str(number2)
	#$ColorRect/PlusOrMinus.text = "+"
func _process(delta):
	count_down = count_down - 1
	#print(str(count_down))
	$ColorRect/Score.text = str(count_down)
	if count_down < 10:
		finish_up()



	#$ColorRect/Button1.text = "10"
	#$ColorRect/Button2.text = "13"
	#$ColorRect/Button3.text = "23"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

# Place the timer on the DISPLAY
# Give POINTS to the AUTOLOADER SINGELTON
# How many right and wrong

# Rerun the scene
# if the score is more than XXXXXX goto THIS SCENE - end game where INFORMATIONB IS STORED

func _on_Button1_pressed() -> void:
	#print ("One")
	if correct_button == 1:
		$"/root/SingletonNode".correct_guess = $"/root/SingletonNode".correct_guess + 1
		$"/root/SingletonNode".show_answer = true
		$ColorRect/Answer.text = "Correct!"
		finish_up()
	else:
		#$"/root/SingletonNode".correct_guess = 2
		$ColorRect/Answer.text = "Wrong!"
		$"/root/SingletonNode".show_answer = false
		correct_guess = false
		finish_up()
func _on_Button2_pressed() -> void:
	#print ("two")
	if correct_button == 2:
		$"/root/SingletonNode".correct_guess = $"/root/SingletonNode".correct_guess + 1
		$"/root/SingletonNode".show_answer = true
		$ColorRect/Answer.text = "Correct!"
		finish_up()
	else:
		#$"/root/SingletonNode".correct_guess = 2
		$ColorRect/Answer.text = "Wrong!"
		$"/root/SingletonNode".show_answer = false
		finish_up()

func _on_Button3_pressed() -> void:
	#print ("three")
	if correct_button == 3:
		$"/root/SingletonNode".correct_guess = $"/root/SingletonNode".correct_guess + 1
		$"/root/SingletonNode".show_answer = true
		$ColorRect/Answer.text = "Correct!"
		finish_up()
	else:
		#$"/root/SingletonNode".correct_guess = 2
		$ColorRect/Answer.text = "Wrong!"
		$"/root/SingletonNode".show_answer = false
		finish_up()


func finish_up():
	#$CorrectSound.stop()
	#$WrongSound.stop()
#var question_count
#var correct_guess
#var time_taken
#var score
#var name_player
#var file_name
	$"/root/SingletonNode".question_count = $"/root/SingletonNode".question_count + 1

	if $"/root/SingletonNode".show_answer == true:
		$"/root/SingletonNode".score_array.append(count_down)
		#$CorrectSound.stream = load("res://find_key.ogg")
		$"/root/SingletonNode/CorrectSound".play()
		#while $CorrectSound.is_playing() == false:
		#	pass
		print ("correct play")
	else:
		$"/root/SingletonNode".score_array.append(0)
		#$WrongSound.stream = load("res://robot-repair-1.ogg")
		$"/root/SingletonNode/WrongSound".play()
		#while $WhileSound.is_playing() == false:
		#	pass
		print ("wrong play")
	print($"/root/SingletonNode".score_array)


	x = $"/root/SingletonNode".score_array.duplicate()
	for n in range(x.size()):
		x2 += (x[n-1])
	print (x2)
	$"/root/SingletonNode".score_up = x2
	#for n in range($"/root/SingletonNode".question_count):
		#x = $"/root/SingletonNode".score_array[n-1]
		#a = $"/root/SingletonNode".score_up
		#$"/root/SingletonNode".score_array[n-1]
		#print ($"/root/SingletonNode".score_up)

	if $"/root/SingletonNode".question_count < 11:
		get_tree().change_scene("res://MathRoot.tscn")
	else:
		end_game()

func	end_game():
	#set_process(false)
		get_tree().change_scene("res://EndGame.tscn")

#var question_count
#var correct_guess
#var time_taken
#var score
#var name_player
#var file_name
#	# stop process and mske sure display is correc
	# save all off the informatiob into the singlton

	# start over the scene
	#
	#o through TEN of the answers and questions


#func call_question():
#	print (str(lock_in))
#	question_count += 1
#
#	if lock_in == 1:
#		correct_guess = correct_guess + 1
#
#	$ColorRect/Answer.text = str(correct_guess)
#	$ColorRect/Question.text = str(question_count)
#	lock_in = 0

