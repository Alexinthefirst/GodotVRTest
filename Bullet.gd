extends RigidBody


export (int) var speed = 45


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform.origin += transform.basis.z * speed * delta


func _on_RigidBody_body_entered(body):
	#if (!is_in_group("gun")):
	#	queue_free()
	pass


func _on_Timer_timeout():
	queue_free()
