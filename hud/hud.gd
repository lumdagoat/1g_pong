extends Control
@onready var p1_score_label: Label = $P1Score
@onready var p2_score_label: Label = $P2Score


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	p1_score_label.text = "0"
	p2_score_label.text = "0"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func update_p1score_label(p1score):
	p1_score_label.text = str(p1score)
	
func update_p2score_label(p2score):
	p2_score_label.text = str(p2score)
