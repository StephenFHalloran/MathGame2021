extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print ("This is READY")
	$ColorRect/FinalScore.text = "Score : " + str($"/root/SingletonNode".score_up)
	$ColorRect/AmountCorrect.text = "Correct Answers : " + str($"/root/SingletonNode".correct_guess) + " out of 10"
	#$ColorRect/NameLabel.text = $"/root/SingletonNode".name_player
	#$"/root/SingletonNode".name_player
	# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	print ($"/root/SingletonNode".name_player)

func _on_ButtonEnd_pressed():
	pass



func _on_ButtonDoOver_pressed():
	$"/root/SingletonNode".score_up = 0
	$"/root/SingletonNode".question_count = 1
	$"/root/SingletonNode".correct_guess = 0
	#var time_taken
	$"/root/SingletonNode".score = 0
	#var name_player
	#var file_name
	$"/root/SingletonNode".show_answer = false

	$"/root/SingletonNode".score_array.clear()
	get_tree().change_scene("res://MathRoot.tscn") # Replace with function body.
