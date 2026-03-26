
//npc1 dialogue boxes

if (txtbox==1)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Howdy! I'm Tim! No one important, but I");
    draw_text(24,210, "do give some great exposition! There are");   
    draw_text(24,226, "rumours of a spider queen! I… of course");
    draw_text(24,242, "don't believe such terrible things! Heh.");  
    }

else if (txtbox==2)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Some say she's as big as a whole tree!"); 
    draw_text(24,210, "But no spider could be that big!!!");
    draw_text(24,226, "Ah, don't listen to Tim! Tim knows nothing");
    draw_text(24,242, "but silly rumours…");  
    }
