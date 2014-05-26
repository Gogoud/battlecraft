if(VAR_UPDATE_TURN > ds_grid_height(connections)-1)
{
    VAR_UPDATE_TURN = 0;
}
else
{
    if(string(ds_grid_get(connections,0,VAR_UPDATE_TURN+1)) != string(-1000))
    {
        VAR_UPDATE_TURN++;
    }
    else
    {
        VAR_UPDATE_TURN = 0;
    }
}
VAR_UPDATE_USERNAME = ds_grid_get(connections, 0, VAR_UPDATE_TURN);
