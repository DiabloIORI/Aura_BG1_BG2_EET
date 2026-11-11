CHAIN
IF ~InParty("L#LHA")
Range("L#LHA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#LHA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Lhannd","GLOBAL",0)~ THEN L#LHAB banter1
~奥拉，你不是贵族，对吧？~
DO ~SetGlobal("C0AuraL#Lhannd","GLOBAL",1)~
== BC0AURA2 ~不，我不是。我们兰坦人其实没有传统意义上的“贵族”……要说在这片土地上相当于什么，倒有点难解释。~
== L#LHAB ~我猜这就是我一直看不透你的缘故。你看着像是家境优渥，却没有贵族那种惯常的步态和作派……说起来，我好像还真没遇见过侏儒贵族。~
== BC0AURA2 ~啊，再往北去的几座城里，你能找到几个上等人家……我见过几位，可总跟他们处不来。按我的口味，他们有点太势利了。~
== L#LHAB ~这不就是你们那些普普通通的贵族的老样子吗？~
== BC0AURA2 ~你会吃惊的。等你连别的贵族都受不了你的时候……嗯，寻常宴会上不常看见侏儒贵族，是有原因的。~
== L#LHAB ~哼。比别的贵族还招人烦……我倒没想到这还有可能。这让我对咱们这儿卖芜菁的小贩多了几分好感。~
== BJAN IF ~InParty("JAN")~ THEN ~喂！你这是在说我们卖芜菁的以前不值得高看一眼？~
== L#LHAB ~抱歉。我不是想一概而论。认识你之后，奥拉，我开始觉得有些群体我并没有自己想的那样了解。~
== BC0AURA2 ~嘿嘿，没事。兰恩德，你能自己察觉到这一点，就够了。~
EXIT

CHAIN
IF ~InParty("L#LHA")
Range("L#LHA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#LHA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Lhannd","GLOBAL",1)~ THEN L#LHAB banter2
~奥拉，我好像没提过，可那把弓真是*非常*亮。阳光一照上去我就得把眼睛挪开。~
DO ~SetGlobal("C0AuraL#Lhannd","GLOBAL",2)~
== BC0AURA2 ~太阳射手？那是我的骄傲和心头好。我平常不喜欢造武器，这一件算是例外。~
== L#LHAB ~我只是有点担心它会把光反照进你眼睛里，扰乱你的瞄准。这从来不成为麻烦吗？~
== BC0AURA2 ~嗯，我的护目镜里有挡光镜片，专门防眩光。所以这个问题我至少是想过的。~
== L#LHAB ~我猜遇上这类难题，有个会转脑筋的头脑确实管用。这光泽当然好看，不过我倒是想，哑光的表面是不是也一样时髦……而且更实用。~
== BC0AURA2 ~你现在的想法倒比我还像个兰坦人了。我们通常把实用放在一切之上，可要是只想着这个，日子就没那么好过了，对吧？~
== L#LHAB ~我觉得中庸的实用和雅致，该在里头找个恰到好处的平衡。等有空的时候，我们何不一起画些图样？~
EXIT

CHAIN
IF ~InParty("L#LHA")
Range("L#LHA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#LhanndToB","GLOBAL",0)~ THEN L#LHA25B bantertob
~有时候我会想，奥拉……~
DO ~SetGlobal("C0AuraL#LhanndToB","GLOBAL",1)~
== BC0AUR25 ~去吧。~
== L#LHA25B ~要是我早些遇到你，把你带去见我父亲……你能救他的命吗？若信仰之力与神助都治不好他，也许知识与科学说不定……说不定能造出什么解药来……~
== BC0AUR25 ~兰恩德……没那么简单。有些事改不了，哪怕它是件可怕的事。我自己也是吃过这个教训才懂的。~
== L#LHA25B ~这我知道。可有时候我忍不住要想，神明是不是就在耍些残忍的把戏——像你这样正派的凡人绝不会耍的把戏。~
== BC0AUR25 ~我不敢妄称知道神明在想什么。我从没把自己交托给哪位神……不过我情愿相信，有些教训是我们必须接受的。它看着或许不公道，可是……~
== L#LHA25B ~*叹气* 我知道。我只是太想他了。~
== BC0AUR25 ~话虽如此……就算这话不能让你好受些，兰恩德……我觉得你不该自责。凡是真心在意过你的人，都不会希望你这样。~
== L#LHA25B ~确实不能，可还是……谢谢你愿意试。我知道，要是你从头就在，你绝不会放弃我父亲。你太善良了，奥拉。~
EXIT