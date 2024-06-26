extends Node2D
var Mouse_Position
var velocity 

const SPEED = 150

func _process(delta):
	var vec = get_viewport().get_mouse_position() - self.position # getting the vector from self to the mouse
	vec = vec.normalized() * delta * SPEED # normalize it and multiply by time and speed
	position += vec # move by that vector
