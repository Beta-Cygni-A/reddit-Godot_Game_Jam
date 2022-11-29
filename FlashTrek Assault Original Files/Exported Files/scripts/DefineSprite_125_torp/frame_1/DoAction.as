if(mytype == undefined)
{
   mytype = 1;
   soundbeep = new Sound(this);
   soundbeep.attachSound("torpedo");
   soundbeep.start(0,0);
}
_X = _X - 10;
if(_X < 0)
{
   removeMovieClip("");
}
i = 0;
while(i <= _root.totenemies)
{
   if(this.hitTest("../" add _root.enemyslot[i]) and _root.enemyslot[i] != undefined)
   {
      set("../" add _root.enemyslot[i] add ":hit",1);
      removeMovieClip("");
   }
   i++;
}
