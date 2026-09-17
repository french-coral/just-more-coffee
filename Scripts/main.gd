extends Control
class_name Main



var beans : int = 100
var capsules : int = 0
var coffee:int = 0

@onready var beans_prod = $MarginContainer/VBoxContainer/HBoxContainer_Scroller/ProductionTile_Bean
@onready var capsule_prod = $MarginContainer/VBoxContainer/HBoxContainer_Scroller/ProductionTile_Capsule
@onready var coffe = $MarginContainer/VBoxContainer/HBoxContainer_Scroller/ProductionTile_Coffee

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.main = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
