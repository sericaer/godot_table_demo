using Godot;
using System;
using System.Collections.Generic;
using System.Linq;

public class DemoCShap : Control
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		
	}

	private void _on_Table_CLICK_ROW(Godot.Collections.Array array)
	{
		GD.Print(array);

		GetNode<Label>("Label").Text = String.Join(" ", array.Cast<string>());
	}

	private void _on_Button_pressed()
	{
		var param = new Godot.Collections.Array() { new Godot.Collections.Array() { "Tom", "100" }, new Godot.Collections.Array() { "Dan", "60" } };

		GetNode("Table").Call("set_rows", new object[] { param });
	}
}
