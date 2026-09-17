extends Control
class_name Main



var beans : int :
	set(new_value):
		beans = new_value
		beans_prod.update_currency(beans)

var capsules : int:
	set(new_value):
		capsules = new_value
		capsule_prod.update_currency(capsules)

var coffee : int:
	set(new_value):
		coffee = new_value
		coffee_prod.update_currency(coffee)

@onready var beans_prod = $MarginContainer/VBoxContainer/HBoxContainer_Scroller/ProductionTile_Bean
@onready var capsule_prod = $MarginContainer/VBoxContainer/HBoxContainer_Scroller/ProductionTile_Capsule
@onready var coffee_prod = $MarginContainer/VBoxContainer/HBoxContainer_Scroller/ProductionTile_Coffee

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.main = self
	beans = 10
	capsules = 0
	coffee=0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
