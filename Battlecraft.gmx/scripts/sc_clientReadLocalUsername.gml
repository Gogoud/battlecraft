ini_open(working_directory + "\localUserData.ini");
//var userName = ini_read_string("user","userName","");
if(ini_read_real("user", "userCount", 1) == 1)
{
    userName = "USER1";
    ini_write_real("user", "userCount", 2);
}
else
{
    userName = "USER2";
    if(ini_read_real("user", "userCount", 1) == 2)
    {
        ini_write_real("user", "userCount", 1);
    }
}
ini_close();
