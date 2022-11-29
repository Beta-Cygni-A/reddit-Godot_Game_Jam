function displaystage()
{
   attachMovie("stagetext","stagetext",level);
   setProperty("stagetext", _X, 275);
   setProperty("stagetext", _Y, 150);
}
function hit()
{
   shields -= 1;
   updatebars();
}
function dead()
{
   gotoAndPlay(6);
}
function nextlevel()
{
   if(wave <= 0)
   {
      i = 0;
      x = 0;
      while(i <= _root.totenemies)
      {
         if(enemyslot[i] != undefined)
         {
            x += 1;
         }
         i++;
      }
      if(x == 0)
      {
         soundbeep = new Sound(this);
         soundbeep.attachSound("cheers");
         soundbeep.start(0,0);
         gotoAndPlay(5);
      }
   }
}
function createship()
{
   soundbeep = new Sound(this);
   soundbeep.attachSound("build");
   soundbeep.start(0,0);
   attachMovie("ship","ship" add level2,level2);
   setProperty("ship" add level2, _X, random(100) + 325);
   setProperty("ship" add level2, _Y, random(300) + 50);
   set("ship" add level2 add ":mytype",shiptype);
   set("ship" add level2 add ":myname","ship" add level2);
   level2++;
}
function createmine()
{
   soundbeep = new Sound(this);
   soundbeep.attachSound("build");
   soundbeep.start(0,0);
   attachMovie("mine","mine" add level2,level2);
   setProperty("mine" add level2, _X, random(50) + 100);
   setProperty("mine" add level2, _Y, random(300) + 50);
   _root.level2 = _root.level2 + 1;
}
function createphaserpod()
{
   soundbeep = new Sound(this);
   soundbeep.attachSound("build");
   soundbeep.start(0,0);
   attachMovie("phaserpod","phaserpod" add level2,level2);
   setProperty("phaserpod" add level2, _X, random(50) + 200);
   setProperty("phaserpod" add level2, _Y, random(300) + 50);
   set("phaserpod" add level2 add ":myname","phaserpod" add level2);
   _root.level2 = _root.level2 + 1;
}
function createbadguy()
{
   wave -= 1;
   attachMovie("enemy","enemy" add level,level);
   setProperty("enemy" add level, _X, -50);
   setProperty("enemy" add level, _Y, random(300) + 50);
   set("enemy" add level add ":myname","enemy" add level);
   x = random(wavelevel);
   if(x < 1)
   {
      enemytype = 2;
   }
   if(x >= 1 and x < 3)
   {
      enemytype = 4;
   }
   if(x >= 6 and x < 9)
   {
      enemytype = 6;
   }
   if(x >= 9 and x < 12)
   {
      enemytype = 8;
   }
   if(x >= 12 and x < 13)
   {
      enemytype = 10;
   }
   if(x >= 13 and x < 16)
   {
      enemytype = 12;
   }
   if(x >= 16 and x < 18)
   {
      enemytype = 14;
   }
   if(x >= 18 and x < 21)
   {
      enemytype = 16;
   }
   if(x >= 21 and x < 24)
   {
      enemytype = 18;
   }
   if(x >= 24 and x < 100)
   {
      enemytype = 20;
   }
   set("enemy" add level add ":mytype",enemytype);
   i = 0;
   while(i <= _root.totenemies)
   {
      if(enemyslot[i] == undefined)
      {
         enemyslot[i] = "enemy" add level;
         set("enemy" add level add ":myslot",i);
         i = 999;
         break;
      }
      i++;
   }
   _root.level = _root.level + 1;
}
function enemyfire()
{
   attachMovie("etorp","etorp" add level,level);
   setProperty("etorp" add level, _X, getProperty(target, _X));
   setProperty("etorp" add level, _Y, getProperty(target, _Y));
   set("etorp" add level add ":mytype",firetype);
   _root.level = _root.level + 1;
}
function firephaser()
{
   attachMovie("phaser","phaser" add level,level);
   set("phaser" add level add ":mytarget",target);
   set("phaser" add level add ":myorigin",myorigin);
   level++;
   if(myorigin == "station2")
   {
      phaser -= 1;
      updatebars();
   }
   target = undefined;
}
function firetractor()
{
   attachMovie("tractor","tractor" add level,level);
   set("tractor" add level add ":mytarget",target);
   set("tractor" add level add ":myorigin",myorigin);
   level++;
   target = undefined;
}
function updatebars()
{
   setProperty("phaserbar", _xscale, phaser / totphaser * 100);
   set("phaserbar:mytype",1);
   phasernum = "(" + phaser + ")";
   setProperty("shieldsbar", _xscale, shields / totshields * 100);
   shieldsnum = "(" + shields + "/" + totshields + ")";
   setProperty("wave", _xscale, wave / totwave * 100);
}
function rebuild1()
{
   s1 = 1;
   set("station1:myenergy",100);
}
function rebuild2()
{
   s2 = 1;
   set("station3:myenergy",100);
}
function fireassimilate()
{
   attachMovie("assimilate","assimilate" add level,level);
   set("assimilate" add level add ":mytarget",target);
   set("assimilate" add level add ":myorigin",myorigin);
   level++;
   target = undefined;
}
stop();
soundbeep = new Sound(this);
soundbeep.attachSound("music");
soundbeep.start(0,99);
totwave = 75;
wave = 75;
if(phaserpower == 1)
{
   phasertype = "Type X";
}
if(phaserpower == 3)
{
   phasertype = "Plasma";
}
if(phaserpower == 8)
{
   phasertype = "Pulse";
}
if(phaserpower == 10)
{
   phasertype = "Lance";
}
enemyslot = new Array();
shields = totshields;
phaser = totphaser;
totenemies = 50;
Mouse.hide();
attachMovie("target","target",99999999);
level = 1;
cursor = 1;
displaystage();
