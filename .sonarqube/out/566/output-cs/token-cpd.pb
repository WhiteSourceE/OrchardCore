€ï
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Controllers\DashboardController.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %
Controllers% 0
{ 
[ 
Admin 

]
 
public 

class 
DashboardController $
:% &

Controller' 1
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly "
IAdminDashboardService /"
_adminDashboardService0 F
;F G
private   
readonly   
IContentManager   (
_contentManager  ) 8
;  8 9
private!! 
readonly!! &
IContentItemDisplayManager!! 3&
_contentItemDisplayManager!!4 N
;!!N O
private"" 
readonly"" %
IContentDefinitionManager"" 2%
_contentDefinitionManager""3 L
;""L M
private## 
readonly## 
ISiteService## %
_siteService##& 2
;##2 3
private$$ 
readonly$$  
IUpdateModelAccessor$$ - 
_updateModelAccessor$$. B
;$$B C
private%% 
readonly%% 
	INotifier%% "
	_notifier%%# ,
;%%, -
private&& 
readonly&& 
IStringLocalizer&& )
S&&* +
;&&+ ,
private'' 
readonly'' 
IHtmlLocalizer'' '
H''( )
;'') *
private(( 
readonly(( 
dynamic((  
New((! $
;(($ %
private)) 
readonly)) 
YesSql)) 
.))  
ISession))  (
_session))) 1
;))1 2
private** 
readonly** 
ILogger**  
_logger**! (
;**( )
public,, 
DashboardController,, "
(,," #!
IAuthorizationService-- ! 
authorizationService--" 6
,--6 7"
IAdminDashboardService.. "!
adminDashboardService..# 8
,..8 9
IContentManager// 
contentManager// *
,//* +&
IContentItemDisplayManager00 &%
contentItemDisplayManager00' @
,00@ A%
IContentDefinitionManager11 %$
contentDefinitionManager11& >
,11> ?
ISiteService22 
siteService22 $
,22$ % 
IUpdateModelAccessor33  
updateModelAccessor33! 4
,334 5
IShapeFactory44 
shapeFactory44 &
,44& '
	INotifier55 
notifier55 
,55 
IStringLocalizer66 
<66 
DashboardController66 0
>660 1
stringLocalizer662 A
,66A B
IHtmlLocalizer77 
<77 
DashboardController77 .
>77. /
htmlLocalizer770 =
,77= >
YesSql88 
.88 
ISession88 
session88 #
,88# $
ILogger99 
<99 
DashboardController99 '
>99' (
logger99) /
)99/ 0
{:: 	!
_authorizationService;; !
=;;" # 
authorizationService;;$ 8
;;;8 9"
_adminDashboardService<< "
=<<# $!
adminDashboardService<<% :
;<<: ;
_contentManager== 
=== 
contentManager== ,
;==, -&
_contentItemDisplayManager>> &
=>>' (%
contentItemDisplayManager>>) B
;>>B C%
_contentDefinitionManager?? %
=??& '$
contentDefinitionManager??( @
;??@ A
_siteService@@ 
=@@ 
siteService@@ &
;@@& ' 
_updateModelAccessorAA  
=AA! "
updateModelAccessorAA# 6
;AA6 7
NewBB 
=BB 
shapeFactoryBB 
;BB 
	_notifierCC 
=CC 
notifierCC  
;CC  !
SDD 
=DD 
stringLocalizerDD 
;DD  
HEE 
=EE 
htmlLocalizerEE 
;EE 
_sessionFF 
=FF 
sessionFF 
;FF 
_loggerGG 
=GG 
loggerGG 
;GG 
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
IndexJJ) .
(JJ. /
)JJ/ 0
{KK 	
ifLL 
(LL 
!LL 
awaitLL !
_authorizationServiceLL ,
.LL, -
AuthorizeAsyncLL- ;
(LL; <
UserLL< @
,LL@ A
PermissionsLLB M
.LLM N 
AccessAdminDashboardLLN b
)LLb c
)LLc d
{MM 
returnNN 
ForbidNN 
(NN 
)NN 
;NN  
}OO 
varQQ 
widgetsQQ 
=QQ 
awaitQQ "
_adminDashboardServiceQQ  6
.QQ6 7
GetWidgetsAsyncQQ7 F
(QQF G
xQQG H
=>QQI K
xQQL M
.QQM N
	PublishedQQN W
)QQW X
;QQX Y
varRR 
wrappersRR 
=RR 
newRR 
ListRR #
<RR# $
DashboardWrapperRR$ 4
>RR4 5
(RR5 6
)RR6 7
;RR7 8
foreachSS 
(SS 
varSS 
itemSS 
inSS  
widgetsSS! (
)SS( )
{TT 
wrappersUU 
.UU 
AddUU 
(UU 
newUU  
DashboardWrapperUU! 1
{VV 
	DashboardWW 
=WW 
itemWW  $
,WW$ %
ContentXX 
=XX 
awaitXX #&
_contentItemDisplayManagerXX$ >
.XX> ?
BuildDisplayAsyncXX? P
(XXP Q
itemXXQ U
,XXU V 
_updateModelAccessorXXW k
.XXk l
ModelUpdaterXXl x
,XXx y
$str	XXz á
)
XXá à
}YY 
)YY 
;YY 
}ZZ 
var\\ 
model\\ 
=\\ 
new\\ #
AdminDashboardViewModel\\ 3
{]] 

Dashboards^^ 
=^^ 
wrappers^^ %
.^^% &
ToArray^^& -
(^^- .
)^^. /
}__ 
;__ 
returnaa 
Viewaa 
(aa 
modelaa 
)aa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IActionResultdd '
>dd' (
Managedd) /
(dd/ 0
)dd0 1
{ee 	
ifff 
(ff 
!ff 
awaitff !
_authorizationServiceff ,
.ff, -
AuthorizeAsyncff- ;
(ff; <
Userff< @
,ff@ A
PermissionsffB M
.ffM N 
ManageAdminDashboardffN b
)ffb c
)ffc d
{gg 
returnhh 
Forbidhh 
(hh 
)hh 
;hh  
}ii 
Requestll 
.ll 
HttpContextll 
.ll  
Featuresll  (
.ll( )
Setll) ,
(ll, -
newll- 0
DashboardFeaturell1 A
(llA B
)llB C
{mm 
IsManageRequestnn 
=nn  !
truenn" &
}oo 
)oo 
;oo 
varqq 
dashboardCreatableqq "
=qq# $
newqq% (
Listqq) -
<qq- .
SelectListItemqq. <
>qq< =
(qq= >
)qq> ?
;qq? @
varss 
widgetContentTypesss "
=ss# $%
_contentDefinitionManagerss% >
.ss> ?
ListTypeDefinitionsss? R
(ssR S
)ssS T
.tt 
Wherett 
(tt 
ttt 
=>tt 
!uu 
stringuu 
.uu 
IsNullOrEmptyuu )
(uu) *
tuu* +
.uu+ ,
GetSettingsuu, 7
<uu7 8
ContentTypeSettingsuu8 K
>uuK L
(uuL M
)uuM N
.uuN O

StereotypeuuO Y
)uuY Z
&&uu[ ]
tvv 
.vv 
GetSettingsvv !
<vv! "
ContentTypeSettingsvv" 5
>vv5 6
(vv6 7
)vv7 8
.vv8 9

Stereotypevv9 C
.vvC D
ContainsvvD L
(vvL M
$strvvM ^
)vv^ _
)vv_ `
.ww 
OrderByww 
(ww 
xww 
=>ww !
xww" #
.ww# $
DisplayNameww$ /
)ww/ 0
;ww0 1
foreachxx 
(xx 
varxx 
ctdxx 
inxx 
widgetContentTypesxx  2
)xx2 3
{yy 
varzz 
contentItemzz 
=zz  !
awaitzz" '
_contentManagerzz( 7
.zz7 8
NewAsynczz8 @
(zz@ A
ctdzzA D
.zzD E
NamezzE I
)zzI J
;zzJ K
contentItem{{ 
.{{ 
Owner{{ !
={{" #
User{{$ (
.{{( )
FindFirstValue{{) 7
({{7 8

ClaimTypes{{8 B
.{{B C
NameIdentifier{{C Q
){{Q R
;{{R S
var|| 

authorized|| 
=||  
await||! &!
_authorizationService||' <
.||< =
AuthorizeAsync||= K
(||K L
User||L P
,||P Q
CommonPermissions||R c
.||c d
EditContent||d o
,||o p
contentItem||q |
)||| }
;||} ~
if}} 
(}} 

authorized}} 
)}} 
{~~ 
dashboardCreatable &
.& '
Add' *
(* +
new+ .
SelectListItem/ =
(= >
new> A
LocalizedStringB Q
(Q R
ctdR U
.U V
DisplayNameV a
,a b
ctdc f
.f g
DisplayNameg r
)r s
.s t
Valuet y
,y z
ctd{ ~
.~ 
Name	 É
)
É Ñ
)
Ñ Ö
;
Ö Ü
}
ÄÄ 
}
ÅÅ 
var
ÉÉ 
widgets
ÉÉ 
=
ÉÉ 
await
ÉÉ $
_adminDashboardService
ÉÉ  6
.
ÉÉ6 7
GetWidgetsAsync
ÉÉ7 F
(
ÉÉF G
x
ÉÉG H
=>
ÉÉI K
x
ÉÉL M
.
ÉÉM N
Latest
ÉÉN T
)
ÉÉT U
;
ÉÉU V
var
ÑÑ 
wrappers
ÑÑ 
=
ÑÑ 
new
ÑÑ 
List
ÑÑ #
<
ÑÑ# $
DashboardWrapper
ÑÑ$ 4
>
ÑÑ4 5
(
ÑÑ5 6
)
ÑÑ6 7
;
ÑÑ7 8
foreach
ÖÖ 
(
ÖÖ 
var
ÖÖ 
item
ÖÖ 
in
ÖÖ  
widgets
ÖÖ! (
)
ÖÖ( )
{
ÜÜ 
var
áá 
wrapper
áá 
=
áá 
new
áá !
DashboardWrapper
áá" 2
{
àà 
	Dashboard
ââ 
=
ââ 
item
ââ  $
,
ââ$ %
Content
ää 
=
ää 
await
ää #(
_contentItemDisplayManager
ää$ >
.
ää> ?
BuildDisplayAsync
ää? P
(
ääP Q
item
ääQ U
,
ääU V"
_updateModelAccessor
ääW k
.
ääk l
ModelUpdater
ääl x
,
ääx y
$strääz á
)ääá à
}
ãã 
;
ãã 
wrappers
åå 
.
åå 
Add
åå 
(
åå 
wrapper
åå $
)
åå$ %
;
åå% &
}
çç 
var
èè 
model
èè 
=
èè 
new
èè %
AdminDashboardViewModel
èè 3
{
êê 

Dashboards
ëë 
=
ëë 
wrappers
ëë %
.
ëë% &
ToArray
ëë& -
(
ëë- .
)
ëë. /
,
ëë/ 0
	Creatable
íí 
=
íí  
dashboardCreatable
íí .
}
ìì 
;
ìì 
return
ïï 
View
ïï 
(
ïï 
model
ïï 
)
ïï 
;
ïï 
}
ññ 	
[
óó 	
HttpPost
óó	 
]
óó 
public
òò 
async
òò 
Task
òò 
<
òò 
IActionResult
òò '
>
òò' (
Update
òò) /
(
òò/ 0
[
òò0 1
FromForm
òò1 9
]
òò9 :$
DashboardPartViewModel
òò; Q
[
òòQ R
]
òòR S
parts
òòT Y
)
òòY Z
{
ôô 	
if
öö 
(
öö 
!
öö 
await
öö #
_authorizationService
öö ,
.
öö, -
AuthorizeAsync
öö- ;
(
öö; <
User
öö< @
,
öö@ A
Permissions
ööB M
.
ööM N"
ManageAdminDashboard
ööN b
)
ööb c
)
ööc d
{
õõ 
return
úú 

StatusCode
úú !
(
úú! "
$num
úú" %
)
úú% &
;
úú& '
}
ùù 
var
üü 
contentItemIds
üü 
=
üü  
parts
üü! &
.
üü& '
Select
üü' -
(
üü- .
i
üü. /
=>
üü0 2
i
üü3 4
.
üü4 5
ContentItemId
üü5 B
)
üüB C
.
üüC D
ToArray
üüD K
(
üüK L
)
üüL M
;
üüM N
var
¢¢ 
latestItems
¢¢ 
=
¢¢ 
await
¢¢ #
_contentManager
¢¢$ 3
.
¢¢3 4
GetAsync
¢¢4 <
(
¢¢< =
contentItemIds
¢¢= K
,
¢¢K L
true
¢¢M Q
)
¢¢Q R
;
¢¢R S
var
§§ 
publishedItems
§§ 
=
§§  
await
§§! &
_contentManager
§§' 6
.
§§6 7
GetAsync
§§7 ?
(
§§? @
contentItemIds
§§@ N
,
§§N O
false
§§P U
)
§§U V
;
§§V W
if
¶¶ 
(
¶¶ 
latestItems
¶¶ 
==
¶¶ 
null
¶¶ #
)
¶¶# $
{
ßß 
return
®® 

StatusCode
®® !
(
®®! "
$num
®®" %
)
®®% &
;
®®& '
}
©© 
foreach
´´ 
(
´´ 
var
´´ 
contentItem
´´ $
in
´´% '
latestItems
´´( 3
)
´´3 4
{
¨¨ 
var
≠≠ 
dashboardPart
≠≠ !
=
≠≠" #
contentItem
≠≠$ /
.
≠≠/ 0
As
≠≠0 2
<
≠≠2 3
DashboardPart
≠≠3 @
>
≠≠@ A
(
≠≠A B
)
≠≠B C
;
≠≠C D
if
ÆÆ 
(
ÆÆ 
dashboardPart
ÆÆ !
==
ÆÆ" $
null
ÆÆ% )
)
ÆÆ) *
{
ØØ 
return
∞∞ 

StatusCode
∞∞ %
(
∞∞% &
$num
∞∞& )
)
∞∞) *
;
∞∞* +
}
±± 
var
≥≥ 
partViewModel
≥≥ !
=
≥≥" #
parts
≥≥$ )
.
≥≥) *
Where
≥≥* /
(
≥≥/ 0
m
≥≥0 1
=>
≥≥2 4
m
≥≥5 6
.
≥≥6 7
ContentItemId
≥≥7 D
==
≥≥E G
contentItem
≥≥H S
.
≥≥S T
ContentItemId
≥≥T a
)
≥≥a b
.
≥≥b c
FirstOrDefault
≥≥c q
(
≥≥q r
)
≥≥r s
;
≥≥s t
dashboardPart
µµ 
.
µµ 
Position
µµ &
=
µµ' (
partViewModel
µµ) 6
?
µµ6 7
.
µµ7 8
Position
µµ8 @
??
µµA C
$num
µµD E
;
µµE F
dashboardPart
∂∂ 
.
∂∂ 
Width
∂∂ #
=
∂∂$ %
partViewModel
∂∂& 3
?
∂∂3 4
.
∂∂4 5
Width
∂∂5 :
??
∂∂; =
$num
∂∂> ?
;
∂∂? @
dashboardPart
∑∑ 
.
∑∑ 
Height
∑∑ $
=
∑∑% &
partViewModel
∑∑' 4
?
∑∑4 5
.
∑∑5 6
Height
∑∑6 <
??
∑∑= ?
$num
∑∑@ A
;
∑∑A B
contentItem
ππ 
.
ππ 
Apply
ππ !
(
ππ! "
dashboardPart
ππ" /
)
ππ/ 0
;
ππ0 1
_session
ªª 
.
ªª 
Save
ªª 
(
ªª 
contentItem
ªª )
)
ªª) *
;
ªª* +
if
ΩΩ 
(
ΩΩ 
contentItem
ΩΩ 
.
ΩΩ  
IsPublished
ΩΩ  +
(
ΩΩ+ ,
)
ΩΩ, -
==
ΩΩ. 0
false
ΩΩ1 6
)
ΩΩ6 7
{
ææ 
var
øø 
publishedVersion
øø (
=
øø) *
publishedItems
øø+ 9
.
øø9 :
Where
øø: ?
(
øø? @
p
øø@ A
=>
øøB D
p
øøE F
.
øøF G
ContentItemId
øøG T
==
øøU W
contentItem
øøX c
.
øøc d
ContentItemId
øød q
)
øøq r
.
øør s
FirstOrDefaultøøs Å
(øøÅ Ç
)øøÇ É
;øøÉ Ñ
var
¿¿ 
publishedMetaData
¿¿ )
=
¿¿* +
publishedVersion
¿¿, <
?
¿¿< =
.
¿¿= >
As
¿¿> @
<
¿¿@ A
DashboardPart
¿¿A N
>
¿¿N O
(
¿¿O P
)
¿¿P Q
;
¿¿Q R
if
¡¡ 
(
¡¡ 
publishedVersion
¡¡ (
!=
¡¡) +
null
¡¡, 0
&&
¡¡1 3
publishedMetaData
¡¡4 E
!=
¡¡F H
null
¡¡I M
)
¡¡M N
{
¬¬ 
publishedMetaData
√√ )
.
√√) *
Position
√√* 2
=
√√3 4
partViewModel
√√5 B
.
√√B C
Position
√√C K
;
√√K L
publishedMetaData
ƒƒ )
.
ƒƒ) *
Width
ƒƒ* /
=
ƒƒ0 1
partViewModel
ƒƒ2 ?
.
ƒƒ? @
Width
ƒƒ@ E
;
ƒƒE F
publishedMetaData
≈≈ )
.
≈≈) *
Height
≈≈* 0
=
≈≈1 2
partViewModel
≈≈3 @
.
≈≈@ A
Height
≈≈A G
;
≈≈G H
publishedVersion
∆∆ (
.
∆∆( )
Apply
∆∆) .
(
∆∆. /
publishedMetaData
∆∆/ @
)
∆∆@ A
;
∆∆A B
_session
««  
.
««  !
Save
««! %
(
««% &
publishedVersion
««& 6
)
««6 7
;
««7 8
}
»» 
}
…… 
}
ÀÀ 
if
ÕÕ 
(
ÕÕ 
Request
ÕÕ 
.
ÕÕ 
Headers
ÕÕ 
!=
ÕÕ  "
null
ÕÕ# '
&&
ÕÕ( *
Request
ÕÕ+ 2
.
ÕÕ2 3
Headers
ÕÕ3 :
[
ÕÕ: ;
$str
ÕÕ; M
]
ÕÕM N
==
ÕÕO Q
$str
ÕÕR b
)
ÕÕb c
{
ŒŒ 
return
œœ 

StatusCode
œœ !
(
œœ! "
$num
œœ" %
)
œœ% &
;
œœ& '
}
–– 
else
—— 
{
““ 
return
”” 
RedirectToAction
”” '
(
””' (
$str
””( 0
)
””0 1
;
””1 2
}
‘‘ 
}
÷÷ 	
}
◊◊ 
}ÿÿ à
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\DashboardFeature.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
{ 
public 

class 
DashboardFeature !
{ 
public 
bool 
IsManageRequest #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ÔH
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Drivers\DashboardContentDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %
Drivers% ,
{ 
public 

class )
DashboardContentDisplayDriver .
:/ 0 
ContentDisplayDriver1 E
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public )
DashboardContentDisplayDriver ,
(, - 
IHttpContextAccessor- A
httpContextAccessorB U
,U V!
IAuthorizationService ! 
authorizationService" 6
,6 7
IContentManager 
contentManager *
)* +
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_contentManager 
= 
contentManager ,
;, -
} 	
public   
override   
async   
Task   "
<  " #
IDisplayResult  # 1
>  1 2
DisplayAsync  3 ?
(  ? @
ContentItem  @ K
model  L Q
,  Q R
BuildDisplayContext  S f
context  g n
)  n o
{!! 	
var"" 
httpContext"" 
=""  
_httpContextAccessor"" 2
.""2 3
HttpContext""3 >
;""> ?
var## 
dashboardFeature##  
=##! "
httpContext### .
.##. /
Features##/ 7
.##7 8
Get##8 ;
<##; <
DashboardFeature##< L
>##L M
(##M N
)##N O
;##O P
if&& 
(&& 
dashboardFeature&&  
==&&! #
null&&$ (
||&&) +
!&&, -
dashboardFeature&&- =
.&&= >
IsManageRequest&&> M
)&&M N
{'' 
return(( 
null(( 
;(( 
})) 
var++ 
results++ 
=++ 
new++ 
List++ "
<++" #
IDisplayResult++# 1
>++1 2
(++2 3
)++3 4
;++4 5
var,, 
hasPublished,, 
=,, 
await,, $
_contentManager,,% 4
.,,4 5$
HasPublishedVersionAsync,,5 M
(,,M N
model,,N S
),,S T
;,,T U
var-- 
hasDraft-- 
=-- 
model--  
.--  !
HasDraft--! )
(--) *
)--* +
;--+ ,
var.. 
hasEditPermission.. !
=.." #
await..$ )!
_authorizationService..* ?
...? @
AuthorizeAsync..@ N
(..N O
httpContext..O Z
...Z [
User..[ _
,.._ `
CommonPermissions..a r
...r s
EditContent..s ~
,..~ 
model
..Ä Ö
)
..Ö Ü
;
..Ü á
var// 
hasDeletePermission// #
=//$ %
await//& +!
_authorizationService//, A
.//A B
AuthorizeAsync//B P
(//P Q
httpContext//Q \
.//\ ]
User//] a
,//a b
CommonPermissions//c t
.//t u
DeleteContent	//u Ç
,
//Ç É
model
//Ñ â
)
//â ä
;
//ä ã
var00  
hasPublishPermission00 $
=00% &
await00' ,!
_authorizationService00- B
.00B C
AuthorizeAsync00C Q
(00Q R
httpContext00R ]
.00] ^
User00^ b
,00b c
CommonPermissions00d u
.00u v
PublishContent	00v Ñ
,
00Ñ Ö
model
00Ü ã
)
00ã å
;
00å ç
var22 

dragHandle22 
=22 

Initialize22 '
<22' ( 
ContentItemViewModel22( <
>22< =
(22= >
$str22> T
,22T U
m22V W
=>22X Z
{33 
m44 
.44 
ContentItem44 
=44 
model44  %
;44% &
}55 
)55 
.55 
Location55 
(55 
$str55 (
)55( )
;55) *
results66 
.66 
Add66 
(66 

dragHandle66 "
)66" #
;66# $
if88 
(88 
hasEditPermission88 !
)88! "
{99 
var:: 

editButton:: 
=::  

Initialize::! +
<::+ , 
ContentItemViewModel::, @
>::@ A
(::A B
$str::B X
,::X Y
m::Z [
=>::\ ^
{;; 
m<< 
.<< 
ContentItem<< !
=<<" #
model<<$ )
;<<) *
}== 
)== 
.== 
Location== 
(== 
$str== /
)==/ 0
;==0 1
results>> 
.>> 
Add>> 
(>> 

editButton>> &
)>>& '
;>>' (
}?? 
ifAA 
(AA 
hasDeletePermissionAA #
)AA# $
{BB 
varCC 
deleteButtonCC  
=CC! "

InitializeCC# -
<CC- . 
ContentItemViewModelCC. B
>CCB C
(CCC D
$strCCD \
,CC\ ]
mCC^ _
=>CC` b
{DD 
mEE 
.EE 
ContentItemEE !
=EE" #
modelEE$ )
;EE) *
}FF 
)FF 
.FF 
LocationFF 
(FF 
$strFF /
)FF/ 0
;FF0 1
resultsGG 
.GG 
AddGG 
(GG 
deleteButtonGG (
)GG( )
;GG) *
}HH 
ifJJ 
(JJ 
hasPublishedJJ 
&&JJ  
hasPublishPermissionJJ  4
)JJ4 5
{KK 
varLL 
unpublishButtonLL #
=LL$ %

InitializeLL& 0
<LL0 1 
ContentItemViewModelLL1 E
>LLE F
(LLF G
$strLLG b
,LLb c
mLLd e
=>LLf h
{MM 
mNN 
.NN 
ContentItemNN !
=NN" #
modelNN$ )
;NN) *
}OO 
)OO 
.OO 
LocationOO 
(OO 
$strOO /
)OO/ 0
;OO0 1
resultsPP 
.PP 
AddPP 
(PP 
unpublishButtonPP +
)PP+ ,
;PP, -
}QQ 
ifSS 
(SS 
hasDraftSS 
&&SS  
hasPublishPermissionSS 0
)SS0 1
{TT 
varUU 
publishButtonUU !
=UU" #

InitializeUU$ .
<UU. / 
ContentItemViewModelUU/ C
>UUC D
(UUD E
$strUUE ^
,UU^ _
mUU` a
=>UUb d
{VV 
mWW 
.WW 
ContentItemWW !
=WW" #
modelWW$ )
;WW) *
}XX 
)XX 
.XX 
LocationXX 
(XX 
$strXX /
)XX/ 0
;XX0 1
resultsYY 
.YY 
AddYY 
(YY 
publishButtonYY )
)YY) *
;YY* +
}ZZ 
if\\ 
(\\ 
hasDraft\\ 
&&\\ 
hasEditPermission\\ -
)\\- .
{]] 
var^^ 
discardDraftButton^^ &
=^^' (

Initialize^^) 3
<^^3 4 
ContentItemViewModel^^4 H
>^^H I
(^^I J
$str^^J h
,^^h i
m^^j k
=>^^l n
{__ 
m`` 
.`` 
ContentItem`` !
=``" #
model``$ )
;``) *
}aa 
)aa 
.aa 
Locationaa 
(aa 
$straa /
)aa/ 0
;aa0 1
resultsbb 
.bb 
Addbb 
(bb 
discardDraftButtonbb .
)bb. /
;bb/ 0
}cc 
varee 
shapeTagee 
=ee 

Initializeee %
<ee% & 
ContentItemViewModelee& :
>ee: ;
(ee; <
$stree< g
,eeg h
meei j
=>eek m
{ff 
mgg 
.gg 
ContentItemgg 
=gg 
modelgg  %
;gg% &
}hh 
)hh 
.hh 
Locationhh 
(hh 
$strhh %
,hh% &
$strhh' 0
)hh0 1
;hh1 2
resultsii 
.ii 
Addii 
(ii 
shapeTagii  
)ii  !
;ii! "
returnkk 
Combinekk 
(kk 
resultskk "
.kk" #
ToArraykk# *
(kk* +
)kk+ ,
)kk, -
;kk- .
}ll 	
}mm 
}nn ∞&
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Drivers\DashboardPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %
Drivers% ,
{ 
public 

class &
DashboardPartDisplayDriver +
:, -$
ContentPartDisplayDriver. F
<F G
DashboardPartG T
>T U
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public &
DashboardPartDisplayDriver )
() *
IContentManager 
contentManager *
,* +%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IServiceProvider 
serviceProvider ,
,, -
ISiteService 
siteService $
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_contentManager 
= 
contentManager ,
;, -
_serviceProvider 
= 
serviceProvider .
;. /
_siteService   
=   
siteService   &
;  & '
}!! 	
public## 
override## 
Task## 
<## 
IDisplayResult## +
>##+ ,
DisplayAsync##- 9
(##9 :
DashboardPart##: G
part##H L
,##L M#
BuildPartDisplayContext##N e
context##f m
)##m n
{$$ 	
return%% 
Task%% 
.%% 

FromResult%% "
<%%" #
IDisplayResult%%# 1
>%%1 2
(%%2 3
null%%3 7
)%%7 8
;%%8 9
}&& 	
public(( 
override(( 
IDisplayResult(( &
Edit((' +
(((+ ,
DashboardPart((, 9
dashboardPart((: G
,((G H"
BuildPartEditorContext((I _
context((` g
)((g h
{)) 	
return** 

Initialize** 
<** "
DashboardPartViewModel** 4
>**4 5
(**5 6
GetEditorShapeType**6 H
(**H I
context**I P
)**P Q
,**Q R
m**S T
=>**U W
BuildViewModel**X f
(**f g
m**g h
,**h i
dashboardPart**j w
)**w x
)**x y
;**y z
}++ 	
public-- 
override-- 
async-- 
Task-- "
<--" #
IDisplayResult--# 1
>--1 2
UpdateAsync--3 >
(--> ?
DashboardPart--? L
model--M R
,--R S
IUpdateModel--T `
updater--a h
,--h i$
UpdatePartEditorContext	--j Å
context
--Ç â
)
--â ä
{.. 	
await// 
updater// 
.// 
TryUpdateModelAsync// -
(//- .
model//. 3
,//3 4
Prefix//5 ;
,//; <
t//= >
=>//? A
t//B C
.//C D
Position//D L
,//L M
t//N O
=>//O Q
t//R S
.//S T
Width//T Y
,//Y Z
t//[ \
=>//\ ^
t//_ `
.//` a
Height//a g
)//g h
;//h i
return00 
Edit00 
(00 
model00 
,00 
context00 &
)00& '
;00' (
}11 	
private33 
void33 
BuildViewModel33 #
(33# $"
DashboardPartViewModel33$ :
model33; @
,33@ A
DashboardPart33B O
part33P T
)33T U
{44 	
model55 
.55 
Position55 
=55 
part55 !
.55! "
Position55" *
;55* +
model66 
.66 
Width66 
=66 
part66 
.66 
Width66 $
;66$ %
model77 
.77 
Height77 
=77 
part77 
.77  
Height77  &
;77& '
model88 
.88 
DashboardPart88 
=88  !
part88" &
;88& '
model99 
.99 
ContentItem99 
=99 
part99  $
.99$ %
ContentItem99% 0
;990 1
}:: 	
};; 
}<< È
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Indexes\DashboardPartIndex.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %
Indexes% ,
{ 
public 

class 
DashboardPartIndex #
:$ %
MapIndex& .
{ 
public		 
double		 
Position		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
public 

class &
DashboardPartIndexProvider +
:, -
IndexProvider. ;
<; <
ContentItem< G
>G H
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
DashboardPartIndex *
>* +
(+ ,
), -
. 
Map 
( 
contentItem  
=>! #
{ 
var 
dashboardPart %
=& '
contentItem( 3
.3 4
As4 6
<6 7
DashboardPart7 D
>D E
(E F
)F G
;G H
if 
( 
! 
contentItem $
.$ %
	Published% .
&&/ 1
!2 3
contentItem3 >
.> ?
Latest? E
)E F
{ 
return 
null #
;# $
} 
if 
( 
dashboardPart %
!=& (
null) -
)- .
{ 
return 
new "
DashboardPartIndex# 5
{ 
Position $
=% &
dashboardPart' 4
.4 5
Position5 =
,= >
}   
;   
}!! 
return## 
null## 
;##  
}$$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' Û
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str E
,E F
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 5
,		5 6
$str		7 J
}		K L
,		L M
Category

 
=

 
$str

 #
) 
] Ú
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Migrations.cs
	namespace		 	
OrchardCore		
 
.		 
AdminDashboard		 $
{

 
public 

class 

Migrations 
: 
DataMigration +
{ 
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
private 
readonly 
IRecipeMigrator (
_recipeMigrator) 8
;8 9
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
,L M
IRecipeMigratorN ]
recipeMigrator^ l
)l m
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_recipeMigrator 
= 
recipeMigrator ,
;, -
} 	
public 
int 
Create 
( 
) 
{ 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
DashboardPartIndex. @
>@ A
(A B
tableB G
=>H J
tableK P
. 
Column 
< 
double 
> 
( 
$str )
)) *
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) *
DashboardPartIndex* <
>< =
(= >
table> C
=>D F
tableG L
. 
CreateIndex 
( 
$str ;
,; <
$str  
,  !
nameof 
( 
DashboardPartIndex -
.- .
Position. 6
)6 7
)7 8
)   
;   %
_contentDefinitionManager"" %
.""% &
AlterPartDefinition""& 9
(""9 :
$str"": I
,""I J
builder""K R
=>""S U
builder""V ]
.## 

Attachable## 
(## 
)## 
.$$ 
WithDescription$$  
($$  !
$str$$! P
)$$P Q
)%% 
;%% 
return'' 
$num'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
int** 
>** 
UpdateFrom1Async** /
(**/ 0
)**0 1
{++ 	
await,, 
_recipeMigrator,, !
.,,! "
ExecuteAsync,," .
(,,. /
$str,,/ N
,,,N O
this,,P T
),,T U
;,,U V
return// 
$num// 
;// 
}00 	
public33 
int33 
UpdateFrom233 
(33 
)33  
{44 	
SchemaBuilder55 
.55 
AlterIndexTable55 )
<55) *
DashboardPartIndex55* <
>55< =
(55= >
table55> C
=>55D F
table55G L
.66 
CreateIndex66 
(66 
$str66 ;
,66; <
$str77  
,77  !
nameof88 
(88 
DashboardPartIndex88 -
.88- .
Position88. 6
)886 7
)887 8
)99 
;99 
return;; 
$num;; 
;;; 
}<< 	
}== 
}>> ‚
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Models\DashboardPart.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %
Models% +
{ 
public 

class 
DashboardPart 
:  
ContentPart! ,
{ 
public 
double 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
double 
Width 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, /
;/ 0
public		 
double		 
Height		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
=		+ ,
$num		- 0
;		0 1
}

 
} ¯
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Permissions.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
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
 ) 
ManageAdminDashboard

* >
=

? @
new

A D

Permission

E O
(

O P
$str

P f
,

f g
$str	

h Ñ
)


Ñ Ö
;


Ö Ü
public 
static 
readonly 

Permission ) 
AccessAdminDashboard* >
=? @
newA D

PermissionE O
(O P
$strP f
,f g
$str	h Ñ
,
Ñ Ö
new
Ü â
[
â ä
]
ä ã
{
å ç"
ManageAdminDashboard
é ¢
}
£ §
)
§ •
;
• ¶
public 
Permissions 
( 
) 
{ 	
} 	
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{  
AccessAdminDashboard $
,$ % 
ManageAdminDashboard $
} 
. 
AsEnumerable 
( 
) 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{   
Name!! 
=!! 
$str!! *
,!!* +
Permissions"" 
=""  !
new""" %
[""% &
]""& '
{""( ) 
AccessAdminDashboard""* >
,""> ? 
ManageAdminDashboard""@ T
}""U V
}## 
,## 
new$$  
PermissionStereotype$$ (
{$$) *
Name%% 
=%% 
$str%% #
,%%# $
Permissions&& 
=&&  !
new&&" %
[&&% &
]&&& '
{&&( ) 
AccessAdminDashboard&&* >
}&&? @
}'' 
,'' 
new((  
PermissionStereotype(( (
{(() *
Name)) 
=)) 
$str)) &
,))& '
Permissions** 
=**  !
new**" %
[**% &
]**& '
{**( ) 
AccessAdminDashboard*** >
}**? @
}++ 
,++ 
new,,  
PermissionStereotype,, (
{,,) *
Name-- 
=-- 
$str-- #
,--# $
Permissions.. 
=..  !
new.." %
[..% &
]..& '
{..( ) 
AccessAdminDashboard..* >
}..? @
}// 
,// 
new00  
PermissionStereotype00 (
{00) *
Name11 
=11 
$str11 (
,11( )
Permissions22 
=22  !
new22" %
[22% &
]22& '
{22( ) 
AccessAdminDashboard22* >
}22? @
}33 
}44 
;44 
}55 	
}66 
}77 ’
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Services\AdminDashboardService.cs
	namespace

 	
OrchardCore


 
.

 
AdminDashboard

 $
.

$ %
Services

% -
{ 
public 

class !
AdminDashboardService &
:' ("
IAdminDashboardService) ?
{ 
private 
readonly 
ISession !
_session" *
;* +
public !
AdminDashboardService $
($ %
ISession% -
session. 5
)5 6
{ 	
_session 
= 
session 
; 
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
ContentItem& 1
>1 2
>2 3
GetWidgetsAsync4 C
(C D

ExpressionD N
<N O
FuncO S
<S T
ContentItemIndexT d
,d e
boolf j
>j k
>k l
	predicatem v
)v w
{ 	
var 
widgets 
= 
await 
_session  (
. 
Query 
< 
ContentItem "
," #
DashboardPartIndex$ 6
>6 7
(7 8
)8 9
. 
OrderBy 
( 
w 
=> 
w 
.  
Position  (
)( )
. 
With 
( 
	predicate 
)  
. 
	ListAsync 
( 
) 
; 
return 
widgets 
; 
} 	
} 
}   ´
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Services\IAdminDashboardService.cs
	namespace		 	
OrchardCore		
 
.		 
AdminDashboard		 $
.		$ %
Services		% -
{

 
public 

	interface "
IAdminDashboardService +
{ 
Task 
< 
IEnumerable 
< 
ContentItem $
>$ %
>% &
GetWidgetsAsync' 6
(6 7

Expression7 A
<A B
FuncB F
<F G
ContentItemIndexG W
,W X
boolY ]
>] ^
>^ _
	predicate` i
)i j
;j k
} 
} ü$
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\Startup.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
int 
ConfigureOrder *
=>+ -
-. /
$num/ 1
;1 2
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public!! 
override!! 
void!! 
ConfigureServices!! .
(!!. /
IServiceCollection!!/ A
services!!B J
)!!J K
{"" 	
services## 
.## 
	AddScoped## 
<## 
IPermissionProvider## 2
,##2 3
Permissions##4 ?
>##? @
(##@ A
)##A B
;##B C
services%% 
.%% 
	AddScoped%% 
<%% "
IAdminDashboardService%% 5
,%%5 6!
AdminDashboardService%%7 L
>%%L M
(%%M N
)%%N O
;%%O P
services&& 
.&& 
AddSingleton&& !
<&&! "
IIndexProvider&&" 0
,&&0 1&
DashboardPartIndexProvider&&2 L
>&&L M
(&&M N
)&&N O
;&&O P
services(( 
.(( 
AddContentPart(( #
<((# $
DashboardPart(($ 1
>((1 2
(((2 3
)((3 4
.)) 
UseDisplayDriver)) !
<))! "&
DashboardPartDisplayDriver))" <
>))< =
())= >
)))> ?
;))? @
services++ 
.++ 
	AddScoped++ 
<++ !
IContentDisplayDriver++ 4
,++4 5)
DashboardContentDisplayDriver++6 S
>++S T
(++T U
)++U V
;++V W
services-- 
.-- 
	AddScoped-- 
<-- 
IDataMigration-- -
,--- .

Migrations--/ 9
>--9 :
(--: ;
)--; <
;--< =
}.. 	
public00 
override00 
void00 
	Configure00 &
(00& '
IApplicationBuilder00' :
builder00; B
,00B C!
IEndpointRouteBuilder00D Y
routes00Z `
,00` a
IServiceProvider00b r
serviceProvider	00s Ç
)
00Ç É
{11 	
var33 #
dashboardControllerName33 '
=33( )
typeof33* 0
(330 1
DashboardController331 D
)33D E
.33E F
ControllerName33F T
(33T U
)33U V
;33V W
routes55 
.55 "
MapAreaControllerRoute55 )
(55) *
name66 
:66 
$str66 &
,66& '
areaName77 
:77 
$str77 6
,776 7
pattern88 
:88 
_adminOptions88 &
.88& '
AdminUrlPrefix88' 5
,885 6
defaults99 
:99 
new99 
{99 

controller99  *
=99+ ,#
dashboardControllerName99- D
,99D E
action99F L
=99M N
nameof99O U
(99U V
DashboardController99V i
.99i j
Index99j o
)99o p
}99q r
):: 
;:: 
routes<< 
.<< "
MapAreaControllerRoute<< )
(<<) *
name== 
:== 
$str== &
,==& '
areaName>> 
:>> 
$str>> 6
,>>6 7
pattern?? 
:?? 
$"?? 
{?? 
_adminOptions?? *
.??* +
AdminUrlPrefix??+ 9
}??: ;
/dashboard/manage??; L
"??L M
,??M N
defaults@@ 
:@@ 
new@@ 
{@@ 

controller@@  *
=@@+ ,#
dashboardControllerName@@- D
,@@D E
action@@F L
=@@M N
nameof@@O U
(@@U V
DashboardController@@V i
.@@i j
Manage@@j p
)@@p q
}@@r s
)AA 
;AA 
}BB 	
}CC 
}DD ¨
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\ViewModels\AdminDashboardViewModel.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %

ViewModels% /
{ 
public 

class #
AdminDashboardViewModel (
{ 
[		 	
	BindNever			 
]		 
public

 
DashboardWrapper

 
[

  
]

  !

Dashboards

" ,
{

- .
get

/ 2
;

2 3
set

4 7
;

7 8
}

9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
	Creatable$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} À
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\ViewModels\DashboardPartViewModel.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %

ViewModels% /
{ 
public 

class "
DashboardPartViewModel '
{ 
public		 
string		 
ContentItemId		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
double

 
Position

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
double 
Width 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
Height 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 
DashboardPart 
DashboardPart *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ¿
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.AdminDashboard\ViewModels\DashboardWrapper.cs
	namespace 	
OrchardCore
 
. 
AdminDashboard $
.$ %

ViewModels% /
{ 
public 

class 
DashboardWrapper !
:" #
ShapeViewModel$ 2
{ 
public		 
DashboardWrapper		 
(		  
)		  !
:		" #
base		$ (
(		( )
$str		) <
)		< =
{

 	
} 	
public 
ContentItem 
	Dashboard $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
IShape 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 