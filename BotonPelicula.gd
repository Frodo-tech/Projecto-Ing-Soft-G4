extends Button

@export var start_time = "05:30 pm"
@export var remaining_tickes = 26
@export var nombre_peli = "Los Minions"
@export var current_state = null
@export var current_classification = null
signal clicked

enum movie_state{
	SINREPRODUCIR,
	REPRODUCIENDO
}
enum clasificacion_edad{
	A,
	B,
	C
}




# Called when the node enters the scene tree for the first time.
func _ready():
	text = nombre_peli
	current_state = movie_state.SINREPRODUCIR
	current_classification = clasificacion_edad.A
	clicked.connect($"../../../../../../../InterfaceController"._on_clicked)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_pelicula_pressed():
	get_movie_details()
	
func get_movie_details():
	emit_signal("clicked"#,"nombre_peli","start_time","current_state","remaining_stickers","current_classification"#
	)
