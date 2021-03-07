extends CanvasLayer


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var path = "user.//save.dat"
	var file = File.new()
	var err = file.open(path, file.WRITE)
	if err !=OK:
		print ("NOT OK")
	file.store_var("a")
	file.store_var("b")
	file.close()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
