//npc1 dialogue boxes

if (txtbox==1)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "Wow! What a day it is out here! The sun");
    draw_text(24,210, "is shining beautifully! The birds are asleep!");   
    draw_text(24,226, "The only thing that’s missing is the lack of");
    draw_text(24,242, "spiders! We need less of those!!");  
    }

else if (txtbox==2)
    {
    if (!played_sound)
   {
       audio_play_sound(npc_talk, 1, false);
       played_sound = true;
   }
    draw_sprite_stretched(spr_guibg_npc1,0,20,200,360,80);
    draw_text(24,194, "You know, I suppose not all spiders are"); 
    draw_text(24,210, "terrible! I mean, look at you! Yellow!");
    draw_text(24,226, "Inconspicuous! Helping your fellow ants!");
    draw_text(24,242, "Hey, wait! Are you secretly an ant?!");  
    }
    
