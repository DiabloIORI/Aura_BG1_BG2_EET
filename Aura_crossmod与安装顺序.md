# Aura NPC — crossmod 全景与安装顺序

勘察对象：`E:\GitHub\Aura_BG1_BG2_EET\Aura_BG1_2_EET`（The Artisan 出品，三合一 BG1/BG2/EET 版）

## 一句话结论

**Aura 是这套列表里 crossmod 挂载最多的 mod（BG1 端 12 个 + BG2 端 24 个，共 36 个 hook），而且判定全部发生在安装期（**`MOD_IS_INSTALLED`**&#x20;/&#x20;**`FILE_EXISTS_IN_GAME`**）。所以：Aura 要放在最后装，被它检测的所有 mod 都必须在它前面装完。** 顺序反了不会有任何报错，只是对应那段 crossmod 静默消失。

## 机制：两种判定，都只看 "装 Aura 的那一刻"



| 判定写法                             | 含义                          | 文件                                        |
| -------------------------------- | --------------------------- | ----------------------------------------- |
| `MOD_IS_INSTALLED ~xxx.tp2~ ~N~` | 那个 mod 的第 N 组件已装            | `lib\crossmod.tpa`、`lib\crossmod_bg1.tpa` |
| `FILE_EXISTS_IN_GAME ~某.dlg~`    | 那个 mod 生成的对话文件已在 override 里 | 同上                                        |

两种都等价于 "必须在 Aura 之前"。BG1 端查的是 `B` 前缀 dlg（如 `bc0siren.dlg`，BG1 版），BG2 端查的是 `L#2`/`L#`/`BE3`/`O#` 等各 mod 自己的命名。

## BG1 端（`lib\crossmod_bg1.tpa`，只装在组件 0 / 2 里）



| 对象 mod                    | 判定                                             | 备注                                 |
| ------------------------- | ---------------------------------------------- | ---------------------------------- |
| Glam's NPC Pack           | `MOD_IS_INSTALLED ~SETUP-GLAMNPCPACK.TP2~ ~0~` | 已汉化；Glam 自己还要求 Sandrah 先装          |
| Sirene                    | `bc0siren.dlg`                                 | 已汉化（含 BG2 版）                       |
| Drake                     | `bc0drake.dlg`                                 |                                    |
| Verr'Sza                  | `l#1verrb.dlg`                                 | BG1 版                              |
| White                     | `V#1WHIB.dlg`                                  |                                    |
| Isra                      | `brh#isra.dlg`                                 |                                    |
| Emily                     | `X3milyB.dlg`                                  | 走 Aura 自己的 `tra\english\emily.tra` |
| Helga                     | `X3HelgaB.dlg`                                 |                                    |
| Kale                      | `X3KaleB.dlg`                                  | 走 `tra\english\kale.tra`           |
| Recorder                  | `X3RecB.dlg`                                   |                                    |
| Vienxay                   | `X3VienB.dlg`                                  | 走 `tra\english\vienxay.tra`        |
| Shades of the Sword Coast | `MOD_IS_INSTALLED ~Setup-SotSC.tp2~ ~0~`       |                                    |

## BG2 端（`lib\crossmod.tpa`，只装在组件 1 / 2 里）



| 对象 mod                     | 判定                                     | 备注                                         |
| -------------------------- | -------------------------------------- | ------------------------------------------ |
| Back to Brynnlaw           | `BACKBRYNNLAW.TP2` 组件 0                | 还会 `EXTEND_BOTTOM c0aura2.bcs`             |
| Dvaradime                  | `l#dvab.dlg`                           |                                            |
| Fade                       | `BE3FADE.dlg`                          |                                            |
| Faldorn（NPC 版）             | `L#FALB.dlg`                           |                                            |
| Foundling                  | `FOUNDLING/FOUNDLING.TP2` 组件 0         | 含 interjections                            |
| Lhannd                     | `L#LHAB.dlg`                           |                                            |
| The Ooze's Lounge          | `OOZE/OOZE.TP2` 组件 0                   |                                            |
| Pai'Na                     | `PaiNa/PaiNa.tp2` 组件 0                 |                                            |
| Sellswords                 | `SELLSWORDS.TP2` 组件 0                  | 还会 `EXTEND_BOTTOM c0aura2.bcs`             |
| Skie: The Cost of One Soul | `L#2SDSKB.dlg`                         |                                            |
| （同上）Eddard                 | `L#2EDB.dlg`                           | 同一 mod 的第二个角色                              |
| Skitia's NPCs              | `SKITIANPCS\SETUP-SKITIANPCS.tp2` 组件 0 |                                            |
| The Southern Edge          | `SOUTHERNEDGE.TP2` 组件 0 **或** 1        |                                            |
| Tales of the Deep Gardens  | `TOTDG/SETUP-TOTDG.TP2` 组件 0           | 还会 COPY 一个 CRE/ITM/SPL，改动 ARLDV1/AR1000 脚本 |
| Tangled Oak Island         | `TANGLEDISLE.TP2` 组件 0 **或** 1         |                                            |
| Verr'Sza + Phalh（BG2 版）    | `L#2VERRB.dlg`                         | 走 `crossmod\verrsza\verrsza.tpa`           |
| **Walahnan**               | `L#2WHB.dlg`                           | 已汉化；34 条 banter                            |
| Whin Hill                  | `L#AFUB.dlg`                           |                                            |
| Will                       | `L0WILLB.dlg`                          |                                            |
| Kulyok's Xan               | `O#XAN.dlg`                            | BG2 版 Xan                                  |
| Xzelë                      | `L#XZEB.dlg`                           |                                            |
| Yeslick                    | `BLK#YES.dlg`                          |                                            |
| Yoshimo Romance            | `YRXYOS.dlg`                           | 204 条，BG2 端最大的一块 crossmod                  |
| Yvette                     | `Yvette/Setup-Yvette.tp2` 组件 0         | 还会 COPY 一把弓 `C0YXY3.ITM` 并加装备效果            |

**孤立文件**：`dialogue\BG2EE\crossmod\ascension\d\dialog.d`（6 条）没有被任何 tpa 引用，作者预留但没接线，装不装 Ascension 都不会触发。可忽略。

## 与你这套已汉化 mod 的衔接



* 在 Aura 名单里的：**Glam's NPC Pack（BG1）**、**Sirene（BG1 + BG2）**、**Walahnan（BG2）**。

* 不在名单里的：Gavin BG1/BG2、Ehlastra、Kalah、Jerry-Zinger、Kvel —— Aura 没有为它们写 crossmod，装先装后都不影响（Kvel 也没有反向要求）。

* 但注意 **Glam 本身要求 Sandrah 先装**（见 `Glam_crossmod与安装顺序.md`）。所以链路是：`Sandrah → Glam → Aura`。

## 建议的安装顺序（把你这套 mod 全排进去）



```
1  基础/修复       BG1EE→(BG2EE or EET)、EEex（只有选「Artificer 吟游诗人」组件才需要）
2  任务/地区 mod    Shades of the Sword Coast、Tales of the Deep Gardens、
                   Tangled Oak Isle、The Southern Edge、Whin Hill、
                   The Ooze's Lounge、Sellswords、Back to Brynnlaw、
                   Foundling、Skie: The Cost of One Soul、Yoshimo Romance、
                   Yvette、Pai'Na、Dvaradime、Ascension（可选）
3  BG1 NPC mod     Sandrah(可选) → Glam's NPC Pack → Sirene(BG1) → Drake →
                   Verr'Sza(BG1) → White → Isra → Emily → Helga → Kale →
                   Recorder → Vienxay → Kvel → Ehlastra → Kalah → Gavin BG1 →
                   Jerry-Zinger
4  BG2 NPC mod     Fade → Faldorn → Lhannd → Will → Xan → Xzelë → Yeslick →
                   Skitia's NPCs → Verr'Sza(BG2) → Walahnan → Sirene(BG2) →
                   Gavin BG2
5  Aura            组件顺序：先装 0/1/2 主组件 → 再选职业子组件(3~6) →
                   再装头像(7~12) → 最后「Import BG1 upgrades」(13)
```

要点：



* **Aura 放在所有第 2、3、4 步之后**，这是它 36 个 hook 能全部生效的唯一条件。

* Aura 内部也有顺序：`FORCED_SUBCOMPONENT` 的职业子组件（Artificer / Illusionist-Artificer / Priestess-Artificer / Bard-Artificer）必须紧跟主组件；「Import BG1 upgrades into BG2」要求组件 1 或 2 已装；头像组件挂在主组件之后。**吟游诗人那档额外要求 EEex 已装**（`MOD_IS_INSTALLED ~EEEX/EEEX.TP2~ ~0~`），否则该组件直接装不了。

* 如果你用的是 EET：组件 2（EET）会同时 INCLUDE `aura_bg1.tpa` 和 `aura_bg2.tpa`，BG1 与 BG2 的 crossmod 一次性全装，此时第 3、4 步的所有对象都得先到位。

## 顺带记一笔（对汉化有用的）

Aura 的文字**不在 tra 里**：`tra\english` 只有 7 个文件、87 条（`SETUP.TRA` 的 BG1 日志、`BG2\journal.TRA` 的 SoA/ToB 日志、以及 emily/kale/vienxay 三段 crossmod 闲聊）。**全部 1.5 万条对话 / 物品 / 法术文本是硬编码在&#x20;**`dialogue\*.d`**&#x20;与&#x20;**`lib\*.tpa`**&#x20;的&#x20;**`~...~`**&#x20;里的**（`dialogue\BG2EE\dialog.d` 一个文件就 2,881 条）。这意味着汉化只能就地改源文件，走不了「新增 schinese 目录」那套。