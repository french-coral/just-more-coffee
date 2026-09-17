extends Control
class_name Main



var beans : int
var capsules : int
var coffee:int


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.main = self


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
