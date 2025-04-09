class_name ClickerPrototype
extends Control


@export
var label : Label


func _ready() -> void:
	update_label()


func update_label() -> void:
	label.text = "Gold : %s" %Game.ref.data.gold


func increase_clicks() -> void:
	Game.ref.data.gold += 1
	update_label()


func _on_button_pressed() -> void:
	increase_clicks()
