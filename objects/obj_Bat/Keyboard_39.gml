/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F4BC718
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_width - xoffset - spd"
if(x < room_width - xoffset - spd)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50F332D7
	/// @DnDParent : 2F4BC718
	/// @DnDArgument : "expr" "spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += spd;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1B238379
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5973FE95
	/// @DnDParent : 1B238379
	/// @DnDArgument : "expr" "room_width - xoffset"
	/// @DnDArgument : "var" "x"
	x = room_width - xoffset;
}