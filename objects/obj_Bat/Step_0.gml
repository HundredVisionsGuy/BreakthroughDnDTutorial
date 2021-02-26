/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 670BCCD7
/// @DnDArgument : "var" "_bat_x"
/// @DnDArgument : "value" "x"
var _bat_x = x;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5D6048A2
/// @DnDApplyTo : {obj_Ball}
with(obj_Ball) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DF77804
	/// @DnDParent : 5D6048A2
	/// @DnDArgument : "var" "go"
	/// @DnDArgument : "value" "false"
	if(go == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51269DF6
		/// @DnDParent : 1DF77804
		/// @DnDArgument : "expr" "_bat_x"
		/// @DnDArgument : "var" "x"
		x = _bat_x;
	}
}