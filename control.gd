extends Control
var interfaz_cliente = "res://client_interface.tscn"
var interfaz_vendedor = "res://employee_interface.tscn"
@onready var MainContainer = $ReferenceRect/PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



func _on_login_manager_successful_signal(tipo_usuario):
	var new_interface
	match tipo_usuario:
		"vendedor":
			new_interface = load(interfaz_vendedor)
			
		"cliente":
			new_interface = load(interfaz_cliente)
			
		_:
			return
	var instance = new_interface.instantiate()
	MainContainer.add_child(instance)
