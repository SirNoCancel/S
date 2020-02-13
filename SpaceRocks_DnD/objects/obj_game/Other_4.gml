/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B43BC04
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0879F3C6
	/// @DnDParent : 6B43BC04
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 4A051CBA
		/// @DnDInput : 2
		/// @DnDParent : 0879F3C6
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C4A8EA6
		/// @DnDParent : 0879F3C6
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 520E0B0E
			/// @DnDParent : 2C4A8EA6
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 460CDCDF
		/// @DnDParent : 0879F3C6
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 290E7D63
			/// @DnDParent : 460CDCDF
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	}

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 2D36885B
	/// @DnDInput : 2
	/// @DnDParent : 6B43BC04
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option_1" "1"
	var choice = choose(0, 1);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BA66BED
	/// @DnDParent : 6B43BC04
	/// @DnDArgument : "var" "choice"
	if(choice == 0)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 15DE0397
		/// @DnDParent : 5BA66BED
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "room_height*0.3"
		yy = floor(random_range(0, room_height*0.3 + 1));
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4F33A1D4
	/// @DnDParent : 6B43BC04
	else
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 002EDB97
		/// @DnDParent : 4F33A1D4
		/// @DnDArgument : "var" "yy"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "room_height*0.7"
		/// @DnDArgument : "max" "room_height"
		yy = floor(random_range(room_height*0.7, room_height + 1));
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 70A9754D
	/// @DnDParent : 6B43BC04
	/// @DnDArgument : "xpos" "xx"
	/// @DnDArgument : "ypos" "yy"
	/// @DnDArgument : "objectid" "obj_asteroid"
	/// @DnDSaveInfo : "objectid" "38298aae-4582-4bbb-958f-a6fa961d8597"
	instance_create_layer(xx, yy, "Instances", obj_asteroid);
}