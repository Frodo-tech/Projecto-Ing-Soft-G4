extends Button

@onready var cell_blueprint = preload("res://celda_boleto.tscn")
signal added_to_cart
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if $"../LineEdit".text == "":
		return
	var new_cell = cell_blueprint.instantiate()
	$"../../../../PanelContainer/VBoxContainer/ScrollContainer/VBoxContainer".add_child(new_cell)
	new_cell.set_nombre_y_peli("Los Minions", "x"+$"../LineEdit".text)
	emit_signal("added_to_cart")
