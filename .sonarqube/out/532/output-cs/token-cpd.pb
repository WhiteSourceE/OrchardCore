Œ
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Queries 
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
. 
Add 
( 
S 
[ 
$str "
]" #
,# $
NavigationConstants% 8
.8 9#
AdminMenuSearchPosition9 P
,P Q
searchR X
=>Y [
search\ b
. 
AddClass 
( 
$str &
)& '
.' (
Id( *
(* +
$str+ 3
)3 4
. 
Add 
( 
S 
[ 
$str $
]$ %
,% &
S' (
[( )
$str) 2
]2 3
.3 4
PrefixPosition4 B
(B C
)C D
,D E
contentItemsF R
=>S U
contentItemsV b
. 
Add 
( 
S 
[ 
$str (
]( )
,) *
$str+ .
,. /
queries0 7
=>8 :
queries; B
. 
Action 
(  
$str  '
,' (
$str) 0
,0 1
new2 5
{6 7
area8 <
== >
$str? T
}U V
)V W
. 

Permission #
(# $
Permissions$ /
./ 0
ManageQueries0 =
)= >
. 
LocalNav !
(! "
)" #
)# $
) 
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ ˜√
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Controllers )
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IQueryManager &
_queryManager' 4
;4 5
private 
readonly 
IEnumerable $
<$ %
IQuerySource% 1
>1 2
_querySources3 @
;@ A
private 
readonly 
IDisplayManager (
<( )
Query) .
>. /
_displayManager0 ?
;? @
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
IHtmlLocalizer '
H( )
;) *
private   
readonly   
dynamic    
New  ! $
;  $ %
public"" 
AdminController"" 
("" 
IDisplayManager## 
<## 
Query## !
>##! "
displayManager### 1
,##1 2!
IAuthorizationService$$ ! 
authorizationService$$" 6
,$$6 7
ISiteService%% 
siteService%% $
,%%$ %
IShapeFactory&& 
shapeFactory&& &
,&&& '
IStringLocalizer'' 
<'' 
AdminController'' ,
>'', -
stringLocalizer''. =
,''= >
IHtmlLocalizer(( 
<(( 
AdminController(( *
>((* +
htmlLocalizer((, 9
,((9 :
	INotifier)) 
notifier)) 
,)) 
IQueryManager** 
queryManager** &
,**& '
IEnumerable++ 
<++ 
IQuerySource++ $
>++$ %
querySources++& 2
,++2 3 
IUpdateModelAccessor,,  
updateModelAccessor,,! 4
),,4 5
{-- 	
_displayManager.. 
=.. 
displayManager.. ,
;.., -!
_authorizationService// !
=//" # 
authorizationService//$ 8
;//8 9
_siteService00 
=00 
siteService00 &
;00& '
_queryManager11 
=11 
queryManager11 (
;11( )
_querySources22 
=22 
querySources22 (
;22( ) 
_updateModelAccessor33  
=33! "
updateModelAccessor33# 6
;336 7
New44 
=44 
shapeFactory44 
;44 
	_notifier55 
=55 
notifier55  
;55  !
S66 
=66 
stringLocalizer66 
;66  
H77 
=77 
htmlLocalizer77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
Index::) .
(::. /
ContentOptions::/ =
options::> E
,::E F
PagerParameters::G V
pagerParameters::W f
)::f g
{;; 	
if<< 
(<< 
!<< 
await<< !
_authorizationService<< ,
.<<, -
AuthorizeAsync<<- ;
(<<; <
User<<< @
,<<@ A
Permissions<<B M
.<<M N
ManageQueries<<N [
)<<[ \
)<<\ ]
{== 
return>> 
Forbid>> 
(>> 
)>> 
;>>  
}?? 
varAA 
siteSettingsAA 
=AA 
awaitAA $
_siteServiceAA% 1
.AA1 2 
GetSiteSettingsAsyncAA2 F
(AAF G
)AAG H
;AAH I
varBB 
pagerBB 
=BB 
newBB 
PagerBB !
(BB! "
pagerParametersBB" 1
,BB1 2
siteSettingsBB3 ?
.BB? @
PageSizeBB@ H
)BBH I
;BBI J
varDD 
queriesDD 
=DD 
awaitDD 
_queryManagerDD  -
.DD- .
ListQueriesAsyncDD. >
(DD> ?
)DD? @
;DD@ A
queriesEE 
=EE 
queriesEE 
.EE 
OrderByEE %
(EE% &
xEE& '
=>EE( *
xEE+ ,
.EE, -
NameEE- 1
)EE1 2
;EE2 3
ifGG 
(GG 
!GG 
stringGG 
.GG 
IsNullOrWhiteSpaceGG *
(GG* +
optionsGG+ 2
.GG2 3
SearchGG3 9
)GG9 :
)GG: ;
{HH 
queriesII 
=II 
queriesII !
.II! "
WhereII" '
(II' (
qII( )
=>II* ,
qII- .
.II. /
NameII/ 3
.II3 4
IndexOfII4 ;
(II; <
optionsII< C
.IIC D
SearchIID J
,IIJ K
StringComparisonIIL \
.II\ ]
OrdinalIgnoreCaseII] n
)IIn o
>=IIp r
$numIIs t
)IIt u
;IIu v
}JJ 
varLL 
resultsLL 
=LL 
queriesLL !
.MM 
SkipMM 
(MM 
pagerMM 
.MM 
GetStartIndexMM )
(MM) *
)MM* +
)MM+ ,
.NN 
TakeNN 
(NN 
pagerNN 
.NN 
PageSizeNN $
)NN$ %
.OO 
ToListOO 
(OO 
)OO 
;OO 
varRR 
	routeDataRR 
=RR 
newRR 
	RouteDataRR  )
(RR) *
)RR* +
;RR+ ,
	routeDataSS 
.SS 
ValuesSS 
.SS 
AddSS  
(SS  !
$strSS! 1
,SS1 2
optionsSS3 :
.SS: ;
SearchSS; A
)SSA B
;SSB C
varUU 

pagerShapeUU 
=UU 
(UU 
awaitUU #
NewUU$ '
.UU' (
PagerUU( -
(UU- .
pagerUU. 3
)UU3 4
)UU4 5
.UU5 6
TotalItemCountUU6 D
(UUD E
queriesUUE L
.UUL M
CountUUM R
(UUR S
)UUS T
)UUT U
.UUU V
	RouteDataUUV _
(UU_ `
	routeDataUU` i
)UUi j
;UUj k
varWW 
modelWW 
=WW 
newWW !
QueriesIndexViewModelWW 1
{XX 
QueriesYY 
=YY 
newYY 
ListYY "
<YY" #

QueryEntryYY# -
>YY- .
(YY. /
)YY/ 0
,YY0 1
OptionsZZ 
=ZZ 
optionsZZ !
,ZZ! "
Pager[[ 
=[[ 

pagerShape[[ "
,[[" #
QuerySourceNames\\  
=\\! "
_querySources\\# 0
.\\0 1
Select\\1 7
(\\7 8
x\\8 9
=>\\: <
x\\= >
.\\> ?
Name\\? C
)\\C D
.\\D E
ToList\\E K
(\\K L
)\\L M
}]] 
;]] 
foreach__ 
(__ 
var__ 
query__ 
in__ !
results__" )
)__) *
{`` 
modelaa 
.aa 
Queriesaa 
.aa 
Addaa !
(aa! "
newaa" %

QueryEntryaa& 0
{bb 
Querycc 
=cc 
querycc !
,cc! "
Shapedd 
=dd 
awaitdd !
_displayManagerdd" 1
.dd1 2
BuildDisplayAsyncdd2 C
(ddC D
queryddD I
,ddI J 
_updateModelAccessorddK _
.dd_ `
ModelUpdaterdd` l
,ddl m
$strddn |
)dd| }
}ee 
)ee 
;ee 
}ff 
modelhh 
.hh 
Optionshh 
.hh 
ContentsBulkActionhh ,
=hh- .
newhh/ 2
Listhh3 7
<hh7 8
SelectListItemhh8 F
>hhF G
(hhG H
)hhH I
{hhJ K
newii 
SelectListItemii "
(ii" #
)ii# $
{ii% &
Textii' +
=ii, -
Sii. /
[ii/ 0
$strii0 8
]ii8 9
,ii9 :
Valueii; @
=iiA B
nameofiiC I
(iiI J
ContentsBulkActioniiJ \
.ii\ ]
Removeii] c
)iic d
}iie f
}jj 
;jj 
returnll 
Viewll 
(ll 
modelll 
)ll 
;ll 
}mm 	
[oo 	
HttpPostoo	 
,oo 

ActionNameoo 
(oo 
$stroo %
)oo% &
]oo& '
[pp 	
FormValueRequiredpp	 
(pp 
$strpp *
)pp* +
]pp+ ,
publicqq 
ActionResultqq 
IndexFilterPOSTqq +
(qq+ ,!
QueriesIndexViewModelqq, A
modelqqB G
)qqG H
{rr 	
returnss 
RedirectToActionss #
(ss# $
$strss$ +
,ss+ ,
newss- 0 
RouteValueDictionaryss1 E
{ssF G
{tt 
$strtt "
,tt" #
modeltt$ )
.tt) *
Optionstt* 1
.tt1 2
Searchtt2 8
}tt9 :
}uu 
)uu 
;uu 
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
IActionResultxx '
>xx' (
Createxx) /
(xx/ 0
stringxx0 6
idxx7 9
)xx9 :
{yy 	
ifzz 
(zz 
!zz 
awaitzz !
_authorizationServicezz ,
.zz, -
AuthorizeAsynczz- ;
(zz; <
Userzz< @
,zz@ A
PermissionszzB M
.zzM N
ManageQuerieszzN [
)zz[ \
)zz\ ]
{{{ 
return|| 
Forbid|| 
(|| 
)|| 
;||  
}}} 
var 
query 
= 
_querySources %
.% &
FirstOrDefault& 4
(4 5
x5 6
=>7 9
x: ;
.; <
Name< @
==A C
idD F
)F G
?G H
.H I
CreateI O
(O P
)P Q
;Q R
if
ÅÅ 
(
ÅÅ 
query
ÅÅ 
==
ÅÅ 
null
ÅÅ 
)
ÅÅ 
{
ÇÇ 
return
ÉÉ 
NotFound
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
var
ÜÜ 
model
ÜÜ 
=
ÜÜ 
new
ÜÜ $
QueriesCreateViewModel
ÜÜ 2
{
áá 
Editor
àà 
=
àà 
await
àà 
_displayManager
àà .
.
àà. /
BuildEditorAsync
àà/ ?
(
àà? @
query
àà@ E
,
ààE F
updater
ààG N
:
ààN O"
_updateModelAccessor
ààP d
.
ààd e
ModelUpdater
ààe q
,
ààq r
isNew
ààs x
:
ààx y
true
ààz ~
)
àà~ 
,àà Ä

SourceName
ââ 
=
ââ 
id
ââ 
}
ää 
;
ää 
return
åå 
View
åå 
(
åå 
model
åå 
)
åå 
;
åå 
}
çç 	
[
èè 	
HttpPost
èè	 
,
èè 

ActionName
èè 
(
èè 
nameof
èè $
(
èè$ %
Create
èè% +
)
èè+ ,
)
èè, -
]
èè- .
public
êê 
async
êê 
Task
êê 
<
êê 
IActionResult
êê '
>
êê' (

CreatePost
êê) 3
(
êê3 4$
QueriesCreateViewModel
êê4 J
model
êêK P
)
êêP Q
{
ëë 	
if
íí 
(
íí 
!
íí 
await
íí #
_authorizationService
íí ,
.
íí, -
AuthorizeAsync
íí- ;
(
íí; <
User
íí< @
,
íí@ A
Permissions
ííB M
.
ííM N
ManageQueries
ííN [
)
íí[ \
)
íí\ ]
{
ìì 
return
îî 
Forbid
îî 
(
îî 
)
îî 
;
îî  
}
ïï 
var
óó 
query
óó 
=
óó 
_querySources
óó %
.
óó% &
FirstOrDefault
óó& 4
(
óó4 5
x
óó5 6
=>
óó7 9
x
óó: ;
.
óó; <
Name
óó< @
==
óóA C
model
óóD I
.
óóI J

SourceName
óóJ T
)
óóT U
?
óóU V
.
óóV W
Create
óóW ]
(
óó] ^
)
óó^ _
;
óó_ `
if
ôô 
(
ôô 
query
ôô 
==
ôô 
null
ôô 
)
ôô 
{
öö 
return
õõ 
NotFound
õõ 
(
õõ  
)
õõ  !
;
õõ! "
}
úú 
var
ûû 
editor
ûû 
=
ûû 
await
ûû 
_displayManager
ûû .
.
ûû. /
UpdateEditorAsync
ûû/ @
(
ûû@ A
query
ûûA F
,
ûûF G
updater
ûûH O
:
ûûO P"
_updateModelAccessor
ûûQ e
.
ûûe f
ModelUpdater
ûûf r
,
ûûr s
isNew
ûût y
:
ûûy z
true
ûû{ 
)ûû Ä
;ûûÄ Å
if
†† 
(
†† 

ModelState
†† 
.
†† 
IsValid
†† "
)
††" #
{
°° 
await
¢¢ 
_queryManager
¢¢ #
.
¢¢# $
SaveQueryAsync
¢¢$ 2
(
¢¢2 3
query
¢¢3 8
.
¢¢8 9
Name
¢¢9 =
,
¢¢= >
query
¢¢? D
)
¢¢D E
;
¢¢E F
	_notifier
§§ 
.
§§ 
Success
§§ !
(
§§! "
H
§§" #
[
§§# $
$str
§§$ A
]
§§A B
)
§§B C
;
§§C D
return
•• 
RedirectToAction
•• '
(
••' (
$str
••( /
)
••/ 0
;
••0 1
}
¶¶ 
model
©© 
.
©© 
Editor
©© 
=
©© 
editor
©© !
;
©©! "
return
´´ 
View
´´ 
(
´´ 
model
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
public
ÆÆ 
async
ÆÆ 
Task
ÆÆ 
<
ÆÆ 
IActionResult
ÆÆ '
>
ÆÆ' (
Edit
ÆÆ) -
(
ÆÆ- .
string
ÆÆ. 4
id
ÆÆ5 7
)
ÆÆ7 8
{
ØØ 	
if
∞∞ 
(
∞∞ 
!
∞∞ 
await
∞∞ #
_authorizationService
∞∞ ,
.
∞∞, -
AuthorizeAsync
∞∞- ;
(
∞∞; <
User
∞∞< @
,
∞∞@ A
Permissions
∞∞B M
.
∞∞M N
ManageQueries
∞∞N [
)
∞∞[ \
)
∞∞\ ]
{
±± 
return
≤≤ 
Forbid
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤  
}
≥≥ 
var
µµ 
query
µµ 
=
µµ 
await
µµ 
_queryManager
µµ +
.
µµ+ ,
GetQueryAsync
µµ, 9
(
µµ9 :
id
µµ: <
)
µµ< =
;
µµ= >
if
∑∑ 
(
∑∑ 
query
∑∑ 
==
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
return
ππ 
NotFound
ππ 
(
ππ  
)
ππ  !
;
ππ! "
}
∫∫ 
var
ºº 
model
ºº 
=
ºº 
new
ºº "
QueriesEditViewModel
ºº 0
{
ΩΩ 

SourceName
ææ 
=
ææ 
query
ææ "
.
ææ" #
Source
ææ# )
,
ææ) *
Name
øø 
=
øø 
query
øø 
.
øø 
Name
øø !
,
øø! "
Schema
¿¿ 
=
¿¿ 
query
¿¿ 
.
¿¿ 
Schema
¿¿ %
,
¿¿% &
Editor
¡¡ 
=
¡¡ 
await
¡¡ 
_displayManager
¡¡ .
.
¡¡. /
BuildEditorAsync
¡¡/ ?
(
¡¡? @
query
¡¡@ E
,
¡¡E F
updater
¡¡G N
:
¡¡N O"
_updateModelAccessor
¡¡P d
.
¡¡d e
ModelUpdater
¡¡e q
,
¡¡q r
isNew
¡¡s x
:
¡¡x y
false
¡¡z 
)¡¡ Ä
}
¬¬ 
;
¬¬ 
return
ƒƒ 
View
ƒƒ 
(
ƒƒ 
model
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 	
[
«« 	
HttpPost
««	 
,
«« 

ActionName
«« 
(
«« 
$str
«« $
)
««$ %
]
««% &
public
»» 
async
»» 
Task
»» 
<
»» 
IActionResult
»» '
>
»»' (
EditPost
»») 1
(
»»1 2"
QueriesEditViewModel
»»2 F
model
»»G L
)
»»L M
{
…… 	
if
   
(
   
!
   
await
   #
_authorizationService
   ,
.
  , -
AuthorizeAsync
  - ;
(
  ; <
User
  < @
,
  @ A
Permissions
  B M
.
  M N
ManageQueries
  N [
)
  [ \
)
  \ ]
{
ÀÀ 
return
ÃÃ 
Forbid
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ  
}
ÕÕ 
var
œœ 
query
œœ 
=
œœ 
(
œœ 
await
œœ 
_queryManager
œœ ,
.
œœ, -
LoadQueryAsync
œœ- ;
(
œœ; <
model
œœ< A
.
œœA B
Name
œœB F
)
œœF G
)
œœG H
;
œœH I
if
—— 
(
—— 
query
—— 
==
—— 
null
—— 
)
—— 
{
““ 
return
”” 
NotFound
”” 
(
””  
)
””  !
;
””! "
}
‘‘ 
var
÷÷ 
editor
÷÷ 
=
÷÷ 
await
÷÷ 
_displayManager
÷÷ .
.
÷÷. /
UpdateEditorAsync
÷÷/ @
(
÷÷@ A
query
÷÷A F
,
÷÷F G
updater
÷÷H O
:
÷÷O P"
_updateModelAccessor
÷÷Q e
.
÷÷e f
ModelUpdater
÷÷f r
,
÷÷r s
isNew
÷÷t y
:
÷÷y z
false÷÷{ Ä
)÷÷Ä Å
;÷÷Å Ç
if
ÿÿ 
(
ÿÿ 

ModelState
ÿÿ 
.
ÿÿ 
IsValid
ÿÿ "
)
ÿÿ" #
{
ŸŸ 
await
⁄⁄ 
_queryManager
⁄⁄ #
.
⁄⁄# $
SaveQueryAsync
⁄⁄$ 2
(
⁄⁄2 3
model
⁄⁄3 8
.
⁄⁄8 9
Name
⁄⁄9 =
,
⁄⁄= >
query
⁄⁄? D
)
⁄⁄D E
;
⁄⁄E F
	_notifier
‹‹ 
.
‹‹ 
Success
‹‹ !
(
‹‹! "
H
‹‹" #
[
‹‹# $
$str
‹‹$ A
]
‹‹A B
)
‹‹B C
;
‹‹C D
return
›› 
RedirectToAction
›› '
(
››' (
$str
››( /
)
››/ 0
;
››0 1
}
ﬁﬁ 
model
‡‡ 
.
‡‡ 
Editor
‡‡ 
=
‡‡ 
editor
‡‡ !
;
‡‡! "
return
„„ 
View
„„ 
(
„„ 
model
„„ 
)
„„ 
;
„„ 
}
‰‰ 	
[
ÊÊ 	
HttpPost
ÊÊ	 
]
ÊÊ 
public
ÁÁ 
async
ÁÁ 
Task
ÁÁ 
<
ÁÁ 
IActionResult
ÁÁ '
>
ÁÁ' (
Delete
ÁÁ) /
(
ÁÁ/ 0
string
ÁÁ0 6
id
ÁÁ7 9
)
ÁÁ9 :
{
ËË 	
if
ÈÈ 
(
ÈÈ 
!
ÈÈ 
await
ÈÈ #
_authorizationService
ÈÈ ,
.
ÈÈ, -
AuthorizeAsync
ÈÈ- ;
(
ÈÈ; <
User
ÈÈ< @
,
ÈÈ@ A
Permissions
ÈÈB M
.
ÈÈM N
ManageQueries
ÈÈN [
)
ÈÈ[ \
)
ÈÈ\ ]
{
ÍÍ 
return
ÎÎ 
Forbid
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ  
}
ÏÏ 
var
ÓÓ 
query
ÓÓ 
=
ÓÓ 
await
ÓÓ 
_queryManager
ÓÓ +
.
ÓÓ+ ,
LoadQueryAsync
ÓÓ, :
(
ÓÓ: ;
id
ÓÓ; =
)
ÓÓ= >
;
ÓÓ> ?
if
 
(
 
query
 
==
 
null
 
)
 
{
ÒÒ 
return
ÚÚ 
NotFound
ÚÚ 
(
ÚÚ  
)
ÚÚ  !
;
ÚÚ! "
}
ÛÛ 
await
ıı 
_queryManager
ıı 
.
ıı  
DeleteQueryAsync
ıı  0
(
ıı0 1
id
ıı1 3
)
ıı3 4
;
ıı4 5
	_notifier
˜˜ 
.
˜˜ 
Success
˜˜ 
(
˜˜ 
H
˜˜ 
[
˜˜  
$str
˜˜  =
]
˜˜= >
)
˜˜> ?
;
˜˜? @
return
˘˘ 
RedirectToAction
˘˘ #
(
˘˘# $
$str
˘˘$ +
)
˘˘+ ,
;
˘˘, -
}
˙˙ 	
[
¸¸ 	
HttpPost
¸¸	 
,
¸¸ 

ActionName
¸¸ 
(
¸¸ 
$str
¸¸ %
)
¸¸% &
]
¸¸& '
[
˝˝ 	
FormValueRequired
˝˝	 
(
˝˝ 
$str
˝˝ .
)
˝˝. /
]
˝˝/ 0
public
˛˛ 
async
˛˛ 
Task
˛˛ 
<
˛˛ 
ActionResult
˛˛ &
>
˛˛& '
	IndexPost
˛˛( 1
(
˛˛1 2

ViewModels
˛˛2 <
.
˛˛< =
ContentOptions
˛˛= K
options
˛˛L S
,
˛˛S T
IEnumerable
˛˛U `
<
˛˛` a
string
˛˛a g
>
˛˛g h
itemIds
˛˛i p
)
˛˛p q
{
ˇˇ 	
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
await
ÄÄ #
_authorizationService
ÄÄ ,
.
ÄÄ, -
AuthorizeAsync
ÄÄ- ;
(
ÄÄ; <
User
ÄÄ< @
,
ÄÄ@ A
Permissions
ÄÄB M
.
ÄÄM N
ManageQueries
ÄÄN [
)
ÄÄ[ \
)
ÄÄ\ ]
{
ÅÅ 
return
ÇÇ 
Forbid
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ  
}
ÉÉ 
if
ÖÖ 
(
ÖÖ 
itemIds
ÖÖ 
?
ÖÖ 
.
ÖÖ 
Count
ÖÖ 
(
ÖÖ 
)
ÖÖ  
>
ÖÖ! "
$num
ÖÖ# $
)
ÖÖ$ %
{
ÜÜ 
var
áá 
queriesList
áá 
=
áá  !
await
áá" '
_queryManager
áá( 5
.
áá5 6
ListQueriesAsync
áá6 F
(
ááF G
)
ááG H
;
ááH I
var
àà !
checkedContentItems
àà '
=
àà( )
queriesList
àà* 5
.
àà5 6
Where
àà6 ;
(
àà; <
x
àà< =
=>
àà> @
itemIds
ààA H
.
ààH I
Contains
ààI Q
(
ààQ R
x
ààR S
.
ààS T
Name
ààT X
)
ààX Y
)
ààY Z
;
ààZ [
switch
ââ 
(
ââ 
options
ââ 
.
ââ  

BulkAction
ââ  *
)
ââ* +
{
ää 
case
ãã  
ContentsBulkAction
ãã +
.
ãã+ ,
None
ãã, 0
:
ãã0 1
break
åå 
;
åå 
case
çç  
ContentsBulkAction
çç +
.
çç+ ,
Remove
çç, 2
:
çç2 3
foreach
éé 
(
éé  !
var
éé! $
item
éé% )
in
éé* ,!
checkedContentItems
éé- @
)
éé@ A
{
èè 
await
êê !
_queryManager
êê" /
.
êê/ 0
DeleteQueryAsync
êê0 @
(
êê@ A
item
êêA E
.
êêE F
Name
êêF J
)
êêJ K
;
êêK L
}
ëë 
	_notifier
íí !
.
íí! "
Success
íí" )
(
íí) *
H
íí* +
[
íí+ ,
$str
íí, K
]
ííK L
)
ííL M
;
ííM N
break
ìì 
;
ìì 
default
îî 
:
îî 
throw
ïï 
new
ïï !)
ArgumentOutOfRangeException
ïï" =
(
ïï= >
)
ïï> ?
;
ïï? @
}
ññ 
}
óó 
return
ôô 
RedirectToAction
ôô #
(
ôô# $
$str
ôô$ +
)
ôô+ ,
;
ôô, -
}
öö 	
}
õõ 
}úú ¨
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Controllers\ApiController.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Controllers )
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
$str' ,
), -
,- ."
IgnoreAntiforgeryToken/ E
,E F
AllowAnonymousG U
]U V
public 

class 
ApiController 
:  

Controller! +
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IQueryManager &
_queryManager' 4
;4 5
public 
ApiController 
( !
IAuthorizationService ! 
authorizationService" 6
,6 7
IQueryManager 
queryManager &
) 
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_queryManager 
= 
queryManager (
;( )
} 	
[ 	
HttpPost	 
, 
HttpGet 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Query) .
(. /
string 
name 
, 
string 

parameters 
) 
{ 	
var   
query   
=   
await   
_queryManager   +
.  + ,
GetQueryAsync  , 9
(  9 :
name  : >
)  > ?
;  ? @
if"" 
("" 
query"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
if'' 
('' 
!'' 
await'' !
_authorizationService'' ,
.'', -
AuthorizeAsync''- ;
(''; <
User''< @
,''@ A
Permissions''B M
.''M N$
CreatePermissionForQuery''N f
(''f g
query''g l
.''l m
Name''m q
)''q r
)''r s
)''s t
{(( 
return++ 
NotFound++ 
(++  
)++  !
;++! "
},, 
var.. 
queryParameters.. 
=..  !

parameters.." ,
!=..- /
null..0 4
?..5 6
JsonConvert// 
.// 
DeserializeObject// -
<//- .

Dictionary//. 8
<//8 9
string//9 ?
,//? @
object//A G
>//G H
>//H I
(//I J

parameters//J T
)//T U
:00 
new00 

Dictionary00  
<00  !
string00! '
,00' (
object00) /
>00/ 0
(000 1
)001 2
;002 3
var22 
result22 
=22 
await22 
_queryManager22 ,
.22, -
ExecuteQueryAsync22- >
(22> ?
query22? D
,22D E
queryParameters22F U
)22U V
;22V W
return33 
new33 
ObjectResult33 #
(33# $
result33$ *
.33* +
Items33+ 0
)330 1
;331 2
}44 	
}55 
}66 í
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Deployment\AllQueriesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

Deployment (
{ 
public 

class &
AllQueriesDeploymentSource +
:, -
IDeploymentSource. ?
{		 
private

 
readonly

 
IQueryManager

 &
_queryManager

' 4
;

4 5
public &
AllQueriesDeploymentSource )
() *
IQueryManager* 7
queryManager8 D
)D E
{ 	
_queryManager 
= 
queryManager (
;( )
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
allQueriesStep 
=  
step! %
as& ($
AllQueriesDeploymentStep) A
;A B
if 
( 
allQueriesStep 
== !
null" &
)& '
{ 
return 
; 
} 
var 
queries 
= 
await 
_queryManager  -
.- .
ListQueriesAsync. >
(> ?
)? @
;@ A
result 
. 
Steps 
. 
Add 
( 
new  
JObject! (
(( )
new 
	JProperty 
( 
$str $
,$ %
$str& /
)/ 0
,0 1
new 
	JProperty 
( 
$str '
,' (
queries) 0
.0 1
Select1 7
(7 8
JObject8 ?
.? @

FromObject@ J
)J K
)K L
) 
) 
; 
}   	
}!! 
}"" ˛
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Deployment\AllQueriesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

Deployment (
{ 
public 

class $
AllQueriesDeploymentStep )
:* +
DeploymentStep, :
{		 
public

 $
AllQueriesDeploymentStep
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
= 
$str 
;  
} 	
} 
} Õ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Deployment\AllQueriesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

Deployment (
{ 
public 

class *
AllQueriesDeploymentStepDriver /
:0 1
DisplayDriver2 ?
<? @
DeploymentStep@ N
,N O$
AllQueriesDeploymentStepP h
>h i
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /$
AllQueriesDeploymentStep		/ G
step		H L
)		L M
{

 	
return 
Combine 
( 
View 
( 
$str ;
,; <
step= A
)A B
.B C
LocationC K
(K L
$strL U
,U V
$strW `
)` a
,a b
View 
( 
$str =
,= >
step? C
)C D
.D E
LocationE M
(M N
$strN Y
,Y Z
$str[ d
)d e
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,$
AllQueriesDeploymentStep, D
stepE I
)I J
{ 	
return 
View 
( 
$str 7
,7 8
step9 =
)= >
.> ?
Location? G
(G H
$strH Q
)Q R
;R S
} 	
} 
} √D
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Drivers\QueryDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Queries

 
.

 
Drivers

 %
{ 
public 

class 
QueryDisplayDriver #
:$ %
DisplayDriver& 3
<3 4
Query4 9
>9 :
{ 
private 
readonly 
IQueryManager &
_queryManager' 4
;4 5
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
QueryDisplayDriver !
(! "
IQueryManager" /
queryManager0 <
,< =
IStringLocalizer> N
<N O
QueryDisplayDriverO a
>a b
stringLocalizerc r
)r s
{ 	
_queryManager 
= 
queryManager (
;( )
S 
= 
stringLocalizer 
;  
} 	
public 
override 
IDisplayResult &
Display' .
(. /
Query/ 4
query5 :
,: ;
IUpdateModel< H
updaterI P
)P Q
{ 	
return 
Combine 
( 
Dynamic 
( 
$str 3
,3 4
model5 :
=>; =
{ 
model 
. 
Name 
=  
query! &
.& '
Name' +
;+ ,
model 
. 
Source  
=! "
query# (
.( )
Source) /
;/ 0
model 
. 
Schema  
=! "
query# (
.( )
Schema) /
;/ 0
model 
. 
Query 
=  !
query" '
;' (
}   
)   
.   
Location   
(   
$str   '
)  ' (
,  ( )
Dynamic!! 
(!! 
$str!! 4
,!!4 5
model!!6 ;
=>!!< >
{"" 
model## 
.## 
Name## 
=##  
query##! &
.##& '
Name##' +
;##+ ,
model$$ 
.$$ 
Source$$  
=$$! "
query$$# (
.$$( )
Source$$) /
;$$/ 0
model%% 
.%% 
Schema%%  
=%%! "
query%%# (
.%%( )
Schema%%) /
;%%/ 0
model&& 
.&& 
Query&& 
=&&  !
query&&" '
;&&' (
}'' 
)'' 
.'' 
Location'' 
('' 
$str'' '
)''' (
)(( 
;(( 
})) 	
public++ 
override++ 
IDisplayResult++ &
Edit++' +
(+++ ,
Query++, 1
query++2 7
,++7 8
IUpdateModel++9 E
updater++F M
)++M N
{,, 	
return-- 
Combine-- 
(-- 

Initialize.. 
<.. 
EditQueryViewModel.. -
>..- .
(... /
$str../ B
,..B C
model..D I
=>..J L
{// 
model00 
.00 
Name00 
=00  
query00! &
.00& '
Name00' +
;00+ ,
model11 
.11 
Source11  
=11! "
query11# (
.11( )
Source11) /
;11/ 0
model22 
.22 
Schema22  
=22! "
query22# (
.22( )
Schema22) /
;22/ 0
model33 
.33 
Query33 
=33  !
query33" '
;33' (
}44 
)44 
.44 
Location44 
(44 
$str44 '
)44' (
,44( )

Initialize55 
<55 
EditQueryViewModel55 -
>55- .
(55. /
$str55/ E
,55E F
model55G L
=>55M O
{66 
model77 
.77 
Name77 
=77  
query77! &
.77& '
Name77' +
;77+ ,
model88 
.88 
Source88  
=88! "
query88# (
.88( )
Source88) /
;88/ 0
model99 
.99 
Schema99  
=99! "
query99# (
.99( )
Schema99) /
;99/ 0
model:: 
.:: 
Query:: 
=::  !
query::" '
;::' (
};; 
);; 
.;; 
Location;; 
(;; 
$str;; '
);;' (
)<< 
;<< 
}== 	
public?? 
override?? 
async?? 
Task?? "
<??" #
IDisplayResult??# 1
>??1 2
UpdateAsync??3 >
(??> ?
Query??? D
model??E J
,??J K
IUpdateModel??L X
updater??Y `
)??` a
{@@ 	
awaitAA 
updaterAA 
.AA 
TryUpdateModelAsyncAA -
(AA- .
modelAA. 3
,AA3 4
PrefixAA5 ;
,AA; <
mAA= >
=>AA? A
mAAB C
.AAC D
NameAAD H
,AAH I
mAAJ K
=>AAL N
mAAO P
.AAP Q
SourceAAQ W
,AAW X
mAAY Z
=>AA[ ]
mAA^ _
.AA_ `
SchemaAA` f
)AAf g
;AAg h
ifCC 
(CC 
StringCC 
.CC 
IsNullOrEmptyCC $
(CC$ %
modelCC% *
.CC* +
NameCC+ /
)CC/ 0
)CC0 1
{DD 
updaterEE 
.EE 

ModelStateEE "
.EE" #
AddModelErrorEE# 0
(EE0 1
nameofEE1 7
(EE7 8
modelEE8 =
.EE= >
NameEE> B
)EEB C
,EEC D
SEEE F
[EEF G
$strEEG Y
]EEY Z
)EEZ [
;EE[ \
}FF 
ifGG 
(GG 
!GG 
stringGG 
.GG 
IsNullOrEmptyGG %
(GG% &
modelGG& +
.GG+ ,
SchemaGG, 2
)GG2 3
&&GG4 6
!GG7 8
modelGG8 =
.GG= >
SchemaGG> D
.GGD E
IsJsonGGE K
(GGK L
)GGL M
)GGM N
{HH 
updaterII 
.II 

ModelStateII "
.II" #
AddModelErrorII# 0
(II0 1
nameofII1 7
(II7 8
modelII8 =
.II= >
SchemaII> D
)IID E
,IIE F
SIIG H
[IIH I
$strIII h
]IIh i
)IIi j
;IIj k
}JJ 
varKK 
safeNameKK 
=KK 
modelKK  
.KK  !
NameKK! %
.KK% &

ToSafeNameKK& 0
(KK0 1
)KK1 2
;KK2 3
ifLL 
(LL 
StringLL 
.LL 
IsNullOrEmptyLL $
(LL$ %
safeNameLL% -
)LL- .
||LL/ 1
modelLL2 7
.LL7 8
NameLL8 <
!=LL= ?
safeNameLL@ H
)LLH I
{MM 
updaterNN 
.NN 

ModelStateNN "
.NN" #
AddModelErrorNN# 0
(NN0 1
nameofNN1 7
(NN7 8
modelNN8 =
.NN= >
NameNN> B
)NNB C
,NNC D
SNNE F
[NNF G
$strNNG i
]NNi j
)NNj k
;NNk l
}OO 
elsePP 
{QQ 
varRR 
existingRR 
=RR 
awaitRR $
_queryManagerRR% 2
.RR2 3
LoadQueryAsyncRR3 A
(RRA B
safeNameRRB J
)RRJ K
;RRK L
ifTT 
(TT 
existingTT 
!=TT 
nullTT  $
&&TT% '
existingTT( 0
!=TT1 3
modelTT4 9
)TT9 :
{UU 
updaterVV 
.VV 

ModelStateVV &
.VV& '
AddModelErrorVV' 4
(VV4 5
nameofVV5 ;
(VV; <
modelVV< A
.VVA B
NameVVB F
)VVF G
,VVG H
SVVI J
[VVJ K
$strVVK v
]VVv w
)VVw x
;VVx y
}WW 
}XX 
returnZZ 
EditZZ 
(ZZ 
modelZZ 
,ZZ 
updaterZZ &
)ZZ& '
;ZZ' (
}[[ 	
}\\ 
}]] „
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Liquid\QueriesLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Liquid $
{ 
public 

class -
!QueriesLiquidTemplateEventHandler 2
:3 4'
ILiquidTemplateEventHandler5 P
{		 
private

 
readonly

 
IQueryManager

 &
_queryManager

' 4
;

4 5
public -
!QueriesLiquidTemplateEventHandler 0
(0 1
IQueryManager1 >
queryManager? K
)K L
{ 	
_queryManager 
= 
queryManager (
;( )
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
context 
. 
SetValue 
( 
$str &
,& '
new( +"
LiquidPropertyAccessor, B
(B C
asyncC H
nameI M
=>N P

FluidValueQ [
.[ \
Create\ b
(b c
awaitc h
_queryManageri v
.v w
GetQueryAsync	w Ñ
(
Ñ Ö
name
Ö â
)
â ä
)
ä ã
)
ã å
)
å ç
;
ç é
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ˆ
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Liquid\QueryFilter.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Liquid $
{ 
public		 

class		 
QueryFilter		 
:		 
ILiquidFilter		 ,
{

 
private 
readonly 
IQueryManager &
_queryManager' 4
;4 5
public 
QueryFilter 
( 
IQueryManager (
queryManager) 5
)5 6
{ 	
_queryManager 
= 
queryManager (
;( )
} 	
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
var 
query 
= 
input 
. 
ToObjectValue +
(+ ,
), -
as. 0
Query1 6
;6 7
if 
( 
query 
== 
null 
) 
{ 
return 
NilValue 
.  
Instance  (
;( )
} 
var 

parameters 
= 
new  

Dictionary! +
<+ ,
string, 2
,2 3
object4 :
>: ;
(; <
)< =
;= >
foreach 
( 
var 
name 
in  
	arguments! *
.* +
Names+ 0
)0 1
{ 

parameters 
. 
Add 
( 
name #
,# $
	arguments% .
[. /
name/ 3
]3 4
.4 5
ToObjectValue5 B
(B C
)C D
)D E
;E F
}   
var"" 
result"" 
="" 
await"" 
_queryManager"" ,
."", -
ExecuteQueryAsync""- >
(""> ?
query""? D
,""D E

parameters""F P
)""P Q
;""Q R
return## 

FluidValue## 
.## 
Create## $
(##$ %
result##% +
.##+ ,
Items##, 1
)##1 2
;##2 3
}$$ 	
}%% 
}&& ∫
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
) 
] 
[

 
assembly

 	
:

	 

Feature

 
(

 
Id 
= 
$str	 
, 
Name 
=	 

$str 
, 
Description 
= 
$str 3
,3 4
Dependencies 
= 
new 
[ 
] 
{ 
$str /
}0 1
,1 2
Category 
= 
$str #
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 "
," #
Name 
=	 

$str 
, 
Description 
= 
$str J
,J K
Dependencies 
= 
new 
[ 
] 
{ 
$str 0
}1 2
,2 3
Category 
= 
$str #
) 
] ±#
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Permissions.cs
	namespace 	
OrchardCore
 
. 
Queries 
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
 )
ManageQueries

* 7
=

8 9
new

: =

Permission

> H
(

H I
$str

I X
,

X Y
$str

Z j
)

j k
;

k l
public 
static 
readonly 

Permission )
ExecuteApiAll* 7
=8 9
new: =

Permission> H
(H I
$strI X
,X Y
$strZ u
,u v
neww z
[z {
]{ |
{} ~
ManageQueries	 å
}
ç é
)
é è
;
è ê
private 
static 
readonly 

Permission  *

ExecuteApi+ 5
=6 7
new8 ;

Permission< F
(F G
$strG W
,W X
$strY l
,l m
newn q
[q r
]r s
{t u
ManageQueries	v É
,
É Ñ
ExecuteApiAll
Ö í
}
ì î
)
î ï
;
ï ñ
private 
readonly 
IQueryManager &
_queryManager' 4
;4 5
public 
Permissions 
( 
IQueryManager (
queryManager) 5
)5 6
{ 	
_queryManager 
= 
queryManager (
;( )
} 	
public 
async 
Task 
< 
IEnumerable %
<% &

Permission& 0
>0 1
>1 2
GetPermissionsAsync3 F
(F G
)G H
{ 	
var 
list 
= 
new 
List 
<  

Permission  *
>* +
{, -
ManageQueries. ;
,; <
ExecuteApiAll= J
}K L
;L M
foreach 
( 
var 
query 
in !
await" '
_queryManager( 5
.5 6
ListQueriesAsync6 F
(F G
)G H
)H I
{ 
list 
. 
Add 
( $
CreatePermissionForQuery 1
(1 2
query2 7
.7 8
Name8 <
)< =
)= >
;> ?
} 
return 
list 
; 
}   	
public"" 
IEnumerable"" 
<""  
PermissionStereotype"" /
>""/ 0!
GetDefaultStereotypes""1 F
(""F G
)""G H
{## 	
return$$ 
new$$ 
[$$ 
]$$ 
{$$ 
new%%  
PermissionStereotype%% (
{%%) *
Name&& 
=&& 
$str&& *
,&&* +
Permissions'' 
=''  !
new''" %
[''% &
]''& '
{''( )
ManageQueries''* 7
}''8 9
}(( 
,(( 
new))  
PermissionStereotype)) (
{))) *
Name** 
=** 
$str** #
,**# $
Permissions++ 
=++  !
new++" %
[++% &
]++& '
{++( )
ManageQueries++* 7
}++8 9
},, 
}-- 
;-- 
}.. 	
public00 
static00 

Permission00  $
CreatePermissionForQuery00! 9
(009 :
string00: @
name00A E
)00E F
{11 	
return22 
new22 

Permission22 !
(22! "
String33 
.33 
Format33 !
(33! "

ExecuteApi33" ,
.33, -
Name33- 1
,331 2
name333 7
)337 8
,338 9
String44 
.44 
Format44 !
(44! "

ExecuteApi44" ,
.44, -
Description44- 8
,448 9
name44: >
)44> ?
,44? @

ExecuteApi55 
.55 
	ImpliedBy55 (
)66 
;66 
}77 	
}88 
}99 ﬂ
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\QueryGlobalMethodProvider.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

class %
QueryGlobalMethodProvider *
:+ ,!
IGlobalMethodProvider- B
{		 
private

 
readonly

 
GlobalMethod

 %
_executeQuery

& 3
;

3 4
public %
QueryGlobalMethodProvider (
(( )
)) *
{ 	
_executeQuery 
= 
new 
GlobalMethod  ,
{ 
Name 
= 
$str %
,% &
Method 
= 
serviceProvider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
object: @
,@ A
objectB H
>H I
)I J
(J K
(K L
nameL P
,P Q

parametersR \
)\ ]
=>^ `
{ 
var 
queryManager $
=% &
serviceProvider' 6
.6 7
GetRequiredService7 I
<I J
IQueryManagerJ W
>W X
(X Y
)Y Z
;Z [
var 
query 
= 
queryManager  ,
., -
GetQueryAsync- :
(: ;
name; ?
)? @
.@ A

GetAwaiterA K
(K L
)L M
.M N
	GetResultN W
(W X
)X Y
;Y Z
if 
( 
query 
==  
null! %
)% &
{ 
return 
null #
;# $
} 
var 
result 
=  
queryManager! -
.- .
ExecuteQueryAsync. ?
(? @
query@ E
,E F
(G H
IDictionaryH S
<S T
stringT Z
,Z [
object\ b
>b c
)c d

parametersd n
)n o
.o p

GetAwaiterp z
(z {
){ |
.| }
	GetResult	} Ü
(
Ü á
)
á à
;
à â
return 
result !
.! "
Items" '
;' (
}   
)   
}!! 
;!! 
}"" 	
public$$ 
IEnumerable$$ 
<$$ 
GlobalMethod$$ '
>$$' (

GetMethods$$) 3
($$3 4
)$$4 5
{%% 	
return&& 
new&& 
[&& 
]&& 
{&& 
_executeQuery&& (
}&&) *
;&&* +
}'' 	
}(( 
})) Ì-
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Razor\ContentQueryOrchardRazorHelperExtensions.cs
public 
static 
class 4
(ContentQueryOrchardRazorHelperExtensions <
{		 
public

 

static

 
Task

 
<

 
IEnumerable

 "
<

" #
ContentItem

# .
>

. /
>

/ 0
ContentQueryAsync

1 B
(

B C
this

C G
IOrchardHelper

H V
orchardHelper

W d
,

d e
string

f l
	queryName

m v
)

v w
{ 
return 
ContentQueryAsync  
(  !
orchardHelper! .
,. /
	queryName0 9
,9 :
new; >

Dictionary? I
<I J
stringJ P
,P Q
objectR X
>X Y
(Y Z
)Z [
)[ \
;\ ]
} 
public 

static 
async 
Task 
< 
IEnumerable (
<( )
ContentItem) 4
>4 5
>5 6
ContentQueryAsync7 H
(H I
thisI M
IOrchardHelperN \
orchardHelper] j
,j k
stringl r
	queryNames |
,| }
IDictionary	~ â
<
â ä
string
ä ê
,
ê ë
object
í ò
>
ò ô

parameters
ö §
)
§ •
{ 
var 
results 
= 
await 
orchardHelper )
.) *

QueryAsync* 4
(4 5
	queryName5 >
,> ?

parameters@ J
)J K
;K L
var 
contentItems 
= 
new 
List #
<# $
ContentItem$ /
>/ 0
(0 1
)1 2
;2 3
if 

( 
results 
!= 
null 
) 
{ 	
foreach 
( 
var 
result 
in  "
results# *
)* +
{ 
if 
( 
! 
( 
result 
is 
ContentItem  +
contentItem, 7
)7 8
)8 9
{ 
contentItem 
=  !
null" &
;& '
if 
( 
result 
is !
JObject" )
jObject* 1
)1 2
{ 
contentItem #
=$ %
jObject& -
.- .
ToObject. 6
<6 7
ContentItem7 B
>B C
(C D
)D E
;E F
} 
}   
if$$ 
($$ 
contentItem$$ 
?$$  
.$$  !
ContentItemId$$! .
==$$/ 1
null$$2 6
)$$6 7
{%% 
continue&& 
;&& 
}'' 
contentItems)) 
.)) 
Add))  
())  !
contentItem))! ,
))), -
;))- .
}** 
}++ 	
return-- 
contentItems-- 
;-- 
}.. 
public00 

static00 
async00 
Task00 
<00 
IQueryResults00 *
>00* +$
ContentQueryResultsAsync00, D
(00D E
this00E I
IOrchardHelper00J X
orchardHelper00Y f
,00f g
string00h n
	queryName00o x
,00x y

Dictionary	00z Ñ
<
00Ñ Ö
string
00Ö ã
,
00ã å
object
00ç ì
>
00ì î

parameters
00ï ü
)
00ü †
{11 
var22 
contentItems22 
=22 
new22 
List22 #
<22# $
ContentItem22$ /
>22/ 0
(220 1
)221 2
;222 3
var33 
queryResult33 
=33 
await33 
orchardHelper33  -
.33- .
QueryResultsAsync33. ?
(33? @
	queryName33@ I
,33I J

parameters33K U
)33U V
;33V W
if55 

(55 
queryResult55 
.55 
Items55 
!=55  
null55! %
)55% &
{66 	
foreach77 
(77 
var77 
item77 
in77  
queryResult77! ,
.77, -
Items77- 2
)772 3
{88 
if99 
(99 
!99 
(99 
item99 
is99 
ContentItem99 )
contentItem99* 5
)995 6
)996 7
{:: 
contentItem;; 
=;;  !
null;;" &
;;;& '
if== 
(== 
item== 
is== 
JObject==  '
jObject==( /
)==/ 0
{>> 
contentItem?? #
=??$ %
jObject??& -
.??- .
ToObject??. 6
<??6 7
ContentItem??7 B
>??B C
(??C D
)??D E
;??E F
}@@ 
}AA 
ifEE 
(EE 
contentItemEE 
?EE  
.EE  !
ContentItemIdEE! .
==EE/ 1
nullEE2 6
)EE6 7
{FF 
continueGG 
;GG 
}HH 
contentItemsJJ 
.JJ 
AddJJ  
(JJ  !
contentItemJJ! ,
)JJ, -
;JJ- .
}KK 
queryResultMM 
.MM 
ItemsMM 
=MM 
contentItemsMM  ,
;MM, -
}NN 	
returnPP 
queryResultPP 
;PP 
}QQ 
}RR õ
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Razor\QueryOrchardRazorHelperExtensions.cs
public 
static 
class -
!QueryOrchardRazorHelperExtensions 5
{		 
public

 

static

 
Task

 
<

 
IEnumerable

 "
>

" #

QueryAsync

$ .
(

. /
this

/ 3
IOrchardHelper

4 B
orchardHelper

C P
,

P Q
string

R X
	queryName

Y b
)

b c
{ 
return 

QueryAsync 
( 
orchardHelper '
,' (
	queryName) 2
,2 3
new4 7

Dictionary8 B
<B C
stringC I
,I J
objectK Q
>Q R
(R S
)S T
)T U
;U V
} 
public 

static 
async 
Task 
< 
IEnumerable (
>( )

QueryAsync* 4
(4 5
this5 9
IOrchardHelper: H
orchardHelperI V
,V W
stringX ^
	queryName_ h
,h i
IDictionaryj u
<u v
stringv |
,| }
object	~ Ñ
>
Ñ Ö

parameters
Ü ê
)
ê ë
{ 
var 
queryManager 
= 
orchardHelper (
.( )
HttpContext) 4
.4 5
RequestServices5 D
.D E

GetServiceE O
<O P
IQueryManagerP ]
>] ^
(^ _
)_ `
;` a
var 
query 
= 
await 
queryManager &
.& '
GetQueryAsync' 4
(4 5
	queryName5 >
)> ?
;? @
if 

( 
query 
== 
null 
) 
{ 	
return 
null 
; 
} 	
var 
result 
= 
await 
queryManager '
.' (
ExecuteQueryAsync( 9
(9 :
query: ?
,? @

parametersA K
)K L
;L M
return 
result 
. 
Items 
; 
} 
public 

static 
async 
Task 
< 
IQueryResults *
>* +
QueryResultsAsync, =
(= >
this> B
IOrchardHelperC Q
orchardHelperR _
,_ `
stringa g
	queryNameh q
,q r
IDictionarys ~
<~ 
string	 Ö
,
Ö Ü
object
á ç
>
ç é

parameters
è ô
)
ô ö
{ 
var   
queryManager   
=   
orchardHelper   (
.  ( )
HttpContext  ) 4
.  4 5
RequestServices  5 D
.  D E

GetService  E O
<  O P
IQueryManager  P ]
>  ] ^
(  ^ _
)  _ `
;  ` a
var"" 
query"" 
="" 
await"" 
queryManager"" &
.""& '
GetQueryAsync""' 4
(""4 5
	queryName""5 >
)""> ?
;""? @
if$$ 

($$ 
query$$ 
==$$ 
null$$ 
)$$ 
{%% 	
return&& 
null&& 
;&& 
}'' 	
var)) 
result)) 
=)) 
await)) 
queryManager)) '
.))' (
ExecuteQueryAsync))( 9
())9 :
query)): ?
,))? @

parameters))A K
)))K L
;))L M
return** 
result** 
;** 
}++ 
},, ·"
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Recipes\QueryStep.cs
	namespace

 	
OrchardCore


 
.

 
Queries

 
.

 
Recipes

 %
{ 
public 

class 
	QueryStep 
: 
IRecipeStepHandler /
{ 
private 
readonly 
IQueryManager &
_queryManager' 4
;4 5
private 
readonly 
IEnumerable $
<$ %
IQuerySource% 1
>1 2
_querySources3 @
;@ A
private 
readonly 
ILogger  
_logger! (
;( )
public 
	QueryStep 
( 
IQueryManager 
queryManager &
,& '
IEnumerable 
< 
IQuerySource $
>$ %
querySources& 2
,2 3
ILogger 
< 
	QueryStep 
> 
logger %
)% &
{ 	
_queryManager 
= 
queryManager (
;( )
_querySources 
= 
querySources (
;( )
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{   	
if!! 
(!! 
!!! 
String!! 
.!! 
Equals!! 
(!! 
context!! &
.!!& '
Name!!' +
,!!+ ,
$str!!- 6
,!!6 7
StringComparison!!8 H
.!!H I
OrdinalIgnoreCase!!I Z
)!!Z [
)!![ \
{"" 
return## 
;## 
}$$ 
var&& 
model&& 
=&& 
context&& 
.&&  
Step&&  $
.&&$ %
ToObject&&% -
<&&- .
QueryStepModel&&. <
>&&< =
(&&= >
)&&> ?
;&&? @
foreach(( 
((( 
JObject(( 
token(( "
in((# %
model((& +
.((+ ,
Queries((, 3
)((3 4
{)) 
var** 

sourceName** 
=**  
token**! &
[**& '
nameof**' -
(**- .
Query**. 3
.**3 4
Source**4 :
)**: ;
]**; <
.**< =
ToString**= E
(**E F
)**F G
;**G H
var++ 
sample++ 
=++ 
_querySources++ *
.++* +
FirstOrDefault+++ 9
(++9 :
x++: ;
=>++< >
x++? @
.++@ A
Name++A E
==++F H

sourceName++I S
)++S T
?++T U
.++U V
Create++V \
(++\ ]
)++] ^
;++^ _
if-- 
(-- 
sample-- 
==-- 
null-- "
)--" #
{.. 
_logger// 
.// 
LogError// $
(//$ %
$str	//% Ç
,
//Ç É

sourceName
//Ñ é
,
//é è
token
//ê ï
[
//ï ñ
nameof
//ñ ú
(
//ú ù
Query
//ù ¢
.
//¢ £
Name
//£ ß
)
//ß ®
]
//® ©
.
//© ™
ToString
//™ ≤
(
//≤ ≥
)
//≥ ¥
)
//¥ µ
;
//µ ∂
continue11 
;11 
}22 
var44 
query44 
=44 
token44 !
.44! "
ToObject44" *
(44* +
sample44+ 1
.441 2
GetType442 9
(449 :
)44: ;
)44; <
as44= ?
Query44@ E
;44E F
await55 
_queryManager55 #
.55# $
SaveQueryAsync55$ 2
(552 3
query553 8
.558 9
Name559 =
,55= >
query55? D
)55D E
;55E F
}66 
}77 	
}88 
public:: 

class:: 
QueryStepModel:: 
{;; 
public<< 
JArray<< 
Queries<< 
{<< 
get<<  #
;<<# $
set<<% (
;<<( )
}<<* +
}== 
}>> £
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Services\QueriesDocument.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Services &
{ 
public 

class 
QueriesDocument  
:! "
Document# +
{ 
public		 

Dictionary		 
<		 
string		  
,		  !
Query		" '
>		' (
Queries		) 0
{		1 2
get		3 6
;		6 7
set		8 ;
;		; <
}		= >
=		? @
new		A D

Dictionary		E O
<		O P
string		P V
,		V W
Query		X ]
>		] ^
(		^ _
StringComparer		_ m
.		m n
OrdinalIgnoreCase		n 
)			 Ä
;
		Ä Å
}

 
} é7
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Services\QueryManager.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Services &
{ 
public		 

class		 
QueryManager		 
:		 
IQueryManager		  -
{

 
private 
readonly 
IDocumentManager )
<) *
QueriesDocument* 9
>9 :
_documentManager; K
;K L
private 
IEnumerable 
< 
IQuerySource (
>( )
_querySources* 7
;7 8
public 
QueryManager 
( 
IDocumentManager ,
<, -
QueriesDocument- <
>< =
documentManager> M
,M N
IEnumerableO Z
<Z [
IQuerySource[ g
>g h
querySourcesi u
)u v
{ 	
_documentManager 
= 
documentManager .
;. /
_querySources 
= 
querySources (
;( )
} 	
public 
async 
Task 
< 
string  
>  !
GetIdentifierAsync" 4
(4 5
)5 6
=>7 9
(: ;
await; @
GetDocumentAsyncA Q
(Q R
)R S
)S T
.T U

IdentifierU _
;_ `
public 
async 
Task 
DeleteQueryAsync *
(* +
string+ 1
name2 6
)6 7
{ 	
var 
existing 
= 
await  
LoadDocumentAsync! 2
(2 3
)3 4
;4 5
existing 
. 
Queries 
. 
Remove #
(# $
name$ (
)( )
;) *
await 
_documentManager "
." #
UpdateAsync# .
(. /
existing/ 7
)7 8
;8 9
} 	
public 
async 
Task 
< 
Query 
>  
LoadQueryAsync! /
(/ 0
string0 6
name7 ;
); <
{ 	
var 
document 
= 
await  
LoadDocumentAsync! 2
(2 3
)3 4
;4 5
if!! 
(!! 
document!! 
.!! 
Queries!!  
.!!  !
TryGetValue!!! ,
(!!, -
name!!- 1
,!!1 2
out!!3 6
var!!7 :
query!!; @
)!!@ A
)!!A B
{"" 
return## 
query## 
;## 
}$$ 
return&& 
null&& 
;&& 
}'' 	
public)) 
async)) 
Task)) 
<)) 
Query)) 
>))  
GetQueryAsync))! .
()). /
string))/ 5
name))6 :
))): ;
{** 	
var++ 
document++ 
=++ 
await++  
GetDocumentAsync++! 1
(++1 2
)++2 3
;++3 4
if-- 
(-- 
document-- 
.-- 
Queries--  
.--  !
TryGetValue--! ,
(--, -
name--- 1
,--1 2
out--3 6
var--7 :
query--; @
)--@ A
)--A B
{.. 
return// 
query// 
;// 
}00 
return22 
null22 
;22 
}33 	
public55 
async55 
Task55 
<55 
IEnumerable55 %
<55% &
Query55& +
>55+ ,
>55, -
ListQueriesAsync55. >
(55> ?
)55? @
{66 	
return77 
(77 
await77 
GetDocumentAsync77 *
(77* +
)77+ ,
)77, -
.77- .
Queries77. 5
.775 6
Values776 <
.77< =
ToList77= C
(77C D
)77D E
;77E F
}88 	
public:: 
async:: 
Task:: 
SaveQueryAsync:: (
(::( )
string::) /
name::0 4
,::4 5
Query::6 ;
query::< A
)::A B
{;; 	
var<< 
existing<< 
=<< 
await<<  
LoadDocumentAsync<<! 2
(<<2 3
)<<3 4
;<<4 5
existing== 
.== 
Queries== 
.== 
Remove== #
(==# $
name==$ (
)==( )
;==) *
existing>> 
.>> 
Queries>> 
[>> 
query>> "
.>>" #
Name>># '
]>>' (
=>>) *
query>>+ 0
;>>0 1
await?? 
_documentManager?? "
.??" #
UpdateAsync??# .
(??. /
existing??/ 7
)??7 8
;??8 9
}@@ 	
publicEE 
TaskEE 
<EE 
QueriesDocumentEE #
>EE# $
LoadDocumentAsyncEE% 6
(EE6 7
)EE7 8
=>EE9 ;
_documentManagerEE< L
.EEL M#
GetOrCreateMutableAsyncEEM d
(EEd e
)EEe f
;EEf g
publicJJ 
TaskJJ 
<JJ 
QueriesDocumentJJ #
>JJ# $
GetDocumentAsyncJJ% 5
(JJ5 6
)JJ6 7
=>JJ8 :
_documentManagerJJ; K
.JJK L%
GetOrCreateImmutableAsyncJJL e
(JJe f
)JJf g
;JJg h
publicLL 
TaskLL 
<LL 
IQueryResultsLL !
>LL! "
ExecuteQueryAsyncLL# 4
(LL4 5
QueryLL5 :
queryLL; @
,LL@ A
IDictionaryLLB M
<LLM N
stringLLN T
,LLT U
objectLLV \
>LL\ ]

parametersLL^ h
)LLh i
{MM 	
varNN 
querySourceNN 
=NN 
_querySourcesNN +
.NN+ ,
FirstOrDefaultNN, :
(NN: ;
qNN; <
=>NN= ?
qNN@ A
.NNA B
NameNNB F
==NNG I
queryNNJ O
.NNO P
SourceNNP V
)NNV W
;NNW X
ifPP 
(PP 
querySourcePP 
==PP 
nullPP #
)PP# $
{QQ 
throwRR 
newRR 
ArgumentExceptionRR +
(RR+ ,
$strRR, F
+RRG H
queryRRI N
.RRN O
SourceRRO U
)RRU V
;RRV W
}SS 
returnUU 
querySourceUU 
.UU 
ExecuteQueryAsyncUU 0
(UU0 1
queryUU1 6
,UU6 7

parametersUU8 B
)UUB C
;UUC D
}VV 	
}WW 
}XX —
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
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
$str 
]  
,  !
search" (
=>) +
search, 2
. 
Add 
( 
S 
[ 
$str $
]$ %
,% &
S' (
[( )
$str) 2
]2 3
.3 4
PrefixPosition4 B
(B C
)C D
,D E
queriesF M
=>N P
queriesQ X
. 
Add 
( 
S 
[ 
$str .
]. /
,/ 0
S1 2
[2 3
$str3 B
]B C
.C D
PrefixPositionD R
(R S
)S T
,T U
sqlV Y
=>Z \
sql] `
. 
Action $
($ %
$str% ,
,, -
$str. 5
,5 6
new7 :
{; <
area= A
=B C
$strD Y
}Z [
)[ \
. 

Permission (
(( )
Permissions) 4
.4 5
ManageSqlQueries5 E
)E F
. 
LocalNav &
(& '
)' (
)( )
)) *
)* +
;+ ,
return   
Task   
.   
CompletedTask   %
;  % &
}!! 	
}"" 
}## ëG
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
.! "
Controllers" -
{ 
[ 
Feature 
( 
$str &
)& '
]' (
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IStore 
_store  &
;& '
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
AdminController 
( !
IAuthorizationService ! 
authorizationService" 6
,6 7
IStore 
store 
, "
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9
IStringLocalizer 
< 
AdminController ,
>, -
stringLocalizer. =
)= >
{ 	!
_authorizationService   !
=  " # 
authorizationService  $ 8
;  8 9
_store!! 
=!! 
store!! 
;!! "
_liquidTemplateManager"" "
=""# $!
liquidTemplateManager""% :
;"": ;
S## 
=## 
stringLocalizer## 
;##  
}$$ 	
public&& 
Task&& 
<&& 
IActionResult&& !
>&&! "
Query&&# (
(&&( )
string&&) /
query&&0 5
)&&5 6
{'' 	
query(( 
=(( 
String(( 
.(( 
IsNullOrWhiteSpace(( -
(((- .
query((. 3
)((3 4
?((5 6
$str((7 9
:((: ;
System((< B
.((B C
Text((C G
.((G H
Encoding((H P
.((P Q
UTF8((Q U
.((U V
	GetString((V _
(((_ `
Convert((` g
.((g h
FromBase64String((h x
(((x y
query((y ~
)((~ 
)	(( Ä
;
((Ä Å
return)) 
Query)) 
()) 
new)) 
AdminQueryViewModel)) 0
{** 
DecodedQuery++ 
=++ 
query++ $
,++$ %
FactoryName,, 
=,, 
_store,, $
.,,$ %
Configuration,,% 2
.,,2 3
ConnectionFactory,,3 D
.,,D E
GetType,,E L
(,,L M
),,M N
.,,N O
FullName,,O W
}-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Query11) .
(11. /
AdminQueryViewModel11/ B
model11C H
)11H I
{22 	
if33 
(33 
!33 
await33 !
_authorizationService33 ,
.33, -
AuthorizeAsync33- ;
(33; <
User33< @
,33@ A
Permissions33B M
.33M N
ManageSqlQueries33N ^
)33^ _
)33_ `
{44 
return55 
Forbid55 
(55 
)55 
;55  
}66 
if88 
(88 
String88 
.88 
IsNullOrWhiteSpace88 )
(88) *
model88* /
.88/ 0
DecodedQuery880 <
)88< =
)88= >
{99 
return:: 
View:: 
(:: 
model:: !
)::! "
;::" #
};; 
if== 
(== 
String== 
.== 
IsNullOrEmpty== $
(==$ %
model==% *
.==* +

Parameters==+ 5
)==5 6
)==6 7
{>> 
model?? 
.?? 

Parameters??  
=??! "
$str??# (
;??( )
}@@ 
varBB 
	stopwatchBB 
=BB 
newBB 
	StopwatchBB  )
(BB) *
)BB* +
;BB+ ,
	stopwatchCC 
.CC 
StartCC 
(CC 
)CC 
;CC 
varEE 

connectionEE 
=EE 
_storeEE #
.EE# $
ConfigurationEE$ 1
.EE1 2
ConnectionFactoryEE2 C
.EEC D
CreateConnectionEED T
(EET U
)EEU V
;EEV W
varFF 
dialectFF 
=FF 
_storeFF  
.FF  !
ConfigurationFF! .
.FF. /

SqlDialectFF/ 9
;FF9 :
varHH 

parametersHH 
=HH 
JsonConvertHH (
.HH( )
DeserializeObjectHH) :
<HH: ;

DictionaryHH; E
<HHE F
stringHHF L
,HHL M
objectHHN T
>HHT U
>HHU V
(HHV W
modelHHW \
.HH\ ]

ParametersHH] g
)HHg h
;HHh i
varJJ 
templateContextJJ 
=JJ  !"
_liquidTemplateManagerJJ" 8
.JJ8 9
ContextJJ9 @
;JJ@ A
foreachLL 
(LL 
varLL 
	parameterLL "
inLL# %

parametersLL& 0
)LL0 1
{MM 
templateContextNN 
.NN  
SetValueNN  (
(NN( )
	parameterNN) 2
.NN2 3
KeyNN3 6
,NN6 7
	parameterNN8 A
.NNA B
ValueNNB G
)NNG H
;NNH I
}OO 
varQQ 
tokenizedQueryQQ 
=QQ  
awaitQQ! &"
_liquidTemplateManagerQQ' =
.QQ= >
RenderAsyncQQ> I
(QQI J
modelQQJ O
.QQO P
DecodedQueryQQP \
,QQ\ ]
NullEncoderQQ^ i
.QQi j
DefaultQQj q
)QQq r
;QQr s
modelSS 
.SS 
FactoryNameSS 
=SS 
_storeSS  &
.SS& '
ConfigurationSS' 4
.SS4 5
ConnectionFactorySS5 F
.SSF G
GetTypeSSG N
(SSN O
)SSO P
.SSP Q
FullNameSSQ Y
;SSY Z
ifUU 
(UU 
	SqlParserUU 
.UU 
TryParseUU "
(UU" #
tokenizedQueryUU# 1
,UU1 2
dialectUU3 :
,UU: ;
_storeUU< B
.UUB C
ConfigurationUUC P
.UUP Q
TablePrefixUUQ \
,UU\ ]

parametersUU^ h
,UUh i
outUUj m
varUUn q
rawQueryUUr z
,UUz {
outUU| 
var
UUÄ É
messages
UUÑ å
)
UUå ç
)
UUç é
{VV 
modelWW 
.WW 
RawSqlWW 
=WW 
rawQueryWW '
;WW' (
modelXX 
.XX 

ParametersXX  
=XX! "
JsonConvertXX# .
.XX. /
SerializeObjectXX/ >
(XX> ?

parametersXX? I
,XXI J

FormattingXXK U
.XXU V
IndentedXXV ^
)XX^ _
;XX_ `
tryZZ 
{[[ 
using\\ 
(\\ 

connection\\ %
)\\% &
{]] 
await^^ 

connection^^ (
.^^( )
	OpenAsync^^) 2
(^^2 3
)^^3 4
;^^4 5
model__ 
.__ 
	Documents__ '
=__( )
await__* /

connection__0 :
.__: ;

QueryAsync__; E
(__E F
rawQuery__F N
,__N O

parameters__P Z
)__Z [
;__[ \
}`` 
}aa 
catchbb 
(bb 
	Exceptionbb  
ebb! "
)bb" #
{cc 

ModelStatedd 
.dd 
AddModelErrordd ,
(dd, -
$strdd- /
,dd/ 0
Sdd1 2
[dd2 3
$strdd3 i
,ddi j
eddk l
.ddl m
Messageddm t
]ddt u
)ddu v
;ddv w
}ee 
}ff 
elsegg 
{hh 
foreachii 
(ii 
varii 
messageii $
inii% '
messagesii( 0
)ii0 1
{jj 

ModelStatekk 
.kk 
AddModelErrorkk ,
(kk, -
$strkk- /
,kk/ 0
messagekk1 8
)kk8 9
;kk9 :
}ll 
}mm 
modeloo 
.oo 
Elapsedoo 
=oo 
	stopwatchoo %
.oo% &
Elapsedoo& -
;oo- .
returnqq 
Viewqq 
(qq 
modelqq 
)qq 
;qq 
}rr 	
}ss 
}tt ∞)
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\Drivers\SqlQueryDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Queries		 
.		 
Sql		 !
.		! "
Drivers		" )
{

 
public 

class !
SqlQueryDisplayDriver &
:' (
DisplayDriver) 6
<6 7
Query7 <
,< =
SqlQuery> F
>F G
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public !
SqlQueryDisplayDriver $
($ %
IStringLocalizer% 5
<5 6!
SqlQueryDisplayDriver6 K
>K L
stringLocalizerM \
)\ ]
{ 	
S 
= 
stringLocalizer 
;  
} 	
public 
override 
IDisplayResult &
Display' .
(. /
SqlQuery/ 7
query8 =
,= >
IUpdateModel? K
updaterL S
)S T
{ 	
return 
Combine 
( 
Dynamic 
( 
$str /
,/ 0
model1 6
=>7 9
{ 
model 
. 
Query 
=  !
query" '
;' (
} 
) 
. 
Location 
( 
$str '
)' (
,( )
Dynamic 
( 
$str 7
,7 8
model9 >
=>? A
{ 
model 
. 
Query 
=  !
query" '
;' (
} 
) 
. 
Location 
( 
$str '
)' (
) 
; 
}   	
public"" 
override"" 
IDisplayResult"" &
Edit""' +
(""+ ,
SqlQuery"", 4
query""5 :
,"": ;
IUpdateModel""< H
updater""I P
)""P Q
{## 	
return$$ 

Initialize$$ 
<$$ 
SqlQueryViewModel$$ /
>$$/ 0
($$0 1
$str$$1 @
,$$@ A
model$$B G
=>$$H J
{%% 
model&& 
.&& 
Query&& 
=&& 
query&& #
.&&# $
Template&&$ ,
;&&, -
model'' 
.'' 
ReturnDocuments'' %
=''& '
query''( -
.''- .
ReturnDocuments''. =
;''= >
if** 
(** 
string** 
.** 
IsNullOrEmpty** (
(**( )
query**) .
.**. /
Template**/ 7
)**7 8
)**8 9
{++ 
updater,, 
.,, 
TryUpdateModelAsync,, /
(,,/ 0
model,,0 5
,,,5 6
$str,,7 9
,,,9 :
m,,; <
=>,,= ?
m,,@ A
.,,A B
Query,,B G
),,G H
;,,H I
}-- 
}.. 
).. 
... 
Location.. 
(.. 
$str.. #
)..# $
;..$ %
}// 	
public11 
override11 
async11 
Task11 "
<11" #
IDisplayResult11# 1
>111 2
UpdateAsync113 >
(11> ?
SqlQuery11? G
model11H M
,11M N
IUpdateModel11O [
updater11\ c
)11c d
{22 	
var33 
	viewModel33 
=33 
new33 
SqlQueryViewModel33  1
(331 2
)332 3
;333 4
if44 
(44 
await44 
updater44 
.44 
TryUpdateModelAsync44 1
(441 2
	viewModel442 ;
,44; <
Prefix44= C
,44C D
m44E F
=>44G I
m44J K
.44K L
Query44L Q
,44Q R
m44S T
=>44U W
m44X Y
.44Y Z
ReturnDocuments44Z i
)44i j
)44j k
{55 
model66 
.66 
Template66 
=66  
	viewModel66! *
.66* +
Query66+ 0
;660 1
model77 
.77 
ReturnDocuments77 %
=77& '
	viewModel77( 1
.771 2
ReturnDocuments772 A
;77A B
}88 
if:: 
(:: 
String:: 
.:: 
IsNullOrWhiteSpace:: )
(::) *
model::* /
.::/ 0
Template::0 8
)::8 9
)::9 :
{;; 
updater<< 
.<< 

ModelState<< "
.<<" #
AddModelError<<# 0
(<<0 1
nameof<<1 7
(<<7 8
model<<8 =
.<<= >
Template<<> F
)<<F G
,<<G H
S<<I J
[<<J K
$str<<K h
]<<h i
)<<i j
;<<j k
}== 
return?? 
Edit?? 
(?? 
model?? 
,?? 
updater?? &
)??& '
;??' (
}@@ 	
}AA 
}BB ≤í
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\GraphQL\SqlQueryFieldTypeProvider.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
.! "
GraphQL" )
.) *
Queries* 1
{ 
public 

class %
SqlQueryFieldTypeProvider *
:+ ,
ISchemaBuilder- ;
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
ILogger  
<  !%
SqlQueryFieldTypeProvider! :
>: ;
_logger< C
;C D
public %
SqlQueryFieldTypeProvider (
(( ) 
IHttpContextAccessor) =
httpContextAccessor> Q
,Q R
ILoggerS Z
<Z [%
SqlQueryFieldTypeProvider[ t
>t u
loggerv |
)| }
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_logger 
= 
logger 
; 
} 	
public 
Task 
< 
string 
> 
GetIdentifierAsync .
(. /
)/ 0
{   	
var!! 
queryManager!! 
=!!  
_httpContextAccessor!! 3
.!!3 4
HttpContext!!4 ?
.!!? @
RequestServices!!@ O
.!!O P

GetService!!P Z
<!!Z [
IQueryManager!![ h
>!!h i
(!!i j
)!!j k
;!!k l
return"" 
queryManager"" 
.""  
GetIdentifierAsync""  2
(""2 3
)""3 4
;""4 5
}## 	
public%% 
async%% 
Task%% 

BuildAsync%% $
(%%$ %
ISchema%%% ,
schema%%- 3
)%%3 4
{&& 	
var'' 
queryManager'' 
=''  
_httpContextAccessor'' 3
.''3 4
HttpContext''4 ?
.''? @
RequestServices''@ O
.''O P

GetService''P Z
<''Z [
IQueryManager''[ h
>''h i
(''i j
)''j k
;''k l
var)) 
queries)) 
=)) 
await)) 
queryManager))  ,
.)), -
ListQueriesAsync))- =
())= >
)))> ?
;))? @
foreach++ 
(++ 
var++ 
query++ 
in++ !
queries++" )
.++) *
OfType++* 0
<++0 1
SqlQuery++1 9
>++9 :
(++: ;
)++; <
)++< =
{,, 
if-- 
(-- 
String-- 
.-- 
IsNullOrWhiteSpace-- -
(--- .
query--. 3
.--3 4
Schema--4 :
)--: ;
)--; <
continue.. 
;.. 
var00 
name00 
=00 
query00  
.00  !
Name00! %
;00% &
try22 
{33 
var44 
querySchema44 #
=44$ %
JObject44& -
.44- .
Parse44. 3
(443 4
query444 9
.449 :
Schema44: @
)44@ A
;44A B
if55 
(55 
!55 
querySchema55 $
.55$ %
ContainsKey55% 0
(550 1
$str551 7
)557 8
)558 9
{66 
_logger77 
.77  
LogError77  (
(77( )
$str77) s
,77s t
name77u y
)77y z
;77z {
continue88  
;88  !
}99 
var:: 
type:: 
=:: 
querySchema:: *
[::* +
$str::+ 1
]::1 2
.::2 3
ToString::3 ;
(::; <
)::< =
;::= >
	FieldType;; 
	fieldType;; '
;;;' (
var== 
fieldTypeName== %
===& '
querySchema==( 3
[==3 4
$str==4 C
]==C D
?==D E
.==E F
ToString==F N
(==N O
)==O P
??==Q S
query==T Y
.==Y Z
Name==Z ^
;==^ _
if?? 
(?? 
type?? 
.?? 

StartsWith?? '
(??' (
$str??( 6
,??6 7
StringComparison??8 H
.??H I
OrdinalIgnoreCase??I Z
)??Z [
)??[ \
{@@ 
varAA 
contentTypeAA '
=AA( )
typeAA* .
.AA. /
RemoveAA/ 5
(AA5 6
$numAA6 7
,AA7 8
$numAA9 ;
)AA; <
;AA< =
	fieldTypeBB !
=BB" #%
BuildContentTypeFieldTypeBB$ =
(BB= >
schemaBB> D
,BBD E
contentTypeBBF Q
,BBQ R
queryBBS X
,BBX Y
fieldTypeNameBBZ g
)BBg h
;BBh i
}CC 
elseDD 
{EE 
	fieldTypeFF !
=FF" #%
BuildSchemaBasedFieldTypeFF$ =
(FF= >
queryFF> C
,FFC D
querySchemaFFE P
,FFP Q
fieldTypeNameFFR _
)FF_ `
;FF` a
}GG 
ifII 
(II 
	fieldTypeII !
!=II" $
nullII% )
)II) *
{JJ 
schemaKK 
.KK 
QueryKK $
.KK$ %
AddFieldKK% -
(KK- .
	fieldTypeKK. 7
)KK7 8
;KK8 9
}LL 
}MM 
catchNN 
(NN 
	ExceptionNN  
eNN! "
)NN" #
{OO 
_loggerPP 
.PP 
LogErrorPP $
(PP$ %
ePP% &
,PP& '
$strPP( S
,PPS T
namePPU Y
)PPY Z
;PPZ [
}QQ 
}RR 
}SS 	
privateUU 
	FieldTypeUU %
BuildSchemaBasedFieldTypeUU 3
(UU3 4
SqlQueryUU4 <
queryUU= B
,UUB C
JTokenUUD J
querySchemaUUK V
,UUV W
stringUUX ^
fieldTypeNameUU_ l
)UUl m
{VV 	
varWW 

propertiesWW 
=WW 
querySchemaWW (
[WW( )
$strWW) 5
]WW5 6
;WW6 7
ifXX 
(XX 

propertiesXX 
==XX 
nullXX "
)XX" #
{YY 
returnZZ 
nullZZ 
;ZZ 
}[[ 
var]] 
typetype]] 
=]] 
new]] 
ObjectGraphType]] .
<]]. /
JObject]]/ 6
>]]6 7
{^^ 
Name__ 
=__ 
fieldTypeName__ $
}`` 
;`` 
foreachbb 
(bb 
	JPropertybb 
childbb $
inbb% '

propertiesbb( 2
.bb2 3
Childrenbb3 ;
(bb; <
)bb< =
)bb= >
{cc 
vardd 
namedd 
=dd 
childdd  
.dd  !
Namedd! %
;dd% &
varee 
	nameLoweree 
=ee 
nameee  $
.ee$ %
Replaceee% ,
(ee, -
$charee- 0
,ee0 1
$charee2 5
)ee5 6
;ee6 7
varff 
typeff 
=ff 
childff  
.ff  !
Valueff! &
[ff& '
$strff' -
]ff- .
.ff. /
ToStringff/ 7
(ff7 8
)ff8 9
;ff9 :
vargg 
descriptiongg 
=gg  !
childgg" '
.gg' (
Valuegg( -
[gg- .
$strgg. ;
]gg; <
?gg< =
.gg= >
ToStringgg> F
(ggF G
)ggG H
;ggH I
ifii 
(ii 
typeii 
==ii 
$strii $
)ii$ %
{jj 
varkk 
fieldkk 
=kk 
typetypekk  (
.kk( )
Fieldkk) .
(kk. /
typeofll 
(ll 
StringGraphTypell .
)ll. /
,ll/ 0
	nameLowermm !
,mm! "
descriptionnn #
:nn# $
descriptionnn% 0
,nn0 1
resolveoo 
:oo  
contextoo! (
=>oo) +
{pp 
varqq 
sourceqq  &
=qq' (
contextqq) 0
.qq0 1
Sourceqq1 7
;qq7 8
returnrr "
sourcerr# )
[rr) *
contextrr* 1
.rr1 2
FieldDefinitionrr2 A
.rrA B
MetadatarrB J
[rrJ K
$strrrK Q
]rrQ R
.rrR S
ToStringrrS [
(rr[ \
)rr\ ]
]rr] ^
.rr^ _
ToObjectrr_ g
<rrg h
stringrrh n
>rrn o
(rro p
)rrp q
;rrq r
}ss 
)ss 
;ss 
fieldtt 
.tt 
Metadatatt "
.tt" #
Addtt# &
(tt& '
$strtt' -
,tt- .
namett/ 3
)tt3 4
;tt4 5
}uu 
elsevv 
ifvv 
(vv 
typevv 
==vv  
$strvv! *
)vv* +
{ww 
varxx 
fieldxx 
=xx 
typetypexx  (
.xx( )
Fieldxx) .
(xx. /
typeofyy 
(yy 
IntGraphTypeyy +
)yy+ ,
,yy, -
	nameLowerzz !
,zz! "
description{{ #
:{{# $
description{{% 0
,{{0 1
resolve|| 
:||  
context||! (
=>||) +
{}} 
var~~ 
source~~  &
=~~' (
context~~) 0
.~~0 1
Source~~1 7
;~~7 8
return "
source# )
[) *
context* 1
.1 2
FieldDefinition2 A
.A B
MetadataB J
[J K
$strK Q
]Q R
.R S
ToStringS [
([ \
)\ ]
]] ^
.^ _
ToObject_ g
<g h
inth k
>k l
(l m
)m n
;n o
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
field
ÅÅ 
.
ÅÅ 
Metadata
ÅÅ "
.
ÅÅ" #
Add
ÅÅ# &
(
ÅÅ& '
$str
ÅÅ' -
,
ÅÅ- .
name
ÅÅ/ 3
)
ÅÅ3 4
;
ÅÅ4 5
}
ÇÇ 
}
ÉÉ 
var
ÖÖ 
	fieldType
ÖÖ 
=
ÖÖ 
new
ÖÖ 
	FieldType
ÖÖ  )
{
ÜÜ 
	Arguments
áá 
=
áá 
new
áá 
QueryArguments
áá  .
(
áá. /
new
àà 
QueryArgument
àà %
<
àà% &
StringGraphType
àà& 5
>
àà5 6
{
àà7 8
Name
àà9 =
=
àà> ?
$str
àà@ L
}
ààM N
)
ââ 
,
ââ 
Name
ãã 
=
ãã 
fieldTypeName
ãã $
,
ãã$ %
Description
åå 
=
åå 
$str
åå /
+
åå0 1
query
åå2 7
.
åå7 8
Source
åå8 >
+
åå? @
$str
ååA L
+
ååM N
query
ååO T
.
ååT U
Name
ååU Y
,
ååY Z
ResolvedType
çç 
=
çç 
new
çç "
ListGraphType
çç# 0
(
çç0 1
typetype
çç1 9
)
çç9 :
,
çç: ;
Resolver
éé 
=
éé 
new
éé &
LockedAsyncFieldResolver
éé 7
<
éé7 8
object
éé8 >
,
éé> ?
object
éé@ F
>
ééF G
(
ééG H
async
ééH M
context
ééN U
=>
ééV X
{
èè 
var
êê 
queryManager
êê $
=
êê% &
context
êê' .
.
êê. /$
ResolveServiceProvider
êê/ E
(
êêE F
)
êêF G
.
êêG H

GetService
êêH R
<
êêR S
IQueryManager
êêS `
>
êê` a
(
êêa b
)
êêb c
;
êêc d
var
ëë 
iquery
ëë 
=
ëë  
await
ëë! &
queryManager
ëë' 3
.
ëë3 4
GetQueryAsync
ëë4 A
(
ëëA B
query
ëëB G
.
ëëG H
Name
ëëH L
)
ëëL M
;
ëëM N
var
ìì 

parameters
ìì "
=
ìì# $
context
ìì% ,
.
ìì, -
GetArgument
ìì- 8
<
ìì8 9
string
ìì9 ?
>
ìì? @
(
ìì@ A
$str
ììA M
)
ììM N
;
ììN O
var
ïï 
queryParameters
ïï '
=
ïï( )

parameters
ïï* 4
!=
ïï5 7
null
ïï8 <
?
ïï= >
JsonConvert
ññ #
.
ññ# $
DeserializeObject
ññ$ 5
<
ññ5 6

Dictionary
ññ6 @
<
ññ@ A
string
ññA G
,
ññG H
object
ññI O
>
ññO P
>
ññP Q
(
ññQ R

parameters
ññR \
)
ññ\ ]
:
óó 
new
óó 

Dictionary
óó (
<
óó( )
string
óó) /
,
óó/ 0
object
óó1 7
>
óó7 8
(
óó8 9
)
óó9 :
;
óó: ;
var
ôô 
result
ôô 
=
ôô  
await
ôô! &
queryManager
ôô' 3
.
ôô3 4
ExecuteQueryAsync
ôô4 E
(
ôôE F
iquery
ôôF L
,
ôôL M
queryParameters
ôôN ]
)
ôô] ^
;
ôô^ _
return
öö 
result
öö !
.
öö! "
Items
öö" '
;
öö' (
}
õõ 
)
õõ 
,
õõ 
Type
úú 
=
úú 
typeof
úú 
(
úú 
ListGraphType
úú +
<
úú+ ,
ObjectGraphType
úú, ;
<
úú; <
JObject
úú< C
>
úúC D
>
úúD E
)
úúE F
}
ùù 
;
ùù 
return
üü 
	fieldType
üü 
;
üü 
}
†† 	
private
¢¢ 
	FieldType
¢¢ '
BuildContentTypeFieldType
¢¢ 3
(
¢¢3 4
ISchema
¢¢4 ;
schema
¢¢< B
,
¢¢B C
string
¢¢D J
contentType
¢¢K V
,
¢¢V W
SqlQuery
¢¢X `
query
¢¢a f
,
¢¢f g
string
¢¢h n
fieldTypeName
¢¢o |
)
¢¢| }
{
££ 	
var
§§ 
typetype
§§ 
=
§§ 
schema
§§ !
.
§§! "
Query
§§" '
.
§§' (
Fields
§§( .
.
§§. /
OfType
§§/ 5
<
§§5 6#
ContentItemsFieldType
§§6 K
>
§§K L
(
§§L M
)
§§M N
.
§§N O
FirstOrDefault
§§O ]
(
§§] ^
x
§§^ _
=>
§§` b
x
§§c d
.
§§d e
Name
§§e i
==
§§j l
contentType
§§m x
)
§§x y
;
§§y z
if
•• 
(
•• 
typetype
•• 
==
•• 
null
••  
)
••  !
{
¶¶ 
return
ßß 
null
ßß 
;
ßß 
}
®® 
var
™™ 
	fieldType
™™ 
=
™™ 
new
™™ 
	FieldType
™™  )
{
´´ 
	Arguments
¨¨ 
=
¨¨ 
new
¨¨ 
QueryArguments
¨¨  .
(
¨¨. /
new
≠≠ 
QueryArgument
≠≠ %
<
≠≠% &
StringGraphType
≠≠& 5
>
≠≠5 6
{
≠≠7 8
Name
≠≠9 =
=
≠≠> ?
$str
≠≠@ L
}
≠≠M N
)
ÆÆ 
,
ÆÆ 
Name
∞∞ 
=
∞∞ 
fieldTypeName
∞∞ $
,
∞∞$ %
Description
±± 
=
±± 
$str
±± /
+
±±0 1
query
±±2 7
.
±±7 8
Source
±±8 >
+
±±? @
$str
±±A L
+
±±M N
query
±±O T
.
±±T U
Name
±±U Y
,
±±Y Z
ResolvedType
≤≤ 
=
≤≤ 
typetype
≤≤ '
.
≤≤' (
ResolvedType
≤≤( 4
,
≤≤4 5
Resolver
≥≥ 
=
≥≥ 
new
≥≥ &
LockedAsyncFieldResolver
≥≥ 7
<
≥≥7 8
object
≥≥8 >
,
≥≥> ?
object
≥≥@ F
>
≥≥F G
(
≥≥G H
async
≥≥H M
context
≥≥N U
=>
≥≥V X
{
¥¥ 
var
µµ 
queryManager
µµ $
=
µµ% &
context
µµ' .
.
µµ. /$
ResolveServiceProvider
µµ/ E
(
µµE F
)
µµF G
.
µµG H

GetService
µµH R
<
µµR S
IQueryManager
µµS `
>
µµ` a
(
µµa b
)
µµb c
;
µµc d
var
∂∂ 
iquery
∂∂ 
=
∂∂  
await
∂∂! &
queryManager
∂∂' 3
.
∂∂3 4
GetQueryAsync
∂∂4 A
(
∂∂A B
query
∂∂B G
.
∂∂G H
Name
∂∂H L
)
∂∂L M
;
∂∂M N
var
∏∏ 

parameters
∏∏ "
=
∏∏# $
context
∏∏% ,
.
∏∏, -
GetArgument
∏∏- 8
<
∏∏8 9
string
∏∏9 ?
>
∏∏? @
(
∏∏@ A
$str
∏∏A M
)
∏∏M N
;
∏∏N O
var
∫∫ 
queryParameters
∫∫ '
=
∫∫( )

parameters
∫∫* 4
!=
∫∫5 7
null
∫∫8 <
?
∫∫= >
JsonConvert
ªª #
.
ªª# $
DeserializeObject
ªª$ 5
<
ªª5 6

Dictionary
ªª6 @
<
ªª@ A
string
ªªA G
,
ªªG H
object
ªªI O
>
ªªO P
>
ªªP Q
(
ªªQ R

parameters
ªªR \
)
ªª\ ]
:
ºº 
new
ºº 

Dictionary
ºº (
<
ºº( )
string
ºº) /
,
ºº/ 0
object
ºº1 7
>
ºº7 8
(
ºº8 9
)
ºº9 :
;
ºº: ;
var
ææ 
result
ææ 
=
ææ  
await
ææ! &
queryManager
ææ' 3
.
ææ3 4
ExecuteQueryAsync
ææ4 E
(
ææE F
iquery
ææF L
,
ææL M
queryParameters
ææN ]
)
ææ] ^
;
ææ^ _
return
øø 
result
øø !
.
øø! "
Items
øø" '
;
øø' (
}
¿¿ 
)
¿¿ 
,
¿¿ 
Type
¡¡ 
=
¡¡ 
typetype
¡¡ 
.
¡¡  
Type
¡¡  $
}
¬¬ 
;
¬¬ 
return
ƒƒ 
	fieldType
ƒƒ 
;
ƒƒ 
}
≈≈ 	
}
∆∆ 
}«« ∂
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
.! "
GraphQL" )
{ 
[ 
Feature 
( 
$str &
)& '
]' (
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddSingleton !
<! "
ISchemaBuilder" 0
,0 1%
SqlQueryFieldTypeProvider2 K
>K L
(L M
)M N
;N O
} 	
} 
} ‚
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\Permissions.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
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
ManageSqlQueries

* :
=

; <
new

= @

Permission

A K
(

K L
$str

L ^
,

^ _
$str

` t
)

t u
;

u v
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
{ 
ManageSqlQueries  
} 
. 
AsEnumerable 
( 
) 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageSqlQueries* :
}; <
} 
, 
new  
PermissionStereotype (
{ 
Name   
=   
$str   #
,  # $
Permissions!! 
=!!  !
new!!" %
[!!% &
]!!& '
{!!( )
ManageSqlQueries!!* :
}!!; <
}"" 
}## 
;## 
}$$ 	
}%% 
}&& ˘∆
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\SqlGrammar.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
{ 
public 

class 

SqlGrammar 
: 
Grammar %
{ 
public 

SqlGrammar 
( 
) 
: 
base "
(" #
false# (
)( )
{ 	
var		 
comment		 
=		 
new		 
CommentTerminal		 -
(		- .
$str		. 7
,		7 8
$str		9 =
,		= >
$str		? C
)		C D
;		D E
var

 
lineComment

 
=

 
new

 !
CommentTerminal

" 1
(

1 2
$str

2 @
,

@ A
$str

B F
,

F G
$str

H L
,

L M
$str

N T
)

T U
;

U V
NonGrammarTerminals 
.  
Add  #
(# $
comment$ +
)+ ,
;, -
NonGrammarTerminals 
.  
Add  #
(# $
lineComment$ /
)/ 0
;0 1
var 
number 
= 
new 
NumberLiteral *
(* +
$str+ 3
)3 4
;4 5
var 
string_literal 
=  
new! $
StringLiteral% 2
(2 3
$str3 ;
,; <
$str= @
,@ A
StringOptionsB O
.O P
AllowsDoubledQuoteP b
)b c
;c d
var 
	Id_simple 
= 
TerminalFactory +
.+ ,"
CreateSqlExtIdentifier, B
(B C
thisC G
,G H
$strI T
)T U
;U V
var 
comma 
= 
ToTerm 
( 
$str "
)" #
;# $
var 
dot 
= 
ToTerm 
( 
$str  
)  !
;! "
var 
CREATE 
= 
ToTerm 
(  
$str  (
)( )
;) *
var 
NULL 
= 
ToTerm 
( 
$str $
)$ %
;% &
var 
NOT 
= 
ToTerm 
( 
$str "
)" #
;# $
var 
ON 
= 
ToTerm 
( 
$str  
)  !
;! "
var 
SELECT 
= 
ToTerm 
(  
$str  (
)( )
;) *
var 
FROM 
= 
ToTerm 
( 
$str $
)$ %
;% &
var 
AS 
= 
ToTerm 
( 
$str  
)  !
;! "
var 
COUNT 
= 
ToTerm 
( 
$str &
)& '
;' (
var 
JOIN 
= 
ToTerm 
( 
$str $
)$ %
;% &
var 
BY 
= 
ToTerm 
( 
$str  
)  !
;! "
var 
TRUE 
= 
ToTerm 
( 
$str $
)$ %
;% &
var 
FALSE 
= 
ToTerm 
( 
$str &
)& '
;' (
var 
AND 
= 
ToTerm 
( 
$str "
)" #
;# $
var!! 
Id!! 
=!! 
new!! 
NonTerminal!! $
(!!$ %
$str!!% )
)!!) *
;!!* +
var"" 
	statement"" 
="" 
new"" 
NonTerminal""  +
(""+ ,
$str"", 2
)""2 3
;""3 4
var## 
selectStatement## 
=##  !
new##" %
NonTerminal##& 1
(##1 2
$str##2 C
)##C D
;##D E
var$$ 
idlist$$ 
=$$ 
new$$ 
NonTerminal$$ (
($$( )
$str$$) 1
)$$1 2
;$$2 3
var%% 
	aliaslist%% 
=%% 
new%% 
NonTerminal%%  +
(%%+ ,
$str%%, 7
)%%7 8
;%%8 9
var&& 
	aliasItem&& 
=&& 
new&& 
NonTerminal&&  +
(&&+ ,
$str&&, 7
)&&7 8
;&&8 9
var'' 
	orderList'' 
='' 
new'' 
NonTerminal''  +
(''+ ,
$str'', 7
)''7 8
;''8 9
var(( 
orderMember(( 
=(( 
new(( !
NonTerminal((" -
(((- .
$str((. ;
)((; <
;((< =
var)) 
orderDirOptional))  
=))! "
new))# &
NonTerminal))' 2
())2 3
$str))3 @
)))@ A
;))A B
var** 
whereClauseOptional** #
=**$ %
new**& )
NonTerminal*** 5
(**5 6
$str**6 F
)**F G
;**G H
var++ 

expression++ 
=++ 
new++  
NonTerminal++! ,
(++, -
$str++- 9
)++9 :
;++: ;
var,, 
expressionList,, 
=,,  
new,,! $
NonTerminal,,% 0
(,,0 1
$str,,1 ;
),,; <
;,,< =
var-- %
optionalSelectRestriction-- )
=--* +
new--, /
NonTerminal--0 ;
(--; <
$str--< W
)--W X
;--X Y
var.. 
selectorList.. 
=.. 
new.. "
NonTerminal..# .
(... /
$str../ 8
)..8 9
;..9 :
var// 
fromClauseOpt// 
=// 
new//  #
NonTerminal//$ /
(/// 0
$str//0 ?
)//? @
;//@ A
var00 
groupClauseOpt00 
=00  
new00! $
NonTerminal00% 0
(000 1
$str001 A
)00A B
;00B C
var11 
havingClauseOpt11 
=11  !
new11" %
NonTerminal11& 1
(111 2
$str112 C
)11C D
;11D E
var22 
orderClauseOpt22 
=22  
new22! $
NonTerminal22% 0
(220 1
$str221 A
)22A B
;22B C
var33 
limitClauseOpt33 
=33  
new33! $
NonTerminal33% 0
(330 1
$str331 A
)33A B
;33B C
var44 
offsetClauseOpt44 
=44  !
new44" %
NonTerminal44& 1
(441 2
$str442 C
)44C D
;44D E
var55 
columnItemList55 
=55  
new55! $
NonTerminal55% 0
(550 1
$str551 A
)55A B
;55B C
var66 

columnItem66 
=66 
new66  
NonTerminal66! ,
(66, -
$str66- 9
)669 :
;66: ;
var77 
columnSource77 
=77 
new77 "
NonTerminal77# .
(77. /
$str77/ =
)77= >
;77> ?
var88 
asOpt88 
=88 
new88 
NonTerminal88 '
(88' (
$str88( /
)88/ 0
;880 1
var99 
aliasOpt99 
=99 
new99 
NonTerminal99 *
(99* +
$str99+ 5
)995 6
;996 7
var:: 
tuple:: 
=:: 
new:: 
NonTerminal:: '
(::' (
$str::( /
)::/ 0
;::0 1
var;; 
joinChainOpt;; 
=;; 
new;; "
NonTerminal;;# .
(;;. /
$str;;/ =
);;= >
;;;> ?
var<< 
joinStatement<< 
=<< 
new<<  #
NonTerminal<<$ /
(<</ 0
$str<<0 ?
)<<? @
;<<@ A
var== 
joinKindOpt== 
=== 
new== !
NonTerminal==" -
(==- .
$str==. ;
)==; <
;==< =
var>> 
joinConditions>> 
=>>  
new>>! $
NonTerminal>>% 0
(>>0 1
$str>>1 A
)>>A B
;>>B C
var?? 
joinCondition?? 
=?? 
new??  #
NonTerminal??$ /
(??/ 0
$str??0 ?
)??? @
;??@ A
var@@ !
joinConditionArgument@@ %
=@@& '
new@@( +
NonTerminal@@, 7
(@@7 8
$str@@8 O
)@@O P
;@@P Q
varAA 
termAA 
=AA 
newAA 
NonTerminalAA &
(AA& '
$strAA' -
)AA- .
;AA. /
varBB 
unExprBB 
=BB 
newBB 
NonTerminalBB (
(BB( )
$strBB) 1
)BB1 2
;BB2 3
varCC 
unOpCC 
=CC 
newCC 
NonTerminalCC &
(CC& '
$strCC' -
)CC- .
;CC. /
varDD 
binExprDD 
=DD 
newDD 
NonTerminalDD )
(DD) *
$strDD* 3
)DD3 4
;DD4 5
varEE 
binOpEE 
=EE 
newEE 
NonTerminalEE '
(EE' (
$strEE( /
)EE/ 0
;EE0 1
varFF 
betweenExprFF 
=FF 
newFF !
NonTerminalFF" -
(FF- .
$strFF. ;
)FF; <
;FF< =
varGG 
inExprGG 
=GG 
newGG 
NonTerminalGG (
(GG( )
$strGG) 1
)GG1 2
;GG2 3
varHH 
parSelectStatementHH "
=HH# $
newHH% (
NonTerminalHH) 4
(HH4 5
$strHH5 D
)HHD E
;HHE F
varII 
notOptII 
=II 
newII 
NonTerminalII (
(II( )
$strII) 1
)II1 2
;II2 3
varJJ 
funCallJJ 
=JJ 
newJJ 
NonTerminalJJ )
(JJ) *
$strJJ* 3
)JJ3 4
;JJ4 5
varKK 
	parameterKK 
=KK 
newKK 
NonTerminalKK  +
(KK+ ,
$strKK, 7
)KK7 8
;KK8 9
varLL 
statementLineLL 
=LL 
newLL  #
NonTerminalLL$ /
(LL/ 0
$strLL0 :
)LL: ;
;LL; <
varMM 
optionalSemicolonMM !
=MM" #
newMM$ '
NonTerminalMM( 3
(MM3 4
$strMM4 =
)MM= >
;MM> ?
varNN 
statementListNN 
=NN 
newNN  #
NonTerminalNN$ /
(NN/ 0
$strNN0 :
)NN: ;
;NN; <
varOO 
functionArgumentsOO !
=OO" #
newOO$ '
NonTerminalOO( 3
(OO3 4
$strOO4 =
)OO= >
;OO> ?
varPP 
booleanPP 
=PP 
newPP 
NonTerminalPP )
(PP) *
$strPP* 3
)PP3 4
;PP4 5
thisSS 
.SS 
RootSS 
=SS 
statementListSS %
;SS% &
statementLineTT 
.TT 
RuleTT 
=TT  
	statementTT! *
+TT+ ,
optionalSemicolonTT- >
;TT> ?
optionalSemicolonUU 
.UU 
RuleUU "
=UU# $
EmptyUU% *
|UU+ ,
$strUU- 0
;UU0 1
statementListVV 
.VV 
RuleVV 
=VV  
MakePlusRuleVV! -
(VV- .
statementListVV. ;
,VV; <
statementLineVV= J
)VVJ K
;VVK L
	statementXX 
.XX 
RuleXX 
=XX 
selectStatementXX ,
;XX, -
IdZZ 
.ZZ 
RuleZZ 
=ZZ 
MakePlusRuleZZ "
(ZZ" #
IdZZ# %
,ZZ% &
dotZZ' *
,ZZ* +
	Id_simpleZZ, 5
)ZZ5 6
;ZZ6 7
aliasOpt\\ 
.\\ 
Rule\\ 
=\\ 
Empty\\ !
|\\" #
asOpt\\$ )
+\\* +
Id\\, .
;\\. /
asOpt]] 
.]] 
Rule]] 
=]] 
Empty]] 
|]]  
AS]]! #
;]]# $
idlist__ 
.__ 
Rule__ 
=__ 
MakePlusRule__ &
(__& '
idlist__' -
,__- .
comma__/ 4
,__4 5
columnSource__6 B
)__B C
;__C D
	aliaslistaa 
.aa 
Ruleaa 
=aa 
MakePlusRuleaa )
(aa) *
	aliaslistaa* 3
,aa3 4
commaaa5 :
,aa: ;
	aliasItemaa< E
)aaE F
;aaF G
	aliasItembb 
.bb 
Rulebb 
=bb 
Idbb 
+bb  !
aliasOptbb" *
;bb* +
	orderListee 
.ee 
Ruleee 
=ee 
MakePlusRuleee )
(ee) *
	orderListee* 3
,ee3 4
commaee5 :
,ee: ;
orderMemberee< G
)eeG H
;eeH I
orderMemberff 
.ff 
Ruleff 
=ff 
Idff !
+ff" #
orderDirOptionalff$ 4
;ff4 5
orderDirOptionalgg 
.gg 
Rulegg !
=gg" #
Emptygg$ )
|gg* +
$strgg, 1
|gg2 3
$strgg4 :
;gg: ;
selectStatementjj 
.jj 
Rulejj  
=jj! "
SELECTjj# )
+jj* +%
optionalSelectRestrictionjj, E
+jjF G
selectorListjjH T
+jjU V
fromClauseOptjjW d
+jje f
whereClauseOptionaljjg z
+jj{ |
groupClauseOptkk ,
+kk- .
havingClauseOptkk/ >
+kk? @
orderClauseOptkkA O
+kkP Q
limitClauseOptkkR `
+kka b
offsetClauseOptkkc r
;kkr s%
optionalSelectRestrictionll %
.ll% &
Rulell& *
=ll+ ,
Emptyll- 2
|ll3 4
$strll5 :
|ll; <
$strll= G
;llG H
selectorListmm 
.mm 
Rulemm 
=mm 
columnItemListmm  .
|mm/ 0
$strmm1 4
;mm4 5
columnItemListnn 
.nn 
Rulenn 
=nn  !
MakePlusRulenn" .
(nn. /
columnItemListnn/ =
,nn= >
commann? D
,nnD E

columnItemnnF P
)nnP Q
;nnQ R

columnItemoo 
.oo 
Ruleoo 
=oo 
columnSourceoo *
+oo+ ,
aliasOptoo- 5
;oo5 6
columnSourceqq 
.qq 
Ruleqq 
=qq 
funCallqq  '
|qq( )
Idqq* ,
;qq, -
fromClauseOptrr 
.rr 
Rulerr 
=rr  
Emptyrr! &
|rr' (
FROMrr) -
+rr. /
	aliaslistrr0 9
+rr: ;
joinChainOptrr< H
;rrH I
joinChainOpttt 
.tt 
Rulett 
=tt 
MakeStarRulett  ,
(tt, -
joinChainOpttt- 9
,tt9 :
joinStatementtt; H
)ttH I
;ttI J
joinStatementuu 
.uu 
Ruleuu 
=uu  
joinKindOptuu! ,
+uu- .
JOINuu/ 3
+uu4 5
	aliaslistuu6 ?
+uu@ A
ONuuB D
+uuE F
joinConditionsuuG U
;uuU V
joinConditionsvv 
.vv 
Rulevv 
=vv  !
MakePlusRulevv" .
(vv. /
joinConditionsvv/ =
,vv= >
ANDvv? B
,vvB C
joinConditionvvD Q
)vvQ R
;vvR S
joinConditionww 
.ww 
Ruleww 
=ww  !
joinConditionArgumentww! 6
+ww7 8
$strww9 <
+ww= >!
joinConditionArgumentww? T
;wwT U!
joinConditionArgumentxx !
.xx! "
Rulexx" &
=xx' (
Idxx) +
|xx, -
booleanxx. 5
|xx6 7
string_literalxx8 F
|xxG H
numberxxI O
|xxP Q
	parameterxxR [
;xx[ \
joinKindOptyy 
.yy 
Ruleyy 
=yy 
Emptyyy $
|yy% &
$stryy' .
|yy/ 0
$stryy1 7
|yy8 9
$stryy: A
;yyA B
whereClauseOptional{{ 
.{{  
Rule{{  $
={{% &
Empty{{' ,
|{{- .
$str{{/ 6
+{{7 8

expression{{9 C
;{{C D
groupClauseOpt|| 
.|| 
Rule|| 
=||  !
Empty||" '
|||( )
$str||* 1
+||2 3
BY||4 6
+||7 8
idlist||9 ?
;||? @
havingClauseOpt}} 
.}} 
Rule}}  
=}}! "
Empty}}# (
|}}) *
$str}}+ 3
+}}4 5

expression}}6 @
;}}@ A
orderClauseOpt~~ 
.~~ 
Rule~~ 
=~~  !
Empty~~" '
|~~( )
$str~~* 1
+~~2 3
BY~~4 6
+~~7 8
	orderList~~9 B
;~~B C
limitClauseOpt 
. 
Rule 
=  !
Empty" '
|( )
$str* 1
+2 3

expression4 >
;> ?
offsetClauseOpt
ÄÄ 
.
ÄÄ 
Rule
ÄÄ  
=
ÄÄ! "
Empty
ÄÄ# (
|
ÄÄ) *
$str
ÄÄ+ 3
+
ÄÄ4 5

expression
ÄÄ6 @
;
ÄÄ@ A
expressionList
ÉÉ 
.
ÉÉ 
Rule
ÉÉ 
=
ÉÉ  !
MakePlusRule
ÉÉ" .
(
ÉÉ. /
expressionList
ÉÉ/ =
,
ÉÉ= >
comma
ÉÉ? D
,
ÉÉD E

expression
ÉÉF P
)
ÉÉP Q
;
ÉÉQ R

expression
ÑÑ 
.
ÑÑ 
Rule
ÑÑ 
=
ÑÑ 
term
ÑÑ "
|
ÑÑ# $
unExpr
ÑÑ% +
|
ÑÑ, -
binExpr
ÑÑ. 5
|
ÑÑ6 7
betweenExpr
ÑÑ8 C
|
ÑÑD E
inExpr
ÑÑF L
|
ÑÑM N
	parameter
ÑÑO X
;
ÑÑX Y
term
ÖÖ 
.
ÖÖ 
Rule
ÖÖ 
=
ÖÖ 
Id
ÖÖ 
|
ÖÖ 
boolean
ÖÖ $
|
ÖÖ% &
string_literal
ÖÖ' 5
|
ÖÖ6 7
number
ÖÖ8 >
|
ÖÖ? @
funCall
ÖÖA H
|
ÖÖI J
tuple
ÖÖK P
|
ÖÖQ R 
parSelectStatement
ÖÖS e
;
ÖÖe f
boolean
ÜÜ 
.
ÜÜ 
Rule
ÜÜ 
=
ÜÜ 
TRUE
ÜÜ 
|
ÜÜ  !
FALSE
ÜÜ" '
;
ÜÜ' (
tuple
áá 
.
áá 
Rule
áá 
=
áá 
$str
áá 
+
áá 
expressionList
áá -
+
áá. /
$str
áá0 3
;
áá3 4 
parSelectStatement
àà 
.
àà 
Rule
àà #
=
àà$ %
$str
àà& )
+
àà* +
selectStatement
àà, ;
+
àà< =
$str
àà> A
;
ààA B
unExpr
ââ 
.
ââ 
Rule
ââ 
=
ââ 
unOp
ââ 
+
ââ  
term
ââ! %
;
ââ% &
unOp
ää 
.
ää 
Rule
ää 
=
ää 
NOT
ää 
|
ää 
$str
ää !
|
ää" #
$str
ää$ '
|
ää( )
$str
ää* -
;
ää- .
binExpr
ãã 
.
ãã 
Rule
ãã 
=
ãã 

expression
ãã %
+
ãã& '
binOp
ãã( -
+
ãã. /

expression
ãã0 :
;
ãã: ;
binOp
åå 
.
åå 
Rule
åå 
=
åå 
ToTerm
åå 
(
åå  
$str
åå  #
)
åå# $
|
åå% &
$str
åå' *
|
åå+ ,
$str
åå- 0
|
åå1 2
$str
åå3 6
|
åå7 8
$str
åå9 <
|
çç 
$str
çç 
|
çç 
$str
çç "
|
çç# $
$str
çç% (
|
éé 
$str
éé 
|
éé 
$str
éé "
|
éé# $
$str
éé% (
|
éé) *
$str
éé+ /
|
éé0 1
$str
éé2 6
|
éé7 8
$str
éé9 =
|
éé> ?
$str
éé@ D
|
ééE F
$str
ééG K
|
ééL M
$str
ééN R
|
èè 
$str
èè 
|
èè  
$str
èè! %
|
èè& '
$str
èè( .
|
èè/ 0
$str
èè1 ;
;
èè; <
betweenExpr
êê 
.
êê 
Rule
êê 
=
êê 

expression
êê )
+
êê* +
notOpt
êê, 2
+
êê3 4
$str
êê5 >
+
êê? @

expression
êêA K
+
êêL M
$str
êêN S
+
êêT U

expression
êêV `
;
êê` a
inExpr
ëë 
.
ëë 
Rule
ëë 
=
ëë 

expression
ëë $
+
ëë% &
notOpt
ëë' -
+
ëë. /
$str
ëë0 4
+
ëë5 6
$str
ëë7 :
+
ëë; <
functionArguments
ëë= N
+
ëëO P
$str
ëëQ T
;
ëëT U
notOpt
íí 
.
íí 
Rule
íí 
=
íí 
Empty
íí 
|
íí  !
NOT
íí" %
;
íí% &
funCall
îî 
.
îî 
Rule
îî 
=
îî 
Id
îî 
+
îî 
$str
îî  #
+
îî$ %
functionArguments
îî& 7
+
îî8 9
$str
îî: =
;
îî= >
functionArguments
ïï 
.
ïï 
Rule
ïï "
=
ïï# $
selectStatement
ïï% 4
|
ïï5 6
expressionList
ïï7 E
|
ïïF G
$str
ïïH K
;
ïïK L
	parameter
ññ 
.
ññ 
Rule
ññ 
=
ññ 
$str
ññ  
+
ññ! "
Id
ññ# %
|
ññ& '
$str
ññ( +
+
ññ, -
Id
ññ. 0
+
ññ1 2
$str
ññ3 6
+
ññ7 8
term
ññ9 =
;
ññ= >
RegisterOperators
ôô 
(
ôô 
$num
ôô  
,
ôô  !
$str
ôô" %
,
ôô% &
$str
ôô' *
,
ôô* +
$str
ôô, /
)
ôô/ 0
;
ôô0 1
RegisterOperators
öö 
(
öö 
$num
öö 
,
öö  
$str
öö! $
,
öö$ %
$str
öö& )
)
öö) *
;
öö* +
RegisterOperators
õõ 
(
õõ 
$num
õõ 
,
õõ  
$str
õõ! $
,
õõ$ %
$str
õõ& )
,
õõ) *
$str
õõ+ .
,
õõ. /
$str
õõ0 4
,
õõ4 5
$str
õõ6 :
,
õõ: ;
$str
õõ< @
,
õõ@ A
$str
õõB F
,
õõF G
$str
õõH L
,
õõL M
$str
õõN R
,
õõR S
$str
õõT Z
,
õõZ [
$str
õõ\ `
)
õõ` a
;
õõa b
RegisterOperators
úú 
(
úú 
$num
úú 
,
úú  
$str
úú! $
,
úú$ %
$str
úú& )
,
úú) *
$str
úú+ .
)
úú. /
;
úú/ 0
RegisterOperators
ùù 
(
ùù 
$num
ùù 
,
ùù  
NOT
ùù! $
)
ùù$ %
;
ùù% &
RegisterOperators
ûû 
(
ûû 
$num
ûû 
,
ûû  
$str
ûû! &
)
ûû& '
;
ûû' (
RegisterOperators
üü 
(
üü 
$num
üü 
,
üü  
$str
üü! %
)
üü% &
;
üü& '
MarkPunctuation
°° 
(
°° 
$str
°° 
,
°°  
$str
°°! $
,
°°$ %
$str
°°& )
)
°°) *
;
°°* +
MarkPunctuation
¢¢ 
(
¢¢ 
asOpt
¢¢ !
,
¢¢! "
optionalSemicolon
¢¢# 4
)
¢¢4 5
;
¢¢5 6
base
ßß 
.
ßß 
MarkTransient
ßß 
(
ßß 
	statement
ßß (
,
ßß( )
term
ßß* .
,
ßß. /
asOpt
ßß0 5
,
ßß5 6
aliasOpt
ßß7 ?
,
ßß? @
statementLine
ßßA N
,
ßßN O

expression
ßßP Z
,
ßßZ [
unOp
ßß\ `
,
ßß` a
tuple
ßßb g
)
ßßg h
;
ßßh i
binOp
®® 
.
®® 
SetFlag
®® 
(
®® 
	TermFlags
®® #
.
®®# $
InheritPrecedence
®®$ 5
)
®®5 6
;
®®6 7
}
©© 	
}
™™ 
}´´ ·Ó
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\SqlParser.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
{		 
public

 

class

 
	SqlParser

 
{ 
private 
StringBuilder 
_builder &
;& '
private 
IDictionary 
< 
string "
," #
object$ *
>* +
_parameters, 7
;7 8
private 
ISqlDialect 
_dialect $
;$ %
private 
string 
_tablePrefix #
;# $
private 
HashSet 
< 
string 
> 
_aliases  (
;( )
private 
	ParseTree 
_tree 
;  
private 
static 
LanguageData #
language$ ,
=- .
new/ 2
LanguageData3 ?
(? @
new@ C

SqlGrammarD N
(N O
)O P
)P Q
;Q R
private 
Stack 
< 
FormattingModes %
>% &
_modes' -
;- .
private 
string 
_limit 
; 
private 
string 
_offset 
; 
private 
string 
_select 
; 
private 
string 
_from 
; 
private 
string 
_where 
; 
private 
string 
_having 
; 
private 
string 
_groupBy 
;  
private 
string 
_orderBy 
;  
private 
	SqlParser 
( 
	ParseTree #
tree$ (
,( )
ISqlDialect* 5
dialect6 =
,= >
string? E
tablePrefixF Q
,Q R
IDictionaryS ^
<^ _
string_ e
,e f
objectg m
>m n

parameterso y
)y z
{ 	
_tree   
=   
tree   
;   
_dialect!! 
=!! 
dialect!! 
;!! 
_tablePrefix"" 
="" 
tablePrefix"" &
;""& '
_parameters## 
=## 

parameters## $
;##$ %
_builder$$ 
=$$ 
new$$ 
StringBuilder$$ (
($$( )
tree$$) -
.$$- .

SourceText$$. 8
.$$8 9
Length$$9 ?
)$$? @
;$$@ A
_modes%% 
=%% 
new%% 
Stack%% 
<%% 
FormattingModes%% .
>%%. /
(%%/ 0
)%%0 1
;%%1 2
}&& 	
public(( 
static(( 
bool(( 
TryParse(( #
(((# $
string(($ *
sql((+ .
,((. /
ISqlDialect((0 ;
dialect((< C
,((C D
string((E K
tablePrefix((L W
,((W X
IDictionary((Y d
<((d e
string((e k
,((k l
object((m s
>((s t

parameters((u 
,	(( Ä
out
((Å Ñ
string
((Ö ã
query
((å ë
,
((ë í
out
((ì ñ
IEnumerable
((ó ¢
<
((¢ £
string
((£ ©
>
((© ™
messages
((´ ≥
)
((≥ ¥
{)) 	
try** 
{++ 
var,, 
tree,, 
=,, 
new,, 
Parser,, %
(,,% &
language,,& .
),,. /
.,,/ 0
Parse,,0 5
(,,5 6
sql,,6 9
),,9 :
;,,: ;
if.. 
(.. 
tree.. 
... 
	HasErrors.. "
(.." #
)..# $
)..$ %
{// 
query00 
=00 
null00  
;00  !
messages22 
=22 
tree22 #
.33 
ParserMessages33 '
.44 
Select44 
(44  
x44  !
=>44" $
$"44% '
{44' (
x44( )
.44) *
Message44* 1
}441 2
	 at line:442 ;
{44; <
x44< =
.44= >
Location44> F
.44F G
Line44G K
}44K L
, col:44L R
{44R S
x44S T
.44T U
Location44U ]
.44] ^
Column44^ d
}44d e
"44e f
)44f g
.55 
ToArray55  
(55  !
)55! "
;55" #
return77 
false77  
;77  !
}88 
var:: 
	sqlParser:: 
=:: 
new::  #
	SqlParser::$ -
(::- .
tree::. 2
,::2 3
dialect::4 ;
,::; <
tablePrefix::= H
,::H I

parameters::J T
)::T U
;::U V
query;; 
=;; 
	sqlParser;; !
.;;! "
Evaluate;;" *
(;;* +
);;+ ,
;;;, -
messages== 
=== 
Array==  
.==  !
Empty==! &
<==& '
string==' -
>==- .
(==. /
)==/ 0
;==0 1
return?? 
true?? 
;?? 
}@@ 
catchAA 
(AA 
SqlParserExceptionAA %
seAA& (
)AA( )
{BB 
queryCC 
=CC 
nullCC 
;CC 
messagesDD 
=DD 
newDD 
stringDD %
[DD% &
]DD& '
{DD( )
seDD* ,
.DD, -
MessageDD- 4
}DD5 6
;DD6 7
}EE 
catchFF 
(FF 
	ExceptionFF 
eFF 
)FF 
{GG 
queryHH 
=HH 
nullHH 
;HH 
messagesII 
=II 
newII 
stringII %
[II% &
]II& '
{II( )
$strII* >
+II? @
eIIA B
.IIB C
MessageIIC J
}IIK L
;IIL M
}JJ 
returnLL 
falseLL 
;LL 
}MM 	
privateOO 
stringOO 
EvaluateOO 
(OO  
)OO  !
{PP 	
PopulateAliasesQQ 
(QQ 
_treeQQ !
)QQ! "
;QQ" #
varRR 
statementListRR 
=RR 
_treeRR  %
.RR% &
RootRR& *
;RR* +
varTT 
statementsBuilderTT !
=TT" #
newTT$ '
StringBuilderTT( 5
(TT5 6
)TT6 7
;TT7 8
foreachVV 
(VV 
varVV 
selectStatementVV (
inVV) +
statementListVV, 9
.VV9 :

ChildNodesVV: D
)VVD E
{WW 
statementsBuilderXX !
.XX! "
AppendXX" (
(XX( )#
EvaluateSelectStatementXX) @
(XX@ A
selectStatementXXA P
)XXP Q
)XXQ R
.XXR S
AppendXXS Y
(XXY Z
$charXXZ ]
)XX] ^
;XX^ _
}YY 
return[[ 
statementsBuilder[[ $
.[[$ %
ToString[[% -
([[- .
)[[. /
;[[/ 0
}\\ 	
private^^ 
void^^ 
PopulateAliases^^ $
(^^$ %
	ParseTree^^% .
tree^^/ 3
)^^3 4
{__ 	
_aliasescc 
=cc 
newcc 
HashSetcc "
<cc" #
stringcc# )
>cc) *
(cc* +
)cc+ ,
;cc, -
foree 
(ee 
varee 
iee 
=ee 
$numee 
;ee 
iee 
<ee 
treeee  $
.ee$ %
Tokensee% +
.ee+ ,
Countee, 1
;ee1 2
iee3 4
++ee4 6
)ee6 7
{ff 
ifgg 
(gg 
treegg 
.gg 
Tokensgg 
[gg  
igg  !
]gg! "
.gg" #
Terminalgg# +
.gg+ ,
Namegg, 0
==gg1 3
$strgg4 8
)gg8 9
{hh 
_aliasesii 
.ii 
Addii  
(ii  !
treeii! %
.ii% &
Tokensii& ,
[ii, -
iii- .
+ii/ 0
$numii1 2
]ii2 3
.ii3 4
ValueStringii4 ?
)ii? @
;ii@ A
}jj 
}kk 
}ll 	
privatenn 
stringnn #
EvaluateSelectStatementnn .
(nn. /
ParseTreeNodenn/ <
selectStatementnn= L
)nnL M
{oo 	
_limitpp 
=pp 
nullpp 
;pp 
_offsetqq 
=qq 
nullqq 
;qq 
_selectrr 
=rr 
nullrr 
;rr 
_fromss 
=ss 
nullss 
;ss 
_wherett 
=tt 
nulltt 
;tt 
_havinguu 
=uu 
nulluu 
;uu 
_groupByvv 
=vv 
nullvv 
;vv 
_orderByww 
=ww 
nullww 
;ww 
varyy 
previousContentyy 
=yy  !
_builderyy" *
.yy* +
Lengthyy+ 1
>yy2 3
$numyy4 5
?yy6 7
_builderyy8 @
.yy@ A
ToStringyyA I
(yyI J
)yyJ K
:yyL M
nullyyN R
;yyR S
_builderzz 
.zz 
Clearzz 
(zz 
)zz 
;zz 
var|| 

sqlBuilder|| 
=|| 
_dialect|| %
.||% &
CreateBuilder||& 3
(||3 4
_tablePrefix||4 @
)||@ A
;||A B%
EvaluateSelectRestriction~~ %
(~~% &
selectStatement~~& 5
.~~5 6

ChildNodes~~6 @
[~~@ A
$num~~A B
]~~B C
)~~C D
;~~D E 
EvaluateSelectorList  
(  !
selectStatement! 0
.0 1

ChildNodes1 ;
[; <
$num< =
]= >
)> ?
;? @

sqlBuilder
ÅÅ 
.
ÅÅ 
Select
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ  

sqlBuilder
ÇÇ 
.
ÇÇ 
Selector
ÇÇ 
(
ÇÇ  
_select
ÇÇ  '
)
ÇÇ' (
;
ÇÇ( ) 
EvaluateFromClause
ÑÑ 
(
ÑÑ 
selectStatement
ÑÑ .
.
ÑÑ. /

ChildNodes
ÑÑ/ 9
[
ÑÑ9 :
$num
ÑÑ: ;
]
ÑÑ; <
)
ÑÑ< =
;
ÑÑ= >
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
String
ÜÜ 
.
ÜÜ 
IsNullOrEmpty
ÜÜ %
(
ÜÜ% &
_from
ÜÜ& +
)
ÜÜ+ ,
)
ÜÜ, -
{
áá 

sqlBuilder
àà 
.
àà 
From
àà 
(
àà  
_from
àà  %
)
àà% &
;
àà& '
}
ââ !
EvaluateWhereClause
ãã 
(
ãã  
selectStatement
ãã  /
.
ãã/ 0

ChildNodes
ãã0 :
[
ãã: ;
$num
ãã; <
]
ãã< =
)
ãã= >
;
ãã> ?
if
çç 
(
çç 
!
çç 
String
çç 
.
çç 
IsNullOrEmpty
çç %
(
çç% &
_where
çç& ,
)
çç, -
)
çç- .
{
éé 

sqlBuilder
èè 
.
èè 
WhereAnd
èè #
(
èè# $
_where
èè$ *
)
èè* +
;
èè+ ,
}
êê !
EvaluateGroupClause
íí 
(
íí  
selectStatement
íí  /
.
íí/ 0

ChildNodes
íí0 :
[
íí: ;
$num
íí; <
]
íí< =
)
íí= >
;
íí> ?
if
îî 
(
îî 
!
îî 
String
îî 
.
îî 
IsNullOrEmpty
îî %
(
îî% &
_groupBy
îî& .
)
îî. /
)
îî/ 0
{
ïï 

sqlBuilder
ññ 
.
ññ 
GroupBy
ññ "
(
ññ" #
_groupBy
ññ# +
)
ññ+ ,
;
ññ, -
}
óó "
EvaluateHavingClause
ôô  
(
ôô  !
selectStatement
ôô! 0
.
ôô0 1

ChildNodes
ôô1 ;
[
ôô; <
$num
ôô< =
]
ôô= >
)
ôô> ?
;
ôô? @
if
õõ 
(
õõ 
!
õõ 
String
õõ 
.
õõ 
IsNullOrEmpty
õõ %
(
õõ% &
_having
õõ& -
)
õõ- .
)
õõ. /
{
úú 

sqlBuilder
ùù 
.
ùù 
Having
ùù !
(
ùù! "
_having
ùù" )
)
ùù) *
;
ùù* +
}
ûû !
EvaluateOrderClause
†† 
(
††  
selectStatement
††  /
.
††/ 0

ChildNodes
††0 :
[
††: ;
$num
††; <
]
††< =
)
††= >
;
††> ?
if
¢¢ 
(
¢¢ 
!
¢¢ 
String
¢¢ 
.
¢¢ 
IsNullOrEmpty
¢¢ %
(
¢¢% &
_orderBy
¢¢& .
)
¢¢. /
)
¢¢/ 0
{
££ 

sqlBuilder
§§ 
.
§§ 
OrderBy
§§ "
(
§§" #
_orderBy
§§# +
)
§§+ ,
;
§§, -
}
•• !
EvaluateLimitClause
ßß 
(
ßß  
selectStatement
ßß  /
.
ßß/ 0

ChildNodes
ßß0 :
[
ßß: ;
$num
ßß; <
]
ßß< =
)
ßß= >
;
ßß> ?
if
©© 
(
©© 
!
©© 
String
©© 
.
©© 
IsNullOrEmpty
©© %
(
©©% &
_limit
©©& ,
)
©©, -
)
©©- .
{
™™ 

sqlBuilder
´´ 
.
´´ 
Take
´´ 
(
´´  
_limit
´´  &
)
´´& '
;
´´' (
}
¨¨ "
EvaluateOffsetClause
ÆÆ  
(
ÆÆ  !
selectStatement
ÆÆ! 0
.
ÆÆ0 1

ChildNodes
ÆÆ1 ;
[
ÆÆ; <
$num
ÆÆ< =
]
ÆÆ= >
)
ÆÆ> ?
;
ÆÆ? @
if
∞∞ 
(
∞∞ 
!
∞∞ 
String
∞∞ 
.
∞∞ 
IsNullOrEmpty
∞∞ %
(
∞∞% &
_offset
∞∞& -
)
∞∞- .
)
∞∞. /
{
±± 

sqlBuilder
≤≤ 
.
≤≤ 
Skip
≤≤ 
(
≤≤  
_offset
≤≤  '
)
≤≤' (
;
≤≤( )
}
≥≥ 
if
µµ 
(
µµ 
previousContent
µµ 
!=
µµ  "
null
µµ# '
)
µµ' (
{
∂∂ 
_builder
∑∑ 
.
∑∑ 
Clear
∑∑ 
(
∑∑ 
)
∑∑  
;
∑∑  !
_builder
∏∏ 
.
∏∏ 
Append
∏∏ 
(
∏∏  
new
∏∏  #
StringBuilder
∏∏$ 1
(
∏∏1 2
previousContent
∏∏2 A
)
∏∏A B
)
∏∏B C
;
∏∏C D
}
ππ 
return
ªª 

sqlBuilder
ªª 
.
ªª 
ToSqlString
ªª )
(
ªª) *
)
ªª* +
;
ªª+ ,
}
ºº 	
private
ææ 
void
ææ !
EvaluateLimitClause
ææ (
(
ææ( )
ParseTreeNode
ææ) 6
parseTreeNode
ææ7 D
)
ææD E
{
øø 	
if
¿¿ 
(
¿¿ 
parseTreeNode
¿¿ 
.
¿¿ 

ChildNodes
¿¿ (
.
¿¿( )
Count
¿¿) .
==
¿¿/ 1
$num
¿¿2 3
)
¿¿3 4
{
¡¡ 
return
¬¬ 
;
¬¬ 
}
√√ 
_builder
≈≈ 
.
≈≈ 
Clear
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈  
EvaluateExpression
»» 
(
»» 
parseTreeNode
»» ,
.
»», -

ChildNodes
»»- 7
[
»»7 8
$num
»»8 9
]
»»9 :
)
»»: ;
;
»»; <
_limit
   
=
   
_builder
   
.
   
ToString
   &
(
  & '
)
  ' (
;
  ( )
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ "
EvaluateOffsetClause
ÕÕ )
(
ÕÕ) *
ParseTreeNode
ÕÕ* 7
parseTreeNode
ÕÕ8 E
)
ÕÕE F
{
ŒŒ 	
if
œœ 
(
œœ 
parseTreeNode
œœ 
.
œœ 

ChildNodes
œœ (
.
œœ( )
Count
œœ) .
==
œœ/ 1
$num
œœ2 3
)
œœ3 4
{
–– 
return
—— 
;
—— 
}
““ 
_builder
‘‘ 
.
‘‘ 
Clear
‘‘ 
(
‘‘ 
)
‘‘ 
;
‘‘  
EvaluateExpression
◊◊ 
(
◊◊ 
parseTreeNode
◊◊ ,
.
◊◊, -

ChildNodes
◊◊- 7
[
◊◊7 8
$num
◊◊8 9
]
◊◊9 :
)
◊◊: ;
;
◊◊; <
_offset
ŸŸ 
=
ŸŸ 
_builder
ŸŸ 
.
ŸŸ 
ToString
ŸŸ '
(
ŸŸ' (
)
ŸŸ( )
;
ŸŸ) *
}
⁄⁄ 	
private
‹‹ 
void
‹‹ !
EvaluateOrderClause
‹‹ (
(
‹‹( )
ParseTreeNode
‹‹) 6
parseTreeNode
‹‹7 D
)
‹‹D E
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
parseTreeNode
ﬁﬁ 
.
ﬁﬁ 

ChildNodes
ﬁﬁ (
.
ﬁﬁ( )
Count
ﬁﬁ) .
==
ﬁﬁ/ 1
$num
ﬁﬁ2 3
)
ﬁﬁ3 4
{
ﬂﬂ 
return
‡‡ 
;
‡‡ 
}
·· 
_builder
„„ 
.
„„ 
Clear
„„ 
(
„„ 
)
„„ 
;
„„ 
var
ÂÂ 
idList
ÂÂ 
=
ÂÂ 
parseTreeNode
ÂÂ &
.
ÂÂ& '

ChildNodes
ÂÂ' 1
[
ÂÂ1 2
$num
ÂÂ2 3
]
ÂÂ3 4
;
ÂÂ4 5
_modes
ÁÁ 
.
ÁÁ 
Push
ÁÁ 
(
ÁÁ 
FormattingModes
ÁÁ '
.
ÁÁ' (
SelectClause
ÁÁ( 4
)
ÁÁ4 5
;
ÁÁ5 6
for
ËË 
(
ËË 
var
ËË 
i
ËË 
=
ËË 
$num
ËË 
;
ËË 
i
ËË 
<
ËË 
idList
ËË  &
.
ËË& '

ChildNodes
ËË' 1
.
ËË1 2
Count
ËË2 7
;
ËË7 8
i
ËË9 :
++
ËË: <
)
ËË< =
{
ÈÈ 
var
ÍÍ 
id
ÍÍ 
=
ÍÍ 
idList
ÍÍ 
.
ÍÍ  

ChildNodes
ÍÍ  *
[
ÍÍ* +
i
ÍÍ+ ,
]
ÍÍ, -
.
ÍÍ- .

ChildNodes
ÍÍ. 8
[
ÍÍ8 9
$num
ÍÍ9 :
]
ÍÍ: ;
;
ÍÍ; <
if
ÏÏ 
(
ÏÏ 
i
ÏÏ 
>
ÏÏ 
$num
ÏÏ 
)
ÏÏ 
{
ÌÌ 
_builder
ÓÓ 
.
ÓÓ 
Append
ÓÓ #
(
ÓÓ# $
$str
ÓÓ$ (
)
ÓÓ( )
;
ÓÓ) *
}
ÔÔ 

EvaluateId
ÒÒ 
(
ÒÒ 
id
ÒÒ 
)
ÒÒ 
;
ÒÒ 
if
ÛÛ 
(
ÛÛ 
idList
ÛÛ 
.
ÛÛ 

ChildNodes
ÛÛ %
[
ÛÛ% &
i
ÛÛ& '
]
ÛÛ' (
.
ÛÛ( )

ChildNodes
ÛÛ) 3
[
ÛÛ3 4
$num
ÛÛ4 5
]
ÛÛ5 6
.
ÛÛ6 7

ChildNodes
ÛÛ7 A
.
ÛÛA B
Count
ÛÛB G
>
ÛÛH I
$num
ÛÛJ K
)
ÛÛK L
{
ÙÙ 
_builder
ıı 
.
ıı 
Append
ıı #
(
ıı# $
$str
ıı$ '
)
ıı' (
.
ıı( )
Append
ıı) /
(
ıı/ 0
idList
ıı0 6
.
ıı6 7

ChildNodes
ıı7 A
[
ııA B
i
ııB C
]
ııC D
.
ııD E

ChildNodes
ııE O
[
ııO P
$num
ııP Q
]
ııQ R
.
ııR S

ChildNodes
ııS ]
[
ıı] ^
$num
ıı^ _
]
ıı_ `
.
ıı` a
Term
ııa e
.
ııe f
Name
ııf j
)
ııj k
;
ıık l
}
ˆˆ 
}
˜˜ 
_orderBy
˘˘ 
=
˘˘ 
_builder
˘˘ 
.
˘˘  
ToString
˘˘  (
(
˘˘( )
)
˘˘) *
;
˘˘* +
_modes
˚˚ 
.
˚˚ 
Pop
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ "
EvaluateHavingClause
˛˛ )
(
˛˛) *
ParseTreeNode
˛˛* 7
parseTreeNode
˛˛8 E
)
˛˛E F
{
ˇˇ 	
if
ÄÄ 
(
ÄÄ 
parseTreeNode
ÄÄ 
.
ÄÄ 

ChildNodes
ÄÄ (
.
ÄÄ( )
Count
ÄÄ) .
==
ÄÄ/ 1
$num
ÄÄ2 3
)
ÄÄ3 4
{
ÅÅ 
return
ÇÇ 
;
ÇÇ 
}
ÉÉ 
_builder
ÖÖ 
.
ÖÖ 
Clear
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
_modes
áá 
.
áá 
Push
áá 
(
áá 
FormattingModes
áá '
.
áá' (
SelectClause
áá( 4
)
áá4 5
;
áá5 6 
EvaluateExpression
àà 
(
àà 
parseTreeNode
àà ,
.
àà, -

ChildNodes
àà- 7
[
àà7 8
$num
àà8 9
]
àà9 :
)
àà: ;
;
àà; <
_having
ää 
=
ää 
_builder
ää 
.
ää 
ToString
ää '
(
ää' (
)
ää( )
;
ää) *
_modes
åå 
.
åå 
Pop
åå 
(
åå 
)
åå 
;
åå 
}
çç 	
private
èè 
void
èè !
EvaluateGroupClause
èè (
(
èè( )
ParseTreeNode
èè) 6
parseTreeNode
èè7 D
)
èèD E
{
êê 	
if
ëë 
(
ëë 
parseTreeNode
ëë 
.
ëë 

ChildNodes
ëë (
.
ëë( )
Count
ëë) .
==
ëë/ 1
$num
ëë2 3
)
ëë3 4
{
íí 
return
ìì 
;
ìì 
}
îî 
_builder
ññ 
.
ññ 
Clear
ññ 
(
ññ 
)
ññ 
;
ññ 
var
òò 
idList
òò 
=
òò 
parseTreeNode
òò &
.
òò& '

ChildNodes
òò' 1
[
òò1 2
$num
òò2 3
]
òò3 4
;
òò4 5
_modes
öö 
.
öö 
Push
öö 
(
öö 
FormattingModes
öö '
.
öö' (
SelectClause
öö( 4
)
öö4 5
;
öö5 6
for
õõ 
(
õõ 
var
õõ 
i
õõ 
=
õõ 
$num
õõ 
;
õõ 
i
õõ 
<
õõ 
idList
õõ  &
.
õõ& '

ChildNodes
õõ' 1
.
õõ1 2
Count
õõ2 7
;
õõ7 8
i
õõ9 :
++
õõ: <
)
õõ< =
{
úú 
var
ùù 
columnSource
ùù  
=
ùù! "
idList
ùù# )
.
ùù) *

ChildNodes
ùù* 4
[
ùù4 5
i
ùù5 6
]
ùù6 7
;
ùù7 8
if
üü 
(
üü 
i
üü 
>
üü 
$num
üü 
)
üü 
{
†† 
_builder
°° 
.
°° 
Append
°° #
(
°°# $
$str
°°$ (
)
°°( )
;
°°) *
}
¢¢ 
if
§§ 
(
§§ 
columnSource
§§  
.
§§  !

ChildNodes
§§! +
[
§§+ ,
$num
§§, -
]
§§- .
.
§§. /
Term
§§/ 3
.
§§3 4
Name
§§4 8
==
§§9 ;
$str
§§< @
)
§§@ A
{
•• 

EvaluateId
¶¶ 
(
¶¶ 
columnSource
¶¶ +
.
¶¶+ ,

ChildNodes
¶¶, 6
[
¶¶6 7
$num
¶¶7 8
]
¶¶8 9
)
¶¶9 :
;
¶¶: ;
}
ßß 
else
®® 
{
©© 
EvaluateFunCall
™™ #
(
™™# $
columnSource
™™$ 0
.
™™0 1

ChildNodes
™™1 ;
[
™™; <
$num
™™< =
]
™™= >
)
™™> ?
;
™™? @
}
´´ 
}
¨¨ 
_groupBy
ÆÆ 
=
ÆÆ 
_builder
ÆÆ 
.
ÆÆ  
ToString
ÆÆ  (
(
ÆÆ( )
)
ÆÆ) *
;
ÆÆ* +
_modes
∞∞ 
.
∞∞ 
Pop
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
}
±± 	
private
≥≥ 
void
≥≥ !
EvaluateWhereClause
≥≥ (
(
≥≥( )
ParseTreeNode
≥≥) 6
parseTreeNode
≥≥7 D
)
≥≥D E
{
¥¥ 	
if
µµ 
(
µµ 
parseTreeNode
µµ 
.
µµ 

ChildNodes
µµ (
.
µµ( )
Count
µµ) .
==
µµ/ 1
$num
µµ2 3
)
µµ3 4
{
∂∂ 
return
∏∏ 
;
∏∏ 
}
ππ 
_builder
ªª 
.
ªª 
Clear
ªª 
(
ªª 
)
ªª 
;
ªª 
_modes
ΩΩ 
.
ΩΩ 
Push
ΩΩ 
(
ΩΩ 
FormattingModes
ΩΩ '
.
ΩΩ' (
SelectClause
ΩΩ( 4
)
ΩΩ4 5
;
ΩΩ5 6 
EvaluateExpression
ææ 
(
ææ 
parseTreeNode
ææ ,
.
ææ, -

ChildNodes
ææ- 7
[
ææ7 8
$num
ææ8 9
]
ææ9 :
)
ææ: ;
;
ææ; <
_where
¿¿ 
=
¿¿ 
_builder
¿¿ 
.
¿¿ 
ToString
¿¿ &
(
¿¿& '
)
¿¿' (
;
¿¿( )
_modes
¬¬ 
.
¬¬ 
Pop
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
}
√√ 	
private
≈≈ 
void
≈≈  
EvaluateExpression
≈≈ '
(
≈≈' (
ParseTreeNode
≈≈( 5
parseTreeNode
≈≈6 C
)
≈≈C D
{
∆∆ 	
switch
«« 
(
«« 
parseTreeNode
«« !
.
««! "
Term
««" &
.
««& '
Name
««' +
)
««+ ,
{
»» 
case
…… 
$str
…… 
:
…… 
_builder
   
.
   
Append
   #
(
  # $
parseTreeNode
  $ 1
.
  1 2

ChildNodes
  2 <
[
  < =
$num
  = >
]
  > ?
.
  ? @
Term
  @ D
.
  D E
Name
  E I
)
  I J
;
  J K 
EvaluateExpression
ÀÀ &
(
ÀÀ& '
parseTreeNode
ÀÀ' 4
.
ÀÀ4 5

ChildNodes
ÀÀ5 ?
[
ÀÀ? @
$num
ÀÀ@ A
]
ÀÀA B
)
ÀÀB C
;
ÀÀC D
break
ÃÃ 
;
ÃÃ 
case
ÕÕ 
$str
ÕÕ 
:
ÕÕ  
EvaluateExpression
ŒŒ &
(
ŒŒ& '
parseTreeNode
ŒŒ' 4
.
ŒŒ4 5

ChildNodes
ŒŒ5 ?
[
ŒŒ? @
$num
ŒŒ@ A
]
ŒŒA B
)
ŒŒB C
;
ŒŒC D
_builder
œœ 
.
œœ 
Append
œœ #
(
œœ# $
$str
œœ$ '
)
œœ' (
;
œœ( )
_builder
–– 
.
–– 
Append
–– #
(
––# $
parseTreeNode
––$ 1
.
––1 2

ChildNodes
––2 <
[
––< =
$num
––= >
]
––> ?
.
––? @

ChildNodes
––@ J
[
––J K
$num
––K L
]
––L M
.
––M N
Term
––N R
.
––R S
Name
––S W
)
––W X
.
––X Y
Append
––Y _
(
––_ `
$str
––` c
)
––c d
;
––d e 
EvaluateExpression
—— &
(
——& '
parseTreeNode
——' 4
.
——4 5

ChildNodes
——5 ?
[
——? @
$num
——@ A
]
——A B
)
——B C
;
——C D
break
““ 
;
““ 
case
”” 
$str
”” "
:
””" # 
EvaluateExpression
‘‘ &
(
‘‘& '
parseTreeNode
‘‘' 4
.
‘‘4 5

ChildNodes
‘‘5 ?
[
‘‘? @
$num
‘‘@ A
]
‘‘A B
)
‘‘B C
;
‘‘C D
_builder
’’ 
.
’’ 
Append
’’ #
(
’’# $
$str
’’$ '
)
’’' (
;
’’( )
if
÷÷ 
(
÷÷ 
parseTreeNode
÷÷ %
.
÷÷% &

ChildNodes
÷÷& 0
[
÷÷0 1
$num
÷÷1 2
]
÷÷2 3
.
÷÷3 4

ChildNodes
÷÷4 >
.
÷÷> ?
Count
÷÷? D
>
÷÷E F
$num
÷÷G H
)
÷÷H I
{
◊◊ 
_builder
ÿÿ  
.
ÿÿ  !
Append
ÿÿ! '
(
ÿÿ' (
$str
ÿÿ( .
)
ÿÿ. /
;
ÿÿ/ 0
}
ŸŸ 
_builder
⁄⁄ 
.
⁄⁄ 
Append
⁄⁄ #
(
⁄⁄# $
$str
⁄⁄$ .
)
⁄⁄. /
;
⁄⁄/ 0 
EvaluateExpression
€€ &
(
€€& '
parseTreeNode
€€' 4
.
€€4 5

ChildNodes
€€5 ?
[
€€? @
$num
€€@ A
]
€€A B
)
€€B C
;
€€C D
_builder
‹‹ 
.
‹‹ 
Append
‹‹ #
(
‹‹# $
$str
‹‹$ '
)
‹‹' (
;
‹‹( )
_builder
›› 
.
›› 
Append
›› #
(
››# $
$str
››$ *
)
››* +
;
››+ , 
EvaluateExpression
ﬁﬁ &
(
ﬁﬁ& '
parseTreeNode
ﬁﬁ' 4
.
ﬁﬁ4 5

ChildNodes
ﬁﬁ5 ?
[
ﬁﬁ? @
$num
ﬁﬁ@ A
]
ﬁﬁA B
)
ﬁﬁB C
;
ﬁﬁC D
break
ﬂﬂ 
;
ﬂﬂ 
case
‡‡ 
$str
‡‡ 
:
‡‡  
EvaluateExpression
·· &
(
··& '
parseTreeNode
··' 4
.
··4 5

ChildNodes
··5 ?
[
··? @
$num
··@ A
]
··A B
)
··B C
;
··C D
_builder
‚‚ 
.
‚‚ 
Append
‚‚ #
(
‚‚# $
$str
‚‚$ '
)
‚‚' (
;
‚‚( )
if
„„ 
(
„„ 
parseTreeNode
„„ %
.
„„% &

ChildNodes
„„& 0
[
„„0 1
$num
„„1 2
]
„„2 3
.
„„3 4

ChildNodes
„„4 >
.
„„> ?
Count
„„? D
>
„„E F
$num
„„G H
)
„„H I
{
‰‰ 
_builder
ÂÂ  
.
ÂÂ  !
Append
ÂÂ! '
(
ÂÂ' (
$str
ÂÂ( .
)
ÂÂ. /
;
ÂÂ/ 0
}
ÊÊ 
_builder
ÁÁ 
.
ÁÁ 
Append
ÁÁ #
(
ÁÁ# $
$str
ÁÁ$ *
)
ÁÁ* +
;
ÁÁ+ ,
EvaluateInArgs
ËË "
(
ËË" #
parseTreeNode
ËË# 0
.
ËË0 1

ChildNodes
ËË1 ;
[
ËË; <
$num
ËË< =
]
ËË= >
)
ËË> ?
;
ËË? @
_builder
ÈÈ 
.
ÈÈ 
Append
ÈÈ #
(
ÈÈ# $
$str
ÈÈ$ '
)
ÈÈ' (
;
ÈÈ( )
break
ÍÍ 
;
ÍÍ 
case
ÏÏ 
$str
ÏÏ 
:
ÏÏ 

EvaluateId
ÌÌ 
(
ÌÌ 
parseTreeNode
ÌÌ ,
)
ÌÌ, -
;
ÌÌ- .
break
ÓÓ 
;
ÓÓ 
case
ÔÔ 
$str
ÔÔ 
:
ÔÔ 
_builder
 
.
 
Append
 #
(
# $
_dialect
$ ,
.
, -
GetSqlValue
- 8
(
8 9
parseTreeNode
9 F
.
F G

ChildNodes
G Q
[
Q R
$num
R S
]
S T
.
T U
Term
U Y
.
Y Z
Name
Z ^
==
_ a
$str
b h
)
h i
)
i j
;
j k
break
ÒÒ 
;
ÒÒ 
case
ÚÚ 
$str
ÚÚ 
:
ÚÚ 
_builder
ÛÛ 
.
ÛÛ 
Append
ÛÛ #
(
ÛÛ# $
_dialect
ÛÛ$ ,
.
ÛÛ, -
GetSqlValue
ÛÛ- 8
(
ÛÛ8 9
parseTreeNode
ÛÛ9 F
.
ÛÛF G
Token
ÛÛG L
.
ÛÛL M
ValueString
ÛÛM X
)
ÛÛX Y
)
ÛÛY Z
;
ÛÛZ [
break
ÙÙ 
;
ÙÙ 
case
ıı 
$str
ıı 
:
ıı 
_builder
ˆˆ 
.
ˆˆ 
Append
ˆˆ #
(
ˆˆ# $
_dialect
ˆˆ$ ,
.
ˆˆ, -
GetSqlValue
ˆˆ- 8
(
ˆˆ8 9
parseTreeNode
ˆˆ9 F
.
ˆˆF G
Token
ˆˆG L
.
ˆˆL M
Value
ˆˆM R
)
ˆˆR S
)
ˆˆS T
;
ˆˆT U
break
˜˜ 
;
˜˜ 
case
¯¯ 
$str
¯¯ 
:
¯¯ 
EvaluateFunCall
˘˘ #
(
˘˘# $
parseTreeNode
˘˘$ 1
)
˘˘1 2
;
˘˘2 3
break
˙˙ 
;
˙˙ 
case
˚˚ 
$str
˚˚ 
:
˚˚  
_builder
¸¸ 
.
¸¸ 
Append
¸¸ #
(
¸¸# $
$str
¸¸$ '
)
¸¸' (
;
¸¸( ) 
EvaluateExpression
˝˝ &
(
˝˝& '
parseTreeNode
˝˝' 4
.
˝˝4 5

ChildNodes
˝˝5 ?
[
˝˝? @
$num
˝˝@ A
]
˝˝A B
)
˝˝B C
;
˝˝C D
_builder
˛˛ 
.
˛˛ 
Append
˛˛ #
(
˛˛# $
$str
˛˛$ '
)
˛˛' (
;
˛˛( )
break
ˇˇ 
;
ˇˇ 
case
ÄÄ 
$str
ÄÄ $
:
ÄÄ$ %
_builder
ÅÅ 
.
ÅÅ 
Append
ÅÅ #
(
ÅÅ# $
$str
ÅÅ$ '
)
ÅÅ' (
;
ÅÅ( )
_builder
ÇÇ 
.
ÇÇ 
Append
ÇÇ #
(
ÇÇ# $%
EvaluateSelectStatement
ÇÇ$ ;
(
ÇÇ; <
parseTreeNode
ÇÇ< I
.
ÇÇI J

ChildNodes
ÇÇJ T
[
ÇÇT U
$num
ÇÇU V
]
ÇÇV W
)
ÇÇW X
)
ÇÇX Y
;
ÇÇY Z
_builder
ÉÉ 
.
ÉÉ 
Append
ÉÉ #
(
ÉÉ# $
$str
ÉÉ$ '
)
ÉÉ' (
;
ÉÉ( )
break
ÑÑ 
;
ÑÑ 
case
ÖÖ 
$str
ÖÖ  
:
ÖÖ  !
var
ÜÜ 
name
ÜÜ 
=
ÜÜ 
parseTreeNode
ÜÜ ,
.
ÜÜ, -

ChildNodes
ÜÜ- 7
[
ÜÜ7 8
$num
ÜÜ8 9
]
ÜÜ9 :
.
ÜÜ: ;

ChildNodes
ÜÜ; E
[
ÜÜE F
$num
ÜÜF G
]
ÜÜG H
.
ÜÜH I
Token
ÜÜI N
.
ÜÜN O
ValueString
ÜÜO Z
;
ÜÜZ [
_builder
àà 
.
àà 
Append
àà #
(
àà# $
$str
àà$ '
+
àà( )
name
àà* .
)
àà. /
;
àà/ 0
if
ää 
(
ää 
_parameters
ää #
!=
ää$ &
null
ää' +
&&
ää, .
!
ää/ 0
_parameters
ää0 ;
.
ää; <
ContainsKey
ää< G
(
ääG H
name
ääH L
)
ääL M
)
ääM N
{
ãã 
if
çç 
(
çç 
parseTreeNode
çç )
.
çç) *

ChildNodes
çç* 4
.
çç4 5
Count
çç5 :
<
çç; <
$num
çç= >
)
çç> ?
{
éé 
throw
èè !
new
èè" % 
SqlParserException
èè& 8
(
èè8 9
$str
èè9 O
+
èèP Q
name
èèR V
)
èèV W
;
èèW X
}
êê 
else
ëë 
{
íí 
if
ìì 
(
ìì  
parseTreeNode
ìì  -
.
ìì- .

ChildNodes
ìì. 8
[
ìì8 9
$num
ìì9 :
]
ìì: ;
.
ìì; <
Token
ìì< A
!=
ììB D
null
ììE I
)
ììI J
{
îî 
_parameters
ïï  +
[
ïï+ ,
name
ïï, 0
]
ïï0 1
=
ïï2 3
parseTreeNode
ïï4 A
.
ïïA B

ChildNodes
ïïB L
[
ïïL M
$num
ïïM N
]
ïïN O
.
ïïO P
Token
ïïP U
.
ïïU V
Value
ïïV [
;
ïï[ \
}
ññ 
else
óó  
{
òò 
if
öö  "
(
öö# $
parseTreeNode
öö$ 1
.
öö1 2

ChildNodes
öö2 <
[
öö< =
$num
öö= >
]
öö> ?
.
öö? @

ChildNodes
öö@ J
[
ööJ K
$num
ööK L
]
ööL M
.
ööM N
Token
ööN S
!=
ööT V
null
ööW [
)
öö[ \
{
õõ  !
_parameters
úú$ /
[
úú/ 0
name
úú0 4
]
úú4 5
=
úú6 7
parseTreeNode
úú8 E
.
úúE F

ChildNodes
úúF P
[
úúP Q
$num
úúQ R
]
úúR S
.
úúS T

ChildNodes
úúT ^
[
úú^ _
$num
úú_ `
]
úú` a
.
úúa b
Token
úúb g
.
úúg h
Value
úúh m
;
úúm n
}
ùù  !
else
ûû  $
{
üü  !
throw
††$ )
new
††* - 
SqlParserException
††. @
(
††@ A
$str
††A e
+
††f g
name
††h l
)
††l m
;
††m n
}
°°  !
}
¢¢ 
}
££ 
}
§§ 
break
¶¶ 
;
¶¶ 
case
ßß 
$str
ßß 
:
ßß 
_builder
®® 
.
®® 
Append
®® #
(
®®# $
$str
®®$ '
)
®®' (
;
®®( )
break
©© 
;
©© 
}
™™ 
}
´´ 	
private
≠≠ 
void
≠≠ 
EvaluateInArgs
≠≠ #
(
≠≠# $
ParseTreeNode
≠≠$ 1
inArgs
≠≠2 8
)
≠≠8 9
{
ÆÆ 	
if
ØØ 
(
ØØ 
inArgs
ØØ 
.
ØØ 

ChildNodes
ØØ !
[
ØØ! "
$num
ØØ" #
]
ØØ# $
.
ØØ$ %
Term
ØØ% )
.
ØØ) *
Name
ØØ* .
==
ØØ/ 1
$str
ØØ2 C
)
ØØC D
{
∞∞ 
_builder
≤≤ 
.
≤≤ 
Append
≤≤ 
(
≤≤  %
EvaluateSelectStatement
≤≤  7
(
≤≤7 8
inArgs
≤≤8 >
.
≤≤> ?

ChildNodes
≤≤? I
[
≤≤I J
$num
≤≤J K
]
≤≤K L
)
≤≤L M
)
≤≤M N
;
≤≤N O
}
≥≥ 
else
¥¥ 
{
µµ $
EvaluateExpressionList
∑∑ &
(
∑∑& '
inArgs
∑∑' -
.
∑∑- .

ChildNodes
∑∑. 8
[
∑∑8 9
$num
∑∑9 :
]
∑∑: ;
)
∑∑; <
;
∑∑< =
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª 
EvaluateFunCall
ªª $
(
ªª$ %
ParseTreeNode
ªª% 2
funCall
ªª3 :
)
ªª: ;
{
ºº 	
var
ΩΩ 
funcName
ΩΩ 
=
ΩΩ 
funCall
ΩΩ "
.
ΩΩ" #

ChildNodes
ΩΩ# -
[
ΩΩ- .
$num
ΩΩ. /
]
ΩΩ/ 0
.
ΩΩ0 1

ChildNodes
ΩΩ1 ;
[
ΩΩ; <
$num
ΩΩ< =
]
ΩΩ= >
.
ΩΩ> ?
Token
ΩΩ? D
.
ΩΩD E
ValueString
ΩΩE P
;
ΩΩP Q
IList
ææ 
<
ææ 
string
ææ 
>
ææ 
	arguments
ææ #
;
ææ# $
var
øø 
tempBuilder
øø 
=
øø 
_builder
øø &
;
øø& '
if
¡¡ 
(
¡¡ 
funCall
¡¡ 
.
¡¡ 

ChildNodes
¡¡ "
[
¡¡" #
$num
¡¡# $
]
¡¡$ %
.
¡¡% &

ChildNodes
¡¡& 0
[
¡¡0 1
$num
¡¡1 2
]
¡¡2 3
.
¡¡3 4
Term
¡¡4 8
.
¡¡8 9
Name
¡¡9 =
==
¡¡> @
$str
¡¡A R
)
¡¡R S
{
¬¬ 
_builder
ƒƒ 
=
ƒƒ 
new
ƒƒ 
StringBuilder
ƒƒ ,
(
ƒƒ, -
)
ƒƒ- .
;
ƒƒ. /
_builder
≈≈ 
.
≈≈ 
Append
≈≈ 
(
≈≈  %
EvaluateSelectStatement
≈≈  7
(
≈≈7 8
funCall
≈≈8 ?
.
≈≈? @

ChildNodes
≈≈@ J
[
≈≈J K
$num
≈≈K L
]
≈≈L M
.
≈≈M N

ChildNodes
≈≈N X
[
≈≈X Y
$num
≈≈Y Z
]
≈≈Z [
)
≈≈[ \
)
≈≈\ ]
;
≈≈] ^
	arguments
∆∆ 
=
∆∆ 
new
∆∆ 
string
∆∆  &
[
∆∆& '
]
∆∆' (
{
∆∆) *
_builder
∆∆+ 3
.
∆∆3 4
ToString
∆∆4 <
(
∆∆< =
)
∆∆= >
}
∆∆? @
;
∆∆@ A
_builder
«« 
=
«« 
tempBuilder
«« &
;
««& '
}
»» 
else
…… 
if
…… 
(
…… 
funCall
…… 
.
…… 

ChildNodes
…… '
[
……' (
$num
……( )
]
……) *
.
……* +

ChildNodes
……+ 5
[
……5 6
$num
……6 7
]
……7 8
.
……8 9
Term
……9 =
.
……= >
Name
……> B
==
……C E
$str
……F I
)
……I J
{
   
	arguments
ÀÀ 
=
ÀÀ 
new
ÀÀ 
string
ÀÀ  &
[
ÀÀ& '
]
ÀÀ' (
{
ÀÀ) *
$str
ÀÀ+ .
}
ÀÀ/ 0
;
ÀÀ0 1
}
ÃÃ 
else
ÕÕ 
{
ŒŒ 
	arguments
–– 
=
–– 
new
–– 
List
––  $
<
––$ %
string
––% +
>
––+ ,
(
––, -
)
––- .
;
––. /
for
—— 
(
—— 
var
—— 
i
—— 
=
—— 
$num
—— 
;
—— 
i
——  !
<
——" #
funCall
——$ +
.
——+ ,

ChildNodes
——, 6
[
——6 7
$num
——7 8
]
——8 9
.
——9 :

ChildNodes
——: D
[
——D E
$num
——E F
]
——F G
.
——G H

ChildNodes
——H R
.
——R S
Count
——S X
;
——X Y
i
——Z [
++
——[ ]
)
——] ^
{
““ 
_builder
”” 
=
”” 
new
”” "
StringBuilder
””# 0
(
””0 1
)
””1 2
;
””2 3 
EvaluateExpression
‘‘ &
(
‘‘& '
funCall
‘‘' .
.
‘‘. /

ChildNodes
‘‘/ 9
[
‘‘9 :
$num
‘‘: ;
]
‘‘; <
.
‘‘< =

ChildNodes
‘‘= G
[
‘‘G H
$num
‘‘H I
]
‘‘I J
.
‘‘J K

ChildNodes
‘‘K U
[
‘‘U V
i
‘‘V W
]
‘‘W X
)
‘‘X Y
;
‘‘Y Z
	arguments
’’ 
.
’’ 
Add
’’ !
(
’’! "
_builder
’’" *
.
’’* +
ToString
’’+ 3
(
’’3 4
)
’’4 5
)
’’5 6
;
’’6 7
_builder
÷÷ 
=
÷÷ 
tempBuilder
÷÷ *
;
÷÷* +
}
◊◊ 
}
ÿÿ 
_builder
⁄⁄ 
.
⁄⁄ 
Append
⁄⁄ 
(
⁄⁄ 
_dialect
⁄⁄ $
.
⁄⁄$ %
RenderMethod
⁄⁄% 1
(
⁄⁄1 2
funcName
⁄⁄2 :
,
⁄⁄: ;
	arguments
⁄⁄< E
.
⁄⁄E F
ToArray
⁄⁄F M
(
⁄⁄M N
)
⁄⁄N O
)
⁄⁄O P
)
⁄⁄P Q
;
⁄⁄Q R
}
€€ 	
private
›› 
void
›› $
EvaluateExpressionList
›› +
(
››+ ,
ParseTreeNode
››, 9
expressionList
››: H
)
››H I
{
ﬁﬁ 	
for
ﬂﬂ 
(
ﬂﬂ 
var
ﬂﬂ 
i
ﬂﬂ 
=
ﬂﬂ 
$num
ﬂﬂ 
;
ﬂﬂ 
i
ﬂﬂ 
<
ﬂﬂ 
expressionList
ﬂﬂ  .
.
ﬂﬂ. /

ChildNodes
ﬂﬂ/ 9
.
ﬂﬂ9 :
Count
ﬂﬂ: ?
;
ﬂﬂ? @
i
ﬂﬂA B
++
ﬂﬂB D
)
ﬂﬂD E
{
‡‡ 
if
·· 
(
·· 
i
·· 
>
·· 
$num
·· 
)
·· 
{
‚‚ 
_builder
„„ 
.
„„ 
Append
„„ #
(
„„# $
$str
„„$ (
)
„„( )
;
„„) *
}
‰‰  
EvaluateExpression
ÊÊ "
(
ÊÊ" #
expressionList
ÊÊ# 1
.
ÊÊ1 2

ChildNodes
ÊÊ2 <
[
ÊÊ< =
i
ÊÊ= >
]
ÊÊ> ?
)
ÊÊ? @
;
ÊÊ@ A
}
ÁÁ 
}
ËË 	
private
ÍÍ 
void
ÍÍ  
EvaluateFromClause
ÍÍ '
(
ÍÍ' (
ParseTreeNode
ÍÍ( 5
parseTreeNode
ÍÍ6 C
)
ÍÍC D
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
parseTreeNode
ÏÏ 
.
ÏÏ 

ChildNodes
ÏÏ (
.
ÏÏ( )
Count
ÏÏ) .
==
ÏÏ/ 1
$num
ÏÏ2 3
)
ÏÏ3 4
{
ÌÌ 
return
ÔÔ 
;
ÔÔ 
}
 
_builder
ÚÚ 
.
ÚÚ 
Clear
ÚÚ 
(
ÚÚ 
)
ÚÚ 
;
ÚÚ 
var
ÙÙ 
	aliasList
ÙÙ 
=
ÙÙ 
parseTreeNode
ÙÙ )
.
ÙÙ) *

ChildNodes
ÙÙ* 4
[
ÙÙ4 5
$num
ÙÙ5 6
]
ÙÙ6 7
;
ÙÙ7 8
_modes
ˆˆ 
.
ˆˆ 
Push
ˆˆ 
(
ˆˆ 
FormattingModes
ˆˆ '
.
ˆˆ' (

FromClause
ˆˆ( 2
)
ˆˆ2 3
;
ˆˆ3 4
EvaluateAliasList
˜˜ 
(
˜˜ 
	aliasList
˜˜ '
)
˜˜' (
;
˜˜( )
_modes
¯¯ 
.
¯¯ 
Pop
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
var
˙˙ 
joins
˙˙ 
=
˙˙ 
parseTreeNode
˙˙ %
.
˙˙% &

ChildNodes
˙˙& 0
[
˙˙0 1
$num
˙˙1 2
]
˙˙2 3
;
˙˙3 4
if
˝˝ 
(
˝˝ 
joins
˝˝ 
.
˝˝ 

ChildNodes
˝˝  
.
˝˝  !
Count
˝˝! &
!=
˝˝' )
$num
˝˝* +
)
˝˝+ ,
{
˛˛ 
foreach
ˇˇ 
(
ˇˇ 
var
ˇˇ 
joinStatement
ˇˇ *
in
ˇˇ+ -
joins
ˇˇ. 3
.
ˇˇ3 4

ChildNodes
ˇˇ4 >
)
ˇˇ> ?
{
ÄÄ 
_modes
ÅÅ 
.
ÅÅ 
Push
ÅÅ 
(
ÅÅ  
FormattingModes
ÅÅ  /
.
ÅÅ/ 0

FromClause
ÅÅ0 :
)
ÅÅ: ;
;
ÅÅ; <
var
ÉÉ 
jointKindOpt
ÉÉ $
=
ÉÉ% &
joinStatement
ÉÉ' 4
.
ÉÉ4 5

ChildNodes
ÉÉ5 ?
[
ÉÉ? @
$num
ÉÉ@ A
]
ÉÉA B
;
ÉÉB C
if
ÖÖ 
(
ÖÖ 
jointKindOpt
ÖÖ $
.
ÖÖ$ %

ChildNodes
ÖÖ% /
.
ÖÖ/ 0
Count
ÖÖ0 5
>
ÖÖ6 7
$num
ÖÖ8 9
)
ÖÖ9 :
{
ÜÜ 
_builder
áá  
.
áá  !
Append
áá! '
(
áá' (
$str
áá( +
)
áá+ ,
.
áá, -
Append
áá- 3
(
áá3 4
jointKindOpt
áá4 @
.
áá@ A

ChildNodes
ááA K
[
ááK L
$num
ááL M
]
ááM N
.
ááN O
Term
ááO S
.
ááS T
Name
ááT X
)
ááX Y
;
ááY Z
}
àà 
_builder
ää 
.
ää 
Append
ää #
(
ää# $
$str
ää$ ,
)
ää, -
;
ää- .
EvaluateAliasList
åå %
(
åå% &
joinStatement
åå& 3
.
åå3 4

ChildNodes
åå4 >
[
åå> ?
$num
åå? @
]
åå@ A
)
ååA B
;
ååB C
_builder
éé 
.
éé 
Append
éé #
(
éé# $
$str
éé$ *
)
éé* +
;
éé+ ,
var
êê 
joinConditions
êê &
=
êê' (
joinStatement
êê) 6
.
êê6 7

ChildNodes
êê7 A
[
êêA B
$num
êêB C
]
êêC D
.
êêD E

ChildNodes
êêE O
;
êêO P
for
íí 
(
íí 
var
íí 
i
íí 
=
íí  
$num
íí! "
;
íí" #
i
íí$ %
<
íí& '
joinConditions
íí( 6
.
íí6 7
Count
íí7 <
;
íí< =
i
íí> ?
++
íí? A
)
ííA B
{
ìì 
if
îî 
(
îî 
i
îî 
>
îî 
$num
îî  !
)
îî! "
{
ïï 
_builder
ññ $
.
ññ$ %
Append
ññ% +
(
ññ+ ,
$str
ññ, 3
)
ññ3 4
;
ññ4 5
}
óó 
_modes
òò 
.
òò 
Push
òò #
(
òò# $
FormattingModes
òò$ 3
.
òò3 4
SelectClause
òò4 @
)
òò@ A
;
òòA B
var
ôô 
joinCondition
ôô )
=
ôô* +
joinConditions
ôô, :
[
ôô: ;
i
ôô; <
]
ôô< =
;
ôô= > 
EvaluateExpression
öö *
(
öö* +
joinCondition
öö+ 8
.
öö8 9

ChildNodes
öö9 C
[
ööC D
$num
ööD E
]
ööE F
.
ööF G

ChildNodes
ööG Q
[
ööQ R
$num
ööR S
]
ööS T
)
ööT U
;
ööU V
_builder
õõ  
.
õõ  !
Append
õõ! '
(
õõ' (
$str
õõ( -
)
õõ- .
;
õõ. / 
EvaluateExpression
úú *
(
úú* +
joinCondition
úú+ 8
.
úú8 9

ChildNodes
úú9 C
[
úúC D
$num
úúD E
]
úúE F
.
úúF G

ChildNodes
úúG Q
[
úúQ R
$num
úúR S
]
úúS T
)
úúT U
;
úúU V
_modes
ùù 
.
ùù 
Pop
ùù "
(
ùù" #
)
ùù# $
;
ùù$ %
}
ûû 
}
üü 
}
†† 
_from
¢¢ 
=
¢¢ 
_builder
¢¢ 
.
¢¢ 
ToString
¢¢ %
(
¢¢% &
)
¢¢& '
;
¢¢' (
}
££ 	
private
•• 
void
•• 
EvaluateAliasList
•• &
(
••& '
ParseTreeNode
••' 4
	aliasList
••5 >
)
••> ?
{
¶¶ 	
for
ßß 
(
ßß 
var
ßß 
i
ßß 
=
ßß 
$num
ßß 
;
ßß 
i
ßß 
<
ßß 
	aliasList
ßß  )
.
ßß) *

ChildNodes
ßß* 4
.
ßß4 5
Count
ßß5 :
;
ßß: ;
i
ßß< =
++
ßß= ?
)
ßß? @
{
®® 
var
©© 
	aliasItem
©© 
=
©© 
	aliasList
©©  )
.
©©) *

ChildNodes
©©* 4
[
©©4 5
i
©©5 6
]
©©6 7
;
©©7 8
if
´´ 
(
´´ 
i
´´ 
>
´´ 
$num
´´ 
)
´´ 
{
¨¨ 
_builder
≠≠ 
.
≠≠ 
Append
≠≠ #
(
≠≠# $
$str
≠≠$ (
)
≠≠( )
;
≠≠) *
}
ÆÆ 

EvaluateId
∞∞ 
(
∞∞ 
	aliasItem
∞∞ $
.
∞∞$ %

ChildNodes
∞∞% /
[
∞∞/ 0
$num
∞∞0 1
]
∞∞1 2
)
∞∞2 3
;
∞∞3 4
if
≤≤ 
(
≤≤ 
	aliasItem
≤≤ 
.
≤≤ 

ChildNodes
≤≤ (
.
≤≤( )
Count
≤≤) .
>
≤≤/ 0
$num
≤≤1 2
)
≤≤2 3
{
≥≥ #
EvaluateAliasOptional
¥¥ )
(
¥¥) *
	aliasItem
¥¥* 3
.
¥¥3 4

ChildNodes
¥¥4 >
[
¥¥> ?
$num
¥¥? @
]
¥¥@ A
)
¥¥A B
;
¥¥B C
}
µµ 
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ "
EvaluateSelectorList
ππ )
(
ππ) *
ParseTreeNode
ππ* 7
parseTreeNode
ππ8 E
)
ππE F
{
∫∫ 	
var
ªª 
selectorList
ªª 
=
ªª 
parseTreeNode
ªª ,
.
ªª, -

ChildNodes
ªª- 7
[
ªª7 8
$num
ªª8 9
]
ªª9 :
;
ªª: ;
if
ΩΩ 
(
ΩΩ 
selectorList
ΩΩ 
.
ΩΩ 
Term
ΩΩ !
.
ΩΩ! "
Name
ΩΩ" &
==
ΩΩ' )
$str
ΩΩ* -
)
ΩΩ- .
{
ææ 
_builder
øø 
.
øø 
Append
øø 
(
øø  
$str
øø  #
)
øø# $
;
øø$ %
}
¿¿ 
else
¡¡ 
{
¬¬ 
_modes
√√ 
.
√√ 
Push
√√ 
(
√√ 
FormattingModes
√√ +
.
√√+ ,
SelectClause
√√, 8
)
√√8 9
;
√√9 :
for
∆∆ 
(
∆∆ 
var
∆∆ 
i
∆∆ 
=
∆∆ 
$num
∆∆ 
;
∆∆ 
i
∆∆  !
<
∆∆" #
selectorList
∆∆$ 0
.
∆∆0 1

ChildNodes
∆∆1 ;
.
∆∆; <
Count
∆∆< A
;
∆∆A B
i
∆∆C D
++
∆∆D F
)
∆∆F G
{
«« 
if
»» 
(
»» 
i
»» 
>
»» 
$num
»» 
)
»» 
{
…… 
_builder
    
.
    !
Append
  ! '
(
  ' (
$str
  ( ,
)
  , -
;
  - .
}
ÀÀ 
var
ÕÕ 

columnItem
ÕÕ "
=
ÕÕ# $
selectorList
ÕÕ% 1
.
ÕÕ1 2

ChildNodes
ÕÕ2 <
[
ÕÕ< =
i
ÕÕ= >
]
ÕÕ> ?
;
ÕÕ? @
var
–– 
columnSource
–– $
=
––% &

columnItem
––' 1
.
––1 2

ChildNodes
––2 <
[
––< =
$num
––= >
]
––> ?
;
––? @
var
—— 
funCallOrId
—— #
=
——$ %
columnSource
——& 2
.
——2 3

ChildNodes
——3 =
[
——= >
$num
——> ?
]
——? @
;
——@ A
if
““ 
(
““ 
funCallOrId
““ #
.
““# $
Term
““$ (
.
““( )
Name
““) -
==
““. 0
$str
““1 5
)
““5 6
{
”” 

EvaluateId
‘‘ "
(
‘‘" #
funCallOrId
‘‘# .
)
‘‘. /
;
‘‘/ 0
}
’’ 
else
÷÷ 
{
◊◊ 
EvaluateFunCall
ÿÿ '
(
ÿÿ' (
funCallOrId
ÿÿ( 3
)
ÿÿ3 4
;
ÿÿ4 5
}
ŸŸ 
if
€€ 
(
€€ 

columnItem
€€ "
.
€€" #

ChildNodes
€€# -
.
€€- .
Count
€€. 3
>
€€4 5
$num
€€6 7
)
€€7 8
{
‹‹ #
EvaluateAliasOptional
ﬁﬁ -
(
ﬁﬁ- .

columnItem
ﬁﬁ. 8
.
ﬁﬁ8 9

ChildNodes
ﬁﬁ9 C
[
ﬁﬁC D
$num
ﬁﬁD E
]
ﬁﬁE F
)
ﬁﬁF G
;
ﬁﬁG H
}
ﬂﬂ 
}
‡‡ 
_modes
‚‚ 
.
‚‚ 
Pop
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 
_select
ÂÂ 
=
ÂÂ 
_builder
ÂÂ 
.
ÂÂ 
ToString
ÂÂ '
(
ÂÂ' (
)
ÂÂ( )
;
ÂÂ) *
}
ÊÊ 	
private
ËË 
void
ËË 

EvaluateId
ËË 
(
ËË  
ParseTreeNode
ËË  -
id
ËË. 0
)
ËË0 1
{
ÈÈ 	
switch
ÍÍ 
(
ÍÍ 
_modes
ÍÍ 
.
ÍÍ 
Peek
ÍÍ 
(
ÍÍ  
)
ÍÍ  !
)
ÍÍ! "
{
ÎÎ 
case
ÏÏ 
FormattingModes
ÏÏ $
.
ÏÏ$ %
SelectClause
ÏÏ% 1
:
ÏÏ1 2
EvaluateSelectId
ÌÌ $
(
ÌÌ$ %
id
ÌÌ% '
)
ÌÌ' (
;
ÌÌ( )
break
ÓÓ 
;
ÓÓ 
case
ÔÔ 
FormattingModes
ÔÔ $
.
ÔÔ$ %

FromClause
ÔÔ% /
:
ÔÔ/ 0
EvaluateFromId
 "
(
" #
id
# %
)
% &
;
& '
break
ÒÒ 
;
ÒÒ 
}
ÚÚ 
}
ÛÛ 	
private
ıı 
void
ıı 
EvaluateSelectId
ıı %
(
ıı% &
ParseTreeNode
ıı& 3
id
ıı4 6
)
ıı6 7
{
ˆˆ 	
for
˜˜ 
(
˜˜ 
var
˜˜ 
i
˜˜ 
=
˜˜ 
$num
˜˜ 
;
˜˜ 
i
˜˜ 
<
˜˜ 
id
˜˜  "
.
˜˜" #

ChildNodes
˜˜# -
.
˜˜- .
Count
˜˜. 3
;
˜˜3 4
i
˜˜5 6
++
˜˜6 8
)
˜˜8 9
{
¯¯ 
if
˘˘ 
(
˘˘ 
i
˘˘ 
==
˘˘ 
$num
˘˘ 
&&
˘˘ 
id
˘˘  
.
˘˘  !

ChildNodes
˘˘! +
.
˘˘+ ,
Count
˘˘, 1
>
˘˘2 3
$num
˘˘4 5
&&
˘˘6 8
!
˘˘9 :
_aliases
˘˘: B
.
˘˘B C
Contains
˘˘C K
(
˘˘K L
id
˘˘L N
.
˘˘N O

ChildNodes
˘˘O Y
[
˘˘Y Z
i
˘˘Z [
]
˘˘[ \
.
˘˘\ ]
Token
˘˘] b
.
˘˘b c
ValueString
˘˘c n
)
˘˘n o
)
˘˘o p
{
˙˙ 
_builder
˚˚ 
.
˚˚ 
Append
˚˚ #
(
˚˚# $
_dialect
˚˚$ ,
.
˚˚, -
QuoteForTableName
˚˚- >
(
˚˚> ?
_tablePrefix
˚˚? K
+
˚˚L M
id
˚˚N P
.
˚˚P Q

ChildNodes
˚˚Q [
[
˚˚[ \
i
˚˚\ ]
]
˚˚] ^
.
˚˚^ _
Token
˚˚_ d
.
˚˚d e
ValueString
˚˚e p
)
˚˚p q
)
˚˚q r
;
˚˚r s
}
¸¸ 
else
˝˝ 
{
˛˛ 
if
ˇˇ 
(
ˇˇ 
i
ˇˇ 
>
ˇˇ 
$num
ˇˇ 
)
ˇˇ 
{
ÄÄ 
_builder
ÅÅ  
.
ÅÅ  !
Append
ÅÅ! '
(
ÅÅ' (
$str
ÅÅ( +
)
ÅÅ+ ,
;
ÅÅ, -
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
_aliases
ÑÑ  
.
ÑÑ  !
Contains
ÑÑ! )
(
ÑÑ) *
id
ÑÑ* ,
.
ÑÑ, -

ChildNodes
ÑÑ- 7
[
ÑÑ7 8
i
ÑÑ8 9
]
ÑÑ9 :
.
ÑÑ: ;
Token
ÑÑ; @
.
ÑÑ@ A
ValueString
ÑÑA L
)
ÑÑL M
)
ÑÑM N
{
ÖÖ 
_builder
ÜÜ  
.
ÜÜ  !
Append
ÜÜ! '
(
ÜÜ' (
id
ÜÜ( *
.
ÜÜ* +

ChildNodes
ÜÜ+ 5
[
ÜÜ5 6
i
ÜÜ6 7
]
ÜÜ7 8
.
ÜÜ8 9
Token
ÜÜ9 >
.
ÜÜ> ?
ValueString
ÜÜ? J
)
ÜÜJ K
;
ÜÜK L
}
áá 
else
àà 
{
ââ 
_builder
ää  
.
ää  !
Append
ää! '
(
ää' (
_dialect
ää( 0
.
ää0 1 
QuoteForColumnName
ää1 C
(
ääC D
id
ääD F
.
ääF G

ChildNodes
ääG Q
[
ääQ R
i
ääR S
]
ääS T
.
ääT U
Token
ääU Z
.
ääZ [
ValueString
ää[ f
)
ääf g
)
ääg h
;
ääh i
}
ãã 
}
åå 
}
çç 
}
éé 	
private
êê 
void
êê 
EvaluateFromId
êê #
(
êê# $
ParseTreeNode
êê$ 1
id
êê2 4
)
êê4 5
{
ëë 	
for
íí 
(
íí 
var
íí 
i
íí 
=
íí 
$num
íí 
;
íí 
i
íí 
<
íí 
id
íí  "
.
íí" #

ChildNodes
íí# -
.
íí- .
Count
íí. 3
;
íí3 4
i
íí5 6
++
íí6 8
)
íí8 9
{
ìì 
if
îî 
(
îî 
i
îî 
==
îî 
$num
îî 
&&
îî 
!
îî 
_aliases
îî '
.
îî' (
Contains
îî( 0
(
îî0 1
id
îî1 3
.
îî3 4

ChildNodes
îî4 >
[
îî> ?
i
îî? @
]
îî@ A
.
îîA B
Token
îîB G
.
îîG H
ValueString
îîH S
)
îîS T
)
îîT U
{
ïï 
_builder
ññ 
.
ññ 
Append
ññ #
(
ññ# $
_dialect
ññ$ ,
.
ññ, -
QuoteForTableName
ññ- >
(
ññ> ?
_tablePrefix
ññ? K
+
ññL M
id
ññN P
.
ññP Q

ChildNodes
ññQ [
[
ññ[ \
i
ññ\ ]
]
ññ] ^
.
ññ^ _
Token
ññ_ d
.
ññd e
ValueString
ññe p
)
ññp q
)
ññq r
;
ññr s
}
óó 
else
òò 
{
ôô 
_builder
öö 
.
öö 
Append
öö #
(
öö# $
_dialect
öö$ ,
.
öö, - 
QuoteForColumnName
öö- ?
(
öö? @
id
öö@ B
.
ööB C

ChildNodes
ööC M
[
ööM N
i
ööN O
]
ööO P
.
ööP Q
Token
ööQ V
.
ööV W
ValueString
ööW b
)
ööb c
)
ööc d
;
ööd e
}
õõ 
}
úú 
}
ùù 	
private
üü 
void
üü #
EvaluateAliasOptional
üü *
(
üü* +
ParseTreeNode
üü+ 8
parseTreeNode
üü9 F
)
üüF G
{
†† 	
if
°° 
(
°° 
parseTreeNode
°° 
.
°° 

ChildNodes
°° (
.
°°( )
Count
°°) .
>
°°/ 0
$num
°°1 2
)
°°2 3
{
¢¢ 
_builder
££ 
.
££ 
Append
££ 
(
££  
$str
££  &
)
££& '
;
££' (
_builder
§§ 
.
§§ 
Append
§§ 
(
§§  
parseTreeNode
§§  -
.
§§- .

ChildNodes
§§. 8
[
§§8 9
$num
§§9 :
]
§§: ;
.
§§; <
Token
§§< A
.
§§A B
ValueString
§§B M
)
§§M N
;
§§N O
}
•• 
}
¶¶ 	
private
®® 
void
®® '
EvaluateSelectRestriction
®® .
(
®®. /
ParseTreeNode
®®/ <
parseTreeNode
®®= J
)
®®J K
{
©© 	
_builder
™™ 
.
™™ 
Clear
™™ 
(
™™ 
)
™™ 
;
™™ 
if
¨¨ 
(
¨¨ 
parseTreeNode
¨¨ 
.
¨¨ 

ChildNodes
¨¨ (
.
¨¨( )
Count
¨¨) .
>
¨¨/ 0
$num
¨¨1 2
)
¨¨2 3
{
≠≠ 
_builder
ÆÆ 
.
ÆÆ 
Append
ÆÆ 
(
ÆÆ  
parseTreeNode
ÆÆ  -
.
ÆÆ- .

ChildNodes
ÆÆ. 8
[
ÆÆ8 9
$num
ÆÆ9 :
]
ÆÆ: ;
.
ÆÆ; <
Term
ÆÆ< @
.
ÆÆ@ A
Name
ÆÆA E
)
ÆÆE F
.
ÆÆF G
Append
ÆÆG M
(
ÆÆM N
$str
ÆÆN Q
)
ÆÆQ R
;
ÆÆR S
}
ØØ 
}
∞∞ 	
private
≤≤ 
enum
≤≤ 
FormattingModes
≤≤ $
{
≥≥ 	
SelectClause
¥¥ 
,
¥¥ 

FromClause
µµ 
}
∂∂ 	
}
∑∑ 
}∏∏ î
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\SqlParserException.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
{ 
public 

class 
SqlParserException #
:$ %
	Exception& /
{ 
public 
SqlParserException !
(! "
string" (
message) 0
)0 1
:2 3
base4 8
(8 9
message9 @
)@ A
{ 	
}		 	
}

 
} É
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\SqlQuery.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
{ 
public 

class 
SqlQuery 
: 
Query !
{ 
public 
SqlQuery 
( 
) 
: 
base  
(  !
$str! &
)& '
{ 	
} 	
public		 
string		 
Template		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
bool

 
ReturnDocuments

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
} 
} á?
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\SqlQuerySource.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
{ 
public 

class 
SqlQuerySource 
:  !
IQuerySource" .
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly !
IDbConnectionAccessor .!
_dbConnectionAccessor/ D
;D E
private 
readonly 
ISession !
_session" *
;* +
public 
SqlQuerySource 
( "
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9!
IDbConnectionAccessor ! 
dbConnectionAccessor" 6
,6 7
ISession 
session 
) 
{ 	"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;!
_dbConnectionAccessor !
=" # 
dbConnectionAccessor$ 8
;8 9
_session 
= 
session 
; 
} 	
public 
string 
Name 
=> 
$str #
;# $
public   
Query   
Create   
(   
)   
{!! 	
return"" 
new"" 
SqlQuery"" 
(""  
)""  !
;""! "
}## 	
public%% 
async%% 
Task%% 
<%% 
IQueryResults%% '
>%%' (
ExecuteQueryAsync%%) :
(%%: ;
Query%%; @
query%%A F
,%%F G
IDictionary%%H S
<%%S T
string%%T Z
,%%Z [
object%%\ b
>%%b c

parameters%%d n
)%%n o
{&& 	
var'' 
sqlQuery'' 
='' 
query''  
as''! #
SqlQuery''$ ,
;'', -
var(( 
sqlQueryResults(( 
=((  !
new((" %
SQLQueryResults((& 5
(((5 6
)((6 7
;((7 8
var** 
templateContext** 
=**  !"
_liquidTemplateManager**" 8
.**8 9
Context**9 @
;**@ A
if,, 
(,, 

parameters,, 
!=,, 
null,, "
),," #
{-- 
foreach.. 
(.. 
var.. 
	parameter.. &
in..' )

parameters..* 4
)..4 5
{// 
templateContext00 #
.00# $
SetValue00$ ,
(00, -
	parameter00- 6
.006 7
Key007 :
,00: ;
	parameter00< E
.00E F
Value00F K
)00K L
;00L M
}11 
}22 
var44 
tokenizedQuery44 
=44  
await44! &"
_liquidTemplateManager44' =
.44= >
RenderAsync44> I
(44I J
sqlQuery44J R
.44R S
Template44S [
,44[ \
NullEncoder44] h
.44h i
Default44i p
)44p q
;44q r
var66 

connection66 
=66 !
_dbConnectionAccessor66 2
.662 3
CreateConnection663 C
(66C D
)66D E
;66E F
var77 
dialect77 
=77 
_session77 "
.77" #
Store77# (
.77( )
Configuration77) 6
.776 7

SqlDialect777 A
;77A B
if99 
(99 
!99 
	SqlParser99 
.99 
TryParse99 #
(99# $
tokenizedQuery99$ 2
,992 3
dialect994 ;
,99; <
_session99= E
.99E F
Store99F K
.99K L
Configuration99L Y
.99Y Z
TablePrefix99Z e
,99e f

parameters99g q
,99q r
out99s v
var99w z
rawQuery	99{ É
,
99É Ñ
out
99Ö à
var
99â å
messages
99ç ï
)
99ï ñ
)
99ñ ó
{:: 
sqlQueryResults;; 
.;;  
Items;;  %
=;;& '
new;;( +
object;;, 2
[;;2 3
$num;;3 4
];;4 5
;;;5 6

connection<< 
.<< 
Dispose<< "
(<<" #
)<<# $
;<<$ %
return== 
sqlQueryResults== &
;==& '
}>> 
if@@ 
(@@ 
sqlQuery@@ 
.@@ 
ReturnDocuments@@ (
)@@( )
{AA 
IEnumerableBB 
<BB 
intBB 
>BB  
documentIdsBB! ,
;BB, -
usingDD 
(DD 

connectionDD !
)DD! "
{EE 
awaitFF 

connectionFF $
.FF$ %
	OpenAsyncFF% .
(FF. /
)FF/ 0
;FF0 1
usingHH 
(HH 
varHH 
transactionHH *
=HH+ ,

connectionHH- 7
.HH7 8
BeginTransactionHH8 H
(HHH I
_sessionHHI Q
.HHQ R
StoreHHR W
.HHW X
ConfigurationHHX e
.HHe f
IsolationLevelHHf t
)HHt u
)HHu v
{II 
documentIdsJJ #
=JJ$ %
awaitJJ& +

connectionJJ, 6
.JJ6 7

QueryAsyncJJ7 A
<JJA B
intJJB E
>JJE F
(JJF G
rawQueryJJG O
,JJO P

parametersJJQ [
,JJ[ \
transactionJJ] h
)JJh i
;JJi j
}KK 
}LL 
sqlQueryResultsNN 
.NN  
ItemsNN  %
=NN& '
awaitNN( -
_sessionNN. 6
.NN6 7
GetAsyncNN7 ?
<NN? @
ContentItemNN@ K
>NNK L
(NNL M
documentIdsNNM X
.NNX Y
ToArrayNNY `
(NN` a
)NNa b
)NNb c
;NNc d
returnOO 
sqlQueryResultsOO &
;OO& '
}PP 
elseQQ 
{RR 
IEnumerableSS 
<SS 
dynamicSS #
>SS# $
queryResultsSS% 1
;SS1 2
usingUU 
(UU 

connectionUU !
)UU! "
{VV 
awaitWW 

connectionWW $
.WW$ %
	OpenAsyncWW% .
(WW. /
)WW/ 0
;WW0 1
usingYY 
(YY 
varYY 
transactionYY *
=YY+ ,

connectionYY- 7
.YY7 8
BeginTransactionYY8 H
(YYH I
_sessionYYI Q
.YYQ R
StoreYYR W
.YYW X
ConfigurationYYX e
.YYe f
IsolationLevelYYf t
)YYt u
)YYu v
{ZZ 
queryResults[[ $
=[[% &
await[[' ,

connection[[- 7
.[[7 8

QueryAsync[[8 B
([[B C
rawQuery[[C K
,[[K L

parameters[[M W
,[[W X
transaction[[Y d
)[[d e
;[[e f
}\\ 
}]] 
var__ 
results__ 
=__ 
new__ !
List__" &
<__& '
JObject__' .
>__. /
(__/ 0
)__0 1
;__1 2
foreachaa 
(aa 
varaa 
documentaa %
inaa& (
queryResultsaa) 5
)aa5 6
{bb 
resultscc 
.cc 
Addcc 
(cc  
JObjectcc  '
.cc' (

FromObjectcc( 2
(cc2 3
documentcc3 ;
)cc; <
)cc< =
;cc= >
}dd 
sqlQueryResultsff 
.ff  
Itemsff  %
=ff& '
resultsff( /
;ff/ 0
returngg 
sqlQueryResultsgg &
;gg& '
}hh 
}ii 	
}jj 
}kk ≥
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\Startup.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
{		 
[ 
Feature 
( 
$str &
)& '
]' (
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
>? @
(@ A
)A B
;B C
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
Query. 3
>3 4
,4 5!
SqlQueryDisplayDriver6 K
>K L
(L M
)M N
;N O
services 
. 
	AddScoped 
< 
IQuerySource +
,+ ,
SqlQuerySource- ;
>; <
(< =
)= >
;> ?
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3
	AdminMenu4 =
>= >
(> ?
)? @
;@ A
} 	
} 
} †
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\ViewModels\AdminQueryViewModel.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
.! "

ViewModels" ,
{ 
public 

class 
AdminQueryViewModel $
{		 
public

 
string

 
DecodedQuery

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
string 

Parameters  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
$str1 3
;3 4
[ 	
	BindNever	 
] 
public 
string 
RawSql 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
	BindNever	 
] 
public 
TimeSpan 
Elapsed 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
TimeSpan0 8
.8 9
Zero9 =
;= >
[ 	
	BindNever	 
] 
public 
IEnumerable 
< 
dynamic "
>" #
	Documents$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =

Enumerable> H
.H I
EmptyI N
<N O
dynamicO V
>V W
(W X
)X Y
;Y Z
[ 	
	BindNever	 
] 
public 
string 
FactoryName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Î
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Sql\ViewModels\SqlQueryViewModel.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 
Sql !
.! "

ViewModels" ,
{ 
public 

class 
SqlQueryViewModel "
{ 
public 
string 
Query 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
ReturnDocuments #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
}		 ˜@
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\Startup.cs
	namespace 	
OrchardCore
 
. 
Queries 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public!! 
Startup!! 
(!! 
IOptions!! 
<!!  
AdminOptions!!  ,
>!!, -
adminOptions!!. :
)!!: ;
{"" 	
_adminOptions## 
=## 
adminOptions## (
.##( )
Value##) .
;##. /
}$$ 	
public&& 
override&& 
void&& 
ConfigureServices&& .
(&&. /
IServiceCollection&&/ A
services&&B J
)&&J K
{'' 	
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
services)) 
.)) 
	AddScoped)) 
<)) 
IQueryManager)) ,
,)), -
QueryManager)). :
>)): ;
()); <
)))< =
;))= >
services** 
.** 
	AddScoped** 
<** 
IDisplayManager** .
<**. /
Query**/ 4
>**4 5
,**5 6
DisplayManager**7 E
<**E F
Query**F K
>**K L
>**L M
(**M N
)**N O
;**O P
services,, 
.,, 
	AddScoped,, 
<,, 
IDisplayDriver,, -
<,,- .
Query,,. 3
>,,3 4
,,,4 5
QueryDisplayDriver,,6 H
>,,H I
(,,I J
),,J K
;,,K L
services-- 
.-- "
AddRecipeExecutionStep-- +
<--+ ,
	QueryStep--, 5
>--5 6
(--6 7
)--7 8
;--8 9
services.. 
... 
	AddScoped.. 
<.. 
IPermissionProvider.. 2
,..2 3
Permissions..4 ?
>..? @
(..@ A
)..A B
;..B C
services00 
.00 
AddTransient00 !
<00! "
IDeploymentSource00" 3
,003 4&
AllQueriesDeploymentSource005 O
>00O P
(00P Q
)00Q R
;00R S
services11 
.11 
AddSingleton11 !
<11! ""
IDeploymentStepFactory11" 8
>118 9
(119 :
new11: =!
DeploymentStepFactory11> S
<11S T$
AllQueriesDeploymentStep11T l
>11l m
(11m n
)11n o
)11o p
;11p q
services22 
.22 
	AddScoped22 
<22 
IDisplayDriver22 -
<22- .
DeploymentStep22. <
>22< =
,22= >*
AllQueriesDeploymentStepDriver22? ]
>22] ^
(22^ _
)22_ `
;22` a
services33 
.33 
AddSingleton33 !
<33! "!
IGlobalMethodProvider33" 7
,337 8%
QueryGlobalMethodProvider339 R
>33R S
(33S T
)33T U
;33U V
services55 
.55 
	AddScoped55 
<55 '
ILiquidTemplateEventHandler55 :
,55: ;-
!QueriesLiquidTemplateEventHandler55< ]
>55] ^
(55^ _
)55_ `
;55` a
services66 
.66 
AddLiquidFilter66 $
<66$ %
QueryFilter66% 0
>660 1
(661 2
$str662 9
)669 :
;66: ;
}77 	
public99 
override99 
void99 
	Configure99 &
(99& '
IApplicationBuilder99' :
builder99; B
,99B C!
IEndpointRouteBuilder99D Y
routes99Z `
,99` a
IServiceProvider99b r
serviceProvider	99s Ç
)
99Ç É
{:: 	
var;; 
adminControllerName;; #
=;;$ %
typeof;;& ,
(;;, -
AdminController;;- <
);;< =
.;;= >
ControllerName;;> L
(;;L M
);;M N
;;;N O
routes== 
.== "
MapAreaControllerRoute== )
(==) *
name>> 
:>> 
$str>> $
,>>$ %
areaName?? 
:?? 
$str?? /
,??/ 0
pattern@@ 
:@@ 
_adminOptions@@ &
.@@& '
AdminUrlPrefix@@' 5
+@@6 7
$str@@8 H
,@@H I
defaultsAA 
:AA 
newAA 
{AA 

controllerAA  *
=AA+ ,
adminControllerNameAA- @
,AA@ A
actionAAB H
=AAI J
nameofAAK Q
(AAQ R
AdminControllerAAR a
.AAa b
IndexAAb g
)AAg h
}AAi j
)BB 
;BB 
routesDD 
.DD "
MapAreaControllerRouteDD )
(DD) *
nameEE 
:EE 
$strEE %
,EE% &
areaNameFF 
:FF 
$strFF /
,FF/ 0
patternGG 
:GG 
_adminOptionsGG &
.GG& '
AdminUrlPrefixGG' 5
+GG6 7
$strGG8 N
,GGN O
defaultsHH 
:HH 
newHH 
{HH 

controllerHH  *
=HH+ ,
adminControllerNameHH- @
,HH@ A
actionHHB H
=HHI J
nameofHHK Q
(HHQ R
AdminControllerHHR a
.HHa b
CreateHHb h
)HHh i
}HHj k
)II 
;II 
routesKK 
.KK "
MapAreaControllerRouteKK )
(KK) *
nameLL 
:LL 
$strLL %
,LL% &
areaNameMM 
:MM 
$strMM /
,MM/ 0
patternNN 
:NN 
_adminOptionsNN &
.NN& '
AdminUrlPrefixNN' 5
+NN6 7
$strNN8 N
,NNN O
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
routesRR 
.RR "
MapAreaControllerRouteRR )
(RR) *
nameSS 
:SS 
$strSS #
,SS# $
areaNameTT 
:TT 
$strTT /
,TT/ 0
patternUU 
:UU 
_adminOptionsUU &
.UU& '
AdminUrlPrefixUU' 5
+UU6 7
$strUU8 L
,UUL M
defaultsVV 
:VV 
newVV 
{VV 

controllerVV  *
=VV+ ,
adminControllerNameVV- @
,VV@ A
actionVVB H
=VVI J
nameofVVK Q
(VVQ R
AdminControllerVVR a
.VVa b
EditVVb f
)VVf g
}VVh i
)WW 
;WW 
routesYY 
.YY "
MapAreaControllerRouteYY )
(YY) *
nameZZ 
:ZZ 
$strZZ %
,ZZ% &
areaName[[ 
:[[ 
$str[[ /
,[[/ 0
pattern\\ 
:\\ 
_adminOptions\\ &
.\\& '
AdminUrlPrefix\\' 5
+\\6 7
$str\\8 L
,\\L M
defaults]] 
:]] 
new]] 
{]] 

controller]]  *
=]]+ ,
typeof]]- 3
(]]3 4
Sql]]4 7
.]]7 8
Controllers]]8 C
.]]C D
AdminController]]D S
)]]S T
.]]T U
ControllerName]]U c
(]]c d
)]]d e
,]]e f
action]]g m
=]]n o
nameof]]p v
(]]v w
Sql]]w z
.]]z {
Controllers	]]{ Ü
.
]]Ü á
AdminController
]]á ñ
.
]]ñ ó
Query
]]ó ú
)
]]ú ù
}
]]û ü
)^^ 
;^^ 
}__ 	
}`` 
}aa ª	
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\ViewModels\EditQueryViewModel.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

ViewModels (
{ 
public 

class 
EditQueryViewModel #
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
Source		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Schema

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
[ 	
	BindNever	 
] 
public 
Query 
Query 
{ 
get  
;  !
set" %
;% &
}' (
} 
} –
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\ViewModels\QueriesCreateViewModel.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

ViewModels (
{ 
public 

class "
QueriesCreateViewModel '
{ 
public 
string 

SourceName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
dynamic 
Editor 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ¯
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\ViewModels\QueriesEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

ViewModels (
{ 
public 

class  
QueriesEditViewModel %
:& '"
QueriesCreateViewModel( >
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Schema 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ·
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Queries\ViewModels\QueriesIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Queries 
. 

ViewModels (
{ 
public 

class !
QueriesIndexViewModel &
{ 
public		 
IList		 
<		 

QueryEntry		 
>		  
Queries		! (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
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
}) *
public 
IEnumerable 
< 
string !
>! "
QuerySourceNames# 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
public 

class 

QueryEntry 
{ 
public 
Query 
Query 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
public 
dynamic 
Shape 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
ContentOptions 
{ 
public 
string 
Search 
{ 
get "
;" #
set$ '
;' (
}) *
public 
ContentsBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
	BindNever	 
] 
public 
List 
< 
SelectListItem "
>" #
ContentsBulkAction$ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}!! 
public## 

enum## 
ContentsBulkAction## "
{$$ 
None%% 
,%% 
Remove&& 
}'' 
}(( 