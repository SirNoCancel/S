/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7703E1F6
/// @DnDArgument : "expr" "room"
var l7703E1F6_0 = room;
switch(l7703E1F6_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 712ACA06
	/// @DnDParent : 7703E1F6
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2E57DF69
		/// @DnDParent : 712ACA06
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 55CCD29F
		/// @DnDParent : 712ACA06
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 54737F9A
		/// @DnDParent : 712ACA06
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "4ddcd9d6-43f1-43ac-928f-23d653501e94"
		var l54737F9A_0 = sprite_get_width(spr_lives);
		var l54737F9A_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l54737F9A_2 = __dnd_lives; l54737F9A_2 > 0; --l54737F9A_2) {
			draw_sprite(spr_lives, 0, 20 + l54737F9A_1, 40);
			l54737F9A_1 += l54737F9A_0;
		}
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 3D8F9746
		/// @DnDParent : 712ACA06
		/// @DnDArgument : "font" "fnt_text"
		/// @DnDSaveInfo : "font" "664b4b98-eb15-44b9-8b25-6e31fddc01d1"
		draw_set_font(fnt_text);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7A798B79
	/// @DnDParent : 7703E1F6
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2756825A
		/// @DnDParent : 7A798B79
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 62A60DBC
		/// @DnDParent : 7A798B79
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 702C2BA6
		/// @DnDParent : 7A798B79
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1000 points to win!""
		draw_text(250, 200, string("Score 1000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 561B42BB
		/// @DnDParent : 7A798B79
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with UP/LEFT/RIGHT/DOWN arrow keys!""
		draw_text(250, 230, string("Move with UP/LEFT/RIGHT/DOWN arrow keys!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4473E603
		/// @DnDParent : 7A798B79
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press Space to shoot!""
		draw_text(250, 260, string("Press Space to shoot!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1052747E
		/// @DnDParent : 7A798B79
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START <<""
		draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 08338674
	/// @DnDParent : 7703E1F6
	/// @DnDArgument : "const" "rm_end"
	case rm_end:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 46F8F43E
		/// @DnDParent : 08338674
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 52F0DCC2
		/// @DnDParent : 08338674
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 100, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6CB1B16D
		/// @DnDParent : 08338674
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Final Score: ""
		draw_text(250, 200, string("Final Score: ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 668EC95E
		/// @DnDParent : 08338674
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART << ""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART << ") + "");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 12B7F8FB
	/// @DnDParent : 7703E1F6
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 03127A8D
		/// @DnDParent : 12B7F8FB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 65259A24
		/// @DnDParent : 12B7F8FB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 100, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1D7F9E6F
		/// @DnDParent : 12B7F8FB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Final Score: ""
		draw_text(250, 200, string("Final Score: ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5915C4BB
		/// @DnDParent : 12B7F8FB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART << ""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART << ") + "");
		break;
}