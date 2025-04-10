class_name ClickerPrototype
extends Control


@export



var power : int = 0


var gold : int = 0
var buttonPressed : bool

func _ready() -> void:
	update_label()
	update_label1()


func update_label() -> void:
	$Label.text = str(gold)
	



func increase_clicks() -> void:
	gold += 1 + power
	update_label()


func _on_button_pressed() -> void:
	$AnimationPlayer.play("HumanTurningBlue")
	increase_clicks()


func update_label1() -> void:
	$Upgrade1/Label1.text = str(power)


func _on_upgrade_1_pressed() -> void:
	increase_clicks1()


func increase_clicks1() -> void:
	power += 1
	update_label1()
