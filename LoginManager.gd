extends Node

var usuario = ""
var password = ""
@onready var campo_usuario = $"../VBoxContainer/UserField"
@onready var campo_pass = $"../VBoxContainer/PassField"
signal successful_signal

var users = {
	
	"manager":["urbe", "gerente"],
	"cliente":["urbe", "cliente"],
	"vendedor":["urbe", "vendedor"]
	
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	validate_login()

func validate_login():
	usuario = campo_usuario.text
	password = campo_pass.text
	
	if usuario not in users:
		print("Usuario no encontrado")
		return
	
	if password != users.get(usuario)[0]:
		print("Contraseña incorrecta")
		return
	print("Logueado")
