extends PanelContainer

@onready var nombre_peli = $HBoxContainer/Label
@onready var cantidad_bol = $HBoxContainer/Label2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func set_nombre_y_peli(nombre, cantidad):
	nombre_peli.text = nombre
	cantidad_bol.text = cantidad
