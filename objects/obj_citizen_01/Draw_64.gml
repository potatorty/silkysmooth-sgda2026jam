//npc1 dialogue boxes

if (txtbox==1)
    {
    
   if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,190, "Woah! You look just like your description");
    draw_text(24,206, "in the mythical scrolls of aracnia!!! You");   
    draw_text(24,222, "must help us! Press 'Q' to drag the enemy");
    draw_text(24,238, "to you for easy damage!! They turn");
    draw_text(24,254, "“blue with FEAR!! HAHAHAHAHAHA!!");
    }

else if (txtbox==2)
    {
   if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Help us, oh chosen one! Bring a swift"); 
    draw_text(24,210, "endeth to our enemies!! "); 
    draw_text(24,226,"oH and dont forget to presseth Q");  
    }

