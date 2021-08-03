¯
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Menu 
{ 
public		 

class		 
	AdminMenu		 
:		 
INavigationProvider		 0
{

 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
var 
rvd 
= 
new  
RouteValueDictionary .
{ 
{ 
$str !
,! "
$str# )
}* +
,+ ,
{ 
$str 
, 
$str 0
}1 2
,2 3
{ 
$str /
,/ 0
$str1 7
}8 9
,9 :
{ 
$str 8
,8 9
true: >
}? @
} 
; 
builder!! 
.!! 
Add!! 
(!! 
S!! 
[!! 
$str!! #
]!!# $
,!!$ %
design!!& ,
=>!!- /
design!!0 6
."" 
Add"" 
("" 
S"" 
["" 
$str"" "
]""" #
,""# $
S""% &
[""& '
$str""' .
]"". /
.""/ 0
PrefixPosition""0 >
(""> ?
)""? @
,""@ A
menus""B G
=>""H J
menus""K P
.## 

Permission## #
(### $
Permissions##$ /
.##/ 0

ManageMenu##0 :
)##: ;
.$$ 
Action$$ 
($$  
$str$$  &
,$$& '
$str$$( /
,$$/ 0
rvd$$1 4
)$$4 5
.%% 
LocalNav%% !
(%%! "
)%%" #
)&& 
)&& 
;&& 
return(( 
Task(( 
.(( 
CompletedTask(( %
;((% &
})) 	
}** 
}++ à≈
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Controllers &
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
AdminController 
( 
ISession 
session 
, 
IContentManager 
contentManager *
,* +!
IAuthorizationService   ! 
authorizationService  " 6
,  6 7&
IContentItemDisplayManager!! &%
contentItemDisplayManager!!' @
,!!@ A%
IContentDefinitionManager"" %$
contentDefinitionManager""& >
,""> ?
	INotifier## 
notifier## 
,## 
IHtmlLocalizer$$ 
<$$ 
AdminController$$ *
>$$* +
	localizer$$, 5
,$$5 6 
IUpdateModelAccessor%%  
updateModelAccessor%%! 4
)%%4 5
{&& 	
_contentManager'' 
='' 
contentManager'' ,
;'', -!
_authorizationService(( !
=((" # 
authorizationService(($ 8
;((8 9&
_contentItemDisplayManager)) &
=))' (%
contentItemDisplayManager))) B
;))B C%
_contentDefinitionManager** %
=**& '$
contentDefinitionManager**( @
;**@ A
_session++ 
=++ 
session++ 
;++ 
	_notifier,, 
=,, 
notifier,,  
;,,  ! 
_updateModelAccessor--  
=--! "
updateModelAccessor--# 6
;--6 7
H.. 
=.. 
	localizer.. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Create11) /
(11/ 0
string110 6
id117 9
,119 :
string11; A
menuContentItemId11B S
,11S T
string11U [

menuItemId11\ f
)11f g
{22 	
if33 
(33 
String33 
.33 
IsNullOrWhiteSpace33 )
(33) *
id33* ,
)33, -
)33- .
{44 
return55 
NotFound55 
(55  
)55  !
;55! "
}66 
if88 
(88 
!88 
await88 !
_authorizationService88 ,
.88, -
AuthorizeAsync88- ;
(88; <
User88< @
,88@ A
Permissions88B M
.88M N

ManageMenu88N X
)88X Y
)88Y Z
{99 
return:: 
Forbid:: 
(:: 
):: 
;::  
};; 
var== 
contentItem== 
=== 
await== #
_contentManager==$ 3
.==3 4
NewAsync==4 <
(==< =
id=== ?
)==? @
;==@ A
dynamic?? 
model?? 
=?? 
await?? !&
_contentItemDisplayManager??" <
.??< =
BuildEditorAsync??= M
(??M N
contentItem??N Y
,??Y Z 
_updateModelAccessor??[ o
.??o p
ModelUpdater??p |
,??| }
true	??~ Ç
)
??Ç É
;
??É Ñ
modelAA 
.AA 
MenuContentItemIdAA #
=AA$ %
menuContentItemIdAA& 7
;AA7 8
modelBB 
.BB 

MenuItemIdBB 
=BB 

menuItemIdBB )
;BB) *
returnDD 
ViewDD 
(DD 
modelDD 
)DD 
;DD 
}EE 	
[GG 	
HttpPostGG	 
]GG 
[HH 	

ActionNameHH	 
(HH 
$strHH 
)HH 
]HH 
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (

CreatePostII) 3
(II3 4
stringII4 :
idII; =
,II= >
stringII? E
menuContentItemIdIIF W
,IIW X
stringIIY _

menuItemIdII` j
)IIj k
{JJ 	
ifKK 
(KK 
!KK 
awaitKK !
_authorizationServiceKK ,
.KK, -
AuthorizeAsyncKK- ;
(KK; <
UserKK< @
,KK@ A
PermissionsKKB M
.KKM N

ManageMenuKKN X
)KKX Y
)KKY Z
{LL 
returnMM 
ForbidMM 
(MM 
)MM 
;MM  
}NN 
ContentItemPP 
menuPP 
;PP 
varRR !
contentTypeDefinitionRR %
=RR& '%
_contentDefinitionManagerRR( A
.RRA B
GetTypeDefinitionRRB S
(RRS T
$strRRT Z
)RRZ [
;RR[ \
ifTT 
(TT 
!TT !
contentTypeDefinitionTT &
.TT& '
GetSettingsTT' 2
<TT2 3
ContentTypeSettingsTT3 F
>TTF G
(TTG H
)TTH I
.TTI J
	DraftableTTJ S
)TTS T
{UU 
menuVV 
=VV 
awaitVV 
_contentManagerVV ,
.VV, -
GetAsyncVV- 5
(VV5 6
menuContentItemIdVV6 G
,VVG H
VersionOptionsVVI W
.VVW X
LatestVVX ^
)VV^ _
;VV_ `
}WW 
elseXX 
{YY 
menuZZ 
=ZZ 
awaitZZ 
_contentManagerZZ ,
.ZZ, -
GetAsyncZZ- 5
(ZZ5 6
menuContentItemIdZZ6 G
,ZZG H
VersionOptionsZZI W
.ZZW X
DraftRequiredZZX e
)ZZe f
;ZZf g
}[[ 
if]] 
(]] 
menu]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NotFound__ 
(__  
)__  !
;__! "
}`` 
varbb 
contentItembb 
=bb 
awaitbb #
_contentManagerbb$ 3
.bb3 4
NewAsyncbb4 <
(bb< =
idbb= ?
)bb? @
;bb@ A
dynamicdd 
modeldd 
=dd 
awaitdd !&
_contentItemDisplayManagerdd" <
.dd< =
UpdateEditorAsyncdd= N
(ddN O
contentItemddO Z
,ddZ [ 
_updateModelAccessordd\ p
.ddp q
ModelUpdaterddq }
,dd} ~
true	dd É
)
ddÉ Ñ
;
ddÑ Ö
ifff 
(ff 
!ff 

ModelStateff 
.ff 
IsValidff #
)ff# $
{gg 
modelhh 
.hh 
MenuContentItemIdhh '
=hh( )
menuContentItemIdhh* ;
;hh; <
modelii 
.ii 

MenuItemIdii  
=ii! "

menuItemIdii# -
;ii- .
returnkk 
Viewkk 
(kk 
modelkk !
)kk! "
;kk" #
}ll 
ifnn 
(nn 

menuItemIdnn 
==nn 
nullnn "
)nn" #
{oo 
menuqq 
.qq 
Alterqq 
<qq 
MenuItemsListPartqq ,
>qq, -
(qq- .
partqq. 2
=>qq3 5
partqq6 :
.qq: ;
	MenuItemsqq; D
.qqD E
AddqqE H
(qqH I
contentItemqqI T
)qqT U
)qqU V
;qqV W
}rr 
elsess 
{tt 
varvv 
parentMenuItemvv "
=vv# $
FindMenuItemvv% 1
(vv1 2
menuvv2 6
.vv6 7
Contentvv7 >
,vv> ?

menuItemIdvv@ J
)vvJ K
;vvK L
ifyy 
(yy 
parentMenuItemyy "
==yy# %
nullyy& *
)yy* +
{zz 
return{{ 
NotFound{{ #
({{# $
){{$ %
;{{% &
}|| 
var~~ 
	menuItems~~ 
=~~ 
parentMenuItem~~  .
?~~. /
.~~/ 0
MenuItemsListPart~~0 A
?~~A B
.~~B C
	MenuItems~~C L
as~~M O
JArray~~P V
;~~V W
if
ÄÄ 
(
ÄÄ 
	menuItems
ÄÄ 
==
ÄÄ  
null
ÄÄ! %
)
ÄÄ% &
{
ÅÅ 
parentMenuItem
ÇÇ "
[
ÇÇ" #
$str
ÇÇ# 6
]
ÇÇ6 7
=
ÇÇ8 9
new
ÇÇ: =
JObject
ÇÇ> E
(
ÇÇE F
new
ÉÉ 
	JProperty
ÉÉ %
(
ÉÉ% &
$str
ÉÉ& 1
,
ÉÉ1 2
	menuItems
ÉÉ3 <
=
ÉÉ= >
new
ÉÉ? B
JArray
ÉÉC I
(
ÉÉI J
)
ÉÉJ K
)
ÉÉK L
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 
	menuItems
áá 
.
áá 
Add
áá 
(
áá 
JObject
áá %
.
áá% &

FromObject
áá& 0
(
áá0 1
contentItem
áá1 <
)
áá< =
)
áá= >
;
áá> ?
}
àà 
await
ää 
_contentManager
ää !
.
ää! "
SaveDraftAsync
ää" 0
(
ää0 1
menu
ää1 5
)
ää5 6
;
ää6 7
return
åå 
RedirectToAction
åå #
(
åå# $
$str
åå$ *
,
åå* +
$str
åå, 3
,
åå3 4
new
åå5 8
{
åå9 :
area
åå; ?
=
åå@ A
$str
ååB X
,
ååX Y
contentItemId
ååZ g
=
ååh i
menuContentItemId
ååj {
}
åå| }
)
åå} ~
;
åå~ 
}
çç 	
public
èè 
async
èè 
Task
èè 
<
èè 
IActionResult
èè '
>
èè' (
Edit
èè) -
(
èè- .
string
èè. 4
menuContentItemId
èè5 F
,
èèF G
string
èèH N

menuItemId
èèO Y
)
èèY Z
{
êê 	
var
ëë 
menu
ëë 
=
ëë 
await
ëë 
_contentManager
ëë ,
.
ëë, -
GetAsync
ëë- 5
(
ëë5 6
menuContentItemId
ëë6 G
,
ëëG H
VersionOptions
ëëI W
.
ëëW X
Latest
ëëX ^
)
ëë^ _
;
ëë_ `
if
ìì 
(
ìì 
menu
ìì 
==
ìì 
null
ìì 
)
ìì 
{
îî 
return
ïï 
NotFound
ïï 
(
ïï  
)
ïï  !
;
ïï! "
}
ññ 
if
òò 
(
òò 
!
òò 
await
òò #
_authorizationService
òò ,
.
òò, -
AuthorizeAsync
òò- ;
(
òò; <
User
òò< @
,
òò@ A
Permissions
òòB M
.
òòM N

ManageMenu
òòN X
,
òòX Y
menu
òòZ ^
)
òò^ _
)
òò_ `
{
ôô 
return
öö 
Forbid
öö 
(
öö 
)
öö 
;
öö  
}
õõ 
JObject
ûû 
menuItem
ûû 
=
ûû 
FindMenuItem
ûû +
(
ûû+ ,
menu
ûû, 0
.
ûû0 1
Content
ûû1 8
,
ûû8 9

menuItemId
ûû: D
)
ûûD E
;
ûûE F
if
°° 
(
°° 
menuItem
°° 
==
°° 
null
°°  
)
°°  !
{
¢¢ 
return
££ 
NotFound
££ 
(
££  
)
££  !
;
££! "
}
§§ 
var
¶¶ 
contentItem
¶¶ 
=
¶¶ 
menuItem
¶¶ &
.
¶¶& '
ToObject
¶¶' /
<
¶¶/ 0
ContentItem
¶¶0 ;
>
¶¶; <
(
¶¶< =
)
¶¶= >
;
¶¶> ?
dynamic
®® 
model
®® 
=
®® 
await
®® !(
_contentItemDisplayManager
®®" <
.
®®< =
BuildEditorAsync
®®= M
(
®®M N
contentItem
®®N Y
,
®®Y Z"
_updateModelAccessor
®®[ o
.
®®o p
ModelUpdater
®®p |
,
®®| }
false®®~ É
)®®É Ñ
;®®Ñ Ö
model
™™ 
.
™™ 
MenuContentItemId
™™ #
=
™™$ %
menuContentItemId
™™& 7
;
™™7 8
model
´´ 
.
´´ 

MenuItemId
´´ 
=
´´ 

menuItemId
´´ )
;
´´) *
return
≠≠ 
View
≠≠ 
(
≠≠ 
model
≠≠ 
)
≠≠ 
;
≠≠ 
}
ÆÆ 	
[
∞∞ 	
HttpPost
∞∞	 
]
∞∞ 
[
±± 	

ActionName
±±	 
(
±± 
$str
±± 
)
±± 
]
±± 
public
≤≤ 
async
≤≤ 
Task
≤≤ 
<
≤≤ 
IActionResult
≤≤ '
>
≤≤' (
EditPost
≤≤) 1
(
≤≤1 2
string
≤≤2 8
menuContentItemId
≤≤9 J
,
≤≤J K
string
≤≤L R

menuItemId
≤≤S ]
)
≤≤] ^
{
≥≥ 	
if
¥¥ 
(
¥¥ 
!
¥¥ 
await
¥¥ #
_authorizationService
¥¥ ,
.
¥¥, -
AuthorizeAsync
¥¥- ;
(
¥¥; <
User
¥¥< @
,
¥¥@ A
Permissions
¥¥B M
.
¥¥M N

ManageMenu
¥¥N X
)
¥¥X Y
)
¥¥Y Z
{
µµ 
return
∂∂ 
Forbid
∂∂ 
(
∂∂ 
)
∂∂ 
;
∂∂  
}
∑∑ 
ContentItem
ππ 
menu
ππ 
;
ππ 
var
ªª #
contentTypeDefinition
ªª %
=
ªª& ''
_contentDefinitionManager
ªª( A
.
ªªA B
GetTypeDefinition
ªªB S
(
ªªS T
$str
ªªT Z
)
ªªZ [
;
ªª[ \
if
ΩΩ 
(
ΩΩ 
!
ΩΩ #
contentTypeDefinition
ΩΩ &
.
ΩΩ& '
GetSettings
ΩΩ' 2
<
ΩΩ2 3!
ContentTypeSettings
ΩΩ3 F
>
ΩΩF G
(
ΩΩG H
)
ΩΩH I
.
ΩΩI J
	Draftable
ΩΩJ S
)
ΩΩS T
{
ææ 
menu
øø 
=
øø 
await
øø 
_contentManager
øø ,
.
øø, -
GetAsync
øø- 5
(
øø5 6
menuContentItemId
øø6 G
,
øøG H
VersionOptions
øøI W
.
øøW X
Latest
øøX ^
)
øø^ _
;
øø_ `
}
¿¿ 
else
¡¡ 
{
¬¬ 
menu
√√ 
=
√√ 
await
√√ 
_contentManager
√√ ,
.
√√, -
GetAsync
√√- 5
(
√√5 6
menuContentItemId
√√6 G
,
√√G H
VersionOptions
√√I W
.
√√W X
DraftRequired
√√X e
)
√√e f
;
√√f g
}
ƒƒ 
if
∆∆ 
(
∆∆ 
menu
∆∆ 
==
∆∆ 
null
∆∆ 
)
∆∆ 
{
«« 
return
»» 
NotFound
»» 
(
»»  
)
»»  !
;
»»! "
}
…… 
JObject
ÃÃ 
menuItem
ÃÃ 
=
ÃÃ 
FindMenuItem
ÃÃ +
(
ÃÃ+ ,
menu
ÃÃ, 0
.
ÃÃ0 1
Content
ÃÃ1 8
,
ÃÃ8 9

menuItemId
ÃÃ: D
)
ÃÃD E
;
ÃÃE F
if
œœ 
(
œœ 
menuItem
œœ 
==
œœ 
null
œœ  
)
œœ  !
{
–– 
return
—— 
NotFound
—— 
(
——  
)
——  !
;
——! "
}
““ 
var
‘‘ 
existing
‘‘ 
=
‘‘ 
menuItem
‘‘ #
.
‘‘# $
ToObject
‘‘$ ,
<
‘‘, -
ContentItem
‘‘- 8
>
‘‘8 9
(
‘‘9 :
)
‘‘: ;
;
‘‘; <
var
◊◊ 
contentItem
◊◊ 
=
◊◊ 
await
◊◊ #
_contentManager
◊◊$ 3
.
◊◊3 4
NewAsync
◊◊4 <
(
◊◊< =
existing
◊◊= E
.
◊◊E F
ContentType
◊◊F Q
)
◊◊Q R
;
◊◊R S
contentItem
ŸŸ 
.
ŸŸ 
Merge
ŸŸ 
(
ŸŸ 
existing
ŸŸ &
)
ŸŸ& '
;
ŸŸ' (
dynamic
€€ 
model
€€ 
=
€€ 
await
€€ !(
_contentItemDisplayManager
€€" <
.
€€< =
UpdateEditorAsync
€€= N
(
€€N O
contentItem
€€O Z
,
€€Z ["
_updateModelAccessor
€€\ p
.
€€p q
ModelUpdater
€€q }
,
€€} ~
false€€ Ñ
)€€Ñ Ö
;€€Ö Ü
if
›› 
(
›› 
!
›› 

ModelState
›› 
.
›› 
IsValid
›› #
)
››# $
{
ﬁﬁ 
model
ﬂﬂ 
.
ﬂﬂ 
MenuContentItemId
ﬂﬂ '
=
ﬂﬂ( )
menuContentItemId
ﬂﬂ* ;
;
ﬂﬂ; <
model
‡‡ 
.
‡‡ 

MenuItemId
‡‡  
=
‡‡! "

menuItemId
‡‡# -
;
‡‡- .
return
‚‚ 
View
‚‚ 
(
‚‚ 
model
‚‚ !
)
‚‚! "
;
‚‚" #
}
„„ 
menuItem
ÂÂ 
.
ÂÂ 
Merge
ÂÂ 
(
ÂÂ 
contentItem
ÂÂ &
.
ÂÂ& '
Content
ÂÂ' .
,
ÂÂ. /
new
ÂÂ0 3
JsonMergeSettings
ÂÂ4 E
{
ÊÊ  
MergeArrayHandling
ÁÁ "
=
ÁÁ# $ 
MergeArrayHandling
ÁÁ% 7
.
ÁÁ7 8
Replace
ÁÁ8 ?
,
ÁÁ? @$
MergeNullValueHandling
ËË &
=
ËË' ($
MergeNullValueHandling
ËË) ?
.
ËË? @
Merge
ËË@ E
}
ÈÈ 
)
ÈÈ 
;
ÈÈ 
menuItem
ÏÏ 
[
ÏÏ 
nameof
ÏÏ 
(
ÏÏ 
ContentItem
ÏÏ '
.
ÏÏ' (
DisplayText
ÏÏ( 3
)
ÏÏ3 4
]
ÏÏ4 5
=
ÏÏ6 7
contentItem
ÏÏ8 C
.
ÏÏC D
DisplayText
ÏÏD O
;
ÏÏO P
await
ÓÓ 
_contentManager
ÓÓ !
.
ÓÓ! "
SaveDraftAsync
ÓÓ" 0
(
ÓÓ0 1
menu
ÓÓ1 5
)
ÓÓ5 6
;
ÓÓ6 7
return
 
RedirectToAction
 #
(
# $
$str
$ *
,
* +
$str
, 3
,
3 4
new
5 8
{
9 :
area
; ?
=
@ A
$str
B X
,
X Y
contentItemId
Z g
=
h i
menuContentItemId
j {
}
| }
)
} ~
;
~ 
}
ÒÒ 	
[
ÛÛ 	
HttpPost
ÛÛ	 
]
ÛÛ 
public
ÙÙ 
async
ÙÙ 
Task
ÙÙ 
<
ÙÙ 
IActionResult
ÙÙ '
>
ÙÙ' (
Delete
ÙÙ) /
(
ÙÙ/ 0
string
ÙÙ0 6
menuContentItemId
ÙÙ7 H
,
ÙÙH I
string
ÙÙJ P

menuItemId
ÙÙQ [
)
ÙÙ[ \
{
ıı 	
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 
await
ˆˆ #
_authorizationService
ˆˆ ,
.
ˆˆ, -
AuthorizeAsync
ˆˆ- ;
(
ˆˆ; <
User
ˆˆ< @
,
ˆˆ@ A
Permissions
ˆˆB M
.
ˆˆM N

ManageMenu
ˆˆN X
)
ˆˆX Y
)
ˆˆY Z
{
˜˜ 
return
¯¯ 
Forbid
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯  
}
˘˘ 
ContentItem
˚˚ 
menu
˚˚ 
;
˚˚ 
var
˝˝ #
contentTypeDefinition
˝˝ %
=
˝˝& ''
_contentDefinitionManager
˝˝( A
.
˝˝A B
GetTypeDefinition
˝˝B S
(
˝˝S T
$str
˝˝T Z
)
˝˝Z [
;
˝˝[ \
if
ˇˇ 
(
ˇˇ 
!
ˇˇ #
contentTypeDefinition
ˇˇ &
.
ˇˇ& '
GetSettings
ˇˇ' 2
<
ˇˇ2 3!
ContentTypeSettings
ˇˇ3 F
>
ˇˇF G
(
ˇˇG H
)
ˇˇH I
.
ˇˇI J
	Draftable
ˇˇJ S
)
ˇˇS T
{
ÄÄ 
menu
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_contentManager
ÅÅ ,
.
ÅÅ, -
GetAsync
ÅÅ- 5
(
ÅÅ5 6
menuContentItemId
ÅÅ6 G
,
ÅÅG H
VersionOptions
ÅÅI W
.
ÅÅW X
Latest
ÅÅX ^
)
ÅÅ^ _
;
ÅÅ_ `
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
menu
ÖÖ 
=
ÖÖ 
await
ÖÖ 
_contentManager
ÖÖ ,
.
ÖÖ, -
GetAsync
ÖÖ- 5
(
ÖÖ5 6
menuContentItemId
ÖÖ6 G
,
ÖÖG H
VersionOptions
ÖÖI W
.
ÖÖW X
DraftRequired
ÖÖX e
)
ÖÖe f
;
ÖÖf g
}
ÜÜ 
if
àà 
(
àà 
menu
àà 
==
àà 
null
àà 
)
àà 
{
ââ 
return
ää 
NotFound
ää 
(
ää  
)
ää  !
;
ää! "
}
ãã 
var
éé 
menuItem
éé 
=
éé 
FindMenuItem
éé '
(
éé' (
menu
éé( ,
.
éé, -
Content
éé- 4
,
éé4 5

menuItemId
éé6 @
)
éé@ A
;
ééA B
if
ëë 
(
ëë 
menuItem
ëë 
==
ëë 
null
ëë  
)
ëë  !
{
íí 
return
ìì 
NotFound
ìì 
(
ìì  
)
ìì  !
;
ìì! "
}
îî 
menuItem
ññ 
.
ññ 
Remove
ññ 
(
ññ 
)
ññ 
;
ññ 
await
òò 
_contentManager
òò !
.
òò! "
SaveDraftAsync
òò" 0
(
òò0 1
menu
òò1 5
)
òò5 6
;
òò6 7
	_notifier
öö 
.
öö 
Success
öö 
(
öö 
H
öö 
[
öö  
$str
öö  A
]
ööA B
)
ööB C
;
ööC D
return
úú 
RedirectToAction
úú #
(
úú# $
$str
úú$ *
,
úú* +
$str
úú, 3
,
úú3 4
new
úú5 8
{
úú9 :
area
úú; ?
=
úú@ A
$str
úúB X
,
úúX Y
contentItemId
úúZ g
=
úúh i
menuContentItemId
úúj {
}
úú| }
)
úú} ~
;
úú~ 
}
ùù 	
private
üü 
JObject
üü 
FindMenuItem
üü $
(
üü$ %
JObject
üü% ,
contentItem
üü- 8
,
üü8 9
string
üü: @

menuItemId
üüA K
)
üüK L
{
†† 	
if
°° 
(
°° 
contentItem
°° 
[
°° 
$str
°° +
]
°°+ ,
?
°°, -
.
°°- .
Value
°°. 3
<
°°3 4
string
°°4 :
>
°°: ;
(
°°; <
)
°°< =
==
°°> @

menuItemId
°°A K
)
°°K L
{
¢¢ 
return
££ 
contentItem
££ "
;
££" #
}
§§ 
if
¶¶ 
(
¶¶ 
contentItem
¶¶ 
.
¶¶ 
GetValue
¶¶ $
(
¶¶$ %
$str
¶¶% 8
)
¶¶8 9
==
¶¶: <
null
¶¶= A
)
¶¶A B
{
ßß 
return
®® 
null
®® 
;
®® 
}
©© 
var
´´ 
	menuItems
´´ 
=
´´ 
(
´´ 
JArray
´´ #
)
´´# $
contentItem
´´$ /
[
´´/ 0
$str
´´0 C
]
´´C D
[
´´D E
$str
´´E P
]
´´P Q
;
´´Q R
JObject
≠≠ 
result
≠≠ 
;
≠≠ 
foreach
ØØ 
(
ØØ 
JObject
ØØ 
menuItem
ØØ %
in
ØØ& (
	menuItems
ØØ) 2
)
ØØ2 3
{
∞∞ 
result
≤≤ 
=
≤≤ 
FindMenuItem
≤≤ %
(
≤≤% &
menuItem
≤≤& .
,
≤≤. /

menuItemId
≤≤0 :
)
≤≤: ;
;
≤≤; <
if
¥¥ 
(
¥¥ 
result
¥¥ 
!=
¥¥ 
null
¥¥ "
)
¥¥" #
{
µµ 
return
∂∂ 
result
∂∂ !
;
∂∂! "
}
∑∑ 
}
∏∏ 
return
∫∫ 
null
∫∫ 
;
∫∫ 
}
ªª 	
}
ºº 
}ΩΩ Î
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Drivers\ContentMenuItemPartDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Menu		 
.		 
Drivers		 "
{

 
public 

class ,
 ContentMenuItemPartDisplayDriver 1
:2 3$
ContentPartDisplayDriver4 L
<L M
ContentMenuItemPartM `
>` a
{ 
public 
override 
IDisplayResult &
Display' .
(. /
ContentMenuItemPart/ B
partC G
,G H#
BuildPartDisplayContextI `
contexta h
)h i
{ 	
return 
Combine 
( 
Dynamic 
( 
$str 3
,3 4
shape5 :
=>; =
{ 
shape 
. 
MenuItemPart &
=' (
part) -
;- .
} 
) 
. 
Location 
( 
$str !
,! "
$str# /
)/ 0
,0 1
Dynamic 
( 
$str 7
,7 8
shape9 >
=>? A
{ 
shape 
. 
MenuItemPart &
=' (
part) -
;- .
} 
) 
. 
Location 
( 
$str %
,% &
$str' 3
)3 4
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
ContentMenuItemPart, ?
part@ D
)D E
{ 	
return 

Initialize 
< ,
 ContentMenuItemPartEditViewModel >
>> ?
(? @
$str@ Z
,Z [
model\ a
=>b d
{   
model!! 
.!! 
Name!! 
=!! 
part!! !
.!!! "
ContentItem!!" -
.!!- .
DisplayText!!. 9
;!!9 :
model"" 
."" 
MenuItemPart"" "
=""# $
part""% )
;"") *
}## 
)## 
;## 
}$$ 	
public&& 
override&& 
async&& 
Task&& "
<&&" #
IDisplayResult&&# 1
>&&1 2
UpdateAsync&&3 >
(&&> ?
ContentMenuItemPart&&? R
part&&S W
,&&W X
IUpdateModel&&Y e
updater&&f m
)&&m n
{'' 	
var(( 
model(( 
=(( 
new(( ,
 ContentMenuItemPartEditViewModel(( <
(((< =
)((= >
;((> ?
if** 
(** 
await** 
updater** 
.** 
TryUpdateModelAsync** 1
(**1 2
model**2 7
,**7 8
Prefix**9 ?
)**? @
)**@ A
{++ 
part,, 
.,, 
ContentItem,,  
.,,  !
DisplayText,,! ,
=,,- .
model,,/ 4
.,,4 5
Name,,5 9
;,,9 :
part// 
.// 
Name// 
=// 
model// !
.//! "
Name//" &
;//& '
}11 
return33 
Edit33 
(33 
part33 
)33 
;33 
}44 	
}55 
}66 Ö,
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Drivers\HtmlMenuItemPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Drivers "
{ 
public 

class )
HtmlMenuItemPartDisplayDriver .
:/ 0$
ContentPartDisplayDriver1 I
<I J
HtmlMenuItemPartJ Z
>Z [
{ 
private 
readonly !
IHtmlSanitizerService .!
_htmlSanitizerService/ D
;D E
public )
HtmlMenuItemPartDisplayDriver ,
(, -!
IHtmlSanitizerService- B 
htmlSanitizerServiceC W
)W X
{ 	!
_htmlSanitizerService !
=" # 
htmlSanitizerService$ 8
;8 9
} 	
public 
override 
IDisplayResult &
Display' .
(. /
HtmlMenuItemPart/ ?
part@ D
,D E#
BuildPartDisplayContextF ]
context^ e
)e f
{ 	
var 
settings 
= 
context "
." #
TypePartDefinition# 5
.5 6
GetSettings6 A
<A B$
HtmlMenuItemPartSettingsB Z
>Z [
([ \
)\ ]
;] ^
if 
( 
settings 
. 
SanitizeHtml %
)% &
{ 
part 
. 
Html 
= !
_htmlSanitizerService 1
.1 2
Sanitize2 :
(: ;
part; ?
.? @
Html@ D
)D E
;E F
} 
return 
Combine 
( 
Dynamic   
(   
$str   0
,  0 1
shape  2 7
=>  8 :
{!! 
shape"" 
."" 
MenuItemPart"" &
=""' (
part"") -
;""- .
}## 
)## 
.$$ 
Location$$ 
($$ 
$str$$ !
,$$! "
$str$$# /
)$$/ 0
,$$0 1
Dynamic%% 
(%% 
$str%% 4
,%%4 5
shape%%6 ;
=>%%< >
{&& 
shape'' 
.'' 
MenuItemPart'' &
=''' (
part'') -
;''- .
}(( 
)(( 
.)) 
Location)) 
()) 
$str)) %
,))% &
$str))' 3
)))3 4
)** 
;** 
}++ 	
public-- 
override-- 
IDisplayResult-- &
Edit--' +
(--+ ,
HtmlMenuItemPart--, <
part--= A
)--A B
{.. 	
return// 

Initialize// 
<// )
HtmlMenuItemPartEditViewModel// ;
>//; <
(//< =
$str//= T
,//T U
model//V [
=>//\ ^
{00 
model11 
.11 
Name11 
=11 
part11 !
.11! "
ContentItem11" -
.11- .
DisplayText11. 9
;119 :
model22 
.22 
Url22 
=22 
part22  
.22  !
Url22! $
;22$ %
model33 
.33 
Html33 
=33 
part33 !
.33! "
Html33" &
;33& '
model44 
.44 
MenuItemPart44 "
=44# $
part44% )
;44) *
}55 
)55 
;55 
}66 	
public88 
override88 
async88 
Task88 "
<88" #
IDisplayResult88# 1
>881 2
UpdateAsync883 >
(88> ?
HtmlMenuItemPart88? O
part88P T
,88T U
IUpdateModel88V b
updater88c j
,88j k$
UpdatePartEditorContext	88l É
context
88Ñ ã
)
88ã å
{99 	
var:: 
settings:: 
=:: 
context:: "
.::" #
TypePartDefinition::# 5
.::5 6
GetSettings::6 A
<::A B$
HtmlMenuItemPartSettings::B Z
>::Z [
(::[ \
)::\ ]
;::] ^
var;; 
model;; 
=;; 
new;; )
HtmlMenuItemPartEditViewModel;; 9
(;;9 :
);;: ;
;;;; <
if<< 
(<< 
await<< 
updater<< 
.<< 
TryUpdateModelAsync<< 1
(<<1 2
model<<2 7
,<<7 8
Prefix<<9 ?
)<<? @
)<<@ A
{== 
part>> 
.>> 
ContentItem>>  
.>>  !
DisplayText>>! ,
=>>- .
model>>/ 4
.>>4 5
Name>>5 9
;>>9 :
part?? 
.?? 
Html?? 
=?? 
settings?? $
.??$ %
SanitizeHtml??% 1
???2 3!
_htmlSanitizerService??4 I
.??I J
Sanitize??J R
(??R S
model??S X
.??X Y
Html??Y ]
)??] ^
:??_ `
model??a f
.??f g
Html??g k
;??k l
part@@ 
.@@ 
Url@@ 
=@@ 
model@@  
.@@  !
Url@@! $
;@@$ %
}AA 
returnCC 
EditCC 
(CC 
partCC 
,CC 
contextCC %
)CC% &
;CC& '
}DD 	
}EE 
}FF Ÿ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Drivers\LinkMenuItemPartDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Menu		 
.		 
Drivers		 "
{

 
public 

class )
LinkMenuItemPartDisplayDriver .
:/ 0$
ContentPartDisplayDriver1 I
<I J
LinkMenuItemPartJ Z
>Z [
{ 
public 
override 
IDisplayResult &
Display' .
(. /
LinkMenuItemPart/ ?
part@ D
,D E#
BuildPartDisplayContextF ]
context^ e
)e f
{ 	
return 
Combine 
( 
Dynamic 
( 
$str 0
,0 1
shape2 7
=>8 :
{ 
shape 
. 
MenuItemPart &
=' (
part) -
;- .
} 
) 
. 
Location 
( 
$str !
,! "
$str# /
)/ 0
,0 1
Dynamic 
( 
$str 4
,4 5
shape6 ;
=>< >
{ 
shape 
. 
MenuItemPart &
=' (
part) -
;- .
} 
) 
. 
Location 
( 
$str %
,% &
$str' 3
)3 4
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
LinkMenuItemPart, <
part= A
)A B
{ 	
return   

Initialize   
<   )
LinkMenuItemPartEditViewModel   ;
>  ; <
(  < =
$str  = T
,  T U
model  V [
=>  \ ^
{!! 
model"" 
."" 
Name"" 
="" 
part"" !
.""! "
ContentItem""" -
.""- .
DisplayText"". 9
;""9 :
model## 
.## 
Url## 
=## 
part##  
.##  !
Url##! $
;##$ %
model$$ 
.$$ 
MenuItemPart$$ "
=$$# $
part$$% )
;$$) *
}%% 
)%% 
;%% 
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?
LinkMenuItemPart((? O
part((P T
,((T U
IUpdateModel((V b
updater((c j
)((j k
{)) 	
var** 
model** 
=** 
new** )
LinkMenuItemPartEditViewModel** 9
(**9 :
)**: ;
;**; <
if,, 
(,, 
await,, 
updater,, 
.,, 
TryUpdateModelAsync,, 1
(,,1 2
model,,2 7
,,,7 8
Prefix,,9 ?
),,? @
),,@ A
{-- 
part.. 
... 
Url.. 
=.. 
model..  
...  !
Url..! $
;..$ %
part// 
.// 
ContentItem//  
.//  !
DisplayText//! ,
=//- .
model/// 4
.//4 5
Name//5 9
;//9 :
part22 
.22 
Name22 
=22 
model22 !
.22! "
Name22" &
;22& '
}44 
return55 
Edit55 
(55 
part55 
)55 
;55 
}66 	
}77 
}88 ˜:
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Drivers\MenuPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Drivers "
{ 
public 

class !
MenuPartDisplayDriver &
:' ($
ContentPartDisplayDriver) A
<A B
MenuPartB J
>J K
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,
MenuPart, 4
part5 9
)9 :
{ 	
return 

Initialize 
< !
MenuPartEditViewModel 3
>3 4
(4 5
$str5 D
,D E
modelF K
=>L N
{ 
model 
. 
MenuPart 
=  
part! %
;% &
} 
) 
; 
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
MenuPart? G
partH L
,L M
IUpdateModelN Z
updater[ b
)b c
{ 	
var 
model 
= 
new !
MenuPartEditViewModel 1
(1 2
)2 3
;3 4
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
model2 7
,7 8
Prefix9 ?
,? @
tA B
=>C E
tF G
.G H
	HierarchyH Q
)Q R
&&S U
!V W
StringW ]
.] ^
IsNullOrWhiteSpace^ p
(p q
modelq v
.v w
	Hierarchy	w Ä
)
Ä Å
)
Å Ç
{ 
var   
originalMenuItems   %
=  & '
part  ( ,
.  , -
ContentItem  - 8
.  8 9
As  9 ;
<  ; <
MenuItemsListPart  < M
>  M N
(  N O
)  O P
;  P Q
var"" 
newHierarchy""  
=""! "
JArray""# )
."") *
Parse""* /
(""/ 0
model""0 5
.""5 6
	Hierarchy""6 ?
)""? @
;""@ A
var$$ 
	menuItems$$ 
=$$ 
new$$  #
JArray$$$ *
($$* +
)$$+ ,
;$$, -
foreach&& 
(&& 
var&& 
item&& !
in&&" $
newHierarchy&&% 1
)&&1 2
{'' 
	menuItems(( 
.(( 
Add(( !
(((! "
ProcessItem((" -
(((- .
originalMenuItems((. ?
,((? @
item((A E
as((F H
JObject((I P
)((P Q
)((Q R
;((R S
})) 
part++ 
.++ 
ContentItem++  
.++  !
Content++! (
[++( )
$str++) <
]++< =
=++> ?
new++@ C
JObject++D K
(++K L
new++L O
	JProperty++P Y
(++Y Z
$str++Z e
,++e f
	menuItems++g p
)++p q
)++q r
;++r s
},, 
return.. 
Edit.. 
(.. 
part.. 
).. 
;.. 
}// 	
private44 
JObject44 
GetMenuItemAt44 %
(44% &
MenuItemsListPart44& 7
	menuItems448 A
,44A B
int44C F
[44F G
]44G H
indexes44I P
)44P Q
{55 	
ContentItem66 
menuItem66  
=66! "
null66# '
;66' (
foreach88 
(88 
var88 
index88 
in88 !
indexes88" )
)88) *
{99 
menuItem:: 
=:: 
	menuItems:: $
.::$ %
	MenuItems::% .
[::. /
index::/ 4
]::4 5
;::5 6
	menuItems;; 
=;; 
menuItem;; $
.;;$ %
As;;% '
<;;' (
MenuItemsListPart;;( 9
>;;9 :
(;;: ;
);;; <
;;;< =
}<< 
var>> 
newObj>> 
=>> 
JObject>>  
.>>  !
Parse>>! &
(>>& '
JsonConvert>>' 2
.>>2 3
SerializeObject>>3 B
(>>B C
menuItem>>C K
)>>K L
)>>L M
;>>M N
if?? 
(?? 
newObj?? 
[?? 
$str?? *
]??* +
!=??, .
null??/ 3
)??3 4
{@@ 
newObjAA 
[AA 
$strAA *
]AA* +
=AA, -
newAA. 1
JObjectAA2 9
(AA9 :
newAA: =
	JPropertyAA> G
(AAG H
$strAAH S
,AAS T
newAAU X
JArrayAAY _
(AA_ `
)AA` a
)AAa b
)AAb c
;AAc d
}BB 
returnDD 
newObjDD 
;DD 
}EE 	
privateGG 
JObjectGG 
ProcessItemGG #
(GG# $
MenuItemsListPartGG$ 5
originalItemsGG6 C
,GGC D
JObjectGGE L
itemGGM Q
)GGQ R
{HH 	
varII 
contentItemII 
=II 
GetMenuItemAtII +
(II+ ,
originalItemsII, 9
,II9 :
itemII; ?
[II? @
$strII@ G
]IIG H
.IIH I
ToStringIII Q
(IIQ R
)IIR S
.IIS T
SplitIIT Y
(IIY Z
$charIIZ ]
)II] ^
.II^ _
SelectII_ e
(IIe f
xIIf g
=>IIh j
ConvertIIk r
.IIr s
ToInt32IIs z
(IIz {
xII{ |
)II| }
)II} ~
.II~ 
ToArray	II Ü
(
IIÜ á
)
IIá à
)
IIà â
;
IIâ ä
varKK 
childrenKK 
=KK 
itemKK 
[KK  
$strKK  *
]KK* +
asKK, .
JArrayKK/ 5
;KK5 6
ifMM 
(MM 
childrenMM 
!=MM 
nullMM  
)MM  !
{NN 
varOO 
	menuItemsOO 
=OO 
newOO  #
JArrayOO$ *
(OO* +
)OO+ ,
;OO, -
forQQ 
(QQ 
varQQ 
iQQ 
=QQ 
$numQQ 
;QQ 
iQQ  !
<QQ" #
childrenQQ$ ,
.QQ, -
CountQQ- 2
;QQ2 3
iQQ4 5
++QQ5 7
)QQ7 8
{RR 
	menuItemsSS 
.SS 
AddSS !
(SS! "
ProcessItemSS" -
(SS- .
originalItemsSS. ;
,SS; <
childrenSS= E
[SSE F
iSSF G
]SSG H
asSSI K
JObjectSSL S
)SSS T
)SST U
;SSU V
contentItemTT 
[TT  
$strTT  3
]TT3 4
=TT5 6
newTT7 :
JObjectTT; B
(TTB C
newTTC F
	JPropertyTTG P
(TTP Q
$strTTQ \
,TT\ ]
	menuItemsTT^ g
)TTg h
)TTh i
;TTi j
}UU 
}VV 
returnXX 
contentItemXX 
;XX 
}YY 	
}ZZ 
}[[ ·
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\GraphQL\HtmlMenuItemQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
GraphQL "
{ 
public 

class '
HtmlMenuItemQueryObjectType ,
:- .
ObjectGraphType/ >
<> ?
HtmlMenuItemPart? O
>O P
{ 
public '
HtmlMenuItemQueryObjectType *
(* +
)+ ,
{		 	
Name

 
=

 
$str

 %
;

% &
Field 
( 
x 
=> 
x 
. 
Url 
, 
nullable &
:& '
true( ,
), -
;- .
Field 
( 
x 
=> 
x 
. 
Html 
, 
nullable '
:' (
true) -
)- .
;. /
} 	
} 
} »	
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\GraphQL\LinkMenuItemQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
GraphQL "
{ 
public 

class '
LinkMenuItemQueryObjectType ,
:- .
ObjectGraphType/ >
<> ?
LinkMenuItemPart? O
>O P
{ 
public '
LinkMenuItemQueryObjectType *
(* +
)+ ,
{		 	
Name

 
=

 
$str

 %
;

% &
Field 
( 
x 
=> 
x 
. 
Name 
, 
nullable '
:' (
true) -
)- .
.. /
Description/ :
(: ;
$str; Y
)Y Z
;Z [
;\ ]
Field 
( 
x 
=> 
x 
. 
Url 
, 
nullable &
:& '
true( ,
), -
;- .
} 	
} 
} ¶
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\GraphQL\MenuItemContentTypeBuilder.cs
	namespace		 	
OrchardCore		
 
.		 
Menu		 
.		 
GraphQL		 "
{

 
public 

class &
MenuItemContentTypeBuilder +
:, -
IContentTypeBuilder. A
{ 
public 
void 
Build 
( 
	FieldType #
contentQuery$ 0
,0 1!
ContentTypeDefinition2 G!
contentTypeDefinitionH ]
,] ^
ContentItemType_ n
contentItemTypeo ~
)~ 
{ 	
var 
settings 
= !
contentTypeDefinition 0
.0 1
GetSettings1 <
<< =
ContentTypeSettings= P
>P Q
(Q R
)R S
;S T
if 
( 
settings 
. 

Stereotype #
!=$ &
$str' 1
)1 2
return3 9
;9 :
contentItemType 
. 
Field !
<! "(
MenuItemsListQueryObjectType" >
>> ?
(? @
nameof 
( 
MenuItemsListPart (
)( )
.) *
ToFieldName* 5
(5 6
)6 7
,7 8
resolve 
: 
context  
=>! #
context$ +
.+ ,
Source, 2
.2 3
As3 5
<5 6
MenuItemsListPart6 G
>G H
(H I
)I J
) 
; 
contentItemType 
. 
	Interface %
<% &
MenuItemInterface& 7
>7 8
(8 9
)9 :
;: ;
} 	
} 
} Í
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\GraphQL\MenuItemInterface.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
GraphQL "
{ 
public 

class 
MenuItemInterface "
:# $
InterfaceGraphType% 7
<7 8
ContentItem8 C
>C D
{ 
public		 
MenuItemInterface		  
(		  !
)		! "
{

 	
Name 
= 
$str 
; 
Field 
( 
typeof 
( (
MenuItemsListQueryObjectType 5
)5 6
,6 7
$str8 G
,G H
resolveI P
:P Q
contextR Y
=>Z \
context] d
.d e
Sourcee k
.k l
Asl n
<n o
MenuItemsListPart	o Ä
>
Ä Å
(
Å Ç
)
Ç É
)
É Ñ
;
Ñ Ö
} 	
} 
} €
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\GraphQL\MenuItemsListQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
GraphQL "
{ 
public 

class (
MenuItemsListQueryObjectType -
:. /
ObjectGraphType0 ?
<? @
MenuItemsListPart@ Q
>Q R
{ 
public (
MenuItemsListQueryObjectType +
(+ ,
), -
{		 	
Name

 
=

 
$str

 &
;

& '
Field 
< 
ListGraphType 
<  
MenuItemInterface  1
>1 2
>2 3
(3 4
$str 
, 
$str !
,! "
resolve 
: 
context  
=>! #
context$ +
.+ ,
Source, 2
.2 3
	MenuItems3 <
)< =
;= >
} 	
} 
} ‡
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
GraphQL "
{ 
[		 
RequireFeatures		 
(		 
$str		 /
)		/ 0
]		0 1
public

 

class

 
Startup

 
:

 
StartupBase

 &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddObjectGraphType '
<' (
MenuItemsListPart( 9
,9 :(
MenuItemsListQueryObjectType; W
>W X
(X Y
)Y Z
;Z [
services 
. 
AddObjectGraphType '
<' (
LinkMenuItemPart( 8
,8 9'
LinkMenuItemQueryObjectType: U
>U V
(V W
)W X
;X Y
services 
. 
AddObjectGraphType '
<' (
HtmlMenuItemPart( 8
,8 9'
HtmlMenuItemQueryObjectType: U
>U V
(V W
)W X
;X Y
services 
. 
	AddScoped 
< 
IContentTypeBuilder 2
,2 3&
MenuItemContentTypeBuilder4 N
>N O
(O P
)P Q
;Q R
} 	
} 
} Ä
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Handlers\MenuHandler.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Handlers #
{ 
public 

class 
MenuContentHandler #
:$ %
ContentHandlerBase& 8
{		 
public

 
override

 
Task

 
ActivatedAsync

 +
(

+ ,#
ActivatedContentContext

, C
context

D K
)

K L
{ 	
if 
( 
context 
. 
ContentItem #
.# $
ContentType$ /
==0 2
$str3 9
)9 :
{ 
context 
. 
ContentItem #
.# $
Weld$ (
<( )
MenuPart) 1
>1 2
(2 3
new3 6
{7 8
Position9 A
=B C
$strD G
}H I
)I J
;J K
context 
. 
ContentItem #
.# $
Weld$ (
<( )
MenuItemsListPart) :
>: ;
(; <
new< ?
{@ A
PositionB J
=K L
$strM P
}Q R
)R S
;S T
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} â
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
Author 

= 
ManifestConstants 
. 
OrchardCoreTeam .
,. /
Website 
= 
ManifestConstants 
.  
OrchardCoreWebsite  2
,2 3
Version 
= 
ManifestConstants 
.  
OrchardCoreVersion  2
,2 3
Description 
= 
$str F
,F G
Dependencies		 
=		 
new		 
[		 
]		 
{

 
$str 
, 
$str 
, 
$str 
} 
, 
Category 
= 
$str 
) 
] ºè
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\MenuShapes.cs
	namespace

 	
OrchardCore


 
.

 
Menu

 
{ 
public 

class 

MenuShapes 
: 
IShapeTableProvider 1
{ 
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder 
. 
Describe 
( 
$str #
)# $
. 
OnProcessing 
( 
async #
context$ +
=>, .
{ 
dynamic 
menu  
=! "
context# *
.* +
Shape+ 0
;0 1
string 

identifier %
=& '
menu( ,
., -
ContentItemId- :
??; =
menu> B
.B C
AliasC H
;H I
if 
( 
String 
. 
IsNullOrEmpty ,
(, -

identifier- 7
)7 8
)8 9
{ 
return 
; 
} 
menu 
. 
Classes  
.  !
Add! $
($ %
$str% +
)+ ,
;, -
var!! 
shapeFactory!! $
=!!% &
context!!' .
.!!. /
ServiceProvider!!/ >
.!!> ?
GetRequiredService!!? Q
<!!Q R
IShapeFactory!!R _
>!!_ `
(!!` a
)!!a b
;!!b c
var"" 
contentManager"" &
=""' (
context"") 0
.""0 1
ServiceProvider""1 @
.""@ A
GetRequiredService""A S
<""S T
IContentManager""T c
>""c d
(""d e
)""e f
;""f g
var## 
handleManager## %
=##& '
context##( /
.##/ 0
ServiceProvider##0 ?
.##? @
GetRequiredService##@ R
<##R S!
IContentHandleManager##S h
>##h i
(##i j
)##j k
;##k l
string%% 
contentItemId%% (
=%%) *
menu%%+ /
.%%/ 0
Alias%%0 5
!=%%6 8
null%%9 =
?&& 
await&& 
handleManager&&  -
.&&- .!
GetContentItemIdAsync&&. C
(&&C D
menu&&D H
.&&H I
Alias&&I N
)&&N O
:'' 
menu'' 
.'' 
ContentItemId'' ,
;'', -
if)) 
()) 
contentItemId)) %
==))& (
null))) -
)))- .
{** 
return++ 
;++ 
},, 
var.. 
menuContentItem.. '
=..( )
await..* /
contentManager..0 >
...> ?
GetAsync..? G
(..G H
contentItemId..H U
)..U V
;..V W
if00 
(00 
menuContentItem00 '
==00( *
null00+ /
)00/ 0
{11 
return22 
;22 
}33 
menu55 
.55 
ContentItem55 $
=55% &
menuContentItem55' 6
;556 7
menu77 
.77 
MenuName77 !
=77" #
menuContentItem77$ 3
.773 4
DisplayText774 ?
;77? @
var99 
	menuItems99 !
=99" #
menuContentItem99$ 3
.993 4
As994 6
<996 7
MenuItemsListPart997 H
>99H I
(99I J
)99J K
?99K L
.99L M
	MenuItems99M V
;99V W
if;; 
(;; 
	menuItems;; !
==;;" $
null;;% )
);;) *
{<< 
return== 
;== 
}>> 
var@@ 
differentiator@@ &
=@@' (

FormatName@@) 3
(@@3 4
(@@4 5
string@@5 ;
)@@; <
menu@@< @
.@@@ A
MenuName@@A I
)@@I J
;@@J K
ifBB 
(BB 
!BB 
StringBB 
.BB  
IsNullOrEmptyBB  -
(BB- .
differentiatorBB. <
)BB< =
)BB= >
{CC 
menuEE 
.EE 
MetadataEE %
.EE% &

AlternatesEE& 0
.EE0 1
AddEE1 4
(EE4 5
$strEE5 =
+EE> ?
differentiatorEE@ N
)EEN O
;EEO P
menuFF 
.FF 
MetadataFF %
.FF% &
DifferentiatorFF& 4
=FF5 6
differentiatorFF7 E
;FFE F
menuGG 
.GG 
ClassesGG $
.GG$ %
AddGG% (
(GG( )
(GG) *
$strGG* 1
+GG2 3
differentiatorGG4 B
)GGB C
.GGC D
HtmlClassifyGGD P
(GGP Q
)GGQ R
)GGR S
;GGS T
}HH 
foreachMM 
(MM 
varMM  
contentItemMM! ,
inMM- /
	menuItemsMM0 9
)MM9 :
{NN 
varOO 
shapeOO !
=OO" #
awaitOO$ )
shapeFactoryOO* 6
.OO6 7
CreateAsyncOO7 B
(OOB C
$strOOC M
,OOM N
	ArgumentsOOO X
.OOX Y
FromOOY ]
(OO] ^
newOO^ a
{PP 
ContentItemQQ '
=QQ( )
contentItemQQ* 5
,QQ5 6
LevelRR !
=RR" #
$numRR$ %
,RR% &
MenuSS  
=SS! "
menuSS# '
}TT 
)TT 
)TT 
;TT 
shapeVV 
.VV 
MetadataVV &
.VV& '
DifferentiatorVV' 5
=VV6 7
differentiatorVV8 F
;VVF G
menuYY 
.YY 
AddYY  
(YY  !
shapeYY! &
)YY& '
;YY' (
}ZZ 
}[[ 
)[[ 
;[[ 
builder]] 
.]] 
Describe]] 
(]] 
$str]] '
)]]' (
.^^ 
OnDisplaying^^ 
(^^ 
async^^ #
context^^$ +
=>^^, .
{__ 
dynamic`` 
menuItem`` $
=``% &
context``' .
.``. /
Shape``/ 4
;``4 5
ContentItemaa 
menuContentItemaa  /
=aa0 1
menuItemaa2 :
.aa: ;
ContentItemaa; F
;aaF G
varbb 
menubb 
=bb 
menuItembb '
.bb' (
Menubb( ,
;bb, -
intcc 
levelcc 
=cc 
menuItemcc  (
.cc( )
Levelcc) .
;cc. /
stringdd 
differentiatordd )
=dd* +
menuItemdd, 4
.dd4 5
Metadatadd5 =
.dd= >
Differentiatordd> L
;ddL M
varff 
shapeFactoryff $
=ff% &
contextff' .
.ff. /
ServiceProviderff/ >
.ff> ?
GetRequiredServiceff? Q
<ffQ R
IShapeFactoryffR _
>ff_ `
(ff` a
)ffa b
;ffb c
varhh 
	menuItemshh !
=hh" #
menuContentItemhh$ 3
.hh3 4
Ashh4 6
<hh6 7
MenuItemsListParthh7 H
>hhH I
(hhI J
)hhJ K
?hhK L
.hhL M
	MenuItemshhM V
;hhV W
ifjj 
(jj 
	menuItemsjj !
!=jj" $
nulljj% )
)jj) *
{kk 
foreachll 
(ll  !
varll! $
contentItemll% 0
inll1 3
	menuItemsll4 =
)ll= >
{mm 
varnn 
shapenn  %
=nn& '
awaitnn( -
shapeFactorynn. :
.nn: ;
CreateAsyncnn; F
(nnF G
$strnnG Q
,nnQ R
	ArgumentsnnS \
.nn\ ]
Fromnn] a
(nna b
newnnb e
{oo 
ContentItempp  +
=pp, -
contentItempp. 9
,pp9 :
Levelqq  %
=qq& '
levelqq( -
+qq. /
$numqq0 1
,qq1 2
Menurr  $
=rr% &
menurr' +
}ss 
)ss 
)ss 
;ss  
shapeuu !
.uu! "
Metadatauu" *
.uu* +
Differentiatoruu+ 9
=uu: ;
differentiatoruu< J
;uuJ K
menuItemxx $
.xx$ %
Addxx% (
(xx( )
shapexx) .
)xx. /
;xx/ 0
}yy 
}zz 
var|| 
encodedContentType|| *
=||+ ,"
EncodeAlternateElement||- C
(||C D
menuContentItem||D S
.||S T
ContentItem||T _
.||_ `
ContentType||` k
)||k l
;||l m
menuItem 
. 
Metadata %
.% &

Alternates& 0
.0 1
Add1 4
(4 5
$str5 H
+I J
levelK P
)P Q
;Q R
menuItem
ÉÉ 
.
ÉÉ 
Metadata
ÉÉ %
.
ÉÉ% &

Alternates
ÉÉ& 0
.
ÉÉ0 1
Add
ÉÉ1 4
(
ÉÉ4 5
$str
ÉÉ5 A
+
ÉÉB C 
encodedContentType
ÉÉD V
)
ÉÉV W
;
ÉÉW X
menuItem
ÑÑ 
.
ÑÑ 
Metadata
ÑÑ %
.
ÑÑ% &

Alternates
ÑÑ& 0
.
ÑÑ0 1
Add
ÑÑ1 4
(
ÑÑ4 5
$str
ÑÑ5 A
+
ÑÑB C 
encodedContentType
ÑÑD V
+
ÑÑW X
$str
ÑÑY d
+
ÑÑe f
level
ÑÑg l
)
ÑÑl m
;
ÑÑm n
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
String
ÜÜ 
.
ÜÜ  
IsNullOrEmpty
ÜÜ  -
(
ÜÜ- .
differentiator
ÜÜ. <
)
ÜÜ< =
)
ÜÜ= >
{
áá 
menuItem
ää  
.
ää  !
Metadata
ää! )
.
ää) *

Alternates
ää* 4
.
ää4 5
Add
ää5 8
(
ää8 9
$str
ää9 E
+
ääF G
differentiator
ääH V
)
ääV W
;
ääW X
menuItem
ãã  
.
ãã  !
Metadata
ãã! )
.
ãã) *

Alternates
ãã* 4
.
ãã4 5
Add
ãã5 8
(
ãã8 9
$str
ãã9 E
+
ããF G
differentiator
ããH V
+
ããW X
$str
ããY d
+
ããe f
level
ããg l
)
ããl m
;
ããm n
menuItem
èè  
.
èè  !
Metadata
èè! )
.
èè) *

Alternates
èè* 4
.
èè4 5
Add
èè5 8
(
èè8 9
$str
èè9 E
+
èèF G
differentiator
èèH V
+
èèW X
$str
èèY ]
+
èè^ _ 
encodedContentType
èè` r
)
èèr s
;
èès t
menuItem
êê  
.
êê  !
Metadata
êê! )
.
êê) *

Alternates
êê* 4
.
êê4 5
Add
êê5 8
(
êê8 9
$str
êê9 E
+
êêF G
differentiator
êêH V
+
êêW X
$str
êêY ]
+
êê^ _ 
encodedContentType
êê` r
+
êês t
$strêêu Ä
+êêÅ Ç
levelêêÉ à
)êêà â
;êêâ ä
}
ëë 
}
íí 
)
íí 
;
íí 
builder
îî 
.
îî 
Describe
îî 
(
îî 
$str
îî +
)
îî+ ,
.
ïï 
OnDisplaying
ïï 
(
ïï 

displaying
ïï (
=>
ïï) +
{
ññ 
dynamic
óó 
menuItem
óó $
=
óó% &

displaying
óó' 1
.
óó1 2
Shape
óó2 7
;
óó7 8
int
òò 
level
òò 
=
òò 
menuItem
òò  (
.
òò( )
Level
òò) .
;
òò. /
string
ôô 
differentiator
ôô )
=
ôô* +
menuItem
ôô, 4
.
ôô4 5
Metadata
ôô5 =
.
ôô= >
Differentiator
ôô> L
;
ôôL M
ContentItem
õõ 
menuContentItem
õõ  /
=
õõ0 1
menuItem
õõ2 :
.
õõ: ;
ContentItem
õõ; F
;
õõF G
var
ùù  
encodedContentType
ùù *
=
ùù+ ,$
EncodeAlternateElement
ùù- C
(
ùùC D
menuContentItem
ùùD S
.
ùùS T
ContentItem
ùùT _
.
ùù_ `
ContentType
ùù` k
)
ùùk l
;
ùùl m
menuItem
üü 
.
üü 
Metadata
üü %
.
üü% &

Alternates
üü& 0
.
üü0 1
Add
üü1 4
(
üü4 5
$str
üü5 L
+
üüM N
level
üüO T
)
üüT U
;
üüU V
menuItem
££ 
.
££ 
Metadata
££ %
.
££% &

Alternates
££& 0
.
££0 1
Add
££1 4
(
££4 5
$str
££5 E
+
££F G 
encodedContentType
££H Z
)
££Z [
;
££[ \
menuItem
§§ 
.
§§ 
Metadata
§§ %
.
§§% &

Alternates
§§& 0
.
§§0 1
Add
§§1 4
(
§§4 5
$str
§§5 E
+
§§F G 
encodedContentType
§§H Z
+
§§[ \
$str
§§] h
+
§§i j
level
§§k p
)
§§p q
;
§§q r
if
¶¶ 
(
¶¶ 
!
¶¶ 
String
¶¶ 
.
¶¶  
IsNullOrEmpty
¶¶  -
(
¶¶- .
differentiator
¶¶. <
)
¶¶< =
)
¶¶= >
{
ßß 
menuItem
™™  
.
™™  !
Metadata
™™! )
.
™™) *

Alternates
™™* 4
.
™™4 5
Add
™™5 8
(
™™8 9
$str
™™9 I
+
™™J K
differentiator
™™L Z
)
™™Z [
;
™™[ \
menuItem
´´  
.
´´  !
Metadata
´´! )
.
´´) *

Alternates
´´* 4
.
´´4 5
Add
´´5 8
(
´´8 9
$str
´´9 I
+
´´J K
differentiator
´´L Z
+
´´[ \
$str
´´] h
+
´´i j
level
´´k p
)
´´p q
;
´´q r
menuItem
ØØ  
.
ØØ  !
Metadata
ØØ! )
.
ØØ) *

Alternates
ØØ* 4
.
ØØ4 5
Add
ØØ5 8
(
ØØ8 9
$str
ØØ9 I
+
ØØJ K
differentiator
ØØL Z
+
ØØ[ \
$str
ØØ] a
+
ØØb c 
encodedContentType
ØØd v
)
ØØv w
;
ØØw x
menuItem
∞∞  
.
∞∞  !
Metadata
∞∞! )
.
∞∞) *

Alternates
∞∞* 4
.
∞∞4 5
Add
∞∞5 8
(
∞∞8 9
$str
∞∞9 I
+
∞∞J K
differentiator
∞∞L Z
+
∞∞[ \
$str
∞∞] a
+
∞∞b c 
encodedContentType
∞∞d v
+
∞∞w x
$str∞∞y Ñ
+∞∞Ö Ü
level∞∞á å
)∞∞å ç
;∞∞ç é
}
±± 
}
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
private
∫∫ 
string
∫∫ $
EncodeAlternateElement
∫∫ -
(
∫∫- .
string
∫∫. 4
alternateElement
∫∫5 E
)
∫∫E F
{
ªª 	
return
ºº 
alternateElement
ºº #
.
ºº# $
Replace
ºº$ +
(
ºº+ ,
$str
ºº, /
,
ºº/ 0
$str
ºº1 5
)
ºº5 6
.
ºº6 7
Replace
ºº7 >
(
ºº> ?
$char
ºº? B
,
ººB C
$char
ººD G
)
ººG H
;
ººH I
}
ΩΩ 	
private
¬¬ 
static
¬¬ 
string
¬¬ 

FormatName
¬¬ (
(
¬¬( )
string
¬¬) /
name
¬¬0 4
)
¬¬4 5
{
√√ 	
if
ƒƒ 
(
ƒƒ 
String
ƒƒ 
.
ƒƒ 
IsNullOrEmpty
ƒƒ $
(
ƒƒ$ %
name
ƒƒ% )
)
ƒƒ) *
)
ƒƒ* +
{
≈≈ 
return
∆∆ 
null
∆∆ 
;
∆∆ 
}
«« 
name
…… 
=
…… 
name
…… 
.
…… 
Trim
…… 
(
…… 
)
…… 
;
…… 
var
   
nextIsUpper
   
=
   
true
   "
;
  " #
var
ÀÀ 
result
ÀÀ 
=
ÀÀ 
new
ÀÀ 
StringBuilder
ÀÀ *
(
ÀÀ* +
name
ÀÀ+ /
.
ÀÀ/ 0
Length
ÀÀ0 6
)
ÀÀ6 7
;
ÀÀ7 8
for
ÃÃ 
(
ÃÃ 
var
ÃÃ 
i
ÃÃ 
=
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
i
ÃÃ 
<
ÃÃ 
name
ÃÃ  $
.
ÃÃ$ %
Length
ÃÃ% +
;
ÃÃ+ ,
i
ÃÃ- .
++
ÃÃ. 0
)
ÃÃ0 1
{
ÕÕ 
var
ŒŒ 
c
ŒŒ 
=
ŒŒ 
name
ŒŒ 
[
ŒŒ 
i
ŒŒ 
]
ŒŒ 
;
ŒŒ  
if
–– 
(
–– 
c
–– 
==
–– 
$char
–– 
||
–– 
char
––  $
.
––$ %
IsWhiteSpace
––% 1
(
––1 2
c
––2 3
)
––3 4
)
––4 5
{
—— 
nextIsUpper
““ 
=
““  !
true
““" &
;
““& '
continue
”” 
;
”” 
}
‘‘ 
if
÷÷ 
(
÷÷ 
nextIsUpper
÷÷ 
)
÷÷  
{
◊◊ 
result
ÿÿ 
.
ÿÿ 
Append
ÿÿ !
(
ÿÿ! "
c
ÿÿ" #
.
ÿÿ# $
ToString
ÿÿ$ ,
(
ÿÿ, -
)
ÿÿ- .
.
ÿÿ. /
ToUpper
ÿÿ/ 6
(
ÿÿ6 7
)
ÿÿ7 8
)
ÿÿ8 9
;
ÿÿ9 :
}
ŸŸ 
else
⁄⁄ 
{
€€ 
result
‹‹ 
.
‹‹ 
Append
‹‹ !
(
‹‹! "
c
‹‹" #
)
‹‹# $
;
‹‹$ %
}
›› 
nextIsUpper
ﬂﬂ 
=
ﬂﬂ 
false
ﬂﬂ #
;
ﬂﬂ# $
}
‡‡ 
return
‚‚ 
result
‚‚ 
.
‚‚ 
ToString
‚‚ "
(
‚‚" #
)
‚‚# $
;
‚‚$ %
}
„„ 	
}
‰‰ 
}ÂÂ ª.
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Migrations.cs
	namespace

 	
OrchardCore


 
.

 
Menu

 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private 
readonly 
IRecipeMigrator (
_recipeMigrator) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
public 

Migrations 
( 
IRecipeMigrator )
recipeMigrator* 8
,8 9
ISession: B
sessionC J
)J K
{ 	
_recipeMigrator 
= 
recipeMigrator ,
;, -
_session 
= 
session 
; 
} 	
public 
async 
Task 
< 
int 
> 
CreateAsync *
(* +
)+ ,
{ 	
await 
_recipeMigrator !
.! "
ExecuteAsync" .
(. /
$str/ A
,A B
thisC G
)G H
;H I
return 
$num 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
int!! 
>!! 
UpdateFrom1Async!! /
(!!/ 0
)!!0 1
{"" 	
await## 
_recipeMigrator## !
.##! "
ExecuteAsync##" .
(##. /
$str##/ U
,##U V
this##W [
)##[ \
;##\ ]
return%% 
$num%% 
;%% 
}&& 	
public** 
async** 
Task** 
<** 
int** 
>** 
UpdateFrom2Async** /
(**/ 0
)**0 1
{++ 	
await,, 
_recipeMigrator,, !
.,,! "
ExecuteAsync,," .
(,,. /
$str,,/ R
,,,R S
this,,T X
),,X Y
;,,Y Z
return.. 
$num.. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
int11 
>11 
UpdateFrom3Async11 /
(11/ 0
)110 1
{22 	
var33 
menus33 
=33 
await33 
_session33 &
.33& '
Query33' ,
<33, -
ContentItem33- 8
,338 9
ContentItemIndex33: J
>33J K
(33K L
x33L M
=>33N P
x33Q R
.33R S
ContentType33S ^
==33_ a
$str33b h
)33h i
.33i j
	ListAsync33j s
(33s t
)33t u
;33u v
foreach55 
(55 
var55 
menu55 
in55  
menus55! &
)55& '
{66 
var77 
menuItemsListPart77 %
=77& '
menu77( ,
.77, -
As77- /
<77/ 0
MenuItemsListPart770 A
>77A B
(77B C
)77C D
;77D E
if88 
(88 
menuItemsListPart88 %
!=88& (
null88) -
)88- .
{99 
MigrateMenuItems:: $
(::$ %
menuItemsListPart::% 6
.::6 7
	MenuItems::7 @
)::@ A
;::A B
menu;; 
.;; 
Apply;; 
(;; 
menuItemsListPart;; 0
);;0 1
;;;1 2
}<< 
_session>> 
.>> 
Save>> 
(>> 
menu>> "
)>>" #
;>># $
}?? 
returnAA 
$numAA 
;AA 
}BB 	
privateDD 
staticDD 
voidDD 
MigrateMenuItemsDD ,
(DD, -
ListDD- 1
<DD1 2
ContentItemDD2 =
>DD= >
	menuItemsDD? H
)DDH I
{EE 	
foreachFF 
(FF 
varFF 
menuItemFF !
inFF" $
	menuItemsFF% .
)FF. /
{GG 
varHH 
linkMenuItemPartHH $
=HH% &
menuItemHH' /
.HH/ 0
AsHH0 2
<HH2 3
LinkMenuItemPartHH3 C
>HHC D
(HHD E
)HHE F
;HHF G
ifII 
(II 
linkMenuItemPartII $
!=II% '
nullII( ,
)II, -
{JJ 
menuItemMM 
.MM 
DisplayTextMM (
=MM) *
linkMenuItemPartMM+ ;
.MM; <
NameMM< @
;MM@ A
}OO 
varQQ 
contentMenuItemPartQQ '
=QQ( )
menuItemQQ* 2
.QQ2 3
AsQQ3 5
<QQ5 6
ContentMenuItemPartQQ6 I
>QQI J
(QQJ K
)QQK L
;QQL M
ifRR 
(RR 
contentMenuItemPartRR '
!=RR( *
nullRR+ /
)RR/ 0
{SS 
menuItemUU 
.UU 
DisplayTextUU (
=UU) *
contentMenuItemPartUU+ >
.UU> ?
NameUU? C
;UUC D
}WW 
varYY 
menuItemsListPartYY %
=YY& '
menuItemYY( 0
.YY0 1
AsYY1 3
<YY3 4
MenuItemsListPartYY4 E
>YYE F
(YYF G
)YYG H
;YYH I
ifZZ 
(ZZ 
menuItemsListPartZZ %
!=ZZ& (
nullZZ) -
)ZZ- .
{[[ 
MigrateMenuItems\\ $
(\\$ %
menuItemsListPart\\% 6
.\\6 7
	MenuItems\\7 @
)\\@ A
;\\A B
menuItem]] 
.]] 
Apply]] "
(]]" #
menuItemsListPart]]# 4
)]]4 5
;]]5 6
}^^ 
}__ 
}`` 	
}aa 
}bb ß
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Models\ContentMenuItemPart.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Models !
{ 
public 

class 
ContentMenuItemPart $
:% &
ContentPart' 2
{ 
[ 	
Obsolete	 
( 
$str h
)h i
]i j
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} ‘
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Models\HtmlMenuItemPart.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Models !
{ 
public 

class 
HtmlMenuItemPart !
:! "
ContentPart# .
{ 
public

 
string

 
Url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ∏
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Models\LinkMenuItemPart.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Models !
{ 
public 

class 
LinkMenuItemPart !
:" #
ContentPart$ /
{ 
[ 	
Obsolete	 
( 
$str h
)h i
]i j
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} è
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Models\MenuItemsListPart.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Models !
{ 
public 

class 
MenuItemsListPart "
:# $
ContentPart% 0
{		 
public

 
List

 
<

 
ContentItem

 
>

  
	MenuItems

! *
{

+ ,
get

- 0
;

0 1
set

2 5
;

5 6
}

7 8
=

9 :
new

; >
List

? C
<

C D
ContentItem

D O
>

O P
(

P Q
)

Q R
;

R S
} 
} ï
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Models\MenuPart.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Models !
{ 
public 

class 
MenuPart 
: 
ContentPart '
{ 
} 
}		 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Permissions.cs
	namespace 	
OrchardCore
 
. 
Menu 
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{		 
public

 
static

 
readonly

 

Permission

 )

ManageMenu

* 4
=

5 6
new

7 :

Permission

; E
(

E F
$str

F R
,

R S
$str

T b
)

b c
;

c d
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *

ManageMenu+ 5
}6 7
.7 8
AsEnumerable8 D
(D E
)E F
)F G
;G H
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )

ManageMenu* 4
}5 6
} 
} 
; 
} 	
} 
} €
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 -
)		- .
]		. /
[

 
assembly

 	
:

	 

AssemblyTrademark

 
(

 
$str

 
)

  
]

  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8«
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Settings\HtmlMenuItemPartSettings.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 
Settings #
{ 
public 

class $
HtmlMenuItemPartSettings )
{		 
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
true1 5
;5 6
} 
} º
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Settings\HtmlMenuItemPartSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Menu

 
.

 
Settings

 #
{ 
public 

class 1
%HtmlMenuItemPartSettingsDisplayDriver 6
:6 72
&ContentTypePartDefinitionDisplayDriver8 ^
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
HtmlMenuItemPart& 6
)6 7
,7 8%
contentTypePartDefinition9 R
.R S
PartDefinitionS a
.a b
Nameb f
)f g
)g h
{ 
return 
null 
; 
} 
return 

Initialize 
< -
!HtmlMenuItemPartSettingsViewModel ?
>? @
(@ A
$strA `
,` a
modelb g
=>h j
{ 
var 
settings 
= %
contentTypePartDefinition 8
.8 9
GetSettings9 D
<D E$
HtmlMenuItemPartSettingsE ]
>] ^
(^ _
)_ `
;` a
model 
. 
SanitizeHtml "
=# $
settings% -
.- .
SanitizeHtml. :
;: ;
} 
) 
. 
Location 
( 
$str "
)" #
;# $
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?%
ContentTypePartDefinition? X%
contentTypePartDefinitionY r
,r s(
UpdateTypePartEditorContext	t è
context
ê ó
)
ó ò
{ 	
if   
(   
!   
String   
.   
Equals   
(   
nameof   %
(  % &
HtmlMenuItemPart  & 6
)  6 7
,  7 8%
contentTypePartDefinition  9 R
.  R S
PartDefinition  S a
.  a b
Name  b f
)  f g
)  g h
{!! 
return"" 
null"" 
;"" 
}## 
var%% 
model%% 
=%% 
new%% -
!HtmlMenuItemPartSettingsViewModel%% =
(%%= >
)%%> ?
;%%? @
var&& 
settings&& 
=&& 
new&& $
HtmlMenuItemPartSettings&& 7
(&&7 8
)&&8 9
;&&9 :
if(( 
((( 
await(( 
context(( 
.(( 
Updater(( %
.((% &
TryUpdateModelAsync((& 9
(((9 :
model((: ?
,((? @
Prefix((A G
)((G H
)((H I
{)) 
settings** 
.** 
SanitizeHtml** %
=**& '
model**( -
.**- .
SanitizeHtml**. :
;**: ;
context,, 
.,, 
Builder,, 
.,,  
WithSettings,,  ,
(,,, -
settings,,- 5
),,5 6
;,,6 7
}-- 
return// 
Edit// 
(// %
contentTypePartDefinition// 1
,//1 2
context//3 :
.//: ;
Updater//; B
)//B C
;//C D
}00 	
}11 
}22 Ì3
{D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\Startup.cs
	namespace 	
OrchardCore
 
. 
Menu 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions   
=   
adminOptions   (
.  ( )
Value  ) .
;  . /
}!! 	
public## 
override## 
void## 
ConfigureServices## .
(##. /
IServiceCollection##/ A
services##B J
)##J K
{$$ 	
services%% 
.%% 
	AddScoped%% 
<%% 
IDataMigration%% -
,%%- .

Migrations%%/ 9
>%%9 :
(%%: ;
)%%; <
;%%< =
services&& 
.&& 
	AddScoped&& 
<&& 
IShapeTableProvider&& 2
,&&2 3

MenuShapes&&4 >
>&&> ?
(&&? @
)&&@ A
;&&A B
services'' 
.'' 
	AddScoped'' 
<'' 
IPermissionProvider'' 2
,''2 3
Permissions''4 ?
>''? @
(''@ A
)''A B
;''B C
services(( 
.(( 
	AddScoped(( 
<(( 
INavigationProvider(( 2
,((2 3
	AdminMenu((4 =
>((= >
(((> ?
)((? @
;((@ A
services++ 
.++ 
	AddScoped++ 
<++ 
IContentHandler++ .
,++. /
MenuContentHandler++0 B
>++B C
(++C D
)++D E
;++E F
services,, 
.,, 
AddContentPart,, #
<,,# $
MenuPart,,$ ,
>,,, -
(,,- .
),,. /
.-- 
UseDisplayDriver-- !
<--! "!
MenuPartDisplayDriver--" 7
>--7 8
(--8 9
)--9 :
;--: ;
services// 
.// 
AddContentPart// #
<//# $
MenuItemsListPart//$ 5
>//5 6
(//6 7
)//7 8
;//8 9
services22 
.22 
AddContentPart22 #
<22# $
LinkMenuItemPart22$ 4
>224 5
(225 6
)226 7
.33 
UseDisplayDriver33 !
<33! ")
LinkMenuItemPartDisplayDriver33" ?
>33? @
(33@ A
)33A B
;33B C
services66 
.66 
AddContentPart66 #
<66# $
ContentMenuItemPart66$ 7
>667 8
(668 9
)669 :
.77 
UseDisplayDriver77 !
<77! ",
 ContentMenuItemPartDisplayDriver77" B
>77B C
(77C D
)77D E
;77E F
services:: 
.:: 
AddContentPart:: #
<::# $
HtmlMenuItemPart::$ 4
>::4 5
(::5 6
)::6 7
.;; 
UseDisplayDriver;; !
<;;! ")
HtmlMenuItemPartDisplayDriver;;" ?
>;;? @
(;;@ A
);;A B
;;;B C
services<< 
.<< 
	AddScoped<< 
<<< 3
'IContentTypePartDefinitionDisplayDriver<< F
,<<F G1
%HtmlMenuItemPartSettingsDisplayDriver<<H m
><<m n
(<<n o
)<<o p
;<<p q
services>> 
.>> 
AddTagHelpers>> "
<>>" #
MenuTagHelper>># 0
>>>0 1
(>>1 2
)>>2 3
;>>3 4
}?? 	
publicAA 
overrideAA 
voidAA 
	ConfigureAA &
(AA& '
IApplicationBuilderAA' :
builderAA; B
,AAB C!
IEndpointRouteBuilderAAD Y
routesAAZ `
,AA` a
IServiceProviderAAb r
serviceProvider	AAs Ç
)
AAÇ É
{BB 	
varCC 
adminControllerNameCC #
=CC$ %
typeofCC& ,
(CC, -
AdminControllerCC- <
)CC< =
.CC= >
ControllerNameCC> L
(CCL M
)CCM N
;CCN O
routesEE 
.EE "
MapAreaControllerRouteEE )
(EE) *
nameFF 
:FF 
$strFF "
,FF" #
areaNameGG 
:GG 
$strGG ,
,GG, -
patternHH 
:HH 
_adminOptionsHH &
.HH& '
AdminUrlPrefixHH' 5
+HH6 7
$strHH8 K
,HHK L
defaultsII 
:II 
newII 
{II 

controllerII  *
=II+ ,
adminControllerNameII- @
,II@ A
actionIIB H
=III J
nameofIIK Q
(IIQ R
AdminControllerIIR a
.IIa b
CreateIIb h
)IIh i
}IIj k
)JJ 
;JJ 
routesKK 
.KK "
MapAreaControllerRouteKK )
(KK) *
nameLL 
:LL 
$strLL "
,LL" #
areaNameMM 
:MM 
$strMM ,
,MM, -
patternNN 
:NN 
_adminOptionsNN &
.NN& '
AdminUrlPrefixNN' 5
+NN6 7
$strNN8 F
,NNF G
defaultsOO 
:OO 
newOO 
{OO 

controllerOO  *
=OO+ ,
adminControllerNameOO- @
,OO@ A
actionOOB H
=OOI J
nameofOOK Q
(OOQ R
AdminControllerOOR a
.OOa b
DeleteOOb h
)OOh i
}OOj k
)PP 
;PP 
routesQQ 
.QQ "
MapAreaControllerRouteQQ )
(QQ) *
nameRR 
:RR 
$strRR  
,RR  !
areaNameSS 
:SS 
$strSS ,
,SS, -
patternTT 
:TT 
_adminOptionsTT &
.TT& '
AdminUrlPrefixTT' 5
+TT6 7
$strTT8 D
,TTD E
defaultsUU 
:UU 
newUU 
{UU 

controllerUU  *
=UU+ ,
adminControllerNameUU- @
,UU@ A
actionUUB H
=UUI J
nameofUUK Q
(UUQ R
AdminControllerUUR a
.UUa b
EditUUb f
)UUf g
}UUh i
)VV 
;VV 
}WW 	
}XX 
}YY ≈
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\TagHelper\MenuTagHelper.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 

TagHelpers %
{ 
[ 
HtmlTargetElement 
( 
$str 
) 
] 
public 

class 
MenuTagHelper 
:  
BaseShapeTagHelper! 3
{		 
public

 
MenuTagHelper

 
(

 
IShapeFactory

 *
shapeFactory

+ 7
,

7 8
IDisplayHelper

9 G
displayHelper

H U
)

U V
:

W X
base 
( 
shapeFactory 
, 
displayHelper ,
), -
{ 	
Type 
= 
$str 
; 
} 	
} 
} ü
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\ViewModels\ContentMenuItemPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 

ViewModels %
{ 
public 

class ,
 ContentMenuItemPartEditViewModel 1
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[

 	
	BindNever

	 
]

 
public 
ContentMenuItemPart "
MenuItemPart# /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ≈
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\ViewModels\HtmlMenuItemPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 

ViewModels %
{ 
public 

class )
HtmlMenuItemPartEditViewModel .
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
Url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	BindNever	 
] 
public 
HtmlMenuItemPart 
MenuItemPart  ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ≈
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\ViewModels\HtmlMenuItemPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 

ViewModels %
{ 
public 

class -
!HtmlMenuItemPartSettingsViewModel 2
{ 
public		 
bool		 
SanitizeHtml		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
}

 
} ≠
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\ViewModels\LinkMenuItemPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 

ViewModels %
{ 
public 

class )
LinkMenuItemPartEditViewModel .
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public

 
string

 
Url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
[ 	
	BindNever	 
] 
public 
LinkMenuItemPart 
MenuItemPart  ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ˇ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Menu\ViewModels\MenuPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Menu 
. 

ViewModels %
{ 
public 

class !
MenuPartEditViewModel &
{ 
public 
string 
	Hierarchy 
{  !
get" %
;% &
set' *
;* +
}, -
[

 	
	BindNever

	 
]

 
public 
MenuPart 
MenuPart  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} 