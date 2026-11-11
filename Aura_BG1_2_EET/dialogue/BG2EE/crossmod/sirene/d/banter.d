CHAIN
IF ~InParty("C0Sirene")
Range("C0Sirene",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(10)
AreaCheck("C0AUR1")
AreaCheck("AR0020")
AreaCheck("AR0300")
AreaCheck("AR0400")
AreaCheck("AR0500")
AreaCheck("AR0500")
AreaCheck("AR0700")
AreaCheck("AR0800")
AreaCheck("AR0900")
AreaCheck("AR1000")
Global("C0AuraSireneBanter","GLOBAL",0)~ THEN BC0AURA2 banter1
~塞琳，待在这座城里，你心里一定不好受吧。你还好吗？~
DO ~SetGlobal("C0AuraSireneBanter","GLOBAL",1)~
== BC0SIRE2 ~旁人的审视我并不陌生，有朋友相伴，便远不至于难忍，奥拉……谢谢你的关心。~
== BC0AURA2 ~不，我不是那个意思。我在想……这座城的精神。~
== BC0SIRE2 ~精神？~
== BC0AURA2 ~我们路过那些穷人、病人……那些需要帮助，却被本该关心他们的人忽视的人……每一次，我都注意到你的反应。~
== BC0SIRE2 ~那种事我也见得太多了……而那种痛更难跨过。我在每个社会里都见过不公，可比这里更糟的却少见……这常让我想起自己有多无力。~
== BC0AURA2 ~我跟你一样难受。我们尽力而为，可总觉得太少、太慢……有时候，看到要成就真正的改变得付出多少，真觉得不公。~
== BC0SIRE2 ~唯一的慰藉，就是看见那些因我们的所作所为而日子好过些的无辜者脸上一松。我不是真正的骑士，也没有立大功的野心……只求做些小小的善事。可我常常会想，是不是还有更多我能……~
== BC0AURA2 ~塞琳，请别把自己压得太重。我想帮别人，可我也一样想看到你快乐。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
Range("C0Sirene",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraSireneBanter","GLOBAL",1)~ THEN BC0SIRE2 banter2
~奥拉，你看起来疲惫不堪。你眼下的阴影深得让人担心。~
DO ~SetGlobal("C0AuraSireneBanter","GLOBAL",2)~
== BC0AURA2 ~哦……这么明显吗？我还以为换个稍微不同的眼影就能遮住……~
== BC0SIRE2 ~跟我说你没又亏待睡眠。你要是再整夜不歇地干活，我恐怕很快就得直接插手了。~
== BC0AURA2 ~我，呃……我只是……在做些新的实验……~
== BC0SIRE2 ~还有事后带着你的武器偷偷溜走，趁你以为没人看见时独自练习。~
== BC0AURA2 ~不，我——~
== BC0SIRE2 ~奥拉，你在盼着什么？这对你是近来才有的变化，而且极不健康。我一度担心你是被什么东西附了身。~
== BC0AURA2 ~这话或许不算太离谱……我可能真是有点疯了。我想试着变强，好让我在战斗里不那么拖累人……~
== BC0SIRE2 ~你绝不是拖累。偏偏这个时候，怎么会这么想？~
== BC0AURA2 ~因为……因为我不想再看你为我挨打了。我想像你一样勇敢……哪怕只有你一半也好。~
== BC0SIRE2 ~奥拉……不。请别那样想。我的路是为别人选的，为的是让他们永远不必受那样的苦。被迫走上这条路的人越少越好。~
== BC0AURA2 ~可是——~
== BC0SIRE2 ~好了，别说了。~
EXIT
