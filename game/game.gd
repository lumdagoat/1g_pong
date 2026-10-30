extends Node
var p1score: int = 0
var p2score: int = 0
@onready var hud: Control = $HUD
@onready var ball: CharacterBody2D = $ball


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	p1score = 0
	p2score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_left_goalbox_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		p2score += 1
		hud.update_p2score_label(p2score)
		ball.position = Vector2(580.0, 320.0)
		

func _on_right_goalbox_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		p1score += 1
		hud.update_p1score_label(p1score)
		ball.position = Vector2(580.0, 320.0)
