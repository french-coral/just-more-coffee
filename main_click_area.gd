extends Control

@onready var production_tile = $"../.."
@onready var CURRENCY_TYPE = production_tile.assigned_currency


func _on_texture_button_button_up() -> void:
	match CURRENCY_TYPE :
		ProductionTile.CURRENCY.BEANS :
			Global.main.beans += production_tile.prod_per_click
		ProductionTile.CURRENCY.CAPSULES :
			if Global.main.beans >= 5 :
				Global.main.capsules += production_tile.prod_per_click
			else : # Not Enough Bean
				pass
		ProductionTile.CURRENCY.COFFEE :
			if Global.main.capsules >= 5:
				Global.main.coffee += production_tile.prod_per_click
			else : # Not enough capsules
				pass
