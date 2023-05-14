extends Button
signal become_visible

# Called when the node enters the scene tree for the first time.
func _ready():
	self.button_down.connect(_on_button_pressed)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
func _on_button_pressed():
	self.set_visible(false)
	emit_signal("become_visible")
	return
