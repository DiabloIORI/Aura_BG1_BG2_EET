CHAIN
IF ~InParty("l#2eddrd")
Range("l#2eddrd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDEddard","GLOBAL",0)~ THEN L#2EDB banter1
~我想我们家族在博德之门那边偶尔也会跟外国商人做兰坦货的买卖。不过遇见兰坦人，这大概是头一回。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDEddard","GLOBAL",1)~
== BC0AURA2 ~真的？那我压力可大了——我居然是一位大公爵的亲戚对我们族人的第一印象。~
== L#2EDB ~别担心，奥拉。要我说，你的族人里若有更多像你这样的人，那对你们家乡可是件好事。~
== BC0AURA2 ~嘿嘿，知道就好。从我家乡出来的冒险者不多，所以出来的人得留神自己给人什么印象。~
== L#2EDB ~我是贵族，我懂那种滋味。只是对我来说，那得刻意去做，而且很累。你只是做你自己。~
== BC0AURA2 ~嗯，埃达德，我们又不是在宫廷舞会上，你也试着放松点，行不行？~
== L#2EDB ~我能，而且我更喜欢那样。很高兴我们能像朋友一样说话，不必字字斟酌。~
== BC0AURA2 ~不过别站着聊太久，<CHARNAME>已经在瞪我们了。~
== L#2EDB ~你说得对，<PRO_HESHE>确实在催。走吧。~
EXIT

CHAIN
IF ~InParty("l#2eddrd")
Range("l#2eddrd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDEddard","GLOBAL",1)~ THEN BC0AURA2 banter2
~埃达德，我给你的那剂药酒对你的睡眠管用吗？希望它有点效果。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDEddard","GLOBAL",2)~
== L#2EDB ~我的身体花了一段时间才习惯，不过我觉得它帮了大忙，奥拉，比我之前用的方子好多了。谢谢你。~
== BC0AURA2 ~那我就放心了。最近你好像一直做焦虑的梦。这个是我在科祖库拉学做的……对我从没失过手，可我不确定对每个人都一样管用。~
== L#2EDB ~你一定是走了很远才到东方去的。你就是靠这个学到这么多东西的？~
== BC0AURA2 ~嗯，那也是一点，再加上我就是想出来走走。我祖母密涅瓦多年前离家去看世界。我想弄明白是什么景象让她一出去就是几十年……也许我也能自己找到她。~
== L#2EDB ~等等，你祖母叫密涅瓦？我记得……有一本写她的书，对吧？讲北方恶魔什么的。我才想到你们俩原来是亲戚。~
== BC0AURA2 ~没错。书是她写的，不过我们读的可能是不同的书名，因为她自己从来懒得取名。~
== L#2EDB ~我读过那白巫妖龙和闹鬼城堡的冒险故事……等等，我们不会也变成那样一本书里的主角吧？~
== BC0AURA2 ~嘿嘿，谁知道呢？我*真的*在把咱们经历的每一桩事都记下来，以防万一……~
== L#2EDB ~你听上去一点也不担心这可能性……~
EXIT

CHAIN
IF ~InParty("l#2eddrd")
Range("l#2eddrd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDEddardToB","GLOBAL",0)~ THEN L#2ED25B bantertob
~奥拉，我猜到这个地步，你攒下的学问够让兰坦兴盛好几代人了。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDEddardToB","GLOBAL",1)~
== BC0AUR25 ~但愿如此。我只想确保我做的任何改变都是往好里去，不是往坏里去。~
== L#2ED25B ~你绝不可能把事情弄得更糟。我看得出你是什么样的人——连恶魔大概都受不了你那股正气。~
== BC0AUR25 ~我不知道……不过我们近来像拔草一样驱除的那些恶魔，大概不会同意这说法。说回正题……总有一天我会不在了，留下的只有我做过的东西。我有时会想：它们会一直留在那儿完成我的心意，还是别人会忘了当初为何要造它们。~
== L#2ED25B ~那是我们都得承受的事。我们没法永远留在世上把一切摆正。可别人能。~
== BC0AUR25 ~我也一直这么想……我想等我把该做的东西都做完，也许有一天教书会是我的归宿。~
== L#2ED25B ~那我们只能撑到那一天了。眼下我们彼此照应，所以我倒看好我们的机会。敬让诸国度变得更好。~
EXIT
