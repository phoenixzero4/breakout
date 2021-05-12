/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 58D9CE29
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7817FFDC
/// @DnDInput : 5
/// @DnDArgument : "var" "color"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "c_fuchsia"
/// @DnDArgument : "option_1" "c_purple"
/// @DnDArgument : "option_2" "c_aqua"
/// @DnDArgument : "option_3" "c_teal"
/// @DnDArgument : "option_4" "c_blue"
var color = choose(c_fuchsia, c_purple, c_aqua, c_teal, c_blue);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 074562F1
/// @DnDArgument : "value" "color"
/// @DnDArgument : "instvar" "14"
image_blend = color;