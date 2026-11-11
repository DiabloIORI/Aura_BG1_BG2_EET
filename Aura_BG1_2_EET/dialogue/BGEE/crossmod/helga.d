// Helga-Aura 
CHAIN IF ~InParty("X3Helga")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossAuraHelga","LOCALS",0)~ THEN X3HelgaB HelgaAura1
~天杀的，丫头，你怎么老在鼓捣那些玩意儿？正经打仗是近了身、见血的干，不是……这到底是个啥？~
DO ~SetGlobal("CrossAuraHelga","LOCALS",1)~
== BC0Aura ~哦，这玩意儿？这是我正在试的新东西。它能捕捉一道声波脉冲，然后——~
== X3HelgaB ~别跟我扯那些胡话，姑娘。你有脑子，可那玩意儿在战场上没处用。你还不如拎把汤勺去打食人魔的屁股。~
== BC0Aura ~这对你也许有点不寻常，可我就是这样出力最管用。~
== X3HelgaB ~你是个聪明的丫头，也是个好丫头。心肠跟我的孩子们一样好。可我得说，你做事的路数我永远习惯不来。~
== BC0Aura ~等等，矮人不是有符文大师吗？那些能把精华化成可用魔法的人？~
== X3HelgaB ~嗯。大一点的厅堂里也有造魔像的匠人，还有废墟里……呸，我想那比我以为的要体面些。原谅我，也许我是老一套了。~
== BC0Aura ~你只是在为我着想。我很感激。~
EXIT