if(timer == undefined)
{
   timer = 5;
}
timer -= 1;
if(timer < 0)
{
   removeMovieClip("");
}
_root.level = _root.level + 1;
targetx = getProperty("../" add mytarget, _X);
targety = getProperty("../" add mytarget, _Y);
if(targetx == undefined)
{
   removeMovieClip("");
}
_X = getProperty("../" add myorigin, _X);
_Y = getProperty("../" add myorigin, _Y);
a = Math.abs(_X - targetx);
b = Math.abs(_Y - targety);
_xscale = Math.sqrt(a * a + b * b);
dx = targetx - _X;
dy = targety - _Y;
dist = Math.sqrt(dx * dx + dy * dy);
angle;
if(dy < 0)
{
   angle = 6.283185307179586 - Math.acos(dx / dist);
}
else
{
   angle = Math.acos(dx / dist);
}
_rotation = angle * 180 / 3.141592653589793;
gotoAndPlay(6);
