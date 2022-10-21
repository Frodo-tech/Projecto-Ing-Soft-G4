extends LineEdit
var accepted_text = ["0","1","2","3","4","5","6","7","8","9"]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_line_edit_text_changed(new_text):
	for letter in new_text:
		if letter not in accepted_text:
			var textold = text        # grab the text
			text = textold.left(textold.length()-1) # remove the last char
			set_caret_column(text.length())


func _on_button_added_to_cart():
	text = ""
