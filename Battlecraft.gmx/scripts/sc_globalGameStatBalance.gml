
///This script containts the information for all the balance

/*
        HULL DATA
        
        
        arg1 = HULL NAME
        arg2 = MAX HP
        arg3 = ROTATION ACCELERATION
        arg4 = ROTATION LIMIT
        arg5 = SPEED ACCELERATION
        arg6 = SPEED ACCELERATION LIMIT
        arg7 = TREE IMPACT SPEED REDUCTION
        arg8 = BOOST DECREASE
        arg9 = WEIGHT LIMIT
        
        
        WEAPON DATA
        arg1 = WEAPON NAME
        arg2 = REALOAD TIME
        arg3 = PLAYER KNOCKBACK WHEN FIRING GUN
        arg4 = ENEMY KNOCKBACK WHEN HIT WITH GUN
        ar5 = DAMAGE 
        
*/



///HULLS
sc_lobbySetStats(0,"Featherlight" ,75,1,10,0.08,13,0.15, 0.75,100);
sc_lobbySetStats(1,"Light",100,0.25,7,0.1,8,0.1,0.5,125);
sc_lobbySetStats(2,"Medium",100,0.25,7,0.06,8,0.1,0.5,125);
sc_lobbySetStats(3,"Heavy",100,0.25,7,0.06,8,0.1,0.5,125);
sc_lobbySetStats(4,"Massive",100,0.25,7,0.06,8,0.1,0.5,125);
    
///WEAPONS
sc_lobbySetStats(5, "Machinegun", room_speed*1, 0.5, 3,1, -1000,-1000,-1000,-1000);
sc_lobbySetStats(6, "Shotgun", 60, 4, -1000,-1000,-1000,-1000,-1000,-1000);
