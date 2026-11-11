CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0PaiNa",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("c0aurapaina1","GLOBAL",0)~ THEN BC0PAINA C0AURAPAINA1
~嗯……好，我想那样可以了结此事，小侏儒。我向你挑战，比一比本事。~
DO ~SetGlobal("c0aurapaina1","GLOBAL",1)~
== BC0AURA2 ~什么？~
== BC0PAINA ~以我调制的毒，对你的爆炸兵器。且看战场上哪个更厉害。一星期内杀敌更多者胜。~
== BC0AURA2 ~我——呃，我不觉得这算健康的比赛标准……~
== BC0PAINA ~怕输，嗯？~
== BC0AURA2 ~*叹气* 我们就不能改办个友好的烘焙比赛之类吗？~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0PaiNa",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("c0aurapaina1","GLOBAL",1)~ THEN BC0AURA2 C0AURAPAINA2
~派娜，你听说过守望蛛吗？~
DO ~SetGlobal("c0aurapaina1","GLOBAL",2)~
== BC0PAINA ~魔法蛛亲。卓尔把它们当玩物养着，那些贱种。~
== BC0AURA2 ~兰坦也养它们。它们守着我们的宝库和其他要害之处。我们极看重它们！~
== BC0PAINA ~你最好以它们应得的敬意相待。若你占它们便宜，我本要责你，不过我能接受你的族人或许懂得它们的价值。~
== BC0AURA2 ~我真希望能把家里那两只给你看看。我母亲把它们叫作“眼”和“探”。它们很亲人，虽然在某些人看来吓人。~
== BC0PAINA ~这……大概挺好。你到底想说什么？~
== BC0AURA2 ~我只是想让你确信，我并不害怕蛛类，也不轻视它们。我们处得来！~
== BC0PAINA ~光这样还不够。至少这是个可以接受的开始。~
EXIT