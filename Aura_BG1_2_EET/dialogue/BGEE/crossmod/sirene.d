CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSirene1","GLOBAL",0)~ THEN BC0Aura C0AuraSirene1
~哎哟！位置错了……哦，希望我没扎到什么要紧的血管……~
DO ~SetGlobal("C0AuraSirene1","GLOBAL",1)~
== BC0Siren ~奥拉，你拿那些针做什么？~
== BC0Aura ~我在学一种从寿人手册上研习的治疗术，叫“针灸”。很怪，可显然它管用……哎哟！不对，这一下也不对……~
== BC0Siren ~我——我希望你不是在拿自己冒险。我承认，看你那样反复刺自己，我很担心。~
== BC0Aura ~别担心，我把针都消过毒，也严格照手册在做。只是……在自己身上试很难。每次要给自己下针，我都预期会痛，忍不住一缩，就把准头弄坏了。~
== BC0Siren ~既如此……要不换你在我身上练？我确信什么痛我都受得住。~
== BC0Aura ~不！我绝不会向任何人提这种要求，尤其在我都不确定会发生什么的时候……可是，我实在好奇……~
== BC0Siren ~你需要的话，花些时间想想。你什么时候准备好，我都在。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSirene2","GLOBAL",1)~ THEN BC0Siren C0AuraSirene2
~嗯？怎么了，奥拉？~
DO ~SetGlobal("C0AuraSirene2","GLOBAL",2)~
== BC0Aura ~我，呃，把工具备好了。你……你真愿意当我的试验对象？我总觉得这样不对。~
== BC0Siren ~别怕，奥拉。我受过、也熬过许多痛。这点我受得住。~
== BC0Aura ~好……你既然这么说。我得让你把护手摘下来……我先从你的手臂下手。头颅和后背我还不敢试……来了……~
== BC0Siren ~啊……~
== BC0Aura ~呀！哦不，不不不，真对不起！我弄疼你了吗？这是弄错了，我就知道……~
== BC0Siren ~不……正相反，就在说话的这会儿，我感到肩上的紧绷松了下来。我想这比我们俩预料的都更管用。~
== BC0Aura ~你当真？太好了！那就是说这技术真的——等等。你是说你本来就预期会痛？~
== BC0Siren ~我——我提过那种意思吗？*清嗓子* 原谅我。我不是那个意思。~
== BC0Aura ~哦，算了，不提了。我只是高兴它终究奏效了。说实话，我本以为这辈子都弄不出结果。~
== BC0Siren ~你为什么这么说？~
== BC0Aura ~*叹气* 嗯，手册上说针灸应当能纠正体内“气”的流动……可我从来没找到“气”真的存在的证据。说实话，起初我以为那全是骗人的胡扯……所以我才非得试试不可。~
== BC0Siren ~而你把这门你自己都不信的治疗术……用在自己身上？~
== BC0Aura ~是。然后又在你自己身上。对不起。什么都可能出岔子。~
== BC0Siren ~你不必向我求恕。可是……请你别再拿自己去冒这样的险。我不愿你受伤。从今往后，你只管开口，我替你做这样的试验。~
== BC0Aura ~我……好吧。谢谢你，塞琳。~
EXIT