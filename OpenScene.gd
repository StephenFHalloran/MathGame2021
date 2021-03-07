extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var LineEdit_instance = $TextureRect/LineEdit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TextureRect/LineEdit.clear()
	$TextureRect/LineEdit.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Button_pressed() -> void:
	get_tree().change_scene("res://MathRoot.tscn")


func _on_LineEdit_text_entered(new_text: String) -> void:
	print (str(new_text))
	$"/root/SingletonNode".name_player = "Maxing"
