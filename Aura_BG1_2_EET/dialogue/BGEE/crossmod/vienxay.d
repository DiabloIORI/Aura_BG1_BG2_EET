
// Drake 
CHAIN IF ~InParty("X3Vien")
InParty("C0Aura")
See("C0Aura")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("CrossAuraVien","LOCALS",0)~ THEN X3VienB VienAura1
@0 // ~不知道，可我看不出你想干什么。~
DO ~SetGlobal("CrossAuraVien","LOCALS",1)~
== BC0Aura @1 // ~呃，你是在跟我说话吗？~
== X3VienB @2 // ~你想显得特别。我想那……是有意思，可跟我非凡的才华比，嗯，<CHARNAME>早就有明确的偏爱了。~
== BC0Aura @3 // ~你在说什么？~
== X3VienB @4 // ~装傻？你鼓捣的那些了不起的作品。你是聪明，可要追上我的美貌与才智，恐怕还差得远。~
== BC0Aura @5 // ~呃……我做了什么冒犯你的事吗？~
== X3VienB @6 // ~你当然冒犯我了。你表现得那样软弱无能，看得我恶心。~
== BC0Aura @7 // ~我想我就走在队伍最后一排好了。~
== X3VienB @8 // ~天哪，你真无聊。什么都不反驳。我只好去别处找乐子了。~
EXIT 