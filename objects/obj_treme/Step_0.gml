var camx = random_range(-f,f);
var camy = random_range(-f,f);
camera_set_view_pos(view_camera[0],camx, camy);
f*=.9;
if(s != noone){
    audio_play_sound(s,5,false);
    s = noone;
}