BEGIN C0AUALCH

IF ~True()~ THEN BEGIN alchemy
SAY ~你想造什么？~
+ ~!Global("C0AUIN5","GLOBAL",1)~ + ~Potions~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupot1",Player1)~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1)~ + ~标准药水~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupot1",Player1)~ EXIT
+ ~Global("C0AUIN5","GLOBAL",1) Global("C0AdvancedAlchemy","LOCALS",0)~ + ~高级药水~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aupoth",Player1)~ EXIT
+ ~OR(3)
GlobalGT("Chapter","GLOBAL",7)
GlobalGT("C0AuraQuest","GLOBAL",8)
GlobalGT("C0AuraAlchemyBG2","GLOBAL",0)~ + ~Explosives~ DO ~SetGlobal("C0ArtificerAlchemy","LOCALS",1) StartStore("c0aubom1",Player1)~ EXIT
END