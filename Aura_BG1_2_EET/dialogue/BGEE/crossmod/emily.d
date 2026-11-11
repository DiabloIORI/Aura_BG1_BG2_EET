// Aura-Emily 1
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",0)~ THEN X3milyB emily-aura0
@0 //~奥拉，你有兄弟姐妹吗？~
DO ~SetGlobal("CrossEmilAura","LOCALS",1)~
== BC0Aura @1 // ~哦，我有。五个。露娜、朱诺、埃利达努斯，还有双胞胎，菲洛和莉塔。~
== X3milyB @2 // ~五个？！你们到底是怎么相处的？~
== BC0Aura @3 // ~嗯，我们也小打小闹过。我姐姐露娜有时会取笑我，可我们总是彼此照应。~
== X3milyB @4 // ~我只有一个，我也不能说我们到了那种能一本正经说“我爱你”的交情。倒不是我不爱他，只是……唉，内斗呗。~
== X3milyB @5 // ~可你有五个，还处得来。我佩服。也许我还有希望。~
== BC0Aura @6 // ~我想，只要你愿意试，把话从心里说开，也许你会发觉一切都咬合上了，就像两个齿轮同步转起来。~
== X3milyB @7 // ~等我回家，也许我会试试。不过我有种感觉，一次谈话解决不了。~
EXIT 

// Aura-Emily 2
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",1)~ THEN X3milyB emily-aura1
@8//~奥拉，你的太阳射手是我见过最了不起的制弓杰作。还有你的箭……那些治疗箭，还有……呃，另外那种，那个词怎么说来着？~
DO ~SetGlobal("CrossEmilAura","LOCALS",2)~
== BC0Aura @9 //~呵呵，你说我的闪电箭？它们被设计成一放开就释放带能的脉冲，让目标磁化……呃，说简单点，就是会把金属物件吸过去。~
== X3milyB @10 //~这些好点子都是谁想出来的？我离得最近的一次也就是……嗯，不动点魔法，我从来没做出过什么原创的东西。我有点嫉妒。~
== BC0Aura @11 //~全靠找到对头的材料和零件。没有它们，我那些设计一件也做不成。~
== X3milyB @12 // ~真的？那也许你可以教我，我也可以给你讲讲箭术的窍门。~
== BC0Aura @13 //~嗯，那会很好……可我不确定，艾米莉。我还是更像个学生，不像老师——我连一次家教都没试过！~
== X3milyB @14 //~哦，给我个机会嘛。我通常是个好学生，只要<CHARNAME>不在上课前把我们拉练到半死就行。~
== BC0Aura @15 // ~你这么想？至少试试也无妨！不过，呃，要是你不介意，我也想从*你*那儿学些东西。我一直在练箭术，能用些指点。~
== X3milyB @16 //~那就说定了。我等不及了！~
EXIT

// Aura-Emily 3
CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3mily",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("CrossEmilAura","LOCALS",2)~ THEN X3milyB emily-aura2
@17 //~嗯，我觉得在自己不小心电了一回、手指上第五块淤青之后……我怕是没什么希望能学会你这门手艺了，奥拉。~
DO ~SetGlobal("CrossEmilAura","LOCALS",3)~
== BC0Aura @18 //~我担心那太难了……我真的试过，艾米莉，可我没多少教人的经验。也许我不适合。~
== X3milyB @19 //~哦，我不这么想。你做这行好些年了，脑子又灵光。我要是以为自己能这么快上手，那才是傻。~
== BC0Aura @20 //~对不起……你一直给我指点箭术，我却什么也回报不了你，这让我更难受。~
== X3milyB @21 //~那没关系！至少这段经历让我们成了更好的朋友。~
== BC0Aura @22 //~哎，好吧……既是这样，那我就——喂！你摸我头干什么？~
== X3milyB @23 //~哦，抱歉……你担心的样子实在太可爱了！~
EXIT