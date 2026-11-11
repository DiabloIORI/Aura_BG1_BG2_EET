CHAIN IF WEIGHT #-1 ~Global("C0AuraYxDrawing","GLOBAL",1)~ THEN C0AURA2J AURA-YVETTE-DRAWING
~<CHARNAME>，你又跟画里那位女士说话了？~ [C0BLANK]
DO ~SetGlobal("C0AuraYxDrawing","GLOBAL",2)~
END
++ ~没错。~ + AURA-YVETTE-DRAWING-1
++ ~少管闲事。~ + AURA-YVETTE-DRAWING-0

CHAIN C0AURA2J AURA-YVETTE-DRAWING-0
~哦，对。我不该探问别人的情事，是吧？~
EXIT

CHAIN C0AURA2J AURA-YVETTE-DRAWING-1
~哦，我其实有点羡慕……我从没见过会自己动的画像。~
= ~你觉得她真的曾经是个活人吗？~
END
++ ~我想是。她太……真实了，不是魔法能解释得过去的。~ + AURA-YVETTE-DRAWING-2
++ ~我不太确定。那真要紧吗？~ + AURA-YVETTE-DRAWING-2

CHAIN C0AURA2J AURA-YVETTE-DRAWING-2
~我想你说得对。不管怎样，她现在看着活得挺好。~
= ~我在想……你觉得她也会跟我说话吗，<CHARNAME>？~
END
++ ~她也许会。不过我想她这会儿太累了。~ EXIT
++ ~你别插嘴。~ + AURA-YVETTE-DRAWING-0

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvette","GLOBAL",0)~ THEN YXYVEB banter1
~你的穿着风格真迷人，奥拉。我甚至要说，你是我见过最可人的侏儒女士之一。~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvette","GLOBAL",1)~
== BC0AURA2 ~嘿嘿，你这么觉得？我总想跟上时髦，可常担心别人觉得我虚荣。~
== YXYVEB ~我觉得有一种能定义你的样子很可贵。再说，你这么用功，谁也没法说你虚荣。~
== BC0AURA2 ~哎，你夸我夸得太过了，伊薇特。我只是在为大家尽力。我有许多事都得靠别人——当然也包括你。~
== YXYVEB ~这下你把话头转到我身上了！我可是在夸你呢。不过被人看重，感觉真好。~
EXIT

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
PartyHasItem("YXY3")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvette","GLOBAL",1)~ THEN BC0AURA2 banter2
~伊薇特，你的弓是从哪儿得来的？~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvette","GLOBAL",2)~
== YXYVEB ~这个？我……其实不记得了。就我所知，我一直都有它。你觉得它特别吗？~
== BC0AURA2 ~我能看看吗？~
== YXYVEB ~当然。~
== BC0AURA2 ~设计得真美……我不太确定是哪种木料，很可能是柳木或白蜡木……乍看之下跟别的没什么两样，可它附着一道强力的附魔……我在想是不是……~
== YXYVEB ~嗯？你像是突然想到了什么，奥拉。你脸上那种变化，我已经认得出是什么时候出现了。~
== BC0AURA2 ~啊哈哈，是吗？嗯，我刚才只是想，可以给它的设计做些调整。里头的魔法很强，可要是把承载的部分加强，还能更好。~
== YXYVEB ~你能那么做？我不太懂你的意思，不过我想你是在说你能让它更强？~
== BC0AURA2 ~也许……大概能！我跟你保证不会顺手弄坏它，如果你是担心这个的话。~
== YXYVEB ~哦，不，我不会这样怪你的。那要多久？借出去一阵我不介意，可太久不在身边，可能会觉得怪。~
== BC0AURA2 ~只要一天。我不会大改，所以你还回来的时候，它感觉还是同一件东西。就等着惊喜吧！~
DO ~TakePartyItem("YXY3")
DestroyItem("YXY3")
SetGlobalTimer("C0AuraYxYvetteBow","GLOBAL",ONE_DAY)~ EXIT

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
GlobalTimerExpired("C0AuraYxYvetteBow","GLOBAL")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvette","GLOBAL",1)~ THEN BC0AURA2 banter2
~伊薇特！锵——！~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvette","GLOBAL",2)~
== YXYVEB ~这是……我的弓，不是吗？让我惊讶的是，就算改了这些，我还能认出它。~
== BC0AURA2 ~我已经尽量保留它原来的样子，可它现在好得多了。要是你握在手里觉得太不一样，我还可以再改一改……~
== YXYVEB ~不，我很感激，奥拉。我觉得你让它以另一种方式更美了。现在唯一担心的是，我会不会弄坏这些新部件，又不知道怎么修。~
== BC0AURA2 ~别担心！我给你写了一份简化的说明，还配了一小套修理工具和备用零件，以防万一，全在这只可爱的小袋子里！~
== YXYVEB ~这是……是照刺猬的样子做的？太可爱了。~
== BC0AURA2 ~我不久前在市场买它，就是为这个！只是我一直没真用上。要是你喜欢，就当是添的一份礼物吧！~
== YXYVEB ~我当然喜欢！我得想想回赠你什么……~
DO ~GiveItemCreate("C0YXY3","YxYVE",1,0,0)~ EXIT

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvetteToB","GLOBAL",0)~ THEN YXYV25B bantertob
~奥拉，你有空吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvetteToB","GLOBAL",1)~
== BC0AURA2 ~等等，我把最后这点记下来……好了！我听着呢，伊薇特。~
== YXYV25B ~我只是想问问，你有没有什么想要我给的。我受了你这许多，总觉得该回赠点什么。~
== BC0AURA2 ~哦……你不必因为觉得欠我才给我东西。我们的交情不需要这个。~
== YXYV25B ~也许不必，可要是一位亲近的朋友肯收下我能给的东西，我会高兴。~
== BC0AURA2 ~嗯……要不让我在我的日志里给你画一幅速写当纪念？还有……你要是事后在下面写点好听的话，我会更高兴。~
== YXYV25B ~那就是画我，就像这一切开始时的样子？我喜欢。等你画完，我得想好最好的话写给你。~
EXIT