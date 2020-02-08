extends Area2D

export(int) var SCORE_AMOUNT: int = 3

func _on_Coin_body_entered(body):
	globals.AddScore(SCORE_AMOUNT)
	queue_free()
