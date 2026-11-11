CHAIN IF WEIGHT #-1 ~Global("C0AU01Telescope","C0AU01",1)~ THEN C0AU01TK telescope
~你*不会相信*，用这么大的望远镜能看多远。造它所需的材料很贵，可为了更清晰的视野，完全值得。~
DO ~SetGlobal("C0AU01Telescope","C0AU01",2)~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~比奇迹之殿那台强多了。~ + telescope.1
++ ~我能看看吗？~ + telescope.2
++ ~我不动它。免得，呃，把上面的抛光弄坏。~ EXIT

CHAIN C0AU01TK telescope.1
~是吧？嗯，那台更像是摆设，不太实用，可*这*台，这才是真家伙。~
END
++ ~我能看看吗？~ + telescope.2
++ ~走吧。~ EXIT

CHAIN C0AU01TK telescope.2
~你可以试试，不过我猜你看不到什么。现在不是这个季节的合适时候。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Painting","C0AU01",1)~ THEN C0AU01TK painting
~那些是我自己画的。自从有机会坐下来练上几个小时，我一直在长进。好看吧？~
DO ~SetGlobal("C0AU01Painting","C0AU01",2)~
END
++ ~你有没有想过当职业画家？~ + painting.1
++ ~画得很好。~ + painting.2
++ ~我看够了。~ EXIT

CHAIN C0AU01TK painting.1
~不了。变成工作就没那么有趣了。我画画的时候喜欢慢慢来，放松着画。~
EXIT

CHAIN C0AU01TK painting.2
~哎哟，谢谢。我还只当自己是个业余的，可练得够多，总有一天会掌握水墨画的。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Desk","C0AU01",1)~ THEN C0AU01TK desk
~呀！真丢人。我平时收纳笔记和工具比这整齐，我发誓。只是我在这儿待得还不够久，皮可又不知道怎么好好整理。我早晚会收拾的。~
DO ~SetGlobal("C0AU01Desk","C0AU01",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Shelf","C0AU01",1)~ THEN C0AU01TK shelf
~你喜欢那味道吗，<CHARNAME>？那是那边烧着的香。前些时候我在沃金长廊从一个寿人商人那儿买的。我觉得它能安神。~
DO ~SetGlobal("C0AU01Shelf","C0AU01",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Contraption","C0AU01",1)~ THEN C0AU01TK resonator
~这是詹森牌通灵共振器。这名字不是我编的……你大概也猜得到。~
DO ~SetGlobal("C0AU01Contraption","C0AU01",2)~
END
++ ~它有什么用？~ + resonator.1

CHAIN C0AU01TK resonator.1
~不知道。它不是我的东西，我搬来之前就在这儿了。还积满了灰，像是好些年没人碰过。~
= ~据说它对强大的魔法会有某种反应。可这城里魔法管得那么严，它从来没反应过。我把齿轮和感应器都清理过了，可从没见它动起来。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Clock","C0AU01",1)~ THEN C0AU01TK clock
~哈哈！你注意到了，我很高兴。这是我最自豪的发明之一。它在一天中特定的时段用不同颜色的盐来报时。当然，有点不实用，可挺精巧，是吧？~
DO ~SetGlobal("C0AU01Clock","C0AU01",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Portal","C0AU01",1)~ THEN C0AU01TK portal
~有机会我真得收拾一下。就像我要找什么东西的时候，它总会不见……~
DO ~SetGlobal("C0AU01Portal","C0AU01",2)~
END
++ ~这传送门是你造的吗？~ + portal.1

CHAIN C0AU01TK portal.1
~哦，不……那是詹造的，我想……家里大部分发明都是他做的。我只给它做了点维护。~
== C0AU01TK IF ~IsValidForPartyDialog("JAN")~ THEN ~詹，你当初到底为什么造这个？看样子你造到一半就放弃了。~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~啊，这可是个又长又不幸的故事。你看，我们家萝卜生意兴旺得很，自家那点收成的地方根本不够用了。自然，我断定最简单的解决办法就是造一道跨次元传送门，通往传说中那个蔬菜丰收之界，好扩大我们的生意。可惜，我试着给传送门供能时，蒙面法师会听说了我的计划，把我那块……呃，通过不太合法的手续弄来的传送水晶没收了。不止如此，他们还顺手加了一笔重罚。他们真是太无礼了。~
== C0AU01TK IF ~IsValidForPartyDialog("JAN")~ THEN ~所以，你是想开一个位面口袋，建个萝卜农场。*叹气* 我大概该料到。~
== C0AU01TK ~总之，它现在实在不太有用。说到造魔法传送门，我并不特别在行，就算在行，它也缺个能源。可惜，我本来真想把它调好，送我回兰坦探一次亲。~
EXIT