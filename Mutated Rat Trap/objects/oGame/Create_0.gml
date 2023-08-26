draw_set_font(fGame);

global.score = 0;
global.corruption = 0;

bgSprite = 0;

demo = 0;

global.numberFont = font_add_sprite(sNumbers, ord("0"), true, -1);

if !audio_is_playing(sMusic) audio_play_sound(sMusic,1,1);