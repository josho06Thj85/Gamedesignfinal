extends Control


func _on_button_pressed():
	$Label.text = "I like to play Sports and Videogames"

func _on_button_2_pressed():
	$Label.text = ""

func _on_button_3_pressed():
	get_tree().quit()
