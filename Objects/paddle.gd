extends Node3D


var move_speed:float = 7.5


func _ready():
	pass


func _process(delta):
	var input_dir = Input.get_vector("Left", "Right", "Up", "Down")
	input_dir *= delta * move_speed
	position += Vector3(input_dir.x, -input_dir.y, 0.0)
