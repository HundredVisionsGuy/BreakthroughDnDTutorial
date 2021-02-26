/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3F131A31
/// @DnDInput : 8
/// @DnDArgument : "target" "_left"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "target_1" "_top"
/// @DnDArgument : "target_2" "_right"
/// @DnDArgument : "target_3" "_bottom"
/// @DnDArgument : "target_4" "_xoff"
/// @DnDArgument : "target_5" "_yoff"
/// @DnDArgument : "target_6" "_hspd"
/// @DnDArgument : "target_7" "_vspd"
/// @DnDArgument : "instvar" "30"
/// @DnDArgument : "instvar_1" "31"
/// @DnDArgument : "instvar_2" "32"
/// @DnDArgument : "instvar_3" "33"
/// @DnDArgument : "instvar_4" "28"
/// @DnDArgument : "instvar_5" "29"
/// @DnDArgument : "instvar_6" "8"
/// @DnDArgument : "instvar_7" "9"
var _left = bbox_left;
_top = bbox_top;
_right = bbox_right;
_bottom = bbox_bottom;
_xoff = sprite_xoffset;
_yoff = sprite_yoffset;
_hspd = hspeed;
_vspd = vspeed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AF2E9B7
/// @DnDArgument : "var" "_left"
/// @DnDArgument : "op" "3"
if(_left <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 37F1CB72
	/// @DnDInput : 2
	/// @DnDParent : 4AF2E9B7
	/// @DnDArgument : "value" "_hspd * -1"
	/// @DnDArgument : "value_1" "_xoff"
	/// @DnDArgument : "instvar" "4"
	hspeed = _hspd * -1;
	x = _xoff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FD4DE9E
/// @DnDArgument : "var" "_right"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_width"
if(_right >= room_width)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4C9CCB6D
	/// @DnDInput : 2
	/// @DnDParent : 4FD4DE9E
	/// @DnDArgument : "value" "_hspd * -1"
	/// @DnDArgument : "value_1" "room_width - _xoff"
	/// @DnDArgument : "instvar" "4"
	hspeed = _hspd * -1;
	x = room_width - _xoff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2218DDB1
/// @DnDArgument : "var" "_top"
/// @DnDArgument : "op" "3"
if(_top <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 45F94E5B
	/// @DnDInput : 2
	/// @DnDParent : 2218DDB1
	/// @DnDArgument : "value" "_vspd * -1"
	/// @DnDArgument : "value_1" "_yoff"
	/// @DnDArgument : "instvar" "5"
	/// @DnDArgument : "instvar_1" "1"
	vspeed = _vspd * -1;
	y = _yoff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2576CB39
/// @DnDArgument : "var" "_bottom"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "room_height"
if(_bottom >= room_height)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 36568D0D
	/// @DnDParent : 2576CB39
	/// @DnDArgument : "xpos" "xstart"
	/// @DnDArgument : "ypos" "ystart"
	/// @DnDArgument : "objectid" "obj_Ball"
	/// @DnDSaveInfo : "objectid" "obj_Ball"
	instance_create_layer(xstart, ystart, "Instances", obj_Ball);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0C57B8EC
	/// @DnDParent : 2576CB39
	instance_destroy();
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 62625778
/// @DnDArgument : "soundid" "snd_Bounce"
/// @DnDSaveInfo : "soundid" "snd_Bounce"
audio_play_sound(snd_Bounce, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 6D6FEC52
/// @DnDArgument : "value" "2 - random(4)"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "2"
direction += 2 - random(4);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A0E4735
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "12"
if(speed <= 12)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 687CF540
	/// @DnDParent : 1A0E4735
	/// @DnDArgument : "value" "0.1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "3"
	speed += 0.1;
}