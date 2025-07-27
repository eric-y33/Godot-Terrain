extends DirectionalLight3D

@export_group("Rotation")

@export var from: Vector3 = Vector3(172.2, -360.0, 0.0)
@export var to: Vector3 = Vector3(-16.2, 360.0, 0.0)
@export var duration: float = 5.0

var elapsed_time := 0.0
var rotating := false

func _ready() -> void:
	rotation_degrees = from
	rotating = true
	
func _process(delta) -> void:
	elapsed_time += delta
	
	if not rotating:
		return
		
	var percent = clamp(elapsed_time / duration, 0.0, 1.0)
	
	rotation_degrees = from.lerp(to, percent)
	
	if percent >= 1.0:
		rotating = false
	
	
	
	
	
