class_name ClickerPrototype
extends Control

@export

var power : int = 0
var gold : int = 0
var trucQuiGlisse : bool = false

func _ready() -> void:
	update_label()
	update_label1()
	update_label2()
	

func update_label() -> void:
	$Label.text = str(gold)
	popBlue()


func update_label2() -> void:
	$Label2.text = str(round(10 + (power ** log(10))))


func increase_clicks() -> void:
	gold += 1 + power
	update_label()


func _on_button_pressed() -> void:
	$AnimationPlayer.play("HumanTurningBlue")
	
	increase_clicks()


func update_label1() -> void:
	$Upgrade1/Label1.text = str(power + 1)


func _on_upgrade_1_pressed() -> void:
	if gold >= 10 + power ** log(10):
		increase_clicks1()
		update_label2()


func increase_clicks1() -> void:
	gold -= 10 + power ** log(10)
	power += 1
	update_label1()
	update_label()



func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	$Sprite2D.set_frame(0)
	$Sprite2D.set_scale(Vector2(1,1))


func _on_boutton_qui_glisse_pressed() -> void:
	if trucQuiGlisse == false:
		$AnimationPlayer2.play("Truc_qui_glisse")
		trucQuiGlisse = true
	else:
		$AnimationPlayer2.play_backwards("Truc_qui_glisse")
		trucQuiGlisse = false
	
	
func popBlue() -> void:
	var gold1 = gold
	var yes = gold/10
	
	$boutton_qui_glisse/Label3.text = "Number of humans: " + str(yes)
	
	if yes >= 1 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy.visible = false
	if yes >= 2 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy2.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy2.visible = false
	if yes >= 3 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy3.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy3.visible = false
	if yes >= 4 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy4.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy4.visible = false
	if yes >= 5 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy5.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy5.visible = false
	if yes >= 6 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy6.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy6.visible = false
	if yes >= 7 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy7.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy7.visible = false
	if yes >= 8 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy8.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy8.visible = false
	if yes >= 9 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy9.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy9.visible = false
	if yes >= 10 :
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy10.visible = true
		
	else:
		$boutton_qui_glisse/Panneaux/Sprite2D2/BlueGuy10.visible = false
		
