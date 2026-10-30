extends CharacterBody2D
var speed: int = 0
var startdir:= [-1, 1]
var dir



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed = 10
	dir = startdir.pick_random()
	velocity = Vector2(dir * speed, 0)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	var col := move_and_collide(velocity)
	if col:
		var normal = col.get_normal()
		velocity = velocity.bounce(normal)
