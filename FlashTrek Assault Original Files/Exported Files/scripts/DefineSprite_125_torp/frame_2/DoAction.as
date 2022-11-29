if(mytype == undefined)
{
   mytype = 1;
}
_X = _X - 10;
if(_X < 0)
{
   removeMovieClip("");
}
gotoAndPlay(mytype);
