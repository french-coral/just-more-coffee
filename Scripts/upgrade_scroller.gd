extends PanelContainer

var production_tile 

var production_up_cost : int :
	set(new_value):
		production_up_cost=new_value
		$MarginContainer/VBoxContainer/PoductionUp/Label.text = str(production_up_cost)

var auto_prod_cost : int :
	set(new_value):
		auto_prod_cost=new_value
		$MarginContainer/VBoxContainer/AutoProd/Label.text = str(auto_prod_cost)

var efficiency_up_cost : int :
	set(new_value):
		efficiency_up_cost=new_value
		$MarginContainer/VBoxContainer/Efficiency/Label.text = str(efficiency_up_cost)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	production_tile = get_parent()
	production_up_cost= 10
	auto_prod_cost = 20
	efficiency_up_cost = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_poduction_up_button_up() -> void:
	if production_tile.assigned_currency == ProductionTile.CURRENCY.BEANS and Global.main.beans >=  production_up_cost:
		Global.main.beans -= production_up_cost
		production_up_cost *= 1.1
		production_tile.prod_per_click +=2
		production_tile.cost += 1
	if production_tile.assigned_currency == ProductionTile.CURRENCY.CAPSULES and Global.main.capsules >=  production_up_cost:
		Global.main.capsules -= production_up_cost
		production_up_cost *= 1.1
		production_tile.prod_per_click +=2
		production_tile.cost += 1
	if production_tile.assigned_currency == ProductionTile.CURRENCY.COFFEE and Global.main.coffee >=  production_up_cost:
		Global.main.coffee -= production_up_cost
		production_up_cost *= 1.1
		production_tile.prod_per_click +=2
		production_tile.cost += 1

func _on_auto_prod_button_up() -> void:
	if production_tile.assigned_currency == ProductionTile.CURRENCY.BEANS and Global.main.beans >=  auto_prod_cost:
		Global.main.beans -= auto_prod_cost
		auto_prod_cost  *= 1.1
		production_tile.auto_prod_per_sec += 2
		
	if production_tile.assigned_currency == ProductionTile.CURRENCY.CAPSULES and Global.main.capsules >=  auto_prod_cost:
		Global.main.capsules -= auto_prod_cost
		auto_prod_cost  *= 1.1
		production_tile.auto_prod_per_sec += 2

	if production_tile.assigned_currency == ProductionTile.CURRENCY.COFFEE and Global.main.coffee >=  auto_prod_cost:
		Global.main.coffee -= auto_prod_cost
		auto_prod_cost  *= 1.1
		production_tile.auto_prod_per_sec += 2

func _on_efficiency_button_up() -> void:
	if production_tile.assigned_currency == ProductionTile.CURRENCY.BEANS and Global.main.beans >=  efficiency_up_cost and production_tile.cost > 1:
		efficiency_up_cost *= 2
		Global.main.beans -= efficiency_up_cost
		production_tile.cost /=2
	if production_tile.assigned_currency == ProductionTile.CURRENCY.CAPSULES and Global.main.capsules >=  efficiency_up_cost and production_tile.cost > 1:
		efficiency_up_cost *= 2
		Global.main.capsules -= efficiency_up_cost
		production_tile.cost /=2
	if production_tile.assigned_currency == ProductionTile.CURRENCY.COFFEE and Global.main.coffee >=  efficiency_up_cost and production_tile.cost > 1:
		efficiency_up_cost *= 2
		Global.main.coffee -= efficiency_up_cost
		production_tile.cost /= 2
