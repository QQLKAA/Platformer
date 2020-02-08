extends Node

signal ScoreChanged(old, new)

var score: int = 0

func SetScore(new: int):
	emit_signal("ScoreChanged", score, new)
	score = new

func AddScore(amount: int):
	SetScore(score + amount)
