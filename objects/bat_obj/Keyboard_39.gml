/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59CBFD54
/// @DnDArgument : "var" "x+sprite_xoffset+spd"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_width"
if(x+sprite_xoffset+spd < room_width)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 05F2FC05
	/// @DnDParent : 59CBFD54
	/// @DnDArgument : "x" "spd"
	/// @DnDArgument : "x_relative" "1"
	x += spd;
}