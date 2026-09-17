extends Control

@onready var production_tile : ProductionTile = get_parent().get_parent()
@onready var CURRENCY_TYPE = production_tile.assigned_currency

@onready var export_sprite = production_tile.clickable_sprite
@onready var sprite = $MarginContainer/TextureButton

func _ready() -> void:
	sprite.texture_normal = export_sprite

func _on_texture_button_button_up() -> void:
	match CURRENCY_TYPE :
		ProductionTile.CURRENCY.BEANS :
			print(Global.main.beans)
			print(production_tile)
			print(production_tile.prod_per_click)
			
			Global.main.beans += production_tile.prod_per_click
			
		ProductionTile.CURRENCY.CAPSULES :
			if Global.main.beans >= Global.main.capsule_prod.cost :
				Global.main.capsules += production_tile.prod_per_click
				Global.main.beans -= Global.main.capsule_prod.cost
			else : # Not Enough Bean
				pass
		
		ProductionTile.CURRENCY.COFFEE :
			if Global.main.capsules >= Global.main.capsule_prod.cost:
				Global.main.coffee += production_tile.prod_per_click
				Global.main.capsules -= Global.main.coffee_prod.cost
			else : # Not enough capsules
				pass
