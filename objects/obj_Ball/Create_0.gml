/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C281FE6
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "var" "go"
/// @DnDArgument : "var_1" "spd"
/// @DnDArgument : "var_2" "dir"
go = false;
spd = 3;
dir = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0673D105
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "min" "45"
/// @DnDArgument : "max" "135"
dir = (random_range(45, 135));