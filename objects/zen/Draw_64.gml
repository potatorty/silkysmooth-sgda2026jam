//npc1 dialogue boxes

if (txtbox==1)
    {
        played_sound = false;
       if (!played_sound)
       {
           audio_play_sound(npc_talk, 1, false);
           played_sound = true;
       }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "The mythical scrolls of aracnia spoke of");
    draw_text(24,210, "a glorious day like this! A hero who would");   
    draw_text(24,226, "defy all and bring a swift end to the great");
    draw_text(24,242, "evils of this forgotten land!!");  
    }

else if (txtbox==2)
    {
    played_sound = false;
   if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
        
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Oh, hero! Please! Promise me that"); 
    draw_text(24,210, "you will return unscathed! Promise me that");
    draw_text(24,226, "you won't pass into that beautiful land of");
    draw_text(24,242, "the white weeping flowers!");  
    }
