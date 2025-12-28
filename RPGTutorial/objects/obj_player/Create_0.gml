move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Col");

gamepad_set_axis_deadzone(0.3, 0.3);

hp = 10;
hp_total = hp;
damage = 1;
charge = 0;

level = 1;
xp = 0;
xp_required = 100;

function add_xp (_xp_gained)
{
    xp += _xp_gained;
    if (xp >= xp_required)
    {
        level++;
        xp -= xp_required;
        xp_required *= 1.4;
        
        hp_total += 5;
        hp = hp_total;
        damage += 0.8;  
        
        create_dialog([
        {
            name: "Congrats",
            msg:
                $"You leveled up! Your new stats are:\nLVL: {level}\nHP: {hp_total}\nDMG: {damage}"
        }
        ])  
    }
}