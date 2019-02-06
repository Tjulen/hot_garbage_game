extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

var move_vec = Vector2(0, 0)

const move_amount = 10

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if Input.is_key_pressed(KEY_D):
		move_vec.x = move_amount
	elif Input.is_key_pressed(KEY_A):
		move_vec.x = -move_amount
	if Input.is_key_pressed(KEY_W):
		move_vec.y = -move_amount
	elif Input.is_key_pressed(KEY_S):
		move_vec.y = move_amount
	
	translate(move_vec)
	move_vec.x = 0
	move_vec.y = 0
	pass
