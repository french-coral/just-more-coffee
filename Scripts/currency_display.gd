extends Control

@onready var label = $HBoxContainer/Label

func set_text (text:String):
	$HBoxContainer/Label.text = text
