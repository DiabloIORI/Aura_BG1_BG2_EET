CHAIN
IF ~InParty("L#FALD")
Range("L#FALD",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FALD",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Faldorn","GLOBAL",0)~ THEN L#FALB banter1
~奥拉，被那些冰冷、无生命的金属伙伴围着，你心里就安稳吗？它们只会助长软弱。~
DO ~SetGlobal("C0AuraL#Faldorn","GLOBAL",1)~
== BC0AURA2 ~我的造物就是我的力量，法尔多恩。我知道你不会照我的想法看，可它跟你与自然的联结并没多大不同。~
== L#FALB ~真是愚蠢。金属的磨砺声想必已让你听不见母神的召唤了。~
== BC0AURA2 ~*叹气* 法尔多恩，我不知道还能对你讲什么。你不会信的，可我确实敬重自然的秩序，所有兰坦人都是如此。我相信知识这礼物是要我们造物，而以自然的赐予让自己前进，才是对她最大的敬重。~
== L#FALB ~这念头是傻的，而许多人会乐于把它丢掉，只为拿来谋私利。不过你肯想这些事……还算比较值得敬佩。别人连这一点都不肯给。~
== BC0AURA2 ~好极了。我们至少能同意各持己见吧？~
== L#FALB ~我什么都没有答应。还没有。我会继续观察，看你是否如你所称那样敬重母神的赐予。~
EXIT

CHAIN
IF ~InParty("L#FALD")
Range("L#FALD",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FALD",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Faldorn","GLOBAL",1)~ THEN L#FALB banter2
~你没有狂怒，奥拉。那会是你的败亡。若因境遇使你与群伙分离，你活不长久。~
DO ~SetGlobal("C0AuraL#Faldorn","GLOBAL",2)~
== BC0AURA2 ~我不需要狂怒也能活下去。我们既被赐予人的智慧，我相信我们早已进化到不必如此。~
== L#FALB ~我们不能就这样丢掉那些让我们活下来的东西！正如狂怒让野外的掠食者捕到猎物，对我们这些“人”而言也没什么不同。别把自己看得比那些不靠文明也活得兴盛的兽类更高。~
== BC0AURA2 ~可我们有权选择自己想怎么活。这正是它与“活下来”的区别。~
== L#FALB ~我很快就对纠正你的路子不抱希望了。你虽自认开明，在真正要紧的事上却全然无知。~
EXIT

CHAIN
IF ~InParty("L#FALD")
Range("L#FALD",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FALD",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#FaldornToB","GLOBAL",1)~ THEN L#FAL25B bantertob
~等<CHARNAME>命运的这场试炼了结，你会回家去，是吗，奥拉？~
DO ~SetGlobal("C0AuraL#FaldornToB","GLOBAL",2)~
== BC0AURA2 ~当然，法尔多恩。等我先再走几个地方……不过用不了多久我就会再见兰坦。~
== L#FAL25B ~你必须把我的道理带给你的建造师们，好让他们将来的造物能容纳母神的孩子，而不是伤害它。~
== BC0AURA2 ~我可以做，法尔多恩，可我不觉得他们还不懂你说的那一类道理。兰坦自被创造以来便与自然谐居。~
== L#FAL25B ~哼。这种事我只有亲眼看到才会信。无论如何，跟他们说去吧。也许我们至今的合作能生出些好处。~
== BC0AURA2 ~好吧，可我真希望我们能像朋友一样合作。那样话也更好传达。~
EXIT
