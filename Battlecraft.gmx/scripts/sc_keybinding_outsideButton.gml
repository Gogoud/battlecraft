
if(mouse_check_button(mb_left) && !position_meeting(mouse_x,mouse_y, id))
{

    FLAG_waitForInput = false;
    image_index = 0;
    mouse_clear(mb_any);

}
