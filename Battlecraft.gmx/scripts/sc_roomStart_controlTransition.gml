with(all)
{
  if(FLAG_bounce)
  {
  
        if(y >= ystart-128)
        {
            vspeed = -10;
            FLAG_bounce = false; 
        }
        else
        {
            vspeed++;
        }
        
  }
  
  else
  {
    if(y >= ystart)
    {
      y = ystart;
    }
    else
    {
        vspeed ++;
    }
  }

}
