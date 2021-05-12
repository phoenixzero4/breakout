/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1524B17D
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 1D822255
	/// @DnDParent : 1524B17D
	/// @DnDArgument : "direction" "135,90,45"
	direction = choose(135,90,45);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 26C4C8B4
	/// @DnDParent : 1524B17D
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CA71A1C
	/// @DnDParent : 1524B17D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;
}