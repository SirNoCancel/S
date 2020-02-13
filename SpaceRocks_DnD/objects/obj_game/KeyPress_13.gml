/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 57BD1974
/// @DnDArgument : "expr" "room"
var l57BD1974_0 = room;
switch(l57BD1974_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 798E81C2
	/// @DnDParent : 57BD1974
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4297A0C7
		/// @DnDParent : 798E81C2
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "c52e54df-bfa1-49bc-bfb9-c9490e8845fa"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6E97FBA3
	/// @DnDParent : 57BD1974
	/// @DnDArgument : "const" "rm_end"
	case rm_end:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 48203FAF
		/// @DnDParent : 6E97FBA3
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 52C801F4
	/// @DnDParent : 57BD1974
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 1DD30AB6
		/// @DnDParent : 52C801F4
		game_restart();
		break;
}