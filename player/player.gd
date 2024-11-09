extends CharacterBody2D

# How fast the player moves in meters per second.
@export var speed := 150

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite.play("default")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("left"):
		$Sprite.play("left_walk")
	elif Input.is_action_pressed("right"):
		$Sprite.play("right_walk")
	elif Input.is_action_pressed("up"):
		$Sprite.play("up_walk")
	elif Input.is_action_pressed("down"):
		$Sprite.play("down_walk")
	else:
		$Sprite.pause()
		

func _physics_process(delta):
	var input_direction := Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

	move_and_slide()
