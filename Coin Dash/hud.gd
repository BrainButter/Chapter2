extends CanvasLayer

signal start_game

func update_score(value):
	$TopHud/Score.text = str(value)
	
func update_timer(value):
	$TopHud/Time.text = str(value)
	
func show_message(text):
	$CoinDash.text = text
	$CoinDash.show()
	$Timer.start()

func show_game_over():
	show_message("Game Over")
	await $Timer.timeout
	$StartButton.show()
	$CoinDash.text = "Coin Dash Bitch!"
	$CoinDash.show()

func _on_timer_timeout():
	$CoinDash.hide()


func _on_button_pressed():
	$StartButton.hide()
	$CoinDash.hide()
	start_game.emit()


