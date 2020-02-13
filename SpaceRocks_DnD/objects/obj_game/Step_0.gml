/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7754F188
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 69AE109F
	/// @DnDParent : 7754F188
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score == 1000)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5C7FED20
		/// @DnDParent : 69AE109F
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "f5cf2317-f55a-4e81-a95d-ad13b8ac1d82"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 0BDF0BEF
	/// @DnDParent : 7754F188
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives == 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 71148DFC
		/// @DnDParent : 0BDF0BEF
		/// @DnDArgument : "room" "rm_end"
		/// @DnDSaveInfo : "room" "c765675d-9b12-4733-ab5b-121b5ecbf834"
		room_goto(rm_end);
	}
}