CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("rh#Isra")
See("rh#Isra")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAura1","GLOBAL",0)~ THEN BC0AURA isra-aura1
~伊斯拉，你抹的是卡林珊樱红吗？那在兰坦也是很流行的妆品。~
DO ~IncrementGlobal("rh#IsraAura1","GLOBAL",1)~
== BRH#ISRA ~是，正是。也许这明摆着是爱虚荣，可它一向是我最喜欢的之一。~
== BC0AURA ~我觉得这颜色衬你的眼睛。我自己试过，可那色对我太深，而且比我用的那种容易蹭花。~
== BRH#ISRA ~说真的，奥拉，我敢说无论如何薰衣草色更衬你……那是东方的产物，要是我没记错？~
== BC0AURA ~是寿人。其实有人跟我说那颜色是兰紫——“兰紫彩”……哦，我大概把音念歪了。不过也不算雅致。是我走金路回来时跟一个商人换的。那会儿我连她的话数到十都费劲。~
== BRH#ISRA ~这颜色够素净，可你衬得起。以你的肤色，我会说那真是挑得毫无瑕疵。~
== BC0AURA ~是吗？我一直以为我只是抹上去，好显得稍微像位淑女。我知道这挺做作，可我改不了！~
== BRH#ISRA ~我可以用许多词来形容你，奥拉，但从不会是“做作”。不过你若想显得更像位淑女，我想我帮得上——你的眉眼本就秀气，不会太难。~
== BC0AURA ~哦，你愿意？我一直不敢问，可……好，当然！~
EXIT

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAura2","GLOBAL",0)~ THEN BRH#ISRA isra-aura2
~兰坦匠人的奇技总让我惊叹不已……我常好奇他们还有什么别的本事。说真的，你们族人选择闭门自守，真是可惜。~
DO ~IncrementGlobal("rh#IsraAura2","GLOBAL",1)~
== BC0AURA ~我希望能不一样……可长老们早就决定，分享我们的知识只会给诸国度添更多冲突。没人愿意担这个责任……我不喜欢这样，可我明白。~
== BRH#ISRA ~可这样的才华若出自你那样纯净的心，也能成就许多好事。~
== BC0AURA ~哎，你让我脸红了，伊斯拉……家乡所有人都一直盼着我有大成就，可一想到我能对世界有那样大的影响，我就难为情。~
== BRH#ISRA ~为更好的世界而努力，没什么可羞的，奥拉；而且我真的相信，那正是你想要的。~
== BC0AURA ~*咯咯笑* 也许你比我自己还了解我。我有时会被自己的心事弄糊涂。谢谢你鼓励我。~
EXIT

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("rh#Isra",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#IsraAura3","GLOBAL",0)~ THEN BRH#ISRA isra-aura3
~奥拉，要是可以……有件小事让我挂心，不过我不确定这问题是否够得体。~
DO ~IncrementGlobal("rh#IsraAura3","GLOBAL",1)~
== BC0AURA ~你问吧，我不介意，伊斯拉。我知道你不是会让别人难受的那种人。~
== BRH#ISRA ~看得出荣华富贵并不怎么吸引你，可……恕我直言，我很好奇是什么驱使你去冒险，而不是过安稳日子。~
== BC0AURA ~我也许继承了我祖母一点流浪的性子。无痕海对岸的世界似乎满是奥秘……我想找到那些在兰坦光靠读书学不到的知识。~
== BRH#ISRA ~我想这没什么不对。只是，你们族里最出色的头脑之一主动选择这样危险的生活，我还是觉得有些不安。~
== BC0AURA ~你这么一说，我确实显得有点不负责任，是吧？~
== BRH#ISRA ~不，我不是那个意——~
== BC0AURA ~没事。我也想过，要是我还没回家、还没把学到的都分享出去就死了会怎样……可我想这就是我的一个弱点吧。~
== BRH#ISRA ~弱点？~
== BC0AURA ~我一有机会就想多学些，无论那有多冒险。有时候我走得太远，一路上也犯些危险的错。只是……我实在受不了成为别人的负担。我本来就不是最强的人，而我最不想要的就是因为学识不足，帮不上任何人。~
== BRH#ISRA ~我……明白了。既然我更了解你了，那再劝你打消念头，就未免不近人情。~
== BC0AURA ~我不介意，伊斯拉。你担心我，是好心，虽然总是要你照顾我，给你添了没完没了的麻烦。~
== BRH#ISRA ~*笑* 一点也不。什么时候需要，我都乐意效劳。~
EXIT