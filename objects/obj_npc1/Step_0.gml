// PUT ON STEP EVENT

if (obj_pc1.key_int1==1) && (distance_to_object(obj_pc1)<=range)
	{
	if (obj_pc1.quest1==0)
		{
		txtbox =1; //talked to the first time
		obj_pc1.quest1=1;
		}
	else if (obj_pc1.quest1==1)
		{
		if (obj_pc1.coins>=coin_goal)
			{
			txtbox = 3; //quest completed
			obj_pc1.quest1=2;
			obj_pc1.coins-=coin_goal;
			}
		else if (obj_pc1.coins<coin_goal)
			{
			txtbox = 2; //second time without completing quest
			}
		}
	}
	
if (txtbox<>0) && (distance_to_object(obj_pc1)>range)
	{
	txtbox = 0;
	}

// END STEP EVENT