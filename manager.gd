extends Node2D


var orderClass = preload("res://order.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	var money: int
	money = 1000
	var time: int
	time = 0

	randomize()
	for buttons in get_node("PantryMenuNode/Pantry Menu").get_children():
		buttons.connect("valueSend", self._add_ingredient)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _add_ingredient(ingredientSweet):
	print(ingredientSweet)

func _create_ticket():
	var flavour = randi_range(0,6)
	var ingredients: Array
	var ingredientsNum = randi_range(0,4)
	for n in ingredientsNum:
		ingredients.append(randi_range(0,4))
	var orderInstance = orderClass.new()
	orderInstance._new(flavour, ingredients)
	

