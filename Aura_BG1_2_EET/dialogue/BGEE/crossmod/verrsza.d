CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraVerr1","GLOBAL",0)~ THEN BC0Aura C0AuraVerr1
~嘿，嘿，维尔莎，我有件事想问你。~
DO ~SetGlobal("C0AuraVerr1","GLOBAL",1)~
== L#1VerrB ~最好是有意思的事。我不回答无聊的问题。~
== BC0Aura ~你到底有多像猫？会自己舔毛？喝奶？玩毛线球？~
== L#1VerrB ~别胡说。我跟大家一样洗澡。该喝奶的时候我会喝。而且我*绝不*玩毛线球。~
== BC0Aura ~好——吧……那你体温调节正常吗？~
== L#1VerrB ~“体温”……什么？说通用语。~
== BC0Aura ~出汗啊。你想，你一身都是毛……你到底从哪儿出汗？爪子？耳朵？舌头？~
== L#1VerrB ~这一连串问题简直没道理。我说过，我不回答无聊的问题，侏儒。~
== BC0Aura ~哼。你要是不肯答，那我就自己去查清。你不会喜欢那样的！~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraVerr2","GLOBAL",1)~ THEN L#1VerrB C0AuraVerr2
~你——你——你以为你在干什么？！~
DO ~SetGlobal("C0AuraVerr2","GLOBAL",2)~
== BC0Aura ~呀！你该别动才对！~
== L#1VerrB ~你最好快点给我个像样的解释，说清你为什么拿那根铁棍往我耳朵里捅！~
== BC0Aura ~嗯，*你*说你不肯回答我的问题，然后*我*就说那我自己去查。我只是在探结果，就这个。~
== L#1VerrB ~所以那不是趁我睡觉来杀我？我不信你。那太可疑了。~
== BC0Aura ~哦，别傻了。我那根探针最坏也就是让你耳朵疼得要命，而且只有我插得太深才会那样……~
== L#1VerrB ~你*不许*把那玩意儿再往我耳朵里塞。~
== BC0Aura ~可我才拿到一半我需要的结果！过来让我弄完！~
== L#1VerrB ~我发誓，我会杀了你，侏儒！~
== BC0Aura ~呀！懂了懂了！冷静点，先去打个盹吧。我就用手上这些凑合。~
DO ~RestParty()~ EXIT