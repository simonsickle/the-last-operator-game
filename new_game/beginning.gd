extends Control

@onready var animation_player = $AnimationPlayer
@onready var background_audio = $BackgroundAudio

func _ready() -> void:
	# Play the blinding screen anim to fade into player
	animation_player.play("beginning_animation_library/fade_out_blinding_light")
	# Play the ringing ears sound for the explosion
	start_tinnitus()

func start_tinnitus():
	background_audio.play()
	await background_audio.finished
	await get_tree().create_timer(1.5)
	background_audio.stream = load("res://sound_effects/KLAXON-2.mp3")
	background_audio.play()
