if (instance_exists(obj_dialog)) exit;
    
nav_right = keyboard_check(ord("D")) || keyboard_check(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);
nav_left = keyboard_check(ord("A")) || keyboard_check(vk_left) || (gamepad_axis_value(0,gp_axislh) < 0);
nav_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || (gamepad_axis_value(0,gp_axislv) < 0);
nav_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || (gamepad_axis_value(0,gp_axislv) > 0);

var _hor = nav_right - nav_left;
var _ver = nav_down - nav_up;

var _len = _hor!=0 || _ver!=0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;
}
else
{ 
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

if (hp <= 0)
{
    game_restart();
}