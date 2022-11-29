if(fade == undefined)
{
   fade = 1;
   _alpha = 0;
}
if(fade == 1)
{
   _alpha = _alpha + 4;
}
if(_alpha > 98)
{
   fade = 0;
}
if(fade == 0)
{
   _alpha = _alpha - 4;
}
_xscale = _xscale + 10;
_yscale = _yscale + 10;
if(_alpha < 0)
{
   removeMovieClip("");
}
