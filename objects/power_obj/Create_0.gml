/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 0DDBF473
/// @DnDInput : 2
/// @DnDArgument : "var" "frame"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var frame = choose(0, 1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0B08CC6A
/// @DnDArgument : "value" "frame"
/// @DnDArgument : "instvar" "11"
image_index = frame;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 688C48B9
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 4120089A
/// @DnDArgument : "direction" "270"
direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5F3E9E7A
/// @DnDArgument : "speed" "3"
speed = 3;