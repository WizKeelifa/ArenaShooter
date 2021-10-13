/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4E808670
/// @DnDArgument : "key" "vk_right"
var l4E808670_0;
l4E808670_0 = keyboard_check(vk_right);
if (l4E808670_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75AE16BB
	/// @DnDParent : 4E808670
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 38B78D81
/// @DnDArgument : "key" "vk_left"
var l38B78D81_0;
l38B78D81_0 = keyboard_check(vk_left);
if (l38B78D81_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C366DE1
	/// @DnDParent : 38B78D81
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 065FEE90
/// @DnDArgument : "key" "vk_up"
var l065FEE90_0;
l065FEE90_0 = keyboard_check(vk_up);
if (l065FEE90_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68C0A68E
	/// @DnDParent : 065FEE90
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5EBE9EC2
/// @DnDArgument : "key" "vk_down"
var l5EBE9EC2_0;
l5EBE9EC2_0 = keyboard_check(vk_down);
if (l5EBE9EC2_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B431923
	/// @DnDParent : 5EBE9EC2
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += 4;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4778A3B0
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)"
var dir = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 25D21370
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 2AB6A1B8
var l2AB6A1B8_0;
l2AB6A1B8_0 = mouse_check_button(mb_left);
if (l2AB6A1B8_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F46B83D
	/// @DnDParent : 2AB6A1B8
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 523C7F49
		/// @DnDParent : 6F46B83D
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""BulletsLayer""
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11E263F7
		/// @DnDParent : 6F46B83D
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 3;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3419E109
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;