extends Control

const RowData = preload("res://addons/godot_table/RowData.gd")

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
	#$Table.set_rows([['Tom', '100'], ['Dan', '40']])
	$Table.set_rows_([
		RowData.new().set_data(['Tom', '100']).set_disable(true),
		RowData.new().set_data(['Dan', '40'])
	])
