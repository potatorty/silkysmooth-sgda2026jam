
//npc1 dialogue boxes

if (txtbox==1)
    {
   if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Hello! You're back! While you were gone we");
    draw_text(24,210, "were attacked!!");   
    draw_text(24,226, "You must help us! Kill the spiders.");
    draw_text(24,242, "Keep going right! Rememberto press space!");  
    }

else if (txtbox==2) {
    
   if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Help Us! Keep going right! and remember"); 
    draw_text(24,210, "to press space to attack!!");  
    }
    


//END DRAW GUI EVENT