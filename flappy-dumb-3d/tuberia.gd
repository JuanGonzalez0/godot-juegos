extends Node3D

@export var velocidad = 0.03

func _physics_process(delta: float) -> void:
	position -= Vector3.LEFT * velocidad

func _on_coin_body_entered(body: Node3D) -> void:
	body.add_coin()



func _on_pipes_body_entered(body: Node3D) -> void:
	if body.name ==	 "Player":
		body.die()
