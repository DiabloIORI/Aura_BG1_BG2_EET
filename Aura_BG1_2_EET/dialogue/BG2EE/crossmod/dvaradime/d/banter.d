CHAIN
IF ~InParty("L#DVA")
Range("L#DVA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Dvaradime","GLOBAL",0)~ THEN L#DVAB banter1
~奥拉，你带的那把弓可真稀奇。是你自己做的？~
DO ~SetGlobal("C0AuraL#Dvaradime","GLOBAL",1)~
== BC0AURA2 ~不是靠自己，不。戴达罗斯叔叔给了我不少指点。不过原始图纸是我画的。~
== L#DVAB ~咱能拿它试一会儿吗？~
== BC0AURA2 ~嗯……~
== L#DVAB ~要是它对你太要紧，咱明白。~
== BC0AURA2 ~不，不……我不是不愿意。只是它跟寻常的弓不一样，用起来可能有点讲究。~
== L#DVAB ~谁说得准呢。就算真是那样，咱说不定还能学上一两样。~
== BC0AURA2 ~好，那就。~
== L#DVAB ~啊，秘银，是吧？咱更擅长皮活，不太摸金属，不过好合金还是能一眼看出来。这倒能补上寻常弓太重的问题。可要紧的是——它射起来怎么样，嗯？~
== L#DVAB ~……嗯。~ [SWI_02]
== L#DVAB ~这比我料想的难。轮子能补上肢体僵硬的短板，是吧？我看这里头得有点门道。~
== BC0AURA2 ~不过，那真叫人佩服！换别人头一回射箭，可射不了这么好。~
== L#DVAB ~谢谢你，丫头，可我看这工具是照着创造者的手做的，别人的手都不合适，所以我把它还给你。不过我倒是好奇——你觉得有一天，这样的设计会在诸国度里传开吗？~
== BC0AURA2 ~那……我觉得那不该由我决定。~
== L#DVAB ~不，我不同意。知识在你脑子里，它的样子在你手里。我看这个选择该由你来做，别人替不了。~
== BC0AURA2 ~也许吧。不过眼下我也没有答案。总有些知识带来的害处大过益处。我实在没法让自己成为犯下那种错的人。~
== L#DVAB ~说得在理，奥拉。不管怎么说，到时候该做决定时，我信你能做出对的选择。~
EXIT

CHAIN
IF ~InParty("L#DVA")
Range("L#DVA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
GlobalGT("L#DvaradimeQuest","GLOBAL",34)
Global("C0AuraL#Dvaradime","GLOBAL",1)~ THEN L#DVAB banter2
~你是个心肠软、骨子里却硬气的丫头，奥拉。这跟你那一肚子学问倒是相配。我猜你父母一定很以你为荣。~
DO ~SetGlobal("C0AuraL#Dvaradime","GLOBAL",2)~
== BC0AURA2 ~你这话说得客气，德瓦拉迪梅，可你还没见过我姐姐们呢。真正强的是她们。我不过是照着她们的样子学罢了。~
== L#DVAB ~唉，咱凡人就是这样，丫头。没有谁是真正靠自己变强的；那些以为自己是的，不过是不够感念那些帮着成就他们的人罢了。~
== BC0AURA2 ~哈哈。我把同样的疑虑跟我爹说的时候，他好像也这么讲。呃，抱歉，我不是想说你老。~
== L#DVAB ~没有，咱不介意。~
== BC0AURA2 ~那你呢，德瓦拉迪梅？你是我见过最强、也最聪明的矮人之一。~
== L#DVAB ~跟谁一样，咱这一身本事欠着好些人的情。咱有氏族、有朋友，还有……咱有过博尔克斯。~
== BC0AURA2 ~你……抱歉，德瓦拉迪梅，我没料到这番话会说到这儿。要是你想，我们就停下——~
== L#DVAB ~不用，不必说这些。博尔克斯是我身上不可替代的一部分，他虽已不在，这一点也不会改变。若是不谈他做过的好事，反倒更辱没他的名声。有空的时候，我把他的事都讲给你听，你若愿意听的话。~
== BC0AURA2 ~我会的，一定。~
EXIT

CHAIN
IF ~InParty("L#DVA")
Range("L#DVA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#DvaradimeToB","GLOBAL",0)~ THEN L#DVA25B bantertob
~奥拉，你做东西的手艺这些年来只是越来越有想法。真难想象这一切竟然不全靠魔法的功劳。~
DO ~SetGlobal("C0AuraL#DvaradimeToB","GLOBAL",1)~
== BC0AUR25 ~嘿嘿，说来也怪，我倒觉得这股压力一直在推着我更用功、想得更多。不然我哪能走到这一步。~
== L#DVA25B ~是这样吗？嗯……也许你说得有理。咱做成了不少事，也因此在其中变强了。那是件好事。~
== BC0AUR25 ~德瓦拉迪梅，你心里该也有些遗憾吧？~
== L#DVA25B ~我？不……失去博尔克斯是最糟的一桩，而那张牌早在<CHARNAME>和你遇见我之前就被命运打出去了。我心里觉得，他要是看见我如今的样子，会高兴的。~
== BC0AUR25 ~我信，只要你这么相信，他心里就一定正是这么想的。要说谁最懂他的性情，除了你没别人。~
== L#DVA25B ~嗯，但愿吧。咱一直想活出个能让他骄傲的样子。咱至少能做到这一件事。~
EXIT