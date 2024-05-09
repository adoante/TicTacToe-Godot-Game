extends Node

var counter = 0

@onready var tile_1 = %Tile
@onready var tile_2 = %Tile2
@onready var tile_3 = %Tile3
@onready var tile_4 = %Tile4
@onready var tile_5 = %Tile5
@onready var tile_6 = %Tile6
@onready var tile_7 = %Tile7
@onready var tile_8 = %Tile8
@onready var tile_9 = %Tile9

@onready var window = %Window

var tiles = []

var state = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tiles = [
		[tile_1.spriteType, tile_2.spriteType, tile_3.spriteType], 
		[tile_4.spriteType, tile_5.spriteType, tile_6.spriteType], 
		[tile_7.spriteType, tile_8.spriteType, tile_9.spriteType]
	]
	win()
	tie()

func win():
	# Horizontal Wins
	if tiles[0][0] == tiles[0][1] and tiles[0][1] == tiles[0][2] and tiles[0][2] != "none":
		window.get_node("Label").text = tiles[0][0] + " wins!"
		window.show()
		state = true
	if tiles[1][0] == tiles[1][1] and tiles[1][1] == tiles[1][2] and tiles[1][2] != "none":
		window.get_node("Label").text = tiles[1][0] + " wins!"
		window.show()
		state = true
	if tiles[2][0] == tiles[2][1] and tiles[2][1] == tiles[2][2] and tiles[2][2] != "none":
		window.get_node("Label").text = tiles[2][0] + " wins!"
		window.show()
		state = true
		
	# Vertical Wins
	if tiles[0][0] == tiles[1][0] and tiles[1][0] == tiles[2][0] and tiles[2][0] != "none":
		window.get_node("Label").text = tiles[0][0] + " wins!"
		window.show()
		state = true
	if tiles[0][1] == tiles[1][1] and tiles[1][1] == tiles[2][1] and tiles[2][1] != "none":
		window.get_node("Label").text = tiles[0][1] + " wins!"
		window.show()
		state = true
	if tiles[0][2] == tiles[1][2] and tiles[1][2] == tiles[2][2] and tiles[2][2] != "none":
		window.get_node("Label").text = tiles[0][2] + " wins!"
		window.show()
		state = true
		
	# Diagonal Wins
	if tiles[0][0] == tiles[1][1] and tiles[1][1] == tiles[2][2] and tiles[2][2] != "none":
		window.get_node("Label").text = tiles[0][0] + " wins!"
		window.show()
		state = true
	if tiles[2][0] == tiles[1][1] and tiles[1][1] == tiles[0][2] and tiles[0][2] != "none":
		window.get_node("Label").text = tiles[2][0] + " wins!"
		window.show()
		state = true

func tie():
	if (counter == 9 and state == false):
		window.get_node("Label").text = "tie!"
		window.show()
		state = true
