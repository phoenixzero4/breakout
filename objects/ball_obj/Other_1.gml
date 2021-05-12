/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50FA8A21
/// @DnDArgument : "var" "bbox_left"
/// @DnDArgument : "op" "1"
if(bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 69B06AD2
	/// @DnDParent : 50FA8A21
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 47DFD326
	/// @DnDInput : 2
	/// @DnDParent : 50FA8A21
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5ED60594
	/// @DnDParent : 50FA8A21
	/// @DnDArgument : "soundid" "bounce"
	/// @DnDSaveInfo : "soundid" "bounce"
	audio_play_sound(bounce, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38AF82A4
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 03EECA8C
	/// @DnDParent : 38AF82A4
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 462D4602
	/// @DnDInput : 2
	/// @DnDParent : 38AF82A4
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5A25EF1D
	/// @DnDParent : 38AF82A4
	/// @DnDArgument : "soundid" "bounce"
	/// @DnDSaveInfo : "soundid" "bounce"
	audio_play_sound(bounce, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16FD8B42
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
if(bbox_top < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1B83D667
	/// @DnDParent : 16FD8B42
	/// @DnDArgument : "speed" "-vspeed"
	/// @DnDArgument : "type" "2"
	vspeed = -vspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 634BCD00
	/// @DnDInput : 2
	/// @DnDParent : 16FD8B42
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 16D54B0B
	/// @DnDParent : 16FD8B42
	/// @DnDArgument : "soundid" "bounce"
	/// @DnDSaveInfo : "soundid" "bounce"
	audio_play_sound(bounce, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 523E07C9
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 09C99B41
	/// @DnDParent : 523E07C9
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52D23B61
	/// @DnDParent : 523E07C9
	instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 29B621BE
	/// @DnDParent : 523E07C9
	/// @DnDArgument : "soundid" "loss"
	/// @DnDSaveInfo : "soundid" "loss"
	audio_play_sound(loss, 0, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45941420
	/// @DnDParent : 523E07C9
	/// @DnDArgument : "var" "global.player_lives"
	/// @DnDArgument : "op" "3"
	if(global.player_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6150C9C2
		/// @DnDApplyTo : {control_obj}
		/// @DnDParent : 45941420
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "game_over"
		with(control_obj) {
		game_over = true;
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60787948
		/// @DnDParent : 45941420
		/// @DnDArgument : "var" "global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.high_score"
		if(global.player_score > global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 6F87C2A7
			/// @DnDParent : 60787948
			/// @DnDArgument : "value" "global.player_score"
			/// @DnDArgument : "var" "global.high_score"
			global.high_score = global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 49CC1021
	/// @DnDParent : 523E07C9
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2D6D282D
		/// @DnDParent : 49CC1021
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "ball_obj"
		/// @DnDSaveInfo : "objectid" "ball_obj"
		instance_create_layer(xstart, ystart, "Instances", ball_obj);
	}
}