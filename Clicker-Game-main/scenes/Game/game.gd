class_name Game
extends Node

static var ref : Game
var data : Data = Data.new()


func _enter_tree() -> void:
	if ref:
		queue_free()
		return
	
	ref = self
