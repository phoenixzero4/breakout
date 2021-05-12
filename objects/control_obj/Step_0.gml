/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 473AE407
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "brick_obj"
/// @DnDSaveInfo : "object" "brick_obj"
var numOfBricks = instance_number(brick_obj);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43A651F9
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3E0F3397
	/// @DnDParent : 43A651F9
	room_goto_next();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B3F861A
/// @DnDArgument : "var" "game_over"
/// @DnDArgument : "value" "true"
if(game_over == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 40A7E9C1
	/// @DnDParent : 0B3F861A
	/// @DnDArgument : "key" "vk_anykey"
	var l40A7E9C1_0;
	l40A7E9C1_0 = keyboard_check_pressed(vk_anykey);
	if (l40A7E9C1_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 075D6500
		/// @DnDParent : 40A7E9C1
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "game_over"
		game_over = false;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2A16D147
		/// @DnDParent : 40A7E9C1
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "global.player_lives"
		global.player_lives = 3;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 767BC094
		/// @DnDParent : 40A7E9C1
		/// @DnDArgument : "var" "global.player_score"
		global.player_score = 0;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 050D3D68
		/// @DnDParent : 40A7E9C1
		/// @DnDArgument : "room" "game_room"
		/// @DnDSaveInfo : "room" "game_room"
		room_goto(game_room);
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 281EC685
		/// @DnDParent : 40A7E9C1
		room_restart();
	}
}