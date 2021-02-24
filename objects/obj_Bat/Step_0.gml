/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 670BCCD7
/// @DnDArgument : "var" "x_bat_x"
/// @DnDArgument : "value" "x"
var x_bat_x = x;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 20DD1B93
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 621E9B69
	/// @DnDParent : 20DD1B93
	/// @DnDArgument : "var" "go"
	/// @DnDArgument : "value" "false"
	if(go == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2673047D
		/// @DnDParent : 621E9B69
		/// @DnDArgument : "expr" "_bat_x"
		/// @DnDArgument : "var" "x"
		x = _bat_x;
	}