extends StaticBody2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var game_manager = %GameManager

var hasBeenClicked = false
var spriteType = "none"

func _ready():
	input_pickable = true
	
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if !hasBeenClicked:
				if (game_manager.counter % 2 == 0):
					animated_sprite.play("circle")
					spriteType = "circle"
				else:
					animated_sprite.play("square")
					spriteType = "square"
				hasBeenClicked = true
				game_manager.counter += 1
