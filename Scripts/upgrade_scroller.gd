extends PanelContainer

var production_tile 

var production_up_cost : int = 10:
	set(new_value):
		production_up_cost=new_value
		$MarginContainer/VBoxContainer/PoductionUp/Label.text = str(production_up_cost)

var auto_prod_cost : int = 20:
	set(new_value):
		auto_prod_cost=new_value
		$MarginContainer/VBoxContainer/AutoProd/Label.text = str(auto_prod_cost)

var efficiency_up_cost : int = 100:
	set(new_value):
		efficiency_up_cost=new_value
		$MarginContainer/VBoxContainer/Efficiency/Label.text = str(efficiency_up_cost)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	production_tile = get_parent()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_poduction_up_button_up() -> void:
	if production_tile.assigned_currency == ProductionTile.CURRENCY.BEANS and Global.main.beans >=  production_up_cost:
		Global.main.beans -= production_up_cost
		production_up_cost *= 1.1
		production_tile.prod_per_click +=1
		production_tile.cost += 1

func _on_auto_prod_button_up() -> void:
	if production_tile.assigned_currency == ProductionTile.CURRENCY.CAPSULES and Global.main.capsules >=  production_up_cost:
		auto_prod_cost  *= 1.1
		production_tile.auto_prod_per_sec += 2

func _on_efficiency_button_up() -> void:
	if production_tile.assigned_currency == ProductionTile.CURRENCY.COFFEE and Global.main.coffee >=  production_up_cost and production_tile.cost > 1:
		efficiency_up_cost *= 5
		production_tile.cost -=1
