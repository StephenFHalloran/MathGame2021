extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

In the following code you could replace _input with any of the other event handlers such as _input_event, _unhandled_input, and _gui_input.

extends Node2D

func _input(event):
	# Detect event based on Input Map value
	if event.is_action_pressed("ui_accept"):
		print("Space bar or Enter was pressed")
	
	# Experiment with pressing keys
	print(event.as_text())
	
	# Ensure that the input event is what we are interested in
	# Different types of events contain different properties
	if event is InputEventMouseButton:
		# Check the properties of the event in the Inspector
		breakpoint;
	
	# Stop the event from spreading
	get_tree().set_input_as_handled()
