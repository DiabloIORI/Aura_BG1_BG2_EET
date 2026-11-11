CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDrake1","GLOBAL",0)~ THEN BC0Drake C0AuraDrake1
~问你一个问题，小小的奇迹之女。你相信我们这个世界之外有生命存在的理论吗？我不是说诸位面，我是说真真正正的世界。~
DO ~SetGlobal("C0AuraDrake1","GLOBAL",1)~
== BC0Aura ~你是说星辰间的生命？我倒没想到你会懂这类理论，德雷克。你一定是钻研过。~
== BC0Drake ~算不上钻研过。只是我在家乡的圣殿书库里随手读些书时碰上了这个话题。我记得书名好像是《天界异象与远游考》……大概不到一百年前，某位星象学家写的。你对那书熟吗？~
== BC0Aura ~哦，对。那是我的同乡写的。不过那是在我出生之前。此后我们发现的那些事实，大大改变了我们的看法。~
== BC0Drake ~那你信吗？那些关于星辰间的存在、住在与我们平行的世界里的部分？我得承认，那对我来说太离奇了，难以相信，尤其是出自这样一部学术著作。~
== BC0Aura ~嗯，我会说那肯定有可能……不过到目前为止，我们没法确定。唯一能确定的方法，就是找到那些世界亲眼看看，你懂吧？*叹气* 可那一定远在我们的寿命之后了，我确信。~
== BC0Drake ~也许吧。不过以你这样的头脑……~
== BC0Aura ~哈哈哈，不。我没那么厉害……至少还没到。再说，我这一生还有上千件别的想做的事，而那些用不着一辈子就能做完。~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraDrake1","GLOBAL",1)~ THEN BC0Aura C0AuraDrake2
~我在想，德雷克，你的神跟你说话吗？我是说……你听见过他的声音吗？~
DO ~SetGlobal("C0AuraDrake1","GLOBAL",2)~
== BC0Drake ~提尔的声音？我可没听见过。~
== BC0Aura ~你没听见过？那……你怎么知道他真的存在？你有什么证据吗？~
== BC0Drake ~我没有，不。可我确实信他存在。这很难解释。我可以说……在某种程度上感觉得到。~
== BC0Aura ~感觉得到？你是什么意思？~
== BC0Drake ~当你像我一样成为神的仆从时，你就是……知道。别人怎样我不知道，可对我来说，那就像……每次我低声祈祷时，都有一种存在悬在我头顶。~
== BC0Drake ~可你怎么会想到问这个？你不信神吗？~
== BC0Aura ~我信。我只是……完全弄不懂这片土地上的神。我住在科祖库拉的时候，人们所认识的神是……不一样的。~
== BC0Aura ~有时我觉得我能看见它们，尽管它们似乎完全不在乎我们这些凡人。它们更像是自然的精魂，随心所欲。你也会称它们为神吗？~
== BC0Drake ~也许吧。我不知道神是什么。我想，凡是生在这世上又死在这世上的人，其实都不知道。~
== BC0Drake ~任何高过我们、我们又弄不明白的存在，都有人可以称之为神。头顶的天、身边的风——那些是神吗？我见过声称是的人，我也驳不了他们。~
== BC0Drake ~也许这个词根本没有真正的意义，只是我们选择把某些存在安在它上面。谁知道呢？~
== BC0Aura ~你大概说得对。我追寻并解开过许多谜，可神……我怀疑我永远解不开那一个。~
EXIT