extends Button

var path_to_main = "res://control.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_boton_salida_pressed():
	get_tree().change_scene_to_file(path_to_main)
