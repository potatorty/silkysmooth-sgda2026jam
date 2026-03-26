//npc1 dialogue boxes

if (txtbox==1)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Woe anyone who enters that wretched");
    draw_text(24,210, "land! There lies a horror unlike any other");   
    draw_text(24,226, "and it takes the sinister form of the dreaded");
    draw_text(24,242, "arachnid!!");  
    }

else if (txtbox==2)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Don't listen to the queen's lies! Woe, woe!"); 
    draw_text(24,210, "She brings nothing but disaster and");
    draw_text(24,226, "reproduces like the spores of a twisted");
    draw_text(24,242, "mushroom! Beware all who enter!");  
    }
