extends RigidBody2D

var thrust = Vector2(0, -500)
var torque = 20000
var resetting = false

func _integrate_forces(state):
	if Input.is_action_pressed("ui_up"):
		applied_force = thrust.rotated(rotation)
	else:
		applied_force = Vector2()
	var rotation_dir = 0
	if Input.is_action_pressed("ui_right"):
		rotation_dir += 1
	if Input.is_action_pressed("ui_left"):
		rotation_dir -= 1
	applied_torque = rotation_dir * torque
	
	if resetting:
		var t = state.get_transform()   
		t.origin.x = 110
		t.origin.y = 303
		resetting = false
		linear_velocity.y = 0
		linear_velocity.x = 0
		state.set_transform(t)


func _on_FailArea_body_entered(body):
	resetting = true # Replace with function body.
