class_name ClickerPrototype
extends Control


@export
var label : Label
var gold : int = 0

func _ready() -> void:
	update_label()


func update_label() -> void:
	label.text = str(gold)


func increase_clicks() -> void:
	gold += 1
	update_label()


func _on_button_pressed() -> void:
	increase_clicks()


func increase_clicks1() -> void:
	gold += 2
	update_label()


func _on_upgrade_1_pressed() -> void:
	increase_clicks1()
