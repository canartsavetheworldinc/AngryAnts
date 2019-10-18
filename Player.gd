extends Area2D

func _ready():
	pass

const speed = 7

func _unhandled_input(event):
	if not event is InputEventKey:
		return

	var velocity = Vector2()

	if event.pressed:
		if event.scancode == KEY_RIGHT:
			velocity.x += 1
			$AnimationPlayer.set_current_animation("walk_right")
		if event.scancode == KEY_LEFT:
			velocity.x -= 1
			$AnimationPlayer.set_current_animation("walk_left")
		if event.scancode == KEY_DOWN:
			velocity.y += 1
			$AnimationPlayer.set_current_animation("walk_down")
		if event.scancode == KEY_UP:
			velocity.y -= 1
			$AnimationPlayer.set_current_animation("walk_up")
	else:
		$AnimationPlayer.set_current_animation("")

	if velocity.length() > 0:
		self.position += velocity.normalized() * speed


func _process(delta):
	pass
