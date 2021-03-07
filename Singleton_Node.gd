extends Control

var question_count = 1
var correct_guess = 0
var time_taken
var score = 0
var name_player
var file_name
var score_up = 0
var show_answer = true

var score_array = []

		#$CorrectSound.stream = load("res://find_key.ogg")
		#$CorrectSound.play()
		#while $CorrectSound.is_playing() == false:
		#	pass
		#print ("play")

	#else:
		#$"/root/SingletonNode".score_array.append(0)
		#$WrongSound.stream = load("res://robot-repair-1.ogg")
		#$WrongSound.play()


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
