extends CharacterBody2D

@onready var eye = $EyePart
@onready var player = $"../Player"

@export var hp: int

var playerPos

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

func _process(_delta: float) -> void:
	playerPos = player.global_position
	eye.look_at(playerPos)
