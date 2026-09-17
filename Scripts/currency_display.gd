extends Control

@onready var label = $HBoxContainer/Label
@onready var sprite = $HBoxContainer/TextureRect

func _ready() -> void:
	pass
	

func set_text (text:String):
	$HBoxContainer/Label.text = text
