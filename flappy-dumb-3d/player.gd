extends RigidBody3D

@export var velocidad = 4

var coins = 0
var is_alive = true;

func die():
	
	print("Game Over")
	is_alive = false

func add_coin():
	coins +=1
	print(coins)

func flap():
	linear_velocity = Vector3.UP * velocidad
	
func _integrate_forces(state: PhysicsDirectBodyState3D) -> void:
	if not is_alive:
		return 
	if Input.is_action_just_pressed("flap"):
		flap()
