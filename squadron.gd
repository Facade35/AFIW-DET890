extends Node2D

var plane = load("res://f_15c.tscn")
#Placeholder for unnatainable
var cell = 10
var damage = 0
var loyalty = "PURPLE"
var totalhealth = 2
var planeslist = []
var deployed = false

signal press(name)

func _on_button_pressed() -> void:
	press.emit(name)
	
func _ready() -> void:
	get_node("Label").text = name
	if totalhealth == 3:
		get_node("HRect3").visible = true
	if totalhealth >= 2:
		get_node("HRect2").visible = true
	if totalhealth >= 1:
		get_node("HRect1").visible = true

func _readPlanes():
	pass

func _hit(hurt):
	damage += hurt
	if damage == 1:
		get_node("HRect1").color = Color(1,1,1,1)
	if damage >=2:
		get_node("HRect1").color = Color(1,1,1,1)
		get_node("HRect2").color = Color(1,1,1,1)
	if damage >=3:
		get_node("HRect1").color = Color(1,1,1,1)
		get_node("HRect2").color = Color(1,1,1,1)
		get_node("HRect3").color = Color(1,1,1,1)
	if damage >= totalhealth:
		#die
		pass

func _flyOff(plane):
	print("ERASE:")
	print(plane)
	planeslist.erase(plane)
