/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1F6D2CD3
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5040BF1E
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4D6FED3A
/// @DnDArgument : "x" "room_width - 8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width - 8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1BA78FD6
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 4CF17920
/// @DnDArgument : "x" "room_width / 2 -( (global.player_lives / 2) * 48 ) "
/// @DnDArgument : "y" "room_height - 48"
/// @DnDArgument : "sprite" "lives_sprite"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "lives_sprite"
var l4CF17920_0 = sprite_get_width(lives_sprite);
var l4CF17920_1 = 0;
for(var l4CF17920_2 = global.player_lives; l4CF17920_2 > 0; --l4CF17920_2) {
	draw_sprite(lives_sprite, 0, room_width / 2 -( (global.player_lives / 2) * 48 )  + l4CF17920_1, room_height - 48);
	l4CF17920_1 += l4CF17920_0;
}