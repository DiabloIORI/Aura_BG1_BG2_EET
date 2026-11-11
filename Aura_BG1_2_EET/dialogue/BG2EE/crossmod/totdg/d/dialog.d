BEGIN C0DGGIRL

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0DGGIRL AURA-DG-GIRL
~*拽*……*拽拽*~ [C0BLANK]
== C0AURA2J ~嗯？哦，你好啊！小不点，你是从哪儿来的？~
== C0DGGIRL ~对不起……你的“色”实在太好看了……那么亮，那么长……看着就让我开心……我只是想碰一下……就一下下……~
== C0AURA2J ~我的“色”……你是说我的头发？~
== C0DGGIRL ~*点头*~
== C0AURA2J ~嗯……你喜欢它，我很高兴，小可爱。可它对你真有那么特别吗？~
== C0DGGIRL ~它在“色”与“色”之间流动的样子……从“粉色”到“银色”……我从没见过这样的东西……真好看……~
== C0AURA2J ~嗯……~
== C0AURA2J ~……*剪*~
== C0AURA2J ~这儿……拿去吧。我不知道它有没有法力，可要是它对你有什么意义，那就拿去。就当是礼物！~
== C0DGGIRL ~哦……我不能……只取“色”不回礼是不好的……哦……我有这个“金色”……只有一个……我想给你……~
== C0AURA2J ~*咯咯笑* 你一定要给，我就收下。谢谢你。我会把它收在身边。~
DO ~GiveItemCreate("C0DGCoin","C0Aura",1,0,0)~
== C0DGGIRL ~谢谢你……我会珍藏它……我要拿给朋友们看。再见……哼哼哼……*唱*~
== C0AURA2J ~哎哟，她真可爱……~
DO ~ActionOverride("C0DGGIRl",EscapeArea())~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTOTDGCoin","GLOBAL",1)~ THEN C0AURA2J totdg
~我们回来了……我知道这话听着荒唐，<CHARNAME>，可不知怎的，这世界显得那么不同，明明它该是熟悉的。~ [C0BLANK]
DO ~SetGlobal("C0AuraTOTDGCoin","GLOBAL",2)~
== C0AURA2J ~那真是……我几乎不愿只把它叫作一场冒险。那说法远不够……我们真的一起经历了那些，对吧？那不只是某种抽象的梦？~
END
  ++ ~我相信我们真的经历了。~ EXTERN C0AURA2J totdg-1
  ++ ~你听说过一场梦被好几个人一起做吗？~ EXTERN C0AURA2J totdg-2
  ++ ~我跟你一样猜不透。不过我觉得那是真的。~ EXTERN C0AURA2J totdg-3

CHAIN C0AURA2J totdg-1
~我很高兴那不是一场梦……我从没想过会被拉进一个逻辑解释不了的世界……一个住民们用鲜活流动的“色”表达一切的地方……~
== C0AURA2J ~那个可爱小女孩换给我的硬币也不见了。我以为是我弄丢了……可我不可能丢。我把它好好收在安全的地方，好留个凭证，证明那些事不只是我脑子里的。可我们一在这儿醒来，我就去找，它不在那儿了。~
== C0AURA2J ~不过再想想，我想我并不需要它。可真是可惜……我本想留个纪念，记下我们的经历。*叹气*~
END
 + ~PartyHasItem("DGIambe2")~ + ~不过人家送我的那朵琥珀色的花还在。~ EXTERN C0AURA2J totdg-4
 ++ ~你这么惆怅，我倒意外。我以为我们能平安回到该在的地方，你会安心。~ EXTERN C0AURA2J totdg-5
 ++ ~别管那个了。既然回来了，就又得面对旧麻烦。~ EXTERN C0AURA2J totdg-6

CHAIN C0AURA2J totdg-2
~嗯，换作别的日子，我会说这念头荒唐透顶，可经历了刚才那些，我恐怕再也没法说什么事是不可能的了。~
EXTERN C0AURA2J totdg-1

CHAIN C0AURA2J totdg-3
~那就是说，凭信念而不凭证据？我想我也只能做到这一步了。~
EXTERN C0AURA2J totdg-1

CHAIN C0AURA2J totdg-4
~哦，还真是。它……很美。而且永存。留着它吧，<CHARNAME>。我想我们再找不到第二个这样的东西了。~
EXTERN C0AURA2J totdg-5

CHAIN C0AURA2J totdg-5
~我不打算假装被送到下面去的时候不害怕……有一阵子，我真真切切地怕我们会永远困在那儿，再也见不到自己的世界……可你知道吗，<CHARNAME>？~
= ~过了一阵，我不知怎的就不再想那些本该要紧的事了。我沉溺在看那美景、听那些奇异族人的声音里，我想我开始像他们那样看见“色”了。等我们终于找到路回来，我竟发现自己不再像原先以为的那样欣喜若狂。~
= ~我或许跟你说过，在我开始受训当奇械师之前，有段时间我真的很想当画家。有些爱做梦的年轻画手会梦想有一天能走进自己画在画布上的世界……嗯，这不是我画的，可我还是觉得那梦想成真了。~
= ~这念头挺傻的，是吧？说出来之后，我倒有点难为情。~
END
  ++ ~也许有点傻。不过这也没什么不好。~ EXTERN C0AURA2J totdg-7
  ++ ~我不怪你。那就像一场幻梦，在里头我们哪怕只是一时，也能躲开自己的烦恼。~ EXTERN C0AURA2J totdg-8
  ++ ~听你这么说，你还在做白日梦。脑子清醒点，我们回到现实了。~ EXTERN C0AURA2J totdg-6

CHAIN C0AURA2J totdg-6
~好吧。那就回到真实世界……不过我怀疑我以后再看它，还会不会是从前的眼光。~
EXIT

CHAIN C0AURA2J totdg-7
~如果有机会，<CHARNAME>，你还会想再回到那儿去吗？~
END
  ++ ~我会。~ EXTERN C0AURA2J totdg-9
  ++ ~也许吧。~ EXTERN C0AURA2J totdg-9
  ++ ~我不这么想。~ EXTERN C0AURA2J totdg-10

CHAIN C0AURA2J totdg-8
~我正是这么觉得。~
EXTERN C0AURA2J totdg-7

CHAIN C0AURA2J totdg-9
~也许不可能，可要真有那么一天……我希望我能跟你一起去。“色”的世界那么辽阔，我想我们连它真正的模样都只碰到一点皮毛。~
= ~这话是我心里那个学者说的。老实说，就算不可能，我也只希望能再成为那样一个美丽故事的一部分。~
= ~而且……也许我还能再看到那个小女孩的笑容。~
EXIT

CHAIN C0AURA2J totdg-10
~嗯。也许那样最好。那样的旅程一辈子只有一次。~
EXTERN C0AURA2J totdg-6
