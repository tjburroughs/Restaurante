extends TextureRect
@export var buttonConnect: String

# Called when the node enters the scene tree for the first time.
func _ready():
	var rootpath = "ChefMenuNode/Chef Menu/StatsPicture/Stats"
	get_node(rootpath+buttonConnect).connect("revealStat", self._Reveal)
	

#

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _Reveal():
	self.set_visible(true)
