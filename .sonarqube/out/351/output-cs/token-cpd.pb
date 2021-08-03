Ϋ"
ƒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\AdminMenu.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{		 
private

 
readonly

 
IStringLocalizer

 )
S

* +
;

+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
configuration) 6
=>7 9
configuration: G
. 
Add 
( 
S 
[ 
$str *
]* +
,+ ,
S- .
[. /
$str/ >
]> ?
.? @
PrefixPosition@ N
(N O
)O P
,P Q
importR X
=>Y [
import\ b
. 
Add 
( 
S 
[ 
$str 1
]1 2
,2 3
S4 5
[5 6
$str6 H
]H I
.I J
PrefixPositionJ X
(X Y
)Y Z
,Z [

deployment\ f
=>g i

deploymentj t
. 
Action #
(# $
$str$ +
,+ ,
$str- =
,= >
new? B
{C D
areaE I
=J K
$strL d
}e f
)f g
. 

Permission '
(' (
Permissions( 3
.3 4
Export4 :
): ;
. 
LocalNav %
(% &
)& '
) 
.   
Add   
(   
S   
[   
$str   /
]  / 0
,  0 1
S  2 3
[  3 4
$str  4 D
]  D E
.  E F
PrefixPosition  F T
(  T U
)  U V
,  V W

deployment  X b
=>  c e

deployment  f p
.!! 
Action!! #
(!!# $
$str!!$ +
,!!+ ,
$str!!- 5
,!!5 6
new!!7 :
{!!; <
area!!= A
=!!B C
$str!!D \
}!!] ^
)!!^ _
."" 

Permission"" '
(""' (
Permissions""( 3
.""3 4
Import""4 :
)"": ;
.## 
LocalNav## %
(##% &
)##& '
)$$ 
.%% 
Add%% 
(%% 
S%% 
[%% 
$str%% ,
]%%, -
,%%- .
S%%/ 0
[%%0 1
$str%%1 >
]%%> ?
.%%? @
PrefixPosition%%@ N
(%%N O
)%%O P
,%%P Q

deployment%%R \
=>%%] _

deployment%%` j
.&& 
Action&& #
(&&# $
$str&&$ *
,&&* +
$str&&, 4
,&&4 5
new&&6 9
{&&: ;
area&&< @
=&&A B
$str&&C [
}&&\ ]
)&&] ^
.'' 

Permission'' '
(''' (
Permissions''( 3
.''3 4
Import''4 :
)'': ;
.(( 
LocalNav(( %
(((% &
)((& '
))) 
)** 
)++ 
;++ 
return-- 
Task-- 
.-- 
CompletedTask-- %
;--% &
}.. 	
}// 
}00 μι
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Controllers\DeploymentPlanController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Controllers! ,
{ 
[ 
Admin 

]
 
public 

class $
DeploymentPlanController )
:* +

Controller, 6
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IDisplayManager (
<( )
DeploymentStep) 7
>7 8
_displayManager9 H
;H I
private 
readonly 
IEnumerable $
<$ %"
IDeploymentStepFactory% ;
>; <

_factories= G
;G H
private 
readonly 
ISession !
_session" *
;* +
private   
readonly   
ISiteService   %
_siteService  & 2
;  2 3
private!! 
readonly!! 
	INotifier!! "
	_notifier!!# ,
;!!, -
private"" 
readonly""  
IUpdateModelAccessor"" - 
_updateModelAccessor"". B
;""B C
private## 
readonly## 
IStringLocalizer## )
S##* +
;##+ ,
private$$ 
readonly$$ 
IHtmlLocalizer$$ '
H$$( )
;$$) *
private%% 
readonly%% 
dynamic%%  
New%%! $
;%%$ %
public'' $
DeploymentPlanController'' '
(''' (!
IAuthorizationService(( ! 
authorizationService((" 6
,((6 7
IDisplayManager)) 
<)) 
DeploymentStep)) *
>))* +
displayManager)), :
,)): ;
IEnumerable** 
<** "
IDeploymentStepFactory** .
>**. /
	factories**0 9
,**9 :
ISession++ 
session++ 
,++ 
ISiteService,, 
siteService,, $
,,,$ %
IShapeFactory-- 
shapeFactory-- &
,--& '
IStringLocalizer.. 
<.. $
DeploymentPlanController.. 5
>..5 6
stringLocalizer..7 F
,..F G
IHtmlLocalizer// 
<// $
DeploymentPlanController// 3
>//3 4
htmlLocalizer//5 B
,//B C
	INotifier00 
notifier00 
,00  
IUpdateModelAccessor11  
updateModelAccessor11! 4
)114 5
{22 	
_displayManager33 
=33 
displayManager33 ,
;33, -

_factories44 
=44 
	factories44 "
;44" #!
_authorizationService55 !
=55" # 
authorizationService55$ 8
;558 9
_session66 
=66 
session66 
;66 
_siteService77 
=77 
siteService77 &
;77& '
	_notifier88 
=88 
notifier88  
;88  ! 
_updateModelAccessor99  
=99! "
updateModelAccessor99# 6
;996 7
New:: 
=:: 
shapeFactory:: 
;:: 
S;; 
=;; 
stringLocalizer;; 
;;;  
H<< 
=<< 
htmlLocalizer<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
Index??) .
(??. /
ContentOptions??/ =
options??> E
,??E F
PagerParameters??G V
pagerParameters??W f
)??f g
{@@ 	
ifAA 
(AA 
!AA 
awaitAA !
_authorizationServiceAA ,
.AA, -
AuthorizeAsyncAA- ;
(AA; <
UserAA< @
,AA@ A
PermissionsAAB M
.AAM N 
ManageDeploymentPlanAAN b
)AAb c
)AAc d
{BB 
returnCC 
ForbidCC 
(CC 
)CC 
;CC  
}DD 
ifFF 
(FF 
!FF 
awaitFF !
_authorizationServiceFF ,
.FF, -
AuthorizeAsyncFF- ;
(FF; <
UserFF< @
,FF@ A
PermissionsFFB M
.FFM N
ExportFFN T
)FFT U
)FFU V
{GG 
returnHH 
ForbidHH 
(HH 
)HH 
;HH  
}II 
varKK 
siteSettingsKK 
=KK 
awaitKK $
_siteServiceKK% 1
.KK1 2 
GetSiteSettingsAsyncKK2 F
(KKF G
)KKG H
;KKH I
varLL 
pagerLL 
=LL 
newLL 
PagerLL !
(LL! "
pagerParametersLL" 1
,LL1 2
siteSettingsLL3 ?
.LL? @
PageSizeLL@ H
)LLH I
;LLI J
varNN 
deploymentPlansNN 
=NN  !
_sessionNN" *
.NN* +
QueryNN+ 0
<NN0 1
DeploymentPlanNN1 ?
,NN? @
DeploymentPlanIndexNNA T
>NNT U
(NNU V
)NNV W
;NNW X
ifPP 
(PP 
!PP 
stringPP 
.PP 
IsNullOrWhiteSpacePP *
(PP* +
optionsPP+ 2
.PP2 3
SearchPP3 9
)PP9 :
)PP: ;
{QQ 
deploymentPlansRR 
=RR  !
deploymentPlansRR" 1
.RR1 2
WhereRR2 7
(RR7 8
xRR8 9
=>RR: <
xRR= >
.RR> ?
NameRR? C
.RRC D
ContainsRRD L
(RRL M
optionsRRM T
.RRT U
SearchRRU [
)RR[ \
)RR\ ]
;RR] ^
}SS 
varUU 
countUU 
=UU 
awaitUU 
deploymentPlansUU -
.UU- .

CountAsyncUU. 8
(UU8 9
)UU9 :
;UU: ;
varWW 
resultsWW 
=WW 
awaitWW 
deploymentPlansWW  /
.XX 
OrderByXX 
(XX 
pXX 
=>XX 
pXX 
.XX  
NameXX  $
)XX$ %
.YY 
SkipYY 
(YY 
pagerYY 
.YY 
GetStartIndexYY )
(YY) *
)YY* +
)YY+ ,
.ZZ 
TakeZZ 
(ZZ 
pagerZZ 
.ZZ 
PageSizeZZ $
)ZZ$ %
.[[ 
	ListAsync[[ 
([[ 
)[[ 
;[[ 
var^^ 
	routeData^^ 
=^^ 
new^^ 
	RouteData^^  )
(^^) *
)^^* +
;^^+ ,
	routeData__ 
.__ 
Values__ 
.__ 
Add__  
(__  !
$str__! 1
,__1 2
options__3 :
.__: ;
Search__; A
)__A B
;__B C
varaa 

pagerShapeaa 
=aa 
(aa 
awaitaa #
Newaa$ '
.aa' (
Pageraa( -
(aa- .
pageraa. 3
)aa3 4
)aa4 5
.aa5 6
TotalItemCountaa6 D
(aaD E
countaaE J
)aaJ K
.aaK L
	RouteDataaaL U
(aaU V
	routeDataaaV _
)aa_ `
;aa` a
varcc 
modelcc 
=cc 
newcc (
DeploymentPlanIndexViewModelcc 8
{dd 
DeploymentPlansee 
=ee  !
resultsee" )
.ee) *
Selectee* 0
(ee0 1
xee1 2
=>ee3 5
newee6 9
DeploymentPlanEntryee: M
{eeN O
DeploymentPlaneeP ^
=ee_ `
xeea b
}eec d
)eed e
.eee f
ToListeef l
(eel m
)eem n
,een o
Optionsff 
=ff 
optionsff !
,ff! "
Pagergg 
=gg 

pagerShapegg "
}hh 
;hh 
modeljj 
.jj 
Optionsjj 
.jj %
DeploymentPlansBulkActionjj 3
=jj4 5
newjj6 9
Listjj: >
<jj> ?
SelectListItemjj? M
>jjM N
(jjN O
)jjO P
{jjQ R
newkk 
SelectListItemkk "
(kk" #
)kk# $
{kk% &
Textkk' +
=kk, -
Skk. /
[kk/ 0
$strkk0 8
]kk8 9
,kk9 :
Valuekk; @
=kkA B
nameofkkC I
(kkI J
ContentsBulkActionkkJ \
.kk\ ]
Deletekk] c
)kkc d
}kke f
}ll 
;ll 
returnnn 
Viewnn 
(nn 
modelnn 
)nn 
;nn 
}oo 	
[qq 	
HttpPostqq	 
,qq 

ActionNameqq 
(qq 
nameofqq $
(qq$ %
Indexqq% *
)qq* +
)qq+ ,
]qq, -
[rr 	
FormValueRequiredrr	 
(rr 
$strrr *
)rr* +
]rr+ ,
publicss 
ActionResultss 
IndexFilterPOSTss +
(ss+ ,(
DeploymentPlanIndexViewModelss, H
modelssI N
)ssN O
{tt 	
returnuu 
RedirectToActionuu #
(uu# $
nameofuu$ *
(uu* +
Indexuu+ 0
)uu0 1
,uu1 2
newuu3 6 
RouteValueDictionaryuu7 K
{uuL M
{vv 
$strvv "
,vv" #
modelvv$ )
.vv) *
Optionsvv* 1
.vv1 2
Searchvv2 8
}vv9 :
}ww 
)ww 
;ww 
}xx 	
[zz 	
HttpPostzz	 
,zz 

ActionNamezz 
(zz 
nameofzz $
(zz$ %
Indexzz% *
)zz* +
)zz+ ,
]zz, -
[{{ 	
FormValueRequired{{	 
({{ 
$str{{ .
){{. /
]{{/ 0
public|| 
async|| 
Task|| 
<|| 
ActionResult|| &
>||& '
IndexBulkActionPOST||( ;
(||; <
ContentOptions||< J
options||K R
,||R S
IEnumerable||T _
<||_ `
int||` c
>||c d
itemIds||e l
)||l m
{}} 	
if~~ 
(~~ 
!~~ 
await~~ !
_authorizationService~~ ,
.~~, -
AuthorizeAsync~~- ;
(~~; <
User~~< @
,~~@ A
Permissions~~B M
.~~M N 
ManageDeploymentPlan~~N b
)~~b c
)~~c d
{ 
return
€€ 
Forbid
€€ 
(
€€ 
)
€€ 
;
€€  
}
 
if
ƒƒ 
(
ƒƒ 
itemIds
ƒƒ 
?
ƒƒ 
.
ƒƒ 
Count
ƒƒ 
(
ƒƒ 
)
ƒƒ  
>
ƒƒ! "
$num
ƒƒ# $
)
ƒƒ$ %
{
„„ 
var
…… 
checkedItems
……  
=
……! "
await
……# (
_session
……) 1
.
……1 2
Query
……2 7
<
……7 8
DeploymentPlan
……8 F
,
……F G!
DeploymentPlanIndex
……H [
>
……[ \
(
……\ ]
)
……] ^
.
……^ _
Where
……_ d
(
……d e
x
……e f
=>
……g i
x
……j k
.
……k l

DocumentId
……l v
.
……v w
IsIn
……w {
(
……{ |
itemIds……| ƒ
)……ƒ „
)……„ …
.……… †
	ListAsync……† 
(…… 
)…… ‘
;……‘ ’
switch
†† 
(
†† 
options
†† 
.
††  

BulkAction
††  *
)
††* +
{
‡‡ 
case
  
ContentsBulkAction
 +
.
+ ,
None
, 0
:
0 1
break
‰‰ 
;
‰‰ 
case
  
ContentsBulkAction
 +
.
+ ,
Delete
, 2
:
2 3
foreach
‹‹ 
(
‹‹  !
var
‹‹! $
item
‹‹% )
in
‹‹* ,
checkedItems
‹‹- 9
)
‹‹9 :
{
 
_session
 $
.
$ %
Delete
% +
(
+ ,
item
, 0
)
0 1
;
1 2
}
 
	_notifier
 !
.
! "
Success
" )
(
) *
H
* +
[
+ ,
$str
, T
]
T U
)
U V
;
V W
break
 
;
 
default
‘‘ 
:
‘‘ 
throw
’’ 
new
’’ !)
ArgumentOutOfRangeException
’’" =
(
’’= >
)
’’> ?
;
’’? @
}
““ 
}
”” 
return
–– 
RedirectToAction
–– #
(
––# $
nameof
––$ *
(
––* +
Index
––+ 0
)
––0 1
)
––1 2
;
––2 3
}
—— 	
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IActionResult
™™ '
>
™™' (
Display
™™) 0
(
™™0 1
int
™™1 4
id
™™5 7
)
™™7 8
{
 	
if
›› 
(
›› 
!
›› 
await
›› #
_authorizationService
›› ,
.
››, -
AuthorizeAsync
››- ;
(
››; <
User
››< @
,
››@ A
Permissions
››B M
.
››M N"
ManageDeploymentPlan
››N b
)
››b c
)
››c d
{
 
return
 
Forbid
 
(
 
)
 
;
  
}
 
var
   
deploymentPlan
   
=
    
await
  ! &
_session
  ' /
.
  / 0
GetAsync
  0 8
<
  8 9
DeploymentPlan
  9 G
>
  G H
(
  H I
id
  I K
)
  K L
;
  L M
if
ΆΆ 
(
ΆΆ 
deploymentPlan
ΆΆ 
==
ΆΆ !
null
ΆΆ" &
)
ΆΆ& '
{
££ 
return
¤¤ 
NotFound
¤¤ 
(
¤¤  
)
¤¤  !
;
¤¤! "
}
¥¥ 
var
§§ 
items
§§ 
=
§§ 
new
§§ 
List
§§  
<
§§  !
dynamic
§§! (
>
§§( )
(
§§) *
)
§§* +
;
§§+ ,
foreach
¨¨ 
(
¨¨ 
var
¨¨ 
step
¨¨ 
in
¨¨  
deploymentPlan
¨¨! /
.
¨¨/ 0
DeploymentSteps
¨¨0 ?
)
¨¨? @
{
©© 
dynamic
ªª 
item
ªª 
=
ªª 
await
ªª $
_displayManager
ªª% 4
.
ªª4 5
BuildDisplayAsync
ªª5 F
(
ªªF G
step
ªªG K
,
ªªK L"
_updateModelAccessor
ªªM a
.
ªªa b
ModelUpdater
ªªb n
,
ªªn o
$str
ªªp y
)
ªªy z
;
ªªz {
item
«« 
.
«« 
DeploymentStep
«« #
=
««$ %
step
««& *
;
««* +
items
¬¬ 
.
¬¬ 
Add
¬¬ 
(
¬¬ 
item
¬¬ 
)
¬¬ 
;
¬¬  
}
­­ 
var
―― 

thumbnails
―― 
=
―― 
new
――  

Dictionary
――! +
<
――+ ,
string
――, 2
,
――2 3
dynamic
――4 ;
>
――; <
(
――< =
)
――= >
;
――> ?
foreach
°° 
(
°° 
var
°° 
factory
°°  
in
°°! #

_factories
°°$ .
)
°°. /
{
±± 
var
²² 
step
²² 
=
²² 
factory
²² "
.
²²" #
Create
²²# )
(
²²) *
)
²²* +
;
²²+ ,
dynamic
³³ 
	thumbnail
³³ !
=
³³" #
await
³³$ )
_displayManager
³³* 9
.
³³9 :
BuildDisplayAsync
³³: K
(
³³K L
step
³³L P
,
³³P Q"
_updateModelAccessor
³³R f
.
³³f g
ModelUpdater
³³g s
,
³³s t
$str³³u €
)³³€ 
;³³ ‚
	thumbnail
΄΄ 
.
΄΄ 
DeploymentStep
΄΄ (
=
΄΄) *
step
΄΄+ /
;
΄΄/ 0

thumbnails
µµ 
.
µµ 
Add
µµ 
(
µµ 
factory
µµ &
.
µµ& '
Name
µµ' +
,
µµ+ ,
	thumbnail
µµ- 6
)
µµ6 7
;
µµ7 8
}
¶¶ 
var
ΈΈ 
model
ΈΈ 
=
ΈΈ 
new
ΈΈ ,
DisplayDeploymentPlanViewModel
ΈΈ :
{
ΉΉ 
DeploymentPlan
ΊΊ 
=
ΊΊ  
deploymentPlan
ΊΊ! /
,
ΊΊ/ 0
Items
»» 
=
»» 
items
»» 
,
»» 

Thumbnails
ΌΌ 
=
ΌΌ 

thumbnails
ΌΌ '
,
ΌΌ' (
}
½½ 
;
½½ 
return
ΏΏ 
View
ΏΏ 
(
ΏΏ 
model
ΏΏ 
)
ΏΏ 
;
ΏΏ 
}
ΐΐ 	
public
ΒΒ 
async
ΒΒ 
Task
ΒΒ 
<
ΒΒ 
IActionResult
ΒΒ '
>
ΒΒ' (
Create
ΒΒ) /
(
ΒΒ/ 0
)
ΒΒ0 1
{
ΓΓ 	
if
ΔΔ 
(
ΔΔ 
!
ΔΔ 
await
ΔΔ #
_authorizationService
ΔΔ ,
.
ΔΔ, -
AuthorizeAsync
ΔΔ- ;
(
ΔΔ; <
User
ΔΔ< @
,
ΔΔ@ A
Permissions
ΔΔB M
.
ΔΔM N"
ManageDeploymentPlan
ΔΔN b
)
ΔΔb c
)
ΔΔc d
{
ΕΕ 
return
ΖΖ 
Forbid
ΖΖ 
(
ΖΖ 
)
ΖΖ 
;
ΖΖ  
}
ΗΗ 
var
ΙΙ 
model
ΙΙ 
=
ΙΙ 
new
ΙΙ +
CreateDeploymentPlanViewModel
ΙΙ 9
(
ΙΙ9 :
)
ΙΙ: ;
;
ΙΙ; <
return
ΛΛ 
View
ΛΛ 
(
ΛΛ 
model
ΛΛ 
)
ΛΛ 
;
ΛΛ 
}
ΜΜ 	
[
ΞΞ 	
HttpPost
ΞΞ	 
]
ΞΞ 
public
ΟΟ 
async
ΟΟ 
Task
ΟΟ 
<
ΟΟ 
IActionResult
ΟΟ '
>
ΟΟ' (
Create
ΟΟ) /
(
ΟΟ/ 0+
CreateDeploymentPlanViewModel
ΟΟ0 M
model
ΟΟN S
)
ΟΟS T
{
ΠΠ 	
if
ΡΡ 
(
ΡΡ 
!
ΡΡ 
await
ΡΡ #
_authorizationService
ΡΡ ,
.
ΡΡ, -
AuthorizeAsync
ΡΡ- ;
(
ΡΡ; <
User
ΡΡ< @
,
ΡΡ@ A
Permissions
ΡΡB M
.
ΡΡM N"
ManageDeploymentPlan
ΡΡN b
)
ΡΡb c
)
ΡΡc d
{
ÒÒ 
return
ΣΣ 
Forbid
ΣΣ 
(
ΣΣ 
)
ΣΣ 
;
ΣΣ  
}
ΤΤ 
if
ΦΦ 
(
ΦΦ 

ModelState
ΦΦ 
.
ΦΦ 
IsValid
ΦΦ "
)
ΦΦ" #
{
ΧΧ 
if
ΨΨ 
(
ΨΨ 
String
ΨΨ 
.
ΨΨ  
IsNullOrWhiteSpace
ΨΨ -
(
ΨΨ- .
model
ΨΨ. 3
.
ΨΨ3 4
Name
ΨΨ4 8
)
ΨΨ8 9
)
ΨΨ9 :
{
ΩΩ 

ModelState
ΪΪ 
.
ΪΪ 
AddModelError
ΪΪ ,
(
ΪΪ, -
nameof
ΪΪ- 3
(
ΪΪ3 4+
CreateDeploymentPlanViewModel
ΪΪ4 Q
.
ΪΪQ R
Name
ΪΪR V
)
ΪΪV W
,
ΪΪW X
S
ΪΪY Z
[
ΪΪZ [
$str
ΪΪ[ s
]
ΪΪs t
)
ΪΪt u
;
ΪΪu v
}
ΫΫ 
var
έέ 
count
έέ 
=
έέ 
await
έέ !
_session
έέ" *
.
έέ* +

QueryIndex
έέ+ 5
<
έέ5 6!
DeploymentPlanIndex
έέ6 I
>
έέI J
(
έέJ K
x
έέK L
=>
έέM O
x
έέP Q
.
έέQ R
Name
έέR V
==
έέW Y
model
έέZ _
.
έέ_ `
Name
έέ` d
)
έέd e
.
έέe f

CountAsync
έέf p
(
έέp q
)
έέq r
;
έέr s
if
ήή 
(
ήή 
count
ήή 
>
ήή 
$num
ήή 
)
ήή 
{
ίί 

ModelState
ΰΰ 
.
ΰΰ 
AddModelError
ΰΰ ,
(
ΰΰ, -
nameof
ΰΰ- 3
(
ΰΰ3 4+
CreateDeploymentPlanViewModel
ΰΰ4 Q
.
ΰΰQ R
Name
ΰΰR V
)
ΰΰV W
,
ΰΰW X
S
ΰΰY Z
[
ΰΰZ [
$strΰΰ[ ‘
]ΰΰ‘ ’
)ΰΰ’ “
;ΰΰ“ ”
}
αα 
}
ββ 
if
δδ 
(
δδ 

ModelState
δδ 
.
δδ 
IsValid
δδ "
)
δδ" #
{
εε 
var
ζζ 
deploymentPlan
ζζ "
=
ζζ# $
new
ζζ% (
DeploymentPlan
ζζ) 7
{
ζζ8 9
Name
ζζ: >
=
ζζ? @
model
ζζA F
.
ζζF G
Name
ζζG K
}
ζζL M
;
ζζM N
_session
θθ 
.
θθ 
Save
θθ 
(
θθ 
deploymentPlan
θθ ,
)
θθ, -
;
θθ- .
return
κκ 
RedirectToAction
κκ '
(
κκ' (
nameof
κκ( .
(
κκ. /
Index
κκ/ 4
)
κκ4 5
)
κκ5 6
;
κκ6 7
}
λλ 
return
ξξ 
View
ξξ 
(
ξξ 
model
ξξ 
)
ξξ 
;
ξξ 
}
οο 	
public
ρρ 
async
ρρ 
Task
ρρ 
<
ρρ 
IActionResult
ρρ '
>
ρρ' (
Edit
ρρ) -
(
ρρ- .
int
ρρ. 1
id
ρρ2 4
)
ρρ4 5
{
ςς 	
if
σσ 
(
σσ 
!
σσ 
await
σσ #
_authorizationService
σσ ,
.
σσ, -
AuthorizeAsync
σσ- ;
(
σσ; <
User
σσ< @
,
σσ@ A
Permissions
σσB M
.
σσM N"
ManageDeploymentPlan
σσN b
)
σσb c
)
σσc d
{
ττ 
return
υυ 
Forbid
υυ 
(
υυ 
)
υυ 
;
υυ  
}
φφ 
var
ψψ 
deploymentPlan
ψψ 
=
ψψ  
await
ψψ! &
_session
ψψ' /
.
ψψ/ 0
GetAsync
ψψ0 8
<
ψψ8 9
DeploymentPlan
ψψ9 G
>
ψψG H
(
ψψH I
id
ψψI K
)
ψψK L
;
ψψL M
if
ϊϊ 
(
ϊϊ 
deploymentPlan
ϊϊ 
==
ϊϊ !
null
ϊϊ" &
)
ϊϊ& '
{
ϋϋ 
return
όό 
NotFound
όό 
(
όό  
)
όό  !
;
όό! "
}
ύύ 
var
ÿÿ 
model
ÿÿ 
=
ÿÿ 
new
ÿÿ )
EditDeploymentPlanViewModel
ÿÿ 7
{
€€ 
Id
 
=
 
deploymentPlan
 #
.
# $
Id
$ &
,
& '
Name
‚‚ 
=
‚‚ 
deploymentPlan
‚‚ %
.
‚‚% &
Name
‚‚& *
}
ƒƒ 
;
ƒƒ 
return
…… 
View
…… 
(
…… 
model
…… 
)
…… 
;
…… 
}
†† 	
[
 	
HttpPost
	 
]
 
public
‰‰ 
async
‰‰ 
Task
‰‰ 
<
‰‰ 
IActionResult
‰‰ '
>
‰‰' (
Edit
‰‰) -
(
‰‰- .)
EditDeploymentPlanViewModel
‰‰. I
model
‰‰J O
)
‰‰O P
{
 	
if
‹‹ 
(
‹‹ 
!
‹‹ 
await
‹‹ #
_authorizationService
‹‹ ,
.
‹‹, -
AuthorizeAsync
‹‹- ;
(
‹‹; <
User
‹‹< @
,
‹‹@ A
Permissions
‹‹B M
.
‹‹M N"
ManageDeploymentPlan
‹‹N b
)
‹‹b c
)
‹‹c d
{
 
return
 
Forbid
 
(
 
)
 
;
  
}
 
var
 
deploymentPlan
 
=
  
await
! &
_session
' /
.
/ 0
GetAsync
0 8
<
8 9
DeploymentPlan
9 G
>
G H
(
H I
model
I N
.
N O
Id
O Q
)
Q R
;
R S
if
’’ 
(
’’ 
deploymentPlan
’’ 
==
’’ !
null
’’" &
)
’’& '
{
““ 
return
”” 
NotFound
”” 
(
””  
)
””  !
;
””! "
}
•• 
if
—— 
(
—— 

ModelState
—— 
.
—— 
IsValid
—— "
)
——" #
{
 
if
™™ 
(
™™ 
String
™™ 
.
™™  
IsNullOrWhiteSpace
™™ -
(
™™- .
model
™™. 3
.
™™3 4
Name
™™4 8
)
™™8 9
)
™™9 :
{
 

ModelState
›› 
.
›› 
AddModelError
›› ,
(
››, -
nameof
››- 3
(
››3 4)
EditDeploymentPlanViewModel
››4 O
.
››O P
Name
››P T
)
››T U
,
››U V
S
››W X
[
››X Y
$str
››Y q
]
››q r
)
››r s
;
››s t
}
 
if
 
(
 
!
 
String
 
.
 
Equals
 "
(
" #
model
# (
.
( )
Name
) -
,
- .
deploymentPlan
/ =
.
= >
Name
> B
,
B C
StringComparison
D T
.
T U
OrdinalIgnoreCase
U f
)
f g
)
g h
{
 
var
 
count
 
=
 
await
  %
_session
& .
.
. /

QueryIndex
/ 9
<
9 :!
DeploymentPlanIndex
: M
>
M N
(
N O
x
O P
=>
Q S
x
T U
.
U V
Name
V Z
==
[ ]
model
^ c
.
c d
Name
d h
&&
i k
x
l m
.
m n

DocumentId
n x
!=
y {
model| 
. ‚
Id‚ „
)„ …
.… †

CountAsync† 
( ‘
)‘ ’
;’ “
if
   
(
   
count
   
>
   
$num
    !
)
  ! "
{
΅΅ 

ModelState
ΆΆ "
.
ΆΆ" #
AddModelError
ΆΆ# 0
(
ΆΆ0 1
nameof
ΆΆ1 7
(
ΆΆ7 8+
CreateDeploymentPlanViewModel
ΆΆ8 U
.
ΆΆU V
Name
ΆΆV Z
)
ΆΆZ [
,
ΆΆ[ \
S
ΆΆ] ^
[
ΆΆ^ _
$strΆΆ_ •
]ΆΆ• –
)ΆΆ– —
;ΆΆ— 
}
££ 
}
¤¤ 
}
¥¥ 
if
§§ 
(
§§ 

ModelState
§§ 
.
§§ 
IsValid
§§ "
)
§§" #
{
¨¨ 
deploymentPlan
©© 
.
©© 
Name
©© #
=
©©$ %
model
©©& +
.
©©+ ,
Name
©©, 0
;
©©0 1
_session
«« 
.
«« 
Save
«« 
(
«« 
deploymentPlan
«« ,
)
««, -
;
««- .
	_notifier
­­ 
.
­­ 
Success
­­ !
(
­­! "
H
­­" #
[
­­# $
$str
­­$ K
]
­­K L
)
­­L M
;
­­M N
return
―― 
RedirectToAction
―― '
(
――' (
nameof
――( .
(
――. /
Index
――/ 4
)
――4 5
)
――5 6
;
――6 7
}
°° 
return
³³ 
View
³³ 
(
³³ 
model
³³ 
)
³³ 
;
³³ 
}
΄΄ 	
[
¶¶ 	
HttpPost
¶¶	 
]
¶¶ 
public
·· 
async
·· 
Task
·· 
<
·· 
IActionResult
·· '
>
··' (
Delete
··) /
(
··/ 0
int
··0 3
id
··4 6
)
··6 7
{
ΈΈ 	
if
ΉΉ 
(
ΉΉ 
!
ΉΉ 
await
ΉΉ #
_authorizationService
ΉΉ ,
.
ΉΉ, -
AuthorizeAsync
ΉΉ- ;
(
ΉΉ; <
User
ΉΉ< @
,
ΉΉ@ A
Permissions
ΉΉB M
.
ΉΉM N"
ManageDeploymentPlan
ΉΉN b
)
ΉΉb c
)
ΉΉc d
{
ΊΊ 
return
»» 
Forbid
»» 
(
»» 
)
»» 
;
»»  
}
ΌΌ 
var
ΎΎ 
deploymentPlan
ΎΎ 
=
ΎΎ  
await
ΎΎ! &
_session
ΎΎ' /
.
ΎΎ/ 0
GetAsync
ΎΎ0 8
<
ΎΎ8 9
DeploymentPlan
ΎΎ9 G
>
ΎΎG H
(
ΎΎH I
id
ΎΎI K
)
ΎΎK L
;
ΎΎL M
if
ΐΐ 
(
ΐΐ 
deploymentPlan
ΐΐ 
==
ΐΐ !
null
ΐΐ" &
)
ΐΐ& '
{
ΑΑ 
return
ΒΒ 
NotFound
ΒΒ 
(
ΒΒ  
)
ΒΒ  !
;
ΒΒ! "
}
ΓΓ 
_session
ΕΕ 
.
ΕΕ 
Delete
ΕΕ 
(
ΕΕ 
deploymentPlan
ΕΕ *
)
ΕΕ* +
;
ΕΕ+ ,
	_notifier
ΗΗ 
.
ΗΗ 
Success
ΗΗ 
(
ΗΗ 
H
ΗΗ 
[
ΗΗ  
$str
ΗΗ  G
]
ΗΗG H
)
ΗΗH I
;
ΗΗI J
return
ΙΙ 
RedirectToAction
ΙΙ #
(
ΙΙ# $
nameof
ΙΙ$ *
(
ΙΙ* +
Index
ΙΙ+ 0
)
ΙΙ0 1
)
ΙΙ1 2
;
ΙΙ2 3
}
ΚΚ 	
}
ΛΛ 
}ΜΜ Ώ8
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Controllers\ExportFileController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Controllers! ,
{ 
[ 
Admin 

]
 
public 

class  
ExportFileController %
:& '

Controller( 2
{ 
private 
readonly 
IDeploymentManager +
_deploymentManager, >
;> ?
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISession !
_session" *
;* +
public  
ExportFileController #
(# $!
IAuthorizationService ! 
authorizationService" 6
,6 7
ISession 
session 
, 
IDeploymentManager 
deploymentManager 0
)0 1
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_deploymentManager   
=    
deploymentManager  ! 2
;  2 3
_session!! 
=!! 
session!! 
;!! 
}"" 	
[$$ 	
HttpPost$$	 
]$$ 
[%% 	"
DeleteFileResultFilter%%	 
]%%  
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (
Execute&&) 0
(&&0 1
int&&1 4
id&&5 7
)&&7 8
{'' 	
if(( 
((( 
!(( 
await(( !
_authorizationService(( ,
.((, -
AuthorizeAsync((- ;
(((; <
User((< @
,((@ A
Permissions((B M
.((M N
Export((N T
)((T U
)((U V
{)) 
return** 
Forbid** 
(** 
)** 
;**  
}++ 
var-- 
deploymentPlan-- 
=--  
await--! &
_session--' /
.--/ 0
GetAsync--0 8
<--8 9
DeploymentPlan--9 G
>--G H
(--H I
id--I K
)--K L
;--L M
if// 
(// 
deploymentPlan// 
==// !
null//" &
)//& '
{00 
return11 
NotFound11 
(11  
)11  !
;11! "
}22 
string44 
archiveFileName44 "
;44" #
var55 
filename55 
=55 
deploymentPlan55 )
.55) *
Name55* .
.55. /

ToSafeName55/ 9
(559 :
)55: ;
+55< =
$str55> D
;55D E
using77 
(77 
var77 
fileBuilder77 "
=77# $
new77% ( 
TemporaryFileBuilder77) =
(77= >
)77> ?
)77? @
{88 
archiveFileName99 
=99  !
PathExtensions99" 0
.990 1
Combine991 8
(998 9
Path999 =
.99= >
GetTempPath99> I
(99I J
)99J K
,99K L
filename99M U
)99U V
;99V W
var;; 
recipeDescriptor;; $
=;;% &
new;;' *
RecipeDescriptor;;+ ;
(;;; <
);;< =
;;;= >
var<< $
recipeFileDeploymentStep<< ,
=<<- .
deploymentPlan<</ =
.<<= >
DeploymentSteps<<> M
.<<M N
FirstOrDefault<<N \
(<<\ ]
ds<<] _
=><<` b
ds<<c e
.<<e f
Name<<f j
==<<k m
nameof<<n t
(<<t u%
RecipeFileDeploymentStep	<<u 
)
<< 
)
<< 
as
<< ’&
RecipeFileDeploymentStep
<<“ «
;
<<« ¬
if>> 
(>> $
recipeFileDeploymentStep>> ,
!=>>- /
null>>0 4
)>>4 5
{?? 
recipeDescriptor@@ $
.@@$ %
Name@@% )
=@@* +$
recipeFileDeploymentStep@@, D
.@@D E

RecipeName@@E O
;@@O P
recipeDescriptorAA $
.AA$ %
DisplayNameAA% 0
=AA1 2$
recipeFileDeploymentStepAA3 K
.AAK L
DisplayNameAAL W
;AAW X
recipeDescriptorBB $
.BB$ %
DescriptionBB% 0
=BB1 2$
recipeFileDeploymentStepBB3 K
.BBK L
DescriptionBBL W
;BBW X
recipeDescriptorCC $
.CC$ %
AuthorCC% +
=CC, -$
recipeFileDeploymentStepCC. F
.CCF G
AuthorCCG M
;CCM N
recipeDescriptorDD $
.DD$ %
WebSiteDD% ,
=DD- .$
recipeFileDeploymentStepDD/ G
.DDG H
WebSiteDDH O
;DDO P
recipeDescriptorEE $
.EE$ %
VersionEE% ,
=EE- .$
recipeFileDeploymentStepEE/ G
.EEG H
VersionEEH O
;EEO P
recipeDescriptorFF $
.FF$ %
IsSetupRecipeFF% 2
=FF3 4$
recipeFileDeploymentStepFF5 M
.FFM N
IsSetupRecipeFFN [
;FF[ \
recipeDescriptorGG $
.GG$ %

CategoriesGG% /
=GG0 1
(GG2 3$
recipeFileDeploymentStepGG3 K
.GGK L

CategoriesGGL V
??GGW Y
$strGGZ \
)GG\ ]
.GG] ^
SplitGG^ c
(GGc d
$charGGd g
,GGg h
StringSplitOptionsGGi {
.GG{ |
RemoveEmptyEntries	GG| 
)
GG 
;
GG 
recipeDescriptorHH $
.HH$ %
TagsHH% )
=HH* +
(HH, -$
recipeFileDeploymentStepHH- E
.HHE F
TagsHHF J
??HHK M
$strHHN P
)HHP Q
.HHQ R
SplitHHR W
(HHW X
$charHHX [
,HH[ \
StringSplitOptionsHH] o
.HHo p
RemoveEmptyEntries	HHp ‚
)
HH‚ ƒ
;
HHƒ „
}II 
varKK  
deploymentPlanResultKK (
=KK) *
newKK+ . 
DeploymentPlanResultKK/ C
(KKC D
fileBuilderKKD O
,KKO P
recipeDescriptorKKQ a
)KKa b
;KKb c
awaitLL 
_deploymentManagerLL (
.LL( )&
ExecuteDeploymentPlanAsyncLL) C
(LLC D
deploymentPlanLLD R
,LLR S 
deploymentPlanResultLLT h
)LLh i
;LLi j
ZipFileMM 
.MM 
CreateFromDirectoryMM +
(MM+ ,
fileBuilderMM, 7
.MM7 8
FolderMM8 >
,MM> ?
archiveFileNameMM@ O
)MMO P
;MMP Q
}NN 
returnPP 
newPP 
PhysicalFileResultPP )
(PP) *
archiveFileNamePP* 9
,PP9 :
$strPP; L
)PPL M
{PPN O
FileDownloadNamePPP `
=PPa b
filenamePPc k
}PPl m
;PPm n
}QQ 	
}RR 
}SS Ε^
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Controllers\ImportController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Controllers! ,
{ 
[ 
Admin 

]
 
public 

class 
ImportController !
:" #

Controller$ .
{ 
private 
readonly 
IDeploymentManager +
_deploymentManager, >
;> ?
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ImportController 
(  
IDeploymentManager 
deploymentManager 0
,0 1!
IAuthorizationService ! 
authorizationService" 6
,6 7
	INotifier 
notifier 
, 
IHtmlLocalizer 
< 
ImportController +
>+ ,
htmlLocalizer- :
,: ;
IStringLocalizer   
<   
ImportController   -
>  - .
stringLocalizer  / >
)!! 	
{"" 	
_deploymentManager## 
=##  
deploymentManager##! 2
;##2 3!
_authorizationService$$ !
=$$" # 
authorizationService$$$ 8
;$$8 9
	_notifier%% 
=%% 
notifier%%  
;%%  !
H'' 
='' 
htmlLocalizer'' 
;'' 
S(( 
=(( 
stringLocalizer(( 
;((  
})) 	
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (
Index++) .
(++. /
)++/ 0
{,, 	
if-- 
(-- 
!-- 
await-- !
_authorizationService-- ,
.--, -
AuthorizeAsync--- ;
(--; <
User--< @
,--@ A
Permissions--B M
.--M N
Import--N T
)--T U
)--U V
{.. 
return// 
Forbid// 
(// 
)// 
;//  
}00 
return22 
View22 
(22 
)22 
;22 
}33 	
[55 	
HttpPost55	 
]55 
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
Import66) /
(66/ 0
	IFormFile660 9
importedPackage66: I
)66I J
{77 	
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
.88M N
Import88N T
)88T U
)88U V
{99 
return:: 
Forbid:: 
(:: 
):: 
;::  
};; 
if== 
(== 
importedPackage== 
!===  "
null==# '
)==' (
{>> 
var?? 
tempArchiveName?? #
=??$ %
Path??& *
.??* +
GetTempFileName??+ :
(??: ;
)??; <
+??= >
Path??? C
.??C D
GetExtension??D P
(??P Q
importedPackage??Q `
.??` a
FileName??a i
)??i j
;??j k
var@@ 
tempArchiveFolder@@ %
=@@& '
PathExtensions@@( 6
.@@6 7
Combine@@7 >
(@@> ?
Path@@? C
.@@C D
GetTempPath@@D O
(@@O P
)@@P Q
,@@Q R
Path@@S W
.@@W X
GetRandomFileName@@X i
(@@i j
)@@j k
)@@k l
;@@l m
tryBB 
{CC 
usingDD 
(DD 
varDD 
streamDD %
=DD& '
newDD( +

FileStreamDD, 6
(DD6 7
tempArchiveNameDD7 F
,DDF G
FileModeDDH P
.DDP Q
CreateDDQ W
)DDW X
)DDX Y
{EE 
awaitFF 
importedPackageFF -
.FF- .
CopyToAsyncFF. 9
(FF9 :
streamFF: @
)FF@ A
;FFA B
}GG 
ifII 
(II 
importedPackageII '
.II' (
FileNameII( 0
.II0 1
EndsWithII1 9
(II9 :
$strII: @
)II@ A
)IIA B
{JJ 
ZipFileKK 
.KK  
ExtractToDirectoryKK  2
(KK2 3
tempArchiveNameKK3 B
,KKB C
tempArchiveFolderKKD U
)KKU V
;KKV W
}LL 
elseMM 
ifMM 
(MM 
importedPackageMM ,
.MM, -
FileNameMM- 5
.MM5 6
EndsWithMM6 >
(MM> ?
$strMM? F
)MMF G
)MMG H
{NN 
	DirectoryOO !
.OO! "
CreateDirectoryOO" 1
(OO1 2
tempArchiveFolderOO2 C
)OOC D
;OOD E
SystemPP 
.PP 
IOPP !
.PP! "
FilePP" &
.PP& '
MovePP' +
(PP+ ,
tempArchiveNamePP, ;
,PP; <
PathPP= A
.PPA B
CombinePPB I
(PPI J
tempArchiveFolderPPJ [
,PP[ \
$strPP] j
)PPj k
)PPk l
;PPl m
}QQ 
elseRR 
{SS 
	_notifierTT !
.TT! "
ErrorTT" '
(TT' (
HTT( )
[TT) *
$strTT* Q
]TTQ R
)TTR S
;TTS T
returnVV 
RedirectToActionVV /
(VV/ 0
$strVV0 7
)VV7 8
;VV8 9
}WW 
awaitYY 
_deploymentManagerYY ,
.YY, -(
ImportDeploymentPackageAsyncYY- I
(YYI J
newYYJ M 
PhysicalFileProviderYYN b
(YYb c
tempArchiveFolderYYc t
)YYt u
)YYu v
;YYv w
	_notifier[[ 
.[[ 
Success[[ %
([[% &
H[[& '
[[[' (
$str[[( F
][[F G
)[[G H
;[[H I
}\\ 
finally]] 
{^^ 
if__ 
(__ 
System__ 
.__ 
IO__ !
.__! "
File__" &
.__& '
Exists__' -
(__- .
tempArchiveName__. =
)__= >
)__> ?
{`` 
Systemaa 
.aa 
IOaa !
.aa! "
Fileaa" &
.aa& '
Deleteaa' -
(aa- .
tempArchiveNameaa. =
)aa= >
;aa> ?
}bb 
ifdd 
(dd 
	Directorydd !
.dd! "
Existsdd" (
(dd( )
tempArchiveFolderdd) :
)dd: ;
)dd; <
{ee 
	Directoryff !
.ff! "
Deleteff" (
(ff( )
tempArchiveFolderff) :
,ff: ;
trueff< @
)ff@ A
;ffA B
}gg 
}hh 
}ii 
elsejj 
{kk 
	_notifierll 
.ll 
Errorll 
(ll  
Hll  !
[ll! "
$strll" @
]ll@ A
)llA B
;llB C
}mm 
returnoo 
RedirectToActionoo #
(oo# $
nameofoo$ *
(oo* +
Indexoo+ 0
)oo0 1
)oo1 2
;oo2 3
}pp 	
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (
Jsonrr) -
(rr- .
)rr. /
{ss 	
iftt 
(tt 
!tt 
awaittt !
_authorizationServicett ,
.tt, -
AuthorizeAsynctt- ;
(tt; <
Usertt< @
,tt@ A
PermissionsttB M
.ttM N
ImportttN T
)ttT U
)ttU V
{uu 
returnvv 
Forbidvv 
(vv 
)vv 
;vv  
}ww 
returnyy 
Viewyy 
(yy 
)yy 
;yy 
}zz 	
[|| 	
HttpPost||	 
]|| 
public}} 
async}} 
Task}} 
<}} 
IActionResult}} '
>}}' (
Json}}) -
(}}- .
ImportJsonViewModel}}. A
model}}B G
)}}G H
{~~ 	
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
User< @
,@ A
PermissionsB M
.M N
ImportN T
)T U
)U V
{
€€ 
return
 
Forbid
 
(
 
)
 
;
  
}
‚‚ 
if
„„ 
(
„„ 
!
„„ 
model
„„ 
.
„„ 
Json
„„ 
.
„„ 
IsJson
„„ "
(
„„" #
)
„„# $
)
„„$ %
{
…… 

ModelState
†† 
.
†† 
AddModelError
†† (
(
††( )
nameof
††) /
(
††/ 0
model
††0 5
.
††5 6
Json
††6 :
)
††: ;
,
††; <
S
††= >
[
††> ?
$str
††? s
]
††s t
)
††t u
;
††u v
}
‡‡ 
if
‰‰ 
(
‰‰ 

ModelState
‰‰ 
.
‰‰ 
IsValid
‰‰ "
)
‰‰" #
{
 
var
‹‹ 
tempArchiveFolder
‹‹ %
=
‹‹& '
PathExtensions
‹‹( 6
.
‹‹6 7
Combine
‹‹7 >
(
‹‹> ?
Path
‹‹? C
.
‹‹C D
GetTempPath
‹‹D O
(
‹‹O P
)
‹‹P Q
,
‹‹Q R
Path
‹‹S W
.
‹‹W X
GetRandomFileName
‹‹X i
(
‹‹i j
)
‹‹j k
)
‹‹k l
;
‹‹l m
try
 
{
 
	Directory
 
.
 
CreateDirectory
 -
(
- .
tempArchiveFolder
. ?
)
? @
;
@ A
System
 
.
 
IO
 
.
 
File
 "
.
" #
WriteAllText
# /
(
/ 0
Path
0 4
.
4 5
Combine
5 <
(
< =
tempArchiveFolder
= N
,
N O
$str
P ]
)
] ^
,
^ _
model
` e
.
e f
Json
f j
)
j k
;
k l
await
’’  
_deploymentManager
’’ ,
.
’’, -*
ImportDeploymentPackageAsync
’’- I
(
’’I J
new
’’J M"
PhysicalFileProvider
’’N b
(
’’b c
tempArchiveFolder
’’c t
)
’’t u
)
’’u v
;
’’v w
	_notifier
”” 
.
”” 
Success
”” %
(
””% &
H
””& '
[
””' (
$str
””( :
]
””: ;
)
””; <
;
””< =
}
•• 
finally
–– 
{
—— 
if
 
(
 
	Directory
 !
.
! "
Exists
" (
(
( )
tempArchiveFolder
) :
)
: ;
)
; <
{
™™ 
	Directory
 !
.
! "
Delete
" (
(
( )
tempArchiveFolder
) :
,
: ;
true
< @
)
@ A
;
A B
}
›› 
}
 
}
 
return
 
View
 
(
 
model
 
)
 
;
 
}
   	
}
΅΅ 
}ΆΆ Φ²
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Controllers\StepController.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Controllers! ,
{ 
[ 
Admin 

]
 
public 

class 
StepController 
:  !

Controller" ,
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IDisplayManager (
<( )
DeploymentStep) 7
>7 8
_displayManager9 H
;H I
private 
readonly 
IEnumerable $
<$ %"
IDeploymentStepFactory% ;
>; <

_factories= G
;G H
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private 
readonly 
dynamic  
New! $
;$ %
public 
StepController 
( !
IAuthorizationService   ! 
authorizationService  " 6
,  6 7
IDisplayManager!! 
<!! 
DeploymentStep!! *
>!!* +
displayManager!!, :
,!!: ;
IEnumerable"" 
<"" "
IDeploymentStepFactory"" .
>"". /
	factories""0 9
,""9 :
ISession## 
session## 
,## 
ISiteService$$ 
siteService$$ $
,$$$ %
IShapeFactory%% 
shapeFactory%% &
,%%& '
IHtmlLocalizer&& 
<&& 
StepController&& )
>&&) *
htmlLocalizer&&+ 8
,&&8 9
	INotifier'' 
notifier'' 
,''  
IUpdateModelAccessor((  
updateModelAccessor((! 4
)((4 5
{)) 	
_displayManager** 
=** 
displayManager** ,
;**, -

_factories++ 
=++ 
	factories++ "
;++" #!
_authorizationService,, !
=,," # 
authorizationService,,$ 8
;,,8 9
_session-- 
=-- 
session-- 
;-- 
_siteService.. 
=.. 
siteService.. &
;..& '
	_notifier// 
=// 
notifier//  
;//  ! 
_updateModelAccessor00  
=00! "
updateModelAccessor00# 6
;006 7
New11 
=11 
shapeFactory11 
;11 
H22 
=22 
htmlLocalizer22 
;22 
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Create55) /
(55/ 0
int550 3
id554 6
,556 7
string558 >
type55? C
)55C D
{66 	
if77 
(77 
!77 
await77 !
_authorizationService77 ,
.77, -
AuthorizeAsync77- ;
(77; <
User77< @
,77@ A
Permissions77B M
.77M N 
ManageDeploymentPlan77N b
)77b c
)77c d
{88 
return99 
Forbid99 
(99 
)99 
;99  
}:: 
var<< 
deploymentPlan<< 
=<<  
await<<! &
_session<<' /
.<</ 0
GetAsync<<0 8
<<<8 9
DeploymentPlan<<9 G
><<G H
(<<H I
id<<I K
)<<K L
;<<L M
if>> 
(>> 
deploymentPlan>> 
==>> !
null>>" &
)>>& '
{?? 
return@@ 
NotFound@@ 
(@@  
)@@  !
;@@! "
}AA 
varCC 
stepCC 
=CC 

_factoriesCC !
.CC! "
FirstOrDefaultCC" 0
(CC0 1
xCC1 2
=>CC3 5
xCC6 7
.CC7 8
NameCC8 <
==CC= ?
typeCC@ D
)CCD E
?CCE F
.CCF G
CreateCCG M
(CCM N
)CCN O
;CCO P
ifEE 
(EE 
stepEE 
==EE 
nullEE 
)EE 
{FF 
returnGG 
NotFoundGG 
(GG  
)GG  !
;GG! "
}HH 
stepJJ 
.JJ 
IdJJ 
=JJ 
GuidJJ 
.JJ 
NewGuidJJ "
(JJ" #
)JJ# $
.JJ$ %
ToStringJJ% -
(JJ- .
$strJJ. 1
)JJ1 2
;JJ2 3
varLL 
modelLL 
=LL 
newLL +
EditDeploymentPlanStepViewModelLL ;
{MM 
DeploymentPlanIdNN  
=NN! "
idNN# %
,NN% &
DeploymentStepOO 
=OO  
stepOO! %
,OO% &
DeploymentStepIdPP  
=PP! "
stepPP# '
.PP' (
IdPP( *
,PP* +
DeploymentStepTypeQQ "
=QQ# $
typeQQ% )
,QQ) *
EditorRR 
=RR 
awaitRR 
_displayManagerRR .
.RR. /
BuildEditorAsyncRR/ ?
(RR? @
stepRR@ D
,RRD E
updaterRRF M
:RRM N 
_updateModelAccessorRRO c
.RRc d
ModelUpdaterRRd p
,RRp q
isNewRRr w
:RRw x
trueRRy }
)RR} ~
}SS 
;SS 
modelUU 
.UU 
EditorUU 
.UU 
DeploymentStepUU '
=UU( )
stepUU* .
;UU. /
returnWW 
ViewWW 
(WW 
modelWW 
)WW 
;WW 
}XX 	
[ZZ 	
HttpPostZZ	 
]ZZ 
public[[ 
async[[ 
Task[[ 
<[[ 
IActionResult[[ '
>[[' (
Create[[) /
([[/ 0+
EditDeploymentPlanStepViewModel[[0 O
model[[P U
)[[U V
{\\ 	
if]] 
(]] 
!]] 
await]] !
_authorizationService]] ,
.]], -
AuthorizeAsync]]- ;
(]]; <
User]]< @
,]]@ A
Permissions]]B M
.]]M N 
ManageDeploymentPlan]]N b
)]]b c
)]]c d
{^^ 
return__ 
Forbid__ 
(__ 
)__ 
;__  
}`` 
varbb 
deploymentPlanbb 
=bb  
awaitbb! &
_sessionbb' /
.bb/ 0
GetAsyncbb0 8
<bb8 9
DeploymentPlanbb9 G
>bbG H
(bbH I
modelbbI N
.bbN O
DeploymentPlanIdbbO _
)bb_ `
;bb` a
ifdd 
(dd 
deploymentPlandd 
==dd !
nulldd" &
)dd& '
{ee 
returnff 
NotFoundff 
(ff  
)ff  !
;ff! "
}gg 
varii 
stepii 
=ii 

_factoriesii !
.ii! "
FirstOrDefaultii" 0
(ii0 1
xii1 2
=>ii3 5
xii6 7
.ii7 8
Nameii8 <
==ii= ?
modelii@ E
.iiE F
DeploymentStepTypeiiF X
)iiX Y
?iiY Z
.iiZ [
Createii[ a
(iia b
)iib c
;iic d
ifkk 
(kk 
stepkk 
==kk 
nullkk 
)kk 
{ll 
returnmm 
NotFoundmm 
(mm  
)mm  !
;mm! "
}nn 
dynamicpp 
editorpp 
=pp 
awaitpp "
_displayManagerpp# 2
.pp2 3
UpdateEditorAsyncpp3 D
(ppD E
stepppE I
,ppI J
updaterppK R
:ppR S 
_updateModelAccessorppT h
.pph i
ModelUpdaterppi u
,ppu v
isNewppw |
:pp| }
true	pp~ ‚
)
pp‚ ƒ
;
ppƒ „
editorqq 
.qq 
DeploymentStepqq !
=qq" #
stepqq$ (
;qq( )
ifss 
(ss 

ModelStatess 
.ss 
IsValidss "
)ss" #
{tt 
stepuu 
.uu 
Iduu 
=uu 
modeluu 
.uu  
DeploymentStepIduu  0
;uu0 1
deploymentPlanvv 
.vv 
DeploymentStepsvv .
.vv. /
Addvv/ 2
(vv2 3
stepvv3 7
)vv7 8
;vv8 9
_sessionww 
.ww 
Saveww 
(ww 
deploymentPlanww ,
)ww, -
;ww- .
	_notifieryy 
.yy 
Successyy !
(yy! "
Hyy" #
[yy# $
$stryy$ N
]yyN O
)yyO P
;yyP Q
returnzz 
RedirectToActionzz '
(zz' (
$strzz( 1
,zz1 2
$strzz3 C
,zzC D
newzzE H
{zzI J
idzzK M
=zzN O
modelzzP U
.zzU V
DeploymentPlanIdzzV f
}zzg h
)zzh i
;zzi j
}{{ 
model}} 
.}} 
Editor}} 
=}} 
editor}} !
;}}! "
return
€€ 
View
€€ 
(
€€ 
model
€€ 
)
€€ 
;
€€ 
}
 	
public
ƒƒ 
async
ƒƒ 
Task
ƒƒ 
<
ƒƒ 
IActionResult
ƒƒ '
>
ƒƒ' (
Edit
ƒƒ) -
(
ƒƒ- .
int
ƒƒ. 1
id
ƒƒ2 4
,
ƒƒ4 5
string
ƒƒ6 <
stepId
ƒƒ= C
)
ƒƒC D
{
„„ 	
if
…… 
(
…… 
!
…… 
await
…… #
_authorizationService
…… ,
.
……, -
AuthorizeAsync
……- ;
(
……; <
User
……< @
,
……@ A
Permissions
……B M
.
……M N"
ManageDeploymentPlan
……N b
)
……b c
)
……c d
{
†† 
return
‡‡ 
Forbid
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡  
}
 
var
 
deploymentPlan
 
=
  
await
! &
_session
' /
.
/ 0
GetAsync
0 8
<
8 9
DeploymentPlan
9 G
>
G H
(
H I
id
I K
)
K L
;
L M
if
 
(
 
deploymentPlan
 
==
 !
null
" &
)
& '
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
var
‘‘ 
step
‘‘ 
=
‘‘ 
deploymentPlan
‘‘ %
.
‘‘% &
DeploymentSteps
‘‘& 5
.
‘‘5 6
FirstOrDefault
‘‘6 D
(
‘‘D E
x
‘‘E F
=>
‘‘G I
String
‘‘J P
.
‘‘P Q
Equals
‘‘Q W
(
‘‘W X
x
‘‘X Y
.
‘‘Y Z
Id
‘‘Z \
,
‘‘\ ]
stepId
‘‘^ d
,
‘‘d e
StringComparison
‘‘f v
.
‘‘v w 
OrdinalIgnoreCase‘‘w 
)‘‘ ‰
)‘‘‰ 
;‘‘ ‹
if
““ 
(
““ 
step
““ 
==
““ 
null
““ 
)
““ 
{
”” 
return
•• 
NotFound
•• 
(
••  
)
••  !
;
••! "
}
–– 
var
 
model
 
=
 
new
 -
EditDeploymentPlanStepViewModel
 ;
{
™™ 
DeploymentPlanId
  
=
! "
id
# %
,
% &
DeploymentStep
›› 
=
››  
step
››! %
,
››% &
DeploymentStepId
  
=
! "
step
# '
.
' (
Id
( *
,
* + 
DeploymentStepType
 "
=
# $
step
% )
.
) *
GetType
* 1
(
1 2
)
2 3
.
3 4
Name
4 8
,
8 9
Editor
 
=
 
await
 
_displayManager
 .
.
. /
BuildEditorAsync
/ ?
(
? @
step
@ D
,
D E
updater
F M
:
M N"
_updateModelAccessor
O c
.
c d
ModelUpdater
d p
,
p q
isNew
r w
:
w x
false
y ~
)
~ 
}
 
;
 
model
΅΅ 
.
΅΅ 
Editor
΅΅ 
.
΅΅ 
DeploymentStep
΅΅ '
=
΅΅( )
step
΅΅* .
;
΅΅. /
return
££ 
View
££ 
(
££ 
model
££ 
)
££ 
;
££ 
}
¤¤ 	
[
¦¦ 	
HttpPost
¦¦	 
]
¦¦ 
public
§§ 
async
§§ 
Task
§§ 
<
§§ 
IActionResult
§§ '
>
§§' (
Edit
§§) -
(
§§- .-
EditDeploymentPlanStepViewModel
§§. M
model
§§N S
)
§§S T
{
¨¨ 	
if
©© 
(
©© 
!
©© 
await
©© #
_authorizationService
©© ,
.
©©, -
AuthorizeAsync
©©- ;
(
©©; <
User
©©< @
,
©©@ A
Permissions
©©B M
.
©©M N"
ManageDeploymentPlan
©©N b
)
©©b c
)
©©c d
{
ªª 
return
«« 
Forbid
«« 
(
«« 
)
«« 
;
««  
}
¬¬ 
var
®® 
deploymentPlan
®® 
=
®®  
await
®®! &
_session
®®' /
.
®®/ 0
GetAsync
®®0 8
<
®®8 9
DeploymentPlan
®®9 G
>
®®G H
(
®®H I
model
®®I N
.
®®N O
DeploymentPlanId
®®O _
)
®®_ `
;
®®` a
if
°° 
(
°° 
deploymentPlan
°° 
==
°° !
null
°°" &
)
°°& '
{
±± 
return
²² 
NotFound
²² 
(
²²  
)
²²  !
;
²²! "
}
³³ 
var
µµ 
step
µµ 
=
µµ 
deploymentPlan
µµ %
.
µµ% &
DeploymentSteps
µµ& 5
.
µµ5 6
FirstOrDefault
µµ6 D
(
µµD E
x
µµE F
=>
µµG I
String
µµJ P
.
µµP Q
Equals
µµQ W
(
µµW X
x
µµX Y
.
µµY Z
Id
µµZ \
,
µµ\ ]
model
µµ^ c
.
µµc d
DeploymentStepId
µµd t
,
µµt u
StringComparisonµµv †
.µµ† ‡!
OrdinalIgnoreCaseµµ‡ 
)µµ ™
)µµ™ 
;µµ ›
if
·· 
(
·· 
step
·· 
==
·· 
null
·· 
)
·· 
{
ΈΈ 
return
ΉΉ 
NotFound
ΉΉ 
(
ΉΉ  
)
ΉΉ  !
;
ΉΉ! "
}
ΊΊ 
var
ΌΌ 
editor
ΌΌ 
=
ΌΌ 
await
ΌΌ 
_displayManager
ΌΌ .
.
ΌΌ. /
UpdateEditorAsync
ΌΌ/ @
(
ΌΌ@ A
step
ΌΌA E
,
ΌΌE F
updater
ΌΌG N
:
ΌΌN O"
_updateModelAccessor
ΌΌP d
.
ΌΌd e
ModelUpdater
ΌΌe q
,
ΌΌq r
isNew
ΌΌs x
:
ΌΌx y
false
ΌΌz 
)ΌΌ €
;ΌΌ€ 
if
ΎΎ 
(
ΎΎ 

ModelState
ΎΎ 
.
ΎΎ 
IsValid
ΎΎ "
)
ΎΎ" #
{
ΏΏ 
_session
ΐΐ 
.
ΐΐ 
Save
ΐΐ 
(
ΐΐ 
deploymentPlan
ΐΐ ,
)
ΐΐ, -
;
ΐΐ- .
	_notifier
ΒΒ 
.
ΒΒ 
Success
ΒΒ !
(
ΒΒ! "
H
ΒΒ" #
[
ΒΒ# $
$str
ΒΒ$ P
]
ΒΒP Q
)
ΒΒQ R
;
ΒΒR S
return
ΓΓ 
RedirectToAction
ΓΓ '
(
ΓΓ' (
$str
ΓΓ( 1
,
ΓΓ1 2
$str
ΓΓ3 C
,
ΓΓC D
new
ΓΓE H
{
ΓΓI J
id
ΓΓK M
=
ΓΓN O
model
ΓΓP U
.
ΓΓU V
DeploymentPlanId
ΓΓV f
}
ΓΓg h
)
ΓΓh i
;
ΓΓi j
}
ΔΔ 
	_notifier
ΖΖ 
.
ΖΖ 
Error
ΖΖ 
(
ΖΖ 
H
ΖΖ 
[
ΖΖ 
$str
ΖΖ O
]
ΖΖO P
)
ΖΖP Q
;
ΖΖQ R
model
ΗΗ 
.
ΗΗ 
Editor
ΗΗ 
=
ΗΗ 
editor
ΗΗ !
;
ΗΗ! "
return
ΚΚ 
View
ΚΚ 
(
ΚΚ 
model
ΚΚ 
)
ΚΚ 
;
ΚΚ 
}
ΛΛ 	
[
ΝΝ 	
HttpPost
ΝΝ	 
]
ΝΝ 
public
ΞΞ 
async
ΞΞ 
Task
ΞΞ 
<
ΞΞ 
IActionResult
ΞΞ '
>
ΞΞ' (
Delete
ΞΞ) /
(
ΞΞ/ 0
int
ΞΞ0 3
id
ΞΞ4 6
,
ΞΞ6 7
string
ΞΞ8 >
stepId
ΞΞ? E
)
ΞΞE F
{
ΟΟ 	
if
ΠΠ 
(
ΠΠ 
!
ΠΠ 
await
ΠΠ #
_authorizationService
ΠΠ ,
.
ΠΠ, -
AuthorizeAsync
ΠΠ- ;
(
ΠΠ; <
User
ΠΠ< @
,
ΠΠ@ A
Permissions
ΠΠB M
.
ΠΠM N"
ManageDeploymentPlan
ΠΠN b
)
ΠΠb c
)
ΠΠc d
{
ΡΡ 
return
ÒÒ 
Forbid
ÒÒ 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ  
}
ΣΣ 
var
ΥΥ 
deploymentPlan
ΥΥ 
=
ΥΥ  
await
ΥΥ! &
_session
ΥΥ' /
.
ΥΥ/ 0
GetAsync
ΥΥ0 8
<
ΥΥ8 9
DeploymentPlan
ΥΥ9 G
>
ΥΥG H
(
ΥΥH I
id
ΥΥI K
)
ΥΥK L
;
ΥΥL M
if
ΧΧ 
(
ΧΧ 
deploymentPlan
ΧΧ 
==
ΧΧ !
null
ΧΧ" &
)
ΧΧ& '
{
ΨΨ 
return
ΩΩ 
NotFound
ΩΩ 
(
ΩΩ  
)
ΩΩ  !
;
ΩΩ! "
}
ΪΪ 
var
άά 
step
άά 
=
άά 
deploymentPlan
άά %
.
άά% &
DeploymentSteps
άά& 5
.
άά5 6
FirstOrDefault
άά6 D
(
άάD E
x
άάE F
=>
άάG I
String
άάJ P
.
άάP Q
Equals
άάQ W
(
άάW X
x
άάX Y
.
άάY Z
Id
άάZ \
,
άά\ ]
stepId
άά^ d
,
άάd e
StringComparison
άάf v
.
άάv w 
OrdinalIgnoreCaseάάw 
)άά ‰
)άά‰ 
;άά ‹
if
ήή 
(
ήή 
step
ήή 
==
ήή 
null
ήή 
)
ήή 
{
ίί 
return
ΰΰ 
NotFound
ΰΰ 
(
ΰΰ  
)
ΰΰ  !
;
ΰΰ! "
}
αα 
deploymentPlan
γγ 
.
γγ 
DeploymentSteps
γγ *
.
γγ* +
Remove
γγ+ 1
(
γγ1 2
step
γγ2 6
)
γγ6 7
;
γγ7 8
_session
δδ 
.
δδ 
Save
δδ 
(
δδ 
deploymentPlan
δδ (
)
δδ( )
;
δδ) *
	_notifier
ζζ 
.
ζζ 
Success
ζζ 
(
ζζ 
H
ζζ 
[
ζζ  
$str
ζζ  G
]
ζζG H
)
ζζH I
;
ζζI J
return
θθ 
RedirectToAction
θθ #
(
θθ# $
$str
θθ$ -
,
θθ- .
$str
θθ/ ?
,
θθ? @
new
θθA D
{
θθE F
id
θθG I
}
θθJ K
)
θθK L
;
θθL M
}
ιι 	
[
λλ 	
HttpPost
λλ	 
]
λλ 
public
μμ 
async
μμ 
Task
μμ 
<
μμ 
IActionResult
μμ '
>
μμ' (
UpdateOrder
μμ) 4
(
μμ4 5
int
μμ5 8
id
μμ9 ;
,
μμ; <
int
μμ= @
oldIndex
μμA I
,
μμI J
int
μμK N
newIndex
μμO W
)
μμW X
{
νν 	
if
ξξ 
(
ξξ 
!
ξξ 
await
ξξ #
_authorizationService
ξξ ,
.
ξξ, -
AuthorizeAsync
ξξ- ;
(
ξξ; <
User
ξξ< @
,
ξξ@ A
Permissions
ξξB M
.
ξξM N"
ManageDeploymentPlan
ξξN b
)
ξξb c
)
ξξc d
{
οο 
return
ππ 
Forbid
ππ 
(
ππ 
)
ππ 
;
ππ  
}
ρρ 
var
σσ 
deploymentPlan
σσ 
=
σσ  
await
σσ! &
_session
σσ' /
.
σσ/ 0
GetAsync
σσ0 8
<
σσ8 9
DeploymentPlan
σσ9 G
>
σσG H
(
σσH I
id
σσI K
)
σσK L
;
σσL M
if
υυ 
(
υυ 
deploymentPlan
υυ 
==
υυ !
null
υυ" &
)
υυ& '
{
φφ 
return
χχ 
NotFound
χχ 
(
χχ  
)
χχ  !
;
χχ! "
}
ψψ 
var
ϊϊ 
step
ϊϊ 
=
ϊϊ 
deploymentPlan
ϊϊ %
.
ϊϊ% &
DeploymentSteps
ϊϊ& 5
.
ϊϊ5 6 
ElementAtOrDefault
ϊϊ6 H
(
ϊϊH I
oldIndex
ϊϊI Q
)
ϊϊQ R
;
ϊϊR S
if
όό 
(
όό 
step
όό 
==
όό 
null
όό 
)
όό 
{
ύύ 
return
ώώ 
NotFound
ώώ 
(
ώώ  
)
ώώ  !
;
ώώ! "
}
ÿÿ 
deploymentPlan
 
.
 
DeploymentSteps
 *
.
* +
RemoveAt
+ 3
(
3 4
oldIndex
4 <
)
< =
;
= >
deploymentPlan
ƒƒ 
.
ƒƒ 
DeploymentSteps
ƒƒ *
.
ƒƒ* +
Insert
ƒƒ+ 1
(
ƒƒ1 2
newIndex
ƒƒ2 :
,
ƒƒ: ;
step
ƒƒ< @
)
ƒƒ@ A
;
ƒƒA B
_session
…… 
.
…… 
Save
…… 
(
…… 
deploymentPlan
…… (
)
……( )
;
……) *
return
‡‡ 
Ok
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
 	
}
‰‰ 
} ϊM
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\DeploymentPlanService.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class !
DeploymentPlanService &
:' ("
IDeploymentPlanService) ?
{ 
private 
readonly 
YesSql 
.  
ISession  (
_session) 1
;1 2
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 

Dictionary 
< 
string !
,! "
DeploymentPlan# 1
>1 2
_deploymentPlans3 C
;C D
public !
DeploymentPlanService $
($ %
YesSql 
. 
ISession 
session #
,# $ 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	
_session 
= 
session 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
private 
async 
Task 
< 

Dictionary %
<% &
string& ,
,, -
DeploymentPlan. <
>< =
>= >
GetDeploymentPlans? Q
(Q R
)R S
{ 	
if   
(   
_deploymentPlans    
==  ! #
null  $ (
)  ( )
{!! 
var"" 
deploymentPlanQuery"" '
=""( )
_session""* 2
.""2 3
Query""3 8
<""8 9
DeploymentPlan""9 G
,""G H
DeploymentPlanIndex""I \
>""\ ]
(""] ^
)""^ _
;""_ `
var## 
deploymentPlans## #
=##$ %
await##& +
deploymentPlanQuery##, ?
.##? @
	ListAsync##@ I
(##I J
)##J K
;##K L
_deploymentPlans$$  
=$$! "
deploymentPlans$$# 2
.$$2 3
ToDictionary$$3 ?
($$? @
x$$@ A
=>$$B D
x$$E F
.$$F G
Name$$G K
)$$K L
;$$L M
}%% 
return'' 
_deploymentPlans'' #
;''# $
}(( 	
public** 
async** 
Task** 
<** 
bool** 
>** (
DoesUserHavePermissionsAsync**  <
(**< =
)**= >
{++ 	
var,, 
user,, 
=,,  
_httpContextAccessor,, +
.,,+ ,
HttpContext,,, 7
.,,7 8
User,,8 <
;,,< =
var.. 
result.. 
=.. 
await.. !
_authorizationService.. 4
...4 5
AuthorizeAsync..5 C
(..C D
user..D H
,..H I
Permissions..J U
...U V 
ManageDeploymentPlan..V j
)..j k
&&..l n
await// !
_authorizationService// 4
.//4 5
AuthorizeAsync//5 C
(//C D
user//D H
,//H I
Permissions//J U
.//U V
Export//V \
)//\ ]
;//] ^
return11 
result11 
;11 
}22 	
public44 
async44 
Task44 
<44 
bool44 
>44 -
!DoesUserHaveExportPermissionAsync44  A
(44A B
)44B C
{55 	
var66 
user66 
=66  
_httpContextAccessor66 +
.66+ ,
HttpContext66, 7
.667 8
User668 <
;66< =
var88 
result88 
=88 
await88 !
_authorizationService88 4
.884 5
AuthorizeAsync885 C
(88C D
user88D H
,88H I
Permissions88J U
.88U V
Export88V \
)88\ ]
;88] ^
return:: 
result:: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
IEnumerable== %
<==% &
string==& ,
>==, -
>==- .*
GetAllDeploymentPlanNamesAsync==/ M
(==M N
)==N O
{>> 	
var?? 
deploymentPlans?? 
=??  !
await??" '
GetDeploymentPlans??( :
(??: ;
)??; <
;??< =
returnAA 
deploymentPlansAA "
.AA" #
KeysAA# '
;AA' (
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
IEnumerableDD %
<DD% &
DeploymentPlanDD& 4
>DD4 5
>DD5 6&
GetAllDeploymentPlansAsyncDD7 Q
(DDQ R
)DDR S
{EE 	
varFF 
deploymentPlansFF 
=FF  !
awaitFF" '
GetDeploymentPlansFF( :
(FF: ;
)FF; <
;FF< =
returnHH 
deploymentPlansHH "
.HH" #
ValuesHH# )
;HH) *
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
IEnumerableKK %
<KK% &
DeploymentPlanKK& 4
>KK4 5
>KK5 6#
GetDeploymentPlansAsyncKK7 N
(KKN O
paramsKKO U
stringKKV \
[KK\ ]
]KK] ^
deploymentPlanNamesKK_ r
)KKr s
{LL 	
varMM 
deploymentPlansMM 
=MM  !
awaitMM" '
GetDeploymentPlansMM( :
(MM: ;
)MM; <
;MM< =
returnOO 
GetDeploymentPlansOO %
(OO% &
deploymentPlansOO& 5
,OO5 6
deploymentPlanNamesOO7 J
)OOJ K
;OOK L
}PP 	
privateRR 
staticRR 
IEnumerableRR "
<RR" #
DeploymentPlanRR# 1
>RR1 2
GetDeploymentPlansRR3 E
(RRE F
IDictionaryRRF Q
<RRQ R
stringRRR X
,RRX Y
DeploymentPlanRRZ h
>RRh i
deploymentPlansRRj y
,RRy z
params	RR{ 
string
RR‚ 
[
RR ‰
]
RR‰ !
deploymentPlanNames
RR‹ 
)
RR 
{SS 	
foreachTT 
(TT 
varTT 
deploymentPlanNameTT +
inTT, .
deploymentPlanNamesTT/ B
)TTB C
{UU 
ifVV 
(VV 
deploymentPlansVV #
.VV# $
TryGetValueVV$ /
(VV/ 0
deploymentPlanNameVV0 B
,VVB C
outVVD G
varVVH K
deploymentPlanVVL Z
)VVZ [
)VV[ \
{WW 
yieldXX 
returnXX  
deploymentPlanXX! /
;XX/ 0
}YY 
}ZZ 
}[[ 	
public]] 
async]] 
Task]] .
"CreateOrUpdateDeploymentPlansAsync]] <
(]]< =
IEnumerable]]= H
<]]H I
DeploymentPlan]]I W
>]]W X
deploymentPlans]]Y h
)]]h i
{^^ 	
var__ 
names__ 
=__ 
deploymentPlans__ '
.__' (
Select__( .
(__. /
x__/ 0
=>__1 3
x__4 5
.__5 6
Name__6 :
)__: ;
;__; <
varaa #
existingDeploymentPlansaa '
=aa( )
(aa* +
awaitaa+ 0
_sessionaa1 9
.aa9 :
Queryaa: ?
<aa? @
DeploymentPlanaa@ N
,aaN O
DeploymentPlanIndexaaP c
>aac d
(aad e
xaae f
=>aag i
xaaj k
.aak l
Nameaal p
.aap q
IsInaaq u
(aau v
namesaav {
)aa{ |
)aa| }
.bb 
	ListAsyncbb 
(bb 
)bb 
)bb 
.cc 
ToDictionarycc 
(cc 
xcc 
=>cc  "
xcc# $
.cc$ %
Namecc% )
,cc) *
StringComparercc+ 9
.cc9 :
OrdinalIgnoreCasecc: K
)ccK L
;ccL M
foreachee 
(ee 
varee 
deploymentPlanee '
inee( *
deploymentPlansee+ :
)ee: ;
{ff 
ifgg 
(gg #
existingDeploymentPlansgg +
.gg+ ,
TryGetValuegg, 7
(gg7 8
deploymentPlangg8 F
.ggF G
NameggG K
,ggK L
outggM P
varggQ T"
existingDeploymentPlanggU k
)ggk l
)ggl m
{hh "
existingDeploymentPlanii *
.ii* +
Nameii+ /
=ii0 1
deploymentPlanii2 @
.ii@ A
NameiiA E
;iiE F"
existingDeploymentPlanjj *
.jj* +
DeploymentStepsjj+ :
.jj: ;
Clearjj; @
(jj@ A
)jjA B
;jjB C"
existingDeploymentPlankk *
.kk* +
DeploymentStepskk+ :
.kk: ;
AddRangekk; C
(kkC D
deploymentPlankkD R
.kkR S
DeploymentStepskkS b
)kkb c
;kkc d
_sessionmm 
.mm 
Savemm !
(mm! ""
existingDeploymentPlanmm" 8
)mm8 9
;mm9 :
}nn 
elseoo 
{pp 
_sessionqq 
.qq 
Saveqq !
(qq! "
deploymentPlanqq" 0
)qq0 1
;qq1 2
}rr 
}ss 
}tt 	
}uu 
}vv Ò+
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Deployment\DeploymentPlanDeploymentSource.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

Deployment! +
{ 
public 

class *
DeploymentPlanDeploymentSource /
:0 1
IDeploymentSource2 C
{		 
private

 
readonly

 "
IDeploymentPlanService

 /"
_deploymentPlanService

0 F
;

F G
private 
readonly 
IEnumerable $
<$ %"
IDeploymentStepFactory% ;
>; <$
_deploymentStepFactories= U
;U V
public *
DeploymentPlanDeploymentSource -
(- ."
IDeploymentPlanService "!
deploymentPlanService# 8
,8 9
IEnumerable 
< "
IDeploymentStepFactory .
>. /#
deploymentStepFactories0 G
)G H
{ 	"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;$
_deploymentStepFactories $
=% &#
deploymentStepFactories' >
;> ?
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
deploymentStepD R
,R S 
DeploymentPlanResultT h
resulti o
)o p
{ 	
if 
( 
! 
( 
deploymentStep  
is! #(
DeploymentPlanDeploymentStep$ @
deploymentPlanStepA S
)S T
)T U
{ 
return 
; 
} 
if 
( 
! 
await "
_deploymentPlanService -
.- .(
DoesUserHavePermissionsAsync. J
(J K
)K L
)L M
{ 
return 
; 
} 
var!! #
deploymentStepFactories!! '
=!!( )$
_deploymentStepFactories!!* B
.!!B C
ToDictionary!!C O
(!!O P
f!!P Q
=>!!R T
f!!U V
.!!V W
Name!!W [
)!![ \
;!!\ ]
var## 
deploymentPlans## 
=##  !
deploymentPlanStep##" 4
.##4 5

IncludeAll##5 ?
?$$ 
($$ 
await$$ "
_deploymentPlanService$$ /
.$$/ 0&
GetAllDeploymentPlansAsync$$0 J
($$J K
)$$K L
)$$L M
.$$M N
ToArray$$N U
($$U V
)$$V W
:%% 
(%% 
await%% "
_deploymentPlanService%% /
.%%/ 0#
GetDeploymentPlansAsync%%0 G
(%%G H
deploymentPlanStep%%H Z
.%%Z [
DeploymentPlanNames%%[ n
)%%n o
)%%o p
.%%p q
ToArray%%q x
(%%x y
)%%y z
;%%z {
var'' 
plans'' 
='' 
('' 
from'' 
plan'' "
in''# %
deploymentPlans''& 5
select(( 
new((  #
{)) 
plan** !
.**! "
Name**" &
,**& '
Steps++ "
=++# $
(++% &
from++& *
step+++ /
in++0 2
plan++3 7
.++7 8
DeploymentSteps++8 G
select,,& ,
new,,- 0
{--& '
Type..* .
=../ 0
GetStepType..1 <
(..< =#
deploymentStepFactories..= T
,..T U
step..V Z
)..Z [
,..[ \
Step//* .
=/// 0
step//1 5
}00& '
)00' (
.00( )
ToArray00) 0
(000 1
)001 2
}11 
)11 
.11 
ToArray11 #
(11# $
)11$ %
;11% &
result44 
.44 
Steps44 
.44 
Add44 
(44 
new44  
JObject44! (
(44( )
new55 
	JProperty55 
(55 
$str55 $
,55$ %
$str55& 2
)552 3
,553 4
new66 
	JProperty66 
(66 
$str66 %
,66% &
JArray66' -
.66- .

FromObject66. 8
(668 9
plans669 >
)66> ?
)66? @
)77 
)77 
;77 
}88 	
private>> 
string>> 
GetStepType>> "
(>>" #
IDictionary>># .
<>>. /
string>>/ 5
,>>5 6"
IDeploymentStepFactory>>7 M
>>>M N#
deploymentStepFactories>>O f
,>>f g
DeploymentStep>>h v
step>>w {
)>>{ |
{?? 	
if@@ 
(@@ #
deploymentStepFactories@@ '
.@@' (
TryGetValue@@( 3
(@@3 4
step@@4 8
.@@8 9
Name@@9 =
,@@= >
out@@? B
var@@C F!
deploymentStepFactory@@G \
)@@\ ]
)@@] ^
{AA 
returnBB !
deploymentStepFactoryBB ,
.BB, -
NameBB- 1
;BB1 2
}CC 
elseDD 
{EE 
returnFF 
stepFF 
.FF 
GetTypeFF #
(FF# $
)FF$ %
.FF% &
NameFF& *
;FF* +
}GG 
}HH 	
}II 
}JJ ΅
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Deployment\DeploymentPlanDeploymentStep.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

Deployment! +
{ 
public 

class (
DeploymentPlanDeploymentStep -
:. /
DeploymentStep0 >
{ 
public (
DeploymentPlanDeploymentStep +
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
 #
;

# $
} 	
public 
bool 

IncludeAll 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
true/ 3
;3 4
public 
string 
[ 
] 
DeploymentPlanNames +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} Ν"
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Deployment\DeploymentPlanDeploymentStepDriver.cs
	namespace		 	
OrchardCore		
 
.		 

Deployment		  
.		  !

Deployment		! +
{

 
public 

class .
"DeploymentPlanDeploymentStepDriver 3
:4 5
DisplayDriver6 C
<C D
DeploymentStepD R
,R S(
DeploymentPlanDeploymentStepT p
>p q
{ 
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
public .
"DeploymentPlanDeploymentStepDriver 1
(1 2"
IDeploymentPlanService2 H!
deploymentPlanServiceI ^
)^ _
{ 	"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
} 	
public 
override 
IDisplayResult &
Display' .
(. /(
DeploymentPlanDeploymentStep/ K
stepL P
)P Q
{ 	
return 
Combine 
( 
View 
( 
$str F
,F G
stepH L
)L M
.M N
LocationN V
(V W
$strW `
,` a
$strb k
)k l
,l m
View 
( 
$str H
,H I
stepJ N
)N O
.O P
LocationP X
(X Y
$strY d
,d e
$strf o
)o p
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,(
DeploymentPlanDeploymentStep, H
stepI M
)M N
{ 	
return 

Initialize 
< 1
%DeploymentPlanDeploymentStepViewModel C
>C D
(D E
$strE o
,o p
asyncq v
modelw |
=>} 
{   
model!! 
.!! 

IncludeAll!!  
=!!! "
step!!# '
.!!' (

IncludeAll!!( 2
;!!2 3
model"" 
."" 
DeploymentPlanNames"" )
=""* +
step"", 0
.""0 1
DeploymentPlanNames""1 D
;""D E
model## 
.## "
AllDeploymentPlanNames## ,
=##- .
(##/ 0
await##0 5"
_deploymentPlanService##6 L
.##L M*
GetAllDeploymentPlanNamesAsync##M k
(##k l
)##l m
)##m n
.##n o
ToArray##o v
(##v w
)##w x
;##x y
}$$ 
)$$ 
.$$ 
Location$$ 
($$ 
$str$$ !
)$$! "
;$$" #
}%% 	
public'' 
override'' 
async'' 
Task'' "
<''" #
IDisplayResult''# 1
>''1 2
UpdateAsync''3 >
(''> ?(
DeploymentPlanDeploymentStep''? [
step''\ `
,''` a
IUpdateModel''b n
updater''o v
)''v w
{(( 	
step)) 
.)) 
DeploymentPlanNames)) $
=))% &
Array))' ,
.)), -
Empty))- 2
<))2 3
string))3 9
>))9 :
()): ;
))); <
;))< =
await++ 
updater++ 
.++ 
TryUpdateModelAsync++ -
(++- .
step++. 2
,++2 3
Prefix,,. 4
,,,4 5
x--. /
=>--0 2
x--3 4
.--4 5
DeploymentPlanNames--5 H
,--H I
x... /
=>..0 2
x..3 4
...4 5

IncludeAll..5 ?
)..? @
;..@ A
if11 
(11 
step11 
.11 

IncludeAll11 
)11  
{22 
step33 
.33 
DeploymentPlanNames33 (
=33) *
Array33+ 0
.330 1
Empty331 6
<336 7
string337 =
>33= >
(33> ?
)33? @
;33@ A
}44 
return66 
Edit66 
(66 
step66 
)66 
;66 
}77 	
}88 
}99 ―
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Indexes\DeploymentPlanIndex.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Indexes! (
{ 
public 

class 
DeploymentPlanIndex $
:% &
MapIndex' /
{ 
public 
int 

DocumentId 
{ 
get  #
;# $
set% (
;( )
}* +
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
 
public 

class '
DeploymentPlanIndexProvider ,
:- .
IndexProvider/ <
<< =
DeploymentPlan= K
>K L
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
DeploymentPlan6 D
>D E
contextF M
)M N
{ 	
context 
. 
For 
< 
DeploymentPlanIndex +
>+ ,
(, -
)- .
. 
Map 
( 
deploymentPlan #
=>$ &
{ 
return 
new 
DeploymentPlanIndex 2
{ 
Name 
= 
deploymentPlan -
.- .
Name. 2
} 
; 
} 
) 
; 
} 	
} 
} ξ
‚D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
,2 3
Category 
= 
$str 
)		 
]		 ™
„D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Migrations.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
public		 
int		 
Create		 
(		 
)		 
{

 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
DeploymentPlanIndex. A
>A B
(B C
tableC H
=>I K
tableL Q
. 
Column 
< 
string 
> 
(  
$str  &
)& '
) 
; 
return 
$num 
; 
} 	
} 
} ΰ
…D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Permissions.cs
	namespace 	
OrchardCore
 
. 

Deployment  
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
ManageDeploymentPlan

* >
=

? @
CommonPermissions

A R
.

R S 
ManageDeploymentPlan

S g
;

g h
public 
static 
readonly 

Permission )
Export* 0
=1 2
CommonPermissions3 D
.D E
ExportE K
;K L
public 
static 
readonly 

Permission )
Import* 0
=1 2
CommonPermissions3 D
.D E
ImportE K
;K L
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) * 
ManageDeploymentPlan+ ?
,? @
ImportA G
,G H
ExportI O
}P Q
.Q R
AsEnumerableR ^
(^ _
)_ `
)` a
;a b
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
Import* 0
,0 1
Export2 8
}9 :
} 
} 
; 
} 	
} 
} α
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Properties\AssemblyInfo.cs
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
$str		 3
)		3 4
]		4 5
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
]7 85
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Recipes\DeploymentPlansRecipeStep.cs
	namespace

 	
OrchardCore


 
.

 

Deployment

  
.

  !
Recipes

! (
{ 
public 

class %
DeploymentPlansRecipeStep *
:+ ,
IRecipeStepHandler- ?
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
public %
DeploymentPlansRecipeStep (
(( )
IServiceProvider 
serviceProvider ,
,, -"
IDeploymentPlanService "!
deploymentPlanService# 8
)8 9
{ 	
_serviceProvider 
= 
serviceProvider .
;. /"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
} 	
public 
Task 
ExecuteAsync  
(  !"
RecipeExecutionContext! 7
context8 ?
)? @
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 9
,9 :
StringComparison; K
.K L
OrdinalIgnoreCaseL ]
)] ^
)^ _
{ 
return   
Task   
.   
CompletedTask   )
;  ) *
}!! 
var## #
deploymentStepFactories## '
=##( )
_serviceProvider##* :
.##: ;
GetServices##; F
<##F G"
IDeploymentStepFactory##G ]
>##] ^
(##^ _
)##_ `
.##` a
ToDictionary##a m
(##m n
f##n o
=>##p r
f##s t
.##t u
Name##u y
)##y z
;##z {
var%% 
model%% 
=%% 
context%% 
.%%  
Step%%  $
.%%$ %
ToObject%%% -
<%%- . 
DeploymentPlansModel%%. B
>%%B C
(%%C D
)%%D E
;%%E F
var'' 
unknownTypes'' 
='' 
new'' "
List''# '
<''' (
string''( .
>''. /
(''/ 0
)''0 1
;''1 2
var(( 
deploymentPlans(( 
=((  !
new((" %
List((& *
<((* +
DeploymentPlan((+ 9
>((9 :
(((: ;
)((; <
;((< =
foreach** 
(** 
var** 
plan** 
in**  
model**! &
.**& '
Plans**' ,
)**, -
{++ 
var,, 
deploymentPlan,, "
=,,# $
new,,% (
DeploymentPlan,,) 7
{-- 
Name.. 
=.. 
plan.. 
...  
Name..  $
}// 
;// 
foreach11 
(11 
var11 
step11 !
in11" $
plan11% )
.11) *
Steps11* /
)11/ 0
{22 
if33 
(33 #
deploymentStepFactories33 /
.33/ 0
TryGetValue330 ;
(33; <
step33< @
.33@ A
Type33A E
,33E F
out33G J
var33K N!
deploymentStepFactory33O d
)33d e
)33e f
{44 
var55 
deploymentStep55 *
=55+ ,
(55- .
DeploymentStep55. <
)55< =
step55= A
.55A B
Step55B F
.55F G
ToObject55G O
(55O P!
deploymentStepFactory55P e
.55e f
Create55f l
(55l m
)55m n
.55n o
GetType55o v
(55v w
)55w x
)55x y
;55y z
deploymentPlan77 &
.77& '
DeploymentSteps77' 6
.776 7
Add777 :
(77: ;
deploymentStep77; I
)77I J
;77J K
}88 
else99 
{:: 
unknownTypes;; $
.;;$ %
Add;;% (
(;;( )
step;;) -
.;;- .
Type;;. 2
);;2 3
;;;3 4
}<< 
}== 
deploymentPlans?? 
.??  
Add??  #
(??# $
deploymentPlan??$ 2
)??2 3
;??3 4
}@@ 
ifBB 
(BB 
unknownTypesBB 
.BB 
CountBB "
!=BB# %
$numBB& '
)BB' (
{CC 
varDD 
prefixDD 
=DD 
$strDD r
;DDr s
varEE 
suffixEE 
=EE 
$strEE z
;EEz {
throwGG 
newGG %
InvalidOperationExceptionGG 3
(GG3 4
$"GG4 6
{GG6 7
prefixGG7 =
}GG= >
{GG? @
StringGG@ F
.GGF G
JoinGGG K
(GGK L
$strGGL P
,GGP Q
unknownTypesGGR ^
)GG^ _
}GG_ `
. GG` b
{GGb c
suffixGGc i
}GGi j
"GGj k
)GGk l
;GGl m
}HH 
returnJJ "
_deploymentPlanServiceJJ )
.JJ) *.
"CreateOrUpdateDeploymentPlansAsyncJJ* L
(JJL M
deploymentPlansJJM \
)JJ\ ]
;JJ] ^
}KK 	
privateMM 
classMM  
DeploymentPlansModelMM *
{NN 	
publicOO 
DeploymentPlanModelOO &
[OO& '
]OO' (
PlansOO) .
{OO/ 0
getOO1 4
;OO4 5
setOO6 9
;OO9 :
}OO; <
}PP 	
privateRR 
classRR 
DeploymentPlanModelRR )
{SS 	
publicTT 
stringTT 
NameTT 
{TT  
getTT! $
;TT$ %
setTT& )
;TT) *
}TT+ ,
publicVV 
DeploymentStepModelVV &
[VV& '
]VV' (
StepsVV) .
{VV/ 0
getVV1 4
;VV4 5
setVV6 9
;VV9 :
}VV; <
}WW 	
privateYY 
classYY 
DeploymentStepModelYY )
{ZZ 	
public[[ 
string[[ 
Type[[ 
{[[  
get[[! $
;[[$ %
set[[& )
;[[) *
}[[+ ,
public]] 
JObject]] 
Step]] 
{]]  !
get]]" %
;]]% &
set]]' *
;]]* +
}]], -
}^^ 	
}__ 
}`` Ν
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Services\FileDownloadDeploymentTargetProvider.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 0
$FileDownloadDeploymentTargetProvider 5
:6 7%
IDeploymentTargetProvider8 Q
{		 
private

 
readonly

 
IStringLocalizer

 )
S

* +
;

+ ,
public 0
$FileDownloadDeploymentTargetProvider 3
(3 4
IStringLocalizer4 D
<D E0
$FileDownloadDeploymentTargetProviderE i
>i j
stringLocalizerk z
)z {
{ 	
S 
= 
stringLocalizer 
;  
} 	
public 
Task 
< 
IEnumerable 
<  
DeploymentTarget  0
>0 1
>1 2%
GetDeploymentTargetsAsync3 L
(L M
)M N
{ 	
return 
Task 
. 

FromResult "
<" #
IEnumerable# .
<. /
DeploymentTarget/ ?
>? @
>@ A
(A B
new 
[ 
] 
{ 
new 
DeploymentTarget (
(( )
name 
: 
S 
[  
$str  /
]/ 0
,0 1
description #
:# $
S% &
[& '
$str' L
]L M
,M N
route 
: 
new " 
RouteValueDictionary# 7
(7 8
new8 ;
{ 
area  
=! "
$str# ;
,; <

controller &
=' (
$str) 5
,5 6
action "
=# $
$str% .
} 
) 
) 
} 
)   
;   
}!! 	
}"" 
}## Φr
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Startup.cs
	namespace 	
OrchardCore
 
. 

Deployment  
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
}   	
public"" 
override"" 
void"" 
ConfigureServices"" .
("". /
IServiceCollection""/ A
services""B J
)""J K
{## 	
services$$ 
.$$ !
AddDeploymentServices$$ *
($$* +
)$$+ ,
;$$, -
services&& 
.&& 
	AddScoped&& 
<&& 
INavigationProvider&& 2
,&&2 3
	AdminMenu&&4 =
>&&= >
(&&> ?
)&&? @
;&&@ A
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
services)) 
.)) 
	AddScoped)) 
<)) 
IDisplayManager)) .
<)). /
DeploymentStep))/ =
>))= >
,))> ?
DisplayManager))@ N
<))N O
DeploymentStep))O ]
>))] ^
>))^ _
())_ `
)))` a
;))a b
services** 
.** 
AddSingleton** !
<**! "%
IDeploymentTargetProvider**" ;
,**; <0
$FileDownloadDeploymentTargetProvider**= a
>**a b
(**b c
)**c d
;**d e
services-- 
.-- 
AddTransient-- !
<--! "
IDeploymentSource--" 3
,--3 4&
CustomFileDeploymentSource--5 O
>--O P
(--P Q
)--Q R
;--R S
services.. 
... 
AddSingleton.. !
<..! ""
IDeploymentStepFactory.." 8
>..8 9
(..9 :
new..: =!
DeploymentStepFactory..> S
<..S T$
CustomFileDeploymentStep..T l
>..l m
(..m n
)..n o
)..o p
;..p q
services// 
.// 
	AddScoped// 
<// 
IDisplayDriver// -
<//- .
DeploymentStep//. <
>//< =
,//= >*
CustomFileDeploymentStepDriver//? ]
>//] ^
(//^ _
)//_ `
;//` a
services22 
.22 
AddSingleton22 !
<22! ""
IDeploymentStepFactory22" 8
>228 9
(229 :
new22: =!
DeploymentStepFactory22> S
<22S T$
RecipeFileDeploymentStep22T l
>22l m
(22m n
)22n o
)22o p
;22p q
services33 
.33 
	AddScoped33 
<33 
IDisplayDriver33 -
<33- .
DeploymentStep33. <
>33< =
,33= >*
RecipeFileDeploymentStepDriver33? ]
>33] ^
(33^ _
)33_ `
;33` a
services55 
.55 
AddSingleton55 !
<55! "
IIndexProvider55" 0
,550 1'
DeploymentPlanIndexProvider552 M
>55M N
(55N O
)55O P
;55P Q
services66 
.66 
AddTransient66 !
<66! "
IDataMigration66" 0
,660 1

Migrations662 <
>66< =
(66= >
)66> ?
;66? @
services88 
.88 
	AddScoped88 
<88 "
IDeploymentPlanService88 5
,885 6!
DeploymentPlanService887 L
>88L M
(88M N
)88N O
;88O P
services:: 
.:: "
AddRecipeExecutionStep:: +
<::+ ,%
DeploymentPlansRecipeStep::, E
>::E F
(::F G
)::G H
;::H I
services<< 
.<< 
AddTransient<< !
<<<! "
IDeploymentSource<<" 3
,<<3 4*
DeploymentPlanDeploymentSource<<5 S
><<S T
(<<T U
)<<U V
;<<V W
services== 
.== 
AddSingleton== !
<==! ""
IDeploymentStepFactory==" 8
>==8 9
(==9 :
new==: =!
DeploymentStepFactory==> S
<==S T(
DeploymentPlanDeploymentStep==T p
>==p q
(==q r
)==r s
)==s t
;==t u
services>> 
.>> 
	AddScoped>> 
<>> 
IDisplayDriver>> -
<>>- .
DeploymentStep>>. <
>>>< =
,>>= >.
"DeploymentPlanDeploymentStepDriver>>? a
>>>a b
(>>b c
)>>c d
;>>d e
}?? 	
publicAA 
overrideAA 
voidAA 
	ConfigureAA &
(AA& '
IApplicationBuilderAA' :
appAA; >
,AA> ?!
IEndpointRouteBuilderAA@ U
routesAAV \
,AA\ ]
IServiceProviderAA^ n
serviceProviderAAo ~
)AA~ 
{BB 	
varCC (
deploymentPlanControllerNameCC ,
=CC- .
typeofCC/ 5
(CC5 6$
DeploymentPlanControllerCC6 N
)CCN O
.CCO P
ControllerNameCCP ^
(CC^ _
)CC_ `
;CC` a
routesEE 
.EE "
MapAreaControllerRouteEE )
(EE) *
nameFF 
:FF 
$strFF +
,FF+ ,
areaNameGG 
:GG 
$strGG 2
,GG2 3
patternHH 
:HH 
_adminOptionsHH &
.HH& '
AdminUrlPrefixHH' 5
+HH6 7
$strHH8 O
,HHO P
defaultsII 
:II 
newII 
{II 

controllerII  *
=II+ ,(
deploymentPlanControllerNameII- I
,III J
actionIIK Q
=IIR S
nameofIIT Z
(IIZ [$
DeploymentPlanControllerII[ s
.IIs t
IndexIIt y
)IIy z
}II{ |
)JJ 
;JJ 
routesKK 
.KK "
MapAreaControllerRouteKK )
(KK) *
nameLL 
:LL 
$strLL ,
,LL, -
areaNameMM 
:MM 
$strMM 2
,MM2 3
patternNN 
:NN 
_adminOptionsNN &
.NN& '
AdminUrlPrefixNN' 5
+NN6 7
$strNN8 P
,NNP Q
defaultsOO 
:OO 
newOO 
{OO 

controllerOO  *
=OO+ ,(
deploymentPlanControllerNameOO- I
,OOI J
actionOOK Q
=OOR S
nameofOOT Z
(OOZ [$
DeploymentPlanControllerOO[ s
.OOs t
CreateOOt z
)OOz {
}OO| }
)PP 
;PP 
routesQQ 
.QQ "
MapAreaControllerRouteQQ )
(QQ) *
nameRR 
:RR 
$strRR ,
,RR, -
areaNameSS 
:SS 
$strSS 2
,SS2 3
patternTT 
:TT 
_adminOptionsTT &
.TT& '
AdminUrlPrefixTT' 5
+TT6 7
$strTT8 U
,TTU V
defaultsUU 
:UU 
newUU 
{UU 

controllerUU  *
=UU+ ,(
deploymentPlanControllerNameUU- I
,UUI J
actionUUK Q
=UUR S
nameofUUT Z
(UUZ [$
DeploymentPlanControllerUU[ s
.UUs t
DeleteUUt z
)UUz {
}UU| }
)VV 
;VV 
routesWW 
.WW "
MapAreaControllerRouteWW )
(WW) *
nameXX 
:XX 
$strXX -
,XX- .
areaNameYY 
:YY 
$strYY 2
,YY2 3
patternZZ 
:ZZ 
_adminOptionsZZ &
.ZZ& '
AdminUrlPrefixZZ' 5
+ZZ6 7
$strZZ8 V
,ZZV W
defaults[[ 
:[[ 
new[[ 
{[[ 

controller[[  *
=[[+ ,(
deploymentPlanControllerName[[- I
,[[I J
action[[K Q
=[[R S
nameof[[T Z
([[Z [$
DeploymentPlanController[[[ s
.[[s t
Display[[t {
)[[{ |
}[[} ~
)\\ 
;\\ 
routes]] 
.]] "
MapAreaControllerRoute]] )
(]]) *
name^^ 
:^^ 
$str^^ *
,^^* +
areaName__ 
:__ 
$str__ 2
,__2 3
pattern`` 
:`` 
_adminOptions`` &
.``& '
AdminUrlPrefix``' 5
+``6 7
$str``8 S
,``S T
defaultsaa 
:aa 
newaa 
{aa 

controlleraa  *
=aa+ ,(
deploymentPlanControllerNameaa- I
,aaI J
actionaaK Q
=aaR S
nameofaaT Z
(aaZ [$
DeploymentPlanControlleraa[ s
.aas t
Editaat x
)aax y
}aaz {
)bb 
;bb 
routesdd 
.dd "
MapAreaControllerRoutedd )
(dd) *
nameee 
:ee 
$stree ,
,ee, -
areaNameff 
:ff 
$strff 2
,ff2 3
patterngg 
:gg 
_adminOptionsgg &
.gg& '
AdminUrlPrefixgg' 5
+gg6 7
$strgg8 V
,ggV W
defaultshh 
:hh 
newhh 
{hh 

controllerhh  *
=hh+ ,
typeofhh- 3
(hh3 4
ImportControllerhh4 D
)hhD E
.hhE F
ControllerNamehhF T
(hhT U
)hhU V
,hhV W
actionhhX ^
=hh_ `
nameofhha g
(hhg h
ImportControllerhhh x
.hhx y
Indexhhy ~
)hh~ 
}
hh€ 
)ii 
;ii 
routeskk 
.kk "
MapAreaControllerRoutekk )
(kk) *
namell 
:ll 
$strll 0
,ll0 1
areaNamemm 
:mm 
$strmm 2
,mm2 3
patternnn 
:nn 
_adminOptionsnn &
.nn& '
AdminUrlPrefixnn' 5
+nn6 7
$strnn8 U
,nnU V
defaultsoo 
:oo 
newoo 
{oo 

controlleroo  *
=oo+ ,
typeofoo- 3
(oo3 4
ImportControlleroo4 D
)ooD E
.ooE F
ControllerNameooF T
(ooT U
)ooU V
,ooV W
actionooX ^
=oo_ `
nameofooa g
(oog h
ImportControllerooh x
.oox y
Jsonooy }
)oo} ~
}	oo €
)pp 
;pp 
routesrr 
.rr "
MapAreaControllerRouterr )
(rr) *
namess 
:ss 
$strss 7
,ss7 8
areaNamett 
:tt 
$strtt 2
,tt2 3
patternuu 
:uu 
_adminOptionsuu &
.uu& '
AdminUrlPrefixuu' 5
+uu6 7
$struu8 \
,uu\ ]
defaultsvv 
:vv 
newvv 
{vv 

controllervv  *
=vv+ ,
typeofvv- 3
(vv3 4 
ExportFileControllervv4 H
)vvH I
.vvI J
ControllerNamevvJ X
(vvX Y
)vvY Z
,vvZ [
actionvv\ b
=vvc d
nameofvve k
(vvk l!
ExportFileController	vvl €
.
vv€ 
Execute
vv 
)
vv ‰
}
vv ‹
)ww 
;ww 
varzz 
stepControllerNamezz "
=zz# $
typeofzz% +
(zz+ ,
StepControllerzz, :
)zz: ;
.zz; <
ControllerNamezz< J
(zzJ K
)zzK L
;zzL M
routes|| 
.|| "
MapAreaControllerRoute|| )
(||) *
name}} 
:}} 
$str}} 0
,}}0 1
areaName~~ 
:~~ 
$str~~ 2
,~~2 3
pattern 
: 
_adminOptions &
.& '
AdminUrlPrefix' 5
+6 7
$str8 Z
,Z [
defaults
€€ 
:
€€ 
new
€€ 
{
€€ 

controller
€€  *
=
€€+ , 
stepControllerName
€€- ?
,
€€? @
action
€€A G
=
€€H I
nameof
€€J P
(
€€P Q
StepController
€€Q _
.
€€_ `
Create
€€` f
)
€€f g
}
€€h i
)
 
;
 
routes
‚‚ 
.
‚‚ $
MapAreaControllerRoute
‚‚ )
(
‚‚) *
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ 0
,
ƒƒ0 1
areaName
„„ 
:
„„ 
$str
„„ 2
,
„„2 3
pattern
…… 
:
…… 
_adminOptions
…… &
.
……& '
AdminUrlPrefix
……' 5
+
……6 7
$str
……8 c
,
……c d
defaults
†† 
:
†† 
new
†† 
{
†† 

controller
††  *
=
††+ , 
stepControllerName
††- ?
,
††? @
action
††A G
=
††H I
nameof
††J P
(
††P Q
StepController
††Q _
.
††_ `
Delete
††` f
)
††f g
}
††h i
)
‡‡ 
;
‡‡ 
routes
 
.
 $
MapAreaControllerRoute
 )
(
) *
name
‰‰ 
:
‰‰ 
$str
‰‰ .
,
‰‰. /
areaName
 
:
 
$str
 2
,
2 3
pattern
‹‹ 
:
‹‹ 
_adminOptions
‹‹ &
.
‹‹& '
AdminUrlPrefix
‹‹' 5
+
‹‹6 7
$str
‹‹8 a
,
‹‹a b
defaults
 
:
 
new
 
{
 

controller
  *
=
+ , 
stepControllerName
- ?
,
? @
action
A G
=
H I
nameof
J P
(
P Q
StepController
Q _
.
_ `
Edit
` d
)
d e
}
f g
)
 
;
 
}
 	
}
 
} ζ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Steps\CustomFileDeploymentSource.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Steps! &
{ 
public 

class &
CustomFileDeploymentSource +
:, -
IDeploymentSource. ?
{ 
public 
Task &
ProcessDeploymentStepAsync .
(. /
DeploymentStep/ =
step> B
,B C 
DeploymentPlanResultD X
resultY _
)_ `
{		 	
var

 

customFile

 
=

 
step

 !
as

" $$
CustomFileDeploymentStep

% =
;

= >
if 
( 

customFile 
== 
null "
)" #
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
return 
result 
. 
FileBuilder %
.% &
SetFileAsync& 2
(2 3

customFile3 =
.= >
FileName> F
,F G
EncodingH P
.P Q
UTF8Q U
.U V
GetBytesV ^
(^ _

customFile_ i
.i j
FileContentj u
)u v
)v w
;w x
} 	
} 
} ―
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Steps\CustomFileDeploymentStep.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Steps! &
{ 
public 

class $
CustomFileDeploymentStep )
:* +
DeploymentStep, :
{		 
public

 $
CustomFileDeploymentStep

 '
(

' (
)

( )
{ 	
Name 
= 
nameof 
( $
CustomFileDeploymentStep 2
)2 3
;3 4
} 	
[ 	
Required	 
] 
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
FileContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¥
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Steps\CustomFileDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Steps! &
{ 
public		 

class		 *
CustomFileDeploymentStepDriver		 /
:		0 1
DisplayDriver		2 ?
<		? @
DeploymentStep		@ N
,		N O$
CustomFileDeploymentStep		P h
>		h i
{

 
public 
override 
IDisplayResult &
Display' .
(. /$
CustomFileDeploymentStep/ G
stepH L
)L M
{ 	
return 
Combine 
( 
View 
( 
$str B
,B C
stepD H
)H I
.I J
LocationJ R
(R S
$strS \
,\ ]
$str^ g
)g h
,h i
View 
( 
$str D
,D E
stepF J
)J K
.K L
LocationL T
(T U
$strU `
,` a
$strb k
)k l
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,$
CustomFileDeploymentStep, D
stepE I
)I J
{ 	
return 

Initialize 
< -
!CustomFileDeploymentStepViewModel ?
>? @
(@ A
$strA g
,g h
modeli n
=>o q
{ 
model 
. 
FileContent !
=" #
step$ (
.( )
FileContent) 4
;4 5
model 
. 
FileName 
=  
step! %
.% &
FileName& .
;. /
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?$
CustomFileDeploymentStep? W
stepX \
,\ ]
IUpdateModel^ j
updaterk r
)r s
{ 	
await 
updater 
. 
TryUpdateModelAsync -
(- .
step. 2
,2 3
Prefix4 :
,: ;
x< =
=>> @
xA B
.B C
FileNameC K
,K L
xM N
=>O Q
xR S
.S T
FileContentT _
)_ `
;` a
return!! 
Edit!! 
(!! 
step!! 
)!! 
;!! 
}"" 	
}## 
}$$ Α
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Steps\RecipeFileDeploymentStep.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Steps! &
{ 
public 

class $
RecipeFileDeploymentStep )
:* +
DeploymentStep, :
{ 
public $
RecipeFileDeploymentStep '
(' (
)( )
{		 	
Name

 
=

 
nameof

 
(

 $
RecipeFileDeploymentStep

 2
)

2 3
;

3 4
} 	
public 
string 

RecipeName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Author 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
WebSite 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsSetupRecipe !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

Categories  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Tags 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ϋ$
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\Steps\RecipeFileDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !
Steps! &
{ 
public		 

class		 *
RecipeFileDeploymentStepDriver		 /
:		0 1
DisplayDriver		2 ?
<		? @
DeploymentStep		@ N
,		N O$
RecipeFileDeploymentStep		P h
>		h i
{

 
public 
override 
IDisplayResult &
Display' .
(. /$
RecipeFileDeploymentStep/ G
stepH L
)L M
{ 	
return 
Combine 
( 
View 
( 
$str B
,B C
stepD H
)H I
.I J
LocationJ R
(R S
$strS \
,\ ]
$str^ g
)g h
,h i
View 
( 
$str D
,D E
stepF J
)J K
.K L
LocationL T
(T U
$strU `
,` a
$strb k
)k l
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,$
RecipeFileDeploymentStep, D
stepE I
)I J
{ 	
return 

Initialize 
< -
!RecipeFileDeploymentStepViewModel ?
>? @
(@ A
$strA g
,g h
modeli n
=>o q
{ 
model 
. 

RecipeName  
=! "
step# '
.' (

RecipeName( 2
;2 3
model 
. 
DisplayName !
=" #
step$ (
.( )
DisplayName) 4
;4 5
model 
. 
Description !
=" #
step$ (
.( )
Description) 4
;4 5
model 
. 
Author 
= 
step #
.# $
Author$ *
;* +
model 
. 
WebSite 
= 
step  $
.$ %
WebSite% ,
;, -
model 
. 
Version 
= 
step  $
.$ %
Version% ,
;, -
model 
. 
IsSetupRecipe #
=$ %
step& *
.* +
IsSetupRecipe+ 8
;8 9
model 
. 

Categories  
=! "
step# '
.' (

Categories( 2
;2 3
model   
.   
Tags   
=   
step   !
.  ! "
Tags  " &
;  & '
}!! 
)!! 
.!! 
Location!! 
(!! 
$str!! !
)!!! "
;!!" #
}"" 	
public$$ 
override$$ 
async$$ 
Task$$ "
<$$" #
IDisplayResult$$# 1
>$$1 2
UpdateAsync$$3 >
($$> ?$
RecipeFileDeploymentStep$$? W
step$$X \
,$$\ ]
IUpdateModel$$^ j
updater$$k r
)$$r s
{%% 	
await&& 
updater&& 
.&& 
TryUpdateModelAsync&& -
(&&- .
step&&. 2
,&&2 3
Prefix&&4 :
,&&: ;
x&&< =
=>&&> @
x&&A B
.&&B C

RecipeName&&C M
,&&M N
x&&O P
=>&&Q S
x&&T U
.&&U V
DisplayName&&V a
,&&a b
x&&c d
=>&&e g
x&&h i
.&&i j
Description&&j u
,&&u v
x&&w x
=>&&y {
x&&| }
.&&} ~
Author	&&~ „
,
&&„ …
x
&&† ‡
=>
&& 
x
&&‹ 
.
&& 
WebSite
&& ”
,
&&” •
x
&&– —
=>
&& 
x
&&› 
.
&& 
Version
&& ¤
,
&&¤ ¥
x
&&¦ §
=>
&&¨ ª
x
&&« ¬
.
&&¬ ­
IsSetupRecipe
&&­ Ί
,
&&Ί »
x
&&Ό ½
=>
&&Ύ ΐ
x
&&Α Β
.
&&Β Γ

Categories
&&Γ Ν
,
&&Ν Ξ
x
&&Ο Π
=>
&&Ρ Σ
x
&&Τ Υ
.
&&Υ Φ
Tags
&&Φ Ϊ
)
&&Ϊ Ϋ
;
&&Ϋ ά
return(( 
Edit(( 
((( 
step(( 
)(( 
;(( 
})) 	
}** 
}++ χ
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\CreateDeploymentPlanViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class )
CreateDeploymentPlanViewModel .
{ 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 ξ
¦D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\CustomFileDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class -
!CustomFileDeploymentStepViewModel 2
{ 
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
FileContent !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ”
ªD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\DeploymentPlanDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class 1
%DeploymentPlanDeploymentStepViewModel 6
{ 
public 
bool 

IncludeAll 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
true/ 3
;3 4
public 
string 
[ 
] 
DeploymentPlanNames +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
[ 
] "
AllDeploymentPlanNames .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
}		 ³
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\DeploymentPlanIndexViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class (
DeploymentPlanIndexViewModel -
{ 
public		 
IList		 
<		 
DeploymentPlanEntry		 (
>		( )
DeploymentPlans		* 9
{		: ;
get		< ?
;		? @
set		A D
;		D E
}		F G
public

 
ContentOptions

 
Options

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
=

4 5
new

6 9
ContentOptions

: H
(

H I
)

I J
;

J K
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
DeploymentPlanEntry $
{ 
public 
DeploymentPlan 
DeploymentPlan ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
ContentOptions 
{ 
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #%
DeploymentPlansBulkAction$ =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
public 

enum 
ContentsBulkAction "
{ 
None 
, 
Delete   
}!! 
}"" ΅
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\DisplayDeploymentPlanViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class *
DisplayDeploymentPlanViewModel /
{ 
public 
DeploymentPlan 
DeploymentPlan ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IEnumerable 
< 
dynamic "
>" #
Items$ )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public		 
IDictionary		 
<		 
string		 !
,		! "
dynamic		# *
>		* +

Thumbnails		, 6
{		7 8
get		9 <
;		< =
set		> A
;		A B
}		C D
}

 
} ”

¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\EditDeploymentPlanStepViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class +
EditDeploymentPlanStepViewModel 0
{ 
public 
int 
DeploymentPlanId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
DeploymentStepId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
string		 
DeploymentStepType		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
dynamic

 
Editor

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
[ 	
	BindNever	 
] 
public 
DeploymentStep 
DeploymentStep ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} †
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\EditDeploymentPlanViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class '
EditDeploymentPlanViewModel ,
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
]		 
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ―
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\ImportJsonViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class 
ImportJsonViewModel $
{ 
public 
string 
Json 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ΄
¦D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Deployment\ViewModels\RecipeFileDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 

Deployment  
.  !

ViewModels! +
{ 
public 

class -
!RecipeFileDeploymentStepViewModel 2
{ 
public 
string 

RecipeName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Author 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
WebSite		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Version

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
bool 
IsSetupRecipe !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

Categories  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Tags 
{ 
get  
;  !
set" %
;% &
}' (
} 
} 