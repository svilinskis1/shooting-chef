extends Area3D

@export var enemy_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	
	if(enemy_scene && get_child_count() < 20):
		var enemy = enemy_scene.instantiate()
		enemy.position = Vector3(0, 0, 0)
		add_child(enemy)


