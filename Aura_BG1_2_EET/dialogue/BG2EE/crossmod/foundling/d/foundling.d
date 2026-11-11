CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Foundling1","GLOBAL",0)~ THEN L#FOUB C0AuraFoundling1
~侏儒，你穿的那身衣裳……那颜色……叫什么来着？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Foundling1","GLOBAL",1)~
== BC0AURA2 ~这是粉色，弃儿。~
== L#FOUB ~对，就是那个。阴影位面里没有这种颜色。~
== BC0AURA2 ~它不……？！不，我猜也不会。你觉得呢？不适合我吗？~
== L#FOUB ~艳得刺眼。你是想引人注意？~
== BC0AURA2 ~不，并不。我其实生性害羞。我只是觉得粉色好看。~
== L#FOUB ~这似乎不高明。倒更像是会让你被危险的掠食者注意到。~
== BC0AURA2 ~那，呃……说实话，这话我驳不了。可我能保护自己，弃儿。再说，这里还有别人护着我，对吧？其中也包括你。~
== L#FOUB ~我不认为把自己的性命这样牢靠地交在别人手里是明智的。~
== BC0AURA2 ~可信任就是这样运作的，弃儿。我们若不彼此可靠，就做不成朋友。你这边也一样！我会尽力护你周全。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Foundling2","GLOBAL",0)~ THEN L#FOUB C0AuraFoundling2
~奥拉，你为什么要造这些……东西？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Foundling2","GLOBAL",1)~
== BC0AURA2 ~什么东西？抱歉，弃儿，你得说具体些。你知道，我做的东西可多了！~
== L#FOUB ~我就是这个意思。造出有力量的东西来帮自己活命，这我懂。可你许多……发明，似乎只是为了它们自己而存在。~
== BC0AURA2 ~只为了它们自己……？弃儿，没有这种事。万物存在都有缘由，哪怕只是为了让人开心。~
== L#FOUB ~这就够了？那么多工夫、那么多盘算，只为了一声笑、一瞬的欢喜？~
== BC0AURA2 ~我一直希望能让自己作品中生出的快乐长长久久。可就算只有一瞬，那也足够了。~
== L#FOUB ~我觉着奇怪：一个有这等天赋心智的人，竟能因为这么一点事就满足。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#FoundlingToB","GLOBAL",0)~ THEN L#FOU25B C0AuraFoundlingToB
~奥拉，我讲的阴影魔法你记了好多笔记。我能告诉你的已经不多了。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#FoundlingToB","GLOBAL",1)~
== BC0AUR25 ~谢谢你，弃儿。我一定把记录下来的东西带回兰坦，好让我们更了解你的魔法和阴影位面。~
== L#FOU25B ~你觉得这会有用吗？不管你写下多少，你自己都用不了这魔法，我怀疑你的同道们也强不到哪儿去。这需要更多东西。~
== BC0AUR25 ~即便如此，一位学者凭着自己不能……或不愿用的知识，仍能做成许多事。知者自己用不上的东西，仍能用来帮别人。~
== L#FOU25B ~你打算把余生都用来帮助别人？~
== BC0AUR25 ~只要做得到，就是。帮别人比学到新东西更让我高兴。~
== L#FOU25B ~需要帮助的人多到你一辈子也管不过来，其中许多或许还不配。你什么时候才会停下？~
== BC0AUR25 ~唉，我倒是想说没什么能让我停下……可我的心智和双手只能再干这么久。等我交下火炬的那天吧。到那时我才觉得自己挣到了歇息。~
== L#FOU25B ~嗯。~
== BC0AUR25 ~你何不也考虑哪天试试同样的事？~
== L#FOU25B ~我？教别人？我……觉得不太可能。这个位面里能有多少像我这样的人？而在那少数几个里，又有谁会听我的？~
== BC0AUR25 ~我说不准，可“弃儿”，我见过并非所有用你这类魔法的人都心怀恶意。还有希望找到像你一样的其他人。你想想吧。~
EXIT