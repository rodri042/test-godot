extends Label

signal you_win

var coins = 0

func _ready():
	text = String(coins)

func _on_coin_collected():
	coins = coins + 1
	_ready()
	
	if coins == 5:
		emit_signal("you_win")
