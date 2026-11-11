BEGIN BC0AURA

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAjantis1","GLOBAL",0)~ THEN BC0AURA C0AuraAjantis1
~呃……阿詹提斯？我能问你个问题吗？~
DO ~SetGlobal("C0AuraAjantis1","GLOBAL",1)~
== %AJANTIS_BANTER% ~当然，奥拉小姐。想问什么尽管问。~
== BC0AURA ~我知道我们相遇以来没怎么说过话，呃，我在想……是不是因为你不怎么喜欢我？~
== %AJANTIS_BANTER% ~什——不，当然不是！你没做过任何冒犯我的事。你怎么会这么想？~
== BC0AURA ~嗯，我知道你不喜欢盗贼和那些名声不光彩的行当……而我虽然从没把自己当成盗贼，可我想，也许，以我的本事，你……不会认可我。~
== %AJANTIS_BANTER% ~啊，原来如此……若你担心的是这个，奥拉，那就不必了。我确实不喜欢觊觎他人财物之辈，但我反对的是他们的意图，而非本事。~
== BC0AURA ~哦。我明白你的意思。可是我们几乎不了解彼此。你怎么能确定我不是……你知道，一个不光彩的贼？~
== %AJANTIS_BANTER% ~是啊，如你所说，我们确实还谈不上彼此了解。但我看着你对本行的专注，很难把你和我熟悉的那些游荡者归到一处。我只希望我对你的信任没有放错地方。~
== BC0AURA ~不会的，我向你保证。信不信由你，我有自己的荣誉。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAjantis2","GLOBAL",0)~ THEN %AJANTIS_BANTER% C0AuraAjantis2
~奥拉小姐，您似乎被行囊的重量压得吃力。可否让我替您分担一些？~
DO ~SetGlobal("C0AuraAjantis2","GLOBAL",1)~
== BC0AURA ~哦，不用，它没那么重……嗯，那是假话，它相当重。可我不想给你添麻烦……~
== %AJANTIS_BANTER% ~胡话。这些都是骑士与君子分内该做的礼节，于我毫无麻烦。~
== BC0AURA ~嗯，呃，谢谢你，阿詹提斯。既然你不介意，那能帮我拿几本书吗？我带了很多，它们是我唯一不用随手取用的东西，所以……~
== %AJANTIS_BANTER% ~当然，可是……海姆在上，这可真是不少书啊，奥拉！《哈鲁阿史》、《失落的国王贡德加》、《伏罗魔法万物指南》……您的藏书真广，小姐。~
== BC0AURA ~对，你再说一遍也不为过。读书一向是我最喜欢的消遣之一。底下还有你还没翻到的。历史、戏剧、哲学……我全都读过。~
== %AJANTIS_BANTER% ~原来如此。那我必须说，我自愧不如，奥拉小姐。能啃下这么多书，您的心思必然敏锐。~
== BC0AURA ~那你呢，阿詹提斯？你喜欢读书吗？~
== %AJANTIS_BANTER% ~我？嗯，你肯问，我很荣幸。说实话，骑士团的侍从难得有空闲的消遣……不过我闲暇时确实爱读一本好书。~
== BC0AURA ~那，你知道吗……要是你觉得其中有些书你会喜欢，想借哪本就借哪本。毕竟我没法拒绝一个同好！有空的时候我们还可以就着一壶茶一起读，如果你愿意的话。~
== %AJANTIS_BANTER% ~听起来……其实相当美好。我期待着那样的时刻，奥拉小姐！~
EXIT

// Alora
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora1","GLOBAL",0)~ THEN %ALORA_BANTER% C0AuraAlora1
~奥拉！队里多一个矮个子姑娘真是太好了，你不觉得吗？~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",1)~
== BC0AURA ~嗯，这我同意……~
== %ALORA_BANTER% ~我们在一起的时候该做最好的伙伴！就凭我们的个头和头发，我们简直能当姐妹。~
== BC0AURA ~嘿嘿，也许吧。毕竟我真正的小妹妹也会趁我不注意偷我的备用零件。~
== %ALORA_BANTER% ~什——什么？我，呃，不知道你在说什么，诶——嘿嘿……~
== BC0AURA ~当——然……~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora2","GLOBAL",0)~ THEN %ALORA_BANTER% C0AuraAlora4
~哇……嘿，这个真可爱。这是什么衣服，奥拉？~
DO ~SetGlobal("C0AuraAlora2","GLOBAL",1)~
== BC0AURA ~这是浴衣。科祖库拉的样式。是夏天热的时候穿的。~
== %ALORA_BANTER% ~我从没见过花纹这么漂亮的花衣裳。你从哪儿弄来的？~
== BC0AURA ~我住在科祖库拉时，我的导师丽华小姐带我去了御魂丰收祭。我很喜欢当地人穿的彩色衣裳，可没有一件合我的身。于是丽华小姐带我去了集市，让我挑自己最喜欢的花样。回家之后，她熬了一整夜给我缝出了这件。~
== %ALORA_BANTER% ~哦。那我想它对你一定很重要……不过，我还能试穿一下吗？我个子跟你差不多。~
== BC0AURA ~当然。不过第一次穿挺麻烦的。你想穿的时候我来帮你。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora1","GLOBAL",1)~ THEN %ALORA_BANTER% C0AuraAlora2
~嘿，嘿，奥拉！你今天看着不太高兴！出什么事了？我能帮忙吗？~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",2)~
== BC0AURA ~我……呃，也许。我丢了样对我很重要的东西，正在找它。~
== %ALORA_BANTER% ~你丢了什么？我找东西可厉害了！一起找肯定能找到！~
== BC0AURA ~我的勾玉。是我的项链，我一直戴着的那条。我简直想不出怎么会丢。也许是上次打仗时松脱了，可我知道我一向把它系得很牢……~
== %ALORA_BANTER% ~呃——嗯，我明白了……呃，我想不出它会掉在哪儿……哈哈……呃，你先慢下来，好好想想，好吗？也许我先走开……~
== BC0AURA ~我们吃东西的时候它还挂在我脖子上。我记得有个虫子落在我脖子上，我伸手去弄它，然后你把它拍走，我就停下了，然后……~
== BC0AURA ~等等，你……你！~
== %ALORA_BANTER% ~呀！~
== BC0AURA ~是你偷的！你偷了我的勾玉！~
== %ALORA_BANTER% ~我——我很抱歉！你为什么这么生气，奥拉？我只是——~
== BC0AURA ~*啪！*~
== %ALORA_BANTER% ~哎哟！*抽鼻子*~
== BC0AURA ~你……你竟敢偷丽华小姐祝福过的勾玉，你这……你这蠢贼！马上还给我，你这扒手！滚开，别再回来！~
== %ALORA_BANTER% ~好——好吧。我没有……*抽鼻子* 我不知道它对你这么重要，奥拉，我……我走……对不起……~
EXIT

CHAIN IF ~InParty("C0Alora")
See("C0Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraAlora1","GLOBAL",2)~ THEN BC0AURA C0AuraAlora3
~嘿，阿萝拉。~
DO ~SetGlobal("C0AuraAlora1","GLOBAL",3)~
== %ALORA_BANTER% ~呀！~
== BC0AURA ~怎——怎么了？~
== %ALORA_BANTER% ~我什么都没偷！这次真的没有，我发誓！看见了吗？我手是空的！口袋也是！~
== BC0AURA ~我不知道……哦，这是说我勾玉的事……没事了，阿萝拉。别怕。~
== %ALORA_BANTER% ~你——你不再为那事生气了？~
== BC0AURA ~不。我很抱歉我发了脾气，也抱歉打了你、叫你滚开，还有……~
== %ALORA_BANTER% ~别——别说了！没事的，该道歉的是我，要是我早知道那条项链对你这么重要，我做梦也不会偷它！我那么坏，挨一巴掌是活该。真的！~
== BC0AURA ~我只是……*叹气* 当我发觉它不见了、以为弄丢的时候，弄丢了我唯一用来纪念我母亲的东西……我是说，我的导师，我觉得心跳都停了，满脑子只想把它找回来……所以当我发现是你拿了，我就受不了了，然后……~
== %ALORA_BANTER% ~没——没事，我懂！你要再说下去，我会更愧疚的！~
== BC0AURA ~嘿，你知道，要是你还想看看它……给。现在你不用偷了。~
== %ALORA_BANTER% ~谢谢，奥拉……你知道，它很漂亮，可我想我不想要了。听过它对你有多重要之后就不想了。所以，收回去吧。我保证不再偷它！~
== BC0AURA ~好，我信你。那我们还是朋友，对吧？~
== %ALORA_BANTER% ~对！~
EXIT

// Baeloth

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBaeloth1","GLOBAL",0)~ THEN BBAELOTH C0AuraBaeloth1
~你在看什么，你这蹦蹦跳跳的粉色小矮人？~
DO ~SetGlobal("C0AuraBaeloth1","GLOBAL",1)~
== BC0AURA ~我只是在想，我好像有个叔叔说话跟你一样。全是头韵。~
== BBAELOTH ~想必没有我这份风采。~
== BC0AURA ~大家都以为他脑子不正常。不过他的绕口令很棒。*哼* “她在海岸边卖海贝壳……”~
EXIT

CHAIN IF ~InParty("Baeloth")
See("Baeloth")
!StateCheck("Baeloth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBaeloth2","GLOBAL",0)~ THEN BC0AURA C0AuraBaeloth2
~嘿，贝洛。接住！~
DO ~SetGlobal("C0AuraBaeloth2","GLOBAL",1)~
== BBAELOTH ~这是什么？一块带有初级符文共振的石头？~
== BC0AURA ~只是我的一枚奥术符文。它们被设计成只有我能用，不过……你大概聪明到能绕过去，对吧？~
== BBAELOTH ~这是挑战吗，你这粗鲁、自满又乐呵呵的猴子？唉，我可不能认输。看好了！~
== BC0AURA ~哦，我说对了！你真能激活它！~
== BBAELOTH ~这般微末的平庸，只是对物质魔法的嘲弄。再练一千年，然后拿点更了不起的给我看。~
== BC0AURA ~你非常在意自己是不是最强，不是吗？~
== BBAELOTH ~在意？亲爱的，卓越与我璀璨的本质本就是同义词。这没什么可争的。~
EXIT

// Branwen
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBranwen1","GLOBAL",0)~ THEN %BRANWEN_BANTER% C0AuraBranwen1
~你又软又弱，细得像根树枝，奥拉。我劝你练结实些，免得战斗的考验压垮你。~
DO ~SetGlobal("C0AuraBranwen1","GLOBAL",1)~
== BC0AURA ~我知道我在战斗上不如你，布朗温，可我还是能用这张弓。你不必担心我拖累队伍。~
== %BRANWEN_BANTER% ~在远处作战是懦夫之举。若有敌人近身缠上你，你又如何？几秒之内你就会被砍倒。~
== BC0AURA ~*叹气* 我知道。可我不是战士，也从没自称是。我只能拿出我会的本事。~
== %BRANWEN_BANTER% ~哼。武士们拿命去拼，你倒摆弄你的小玩意。我看你的胆量与你的个头倒是相配。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
See("C0AUIN3")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraBranwen2","GLOBAL",0)~ THEN %BRANWEN_BANTER% C0AuraBranwen2
~让一具金属造物替你上阵，这算什么荣誉？~
DO ~SetGlobal("C0AuraBranwen2","GLOBAL",1)~
== BC0AURA ~我……我不知道。我倒是想问，打仗本身又有什么荣誉可言？~
== %BRANWEN_BANTER% ~蠢丫头！人一生中少有比公平决斗更值得称道的事。可躲在这……这“东西”后面？那是怯懦！~
== BC0AURA ~我从没自称是战士。可我答应过要帮<CHARNAME>，所以……我拿出我能给的。就算我自己不能上前线。~
== %BRANWEN_BANTER% ~你若肯不避战，能给的远不止这些。~
EXIT

// Coran
CHAIN IF ~InParty("Coran")
See("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraCoran1","GLOBAL",0)~ THEN BC0AURA C0AuraCoran1
~嘿，嘿，科兰！~
DO ~SetGlobal("C0AuraCoran1","GLOBAL",1)~
== %CORAN_BANTER% ~在，小姐？我洗耳恭听。~
== BC0AURA ~你遇到<CHARNAME>的时候正在追猎翼龙。那么……你在冒险中见过别的奇特生物吗？~
== %CORAN_BANTER% ~那当然！像我这样老练的冒险者，怎能没有几段难忘的经历。啊，让我想想……要不要给你讲讲瓦拉沙河的水妖精？或者漫游高森林的独角兽？关于一切美丽的生灵，我能告诉你很多。~
== BC0AURA ~那些我不必听。我们在兰坦有时也能见到。你见过炎魔虫吗？~
== %CORAN_BANTER% ~极地蠕虫？像你这样娇小可爱的生灵，为什么想知道那种庞然可憎的野兽？~
== BC0AURA ~我一直想见一头！兰坦把它们列为北方最危险的生物之一，说它们的身体能热得像熔炉！而且我看过的图里，它们画得相当可爱。我想知道真的长什么样。~
== %CORAN_BANTER% ~呃……原来如此。~
== BC0AURA ~你见过吗，科兰？~
== %CORAN_BANTER% ~我……没那份存疑的荣幸，没有。就算真有一头归你支配，你打算拿它做什么？~
== BC0AURA ~嗯……骑它吧，我想！这辈子有几个人能说自己骑过巨型蠕虫？~
== %CORAN_BANTER% ~啊……哈哈哈，你真是个古怪的小家伙，奥拉。不过其中也有种讨人喜欢的地方。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraCoran2","GLOBAL",0)~ THEN %CORAN_BANTER% C0AuraCoran2
~有句话叫“嫁给自己的工作”。奥拉，你觉得这话适用在你身上吗？~
DO ~SetGlobal("C0AuraCoran2","GLOBAL",1)~
== BC0AURA ~我倒不会说到那个地步。我确实比对人更在意我的机械，可是……我还年轻。~
== %CORAN_BANTER% ~若我问你生活中是否已有人，会不会太冒昧？~
== BC0AURA ~曾经有过。可是已经很久了……我离开兰坦之后就没再见过她。而在我流落到科祖库拉的那场事故之后……我对她的记忆还不完整。~
== %CORAN_BANTER% ~你可曾想过写信回家？也许熟悉的字句能唤回你失去的记忆。~
== BC0AURA ~我想过，可是……很难找到措辞。等我终于启程回乡……我希望还能再见到她。~
EXIT

// Dorn
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDorn1","GLOBAL",0)~ THEN %DORN_BANTER% C0AuraDorn1
~让开，小矮子。~
DO ~SetGlobal("C0AuraDorn1","GLOBAL",1)~
== BC0AURA ~呀！~
== %DORN_BANTER% ~你非要扯着我们的衣角跟着，那至少把自己的存在感压到最低。我没耐心陪没胆见血的小丫头玩。~
== BC0AURA ~我——我不太喜欢你……~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("C0AuraQuest","GLOBAL",8)
Global("C0AuraDorn2","GLOBAL",0)~ THEN %DORN_BANTER% C0AuraDorn2
~我看错了。想不到像你这么小的人，竟有如此惊人的屠戮潜质……你为什么要自我限制，不去取用这般宏大的力量？~
DO ~SetGlobal("C0AuraDorn2","GLOBAL",1)~
== BC0AURA ~我跟你不一样。我不以破坏为乐，我做这些只是因为别无选择。~
== %DORN_BANTER% ~你这副毫无志气的样子令我作呕。你若好好运用你的爆炸武器，足以征服一个王国！可你竟满足于过这种毫无意义的日子？~
== BC0AURA ~只有你才会觉得创造比破坏廉价。跟你这种人没什么可争的。~
== %DORN_BANTER% ~彼此彼此。学界的才子有时恰恰是最蠢的傻瓜，真是讽刺。~
EXIT

// Dynaheir
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDynaheir1","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% C0AuraDynaheir1
~你运用魔法的本事，与我见过的任何技艺都不同，奥拉。你是如何练成这本领的？~
DO ~SetGlobal("C0AuraDynaheir1","GLOBAL",1)~
== BC0AURA ~我的符文？其实是个简单的小把戏。我不是法师。我只是……自己学了一两手。~
== %DYNAHEIR_BANTER% IF ~!Class("C0Aura",MAGE_ALL)~ THEN ~可你有天赋，你对奥术的兴趣也很明显。你怎会没受过训练？~
== %DYNAHEIR_BANTER% IF ~Class("C0Aura",MAGE_ALL)~ THEN ~可你有天赋，你对奥术的兴趣也很明显。你跟许多同族一样，对幻术有亲和力，可我感觉得到你的训练并不完整。~
== BC0AURA IF ~!Class("C0Aura",MAGE_ALL)~ THEN ~我真希望受过……可兰坦没有真正教魔法的学院。岛上的偏远地方住着些奥术师，可我家里从不许我跑那么远去跟他们学。~
== BC0AURA IF ~Class("C0Aura",MAGE_ALL)~ THEN ~啊哈哈……你说得一点不错，可惜。兰坦没有真正教魔法的学院。岛上的偏远地方住着些奥术师，可我家里从不许我跑那么远去拜师。除了从叔叔那里学的几样，我会的全是自学的……而且那也不算多。~
== %DYNAHEIR_BANTER% ~原来如此。那真遗憾……不过别怕，奥拉。既然我们已是同伴，若你愿意，我乐意教你。也许与此同时，你也可以给我讲讲兰坦的科学，我对此极感兴趣。~
== BC0AURA ~哦，你真的愿意吗，狄娜希尔小姐？我……我很乐意！我想从一位真正的法师那里学的东西太多了……~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDynaheir2","GLOBAL",0)~ THEN %DYNAHEIR_BANTER% C0AuraDynaheir2
~……大法师卡苏斯也曾试图从女神密丝瑞尔手中夺取魔网的掌控，从而招致耐色瑞尔浮空城的坠落。~
DO ~SetGlobal("C0AuraDynaheir2","GLOBAL",1)~
== %DYNAHEIR_BANTER% ~密丝瑞尔为斩断自己与卡苏斯之间的联结而牺牲，转生为最初的密斯特拉以恢复魔网，可对耐色瑞尔来说已经太迟。于是卡苏斯的妄举导致了一个帝国的毁灭。~
== BC0AURA ~……而密斯特拉的最后通牒也应验了，限制了凡人法师对魔网的取用。~
== %DYNAHEIR_BANTER% ~正是如此。看来你对这段古史已经相当熟悉了。~
== BC0AURA ~耐色瑞尔陷落的全部记载都存放在兰坦的档案馆里。那些卷册少有人动，可是……我去过那儿，全都读过。~
== %DYNAHEIR_BANTER% ~当真？请恕我揣度，不过这出乎我的意料。据我所知，兰坦人更信科学而非奥术。~
== BC0AURA ~确实如此，可改变世界的大事对人人都是值得一学的课。魔法跟科学一样有无限潜力，但想强行驾驭它只会招来灾祸。~
== %DYNAHEIR_BANTER% ~说得好。我很高兴见你有这般见地。以我自身的经历看，头脑最出众的人往往犯下最大的错。~
== BC0AURA ~确实。连我也是从经历里学到这一点的，而且往往是吃足了苦头。我有时走得太远，那些时刻我始终后悔。~
== %DYNAHEIR_BANTER% ~听我一言，奥拉：从错误中学习，但别让你的悔恨牵制你的潜力。你的才华仍能带来许多好处。我们下次再继续上课，好吗？~
== BC0AURA ~好。我等着。~
EXIT

// Edwin
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEdwin1","GLOBAL",0)~ THEN %EDWIN_BANTER% C0AuraEdwin1
~你铭刻符文的手艺看着挺有趣，侏儒。就像看一个孩子头一回试着画画。~
DO ~SetGlobal("C0AuraEdwin1","GLOBAL",1)~
== BC0AURA ~嗯，就理解魔法而言，埃德温，我承认我比孩子强不了多少。介意给我点拨几句吗？~
== %EDWIN_BANTER% ~若我有那个兴致，倒可以，可我怀疑你根本领会不了魔法运作的精微之处。~
== BC0AURA ~也许你说得对……炼金、植物学、工程，我能把这世上该知道的都讲给你听，可一说到魔法，我就是……没法让自己弄懂它是怎么运作的。它像是根本不遵循任何真正的规则。~
== %EDWIN_BANTER% ~你当然可以这么想。毕竟你就是那种指望同样的步骤得出同样结果、只要没有凡人犯错就不该有偏差的人。魔网远远超出那些指望它服从科学法则的人的理解。~
== BC0AURA ~好吧，假设我不懂。那它到底有什么不一样？~
== %EDWIN_BANTER% ~有什么不一样？多可笑的问题！什么都不一样！魔网不是一种可以被界定成具体功能的力。它是一片汪洋，是力量的泉源，只要有意愿，就能把它塑造成任何想要的样子。你的符文不过是个替代品，在没有真正掌控力时用来聚焦魔网。要真正驾驭魔网，需多年修习与领悟！对我之下的人，要几百年！~
== BC0AURA ~嘿……你知道吗，这其实解释了不少事。谢了，埃德温！~
== %EDWIN_BANTER% ~该死！我说过我不会……我命令你立刻忘掉！~
== BC0AURA ~嘿嘿，那可不行！我从不忘记任何事！~
EXIT

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEdwin2","GLOBAL",0)~ THEN BC0AURA C0AuraEdwin2
~嘿！嘿，埃德温！~
DO ~SetGlobal("C0AuraEdwin2","GLOBAL",1)~
== %EDWIN_BANTER% ~啊！你这回又想要什么，丫头？关于魔法运作，我已给了你像你这样的人该得的知识！去找点别的打发时间，别烦我。~
== BC0AURA ~唉。我是说，我还有好多问题要问……可周围实在没有受过足够教养、能给我正经指点的人……~
== BC0AURA IF ~IsValidForPartyDialog("Dynaheir")~ THEN ~我想我就去问狄娜希尔吧？~
== %EDWIN_BANTER% ~咳。别急。也许……我还能被说动做个折中。（该死。我现在怎么可能拒绝？）~
== BC0AURA ~好。既然你改了主意，那你能确认几件我听说的关于塞尔的事吗？红袍法师真找回了一颗密瑟能核并在研究它？科苏斯的永燃之树是真的吗？拉洛克的宝珠呢？~
== %EDWIN_BANTER% ~你从哪儿听来这些荒唐的传言。耐色瑞尔陷落后密瑟能核几乎毫无价值，任何有本事的法师都知道。科苏斯之树不过是传说。至于拉洛克的宝珠……~
== %EDWIN_BANTER% ~等等。你从哪儿知道那东西的？那是塞尔圈内的秘密！~
== BC0AURA ~我真想不起来了，太久了。大概是多年前穿行阿格拉隆德时听到的传言。呃……哦，你看着很生气，埃德温。我没想到那是什么值钱的秘密。对不起！~
== %EDWIN_BANTER% ~哼。我可以既往不咎……只要你拿一件配得上我慷慨传授的知识的力量器物来报答我。~
== BC0AURA ~哦。抱歉，我一件都没有。我只有这块一直留着当晚饭的糖糕……~
== %EDWIN_BANTER% ~（糕？嗯……）那倒……凑合。但记住，侏儒，这是最后一次！~
EXIT

// Eldoth
CHAIN IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEldoth1","GLOBAL",0)~ THEN BC0AURA C0AuraEldoth1
~埃尔多斯，你弹得小声点行吗？不是要冒犯你，可我在这儿想干活。~
DO ~SetGlobal("C0AuraEldoth1","GLOBAL",1)~
== %ELDOTH_BANTER% ~我当然介意。我的灵感绝不能被别人的命令扼住。那是对音乐这门艺术的亵渎。~
== BC0AURA ~好吧……那你能不能唱点不嘲讽人的？不是要冒犯你，可这已经是第五首了，连着八段都在羞辱某人。太难听了。~
== %ELDOTH_BANTER% ~那你要我唱什么，丫头？英雄伟业的丰硕回报？命中注定的恋人结为眷属？过平静日子的乐趣？~
== BC0AURA ~呃……对？~
== %ELDOTH_BANTER% ~既然如此，我建议你给自己培养点更好的品味。那会比你喜欢摆弄的那些可笑玩具更能帮你快点长大。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraEldoth1","GLOBAL",0)~ THEN %ELDOTH_BANTER% C0AuraEldoth2
~嗯……不坏，在正确的角度下，我能从里面看见自己完美的倒影。我准了。~
DO ~SetGlobal("C0AuraEldoth1","GLOBAL",1)~
== BC0AURA ~呃，它不是干这个用的。~
== %ELDOTH_BANTER% ~不是吗？可惜。我想它还是能卖个好价钱。至少，配上恰当的说辞。~
== BC0AURA ~这是光学棱镜。在兰坦一打才卖几个铜板。我现在真的很需要它，请还给我。~
== %ELDOTH_BANTER% ~耐心点，亲爱的。我还没想完能把这块切面玻璃说服下一个商人出多少钱。能影响光线是挺有趣，可不实用。大多数蠢货还得再多劝几句。~
== BC0AURA ~在你眼里，什么东西的价值都取决于你能从中捞到多少吗？~
== %ELDOTH_BANTER% ~当然。任何达不到我标准的东西或人，客观上毫无价值。我还没说够清楚吗？~
== BC0AURA ~清楚得像水晶。我现在要把它收回来了，埃尔多斯。再见。~
EXIT

// Faldorn
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraFaldorn1","GLOBAL",0)~ THEN %FALDORN_BANTER% C0AuraFaldorn1
~把那头金属野兽离我远点，侏儒！~
DO ~SetGlobal("C0AuraFaldorn1","GLOBAL",1)~
== BC0AURA ~嗯？穆菲怎么了？你不喜欢松鼠吗？~
== %FALDORN_BANTER% ~那……那东西是对自然的亵渎。你竟照母亲之子的模样造它，这是侮辱。它该被毁掉！~
== BC0AURA ~唉，可穆菲是个小可爱啊！~
== %FALDORN_BANTER% ~那里面没有生命，只有苍白的嘲弄。我不知你用了什么邪术让它模仿得这般逼真，但我绝不接受，明白吗？！绝不！~
== BC0AURA ~好，好，我明白了，天。穆菲不会再烦你。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(CITY)
ClassLevelGT("Faldorn",PRIEST,6)
Global("C0AuraFaldorn2","GLOBAL",0)~ THEN %FALDORN_BANTER% C0AuraFaldorn1
~呃！可憎的造物，自然的亵渎者！我全都憎恨。~
DO ~SetGlobal("C0AuraFaldorn1","GLOBAL",1)~
== BC0AURA ~你看着气得不轻，法尔多恩。你——你不会是要变成熊吧？~
== %FALDORN_BANTER% ~那倒是个合适的表演，能给这些无知的凡人心里种下恐惧！自然赐我变化之赋，就该以她之名使用！~
== BC0AURA ~呀！我不是认真的！求你，变成什么都行，就是别变熊！~
== %FALDORN_BANTER% ~……~
== %FALDORN_BANTER% ~啐。这些可怜虫不配目睹自然最原始、最美的形态。我就……这回先忍着。~
== BC0AURA ~呼……~
EXIT

// Garrick
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick1","GLOBAL",0)~ THEN %GARRICK_BANTER% C0AuraGarrick1
~如果可以问，奥拉……人们说的兰坦是真的吗？那个技术奇观之地？~
DO ~SetGlobal("C0AuraGarrick1","GLOBAL",1)~
== BC0AURA ~嗯，你这么说……是的，我没法反驳。我家乡确实以我们的工业为傲。还有别的科学追求。~
== %GARRICK_BANTER% ~你也练些，呃，更有创造性的技艺吗？音乐，或者绘画？兰坦有吟游诗人学院吗？~
== BC0AURA ~我……想没有。我们多数时候尽量把自己当成务实的人……有些兰坦人把艺术当消遣玩玩，可我们不觉得那值得托付一生。~
== %GARRICK_BANTER% ~我以为所有侏儒都珍爱艺术。兰坦人为什么这么不同？~
== BC0AURA ~我们并不不同。兰坦人——侏儒也好，人类也好——尊重艺术，只是不用世俗的眼光看待它。对我们而言，艺术只是科学的另一个分支。~
== %GARRICK_BANTER% ~艺术作为一种科学……嗯，有意思，我从没这么想过。谢谢你抽时间。~
EXIT

CHAIN IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick2","GLOBAL",0)~ THEN BC0AURA C0AuraGarrick2
~嗯……~
DO ~SetGlobal("C0AuraGarrick2","GLOBAL",1)~
== BC0AURA ~「一臂高举
风携种子飘散
花在掌中开~
== BC0AURA ~哦，不坏。我得记下来以后用……~
== %GARRICK_BANTER% ~好，好！~
== BC0AURA ~呀！哦，你刚才在听吗，加里克？~
== %GARRICK_BANTER% ~无意中听到的，不过，呃……我没想到你还擅长作诗，奥拉。虽然我说不上认得出这种体裁……是兰坦的形式吗？~
== BC0AURA ~不是，是卡拉图的。它叫“俳句”，我在科祖库拉时学的。它重节奏而不重押韵。五、七、五。~
== %GARRICK_BANTER% ~听起来够简单。我可以试一首吗？~
== %GARRICK_BANTER% ~「今日我发觉
我的嗓子弴哑了
因长途行军无水~
== %GARRICK_BANTER% ~……怎么样？~
== BC0AURA ~呃……你最后一句用了六个字。~
== %GARRICK_BANTER% ~啊。我一定是被韵律带跑了。这个……“俳句”比看起来难。可我会私下练，很快就能用新练成的本事震到你！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick2","GLOBAL",1)~ THEN %GARRICK_BANTER% C0AuraGarrick3
~「天哪，这真是
好难找到到位的字
还要塞进这样的…~
DO ~SetGlobal("C0AuraGarrick2","GLOBAL",2)~
== %GARRICK_BANTER% ~不行，这样不成。迪尼尔在上，这可真难！~
== BC0AURA ~你好，加里克。进展如何？~
== %GARRICK_BANTER% ~不太顺，奥拉小姐，一点都不顺。我觉得要把恰当的字塞进这么受限的诗行里实在太难了。这跟我学过的任何诗体都相去甚远。~
== BC0AURA ~这事不能硬来。俳句讲的是感觉。你现在强烈感受到的是什么？试着把心思放在那上面。~
== %GARRICK_BANTER% ~好。让我试试……~
== %GARRICK_BANTER% ~「我们是冒险者
同伴并肩一同前行
旅途中结成友谊~
== BC0AURA ~哦，不坏，一点不坏！你成了！~
== %GARRICK_BANTER% ~多谢，奥拉小姐。这真是段令人开窍、虽然有点挫败的经历。不过我可以自信地说，从今往后只会一帆风顺！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGarrick2","GLOBAL",2)~ THEN %GARRICK_BANTER% C0AuraGarrick4
~你给我看了一种全新的诗体，奥拉小姐，我刚想到我该回敬一下。~
DO ~SetGlobal("C0AuraGarrick2","GLOBAL",3)~
== BC0AURA ~哦，你要朗诵一首诗吗？~
== %GARRICK_BANTER% ~正是。请说，什么题材让你愉快？~
== BC0AURA ~嗯……我很喜欢花。给我念一首讲美好事物的。~
== %GARRICK_BANTER% ~那这首如何，是柏达斯克的一位吟游诗人大师教我的。*咳*~
== %GARRICK_BANTER% ~「我如云般独自漫游
浮于山谷丘陵之上，
忽然我看见一片
金色的水仙花丛；
在湖畔，在树下，
在微风中摇曳起舞。」~
== %GARRICK_BANTER% ~「如星辰帄不断闪耀
在星界之路上点点烁烁，
它们延罗成无尽的一线
沿着海湾的边缘：
一瞬我就看见万千朵，
一齐摆头，轻快地跳舞。」~
== %GARRICK_BANTER% ~现在……后面几段是怎么来的？啊，对了！~
== %GARRICK_BANTER% ~「它们旁边的波浪起舞；而它们
比闪耀的波浪舞得更櫂：
诗人怎能不满心欢喜，
身处这般欢欣的佩伴：
我凝望——又凝望——却想不到
这番景象给我带来了何等财富：」~
== %GARRICK_BANTER% ~「因为我常在榻上蹯卧
在空洞或沉思的心情里，
它们保在我内心的眼上
那正是孤居的福祉；
于是我的心盈满了喜悦，
便与那些水仙一同跳舞。」~
== %GARRICK_BANTER% ~*清嗓子* 我……没有老师的功力，但希望这些够了。~
== BC0AURA ~*吸鼻子* 太美了。谢谢你，加里克。~
== %GARRICK_BANTER% ~我生来就是为了取悦他人。~
EXIT

// Imoen
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen1","GLOBAL",0)~ THEN %IMOEN_BANTER% C0AuraImoen1
~你脖子上那枚你老在摆弄的护符是什么？挺好看的。~
DO ~SetGlobal("C0AuraImoen1","GLOBAL",1)~
== BC0AURA ~这个？这是勾玉。在科祖库拉很常见。~
== %IMOEN_BANTER% ~科祖库拉？那在极东之地，对吧？你在那儿做什么？~
== BC0AURA ~哦，你知道……我是爱游荡的那种人。我去各地寻找知识。越古怪越好。有时我还会带些东西走。~
== %IMOEN_BANTER% ~真怪，那跟烛堡那些老书记官干的事正相反。读书、写字、编目录……没人想过出去发现新东西。无聊。~
== BC0AURA ~嘿嘿。我懂你的意思。古籍是好，可在一个地方能学到的东西有限。所以我才自己上路。~
== %IMOEN_BANTER% ~对！就像我和<CHARNAME>现在这样。当然还有你。我们会是世上最棒的冒险三人组！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen2","GLOBAL",0)~ THEN %IMOEN_BANTER% C0AuraImoen2
~那不是天生的粉色吧？我是说你的头发。~
DO ~SetGlobal("C0AuraImoen2","GLOBAL",1)~
== BC0AURA ~嗯？不是。我用一种特别的染料。~
== %IMOEN_BANTER% ~挺好看的。要是我用同一种，我的头发会不会像你的一样又亮又闪？~
== BC0AURA ~嗯，我不知道……它对我管用是因为我头发本来就浅、有光泽，可你的偏深。我想你得用更强些的。而且也不会有这么好看的光泽。~
== %IMOEN_BANTER% ~哦，那太可惜了。不过也还好。要是我头发像你那样闪闪发亮，偷偷摸摸可就难了！~
== BC0AURA ~嘿嘿。这话不假。~
EXIT

CHAIN IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Class("%IMOEN_DV%",MAGE_ALL)
!Class("C0Aura",MAGE_ALL)
Global("C0AuraImoen3","GLOBAL",0)~ THEN BC0AURA C0AuraImoen3
~你现在是法师了，是吧，爱蒙？那一定很好。~
DO ~SetGlobal("C0AuraImoen3","GLOBAL",1)~
== %IMOEN_BANTER% ~对，棒极了……等等，慢着，你不会是嫉妒了吧？~
== BC0AURA ~什么？不，我——嗯，好吧。我真的很想知道那是什么感觉。感觉就像昨天你还在从我口袋里偷糖，然后突然——*砰*！魔法。你让它看着那么容易。~
== %IMOEN_BANTER% ~真的？嗯。我想对每个人来说不一样。不过我以为你也会用魔法……你不会吗？~
== BC0AURA IF ~Class("C0Aura",CLERIC_ALL)~ THEN ~不像你那样。符文铭刻……不一样。而且，嗯，我学来用神术的那些祷文也不太一样。光凭双手，你能做的远比我多。~
== BC0AURA IF ~!Class("C0Aura",CLERIC_ALL)~ THEN ~不像你那样。符文铭刻……不一样。光凭双手，你能做的远比我多。~
== %IMOEN_BANTER% ~当然，可……你也一样啊。我是说，你能做出那么多我做不出来的东西。~
== BC0AURA ~对……你说得大概对。不过……我还是想用自己的手指引导一次奥术力量……就一次。~
== %IMOEN_BANTER% ~我打赌你总有一天会的。我是说，对你来说有什么是不可能的？~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(DUNGEON)
Global("C0AuraImoen4","GLOBAL",0)~ THEN %IMOEN_BANTER% C0AuraImoen4
~啊！鬼！~
DO ~SetGlobal("C0AuraImoen4","GLOBAL",1)~
== BC0AURA ~呀！哪儿，哪儿？~
== %IMOEN_BANTER% ~哈哈！骗到你了！~
== BC0AURA ~哈……螺母和螺栓啊，爱蒙！你差点把我魂吓出来！~
== %IMOEN_BANTER% ~可你看见你跳得多高了吗？太棒了！我都不知道你能跳那么高。~
== BC0AURA ~嗯，那是因为我得去抓住差点跳出身体的我的灵魂！我或许命长，可你能不能别想着给我减去几十年？~
== %IMOEN_BANTER% ~好，好……嘿，看那边。那是什么？~
== BC0AURA ~什么是什么？我什么都没看见……~
== %IMOEN_BANTER% ~*嗷——呜——呜——呜——呜！*~
== BC0AURA ~哎——呀！哦，你太坏了！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen5","GLOBAL",0)~ THEN %IMOEN_BANTER% C0AuraImoen5
~你怎么既不擅长潜行也不擅长扒窃？你是贼，对吧？~
DO ~SetGlobal("C0AuraImoen5","GLOBAL",1)~
== BC0AURA ~我不是贼！我是修补匠。~
== %IMOEN_BANTER% ~可你也能像我一样开锁。那不正是贼干的事吗？~
== BC0AURA ~不，嗯……是。可那只是你摆弄机关时顺手学来的本事！你看见锁，我看见的是待拆解的谜题。~
== %IMOEN_BANTER% ~嗯。我从没这么想过。~
== BC0AURA ~再说，潜行和扒窃你不都已经包办了吗？——不是说我在纵容。你从我口袋里偷的糖可够多了。~
== %IMOEN_BANTER% ~嘿，我只偷那些活该被偷的人！还有没它也活得下去的人。还有带甜食的人。*眨眼* 总之，这样如何：既然我们基本只差一步就是同行，你管摆弄机关……~
== BC0AURA ~……你管偷东西？~
== %IMOEN_BANTER% ~对！我们会是绝佳的一对。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
LevelGT(Myself,6)
LevelGT("C0Aura",6)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraImoen6","GLOBAL",0)~ THEN %IMOEN_BANTER% C0AuraImoen6
~嘿，奥拉。介意我问你件事吗？~
DO ~SetGlobal("C0AuraImoen6","GLOBAL",1)~
== BC0AURA ~如果是问我还有没有糖，我没有。~
== %IMOEN_BANTER% ~不……不是那个。这次是正经事。你觉得我们是不是有点太擅长……你知道，太擅长杀人了？~
== BC0AURA ~哦。*叹气* 我怕这事迟早会被提起。~
== %IMOEN_BANTER% ~你要不想谈，我明白。我也不太想谈。~
== BC0AURA ~不，这值得讨论。我很高兴是你提起来的。~
== %IMOEN_BANTER% ~那……你觉得呢？我们是不是？~
== BC0AURA ~我想是。到现在有多少了？十个、五十个、一百个？我数不清了。~
== %IMOEN_BANTER% ~我也是。想到我第一次杀人还在不久前，如今却几乎成了本能，真怪。当我射杀的是丑陋的怪物、正想伤我的人，那容易，可是……~
== BC0AURA ~夺人性命从来不轻松。我想我们是一样的，只要能避开，宁可不动手。而每次我做不到的时候……事后我的手都会抖个不停。~
== %IMOEN_BANTER% ~你觉得这事会变得容易些吗？~
== BC0AURA ~我不知道。一方面，我怕它不会，我会永远受这些感受折磨。可要是它真的变容易了……~
== %IMOEN_BANTER% ~……你就开始怀疑自己是不是还清醒？~
== BC0AURA ~*叹气* 正是。你觉得哪种可能更可怕？~
== %IMOEN_BANTER% ~……我不想再谈这个了。我后悔提起它。~
== BC0AURA ~嗯……要不改聊哪种口味的糖最好？~
== %IMOEN_BANTER% ~哦，对，那好多了。*低语* 顺带说，是柠檬味。~
EXIT

// Jaheira
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(FOREST)
Global("C0AuraJaheira1","GLOBAL",0)~ THEN BC0AURA C0AuraJaheira1
~哎哟！你干嘛敲我头，贾希拉？~
DO ~SetGlobal("C0AuraJaheira1","GLOBAL",1)~
== %JAHEIRA_BANTER% ~提醒你看清周围。你太专心于正在做的那个装置，差点踩到那朵蘑菇。~
== BC0AURA ~哦……螺母和螺栓，我看见了。那不是……~
== %JAHEIRA_BANTER% ~是。它的孢子会感染你的皮肤。最好的情况，是让你起两周难看的疹子。可若得不到及时处理……截掉那条肢体都好过它的结果。~
== BC0AURA ~呃……太谢谢你了。我以前只在书里见过那种蘑菇。我没想到这里会长……~
== %JAHEIRA_BANTER% ~我本以为像你这样的人，在踏上这样的旅途前会先做相应的功课。~
== BC0AURA ~你说得对。我得空时要重新读读本地植物志。谢谢你提醒。~
== %JAHEIRA_BANTER% ~只要你记得。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
ClassLevelGT("Jaheira",PRIEST,6)
Global("C0AuraJaheira2","GLOBAL",0)~ THEN %JAHEIRA_BANTER% C0AuraJaheira2
~你在我面前越来越紧张了，奥拉。怎么了？~
DO ~SetGlobal("C0AuraJaheira2","GLOBAL",1)~
== BC0AURA ~呃，没——没什么……~
== %JAHEIRA_BANTER% ~说真的，丫头，你觉得我这么容易被糊弄？若我的举止有什么让你害怕，就说出来。~
== BC0AURA ~只是……你现在能变成熊了，对吧？~
== %JAHEIRA_BANTER% ~凭自然赐我的力量，是的，我能暂时化作她孩子们的模样。那又如何？~
== BC0AURA ~嗯，别往坏处想，贾希拉……我很喜欢你，可我，呃……~
== %JAHEIRA_BANTER% ~可是……？~
== BC0AURA ~我——我受不了熊！我恨它们，它们吓我，我不想待在熊附近。你能不能在我身边时永不变成熊？~
== %JAHEIRA_BANTER% ~哦，说真的，我没听过比这更荒唐的话。熊只是自然共同体的一部分，和你我一样。有什么可怕的？~
== BC0AURA ~我知道，我只是希望它们离我越远越好。~
== %JAHEIRA_BANTER% ~*叹气* 总有一天我们得处理一下你这个恐惧。~
EXIT

// Kagain
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKagain1","GLOBAL",0)~ THEN %KAGAIN_BANTER% C0AuraKagain1
~你那些机巧玩意像是蠢人的活计，丫头，可外头有的是蠢人愿意为这类东西花大钱。~
DO ~SetGlobal("C0AuraKagain1","GLOBAL",1)~
== BC0AURA ~我不太喜欢你这话里的意思，卡盖恩。~
== %KAGAIN_BANTER% ~我说不清得更明白了，丫头。你的手艺本可以是通往大富的钥匙，你却全留给自己，满足于空钱袋。是浪费，就是浪费。~
== BC0AURA ~我们有些兰坦人确实靠卖造物赚钱，可我不。不再卖了。我见过它们被用错方向时能造成什么样的破坏，我不要那样。~
== %KAGAIN_BANTER% ~哎，那关你什么事，丫头？人总会拿自己有的东西去毁掉敌人。有你那些玩具也好，没有也好。~
== BC0AURA ~也许你说得对，可我不想看见我的作品沾血。这事不谈了，卡盖恩。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKagain2","GLOBAL",0)~ THEN %KAGAIN_BANTER% C0AuraKagain1
~你那张弓……若我没看错，是矮人淬炼的秘银。熔了卖能换不少钱。~
DO ~SetGlobal("C0AuraKagain2","GLOBAL",1)~
== BC0AURA ~嘿，别动手！~
== %KAGAIN_BANTER% ~*笑* 跟你开玩笑罢了，丫头。整张卖更值钱。~
== BC0AURA ~我是发明家，不是武器商，卡盖恩。再说，这张弓……对我很重要。它于我比金子更值。~
== %KAGAIN_BANTER% ~啐。情分在生意场上带你走不远，丫头。最好在流落街头挨饿之前学会这点。~
EXIT

// Khalid
CHAIN IF ~InParty("Khalid")
InParty("Jaheira")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKhalid1","GLOBAL",0)~ THEN BC0AURA C0AuraKhalid1
~我的荧光粉在哪儿？我发誓上一批还剩了些。难道我已经用完了？~
DO ~SetGlobal("C0AuraKhalid1","GLOBAL",1)~
== %KHALID_BANTER% ~不——不是，奥拉。我一直替你拿着。还有你的银金合金板和一——一盒洋甘菊茶。这——这儿，拿回去。~
== BC0AURA ~哦！太对不起了，卡立德，我全忘了。你替我背了好久！~
== %KHALID_BANTER% ~不——不麻烦。我总说，这——这类事就交给最合适的人。~
== BC0AURA ~谢谢你，你真是救了我一命。我一钻进活儿里，别的事就全忘了。比如这套炼金器具。~
== %KHALID_BANTER% ~我看你还有石——石灰岩和灯油。你是在调——调发光药水吗？~
== BC0AURA ~嗯？是，正是！我想这样就不必带火把了。我没想到你会懂……呃，我是说，考虑到你是战士……~
== %KHALID_BANTER% ~竖琴手须掌握本职之外的某些技艺。不过这——这个配方我是从贾希拉那儿学的。~
== BC0AURA ~贾希拉真是适合当导师的那种人，对吧？我觉得连我都能从她那儿学到很多。虽然她有时挺吓人。她吓过你吗？~
== %KHALID_BANTER% ~常有的事。*轻笑* 可——可人会渐渐觉得那是种可爱。她总是一片好——好心。我知道。~
== BC0AURA ~你一定很爱她。~
== %KHALID_BANTER% ~胜——胜过生命本身。~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKhalid2","GLOBAL",0)~ THEN BC0AURA C0AuraKhalid2
~我只是想告诉你，你有多勇敢，卡立德。~
DO ~SetGlobal("C0AuraKhalid2","GLOBAL",1)~
== %KHALID_BANTER% ~我——我？肯定不会……别人都很乐意提醒我是个懦夫。~
== BC0AURA ~不，真的，我是认真的。懦夫是我，每次遇上战斗都保持距离。你是带着恐惧冲进战阵，为护住我们。~
== %KHALID_BANTER% ~你——你太好了。~
== BC0AURA ~我只是说心里话。希望我能从你的榜样里学到些东西。~
EXIT

// Kivan
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKivan1","GLOBAL",0)~ THEN %KIVAN_BANTER% C0AuraKivan1
~你跟谁学的弓箭，奥拉？~
DO ~SetGlobal("C0AuraKivan1","GLOBAL",1)~
== BC0AURA ~我姐姐朱诺教了我基本功。我在科祖库拉时，也受过导师丽华小姐的训练。~
== %KIVAN_BANTER% ~那解释了你的技法为何与我见过的都不同。我很少遇到极东之地来的人。~
== BC0AURA ~我真算不上科祖库拉弓道的好例子……论身量和力气，我甚至用不了你那种水平的弓，基万。主要靠的是我这张弓——太阳射手——在做功。~
== %KIVAN_BANTER% ~我明白了……形状很像反曲弓，分体弓臂让开弓更省力，减少了拉弦的负担……你造这张弓是为了迁就自己的需求。我很惊讶这种设计竟然存在。~
== BC0AURA ~若非用了特别材料，它不成的。我并不为必须弥补自身不足、却始终毫无长进而自豪，可我父母竭尽所能弄到了我需要的东西，好让我能护住自己。~
== %KIVAN_BANTER% ~那么它是你父母之爱、是他们想让你平安的心意的象征。这没什么可羞耻的。~
== BC0AURA ~也许……可还是……没有这张弓在身边，我常觉得自己太弱。我怕我会拖累队伍。~
== %KIVAN_BANTER% ~若你愿意，我很乐意教你射术。虽然我或许不熟悉你练的基本功，我会尽力相助。~
== BC0AURA ~谢谢，基万……我可能会来找你。~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraKivan2","GLOBAL",0)~ THEN BC0AURA C0AuraKivan2
~你在追猎某人，基万？~
DO ~SetGlobal("C0AuraKivan2","GLOBAL",1)~
== %KIVAN_BANTER% ~塔佐克。一个率领匪帮祸害此地的凶魔。他杀害了我的德赫莉安娜。~
== BC0AURA ~你打算杀他吗？为了报仇？~
== %KIVAN_BANTER% ~那是我留在这片土地上的唯一理由。~
== BC0AURA ~我……明白了。那我想我们有些相像……可也不同。~
== %KIVAN_BANTER% ~你什么意思，奥拉？~
== BC0AURA ~我也在追一个杀了与我亲近之人的人……可直到如今，我都不确定找到他时我会怎么做。也许我没有你那样的决心。~
== %KIVAN_BANTER% ~不。那是因为你比我更善良、更纯真。以此为荣吧……因为你不该被逼上我必须走的那条路。~
EXIT

// Minsc
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMinsc1","GLOBAL",0)~ THEN %MINSC_BANTER% C0AuraMinsc1
~布布觉得他会喜欢你的穆菲，奥拉。~
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",1)~
== BC0AURA ~你确定？穆菲对任何比它小的东西都有点凶。~
== %MINSC_BANTER% ~不必担心，布布虽小，它的心却比……不，布布！别跟那只友善的松鼠打架！~ [GAM_48]
== BC0AURA ~住手，穆菲！对布布好点！别欺负人！~ [GAM_48]
== %MINSC_BANTER% ~*吱吱* *尖叫*~ [GAM_48]
== BC0AURA ~停……停下，穆菲，停……好了，乖孩子。*叹气* 对不起，明斯克，看来它们还得慢慢习惯。~
== %MINSC_BANTER% ~明斯克得好好训布布一顿。~
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMinsc1","GLOBAL",1)~ THEN BC0AURA C0AuraMinsc2
~呃……布布现在冷静下来了吗，明斯克？我能，呃，摸摸它吗？~
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",2)~
== %MINSC_BANTER% ~布布一直睁大双眼警戒着你的穆菲，奥拉，但明斯克觉得现在安全了。~
== BC0AURA ~好，那好……我带了和解的礼物来。看见没？是，呃……一整袋……~
== %MINSC_BANTER% ~葵花籽！看布布的鼻子期待地抽动！~
== BC0AURA ~嘿嘿。我就希望它喜欢。去吧，小布布。~
== %MINSC_BANTER% ~*吱吱*~ [GAM_48]
== %MINSC_BANTER% ~布布说谢谢你。~
== BC0AURA ~不客气。我在盒子里留了些种子，万一要用就种下收成。我家的向日葵是兰坦最好的，籽又香又有营养。~
== %MINSC_BANTER% ~啊……看布布多快就吃光了！看它的心情好了多少！~
== BC0AURA ~不知现在把穆菲拿出来安不安全……哦。布布睡着了。我还是别吵他，明斯克。改天吧。~
EXIT

// Montaron
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMontaron1","GLOBAL",0)~ THEN %MONTARON_BANTER% C0AuraMontaron1
~你那一对儿不错。~
DO ~SetGlobal("C0AuraMontaron1","GLOBAL",1)~
== BC0AURA ~什——什么？~
== %MONTARON_BANTER% ~嘿，别这么惊恐，小丫头，我说的是你手里那对工具。那玩意儿拿来当刑具可绝了。~
== BC0AURA ~这话听着会更好吗？那……太可怕了！我绝不会把吃饭的家伙那样用！~
== %MONTARON_BANTER% ~你不会的。不过我脑子里有主意……~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraMontaron2","GLOBAL",0)~ THEN %MONTARON_BANTER% C0AuraMontaron2
~你生得一张俏脸，丫头。天真。像洋娃娃。就这么弄花了怪可惜的。~
DO ~SetGlobal("C0AuraMontaron2","GLOBAL",1)~
== BC0AURA ~离我远点……我不清楚你打什么主意，可我不想跟你有任何牵扯。~
== %MONTARON_BANTER% ~放松点，小丫头。我还没那么堕落。我只是觉得该提醒你一声。你太软了，干不了这粗活。~
== BC0AURA ~不是那回事……我在这儿不是为了干*那些*事。你干的那些可怕的事。~
== %MONTARON_BANTER% ~可惜。你要是肯用心，会是把好手。~
== BC0AURA ~我说了我不干！~
EXIT

// Neera
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraNeera1","GLOBAL",0)~ THEN %NEERA_BANTER% C0AuraNeera1
~那……聪明得不得了是什么感觉，奥拉？~
DO ~SetGlobal("C0AuraNeera1","GLOBAL",1)~
== BC0AURA ~呃……你说什么？~
== %NEERA_BANTER% ~你知道的。你一直都这么聪明、这么，嗯……擅长你那一行吗？~
== BC0AURA ~谁知道呢。你或许能叫它天赋，可我更愿意认为是我靠研读、练习和经验练出来的。还有甜食。血里有糖的时候，干活顺手些。~
== %NEERA_BANTER% ~哦。嗯，我想那跟我干的事完全不同。说到野魔法，我就是双手照熟悉的姿势一摆，然后指望有事发生。不过我也喜欢甜食。你更喜欢蛋糕还是饼干？~
== BC0AURA ~蛋糕，绝对是。松软、蓬松、甜甜的……等等，我们不是在聊各自怎么学会本事的吗？~
== %NEERA_BANTER% ~对，可是……那太无聊了。我更想聊甜食！~
== BC0AURA ~嘿嘿。好吧。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraNeera2","GLOBAL",0)~ THEN %NEERA_BANTER% C0AuraNeera2
~我以为你喜欢魔法，奥拉。你怎么对我的野魔法一句都没说？~
DO ~SetGlobal("C0AuraNeera2","GLOBAL",1)~
== BC0AURA ~嗯，我确实喜欢研究魔法理论及其运作……可你的魔法……很怪，你知道吗？~
== %NEERA_BANTER% ~以前也有人这么说过。怪在哪儿？~
== BC0AURA ~别往坏处想，可你的魔法不稳定。你做同样的动作、念同样的话，结果却随心所欲地完全不同，既无规律也无道理。~
== BC0AURA ~假设……你在解一个方程式，每次算出的答案都不一样。那没有用处。它不够可靠，没法据此得出任何结论。~
== %NEERA_BANTER% ~唉，我一向最怕算术……可这不代表你找不到能研究的东西，对吧？~
== BC0AURA ~那要看……我要是试试，你会介意吗？~
== %NEERA_BANTER% ~我是说，我确实希望我的魔法变得更可靠。只要不会伤到人就好。~
== BC0AURA ~别担心，不会的。嗯，至少应该不会……~
EXIT

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraNeera2","GLOBAL",1)~ THEN BC0AURA C0AuraNeera3
~嗯……*叹气* 不行，还不够。还需要更多……~
DO ~SetGlobal("C0AuraNeera2","GLOBAL",2)~
== %NEERA_BANTER% ~嘿，怎么了，奥拉？出结果了吗？~
== BC0AURA ~没有，还没有。数据就是不够。样本量不够大。~
== %NEERA_BANTER% ~你是说我还得为你的测试施*更多*狂野法印？再来六次，我大概就会烧起来。或者变成一群蜜蜂。~
== BC0AURA ~是，我知道……所以我才不能再向你要求更多。我想我们最好整个放弃。~
== %NEERA_BANTER% ~什——什么？你要放弃？那可不是创新者该干的事！听着，你要是需要更多法涌，我尽力。再转几次轮盘，赌一把，你懂的！~
== BC0AURA ~哦，那样的话……*咚！*~
== %NEERA_BANTER% ~嘿——嘿！我头上这是什么？什么怪桶？把它拿下来！~
== BC0AURA ~别急，只是个增幅器。按下这个按钮，你就能随意引发法涌。防护符文大概也能保你平安。~
== %NEERA_BANTER% ~说真的？我得戴着这个？它一点都不好看！你就不能做得不那么吓人吗？~
== BC0AURA ~抱歉，你还指望什么？我是拿一箱废料拼出来的。你该祈祷它别炸。~
== %NEERA_BANTER% ~等等。等等等等等等。它可能会炸？可能性大吗？~
== BC0AURA ~大概三分之一的机会。呃……我是说，不会？希望不会？~
== %NEERA_BANTER% ~*咕哝* 真不敢相信我答应了这事……~
DO ~GiveItemCreate("c0autt03","Neera",1,0,0)~ EXIT

// Quayle
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraQuayle1","GLOBAL",0)~ THEN %QUAYLE_BANTER% C0AuraQuayle1
~人人都好像认定你特别聪明，奥拉，可我不信你的脑子能比得上我的！我们得把这个问题解决掉：我们两个侏儒，谁更聪明？~
DO ~SetGlobal("C0AuraQuayle1","GLOBAL",1)~
== BC0AURA ~呃，好啊……你打算怎么评，奎尔？~
== %QUAYLE_BANTER% ~这简单得都不好笑！我们各自出一套题互相考，谁答不上的题多，谁就背上更笨那个侏儒的耻辱。~
== BC0AURA ~所以，是考试？我从学校出来后就没考过试了。不过，好啊！~
== %QUAYLE_BANTER% ~哈！好！很快这些粗人就会有证据，证明这个侏儒的智力无人能及！你等着瞧！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraQuayle1","GLOBAL",1)~ THEN %QUAYLE_BANTER% C0AuraQuayle2
~呸！你或许走到了这一步，奥拉，可我这颗了不起的脑子不会被这么轻易击败！告诉我，物体运动的三条定律是什么？给你十秒！~
DO ~SetGlobal("C0AuraQuayle1","GLOBAL",2)~
== BC0AURA ~哦，那简单。物体在受外力改变前保持静止，变化率与所用之力成正比，每个作用都有一个大小相等、方向相反的反作用。~
== %QUAYLE_BANTER% ~呃……对，那……没错……~
== BC0AURA ~我的老师们逼我把那些定律背了好些天。好，轮到我了！炼金术第十四原理。~
== %QUAYLE_BANTER% ~哦，那简单。第十四原理……十四……呃……~
== BC0AURA ~等着……还等着……~
== %QUAYLE_BANTER% ~该死！我不是炼金术士！我不知道！~
== BC0AURA ~嘿嘿。看来我又赢了你一次，奎尔。别往心里去！~
== %QUAYLE_BANTER% ~啊！这不公平！你的题太难了！~
== BC0AURA ~唉，别这样，奎尔，没那么糟。我确实最后赢了你，可我没想到你懂那么多定律和理论。你也答出了我不少题。我想你其实挺聪明的。~
== %QUAYLE_BANTER% ~对，对，幸好你知道！保持警惕，奥拉，因为下次我们再斗智，赢家必定是我！~
== BC0AURA ~嗯哼。我等着。~
EXIT

CHAIN IF ~InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraQuayle2","GLOBAL",0)~ THEN BC0AURA C0AuraQuayle3
~我一直在想，奎尔……你为什么这么需要证明自己的智力？你有学问这件事本身还不够吗？~
DO ~SetGlobal("C0AuraQuayle2","GLOBAL",1)~
== %QUAYLE_BANTER% ~要是你不炫耀自己的脑子比别人强多少，那它有什么用？~
== BC0AURA ~你就不能……你知道，把它用在更好的地方？改善别人的生活？~
== %QUAYLE_BANTER% ~有什么意义？我一走，人人都跟我来时一样蠢。唯一能永远改善世事的办法，就是让所有人看清他们到底有多蠢！~
== BC0AURA ~这逻辑真离谱。~
== %QUAYLE_BANTER% ~*叹气* 老实说，奥拉，作为本队，嗯，第二聪明的侏儒……你就从没想过炫耀一下你那强大的脑力？就一点点？~
== BC0AURA ~嗯……没有，真没想过。我一直被一件事推着走：我知道我并非什么都懂。就算我全懂了……我也不必靠炫耀去证明，你知道吗？~
== %QUAYLE_BANTER% ~哈！年轻，太年轻太天真。不过也算可敬，我想。很快我们就能看到谁对谁错！~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraRasaad1","GLOBAL",0)~ THEN BC0AURA C0AuraRasaad1
~*喘* *喘* 哇……跟一……一队人旅行真累。只有我一个人的时候……从没跑这么多……我们能慢点吗？~
DO ~SetGlobal("C0AuraRasaad1","GLOBAL",1)~
== %RASAAD_BANTER% ~你该练练体能，朋友。我们前面还有很长路要走。~
== BC0AURA ~我……*喘* 抱歉，只是……你跑得太快了。我习惯慢慢来。你是怎么做到的？~
== %RASAAD_BANTER% ~靠严苛的锻炼。正如你锻炼心智，我必须以无尽的训练把身体逼到极限。~
== BC0AURA ~嗯……那很有意思。兰坦没多少人有你这种训练身体的门道。介意我观摩你的训练吗？我或许……*喘* 能找出最适合自己的训练方式。~
== %RASAAD_BANTER% ~当然。我很乐意相助。~
EXIT

// Safana
CHAIN IF ~InParty("Safana")
See("Safana")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSafana1","GLOBAL",0)~ THEN BC0AURA C0AuraSafana1
~你真美，萨法娜小姐。~
DO ~SetGlobal("C0AuraSafana1","GLOBAL",1)~
== %SAFANA_BANTER% ~谢谢你指出明摆着的事，亲爱的。你怎么不拿些更机灵的赞美来夸我？你那个小脑袋最擅长这个，不是吗？~
== BC0AURA ~我，呃，不知道还该说什么。我只是觉得你美。~
== %SAFANA_BANTER% ~我*以前*美？你对人真是没救，亲爱的，是吧？看来你除了要紧的事，什么都聪明。~
== BC0AURA ~嗯……呃……对不起……~
== %SAFANA_BANTER% ~*叹气* 走开，亲爱的。~
EXIT

// Shar-Teel
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSharTeel1","GLOBAL",0)~ THEN %SHARTEEL_BANTER% C0AuraSharteel1
~挺起脊梁来，丫头。光看你缩在比你大的人脚边，我就恶心。~
DO ~SetGlobal("C0AuraSharTeel1","GLOBAL",1)~
== BC0AURA ~嗯……我是侏儒。个子小这事，我怕也没什么办法。~
== %SHARTEEL_BANTER% ~若你有那股气势，身量毫无意义。我或许没有骇人的蛮力，可我照样能在身心上把人踩在脚下。~
== BC0AURA ~我不想踩任何人。我只想我的作品被好人赏识，不管他们是谁。~
== %SHARTEEL_BANTER% ~看见没？这就是我说的怯懦。你只为别人的认可而活。你把自己弄得一无是处！~
== BC0AURA ~你错了。我就是我想成为的人。~
EXIT

// Skie
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSkie1","GLOBAL",0)~ THEN %SKIE_BANTER% C0AuraSkie1
~你这身衣服真可爱，奥拉。这是兰坦的典型装束吗？~
DO ~SetGlobal("C0AuraSkie1","GLOBAL",1)~
== BC0AURA ~这个？不，不太算。这只是我家的风格。别人觉得我们是一群怪人。~
== %SKIE_BANTER% ~为什么？时髦有什么不对？想让自己好看不是正常的吗？~
== BC0AURA ~嗯……我们那片土地喜欢把逻辑放在第一位。几乎做什么都要经过大量思考和推理。多数兰坦人觉得时髦不过是虚荣。所以他们懒得理会。~
== %SKIE_BANTER% ~哦，胡说！看看你，这么讲究穿着也没拖累你，对吧？那些傻侏儒根本不懂自己在说什么。~
== BC0AURA ~不过我明白他们的意思。从理性的角度，我也不觉得这有什么真正的意义。我只是喜欢挑衣服、染头发。这确实没什么真正的意义。~
== %SKIE_BANTER% ~我想是吧。你想太多了，奥拉。有时候少想点更好，你知道吗？~
== %ELDOTH_BANTER% IF ~InParty("Eldoth")~ THEN ~是啊，你最够格说这话，我最亲爱的。~
== %SKIE_BANTER% IF ~InParty("Eldoth")~ THEN ~你太刻薄了，埃尔多斯！~
EXIT

// Tiax
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraTiax1","GLOBAL",0)~ THEN %TIAX_BANTER% C0AuraTiax1
~你，奥拉！你和你的发明总有一天要侍奉提亚克斯！~
DO ~SetGlobal("C0AuraTiax1","GLOBAL",1)~
== BC0AURA ~呃……好啊。反正你要是好好问，我也不会不借你东西……嗯，除非你打算真去把人伤了。那就不玩笑了。~
== %TIAX_BANTER% ~问？问？！伟大的提亚克斯不“问”！他下令！他命令！他要求！他，呃……~
== BC0AURA ~“恳求”？~
== %TIAX_BANTER% ~呃，对！那个也算！现在，提亚克斯命……不，不，请……对，就是这样……请你以，咳，别的方式来侍奉他……~
== BC0AURA ~呃，我不知道你在说什么，而且我想我也不想知道。回头见，提亚克斯。~
== %TIAX_BANTER% ~等等！你以为你要去哪儿？！提亚克斯还没说完！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraTiax2","GLOBAL",0)~ THEN %TIAX_BANTER% C0AuraTiax2
~等提亚克斯统治世界的那天到来，你会发现他对自己升位前侍奉得好的人是慷慨的。记住这话，奥拉！你最好赶快补救，因为我统治之日已近！~
DO ~SetGlobal("C0AuraTiax2","GLOBAL",1)~
== BC0AURA ~我不明白，提亚克斯。你为什么这么执迷于统治世界？你知道世界有多大吗？从托瑞尔这一头到那一头，从费伦到卡拉图，那全部的距离？我想不出那有什么好玩的。~
== %TIAX_BANTER% ~别担心，等提亚克斯完成西瑞克的谕令、成为诸国度的统治者，他必定会赐予提亚克斯治理所需的相应身量！你会看到的。你会看到的！~
== BC0AURA ~我会看到什么？~
== %TIAX_BANTER% ~嘿，嘿嘿嘿嘿……~
== BC0AURA ~……好吧。~
EXIT

// Viconia
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraViconia1","GLOBAL",0)~ THEN %VICONIA_BANTER% C0AuraViconia1
~别让我看见你，地表的废物。你那身刺眼的衣裳碍眼。~
DO ~SetGlobal("C0AuraViconia1","GLOBAL",1)~
== BC0AURA ~唉，这话太狠了。你真那么讨厌粉色？~
== %VICONIA_BANTER% ~你若在幽暗地域，没等你叫出声，掠食的野兽就已经扑上来了。~
== BC0AURA ~幽暗地域听起来是个很糟的住处。你离开了，一定很高兴。~
== %VICONIA_BANTER% ~每看一刻地表居民缺生存本能的样子，高兴就少一分。你能活这么久，真是怪事。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraViconia2","GLOBAL",0)~ THEN %VICONIA_BANTER% C0AuraViconia2
~幽暗地域的深侏儒是阴郁悲观的族类。相比之下你那令人难以置信的活力，看着真让人不适。~
DO ~SetGlobal("C0AuraViconia2","GLOBAL",1)~
== BC0AURA ~我从没见过我地下的同族。他们是什么样子？~
== %VICONIA_BANTER% ~我亲身认识的极少。不过若不计你同样的矮小，你们再不同也没有了……除了干活的劲头。这一点我承认。~
== BC0AURA ~你是认真的吗？我是说最后那句。~
== %VICONIA_BANTER% ~哼……有些事连我也无法否认。别指望我给你超出你应得的称赞。~
EXIT

// Xan
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXan1","GLOBAL",0)~ THEN %XAN_BANTER% C0AuraXan1
~你的工作从不让你难过吗？~
DO ~SetGlobal("C0AuraXan1","GLOBAL",1)~
== BC0AURA ~什么？不，从不。你为什么问这个？~
== %XAN_BANTER% ~你造出这片土地上无人能造的奇妙之物，这我无法否认。可这些东西终将如我们一样化为尘土。这不徒劳吗？~
== BC0AURA ~当然不，赞！每一项新发明、每一次科学尝试，无论多小，总能得到知识。那怎么会徒劳？~
== %XAN_BANTER% ~可在这个末日近在眼前的地方，这样的知识对你有什么用？当你所学的一切随你的逝去而消散，你不难过吗？~
== BC0AURA ~你看错了方向，赞。我不只为我自己求知识，也为后来走同一条路的人。我有天赋——别人是这么说的——学东西比多数人容易得多。若我能帮别人省下他们本要花几个月甚至几年才弄懂的东西，那我已经做了一些比我活得更久的好事。~
== %XAN_BANTER% ~可敬，我想，虽则乐观得无可救药。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXan2","GLOBAL",0)~ THEN %XAN_BANTER% C0AuraXan1
~你让我想起我的表兄埃雷凡。爱冒险、乐观，好奇心多到能让人类孩子羞愧。~
DO ~SetGlobal("C0AuraXan2","GLOBAL",1)~
== BC0AURA ~那听起来像我。你这位表兄现在在哪儿？~
== %XAN_BANTER% ~在阿尔凡多……我祈祷如此。多年前他北入冰风谷那地狱般的荒原，就倒在了那里。~
== BC0AURA ~哦……太抱歉了，赞。那对你一定很难。~
== %XAN_BANTER% ~也许。就亲族关系而言，我们算亲近。可我告诉过他，他那番作为总有一天要了他的命。他笑了。最后谁对了？~
== BC0AURA ~可是……我们总有一天都要死，对吧？短暂而充实的一生，难道不比漫长而乏味的一生更好？~
== %XAN_BANTER% ~我很久以前就断定：抓紧生命中少数几样乐趣，只会让那不可避免的事更痛苦。*叹气* 生命是空洞的。这一点无可否认。~
== BC0AURA ~你老是叹气，赞。可我觉得笑一笑会轻松些。~
EXIT

// Xzar
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXzar1","GLOBAL",0)~ THEN %XZAR_BANTER% C0AuraXzar1
~你有些漂亮玩具，小奥拉。我想你那一包里没有剥皮刀吧？~
DO ~SetGlobal("C0AuraXzar1","GLOBAL",1)~
== BC0AURA ~呃……没有？~
== %XZAR_BANTER% ~嗯。失望。徒手切肉割筋有时真烦人，尤其是样本不再尖叫之后。那骨髓吸取器呢？~
== BC0AURA ~没有。我连听都没听过。~
== %XZAR_BANTER% ~粪便抽取器？你至少有一件那个吧？~
== BC0AURA ~恶！没有！~
== %XZAR_BANTER% ~以我可怜的妈妈离去的灵魂起誓，奥拉！若你手里没有这些必备工具，你算什么发明家？~
== BC0AURA ~呃……正常的那个？我不知道。~
== %XZAR_BANTER% ~那就来吧，最好快点动手！我要那些工具在睡前备好。那么多实验因缺少合适器材而搁置，时间又那么少……~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraXzar2","GLOBAL",0)~ THEN %XZAR_BANTER% C0AuraXzar2
~你拿来当宠物的这台机器真有意思，最亲爱的奥拉。我可以近些看看吗？~
DO ~SetGlobal("C0AuraXzar2","GLOBAL",1)~
== BC0AURA ~呃……我不太确定，不过好吧……你可以拿他一会儿。我就在旁边看着。~
== %XZAR_BANTER% ~哎呀，哎呀，你到底怎么做到的？全是金属塑成，却非常逼真。你把一只活鼠的灵魂束缚在这金属笼里了吗？~
== BC0AURA ~我不能告诉你怎么做的。那是我最大的秘密。~
== %XZAR_BANTER% ~猜猜总不犯法。若不是束缚灵魂，那么……也许是你取了它的器官，让尸体动起来，再镀上青铜？~
== BC0AURA ~那是你会干的事，克萨。真恶心。~
== %XZAR_BANTER% ~哦，对。确实是。~
EXIT

// Yeslick
CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(DUNGEON)
Global("C0AuraYeslick1","GLOBAL",0)~ THEN %YESLICK_BANTER% C0AuraYeslick1
~跟紧点，丫头。暗处藏着什么野兽，永远说不准。~
DO ~SetGlobal("C0AuraYeslick1","GLOBAL",1)~
== BC0AURA ~我探过不少地城，耶斯里克。我会没事的。~
== %YESLICK_BANTER% ~嗯，我信你，可你终究是个年轻人。作为你的长辈，这是我的责任。~
== BC0AURA ~你很体贴，耶斯里克，我很感激。你就跟我父亲一样。他甚至帮我造了这张弓，好让我能护住自己。~
== %YESLICK_BANTER% ~我说他做得对。每个矮人从小被教导要珍视家人。我的家人或许没了，可那些价值还在。放心，丫头，只要我站着，你就不会受伤。~
EXIT

CHAIN IF ~InParty("Yeslick")
See("Yeslick")
See("C0AUIN3")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraYeslick2","GLOBAL",0)~ THEN BC0AURA C0AuraYeslick2
~耶斯里克？你看着心事重重的。~
DO ~SetGlobal("C0AuraYeslick2","GLOBAL",1)~
== %YESLICK_BANTER% ~嗯？抱歉，丫头，我只是在欣赏你这台奇妙的造物。好手艺。~
== BC0AURA ~它有点……不太符合它常规形态的非常规版本。我不得不用尽可能少的材料把它改成作战用，不过我觉得我已经尽力了。~
== %YESLICK_BANTER% ~它打起来可狠，这没得说。我只是在想，要是配上正宗矮人锻造会怎样。想象一下，丫头，你那台造物用矮人锻的精金塑成！~
== BC0AURA ~那肯定了不起。可惜我没有那份材料……~
== %YESLICK_BANTER% ~可惜我的矿都沉到水里去了。不然我们能一起做出好东西。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraYeslick3","GLOBAL",0)~ THEN %YESLICK_BANTER% C0AuraYeslick3
~丫头，听说你的族人乘飞船穿行天际，是真的吗？~
DO ~SetGlobal("C0AuraYeslick3","GLOBAL",1)~
== BC0AURA ~你说飞艇？是真的。不过没人们以为的那么常见。我们多数还是靠马车或步行。~
== %YESLICK_BANTER% ~唉……光是想到待在那种装置里，这矮人的肚子就翻腾……呃，不是冒犯你的族人。我太习惯地下了。~
== BC0AURA ~你怎么会说起这个？我没想到你连飞艇这种事都知道。~
== %YESLICK_BANTER% ~嗯，说来话长，丫头，我就讲短的。我年轻时认识一个古怪的侏儒，他有一艘老式飞艇。呃……我记得他叫“菲德尔本德”。~
== BC0AURA ~我好像也认识一个菲德尔本德……不过我记的是“她”。那这位呢？~
== %YESLICK_BANTER% ~奥罗提亚是个地下氏族，对那侏儒的怪机器没什么兴趣，可有几个人问了问题。有人甚至出大价钱买他的船，他拒绝了，说那是他的继承之物、祖传遗物……我们矮人尊重传统，所以当时就没再多问。~
== BC0AURA ~这说得通……在兰坦，连最富的家族也只拥有一艘私人飞艇，且视之为最珍贵的财产。不过我记的菲德尔本德家住在北方。也许他们有从我家乡来的远亲？~
== %YESLICK_BANTER% ~唉，谁知道呢，丫头。我只是觉得你或许会感兴趣。也许你哪天会遇上那人，自己去弄明白。~
EXIT