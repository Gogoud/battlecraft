move_towards_point(VAR_target.x, VAR_target.y, VAR_speed);
direction = point_direction(x,y,VAR_target.x, VAR_target.y);
image_angle = direction-90;
VAR_speed += CONST_ACCELERATION;
