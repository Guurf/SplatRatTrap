// calculate the panning pixels/direction
var _pan = min(PAN_MAX, distance_to_point(oRatTrap.x, oRatTrap.y) / PAN_SCALE)
var _direction = point_direction(follow.x, follow.y, oRatTrap.x, oRatTrap.y)
// move the camera object to the same place as the follow object, accounting for panning and smoothing
x += ((follow.x + lengthdir_x(_pan, _direction)) - x) / SMOOTHING
y += ((follow.y + lengthdir_y(_pan, _direction)) - y) / SMOOTHING

var half_view_width;
var half_view_height;
half_view_width = default_view_width / 2
half_view_height = default_view_height / 2

// set the cameras view position
camera_set_view_pos(camera, x - half_view_width, y - half_view_height)