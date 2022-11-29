_xscale = _xscale + 20;
_yscale = _yscale + 20;
_X = _X - 2;
_alpha = _alpha - 0.5;
if(_alpha < 0)
{
   removeMovieClip("");
}
i = 0;
while(i <= _root.totenemies)
{
   if(this.hitTest("../" add _root.enemyslot[i]) and _root.enemyslot[i] != undefined)
   {
      set("../" add _root.enemyslot[i] add ":hit",1);
   }
   i++;
}
