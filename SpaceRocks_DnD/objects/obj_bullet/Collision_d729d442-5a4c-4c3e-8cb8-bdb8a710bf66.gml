/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 749941D0
/// @DnDApplyTo : b517f0cb-a6fb-4728-9a96-ac5c8f2e1c79
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1D3061F7
	/// @DnDParent : 749941D0
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7D780B7A
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 65D9AD58
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4CC9AE66
	/// @DnDParent : 65D9AD58
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73EA2B8E
	/// @DnDParent : 65D9AD58
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_big"
	if(sprite_index == spr_asteroid_big)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 486377C0
		/// @DnDParent : 73EA2B8E
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 46ECA749
			/// @DnDParent : 486377C0
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "38298aae-4582-4bbb-958f-a6fa961d8597"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CDB7036
			/// @DnDParent : 486377C0
			/// @DnDArgument : "expr" "spr_asteroid_medium"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59655F92
	/// @DnDParent : 65D9AD58
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_medium"
	if(sprite_index == spr_asteroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 61C950F1
		/// @DnDParent : 59655F92
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6486031D
			/// @DnDParent : 61C950F1
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "38298aae-4582-4bbb-958f-a6fa961d8597"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 523A742C
			/// @DnDParent : 61C950F1
			/// @DnDArgument : "expr" "spr_asteroid_small"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 01E98865
	/// @DnDParent : 65D9AD58
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 10AA5315
		/// @DnDParent : 01E98865
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "66f39598-6263-4c48-a017-a83a6772dff0"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}