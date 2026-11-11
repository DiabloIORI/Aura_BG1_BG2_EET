CHAIN
IF ~InParty("L#XZE")
Range("L#XZE",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#XZE",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Xzele","GLOBAL",0)~ THEN L#XZEB banter1
~你做出的东西真多，真迷人，奥拉。连我都不知道纸上的构想能这么轻易、这么快变成实物。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Xzele","GLOBAL",1)~
== BC0AURA2 ~谢谢你，泽莱。~
== L#XZEB ~你可曾希望过自己能永远做东西下去？~
== BC0AURA2 ~嗯，当然……只是大概不是你说的那种方式。~
== L#XZEB ~假如你有机会在肉身死后继续活下去，继续你的工作呢？~
== BC0AURA2 ~我不能。事实上，那是被明令禁止的。兰坦人不许自己人利用死灵术，哪怕是你想的那种方式。~
== L#XZEB ~真有意思……我本以为有永恒的时间去求知识，会是许多人想要的。~
== BC0AURA2 ~我们也相信不该违逆自然的秩序。这不止适用于死灵术——我们的律法同样禁止制造人造生命，或把魂魄移入造物之中。我们期望在有生之年尽量学，然后在时限到来时离去。~
== L#XZEB ~我代表不了你的族人，你是我认识的第一个兰坦人。可我无法想象所有人都会同意。~
== BC0AURA2 ~那……是有争议的。并非所有兰坦人都愿意放手。我能理解反面的论点，哪怕我相信接受自己的必死更好。~
== BC0AURA2 ~回答你头一个问题，泽莱，撇开律法的考量……不，我自己从没想要过。我相信该把手上的时间用到极致，再把自己所知传给下一个人。~
== BC0AURA2 ~对一个学者来说，永生起初听来像梦……可它并不总是好事。~
== L#XZEB ~我明白。你的命由你自己掌控，我尊重你有自己的准则。可我们有些人……是被命运分了更残酷的一手。我们能做的，只是把变成的样子活到最好，在自己的存在里找些希望与美。~
== BC0AURA2 ~我……明白。那本身就是一种勇气，我不能否认。也许关于生活、关于如何真正地活，我还有很多要学。~
== L#XZEB ~你会有时间的。我向你保证——只要我还在，命运夺不走你应得的一秒。~
EXIT

CHAIN
IF ~InParty("L#XZE")
Range("L#XZE",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#XZE",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Xzele","GLOBAL",1)~ THEN BC0AURA2 banter2
~泽莱，我……我想我们上次开头弄得不对。对不起。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Xzele","GLOBAL",2)~
== L#XZEB ~你这么想？我倒没觉得我们有多敌意。~
== BC0AURA2 ~不，可我整篇大论都在讲我怎么不认同不死之身，结果你就在这儿……我一定显得极居高临下。我不想让你觉得你选错了。~
== L#XZEB ~可是……你觉得我选错了吗？~
== BC0AURA2 ~那是完全另一回事。我可以不认同，但我不想靠批评你来贬低你的人性。没有哪个兰坦人会赞成用这种方式争论。~
== L#XZEB ~我很高兴。多数人若不是已经拔刀，至少也敢当面说我的存在是个错误……~
== BC0AURA2 ~我不信那一套。你要是相信有什么值得为它继续下去……我自己不想要，可我不能替你做同样的决定。我要是那样做，就永远没法理解你。~
== L#XZEB ~连死亡也磨不掉你那份善意，奥拉。你要是拥抱了不死之身，无论是出于选择还是机缘……我想我们所有的兄弟姐妹都会接纳你的温暖。~
== BC0AURA2 ~……谢谢你。~
EXIT

CHAIN
IF ~InParty("L#XZE")
Range("L#XZE",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#XZE",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#XzeleToB","GLOBAL",0)~ THEN BC0AUR25 bantertob
~很高兴我们遇见了，泽莱。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#XzeleToB","GLOBAL",1)~
== L#XZE25B ~当然，我也是。要是我问你为什么这么说，会不会坏了气氛？~
== BC0AUR25 ~我只是觉得自己欠你些什么。若不是听了你的话，我不会对不死生命的这一面、对“黄昏荣光”了解这么多。哪怕我会走另一条路，这份理解我依然珍视。~
== L#XZE25B ~我要的就这些。我并不要求别人照我的样子做，只要他们能从别处找到安宁。但我希望有一天，不死之身不再被当作邪恶的同义词，也不再是叫人畏惧的东西。~
== BC0AUR25 ~也许……那会是个缓慢的过程。也许连你都会在那天到来之前就离去。但至少我不会再冲动到说那不可能……不会了。~
== L#XZE25B ~要是我哪怕改变了一个人的想法，引导过他的思绪、启发过他……那最终也给这条冷路添了点意义。~
EXIT