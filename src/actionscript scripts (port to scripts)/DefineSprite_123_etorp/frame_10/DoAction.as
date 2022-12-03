if(timer == undefined)
{
   _X = _X + 10;
}
if(_X > 650)
{
   removeMovieClip("");
}
if(this.hitTest("../station1") and timer == undefined)
{
   attachMovie("explosionmini","explosion" add _root.level,_root.level);
   set("explosion" add _root.level add ":mytarget",0);
   if(_root.extendor == 1)
   {
      set("../station2:hit",8);
   }
   else
   {
      set("../station1:hit",8);
   }
   timer = 2;
   _root.level = _root.level + 1;
}
if(this.hitTest("../station2") and timer == undefined)
{
   attachMovie("explosionmini","explosion" add _root.level,_root.level);
   set("explosion" add _root.level add ":mytarget",0);
   set("../station2:hit",8);
   timer = 2;
   _root.level = _root.level + 1;
}
if(this.hitTest("../station3") and timer == undefined)
{
   attachMovie("explosionmini","explosion" add _root.level,_root.level);
   set("explosion" add _root.level add ":mytarget",0);
   if(_root.extendor == 1)
   {
      set("../station3:hit",8);
   }
   else
   {
      set("../station1:hit",8);
   }
   timer = 2;
   _root.level = _root.level + 1;
}
if(timer != undefined)
{
   timer -= 1;
   if(timer < 1)
   {
      removeMovieClip("");
   }
}
