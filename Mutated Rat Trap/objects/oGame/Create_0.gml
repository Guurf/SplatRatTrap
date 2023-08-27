draw_set_font(fGame);
randomize();

global.score = 0;
global.corruption = 0;

bgSprite = 0;

demo = 0;

global.numberFont = font_add_sprite(sNumbers, ord("0"), true, -1);


powerInterval = 1200;
powerTimer = powerInterval;