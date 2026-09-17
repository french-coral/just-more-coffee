extends PanelContainer 
class_name ProductionTile

enum CURRENCY {
	BEANS,
	CAPSULES,
	COFFEE
}

@export var currency_sprite = Texture2D
@export var clickable_sprite = Texture2D

@export var assigned_currency : CURRENCY

@export var prod_per_click = 1
@export var cost = 0
@export var auto_prod_per_sec = 0 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	if assigned_currency == CURRENCY.BEANS:
		Global.main.beans += auto_prod_per_sec
	if assigned_currency == CURRENCY.CAPSULES:
		Global.main.capsules += auto_prod_per_sec
	if assigned_currency == CURRENCY.COFFEE:
		Global.main.coffee += auto_prod_per_sec

func update_currency(number:int):
	$MarginContainer/CurrencyDisplay.set_text(str(number))
