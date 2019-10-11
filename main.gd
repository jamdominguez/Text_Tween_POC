extends Node2D

export (PackedScene) var effect
var my_effect = null

func _ready():
	pass

func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		var pos = get_global_mouse_position()
		show_time_bonus(pos)
	pass

func show_time_bonus(pos):
		if effect != null:
			my_effect = effect.instance()
			add_child(my_effect)
			my_effect.position = pos
			my_effect.setup(pos.x + pos.y)	