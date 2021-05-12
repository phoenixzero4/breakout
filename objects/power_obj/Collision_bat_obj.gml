/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5A22D939
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 56D53863
/// @DnDArgument : "soundid" "power_up"
/// @DnDSaveInfo : "soundid" "power_up"
audio_play_sound(power_up, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7090B485
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7E04FCC1
	/// @DnDApplyTo : {bat_obj}
	/// @DnDParent : 7090B485
	/// @DnDArgument : "value" ".5"
	/// @DnDArgument : "instvar" "15"
	with(bat_obj) {
	image_xscale = .5;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 629A9E2F
	/// @DnDApplyTo : {bat_obj}
	/// @DnDParent : 7090B485
	/// @DnDArgument : "steps" "room_speed*10"
	with(bat_obj) {
	alarm_set(0, room_speed*10);
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 16E15907
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1BED9373
	/// @DnDApplyTo : {bat_obj}
	/// @DnDParent : 16E15907
	/// @DnDArgument : "value" "1.5"
	/// @DnDArgument : "instvar" "15"
	with(bat_obj) {
	image_xscale = 1.5;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0AD0EE00
	/// @DnDApplyTo : {bat_obj}
	/// @DnDParent : 16E15907
	/// @DnDArgument : "steps" "room_speed*10"
	with(bat_obj) {
	alarm_set(0, room_speed*10);
	
	}
}