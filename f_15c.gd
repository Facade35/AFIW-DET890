extends Node2D
#Acquisition
var acquired = false
var acqStat = 2
var acqMod = 0
var acqRange = 2
#AA
var shotRoll = 3
var shotRange = 2

var shotammo = true
#AS
var bombRoll = 2
var bombRange = 1
var bombammo = true
var bombdamage = 1
#Positioning
var movRange = 2
var cell = 0
var dead = false
#Loyalty
var loyalty = "PURPLE"
var home_squad 

signal press(name)

func _on_button_pressed() -> void:
	press.emit(name)
	pass # Replace with function body.
	
func _ready() -> void:
	get_node("Plane").text = name
func _acquired():
	get_node("Plane").text = name
	get_node("Plane").visible = true
	get_node("2").visible = false
	acquired = true
func _die() -> void:
	_SSpend()
func _SSpend() -> void:
	shotammo = false
	get_node("Winchester").visible = true
	
func _BSpend() -> void:
	bombammo = false
	get_node("Winchester2").visible = true
