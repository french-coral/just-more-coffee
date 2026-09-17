extends Control

@onready var production_tile = $"../.."
var CURRENCY_TYPE = production_tile.assigned_currency


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass


func _on_texture_button_button_up() -> void:
	match CURRENCY_TYPE :
		ProductionTile.CURRENCY.BEANS :
			pass
		ProductionTile.CURRENCY.CAPSULES :
			pass
		ProductionTile.CURRENCY.COFFEE :
			pass
