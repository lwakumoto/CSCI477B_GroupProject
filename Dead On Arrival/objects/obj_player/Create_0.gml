/// @description Insert description here
// You can write your code in this editor


#region // create and initialize player weapon
player_weapon = instance_create_layer(x,y,"Instances",obj_player_weapon)
player_weapon.owner = id
weapon_inventory = ds_list_create()

ds_list_add(weapon_inventory,weapon.DEAGLE)

//ds_list_add(weapon_inventory,weapon.DEAGLE,weapon.STONER,weapon.G3A1,weapon.INTERVENTION,weapon.MK18,weapon.MP5K,weapon.SPAS)

//weapon_inventory = [weapon.DEAGLE, weapon.MK18, weapon.G3A1, weapon.SPAS, weapon.MP5K,weapon.INTERVENTION, weapon.STONER]
current_weapon = 0

with (player_weapon){
	scr_change_weapon(other.weapon_inventory[| other.current_weapon])
}
#endregion

max_hp = 100
curr_hp = max_hp
regen_health_rate = 1 // health regenerated per second

player_spd = 5