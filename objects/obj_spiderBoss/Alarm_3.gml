//Bite attack
image_blend = c_white; //reset to white

if(hp <= 0)
{
    // Delete the layer named "Layer_Name"
	finalBossActive = 1;
	fightingBoss = 1;
    layer_destroy("Boss_Sensor_Range");
	layer_destroy("BossDoor");
	instance_destroy();
    obj_pc1.add_xp(xp_value);
}
