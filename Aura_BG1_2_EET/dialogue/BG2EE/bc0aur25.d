// Aerie

CHAIN
IF ~InParty("Aerie")
Range("Aerie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieToB1","GLOBAL",0)~ THEN BAERIE25 C0AuraAerieToB1
~奥拉，你心里有什么事吗？你要是想找人听，我在这儿。~ [C0BLANK]
DO ~SetGlobal("C0AuraAerieToB1","GLOBAL",1)~
== BC0AUR25 ~跟你待在一起我总是高兴，艾黎，可是……这怎么听着像你在想办法让我发泄一下？~
== BAERIE25 ~不！嗯……也许吧。我们的冲突越来越可怕、越来越有目的性……可你看着一点也不怕。我只是担心你把一切都憋在心里。~
== BC0AUR25 ~真的，我没有……不过我想，某个时候也许我确实憋过。可我得强到不让大家失望。你不也有同感吗？~
== BAERIE25 ~是的，我有。得到这么大的力量后，反倒让我明白软弱时有多安逸……现在我得考虑自己的责任。怎么帮到所有人……又不在此过程中迷失自己。~
== BC0AUR25 ~只是别让那些担子太重，好吗？朋友该分担重量。现在想想，也许反而是*你*需要一个愿意倾听的耳朵？~
== BAERIE25 ~哈哈！那我们现在真想到一块去了。我没事，真的。有个像你这样的朋友陪着，就已经很愉快了。~
EXIT

// Anomen

CHAIN
IF ~InParty("Anomen")
Range("Anomen",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAnomenToB1","GLOBAL",0)~ THEN BANOME25 C0AuraAnomenToB1
~请别误会，奥拉，可有件事我一直想跟你说，也许现在正是时候。~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomenToB1","GLOBAL",1)~
== BC0AUR25 ~我看起来那么容易动气吗？嘿嘿，我逗你的。你说吧。~
== BANOME25 ~这一套……用迂回的方式对付敌人。暗藏的陷阱、狡猾的造物、没有生命的机械……你从没觉得这些手段……不光彩吗？~
== BC0AUR25 ~那……你觉得我不光彩吗，阿诺门？我只想尽我所能帮忙，而……这是我能做到的最好。~
== BANOME25 ~我绝不会怀疑这点。你纯洁的心意与一定要我们成功的决心，无可争辩。可是……我对这类技艺了解甚少，因此难免质疑。尤其当我见过它们能造成的破坏。~
== BC0AUR25 ~你知道的，若不是必要，我不会动用我最危险的那些本事，阿诺门。我讨厌伤别人，跟……跟任何人该讨厌的程度一样。可我也从没想到我们的战斗会变得这么超出常理，你知道吗？~
== BANOME25 ~哈！这恐怕也是真的。如今有太多事超出我的理解，甚至超出你那些奇迹般的才能……请恕我失言。也许我该像你一样更用功些。有了理解，或许就有了信任。~
== BC0AUR25 ~你要是愿意，我可以帮你！炼金、魔法理论，随你点，我都能教！~
== BANOME25 ~呃……那步子也许太大了。人得先会爬才会走。再说……我可不喜欢被自己弄出的爆炸卷进去的画面。~
EXIT

// Cernd

CHAIN
IF ~InParty("Cernd")
Range("Cernd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraCerndToB1","GLOBAL",0)~ THEN BCERND25 C0AuraCerndToB1
~我钦佩你的成长，奥拉。尽管你曾怀疑自己对冲突的禀赋，你却适应得很好。~ [C0BLANK]
DO ~SetGlobal("C0AuraCerndToB1","GLOBAL",1)~
== BC0AUR25 ~真的？嗯，想想也是，也许你说得对。以前让我害怕的东西，如今几乎都让我眼皮都不眨一下。~
== BCERND ~正是。自然中许多最顽强的植物，只在压力下长得更高。也许你也一样……至少比喻上。~
== BC0AUR25 ~哎哟。你非得拿我的身量说事吗，瑟恩德？~
== BCERND ~我道歉。可我仍坚持这话的道理。~
== BC0AUR25 ~要不是有人教过我不能这么说，我现在就要说：我什么都见过了。“恶魔、巨龙、半神？行啊，怎么不行。我们会熬过去的。”~
== BCERND ~如今这似乎成了常态。我想我可以说，这对我们所有人都是一段学习经历。~
== BCERND ~不过……~
== BC0AUR25 ~嗯？~
== BCERND ~吼。~
== BC0AUR25 ~呀！别——别这样。~
== BCERND ~哈哈！看来有些本能是丢不掉的。在表皮之下，你的本性没变，奥拉。可我并不觉得这有什么错。~
EXIT

// Dorn

CHAIN
IF ~InParty("Dorn")
Range("Dorn",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraDornToB1","GLOBAL",0)~ THEN BDORN25 C0AuraDornToB1
~你体内有力量，丫头，不管你怎么费劲装出相反的样子。~ [C0BLANK]
DO ~SetGlobal("C0AuraDornToB1","GLOBAL",1)~
== BC0AUR25 ~我没装什么，多恩。你说我有力量，也许对，可我更自豪的是我知道该怎么正确使用它。~
== BDORN25 ~我看出来了。你跟自己过不去……你的头脑是致命的武器，可你软弱的心拖住了它。~
== BC0AUR25 ~我更信我的心，而不是我的脑子。比起单纯拥有知识，我更自豪于知识带来的好事。做个好人也比无所不知更重要。~
== BDORN25 ~愚蠢。~
== BC0AUR25 ~你也许永远不会懂，多恩。我愿意相信改变永远不晚，可对你，我连这都不知道。~
EXIT

// Edwin

CHAIN
IF ~InParty("Edwin")
Range("Edwin",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwinToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraEdwinToB1
~能请你帮个忙吗，埃德温？~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwinToB1","GLOBAL",1)~
== BEDWIN25 ~我的帮忙价钱很高，丫头，你该很清楚。快点说，我可以考虑，只要不涉及跟我收藏的任何器物分手。~
== BC0AUR25 ~很快也很简单。你不用给我任何东西，埃德温，可你能在我日志里写点什么吗？哪怕短短几句也行，只要是真心话。~
== BEDWIN25 ~什么？！你别想再从我这儿套走任何魔法秘密，已经给你的够多了。（这么快给这么多太危险！她不可能真像表面这么单纯……）~
== BC0AUR25 ~埃德温，我只想要几句能记住你的话！经历了这么多，分开后我会想念每个人，连你也会。你就不会想我吗？~
== BEDWIN25 ~我——我……啐。我想我可以宽宏大量地从我这尊贵之身赐你几句嘉言。行！把笔和本子给我，让我趁没人注意时快点办完。~
== BC0AUR25 ~你不用写得太复杂，埃德温。哪怕一句简单的“好运”也行，你知道吗？有时候真就这么简单。~
== BEDWIN25 ~不。那不行。我的字句必须像人们对我之伟大所期待的那样有分量、有价值。等我想好合适的临别之言，我会去找你，侏儒。庆幸我愿意为这种琐事分神吧。~
== BC0AUR25 ~谢谢你，埃德温！~
== BEDWIN25 ~（真的像她表面那样毫无心机与野心……不过，也许有时候那样并不算太讨厌。）~
EXIT

// Haer'Dalis

CHAIN
IF ~InParty("Haerdalis")
Range("Haerdalis",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerdalisToB1","GLOBAL",0)~ THEN BHAERD25 C0AuraHaerdalisToB1
~又一份记录，可爱的小朱雀？我认得你眼里的那道光——你无疑在另一项开创性的发明或发现上有了进展。~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerdalisToB1","GLOBAL",1)~
== BC0AUR25 ~哦，哈哈……我变得这么好猜了吗？~
== BHAERD25 ~这令人振奋，却又悲凉。假以时日，连你了不起的知识与造物也会成为记忆，注定消逝。~
== BC0AUR25 ~也许我的会，可总有人准备接手我的成果。我只是个先行者。真正了不起的发现会远远超出我的时代。~
== BHAERD25 ~啊，朱雀。也许你的行当跟我的没那么不同。为后来有志的艺人立下标准，是每个剧作家的梦想。也许命运从多元宇宙中夺走了一位剧作大师，把她塑成了一个甜美的小侏儒。~
== BC0AUR25 ~哈哈！在另一种人生里，我倒不介意当个剧作家，海尔达利。可你知道，我前面还有很长的命。在熵来临之前，总有时间试试新东西。~
EXIT

// Hexxat

CHAIN
IF ~InParty("Hexxat")
Range("Hexxat",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHexxatToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraHexxatToB1
~你从不觉得累吗，赫克萨特？~ [C0BLANK]
DO ~SetGlobal("C0AuraHexxatToB1","GLOBAL",1)~
== BHEXXA25 ~从不。~
== BC0AUR25 ~我不是说你的身体。可这样活着……一成不变，每种感觉都变得死寂，能值得多久？~
== BHEXXA25 ~那我是不是该给自己钉根木桩？我想很多人会乐意看到，包括你。~
== BC0AUR25 ~不，我——~
== BHEXXA25 ~也许这话过分了。我知道你是好意——你做不到不是好意。可我以为你该懂得，别去谈你无法理解的事。~
== BC0AUR25 ~可是——好吧。我确实不懂。我宁愿死，也不要落到你这样的境地。对不起，赫克萨特。~
== BHEXXA25 ~你没什么可道歉的。只是别再提了。~
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraImoenToB1
~你没事吧，爱蒙？~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",1)~
== BIMOEN25 ~怎么？我刚才看着很低落吗？抱歉，我只是在想事情。~
== BC0AUR25 ~就是这样。你平时不会这样出神，至少从我认识你以来没有。很难不担心。~
== BIMOEN25 ~我没事。你要担心谁的话——倒不是我不喜欢看你那张可爱的脸一脸担忧地看着我——<CHARNAME>比我更糟。~
== BIMOEN25 IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~再说，我肯定她现在比任何时候都更需要你。你能帮我的，就是尽可能照顾好她。~
== BC0AUR25 IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~我在意<CHARNAME>，可我知道，你若也好好的，她会更高兴。~
== BC0AUR25 ~也许我逼得太紧了……可我没法忘记你也是这整摊浑水里的一份子。所有冲着<CHARNAME>来的人，也冲着你来。谁都会焦虑，甚至恐惧。要是我，我几乎都睡不着。~
== BIMOEN25 ~我……~
== BIMOEN25 ~我不撒谎，这不容易。我近来变得太多，连自己都跟不上，而且不全是自愿的。可我现在不一样了。我在事情里扮演一角，而不只是受害者，最让我安心的是我能带来改变。~
== BC0AUR25 ~你确定？因为要是我觉得你在硬撑，我就要……就要……~
== BIMOEN25 ~唉，算了。我们都知道你心太软，狠不起来。~
== BC0AUR25 ~*叹气* 是，我心软。可你晚上盯着法术书看太久的时候，我照样能把你弄睡着，你知道吗？为你好。~
== BIMOEN25 ~你——！你知道吗，奥拉，要不是你亮得像一束阳光，你绝对会是我见过最吓人的人之一。~
== BIMOEN25 IF ~!Global("ImoenRomanceActive","GLOBAL",2) !Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~可实际上呢？你就是单纯地讨人喜欢。~
== BC0AUR25 IF ~!Global("ImoenRomanceActive","GLOBAL",2) !Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~哦，拜托……说这种话可拦不住我去做该做的事，你知道吗……大概吧。~
EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!Global("ImoenRomanceActive","GLOBAL",2)
!Global("FWImoenRomanceActive","GLOBAL",1)
!Global("FWImoenRomanceActive","GLOBAL",2)
OR(2)
!Global("C0AuraMatch","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",3)
Global("C0AuraImoenToB1","GLOBAL",1)~ THEN BC0AUR25 C0AuraImoenToB2
~嘿，呃……爱蒙……~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",2)~
== BIMOEN25 ~怎么了？~
== BC0AUR25 ~我们离终点已经很近了，对吧？很快就都结束了。~
== BIMOEN25 ~这听着有点阴沉，对吧？我宁愿想成是我们主动打上门去，让上面那位看看我们是什么成色，然后再赶回来喝茶。~
== BC0AUR25 ~好吧，那听着好些。总之……呃……~
== BIMOEN25 ~“总之”……然后呢？~
== BC0AUR25 ~如果这一切有个圆满结局，我们也在场看到……那就该是下一次冒险的时候了，对吧？~
== BIMOEN25 ~当然。会很好玩。没这次这么惊天动地，可我们会一直找，直到找到一段配得上好歌的。中间也许还能来个不错的海滨休假。我接受提议。~
== BC0AUR25 ~嗯？你是说……我们会一直在一起？~
== BIMOEN25 ~当然会，傻瓜。怎么，你以为我们完事之后就抱一抱、说声再见？得了吧。你就不会想我？~
== BC0AUR25 ~我——会，我绝对会！可是……你就……这么相信我会想留下？~
== BIMOEN25 ~这不正是你刚才想说的吗？~
== BC0AUR25 ~……~
== BC0AUR25 ~这场谈话完全不是我预想的结局。~
== BIMOEN25 ~你在笑……还在遮掩。真可爱。我就希望能逼出你这么个反应。~
== BC0AUR25 ~呃……我几乎后悔问你任何事了……可我做不到……我还是找个洞永远躲起来算了。~
EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenToB1","GLOBAL",2)~ THEN BIMOEN25 C0AuraImoenToB3
~那……你想着去哪儿，嗯？~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",3)~
== BC0AUR25 ~什——我想什么去哪儿？~
== BIMOEN25 ~想我们之后去哪儿啊，废话。别告诉我你一直在假装忘了我们谈过这个？~
== BC0AUR25 ~没——没有……你这么拿它逗我，我想我也忘不了。~
== BIMOEN25 ~我想往北走。也许我们能在安纳罗克挖出些古代遗物。哦，或者去看冰原极北的雪！那会很妙。~
== BC0AUR25 ~嗯……也许我还能找到些我祖母旅行的史料……*咳*！现在你也让我做起白日梦了。~
== BIMOEN25 ~哦，得了吧。你知道你喜欢想这些。就我们两个，在费伦来一趟美好漫长的假期……甚至更远。~
== BC0AUR25 ~你不觉得我们该想想怎么保证*这次*冒险不是我们最后一次吗？~
== BIMOEN25 ~无——聊。你知道我们会没事的。~
== BC0AUR25 ~其实我不知道。能跟你在一起，我很快乐，爱蒙，可自从我们谈起这个，我只越来越担心我们永远没机会看到那些……别忘了，你也掺在里面。你跟<CHARNAME>一样是巴尔之子。~
== BIMOEN25 ~那……不吓你吧？~
== BC0AUR25 ~不！对不起，爱蒙，我不是那个意思——~
== BIMOEN25 ~我懂，真的懂。可我不会就这么突然消失在你眼前，我保证。我会拼命打，确保自己能有未来。而你在，让我更有理由这么做。~
== BC0AUR25 ~爱蒙……~
== BIMOEN25 ~不过既然你提醒了我，也许现在正是把一些事说清的最好时候……嘿，过来一下，好吗？~
== BC0AUR25 ~好……怎么——~
== BIMOEN25 ~……啵。~
== BC0AUR25 ~嘿——嘿……我们还——~
== BIMOEN25 ~谁知道留到以后会发生什么？再说，我能趁机抓到你那完美的表情。哈哈！~
== BC0AUR25 ~哼……我想这就是我今后的日子了，对吧？~
== BIMOEN25 ~没错。~
== BC0AUR25 ~好吧。反正这基本是我自找的，对吧……~
== BIMOEN25 ~绝对。嘿……~
== BC0AUR25 ~……嘿嘿。~
DO ~SetGlobal("C0AuraImoenToBFlirt","GLOBAL",1)~ EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenToB1","GLOBAL",4)~ THEN BC0AUR25 C0AuraImoenToB4
~好，走吧。~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenToB1","GLOBAL",5)~
== BIMOEN25 ~嗯。全有或全无，就在我那位亲爱的、可怕的、死去的父亲宝座上。我相信会很精彩。~
== BC0AUR25 ~是啊……~
== BIMOEN25 ~嘿，记住，待在后头掩护我。只要我脑子里还有法术，你就不用怕。~
== BC0AUR25 ~谁说我怕了？我更担心得扭头确认你没事，你知道吗？我们拼命的时候，别干蠢事让我担心你！~
== BIMOEN25 ~我也爱你。~
EXIT

// Jaheira

CHAIN
IF ~InParty("Jaheira")
Range("Jaheira",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheiraToB1","GLOBAL",0)~ THEN BJAHEI25 C0AuraJaheiraToB1
~能给我一点时间吗，奥拉？~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheiraToB1","GLOBAL",1)~
== BC0AUR25 ~当然，贾希拉。别把我当外人。~
== BJAHEI25 ~我自己反复想过该不该说这句话。可为了你，也为了我们的友谊，我觉得有件事必须提醒你。~
== BC0AUR25 ~好吧……用这种沉重的话开头，不过我想你从来不是个拐弯抹角的人。~
== BJAHEI25 ~这段旅途中，我们面对过的敌人，也许本不是凡人该面对的。而在胜利中，我们变得强大，而有力量就会引来其他势力的注意。~
== BJAHEI25 ~如今所有目光都盯着<CHARNAME>，可将来，我们每个人都可能被视为潜在的威胁。对你，我比谁都担心这一点。~
== BC0AUR25 ~*我*会被当成危险人物？你不是……在拿我开玩笑吧，贾希拉？~
== BJAHEI25 ~这种事我从不开玩笑。就影响诸国度的人而言……你也许并不比<CHARNAME><PRO_HIMHER>本人低多少。~
== BJAHEI25 ~在许多人眼里，你可能被视为头等威胁。对心怀恶意的人，肯定是……可等你的潜力完全展现，连竖琴手也可能觉得该把你置于监视之下。~
== BC0AUR25 ~可是……若真是这样，你为什么要告诉我？~
== BJAHEI25 ~我说过，我们是朋友。我把这份责任放在一切之上。至少我可以保证，我会尽力让人看到你是良善之力。认识你的人都会这么辩。~
EXIT

// Jan

CHAIN
IF ~InParty("Jan")
Range("Jan",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJanToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraJanToB1
~*抽鼻子* 哦，混杂芜菁的那股味儿，我在哪儿都认得出。这次你又在调什么，扬？~ [C0BLANK]
DO ~SetGlobal("C0AuraJanToB1","GLOBAL",1)~
== BJAN25 ~被你发现了？嘿，而且时机也正好，奥拉。其实我正要给这个做最后的润色，就去找你呢。~
== BC0AUR25 ~这是给我的？我，呃，想问这是什么，可我该先谢谢你，扬。~
== BJAN25 ~不用谢。凭我们一块钻地洞的交情、加上你陪着我家人，如今我们简直算血亲了。我注意到你的皮肤有段日子没以往的亮泽了，你知道。我敢说压力和糟糕的气候是罪魁祸首。~
== BC0AUR25 ~我只是……真的很累，扬。这不算奇怪。等我们不为命拼命了，我有时间照顾自己。~
== BJAN25 ~不不，这可不行。我不能眼看着你这样的姑娘在战乱和糟糕环境里受苦。嗯，我不敢自称是医疗专家——我那位可爱的表亲贝娜才是，她把药卖遍了各地的公爵伯爵——可至少我知道几样对侏儒同族有用的。下次洗脸时轻轻抹上，我保证一周内解决问题。若不然，你回来砍我的头都行。~
== BC0AUR25 ~这想法很好，可我不知道……上次我见别人试类似的东西，皮肤起了一片疹子……这不会又是个恶作剧吧？~
== BJAN25 ~哎，你这么说真让我伤心，奥拉。我说你如同家人，可不是开玩笑。想让一个年轻侏儒姑娘可爱的笑容恢复光泽，有什么错吗？~
== BC0AUR25 ~扬，我不知道……谢谢你。我一定试试。听你这么说，我根本没法拒绝。~
EXIT

// Keldorn

CHAIN
IF ~InParty("Keldorn")
Range("Keldorn",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKeldornToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraKeldornToB1
~凯尔东，你还好吧？没有哪儿疼或不对劲？~ [C0BLANK]
DO ~SetGlobal("C0AuraKeldornToB1","GLOBAL",1)~
== BKELDO25 ~不比以往更糟，奥拉。你在我身上看出什么相反的状况了吗？~
== BC0AUR25 ~不是那个。我只是想，这一路很长，你打了这么久，你的身体……唉，怎么说都不好听。~
== BKELDO25 ~哈！我还在想，什么时候会有人拿我的年纪说事。你担心的是这个，对吧？~
== BC0AUR25 ~是的，先生。~
== BKELDO25 ~凭我多年的训练、众神的恩慈，当然还有你定期的检查和细心准备的饭菜，我觉得自己跟以往一样硬朗，亲爱的。若托姆愿意，我也许还能多活十年，超过我应得的。~
== BC0AUR25 ~那……那很好。我当然信你的力气，可自从在兰坦长大，我见过人类变化得多快……总觉得他们在我还没反应过来时就没了。~
== BKELDO25 ~跟长寿的族类总是难以分辨，可我记得，你不过五十多个夏天，不是吗？若如此，那我仍是你的长辈，哪怕只长几岁。~
== BC0AUR25 ~嘿嘿。很难接受我们活得差不多长了，先生……不知怎的，总觉得我对这世界的经历跟你比太单薄。我不敢自称与你比肩。~
== BKELDO25 ~可你就是，我就是这样看你的。这一路上我们走得一样远。把你当作低一等，那才不公。~
EXIT

// Korgan

CHAIN
IF ~InParty("Korgan")
Range("Korgan",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKorganToB1","GLOBAL",0)~ THEN BKORGA25 C0AuraKorganToB1
~你变强了，丫头。连我在战斗里都觉得没那么需要护着你了。可你要想活下去，就得压住你对流血的厌恶。~ [C0BLANK]
DO ~SetGlobal("C0AuraKorganToB1","GLOBAL",1)~
== BC0AUR25 ~我……我做不到，库尔甘。我感激你为我做的，可我没法像你那样打。那会背弃我信守的一切。~
== BKORGA25 ~在道德上留个污点，总比让恶棍的刀削掉你聪明的脑袋强，不是吗？~
== BC0AUR25 ~我不想死，可是……~
== BKORGA25 ~这世界残酷。你这种好心肠不适合它，而我不可能永远在旁边弥补你的短处。趁还来得及，最好学会硬的那一套。~
== BC0AUR25 ~库尔甘，我能问一句……你既然这么不赞成我的做法……为什么还在意我会怎样？~
== BKORGA25 ~哼。也许我老了、变得多愁善感了。我从来不在乎砍倒哪个蠢货，可是……看到你死，总还是可惜。~
EXIT

// Mazzy

CHAIN
IF ~InParty("Mazzy")
Range("Mazzy",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMazzyToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraMazzyToB1
~*叹气*~ [C0BLANK]
DO ~SetGlobal("C0AuraMazzyToB1","GLOBAL",1)~
== BMAZZY25 ~怎么了，奥拉？你胳膊还疼吗？~
== BC0AUR25 ~不……嗯，是的。还疼，可我想的不是这个。~
== BMAZZY25 ~也许我在训练时逼你逼得太紧了。你心里有什么事，我随时乐意听。~
== BC0AUR25 ~我只是……嗯，我很感激有你帮我变硬气，玛兹。先是弓，现在是剑。我只是……想到如今面对的那些威胁，我实在想象不出自己能赶上。~
== BMAZZY25 ~帮助队伍的方式不止靠武力，奥拉。这一点你比谁都该清楚。所有人都大受你的支援之益，我个人绝不愿拿你换任何人。~
== BC0AUR25 ~嘿……你知道我只想保住大家平安。有一天，我希望战斗不再是必须……可我得永远准备好。~
== BC0AUR25 IF ~PartyHasItem("c0auss01")~ THEN ~自从我开始带着叔叔的剑，我想我开始明白，尽管他从不选择战斗，为什么总把它带在身边。我不想用它……可有些时候我不得不用。这躲不开。~
== BMAZZY25 ~正是，连我们中最平和的人，也会为了所珍视之物面对战斗。冲突是苦事，可若它能为亲爱之人带来安宁，那就是正当的。~
== BC0AUR25 ~嘿嘿……你真让我想起朱诺。她就是那种会站出来扛下难事的人，好让我……让我们所有人，她的弟弟妹妹们，不必去做。不管多磨人，她从不放弃职责。~
== BMAZZY25 ~我是阿尔沃林的仆从，若命运眷顾，也许终有一天也是骑士。我会继续与邪恶作战……可连我也不能否认，我渴望有一天能在亲人围绕中过上安宁的日子。~
== BC0AUR25 ~你会有的，玛兹。我也会。我们把能纠正的事都纠正过来，然后终于能安歇。~
EXIT

// Minsc

CHAIN
IF ~InParty("Minsc")
Range("Minsc",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinscToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraMinscToB1
~明斯克，看！这是布布的折纸雕像！~ [C0BLANK]
DO ~SetGlobal("C0AuraMinscToB1","GLOBAL",1)~
== BMINSC25 ~什么？奥里……嘎……米？那是明斯克没听过的一种食物吗？~
== BC0AUR25 ~不，是折纸！东方人练这个来做各种艺术。这个是给你的！~
== BMINSC25 ~嘿嘿，这纸做的小玩意儿真有布布威风的样子。连大小都正好。明斯克认可！~
== BC0AUR25 ~你喜欢就好。布布要是也喜欢，告诉我！~
== BMINSC25 ~呃，可是……奥拉，你知道……布布喜欢纸，可不是温柔地喜欢。它喜欢撕成窝。或者磨牙。有时候……它留下它的——~
== BC0AUR25 ~呀，信息太多了，明斯克！我该想到的。我先收回来，等我想出防仓鼠的保护法术再说！~
EXIT

CHAIN
IF ~InParty("Minsc")
Range("Minsc",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinscToB2","GLOBAL",0)~ THEN BMINSC25 C0AuraMinscToB2
~奥拉，明斯克和布布总是惊叹于你无穷的学识。有时我们都忘了你不是拉斯梅的智慧女巫。~ [C0BLANK]
DO ~SetGlobal("C0AuraMinscToB2","GLOBAL",1)~
== BC0AUR25 ~嘿嘿，被比作你家乡的维赫兰，我想不出更高的赞美了，明斯克。你觉得我们若见面，她们会喜欢我吗？~
== BMINSC25 ~明斯克觉得她们会非常喜欢你。我们的女巫最敬重的就是知识与善心，而你两者都满！~
== BC0AUR25 ~我一直在想，回家前先把这世界探完。也许我会去拉斯梅……我想见见女巫、特尔索……也许还能见到些古老的神。~
== BMINSC25 ~啊，你若打算来，明斯克通常建议坐船。可布布提醒我，奥拉不喜欢海上旅行……明斯克建议走大谷道。路更长，可更安全。而且明斯克喜欢那儿的风景。~
== BC0AUR25 ~好。~
== BMINSC25 ~别忘了到冰龙狂战士会馆来看我们！我们会用盛大的宴席迎你，给你看我们磨炼每个人成汉子的力量与耐力的试炼！训练一周，你的身体就能配上你的头脑！~
== BC0AUR25 ~呃……不知怎的，明斯克，我觉得那不可能。可我一定去拜访，就为了跟朋友打个招呼。~
EXIT

// Nalia

CHAIN
IF ~InParty("Nalia")
Range("Nalia",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNaliaToB1","GLOBAL",0)~ THEN BNALIA25 C0AuraNaliaToB1
~奥拉，我一直在想。等这一切安定下来，你愿不愿意在兰坦和我家族之间建立互利的往来？~ [C0BLANK]
DO ~SetGlobal("C0AuraNaliaToB1","GLOBAL",1)~
== BC0AUR25 ~我不在艾罗奇议会里，娜莉亚……我很想看到这事成真，可我没有自行决定的特权。~
== BNALIA25 ~到如今，连你的人都该听过我们的事迹了吧。我毫不怀疑，你一回家，就会被成群的兰坦人围着庆祝你的名字。~
== BC0AUR25 ~他们不会是那种人！……他们真会吗？我不知道……~
== BNALIA25 ~无论如何，我相信凭我们的才能，能让安姆、甚至诸国度其他地方变得更好。你有造出了不起之物的知识，我有确保它们被负责任使用的权柄。~
== BC0AUR25 ~嗯……你也许说得有道理……~
== BNALIA25 ~我知道你跟我一样想帮人。这一点从未变过，可我们总能往更高处走。而只要我们一起做，这种野心带来的风险就能减轻。~
== BC0AUR25 ~可是，娜莉亚，我不信该替别人决定什么是对的。~
== BNALIA25 ~我什么时候暗示过——~
== BC0AUR25 ~不，我肯定你没有。不是故意的。我只是……需要时间考虑。我相信你只愿别人最好，娜莉亚。可我说过，我不是权威，也不想当。我只能说这有可能。~
== BNALIA25 ~那已经足够了。我不是在要求你什么，奥拉。我只想让你考虑，若你信我，这样的前路是可能的。~
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
Range("Neera",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeeraToB1","GLOBAL",0)~ THEN BNEERA25 C0AuraNeeraToB1
~嘿，奥拉。看，一个完全受控的光亮术，没有涌动！连一丝波纹都没有！~ [C0BLANK]
DO ~SetGlobal("C0AuraNeeraToB1","GLOBAL",1)~
== BC0AUR25 ~我看到了！我记得以前连这么小的东西都让我怕它会变红、然后炸成火球。~
== BNEERA25 ~我的魔法在这么短时间内变得这么多，不觉得有趣吗？连发生的涌动都没那么糟了。~
== BC0AUR25 ~你不会突然说你怀念那些坏的吧？~
== BNEERA25 ~不。绝对不。我宁愿多些花，少些可怕灾难。虽然我不能排除它们还会时不时发生……~
== BC0AUR25 ~我……还是退后几步以防万一。~
== BNEERA25 ~我开玩笑的！开——玩——笑——的！真是的，你到现在还不信我吗？~
== BC0AUR25 ~我当然信你这个人，妮拉。可有时候最糟的情况，恰恰发生在你想帮忙的时候，你还不明白吗？~
== BNEERA25 ~哦，你这坏蛋！我还以为你人很好！我是说，你没说错，可还是，好疼！~
== BC0AUR25 ~嘿嘿。~
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
Range("Rasaad",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRasaadToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraRasaadToB1
~拉沙德，我现在的姿势怎么样？~ [C0BLANK]
DO ~SetGlobal("C0AuraRasaadToB1","GLOBAL",1)~
== BRASAA25 ~近来大有进步，毫无疑问。你脚步更轻了，奥拉。也比平时更轻捷。~
== BC0AUR25 ~嘿嘿，我想这得谢你教我一点怎么逼自己。我想我过去只是在找借口。~
== BRASAA25 ~通往自我完善的路有许多入口。改进永远不晚，而你在许多方面都做到了。~
== BC0AUR25 ~我大概永远到不了你那样的自律。可我想我现在能稍微体会你的力量了。我得到的自信超乎想象。~
== BRASAA25 ~这我可不能只归功于我的建议。身边人的影响塑造了我们是谁……当然，我们自己的努力比什么都重要。~
== BC0AUR25 ~嗯。~
== BRASAA25 ~也许你愿意交换几招？我会对你手下留情。~
== BC0AUR25 ~啊哈哈……以我现在的样子，那也许太过了，拉沙德。要是我突然长高几寸，我会考虑接受。~
EXIT

// Sarevok

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Alignment("Sarevok",MASK_EVIL)
Global("C0AuraSarevok1","GLOBAL",0)~ THEN BSAREV25 C0AuraSarevok1
~是什么让你用这般轻蔑的眼神瞪我，侏儒？我本以为你小小的身量里没这份胆气。敢说就说。~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevok1","GLOBAL",1)~
== BC0AUR25 ~我不怕开口，萨雷沃克，可我们之间没什么好说的。~
== BSAREV25 ~哦，我不敢苟同。没人会无视这样刺人的、仿佛要取人性命的目光。你对我的轻蔑有话说吗？趁我还愿意听，说完它。~
== BC0AUR25 ~好，不过我怀疑你不会喜欢我要说的。我只是在想，塔摩科小姐到底看见了什么，才跟着你。~
== BSAREV25 ~你若不是极蠢，就是想死，才在我面前提那个名字，丫头。你凭什么自以为了解她？~
== BC0AUR25 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~我和<CHARNAME>见过她。就在我们杀你的那天。我永远忘不了……她独自站在我们面前，眼神已经死了，认命于终结。~
== BC0AUR25 IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~博德之门地底发生的事，我没参与。可不管是出于命运还是运气，我遇见了她……即便那时，我就知道她已经认命于死。~
== BC0AUR25 ~不管你把自己弄成了什么怪物，萨雷沃克，我愿意接受一种可能：她看见了某种人性的东西。你怎么能那样对她？她对你是什么？~
== BSAREV25 ~你问过她想要什么吗？问过她对自己走的路有没有悔意吗？除了她的名字和她曾有的血缘，你还知道她什么？~
== BC0AUR25 ~我……~
== BSAREV25 ~你不知道，蠢货。你对那女人的理解，被无知所生的成见蒙住了。不管你自以为该得到什么解释，都别想从我这儿得到满足。~
== BC0AUR25 ~你就只有这点体谅？对她想要什么，一个字都没有？~
== BSAREV25 ~死者的念头对我们来说，跟风中飞扬的尘土一样。她已不在。别的都不重要。~
== BC0AUR25 ~不。我拒绝接受。不管她被什么罪绑住，我仍相信她保有自己的灵魂。不像你偷来的这个。~
EXIT

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Alignment("Sarevok",MASK_EVIL)
Global("C0AuraSarevok1","GLOBAL",1)~ THEN BC0AUR25 C0AuraSarevok2
~我不信你，萨雷沃克。~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevok1","GLOBAL",2)~
== BSAREV25 ~你，以及<CHARNAME>一伙里大概每一个棋子。省省你的气力，等你想出真能让我意外的东西再说。~
== BC0AUR25 ~不，我不是那个意思。我不信你从没在意过她。我无法相信她的一生全无意义，为一个彻头彻尾的谎言白白扔掉。~
== BSAREV25 ~你就没想过，她一生的罪不比我少吗？~
== BC0AUR25 ~你敢——~
== BSAREV25 ~我敢。记住这点，侏儒。那女人跟着我，明知代价，明知那必将玷污她灵魂的堕落……而到最后，尽管一切，她仍自愿为我的事业献出性命。~
== BSAREV25 ~若她临终时心中有疑虑，那是因为她自欺以减轻自己的罪咎。~
== BC0AUR25 ~她……她本可以回到正途。不管她的灵魂被血染得多黑，那仍是她的族人……仍是她想要的。我欠着一笔债，可我失败了……因为你，萨雷沃克。~
== BSAREV25 ~你指望我悔恨？我前生的暴行多得是，丫头。再多一桩也难成更大的负担。若那能给你几分安慰，就把世间一切恶都算在我头上。我一点不在乎。~
== BC0AUR25 ~……恶业缠身。~
== BSAREV25 ~我所有的罪都会缠着我的身体，是吗？~
== BC0AUR25 ~你——~
== BSAREV25 ~对像我这样的人，这警告空洞得很。我第一次败亡时身体已成尘土，而这偷来的生命正是没有业报来罚我的明证。别以为这么容易就能吓住我，愚蠢的崽子。~
== BC0AUR25 ~……~
== BSAREV25 ~滚吧，去拿你的训诫烦那些也许会在意的人。~
EXIT

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(2)
!Alignment("Sarevok",MASK_EVIL)
Global("LS#SarevokRomancePath","GLOBAL",1)
Global("C0AuraSarevokGood1","GLOBAL",0)~ THEN BC0AUR25 C0AuraSarevokFinal1
~……~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevokGood1","GLOBAL",1)~
== BSAREV25 ~在祈祷，丫头？我没想到你是这种人，因为我从没在你嘴里听到过任何神的名号。~
== BC0AUR25 ~我不向任何单一的神祈祷，也肯定不为我自己。这是为我旅途中失去的人……你也许不在乎逝者的记忆，可我在乎。~
== BSAREV25 ~对过早死去的人，这安慰有限，若他们听得见的话。~
== BC0AUR25 ~他们也许听不见，可一点信念总比没有强。哪怕只是知道没被遗忘，也能带来些安宁。~
== BSAREV25 ~哼。不过是做做样子减轻自己的罪咎，没别的。这一点上，你比她你自己以为的更像她。~
== BC0AUR25 ~真——真的……？~
== BSAREV25 ~啐……至少，安静的陪伴比别的选择好。我陪你一会儿。~
== BC0AUR25 ~你会——？~
== BSAREV25 ~可你若觉得我的存在玷污了你这小小的仪式，我就走。~
== BC0AUR25 ~不，不……我没料到，可也许这不是坏事。我知道她听到会高兴的。~
== BSAREV25 ~……~
== BC0AUR25 ~我想我从没见过你这副样子，萨雷沃克。~
== BSAREV25 ~那你觉得在我身上看见了什么？~
== BC0AUR25 ~闭着眼，坐着，脸上不带野心……你几乎是第一次显出了安宁。~
== BSAREV25 ~是吗？~
= ~……~
= ~嗯。也许是。~
EXIT

CHAIN
IF ~InParty("Sarevok")
Range("Sarevok",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(2)
!Alignment("Sarevok",MASK_EVIL)
Global("LS#SarevokRomancePath","GLOBAL",1)
Global("C0AuraSarevokGood1","GLOBAL",1)~ THEN BC0AUR25 C0AuraSarevokFinal2
~萨雷沃克……~ [C0BLANK]
DO ~SetGlobal("C0AuraSarevokGood1","GLOBAL",2)~
== BSAREV25 ~你又想要什么，侏儒？~
== BC0AUR25 ~我们也许永远不会真成为朋友，你做的事也忘不掉……可我相信宽恕，只要你真想去赢取它。~
== BSAREV25 ~……那早就太迟了，就算你的宽恕值什么也一样。~
== BC0AUR25 ~也许吧。可若我们只因为觉得“太迟”就放弃……那剩下这点时间，也只会被悔恨折磨。~
== BSAREV25 ~你相信就凭我，萨雷沃克，这个疯子、剑湾的祸害，也会觉出点像“悔恨”的东西？~
== BC0AUR25 ~以前我绝不会想这个。现在……我至少想留一点信念。我知道有人会希望如此……哪怕他们已经不在了。~
== BSAREV25 ~你说这话，好像连你自己都不太信。不过……这样的提议也许超过了我应得的。我会想想你说的话……不多不少。~
EXIT

// Valygar

CHAIN
IF ~InParty("Valygar")
Range("Valygar",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraValygarToB1","GLOBAL",0)~ THEN BVALYG25 C0AuraValygarToB1
~奥拉？~ [C0BLANK]
DO ~SetGlobal("C0AuraValygarToB1","GLOBAL",1)~
== BC0AUR25 ~嗯？~
== BVALYG25 ~若可以给我一点时间……我希望你有一天能看到梦想成真。~
== BC0AUR25 ~瓦里格……嘿嘿，你知道吗，我从没想到会听到你说你信我。~
== BVALYG25 ~这段旅途教了我许多。我理解了善与恶的许多形态，也见过我曾以为不可能的事。若有人我愿信任、只把善从魔法或别的才能中做出来……那人一定是你。~
== BC0AUR25 ~这话……出自你口，也许是我得到过最大的信任票。我向你发誓，我会尽力不让你失望。也能对你提个要求吗？~
== BVALYG25 ~去吧。~
== BC0AUR25 ~我要求不多。只多一点信念。若我的所作所为能让一个怕魔法的人看到其中的善……那给我的动力超越一切。~
== BVALYG25 ~*叹气* 这要求不小。可我会尽力。~
EXIT

// Viconia

CHAIN
IF ~InParty("Viconia")
Range("Viconia",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraViconiaToB1","GLOBAL",0)~ THEN BVICON25 C0AuraViconiaToB1
~我得承认，奥拉……在你那副天真和过分甜腻的样子底下，你满溢着潜力。~ [C0BLANK]
DO ~SetGlobal("C0AuraViconiaToB1","GLOBAL",1)~
== BC0AUR25 ~谢谢你，维康妮亚。那……底下没什么批评吧？~
== BVICON25 ~只是一句忠告，你该好好想想。你的消极只会带你走向悲伤。你握有许多人会害怕的知识，不管你怎么装作不是。把它用在你自己身上。~
== BC0AUR25 ~我想用我的知识让世界更好。被害怕不会让我更快乐。~
== BVICON25 ~这种话，多少过分热切的小崽子都说过。有几个成了？死亡与冲突仍像疫病一样蔓延诸国度。我们就正站在一个例子中间。~
== BC0AUR25 ~那只是说明更需要有人去试。~
== BVICON25 ~你也许会有所成就，也许只是早早进坟墓。我认为这是愚蠢的冒险。随你——你能不能活得够久、看到我这话的道理，全看你自己的命。~
EXIT

// Wilson

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilsonToB1","GLOBAL",0)~ THEN BC0AUR25 C0AuraWilsonToB1
~嗯……哼……~ [C0BLANK]
DO ~SetGlobal("C0AuraWilsonToB1","GLOBAL",1)
SetGlobalTimer("C0AuraWilsonToBRestTalkTimer","GLOBAL",THREE_DAYS)~
== BWILSO25 ~哼？~
== BC0AUR25 ~什么？不，我没在闹脾气！我凭什么闹脾气，嗯？嗯？~
== BWILSO25 ~（嗅嗅）哼。~
== BC0AUR25 ~好吧！我是在钓鱼三局两胜里输给你了。那天我状态不好！我正打算赢回荣誉，你等着！~
== BWILSO25 ~低吼。~
== BC0AUR25 ~*叹气* 不知怎的，我在自己都没察觉的时候就学会了听懂你。我想晚学总比不学好……我还是不知道别人是什么时候、怎么弄明白的。~
== BWILSO25 ~（嗅嗅）呜？~
== BC0AUR25 ~嗯？不，我们不是——好吧，算了。也——许有机会我们能做朋友。最终吧。等我手不抖了以后。~
== BWILSO25 ~吼！~
== BC0AUR25 ~好，好！满意了吧？~
== BWILSO25 ~吼——！~
== BC0AUR25 ~呀！顺——顺便说一句，挑战还算数，明白吗？~
EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilsonToB1","GLOBAL",2)~ THEN BC0AUR25 C0AuraWilsonToB2
~唔……我的毯子，毯子在哪儿？越来越冷了……~ [C0BLANK]
DO ~SetGlobal("C0AuraWilsonToB1","GLOBAL",3)~
== BC0AUR25 ~哦，这不错……不是我的毯子，可很暖……是你吗，<CHARNAME>？谢谢……*哈欠*~
== BC0AUR25 ~不过这有点重……要是能往右挪一点……好了……~
== BC0AUR25 ~不管这是什么，又舒服又毛茸茸，像玩偶……等等，毛茸茸？嗯……？那些是……耳朵？什么——~
== BC0AUR25 ~——！！！~
== BWILSO25 ~打呼……~
== BC0AUR25 ~啊啊啊啊啊啊啊啊啊啊——！！！~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()
Interact("WILSON")~ EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilsonToB1","GLOBAL",3)~ THEN BC0AUR25 C0AuraWilsonToB3
~威尔森——！~ [C0BLANK]
DO ~SetGlobal("C0AuraWilsonToB1","GLOBAL",4)~
== BWILSO25 ~低吼？~
== BC0AUR25 ~哦，你别又给我来这套！为什么？为什么？~
== BWILSO25 ~哼。嗅嗅。~
== BC0AUR25 ~好吧，是我找不到毯子。大概在某场战斗里烧了，我记不清。可还是！这不代表你可以不经我同意就决定跟我分享体温！~
== BWILSO25 ~低吼……~
== BC0AUR25 ~你——你真的抱歉？你不是想骗我？~
== BWILSO25 ~吼。~
== BC0AUR25 ~*叹气* 好——好吧！行！道歉接受了。我也为那么用力拽你耳朵道歉。那一定很疼。~
== BWILSO25 ~呜。嗅嗅，嗅嗅。~
== BC0AUR25 ~我真能摸它们？嗯……好吧，我，我能做到！一步，两步……~
== BWILSO25 ~（嗅）……~
== BC0AUR25 ~嘿嘿，它们还挺圆乎乎的……这也没那么糟……~
== BWILSO25 ~吼。~
== BC0AUR25 ~是，我眼睛闭得紧紧的！你不会以为这对我就那么容易吧？~
== BWILSO25 ~吼。嗷。~
== BC0AUR25 ~当然，算个开始。谢谢你，威尔森。我——不知怎的——明白你在意。大概吧。我仍不排除哪天被吃掉。~
== BWILSO25 ~吼——！~
== BC0AUR25 ~呀！我只是在开玩笑！~
EXIT