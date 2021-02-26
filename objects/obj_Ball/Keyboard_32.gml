/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17A51B3C
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A319C8F
	/// @DnDParent : 17A51B3C
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 0BFED99D
	/// @DnDParent : 17A51B3C
	/// @DnDArgument : "direction" "dir"
	direction = dir;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 22DE6A5D
	/// @DnDParent : 17A51B3C
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 617E6DF0
	/// @DnDParent : 17A51B3C
	/// @DnDArgument : "soundid" "snd_Click"
	/// @DnDSaveInfo : "soundid" "snd_Click"
	audio_play_sound(snd_Click, 0, 0);
}