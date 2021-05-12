/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1F817285
/// @DnDArgument : "var" "chance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "10"
var chance = floor(random_range(0, 10 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12ADD3BE
/// @DnDArgument : "var" "chance"
if(chance == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 33706133
	/// @DnDParent : 12ADD3BE
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "power_obj"
	/// @DnDSaveInfo : "objectid" "power_obj"
	instance_create_layer(x + 0, y + 0, "Instances", power_obj);
}