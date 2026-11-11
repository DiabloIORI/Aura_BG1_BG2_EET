I_C_T X3REB 1 C0AuraX3REB1
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~哦！你好，记录者！~
== X3REB ~奥拉！见到你真高兴。你是来找典籍或手册的吗？我或许知道你想要什么。~
== C0AURA2J ~今天不用了，不过谢谢你。我总能指望你找到我需要的东西。~
END

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Emi1","GLOBAL",0)~ THEN BX3Emi C0AuraEmily1
~诶，奥拉？我能请你帮个小小的忙吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Emi1","GLOBAL",1)~
== BC0AURA2 ~当然！要真是个大忙也行，我不介意。~
== BX3Emi ~谢谢，不过一点点就够。我能试试用你的弓射一箭吗？~
== BC0AURA2 ~用我的太阳射手？呃……那个……~
== BX3Emi ~问得有点太过分了？那就算了。我明白那把弓对你很要紧。~
== BC0AURA2 ~嗯……是，不过我确实信你，艾米莉，所以……只是它不太好用。~
== BX3Emi ~我肯定能弄明白。毕竟你用得那么轻松。我就照寻常的弓那样拿，然后……~
== BX3Emi ~哦，天哪。箭是从这儿放进去的吗？真奇怪。这些肢节弯的方向也完全不一样。这些小轮子又是做什么用的？~
== BC0AURA2 ~那些是……是用来调整……的构造的，不，等等！别那样拉！~
== BX3Emi ~啊！呃……它、它断了。真对不起。~
== BC0AURA2 ~不，零件没坏。我能装回去。不过你没事吧？那轮轴弹起来的时候离你的脸太近了。~
== BX3Emi ~我想我没事。不过这类器械还是该交给行家。*叹气* 我还真想试试用它射一箭……~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Vie1","GLOBAL",0)~ THEN BC0AURA2 C0AuraVienxay1
~维恩赛，你有空吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Vie1","GLOBAL",1)~
== BX3Vie ~只要你别又长篇大论讲些不相干的事……怎么了？~
== BC0AURA2 ~我只是希望你能帮我厘清这段我在译的精灵文里的几处。就……呃，学术用途。大部分我都弄懂了，可这里那里有几处……“faerzress”、“Adoessuour”，还有“leva”……“levarithen”……~
== BX3Vie ~Levari-*thin*。以席尔达林之名，既然我族的言语要从你嘴里出来，至少费点劲别把音读得七零八落。~
== BC0AURA2 ~哎呀。嗯，我明白了。抱歉。这几段你也能帮我吗？我用我最好的茶和烘焙点心补偿你。~
== BX3Vie ~听起来就是件累人的差事。我闲下来更情愿做别的事……唉，算了。别那样看我。你那双大眼睛还真管用，怪吓人的。~
== BC0AURA2 ~谢谢！~
== BX3Vie ~这茶和点心的承诺我可是记住了。还有，要是这份译文将来流传开来，我希望得到应有的署名。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Rec1","GLOBAL",1)~ THEN BX3Reb C0AuraRecorder1
~“哼—哼—哼哼……”~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Rec1","GLOBAL",2)~
== BX3Reb ~“地牢深处已脱身，任凭雨露沾衣襟。”
随后日轮让位给夜，云遮初升月。
比地牢深处更寒，我们围着篝火同卧。
让疲乏的头得以歇息，直到黎明破晓。~
== BC0AURA2 ~记录者，来杯茶吗？我刚在壶里煮好一些，够大家分的。~
== BX3Reb ~哦，你真好心。我这才发觉自己渴得厉害。要是有的话，给我加片柠檬和一匙蜂蜜。~
== BC0AURA2 ~柠檬加蜂蜜，马上来！给你。趁还热乎，我们喝了吧。~
== BX3Reb ~嗯，安科里尔的缬草茶。我太久没喝到了……这股安神的香气真叫人怀念。~
== BC0AURA2 ~哇，你连它是哪儿来的都知道？不过……记录者，你是在兰坦出生的，对吧？那就说得通了。~
== BX3Reb ~确实。我住在风信子田附近，那儿收缬草做茶。风常把那香气吹进我们家里。所以我才说它令人怀念。~
== BC0AURA2 ~你也是安科里尔人？我竟不知道！我们小时候住得那么近。一直没遇见，真是太可惜了！真希望当时能碰上。~
== BX3Reb ~我也这么想，那本会是个可爱的巧合。可你不是年纪小小就去桑巴尔学院求学了？我想我们不会在那儿碰上太久。~
== BC0AURA2 ~这话没错。不过我还是希望早些认识你。~
== BX3Reb ~不过我大概见过你的一位姐妹。我想她当时在灵感圣工堂受训，做见习探求者。是叫露娜吗？紫头发？~
== BC0AURA2 ~嘿嘿，就是她。我记得她从没试过别的颜色。哦……她没，呃，对你无礼吧？~
== BX3Reb ~不，一点也不。我承认她不是最和善的人，可她待人接物的周到，谁也说不出什么。她似乎配得上她的身份。~
== BC0AURA2 ~那……听你这么说就好。我记得她对入教团从来不怎么高兴……倒不是她抱怨过，只是……~
== BX3Reb ~奥拉……要是这是家里的事，你不必跟我说。~
== BC0AURA2 ~谢谢你，记录者。这没什么大不了的。我只是……到现在才想到这件事。~
== BX3Reb ~真抱歉。我不是有意提起不快的往事。~
== BC0AURA2 ~没事。不管怎样，我很高兴我们聊了。知道我们同乡之后，我觉得我们比以前近了。~
== BX3Reb ~嘿嘿，当然。在朋友之间找到这样的渊源，真好。~
== BC0AURA2 ~总之，趁茶还没凉，我们把它喝完吧。我们该多这样待在一起，你不觉得吗？~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Rec2","GLOBAL",0)~ THEN BX3Reb C0AuraRecorder2
~抱歉，奥拉，我有个问题……你祖母是密涅瓦·格利默夏恩，对吧？~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Rec2","GLOBAL",1)~
== BC0AURA2 ~没错。我们是我父亲那一支的亲戚。只是我从没见过她……~
== BX3Reb ~我会问起，是因为我最近有机会重读了一本书。那是她写的，讲她在遥远的霜原、冰风谷的冒险。~
== BC0AURA2 ~哦，那本……哈哈，对。那本我也读过。我父亲书房里有好多本，我母亲后来不得不下令让他别再收了。我想那是他记着她的法子。你觉得那本书怎么样？~
== BX3Reb ~读起来真是惊心动魄。要是那些关于巨蛇、恶魔与白龙的故事都是真的，你祖母一定是位了不起的冒险者。~
== BC0AURA2 ~父亲也是这么跟我说的。她有多爱冒险，脑子就有多灵光。可她几十年没回兰坦了……那本书是八十年前最后一次有她消息。~
== BX3Reb ~八十年……就算对我们这一族来说，分开也太久了。希望她有一天回兰坦。~
== BC0AURA2 ~不过说来好笑，她没给自己的书取名。我至少见过八个不同的书名。就像她的作风……我听人讲过好多她在这种事上多散漫的故事。~
== BX3Reb ~当真？她的性子一定很有意思。我现在更想见到她了。~
== BC0AURA2 ~那我们俩都一样。要是哪天我们谁真找着了她，就告诉另一个。她的故事一定比那本书里的还多！~
== BX3Reb ~我同意。到时我会带着笔和羊皮纸到场，把每个故事都记下来。~
EXIT
