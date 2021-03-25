extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Table_CLICK_ROW(value):
	$Label.text =  PoolStringArray(value).join(" ")
	print(value)


func _on_Button_pressed():
	$Table.set_rows([['100', '200'], ['300', '400']])

