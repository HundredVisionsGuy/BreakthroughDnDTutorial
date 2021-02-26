/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44680FC0
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "xoffset + spd"
if(x > xoffset + spd)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35167ED8
	/// @DnDParent : 44680FC0
	/// @DnDArgument : "expr" "-spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -spd;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4DB91554
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F4A304A
	/// @DnDParent : 4DB91554
	/// @DnDArgument : "expr" "xoffset"
	/// @DnDArgument : "var" "x"
	x = xoffset;
}