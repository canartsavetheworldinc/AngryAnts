extends Area2D

const speed = 1

func _ready():
	pass # Replace with function body.

func _process(delta):
	var velocity = Vector2()  # The player's movement vector.
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$AnimationPlayer.set_current_animation("walk_right")
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$AnimationPlayer.set_current_animation("walk_left")
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		$AnimationPlayer.set_current_animation("walk_down")
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		$AnimationPlayer.set_current_animation("walk_up")
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		$AnimationPlayer.set_current_animation("")

	self.position += velocity
