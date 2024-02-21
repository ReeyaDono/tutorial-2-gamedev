extends Node


var shipPos = Vector2(110, 303)
var disPlatPos = Vector2(0, 0)
var newDisPlatPos = Vector2(-500, 0)

func reset_game():
	$DisappearingPlatform.position = disPlatPos
	


func _on_ButtonArea_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		$DisappearingPlatform.position = newDisPlatPos


func _on_FailArea_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		reset_game()


func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		print("Reached Objective")
