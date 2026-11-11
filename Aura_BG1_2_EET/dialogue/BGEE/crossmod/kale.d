// Aura-Kale 1
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossAuraKale","LOCALS",0)~ THEN X3KaleB KaleAuraBanter1
@0 // ~那——么——说。你有姐姐吗？~
DO ~SetGlobal("CrossAuraKale","LOCALS",1)~
== BC0Aura @1 // ~我？有，我有两个。朱诺和露娜。~
== X3KaleB @2 // ~她们都像你这么可爱，还是你格外受福？~
== BC0Aura @3 // ~哦，露娜可不愿听你这么说。大家一直说她是家里最漂亮的。给我美容建议的就是她。~
== X3KaleB @4 // ~她干得挺不错。诶，你想不想听听我用绑在靴子上的那把刀干掉三个食人魔法师那回？~
== BC0Aura @5 // ~那个故事你讲过了，卡莱。~
== X3KaleB @6 // ~那回我跳到翼龙的背上，一拳把它打翻呢？~
== BC0Aura @7 // ~对，那也是。我祖母也干过类似的事，只是没那么爱挥拳头。~
== X3KaleB @8 // ~嗯。我想我没跟你讲过有一次我——~
== BC0Aura @9 // ~你打个喷嚏喷到石化蜥蜴身上，闭着眼把它放倒了？那真好笑。~
== X3KaleB @10 // ~该死。你记性太尖了。我快没故事能拿来讨你欢心了。~
EXIT 

// Aura-Kale 2
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Kale",CD_STATE_NOTVALID)
Global("CrossAuraKale","LOCALS",1)~ THEN X3KaleB KaleAuraBanter2
@11 // ~嘿，奥拉。那你另一个姐姐呢？你还没跟我讲过她。~
DO ~SetGlobal("CrossAuraKale","LOCALS",2)~
== BC0Aura @12 // ~朱诺？她是你能有的最好的大姐。又强壮，又体贴。~
== X3KaleB @13 // ~听着就是最好的那种姑娘。我想找机会去打个招呼。也许带些花。~
== BC0Aura @14 // ~卡莱，我觉得你不知道自己在说什么……我不确定她会喜欢你这种幽默。~
== X3KaleB @15 // ~哎，来吧。最坏能坏到哪儿去？~
== BC0Aura @16 // ~有那么一回，一个本地匠人在宴会上喝多了，来找我和露娜的麻烦。朱诺脸上一点没动，可她只是拿起弓，呃，射中了他的……屁股。~
== X3KaleB @17 // ~哎哟。~
== BC0Aura @18 // ~是。你要是说了什么她不爱听的话，我可不乐意看她能做出什么来。~
== X3KaleB @19 // ~这在我这儿，要么是过不去的坎，要么就是定情的缘。我先等着，看是哪一种。~
EXIT 