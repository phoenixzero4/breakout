/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 66D8B57D
/// @DnDArgument : "x" "other.x"
/// @DnDArgument : "y" "other.y"
direction = point_direction(x, y, other.x, other.y);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 6D32BD6D
/// @DnDArgument : "direction" "180"
/// @DnDArgument : "direction_relative" "1"
direction += 180;