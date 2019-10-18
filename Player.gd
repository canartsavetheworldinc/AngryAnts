extends Area2D

const speed = 1

func move():
	var velocity = Vector2()
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

func _ready():
	pass

func _process(delta):
	move()
