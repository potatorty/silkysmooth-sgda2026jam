//ON DRAW GUI


// pl1 coin counter
if (obj_pc1.coins>=1)
	{
	draw_sprite_stretched(spr_gui_black,0,8,8,100,24);
	draw_text(10,10, "Spider Heads: " +string(obj_pc1.coins));
	}

//quest tracker
if (obj_pc1.quest1==1) && (obj_pc1.coins<obj_npc1.coin_goal)
	{
	draw_sprite_stretched(spr_gui_black,0,8,34,200,24);
	draw_text(10,36,"He needs " +string(obj_npc1.coin_goal) +" heads.");
	}
else if (obj_pc1.quest1==1) && (obj_pc1.coins>=obj_npc1.coin_goal)
	{
	draw_sprite_stretched(spr_gui_black,0,8,34,200,24);
	draw_text(10,36, "Bring him the heads.");
	}


	
//npc1 dialogue boxes

if (obj_npc1.txtbox==1)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,204, "Woe, woe! The plague of spiders hath");
    draw_text(24,220, "Fallenth upon the land! Please! You");
    draw_text(24,236, "must help us! Kill the spider.");
    draw_text(24,252, "want to kill us all! Kill the queen!");
    }

else if (obj_npc1.txtbox==2)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,204, "You have yet to prove yourself!");
    draw_text(24,220, "Defeat the Mother Spider to the right");
    draw_text(24,236, "the spiders to me, then these doors");
    draw_text(24,252, "shall open!");
    }
    
else if (obj_npc1.txtbox==3)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,204, "Yes! You've done it! You truly are");
    draw_text(24,220, "the chosen one! Now go! Go! The doors");
    draw_text(24,236, "will be opened!");
   
    obj_pc1.finalBossActive = 1;
    obj_pc1.fightingBoss = 1;
    }




//END DRAW GUI EVENT