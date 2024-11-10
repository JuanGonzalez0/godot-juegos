extends Node3D
var tuberias : Array
var index_control = 0
func _ready() -> void:
	for tubo in $TuboPadre.get_children():
		tuberias.append(tubo)


func _on_timer_timeout() -> void:
	randomize()
	tuberias[index_control].position = Vector3($arribaSpawn.position.x,
	randf_range($abajoSpawn.position.y, $arribaSpawn.position.y), $abajoSpawn.position.z)
	
func next_control():
	if index_control < tuberias.size()-1:
		index_control +=1
	else:
		index_control =0
