/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 43A115FC
/// @DnDArgument : "function" "move_bounce_all"
/// @DnDArgument : "arg" "true"
move_bounce_all(true);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 761FA59B
/// @DnDArgument : "soundid" "hit"
/// @DnDSaveInfo : "soundid" "hit"
audio_play_sound(hit, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 427B822F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 63EB3146
/// @DnDArgument : "value" "15"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.player_score"
global.player_score += 15;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28F16C3E
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "12"
if(speed < 12)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 66B79897
	/// @DnDParent : 28F16C3E
	/// @DnDArgument : "speed" ".5"
	/// @DnDArgument : "speed_relative" "1"
	speed += .5;
}