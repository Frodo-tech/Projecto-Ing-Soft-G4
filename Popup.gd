extends Popup


# Called when the node enters the scene tree for the first time.
func _ready():
	position = $"../Center".global_position - Vector2(size.x/2,size.y/2)
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_popup_close_requested():
	hide()


func _on_login_manager_successful_signal(_tipo_usuario):
	hide()
