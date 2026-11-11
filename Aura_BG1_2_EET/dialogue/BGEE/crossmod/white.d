CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraWhite1","GLOBAL",0)~ THEN V#1WHIB C0AuraWhite1
~我得问一句，你为什么花那么多时间布陷阱，就为了除掉我们的敌人？随便抡件重东西砸过去不更省事？~
DO ~SetGlobal("C0AuraWhite1","GLOBAL",1)~
== BC0Aura ~呃，你也知道，我不是什么最强的丫头。再说，那更算你的本事，不是吗，怀特？~
== V#1WHIB ~你不能练练吗？总不能比你现在搞的这些……鼓捣活儿更难吧。~
== BC0Aura ~嗯，我想，要是我愿意，我可以改成往人头上丢石头和铁砧，可我干这行不是为伤人。只是因为<CHARNAME>需要我这一切，我才……~
== V#1WHIB ~那你为什么跟着<PRO_HIMHER>？你知道我们一天到晚就是打仗、杀人。你不必留下来做你讨厌的事。你随时都可以选择离开。~
== BC0Aura ~不行。我在剑湾还有一两件事要办。再说……我信<CHARNAME>。要不是相信这是为了好事，我不会用自己的本事去伤人。~
== V#1WHIB ~嗯，好吧。我只是觉得你老躲得远远的，错过了不少好仗，不过我也不会教你怎么过日子。~
EXIT