extends Control

@onready var label = $HBoxContainer/Label
@onready var export_sprite = $"../..".currency_sprite
@onready var sprite = $HBoxContainer/TextureRect

func _ready() -> void:
	sprite.texture = export_sprite
	

func set_text (text:String):
	$HBoxContainer/Label.text = text
