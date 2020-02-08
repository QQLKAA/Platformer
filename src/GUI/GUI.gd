extends CanvasLayer

onready var scoreLabel = $Score/Value

func _ready():
	globals.connect("ScoreChanged", self, "_score_changed")

func _score_changed(old: int, new: int):
	scoreLabel.text = str(new)
