extends PanelContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_visible(false)



func _on_pantry_button_become_visible():
	self.set_visible(true)
