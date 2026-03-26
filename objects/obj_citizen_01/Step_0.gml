// PUT ON STEP EVENT

if (obj_pc1.key_int1==1) && (distance_to_object(obj_pc1)<=range)
	{
	if (advice==0){
        txtbox =1; //talked to the first time
        advice=1;
    } 
    else{
        txtbox = 2;
    }
		
    }
	
if (txtbox<>0) && (distance_to_object(obj_pc1)>range)
	{
	txtbox = 0;
	}

// END STEP EVENT
