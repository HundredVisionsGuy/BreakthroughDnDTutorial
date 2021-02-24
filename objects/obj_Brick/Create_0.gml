/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 6E7AEDDA
/// @DnDInput : 6
/// @DnDArgument : "var" "_colour"
/// @DnDArgument : "option" "c_red"
/// @DnDArgument : "option_1" "c_yellow"
/// @DnDArgument : "option_2" "c_blue"
/// @DnDArgument : "option_3" "c_green"
/// @DnDArgument : "option_4" "c_fuchsia"
/// @DnDArgument : "option_5" "c_orange"
_colour = choose(c_red, c_yellow, c_blue, c_green, c_fuchsia, c_orange);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 27800823
/// @DnDArgument : "colour" "_colour"
image_blend = _colour & $ffffff;
image_alpha = (_colour >> 24) / $ff;