extends Button

@export var sweet: Vector2
signal valueSend(sendSweet)

# Called when the node enters the scene tree for the first time.
func _ready():
	self.button_down.connect(_on_button_press)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_press():
	emit_signal("valueSend", sweet.x)
