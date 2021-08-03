�k
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Drivers\AutoroutePartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Drivers  '
{ 
public 

class &
AutoroutePartDisplayDriver +
:, -$
ContentPartDisplayDriver. F
<F G
AutoroutePartG T
>T U
{ 
private 
readonly 
AutorouteOptions )
_options* 2
;2 3
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
YesSql 
.  
ISession  (
_session) 1
;1 2
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public   &
AutoroutePartDisplayDriver   )
(  ) *
IOptions!! 
<!! 
AutorouteOptions!! %
>!!% &
options!!' .
,!!. /
ISiteService"" 
siteService"" $
,""$ %!
IAuthorizationService## ! 
authorizationService##" 6
,##6 7 
IHttpContextAccessor$$  
httpContextAccessor$$! 4
,$$4 5
YesSql%% 
.%% 
ISession%% 
session%% #
,%%# $
IStringLocalizer&& 
<&& &
AutoroutePartDisplayDriver&& 7
>&&7 8
	localizer&&9 B
)'' 	
{(( 	
_options)) 
=)) 
options)) 
.)) 
Value)) $
;))$ %
_siteService** 
=** 
siteService** &
;**& '!
_authorizationService++ !
=++" # 
authorizationService++$ 8
;++8 9 
_httpContextAccessor,,  
=,,! "
httpContextAccessor,,# 6
;,,6 7
_session-- 
=-- 
session-- 
;-- 
S.. 
=.. 
	localizer.. 
;.. 
}// 	
public11 
override11 
IDisplayResult11 &
Edit11' +
(11+ ,
AutoroutePart11, 9
autoroutePart11: G
,11G H"
BuildPartEditorContext11I _
context11` g
)11g h
{22 	
return33 

Initialize33 
<33 "
AutoroutePartViewModel33 4
>334 5
(335 6
$str336 J
,33J K
async33L Q
model33R W
=>33X Z
{44 
model55 
.55 
Path55 
=55 
autoroutePart55 *
.55* +
Path55+ /
;55/ 0
model66 
.66 
AutoroutePart66 #
=66$ %
autoroutePart66& 3
;663 4
model77 
.77 
ContentItem77 !
=77" #
autoroutePart77$ 1
.771 2
ContentItem772 =
;77= >
model88 
.88 
SetHomepage88 !
=88" #
false88$ )
;88) *
var:: 
siteSettings::  
=::! "
await::# (
_siteService::) 5
.::5 6 
GetSiteSettingsAsync::6 J
(::J K
)::K L
;::L M
var;; 
	homeRoute;; 
=;; 
siteSettings;;  ,
.;;, -
	HomeRoute;;- 6
;;;6 7
if== 
(== 
	homeRoute== 
!===  
null==! %
&&==& (
	homeRoute==) 2
.==2 3
TryGetValue==3 >
(==> ?
_options==? G
.==G H%
ContainedContentItemIdKey==H a
,==a b
out==c f
var==g j#
containedContentItemId	==k �
)
==� �
)
==� �
{>> 
if?? 
(?? 
string?? 
.?? 
Equals?? %
(??% &
autoroutePart??& 3
.??3 4
ContentItem??4 ?
.??? @
ContentItemId??@ M
,??M N"
containedContentItemId??O e
.??e f
ToString??f n
(??n o
)??o p
,??p q
StringComparison	??r �
.
??� �
OrdinalIgnoreCase
??� �
)
??� �
)
??� �
{@@ 
modelAA 
.AA 

IsHomepageAA (
=AA) *
trueAA+ /
;AA/ 0
}BB 
}CC 
elseDD 
ifDD 
(DD 
stringDD 
.DD  
EqualsDD  &
(DD& '
autoroutePartDD' 4
.DD4 5
ContentItemDD5 @
.DD@ A
ContentItemIdDDA N
,DDN O
	homeRouteDDP Y
?DDY Z
[DDZ [
_optionsDD[ c
.DDc d
ContentItemIdKeyDDd t
]DDt u
?DDu v
.DDv w
ToStringDDw 
(	DD �
)
DD� �
,
DD� �
StringComparison
DD� �
.
DD� �
OrdinalIgnoreCase
DD� �
)
DD� �
)
DD� �
{EE 
modelFF 
.FF 

IsHomepageFF $
=FF% &
trueFF' +
;FF+ ,
}GG 
modelII 
.II 
DisabledII 
=II  
autoroutePartII! .
.II. /
DisabledII/ 7
;II7 8
modelJJ 
.JJ 
AbsoluteJJ 
=JJ  
autoroutePartJJ! .
.JJ. /
AbsoluteJJ/ 7
;JJ7 8
modelKK 
.KK 
RouteContainedItemsKK )
=KK* +
autoroutePartKK, 9
.KK9 :
RouteContainedItemsKK: M
;KKM N
modelMM 
.MM 
SettingsMM 
=MM  
contextMM! (
.MM( )
TypePartDefinitionMM) ;
.MM; <
GetSettingsMM< G
<MMG H!
AutoroutePartSettingsMMH ]
>MM] ^
(MM^ _
)MM_ `
;MM` a
}NN 
)NN 
;NN 
}OO 	
publicQQ 
overrideQQ 
asyncQQ 
TaskQQ "
<QQ" #
IDisplayResultQQ# 1
>QQ1 2
UpdateAsyncQQ3 >
(QQ> ?
AutoroutePartQQ? L
modelQQM R
,QQR S
IUpdateModelQQT `
updaterQQa h
,QQh i$
UpdatePartEditorContext	QQj �
context
QQ� �
)
QQ� �
{RR 	
varSS 
	viewModelSS 
=SS 
newSS "
AutoroutePartViewModelSS  6
(SS6 7
)SS7 8
;SS8 9
awaitUU 
updaterUU 
.UU 
TryUpdateModelAsyncUU -
(UU- .
	viewModelUU. 7
,UU7 8
PrefixUU9 ?
,UU? @
tUUA B
=>UUC E
tUUF G
.UUG H
PathUUH L
,UUL M
tUUN O
=>UUP R
tUUS T
.UUT U

UpdatePathUUU _
,UU_ `
tUUa b
=>UUc e
tUUf g
.UUg h
RouteContainedItemsUUh {
,UU{ |
tUU} ~
=>	UU �
t
UU� �
.
UU� �
Absolute
UU� �
,
UU� �
t
UU� �
=>
UU� �
t
UU� �
.
UU� �
Disabled
UU� �
)
UU� �
;
UU� �
varWW 
settingsWW 
=WW 
contextWW "
.WW" #
TypePartDefinitionWW# 5
.WW5 6
GetSettingsWW6 A
<WWA B!
AutoroutePartSettingsWWB W
>WWW X
(WWX Y
)WWY Z
;WWZ [
modelYY 
.YY 
DisabledYY 
=YY 
	viewModelYY &
.YY& '
DisabledYY' /
;YY/ 0
modelZZ 
.ZZ 
AbsoluteZZ 
=ZZ 
	viewModelZZ &
.ZZ& '
AbsoluteZZ' /
;ZZ/ 0
model[[ 
.[[ 
RouteContainedItems[[ %
=[[& '
	viewModel[[( 1
.[[1 2
RouteContainedItems[[2 E
;[[E F
if^^ 
(^^ 
!^^ 
model^^ 
.^^ 
Disabled^^ 
)^^  
{__ 
if`` 
(`` 
settings`` 
.`` 
AllowCustomPath`` ,
)``, -
{aa 
modelbb 
.bb 
Pathbb 
=bb  
	viewModelbb! *
.bb* +
Pathbb+ /
;bb/ 0
}cc 
ifee 
(ee 
settingsee 
.ee 
AllowUpdatePathee ,
&&ee- /
	viewModelee0 9
.ee9 :

UpdatePathee: D
)eeD E
{ff 
modelhh 
.hh 
Pathhh 
=hh  
$strhh! #
;hh# $
}ii 
varkk 
httpContextkk 
=kk  ! 
_httpContextAccessorkk" 6
.kk6 7
HttpContextkk7 B
;kkB C
ifmm 
(mm 
httpContextmm 
!=mm  "
nullmm# '
&&mm( *
awaitmm+ 0!
_authorizationServicemm1 F
.mmF G
AuthorizeAsyncmmG U
(mmU V
httpContextmmV a
.mma b
Usermmb f
,mmf g
Permissionsmmh s
.mms t
SetHomepagemmt 
)	mm �
)
mm� �
{nn 
awaitoo 
updateroo !
.oo! "
TryUpdateModelAsyncoo" 5
(oo5 6
modeloo6 ;
,oo; <
Prefixoo= C
,ooC D
tooE F
=>ooG I
tooJ K
.ooK L
SetHomepageooL W
)ooW X
;ooX Y
}pp 
updaterrr 
.rr 

ModelStaterr "
.rr" #!
BindValidationResultsrr# 8
(rr8 9
Prefixrr9 ?
,rr? @
modelrrA F
.rrF G"
ValidatePathFieldValuerrG ]
(rr] ^
Srr^ _
)rr_ `
)rr` a
;rra b
ifuu 
(uu 
!uu 
Stringuu 
.uu 
IsNullOrEmptyuu )
(uu) *
modeluu* /
.uu/ 0
Pathuu0 4
)uu4 5
&&uu6 8
(uu9 :
!uu: ;
settingsuu; C
.uuC D%
ManageContainedItemRoutesuuD ]
||uu^ `
(uua b
settingsuub j
.uuj k&
ManageContainedItemRoutes	uuk �
&&
uu� �
model
uu� �
.
uu� �
Absolute
uu� �
)
uu� �
)
uu� �
)
uu� �
{vv 
varww 
pathww 
=ww 
modelww $
.ww$ %
Pathww% )
.ww) *
Trimww* .
(ww. /
$charww/ 2
)ww2 3
;ww3 4
varxx 
pathsxx 
=xx 
newxx  #
stringxx$ *
[xx* +
]xx+ ,
{xx- .
pathxx/ 3
,xx3 4
$strxx5 8
+xx9 :
pathxx; ?
,xx? @
pathxxA E
+xxF G
$strxxH K
,xxK L
$strxxM P
+xxQ R
pathxxS W
+xxX Y
$strxxZ ]
}xx^ _
;xx_ `
varzz 
possibleConflictszz )
=zz* +
awaitzz, 1
_sessionzz2 :
.zz: ;

QueryIndexzz; E
<zzE F
AutoroutePartIndexzzF X
>zzX Y
(zzY Z
ozzZ [
=>zz\ ^
(zz_ `
ozz` a
.zza b
	Publishedzzb k
||zzl n
ozzo p
.zzp q
Latestzzq w
)zzw x
&&zzy {
ozz| }
.zz} ~
Path	zz~ �
.
zz� �
IsIn
zz� �
(
zz� �
paths
zz� �
)
zz� �
)
zz� �
.
zz� �
	ListAsync
zz� �
(
zz� �
)
zz� �
;
zz� �
if{{ 
({{ 
possibleConflicts{{ )
.{{) *
Any{{* -
({{- .
){{. /
){{/ 0
{|| 
if}} 
(}} 
possibleConflicts}} -
.}}- .
Any}}. 1
(}}1 2
x}}2 3
=>}}4 6
x}}7 8
.}}8 9
ContentItemId}}9 F
!=}}G I
model}}J O
.}}O P
ContentItem}}P [
.}}[ \
ContentItemId}}\ i
)}}i j
||}}k m
possibleConflicts~~ -
.~~- .
Any~~. 1
(~~1 2
x~~2 3
=>~~4 6
!~~7 8
String~~8 >
.~~> ?
IsNullOrEmpty~~? L
(~~L M
x~~M N
.~~N O"
ContainedContentItemId~~O e
)~~e f
&&~~g i
x~~j k
.~~k l#
ContainedContentItemId	~~l �
!=
~~� �
model
~~� �
.
~~� �
ContentItem
~~� �
.
~~� �
ContentItemId
~~� �
)
~~� �
)
~~� �
{ 
updater
�� #
.
��# $

ModelState
��$ .
.
��. /
AddModelError
��/ <
(
��< =
Prefix
��= C
,
��C D
nameof
��E K
(
��K L
model
��L Q
.
��Q R
Path
��R V
)
��V W
,
��W X
S
��Y Z
[
��Z [
$str
��[ ~
]
��~ 
)�� �
;��� �
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
Edit
�� 
(
�� 
model
�� 
,
�� 
context
�� &
)
��& '
;
��' (
}
�� 	
}
�� 
}�� �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\GraphQL\AutorouteInputObjectType.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
GraphQL  '
{ 
public 

class $
AutorouteInputObjectType )
:* +%
WhereInputObjectGraphType, E
<E F
AutoroutePartF S
>S T
{		 
public

 $
AutorouteInputObjectType

 '
(

' (
IStringLocalizer

( 8
<

8 9$
AutorouteInputObjectType

9 Q
>

Q R
S

S T
)

T U
{ 	
Name 
= 
$str '
;' (
Description 
= 
S 
[ 
$str E
]E F
;F G!
AddScalarFilterFields !
<! "
StringGraphType" 1
>1 2
(2 3
$str3 9
,9 :
S; <
[< =
$str= e
]e f
)f g
;g h
} 	
} 
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\GraphQL\AutoroutePartIndexAliasProvider.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
GraphQL  '
{ 
public 

class +
AutoroutePartIndexAliasProvider 0
:1 2
IIndexAliasProvider3 F
{ 
private		 
static		 
readonly		 

IndexAlias		  *
[		* +
]		+ ,
_aliases		- 5
=		6 7
new		8 ;
[		; <
]		< =
{

 	
new 

IndexAlias 
{ 
Alias 
= 
$str '
,' (
Index 
= 
nameof 
( 
AutoroutePartIndex 1
)1 2
,2 3
	IndexType 
= 
typeof "
(" #
AutoroutePartIndex# 5
)5 6
} 
} 	
;	 

public 
IEnumerable 
< 

IndexAlias %
>% &

GetAliases' 1
(1 2
)2 3
{ 	
return 
_aliases 
; 
} 	
} 
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\GraphQL\AutorouteQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
GraphQL  '
{ 
public 

class $
AutorouteQueryObjectType )
:* +
ObjectGraphType, ;
<; <
AutoroutePart< I
>I J
{ 
public		 $
AutorouteQueryObjectType		 '
(		' (
IStringLocalizer		( 8
<		8 9$
AutorouteQueryObjectType		9 Q
>		Q R
S		S T
)		T U
{

 	
Name 
= 
$str "
;" #
Description 
= 
S 
[ 
$str M
]M N
;N O
Field 
( 
x 
=> 
x 
. 
Path 
) 
. 
Description *
(* +
S+ ,
[, -
$str- T
]T U
)U V
;V W
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\GraphQL\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
	Autoroute		 
.		  
GraphQL		  '
{

 
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. #
AddInputObjectGraphType ,
<, -
AutoroutePart- :
,: ;$
AutorouteInputObjectType< T
>T U
(U V
)V W
;W X
services 
. 
AddObjectGraphType '
<' (
AutoroutePart( 5
,5 6$
AutorouteQueryObjectType7 O
>O P
(P Q
)Q R
;R S
services 
. 
AddTransient !
<! "
IIndexAliasProvider" 5
,5 6+
AutoroutePartIndexAliasProvider7 V
>V W
(W X
)X Y
;Y Z
services 
. .
"AddWhereInputIndexPropertyProvider 7
<7 8
AutoroutePartIndex8 J
>J K
(K L
)L M
;M N
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Handlers\AutorouteContentHandler.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Handlers  (
{ 
public		 

class		 #
AutorouteContentHandler		 (
:		) *
ContentHandlerBase		+ =
{

 
private 
readonly 
IAutorouteEntries *
_autorouteEntries+ <
;< =
public #
AutorouteContentHandler &
(& '
IAutorouteEntries' 8
autorouteEntries9 I
)I J
{ 	
_autorouteEntries 
= 
autorouteEntries  0
;0 1
} 	
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
)W X
{ 	
return 
context 
. 
ForAsync #
<# $
ContentItemMetadata$ 7
>7 8
(8 9
async9 >
metadata? G
=>H J
{ 
( 
var 
found 
, 
var 
entry  %
)% &
=' (
await) .
_autorouteEntries/ @
.@ A+
TryGetEntryByContentItemIdAsyncA `
(` a
contexta h
.h i
ContentItemi t
.t u
ContentItemId	u �
)
� �
;
� �
if 
( 
found 
&& 
! 
string $
.$ %
IsNullOrEmpty% 2
(2 3
entry3 8
.8 9"
ContainedContentItemId9 O
)O P
)P Q
{ 
metadata 
. 
DisplayRouteValues /
=0 1
new2 5 
RouteValueDictionary6 J
{K L
{ 
$str  
,  !
$str" 8
}9 :
,: ;
{ 
$str &
,& '
$str( .
}/ 0
,0 1
{ 
$str "
," #
$str$ -
}. /
,/ 0
{ 
$str )
,) *
entry+ 0
.0 1
ContentItemId1 >
}> ?
,? @
{   
$str   2
,  2 3
entry  4 9
.  9 :"
ContainedContentItemId  : P
}  Q R
}!! 
;!! 
}"" 
}## 
)## 
;## 
}$$ 	
}%% 
}&& 
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Handlers\AutoroutePartHandler.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Handlers  (
{ 
public 

class  
AutoroutePartHandler %
:& '
ContentPartHandler( :
<: ;
AutoroutePart; H
>H I
{ 
private 
readonly 
IAutorouteEntries *
_entries+ 3
;3 4
private 
readonly 
AutorouteOptions )
_options* 2
;2 3
private   
readonly   "
ILiquidTemplateManager   /"
_liquidTemplateManager  0 F
;  F G
private!! 
readonly!! %
IContentDefinitionManager!! 2%
_contentDefinitionManager!!3 L
;!!L M
private"" 
readonly"" 
ISiteService"" %
_siteService""& 2
;""2 3
private## 
readonly## 
	ITagCache## "
	_tagCache### ,
;##, -
private$$ 
readonly$$ 
ISession$$ !
_session$$" *
;$$* +
private%% 
readonly%% 
IServiceProvider%% )
_serviceProvider%%* :
;%%: ;
private&& 
readonly&& 
IStringLocalizer&& )
S&&* +
;&&+ ,
private(( 
IContentManager(( 
_contentManager((  /
;((/ 0
public**  
AutoroutePartHandler** #
(**# $
IAutorouteEntries++ 
entries++ %
,++% &
IOptions,, 
<,, 
AutorouteOptions,, %
>,,% &
options,,' .
,,,. /"
ILiquidTemplateManager-- "!
liquidTemplateManager--# 8
,--8 9%
IContentDefinitionManager.. %$
contentDefinitionManager..& >
,..> ?
ISiteService// 
siteService// $
,//$ %
	ITagCache00 
tagCache00 
,00 
ISession11 
session11 
,11 
IServiceProvider22 
serviceProvider22 ,
,22, -
IStringLocalizer33 
<33  
AutoroutePartHandler33 1
>331 2
stringLocalizer333 B
)33B C
{44 	
_entries55 
=55 
entries55 
;55 
_options66 
=66 
options66 
.66 
Value66 $
;66$ %"
_liquidTemplateManager77 "
=77# $!
liquidTemplateManager77% :
;77: ;%
_contentDefinitionManager88 %
=88& '$
contentDefinitionManager88( @
;88@ A
_siteService99 
=99 
siteService99 &
;99& '
	_tagCache:: 
=:: 
tagCache::  
;::  !
_session;; 
=;; 
session;; 
;;; 
_serviceProvider<< 
=<< 
serviceProvider<< .
;<<. /
S== 
=== 
stringLocalizer== 
;==  
}>> 	
public@@ 
override@@ 
async@@ 
Task@@ "
PublishedAsync@@# 1
(@@1 2!
PublishContentContext@@2 G
context@@H O
,@@O P
AutoroutePart@@Q ^
part@@_ c
)@@c d
{AA 	
ifBB 
(BB 
!BB 
StringBB 
.BB 
IsNullOrWhiteSpaceBB *
(BB* +
partBB+ /
.BB/ 0
PathBB0 4
)BB4 5
)BB5 6
{CC 
ifDD 
(DD 
partDD 
.DD 
RouteContainedItemsDD ,
)DD, -
{EE 
_contentManagerFF #
??=FF$ '
_serviceProviderFF( 8
.FF8 9
GetRequiredServiceFF9 K
<FFK L
IContentManagerFFL [
>FF[ \
(FF\ ]
)FF] ^
;FF^ _
varGG 
containedAspectGG '
=GG( )
awaitGG* /
_contentManagerGG0 ?
.GG? @
PopulateAspectAsyncGG@ S
<GGS T'
ContainedContentItemsAspectGGT o
>GGo p
(GGp q
contextGGq x
.GGx y
PublishingItem	GGy �
)
GG� �
;
GG� �
awaitHH (
CheckContainedHomeRouteAsyncHH 6
(HH6 7
partHH7 ;
.HH; <
ContentItemHH< G
.HHG H
ContentItemIdHHH U
,HHU V
containedAspectHHW f
,HHf g
contextHHh o
.HHo p
PublishingItemHHp ~
.HH~ 
Content	HH �
)
HH� �
;
HH� �
}II 
awaitLL 
_entriesLL 
.LL 
UpdateEntriesAsyncLL 1
(LL1 2
)LL2 3
;LL3 4
}MM 
ifOO 
(OO 
!OO 
StringOO 
.OO 
IsNullOrWhiteSpaceOO *
(OO* +
partOO+ /
.OO/ 0
PathOO0 4
)OO4 5
&&OO6 8
!OO9 :
partOO: >
.OO> ?
DisabledOO? G
&&OOH J
partOOK O
.OOO P
SetHomepageOOP [
)OO[ \
{PP 
awaitQQ 
SetHomeRouteAsyncQQ '
(QQ' (
partQQ( ,
,QQ, -
	homeRouteQQ. 7
=>QQ8 :
{RR 
	homeRouteSS 
[SS 
_optionsSS &
.SS& '
ContentItemIdKeySS' 7
]SS7 8
=SS9 :
contextSS; B
.SSB C
ContentItemSSC N
.SSN O
ContentItemIdSSO \
;SS\ ]
	homeRouteTT 
[TT 
_optionsTT &
.TT& '
JsonPathKeyTT' 2
]TT2 3
=TT4 5
$strTT6 8
;TT8 9
}UU 
)UU 
;UU 
}VV 
awaitYY 
RemoveTagAsyncYY  
(YY  !
partYY! %
)YY% &
;YY& '
}ZZ 	
public\\ 
override\\ 
async\\ 
Task\\ "
UnpublishedAsync\\# 3
(\\3 4!
PublishContentContext\\4 I
context\\J Q
,\\Q R
AutoroutePart\\S `
part\\a e
)\\e f
{]] 	
if^^ 
(^^ 
!^^ 
String^^ 
.^^ 
IsNullOrWhiteSpace^^ *
(^^* +
part^^+ /
.^^/ 0
Path^^0 4
)^^4 5
)^^5 6
{__ 
awaitaa 
_entriesaa 
.aa 
UpdateEntriesAsyncaa 1
(aa1 2
)aa2 3
;aa3 4
awaitdd 
RemoveTagAsyncdd $
(dd$ %
partdd% )
)dd) *
;dd* +
}ee 
}ff 	
publichh 
overridehh 
asynchh 
Taskhh "
RemovedAsynchh# /
(hh/ 0 
RemoveContentContexthh0 D
contexthhE L
,hhL M
AutorouteParthhN [
parthh\ `
)hh` a
{ii 	
ifjj 
(jj 
!jj 
Stringjj 
.jj 
IsNullOrWhiteSpacejj *
(jj* +
partjj+ /
.jj/ 0
Pathjj0 4
)jj4 5
&&jj6 8
contextjj9 @
.jj@ A
NoActiveVersionLeftjjA T
)jjT U
{kk 
awaitmm 
_entriesmm 
.mm 
UpdateEntriesAsyncmm 1
(mm1 2
)mm2 3
;mm3 4
awaitpp 
RemoveTagAsyncpp $
(pp$ %
partpp% )
)pp) *
;pp* +
}qq 
}rr 	
publictt 
overridett 
asynctt 
Tasktt "
ValidatingAsynctt# 2
(tt2 3"
ValidateContentContexttt3 I
contextttJ Q
,ttQ R
AutoroutePartttS `
parttta e
)tte f
{uu 	
ifww 
(ww 
Stringww 
.ww 
IsNullOrWhiteSpaceww )
(ww) *
partww* .
.ww. /
Pathww/ 3
)ww3 4
)ww4 5
{xx 
returnyy 
;yy 
}zz 
foreach|| 
(|| 
var|| 
item|| 
in||  
part||! %
.||% &"
ValidatePathFieldValue||& <
(||< =
S||= >
)||> ?
)||? @
{}} 
context~~ 
.~~ 
Fail~~ 
(~~ 
item~~ !
)~~! "
;~~" #
} 
if
�� 
(
�� 
!
�� 
await
�� '
IsAbsolutePathUniqueAsync
�� 0
(
��0 1
part
��1 5
.
��5 6
Path
��6 :
,
��: ;
part
��< @
.
��@ A
ContentItem
��A L
.
��L M
ContentItemId
��M Z
)
��Z [
)
��[ \
{
�� 
context
�� 
.
�� 
Fail
�� 
(
�� 
S
�� 
[
�� 
$str
�� B
]
��B C
,
��C D
nameof
��E K
(
��K L
part
��L P
.
��P Q
Path
��Q U
)
��U V
)
��V W
;
��W X
}
�� 
}
�� 	
public
�� 
override
�� 
async
�� 
Task
�� "
UpdatedAsync
��# /
(
��/ 0"
UpdateContentContext
��0 D
context
��E L
,
��L M
AutoroutePart
��N [
part
��\ `
)
��` a
{
�� 	
await
�� 3
%GenerateContainerPathFromPatternAsync
�� 7
(
��7 8
part
��8 <
)
��< =
;
��= >
await
�� 4
&GenerateContainedPathsFromPatternAsync
�� 8
(
��8 9
context
��9 @
.
��@ A
UpdatingItem
��A M
,
��M N
part
��O S
)
��S T
;
��T U
}
�� 	
public
�� 
async
�� 
override
�� 
Task
�� "
CloningAsync
��# /
(
��/ 0!
CloneContentContext
��0 C
context
��D K
,
��K L
AutoroutePart
��M Z
part
��[ _
)
��_ `
{
�� 	
var
�� 

clonedPart
�� 
=
�� 
context
�� $
.
��$ %
CloneContentItem
��% 5
.
��5 6
As
��6 8
<
��8 9
AutoroutePart
��9 F
>
��F G
(
��G H
)
��H I
;
��I J

clonedPart
�� 
.
�� 
Path
�� 
=
�� 
await
�� #-
GenerateUniqueAbsolutePathAsync
��$ C
(
��C D
part
��D H
.
��H I
Path
��I M
,
��M N
context
��O V
.
��V W
CloneContentItem
��W g
.
��g h
ContentItemId
��h u
)
��u v
;
��v w

clonedPart
�� 
.
�� 
SetHomepage
�� "
=
��# $
false
��% *
;
��* +

clonedPart
�� 
.
�� 
Apply
�� 
(
�� 
)
�� 
;
�� 
await
�� 4
&GenerateContainedPathsFromPatternAsync
�� 8
(
��8 9
context
��9 @
.
��@ A
CloneContentItem
��A Q
,
��Q R
part
��S W
)
��W X
;
��X Y
}
�� 	
public
�� 
override
�� 
Task
�� '
GetContentItemAspectAsync
�� 6
(
��6 7&
ContentItemAspectContext
��7 O
context
��P W
,
��W X
AutoroutePart
��Y f
part
��g k
)
��k l
{
�� 	
return
�� 
context
�� 
.
�� 
ForAsync
�� #
<
��# $ 
RouteHandlerAspect
��$ 6
>
��6 7
(
��7 8
aspect
��8 >
=>
��? A
{
�� 
var
�� #
contentTypeDefinition
�� )
=
��* +'
_contentDefinitionManager
��, E
.
��E F
GetTypeDefinition
��F W
(
��W X
part
��X \
.
��\ ]
ContentItem
��] h
.
��h i
ContentType
��i t
)
��t u
;
��u v
var
�� '
contentTypePartDefinition
�� -
=
��. /#
contentTypeDefinition
��0 E
.
��E F
Parts
��F K
.
��K L
FirstOrDefault
��L Z
(
��Z [
x
��[ \
=>
��] _
String
��` f
.
��f g
Equals
��g m
(
��m n
x
��n o
.
��o p
PartDefinition
��p ~
.
��~ 
Name�� �
,��� �
$str��� �
)��� �
)��� �
;��� �
var
�� 
settings
�� 
=
�� '
contentTypePartDefinition
�� 8
.
��8 9
GetSettings
��9 D
<
��D E#
AutoroutePartSettings
��E Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
settings
�� 
.
�� '
ManageContainedItemRoutes
�� 6
)
��6 7
{
�� 
aspect
�� 
.
�� 
Path
�� 
=
��  !
part
��" &
.
��& '
Path
��' +
;
��+ ,
aspect
�� 
.
�� 
Absolute
�� #
=
��$ %
part
��& *
.
��* +
Absolute
��+ 3
;
��3 4
aspect
�� 
.
�� 
Disabled
�� #
=
��$ %
part
��& *
.
��* +
Disabled
��+ 3
;
��3 4
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� )
;
��) *
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
SetHomeRouteAsync
�� ,
(
��, -
AutoroutePart
��- :
part
��; ?
,
��? @
Action
��A G
<
��G H"
RouteValueDictionary
��H \
>
��\ ]
action
��^ d
)
��d e
{
�� 	
var
�� 
site
�� 
=
�� 
await
�� 
_siteService
�� )
.
��) *#
LoadSiteSettingsAsync
��* ?
(
��? @
)
��@ A
;
��A B
if
�� 
(
�� 
site
�� 
.
�� 
	HomeRoute
�� 
==
�� !
null
��" &
)
��& '
{
�� 
site
�� 
.
�� 
	HomeRoute
�� 
=
��  
new
��! $"
RouteValueDictionary
��% 9
(
��9 :
)
��: ;
;
��; <
}
�� 
var
�� 
	homeRoute
�� 
=
�� 
site
��  
.
��  !
	HomeRoute
��! *
;
��* +
foreach
�� 
(
�� 
var
�� 
entry
�� 
in
�� !
_options
��" *
.
��* +
GlobalRouteValues
��+ <
)
��< =
{
�� 
	homeRoute
�� 
[
�� 
entry
�� 
.
��  
Key
��  #
]
��# $
=
��% &
entry
��' ,
.
��, -
Value
��- 2
;
��2 3
}
�� 
action
�� 
.
�� 
Invoke
�� 
(
�� 
	homeRoute
�� #
)
��# $
;
��$ %
part
�� 
.
�� 
SetHomepage
�� 
=
�� 
false
�� $
;
��$ %
part
�� 
.
�� 
Apply
�� 
(
�� 
)
�� 
;
�� 
await
�� 
_siteService
�� 
.
�� %
UpdateSiteSettingsAsync
�� 6
(
��6 7
site
��7 ;
)
��; <
;
��< =
}
�� 	
private
�� 
Task
�� 
RemoveTagAsync
�� #
(
��# $
AutoroutePart
��$ 1
part
��2 6
)
��6 7
{
�� 	
return
�� 
	_tagCache
�� 
.
�� 
RemoveTagAsync
�� +
(
��+ ,
$"
��, .
slug:
��. 3
{
��3 4
part
��4 8
.
��8 9
Path
��9 =
}
��= >
"
��> ?
)
��? @
;
��@ A
}
�� 	
private
�� 
async
�� 
Task
�� *
CheckContainedHomeRouteAsync
�� 7
(
��7 8
string
��8 >$
containerContentItemId
��? U
,
��U V)
ContainedContentItemsAspect
��W r
containedAspect��s �
,��� �
JObject��� �
content��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
accessor
�� !
in
��" $
containedAspect
��% 4
.
��4 5
	Accessors
��5 >
)
��> ?
{
�� 
var
�� 
jItems
�� 
=
�� 
accessor
�� %
.
��% &
Invoke
��& ,
(
��, -
content
��- 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
JObject
��  
jItem
��! &
in
��' )
jItems
��* 0
)
��0 1
{
�� 
var
�� 
contentItem
�� #
=
��$ %
jItem
��& +
.
��+ ,
ToObject
��, 4
<
��4 5
ContentItem
��5 @
>
��@ A
(
��A B
)
��B C
;
��C D
var
�� 
handlerAspect
�� %
=
��& '
await
��( -
_contentManager
��. =
.
��= >!
PopulateAspectAsync
��> Q
<
��Q R 
RouteHandlerAspect
��R d
>
��d e
(
��e f
contentItem
��f q
)
��q r
;
��r s
if
�� 
(
�� 
!
�� 
handlerAspect
�� &
.
��& '
Disabled
��' /
)
��/ 0
{
�� 
var
�� 
autoroutePart
�� )
=
��* +
contentItem
��, 7
.
��7 8
As
��8 :
<
��: ;
AutoroutePart
��; H
>
��H I
(
��I J
)
��J K
;
��K L
if
�� 
(
�� 
autoroutePart
�� )
!=
��* ,
null
��- 1
&&
��2 4
autoroutePart
��5 B
.
��B C
SetHomepage
��C N
)
��N O
{
�� 
await
�� !
SetHomeRouteAsync
��" 3
(
��3 4
autoroutePart
��4 A
,
��A B
	homeRoute
��C L
=>
��M O
{
�� 
	homeRoute
��  )
[
��) *
_options
��* 2
.
��2 3
ContentItemIdKey
��3 C
]
��C D
=
��E F$
containerContentItemId
��G ]
;
��] ^
	homeRoute
��  )
[
��) *
_options
��* 2
.
��2 3
JsonPathKey
��3 >
]
��> ?
=
��@ A
jItem
��B G
.
��G H
Path
��H L
;
��L M
}
�� 
)
�� 
;
�� 
break
�� !
;
��! "
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 4
&GenerateContainedPathsFromPatternAsync
�� A
(
��A B
ContentItem
��B M
contentItem
��N Y
,
��Y Z
AutoroutePart
��[ h
part
��i m
)
��m n
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� *
(
��* +
part
��+ /
.
��/ 0
Path
��0 4
)
��4 5
||
��6 8
!
��9 :
part
��: >
.
��> ?!
RouteContainedItems
��? R
)
��R S
{
�� 
return
�� 
;
�� 
}
�� 
_contentManager
�� 
??=
�� 
_serviceProvider
��  0
.
��0 1 
GetRequiredService
��1 C
<
��C D
IContentManager
��D S
>
��S T
(
��T U
)
��U V
;
��V W
var
�� 
containedAspect
�� 
=
��  !
await
��" '
_contentManager
��( 7
.
��7 8!
PopulateAspectAsync
��8 K
<
��K L)
ContainedContentItemsAspect
��L g
>
��g h
(
��h i
contentItem
��i t
)
��t u
;
��u v
var
�� 
entries
�� 
=
�� 
new
�� 
List
�� "
<
��" #
AutorouteEntry
��# 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
await
�� 5
'PopulateContainedContentItemRoutesAsync
�� 9
(
��9 :
entries
��: A
,
��A B
part
��C G
.
��G H
ContentItem
��H S
.
��S T
ContentItemId
��T a
,
��a b
containedAspect
��c r
,
��r s
contentItem
��t 
.�� �
Content��� �
,��� �
part��� �
.��� �
Path��� �
)��� �
;��� �
await
�� 5
'ValidateContainedContentItemRoutesAsync
�� 9
(
��9 :
entries
��: A
,
��A B
part
��C G
.
��G H
ContentItem
��H S
.
��S T
ContentItemId
��T a
,
��a b
containedAspect
��c r
,
��r s
contentItem
��t 
.�� �
Content��� �
,��� �
part��� �
.��� �
Path��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 5
'PopulateContainedContentItemRoutesAsync
�� B
(
��B C
List
��C G
<
��G H
AutorouteEntry
��H V
>
��V W
entries
��X _
,
��_ `
string
��a g$
containerContentItemId
��h ~
,
��~ +
ContainedContentItemsAspect��� �+
containedContentItemsAspect��� �
,��� �
JObject��� �
content��� �
,��� �
string��� �
basePath��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
accessor
�� !
in
��" $)
containedContentItemsAspect
��% @
.
��@ A
	Accessors
��A J
)
��J K
{
�� 
var
�� 
jItems
�� 
=
�� 
accessor
�� %
.
��% &
Invoke
��& ,
(
��, -
content
��- 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
JObject
��  
jItem
��! &
in
��' )
jItems
��* 0
)
��0 1
{
�� 
var
�� 
contentItem
�� #
=
��$ %
jItem
��& +
.
��+ ,
ToObject
��, 4
<
��4 5
ContentItem
��5 @
>
��@ A
(
��A B
)
��B C
;
��C D
var
�� 
handlerAspect
�� %
=
��& '
await
��( -
_contentManager
��. =
.
��= >!
PopulateAspectAsync
��> Q
<
��Q R 
RouteHandlerAspect
��R d
>
��d e
(
��e f
contentItem
��f q
)
��q r
;
��r s
if
�� 
(
�� 
!
�� 
handlerAspect
�� &
.
��& '
Disabled
��' /
)
��/ 0
{
�� 
var
�� 
path
��  
=
��! "
handlerAspect
��# 0
.
��0 1
Path
��1 5
;
��5 6
if
�� 
(
�� 
!
�� 
handlerAspect
�� *
.
��* +
Absolute
��+ 3
)
��3 4
{
�� 
path
��  
=
��! "
(
��# $
basePath
��$ ,
.
��, -
EndsWith
��- 5
(
��5 6
$char
��6 9
)
��9 :
?
��; <
basePath
��= E
:
��F G
basePath
��H P
+
��Q R
$char
��S V
)
��V W
+
��X Y
handlerAspect
��Z g
.
��g h
Path
��h l
;
��l m
}
�� 
entries
�� 
.
��  
Add
��  #
(
��# $
new
��$ '
AutorouteEntry
��( 6
(
��6 7$
containerContentItemId
��7 M
,
��M N
path
��O S
,
��S T
contentItem
��U `
.
��` a
ContentItemId
��a n
,
��n o
jItem
��p u
.
��u v
Path
��v z
)
��z {
{
�� 

DocumentId
�� &
=
��' (
contentItem
��) 4
.
��4 5
Id
��5 7
}
�� 
)
�� 
;
�� 
}
�� 
var
�� 
itemBasePath
�� $
=
��% &
(
��' (
basePath
��( 0
.
��0 1
EndsWith
��1 9
(
��9 :
$char
��: =
)
��= >
?
��? @
basePath
��A I
:
��J K
basePath
��L T
+
��U V
$char
��W Z
)
��Z [
+
��\ ]
handlerAspect
��^ k
.
��k l
Path
��l p
;
��p q
var
�� 
childrenAspect
�� &
=
��' (
await
��) .
_contentManager
��/ >
.
��> ?!
PopulateAspectAsync
��? R
<
��R S)
ContainedContentItemsAspect
��S n
>
��n o
(
��o p
contentItem
��p {
)
��{ |
;
��| }
await
�� 5
'PopulateContainedContentItemRoutesAsync
�� A
(
��A B
entries
��B I
,
��I J$
containerContentItemId
��K a
,
��a b
childrenAspect
��c q
,
��q r
jItem
��s x
,
��x y
itemBasePath��z �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 5
'ValidateContainedContentItemRoutesAsync
�� B
(
��B C
List
��C G
<
��G H
AutorouteEntry
��H V
>
��V W
entries
��X _
,
��_ `
string
��a g$
containerContentItemId
��h ~
,
��~ +
ContainedContentItemsAspect��� �+
containedContentItemsAspect��� �
,��� �
JObject��� �
content��� �
,��� �
string��� �
basePath��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
accessor
�� !
in
��" $)
containedContentItemsAspect
��% @
.
��@ A
	Accessors
��A J
)
��J K
{
�� 
var
�� 
jItems
�� 
=
�� 
accessor
�� %
.
��% &
Invoke
��& ,
(
��, -
content
��- 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
JObject
��  
jItem
��! &
in
��' )
jItems
��* 0
)
��0 1
{
�� 
var
�� 
contentItem
�� #
=
��$ %
jItem
��& +
.
��+ ,
ToObject
��, 4
<
��4 5
ContentItem
��5 @
>
��@ A
(
��A B
)
��B C
;
��C D
var
�� $
containedAutoroutePart
�� .
=
��/ 0
contentItem
��1 <
.
��< =
As
��= ?
<
��? @
AutoroutePart
��@ M
>
��M N
(
��N O
)
��O P
;
��P Q
if
�� 
(
�� $
containedAutoroutePart
�� .
!=
��/ 1
null
��2 6
&&
��7 9
!
��: ;$
containedAutoroutePart
��; Q
.
��Q R
Disabled
��R Z
)
��Z [
{
�� 
var
�� 
path
��  
=
��! "$
containedAutoroutePart
��# 9
.
��9 :
Path
��: >
;
��> ?
if
�� 
(
�� $
containedAutoroutePart
�� 2
.
��2 3
Absolute
��3 ;
&&
��< >
!
��? @
await
��@ E'
IsAbsolutePathUniqueAsync
��F _
(
��_ `
path
��` d
,
��d e
contentItem
��f q
.
��q r
ContentItemId
��r 
)�� �
)��� �
{
�� 
path
��  
=
��! "
await
��# (-
GenerateUniqueAbsolutePathAsync
��) H
(
��H I
path
��I M
,
��M N
contentItem
��O Z
.
��Z [
ContentItemId
��[ h
)
��h i
;
��i j$
containedAutoroutePart
�� 2
.
��2 3
Path
��3 7
=
��8 9
path
��: >
;
��> ?$
containedAutoroutePart
�� 2
.
��2 3
Apply
��3 8
(
��8 9
)
��9 :
;
��: ;
jItem
�� !
.
��! "
Merge
��" '
(
��' (
contentItem
��( 3
.
��3 4
Content
��4 ;
,
��; <
new
��= @
JsonMergeSettings
��A R
{
��  
MergeArrayHandling
��  2
=
��3 4 
MergeArrayHandling
��5 G
.
��G H
Replace
��H O
,
��O P$
MergeNullValueHandling
��  6
=
��7 8$
MergeNullValueHandling
��9 O
.
��O P
Merge
��P U
}
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
var
�� !
currentItemBasePath
��  3
=
��4 5
basePath
��6 >
.
��> ?
EndsWith
��? G
(
��G H
$char
��H K
)
��K L
?
��M N
basePath
��O W
:
��X Y
basePath
��Z b
+
��c d
$char
��e h
;
��h i
path
��  
=
��! "!
currentItemBasePath
��# 6
+
��7 8$
containedAutoroutePart
��9 O
.
��O P
Path
��P T
;
��T U
if
�� 
(
��  
!
��  !"
IsRelativePathUnique
��! 5
(
��5 6
entries
��6 =
,
��= >
path
��? C
,
��C D$
containedAutoroutePart
��E [
)
��[ \
)
��\ ]
{
�� 
path
��  $
=
��% &(
GenerateRelativeUniquePath
��' A
(
��A B
entries
��B I
,
��I J
path
��K O
,
��O P$
containedAutoroutePart
��Q g
)
��g h
;
��h i$
containedAutoroutePart
��  6
.
��6 7
Path
��7 ;
=
��< =
path
��> B
.
��B C
	Substring
��C L
(
��L M!
currentItemBasePath
��M `
.
��` a
Length
��a g
)
��g h
;
��h i$
containedAutoroutePart
��  6
.
��6 7
Apply
��7 <
(
��< =
)
��= >
;
��> ?
jItem
��  %
.
��% &
Merge
��& +
(
��+ ,
contentItem
��, 7
.
��7 8
Content
��8 ?
,
��? @
new
��A D
JsonMergeSettings
��E V
{
��  ! 
MergeArrayHandling
��$ 6
=
��7 8 
MergeArrayHandling
��9 K
.
��K L
Replace
��L S
,
��S T$
MergeNullValueHandling
��$ :
=
��; <$
MergeNullValueHandling
��= S
.
��S T
Merge
��T Y
}
��  !
)
��! "
;
��" #
}
�� 
path
��  
=
��! "
path
��# '
.
��' (
	Substring
��( 1
(
��1 2!
currentItemBasePath
��2 E
.
��E F
Length
��F L
)
��L M
;
��M N
}
�� 
var
�� #
containedItemBasePath
�� 1
=
��2 3
(
��4 5
basePath
��5 =
.
��= >
EndsWith
��> F
(
��F G
$char
��G J
)
��J K
?
��L M
basePath
��N V
:
��W X
basePath
��Y a
+
��b c
$char
��d g
)
��g h
+
��i j
path
��k o
;
��o p
var
�� 
childItemAspect
�� +
=
��, -
await
��. 3
_contentManager
��4 C
.
��C D!
PopulateAspectAsync
��D W
<
��W X)
ContainedContentItemsAspect
��X s
>
��s t
(
��t u
contentItem��u �
)��� �
;��� �
await
�� 5
'ValidateContainedContentItemRoutesAsync
�� E
(
��E F
entries
��F M
,
��M N$
containerContentItemId
��O e
,
��e f
childItemAspect
��g v
,
��v w
jItem
��x }
,
��} ~$
containedItemBasePath�� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� "
IsRelativePathUnique
�� 0
(
��0 1
List
��1 5
<
��5 6
AutorouteEntry
��6 D
>
��D E
entries
��F M
,
��M N
string
��O U
path
��V Z
,
��Z [
AutoroutePart
��\ i
context
��j q
)
��q r
{
�� 	
var
�� 
result
�� 
=
�� 
!
�� 
entries
�� !
.
��! "
Any
��" %
(
��% &
e
��& '
=>
��( *
context
��+ 2
.
��2 3
ContentItem
��3 >
.
��> ?
ContentItemId
��? L
!=
��M O
e
��P Q
.
��Q R$
ContainedContentItemId
��R h
&&
��i k
String
��l r
.
��r s
Equals
��s y
(
��y z
e
��z {
.
��{ |
Path��| �
,��� �
path��� �
,��� � 
StringComparison��� �
.��� �!
OrdinalIgnoreCase��� �
)��� �
)��� �
;��� �
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
string
�� (
GenerateRelativeUniquePath
�� 1
(
��1 2
List
��2 6
<
��6 7
AutorouteEntry
��7 E
>
��E F
entries
��G N
,
��N O
string
��P V
path
��W [
,
��[ \
AutoroutePart
��] j
context
��k r
)
��r s
{
�� 	
var
�� 
version
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
unversionedPath
�� 
=
��  !
path
��" &
;
��& '
var
�� &
versionSeparatorPosition
�� (
=
��) *
path
��+ /
.
��/ 0
LastIndexOf
��0 ;
(
��; <
$char
��< ?
)
��? @
;
��@ A
if
�� 
(
�� &
versionSeparatorPosition
�� (
>
��) *
-
��+ ,
$num
��, -
&&
��. 0
Int32
��1 6
.
��6 7
TryParse
��7 ?
(
��? @
path
��@ D
.
��D E
	Substring
��E N
(
��N O&
versionSeparatorPosition
��O g
)
��g h
.
��h i
	TrimStart
��i r
(
��r s
$char
��s v
)
��v w
,
��w x
out
��y |
version��} �
)��� �
)��� �
{
�� 
unversionedPath
�� 
=
��  !
path
��" &
.
��& '
	Substring
��' 0
(
��0 1
$num
��1 2
,
��2 3&
versionSeparatorPosition
��4 L
)
��L M
;
��M N
}
�� 
while
�� 
(
�� 
true
�� 
)
�� 
{
�� 
var
�� &
quantityCharactersToTrim
�� ,
=
��- .
unversionedPath
��/ >
.
��> ?
Length
��? E
+
��F G
$num
��H I
+
��J K
version
��L S
.
��S T
ToString
��T \
(
��\ ]
)
��] ^
.
��^ _
Length
��_ e
-
��f g
AutoroutePart
��h u
.
��u v
MaxPathLength��v �
;��� �
if
�� 
(
�� &
quantityCharactersToTrim
�� ,
>
��- .
$num
��/ 0
)
��0 1
{
�� 
unversionedPath
�� #
=
��$ %
unversionedPath
��& 5
.
��5 6
	Substring
��6 ?
(
��? @
$num
��@ A
,
��A B
unversionedPath
��C R
.
��R S
Length
��S Y
-
��Z [&
quantityCharactersToTrim
��\ t
)
��t u
;
��u v
}
�� 
var
�� 
versionedPath
�� !
=
��" #
$"
��$ &
{
��& '
unversionedPath
��' 6
}
��6 7
-
��7 8
{
��8 9
version
��9 @
++
��@ B
}
��B C
"
��C D
;
��D E
if
�� 
(
�� "
IsRelativePathUnique
�� (
(
��( )
entries
��) 0
,
��0 1
versionedPath
��2 ?
,
��? @
context
��A H
)
��H I
)
��I J
{
�� 
var
�� 
entry
�� 
=
�� 
entries
��  '
.
��' (
FirstOrDefault
��( 6
(
��6 7
e
��7 8
=>
��9 ;
e
��< =
.
��= >$
ContainedContentItemId
��> T
==
��U W
context
��X _
.
��_ `
ContentItem
��` k
.
��k l
ContentItemId
��l y
)
��y z
;
��z {
entry
�� 
.
�� 
Path
�� 
=
��  
versionedPath
��! .
;
��. /
return
�� 
versionedPath
�� (
;
��( )
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 3
%GenerateContainerPathFromPatternAsync
�� @
(
��@ A
AutoroutePart
��A N
part
��O S
)
��S T
{
�� 	
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� *
(
��* +
part
��+ /
.
��/ 0
Path
��0 4
)
��4 5
)
��5 6
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
pattern
�� 
=
�� 

GetPattern
�� $
(
��$ %
part
��% )
)
��) *
;
��* +
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
pattern
��& -
)
��- .
)
��. /
{
�� 
var
�� 
model
�� 
=
�� 
new
�� $
AutoroutePartViewModel
��  6
(
��6 7
)
��7 8
{
�� 
Path
�� 
=
�� 
part
�� 
.
��  
Path
��  $
,
��$ %
AutoroutePart
�� !
=
��" #
part
��$ (
,
��( )
ContentItem
�� 
=
��  !
part
��" &
.
��& '
ContentItem
��' 2
}
�� 
;
�� 
_contentManager
�� 
??=
��  #
_serviceProvider
��$ 4
.
��4 5 
GetRequiredService
��5 G
<
��G H
IContentManager
��H W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
var
�� 
cultureAspect
�� !
=
��" #
await
��$ )
_contentManager
��* 9
.
��9 :!
PopulateAspectAsync
��: M
(
��M N
part
��N R
.
��R S
ContentItem
��S ^
,
��^ _
new
��` c
CultureAspect
��d q
(
��q r
)
��r s
)
��s t
;
��t u
using
�� 
(
�� 
CultureScope
�� #
.
��# $
Create
��$ *
(
��* +
cultureAspect
��+ 8
.
��8 9
Culture
��9 @
)
��@ A
)
��A B
{
�� 
part
�� 
.
�� 
Path
�� 
=
�� 
await
��  %$
_liquidTemplateManager
��& <
.
��< =
RenderAsync
��= H
(
��H I
pattern
��I P
,
��P Q
NullEncoder
��R ]
.
��] ^
Default
��^ e
,
��e f
model
��g l
,
��l m
scope
�� 
=>
��  
scope
��! &
.
��& '
SetValue
��' /
(
��/ 0
nameof
��0 6
(
��6 7
ContentItem
��7 B
)
��B C
,
��C D
model
��E J
.
��J K
ContentItem
��K V
)
��V W
)
��W X
;
��X Y
}
�� 
part
�� 
.
�� 
Path
�� 
=
�� 
part
��  
.
��  !
Path
��! %
.
��% &
Replace
��& -
(
��- .
$str
��. 2
,
��2 3
String
��4 :
.
��: ;
Empty
��; @
)
��@ A
.
��A B
Replace
��B I
(
��I J
$str
��J N
,
��N O
String
��P V
.
��V W
Empty
��W \
)
��\ ]
;
��] ^
if
�� 
(
�� 
part
�� 
.
�� 
Path
�� 
?
�� 
.
�� 
Length
�� %
>
��& '
AutoroutePart
��( 5
.
��5 6
MaxPathLength
��6 C
)
��C D
{
�� 
part
�� 
.
�� 
Path
�� 
=
�� 
part
��  $
.
��$ %
Path
��% )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
AutoroutePart
��7 D
.
��D E
MaxPathLength
��E R
)
��R S
;
��S T
}
�� 
if
�� 
(
�� 
!
�� 
await
�� '
IsAbsolutePathUniqueAsync
�� 4
(
��4 5
part
��5 9
.
��9 :
Path
��: >
,
��> ?
part
��@ D
.
��D E
ContentItem
��E P
.
��P Q
ContentItemId
��Q ^
)
��^ _
)
��_ `
{
�� 
part
�� 
.
�� 
Path
�� 
=
�� 
await
��  %-
GenerateUniqueAbsolutePathAsync
��& E
(
��E F
part
��F J
.
��J K
Path
��K O
,
��O P
part
��Q U
.
��U V
ContentItem
��V a
.
��a b
ContentItemId
��b o
)
��o p
;
��p q
}
�� 
part
�� 
.
�� 
Apply
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
string
�� 

GetPattern
�� !
(
��! "
AutoroutePart
��" /
part
��0 4
)
��4 5
{
�� 	
var
�� #
contentTypeDefinition
�� %
=
��& ''
_contentDefinitionManager
��( A
.
��A B
GetTypeDefinition
��B S
(
��S T
part
��T X
.
��X Y
ContentItem
��Y d
.
��d e
ContentType
��e p
)
��p q
;
��q r
var
�� '
contentTypePartDefinition
�� )
=
��* +#
contentTypeDefinition
��, A
.
��A B
Parts
��B G
.
��G H
FirstOrDefault
��H V
(
��V W
x
��W X
=>
��Y [
String
��\ b
.
��b c
Equals
��c i
(
��i j
x
��j k
.
��k l
PartDefinition
��l z
.
��z {
Name
��{ 
,�� �
nameof��� �
(��� �
AutoroutePart��� �
)��� �
)��� �
)��� �
;��� �
var
�� 
pattern
�� 
=
�� '
contentTypePartDefinition
�� 3
.
��3 4
GetSettings
��4 ?
<
��? @#
AutoroutePartSettings
��@ U
>
��U V
(
��V W
)
��W X
.
��X Y
Pattern
��Y `
;
��` a
return
�� 
pattern
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
string
�� !
>
��! "-
GenerateUniqueAbsolutePathAsync
��# B
(
��B C
string
��C I
path
��J N
,
��N O
string
��P V
contentItemId
��W d
)
��d e
{
�� 	
var
�� 
version
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
unversionedPath
�� 
=
��  !
path
��" &
;
��& '
var
�� &
versionSeparatorPosition
�� (
=
��) *
path
��+ /
.
��/ 0
LastIndexOf
��0 ;
(
��; <
$char
��< ?
)
��? @
;
��@ A
if
�� 
(
�� &
versionSeparatorPosition
�� (
>
��) *
-
��+ ,
$num
��, -
&&
��. 0
Int32
��1 6
.
��6 7
TryParse
��7 ?
(
��? @
path
��@ D
.
��D E
	Substring
��E N
(
��N O&
versionSeparatorPosition
��O g
)
��g h
.
��h i
	TrimStart
��i r
(
��r s
$char
��s v
)
��v w
,
��w x
out
��y |
version��} �
)��� �
)��� �
{
�� 
unversionedPath
�� 
=
��  !
path
��" &
.
��& '
	Substring
��' 0
(
��0 1
$num
��1 2
,
��2 3&
versionSeparatorPosition
��4 L
)
��L M
;
��M N
}
�� 
while
�� 
(
�� 
true
�� 
)
�� 
{
�� 
var
�� &
quantityCharactersToTrim
�� ,
=
��- .
unversionedPath
��/ >
.
��> ?
Length
��? E
+
��F G
$num
��H I
+
��J K
version
��L S
.
��S T
ToString
��T \
(
��\ ]
)
��] ^
.
��^ _
Length
��_ e
-
��f g
AutoroutePart
��h u
.
��u v
MaxPathLength��v �
;��� �
if
�� 
(
�� &
quantityCharactersToTrim
�� ,
>
��- .
$num
��/ 0
)
��0 1
{
�� 
unversionedPath
�� #
=
��$ %
unversionedPath
��& 5
.
��5 6
	Substring
��6 ?
(
��? @
$num
��@ A
,
��A B
unversionedPath
��C R
.
��R S
Length
��S Y
-
��Z [&
quantityCharactersToTrim
��\ t
)
��t u
;
��u v
}
�� 
var
�� 
versionedPath
�� !
=
��" #
$"
��$ &
{
��& '
unversionedPath
��' 6
}
��6 7
-
��7 8
{
��8 9
version
��9 @
++
��@ B
}
��B C
"
��C D
;
��D E
if
�� 
(
�� 
await
�� '
IsAbsolutePathUniqueAsync
�� 3
(
��3 4
versionedPath
��4 A
,
��A B
contentItemId
��C P
)
��P Q
)
��Q R
{
�� 
return
�� 
versionedPath
�� (
;
��( )
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  '
IsAbsolutePathUniqueAsync
��! :
(
��: ;
string
��; A
path
��B F
,
��F G
string
��H N
contentItemId
��O \
)
��\ ]
{
�� 	
path
�� 
=
�� 
path
�� 
.
�� 
Trim
�� 
(
�� 
$char
��  
)
��  !
;
��! "
var
�� 
paths
�� 
=
�� 
new
�� 
string
�� "
[
��" #
]
��# $
{
��% &
path
��' +
,
��+ ,
$str
��- 0
+
��1 2
path
��3 7
,
��7 8
path
��9 =
+
��> ?
$str
��@ C
,
��C D
$str
��E H
+
��I J
path
��K O
+
��P Q
$str
��R U
}
��V W
;
��W X
var
�� 
possibleConflicts
�� !
=
��" #
await
��$ )
_session
��* 2
.
��2 3

QueryIndex
��3 =
<
��= > 
AutoroutePartIndex
��> P
>
��P Q
(
��Q R
o
��R S
=>
��T V
(
��W X
o
��X Y
.
��Y Z
	Published
��Z c
||
��d f
o
��g h
.
��h i
Latest
��i o
)
��o p
&&
��q s
o
��t u
.
��u v
Path
��v z
.
��z {
IsIn
��{ 
(�� �
paths��� �
)��� �
)��� �
.��� �
	ListAsync��� �
(��� �
)��� �
;��� �
if
�� 
(
�� 
possibleConflicts
�� !
.
��! "
Any
��" %
(
��% &
)
��& '
)
��' (
{
�� 
if
�� 
(
�� 
possibleConflicts
�� %
.
��% &
Any
��& )
(
��) *
x
��* +
=>
��, .
x
��/ 0
.
��0 1
ContentItemId
��1 >
!=
��? A
contentItemId
��B O
)
��O P
||
��Q S
possibleConflicts
�� %
.
��% &
Any
��& )
(
��) *
x
��* +
=>
��, .
!
��/ 0
String
��0 6
.
��6 7
IsNullOrEmpty
��7 D
(
��D E
x
��E F
.
��F G$
ContainedContentItemId
��G ]
)
��] ^
&&
��_ a
x
��b c
.
��c d$
ContainedContentItemId
��d z
!=
��{ }
contentItemId��~ �
)��� �
)��� �
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Handlers\DefaultRouteContentHandler.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Handlers  (
{ 
public		 

class		 &
DefaultRouteContentHandler		 +
:		, -
ContentHandlerBase		. @
{

 
private 
readonly 
ISlugService %
_slugService& 2
;2 3
public &
DefaultRouteContentHandler )
() *
ISlugService* 6
slugService7 B
)B C
{ 	
_slugService 
= 
slugService &
;& '
} 	
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
)W X
{ 	
return 
context 
. 
ForAsync #
<# $
RouteHandlerAspect$ 6
>6 7
(7 8
aspect8 >
=>? A
{ 
if 
( 
String 
. 
IsNullOrEmpty (
(( )
aspect) /
./ 0
Path0 4
)4 5
)5 6
{ 
var 
path 
= 
context &
.& '
ContentItem' 2
.2 3
ContentItemId3 @
;@ A
if 
( 
! 
String 
.  
IsNullOrEmpty  -
(- .
context. 5
.5 6
ContentItem6 A
.A B
DisplayTextB M
)M N
)N O
{ 
path 
= 
path #
+$ %
$str& )
+* +
context, 3
.3 4
ContentItem4 ?
.? @
DisplayText@ K
;K L
} 
aspect   
.   
Path   
=    !
_slugService  " .
.  . /
Slugify  / 6
(  6 7
path  7 ;
)  ; <
;  < =
}!! 
return## 
Task## 
.## 
CompletedTask## )
;##) *
}$$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ځ
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Indexes\AutoroutePartIndex.cs
	namespace 	
OrchardCore
 
. 
ContentManagement '
.' (
Records( /
{ 
public 

class 
AutoroutePartIndex #
:$ %
MapIndex& .
{ 
public 
int 

DocumentId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Path 
{ 
get  
;  !
set" %
;% &
}' (
public$$ 
bool$$ 
	Published$$ 
{$$ 
get$$  #
;$$# $
set$$% (
;$$( )
}$$* +
public)) 
bool)) 
Latest)) 
{)) 
get))  
;))  !
set))" %
;))% &
}))' (
public.. 
string.. "
ContainedContentItemId.. ,
{..- .
get../ 2
;..2 3
set..4 7
;..7 8
}..9 :
public33 
string33 
JsonPath33 
{33  
get33! $
;33$ %
set33& )
;33) *
}33+ ,
}44 
public66 

class66 &
AutoroutePartIndexProvider66 +
:66, -
ContentHandlerBase66. @
,66@ A
IIndexProvider66B P
,66P Q 
IScopedIndexProvider66R f
{77 
private88 
readonly88 
IServiceProvider88 )
_serviceProvider88* :
;88: ;
private99 
readonly99 
HashSet99  
<99  !
ContentItem99! ,
>99, -
_itemRemoved99. :
=99; <
new99= @
HashSet99A H
<99H I
ContentItem99I T
>99T U
(99U V
)99V W
;99W X
private:: 
readonly:: 
HashSet::  
<::  !
string::! '
>::' (
_partRemoved::) 5
=::6 7
new::8 ;
HashSet::< C
<::C D
string::D J
>::J K
(::K L
)::L M
;::M N
private;; %
IContentDefinitionManager;; )%
_contentDefinitionManager;;* C
;;;C D
private<< 
IContentManager<< 
_contentManager<<  /
;<</ 0
public>> &
AutoroutePartIndexProvider>> )
(>>) *
IServiceProvider>>* :
serviceProvider>>; J
)>>J K
{?? 	
_serviceProvider@@ 
=@@ 
serviceProvider@@ .
;@@. /
}AA 	
publicCC 
overrideCC 
TaskCC 
RemovedAsyncCC )
(CC) * 
RemoveContentContextCC* >
contextCC? F
)CCF G
{DD 	
ifEE 
(EE 
contextEE 
.EE 
NoActiveVersionLeftEE +
)EE+ ,
{FF 
varGG 
partGG 
=GG 
contextGG "
.GG" #
ContentItemGG# .
.GG. /
AsGG/ 1
<GG1 2
AutoroutePartGG2 ?
>GG? @
(GG@ A
)GGA B
;GGB C
ifII 
(II 
partII 
!=II 
nullII  
)II  !
{JJ 
_itemRemovedKK  
.KK  !
AddKK! $
(KK$ %
contextKK% ,
.KK, -
ContentItemKK- 8
)KK8 9
;KK9 :
}LL 
}MM 
returnOO 
TaskOO 
.OO 
CompletedTaskOO %
;OO% &
}PP 	
publicRR 
overrideRR 
asyncRR 
TaskRR "
PublishedAsyncRR# 1
(RR1 2!
PublishContentContextRR2 G
contextRRH O
)RRO P
{SS 	
varTT 
partTT 
=TT 
contextTT 
.TT 
ContentItemTT *
.TT* +
AsTT+ -
<TT- .
AutoroutePartTT. ;
>TT; <
(TT< =
)TT= >
;TT> ?
ifXX 
(XX 
partXX 
!=XX 
nullXX 
)XX 
{YY %
_contentDefinitionManager[[ )
??=[[* -
_serviceProvider[[. >
.[[> ?
GetRequiredService[[? Q
<[[Q R%
IContentDefinitionManager[[R k
>[[k l
([[l m
)[[m n
;[[n o
var^^ !
contentTypeDefinition^^ )
=^^* +%
_contentDefinitionManager^^, E
.^^E F
GetTypeDefinition^^F W
(^^W X
context^^X _
.^^_ `
ContentItem^^` k
.^^k l
ContentType^^l w
)^^w x
;^^x y
if__ 
(__ 
!__ !
contentTypeDefinition__ *
.__* +
Parts__+ 0
.__0 1
Any__1 4
(__4 5
ctpd__5 9
=>__: <
ctpd__= A
.__A B
Name__B F
==__G I
nameof__J P
(__P Q
AutoroutePart__Q ^
)__^ _
)___ `
)__` a
{`` 
contextaa 
.aa 
ContentItemaa '
.aa' (
Removeaa( .
<aa. /
AutoroutePartaa/ <
>aa< =
(aa= >
)aa> ?
;aa? @
_partRemovedbb  
.bb  !
Addbb! $
(bb$ %
contextbb% ,
.bb, -
ContentItembb- 8
.bb8 9
ContentItemIdbb9 F
)bbF G
;bbG H
varee 
autorouteEntriesee (
=ee) *
_serviceProvideree+ ;
.ee; <
GetRequiredServiceee< N
<eeN O
IAutorouteEntrieseeO `
>ee` a
(eea b
)eeb c
;eec d
awaitff 
autorouteEntriesff *
.ff* +
UpdateEntriesAsyncff+ =
(ff= >
)ff> ?
;ff? @
}gg 
}hh 
}ii 	
publickk 
stringkk 
CollectionNamekk $
{kk% &
getkk' *
;kk* +
setkk, /
;kk/ 0
}kk1 2
publicll 
Typell 
ForTypell 
(ll 
)ll 
=>ll  
typeofll! '
(ll' (
ContentItemll( 3
)ll3 4
;ll4 5
publicmm 
voidmm 
Describemm 
(mm 
IDescriptormm (
contextmm) 0
)mm0 1
=>mm2 4
Describemm5 =
(mm= >
(mm> ?
DescribeContextmm? N
<mmN O
ContentItemmmO Z
>mmZ [
)mm[ \
contextmm\ c
)mmc d
;mmd e
publicoo 
voidoo 
Describeoo 
(oo 
DescribeContextoo ,
<oo, -
ContentItemoo- 8
>oo8 9
contextoo: A
)ooA B
{pp 	
contextqq 
.qq 
Forqq 
<qq 
AutoroutePartIndexqq *
>qq* +
(qq+ ,
)qq, -
.rr 
Whenrr 
(rr 
contentItemrr !
=>rr" $
contentItemrr% 0
.rr0 1
Hasrr1 4
<rr4 5
AutoroutePartrr5 B
>rrB C
(rrC D
)rrD E
||rrF H
_partRemovedrrI U
.rrU V
ContainsrrV ^
(rr^ _
contentItemrr_ j
.rrj k
ContentItemIdrrk x
)rrx y
)rry z
.ss 
Mapss 
(ss 
asyncss 
contentItemss &
=>ss' )
{tt 
varvv 
itemRemovedvv #
=vv$ %
_itemRemovedvv& 2
.vv2 3
Containsvv3 ;
(vv; <
contentItemvv< G
)vvG H
;vvH I
ifww 
(ww 
!ww 
contentItemww $
.ww$ %
	Publishedww% .
&&ww/ 1
!ww2 3
contentItemww3 >
.ww> ?
Latestww? E
&&wwF H
!wwI J
itemRemovedwwJ U
)wwU V
{xx 
returnyy 
nullyy #
;yy# $
}zz 
var}} 
partRemoved}} #
=}}$ %
_partRemoved}}& 2
.}}2 3
Contains}}3 ;
(}}; <
contentItem}}< G
.}}G H
ContentItemId}}H U
)}}U V
;}}V W
var 
part 
= 
contentItem *
.* +
As+ -
<- .
AutoroutePart. ;
>; <
(< =
)= >
;> ?
if
�� 
(
�� 
!
�� 
partRemoved
�� $
&&
��% '
(
��( )
part
��) -
==
��. 0
null
��1 5
||
��6 8
String
��9 ?
.
��? @
IsNullOrEmpty
��@ M
(
��M N
part
��N R
.
��R S
Path
��S W
)
��W X
)
��X Y
)
��Y Z
{
�� 
return
�� 
null
�� #
;
��# $
}
�� 
var
�� 
results
�� 
=
��  !
new
��" %
List
��& *
<
��* + 
AutoroutePartIndex
��+ =
>
��= >
{
�� 
new
��  
AutoroutePartIndex
�� .
{
�� 
ContentItemId
�� )
=
��* +
contentItem
��, 7
.
��7 8
ContentItemId
��8 E
,
��E F
Path
��  
=
��! "
!
��# $
partRemoved
��$ /
&&
��0 2
!
��3 4
part
��4 8
.
��8 9
Disabled
��9 A
?
��B C
part
��D H
.
��H I
Path
��I M
:
��N O
null
��P T
,
��T U
	Published
�� %
=
��& '
contentItem
��( 3
.
��3 4
	Published
��4 =
,
��= >
Latest
�� "
=
��# $
contentItem
��% 0
.
��0 1
Latest
��1 7
}
�� 
}
�� 
;
�� 
if
�� 
(
�� 
partRemoved
�� #
||
��$ &
!
��' (
part
��( ,
.
��, -!
RouteContainedItems
��- @
||
��A C
part
��D H
.
��H I
Disabled
��I Q
||
��R T
itemRemoved
��U `
)
��` a
{
�� 
return
�� 
results
�� &
;
��& '
}
�� 
_contentManager
�� #
??=
��$ '
_serviceProvider
��( 8
.
��8 9 
GetRequiredService
��9 K
<
��K L
IContentManager
��L [
>
��[ \
(
��\ ]
)
��] ^
;
��^ _
var
�� )
containedContentItemsAspect
�� 3
=
��4 5
await
��6 ;
_contentManager
��< K
.
��K L!
PopulateAspectAsync
��L _
<
��_ `)
ContainedContentItemsAspect
��` {
>
��{ |
(
��| }
contentItem��} �
)��� �
;��� �
await
�� 6
(PopulateContainedContentItemIndexesAsync
�� B
(
��B C
results
��C J
,
��J K
contentItem
��L W
,
��W X)
containedContentItemsAspect
��Y t
,
��t u
contentItem��v �
.��� �
Content��� �
,��� �
part��� �
.��� �
Path��� �
)��� �
;��� �
return
�� 
results
�� "
;
��" #
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 6
(PopulateContainedContentItemIndexesAsync
�� C
(
��C D
List
��D H
<
��H I 
AutoroutePartIndex
��I [
>
��[ \
results
��] d
,
��d e
ContentItem
��f q#
containerContentItem��r �
,��� �+
ContainedContentItemsAspect��� �+
containedContentItemsAspect��� �
,��� �
JObject��� �
content��� �
,��� �
string��� �
basePath��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
accessor
�� !
in
��" $)
containedContentItemsAspect
��% @
.
��@ A
	Accessors
��A J
)
��J K
{
�� 
var
�� 
items
�� 
=
�� 
accessor
�� $
.
��$ %
Invoke
��% +
(
��+ ,
content
��, 3
)
��3 4
;
��4 5
foreach
�� 
(
�� 
JObject
��  
jItem
��! &
in
��' )
items
��* /
)
��/ 0
{
�� 
var
�� 
contentItem
�� #
=
��$ %
jItem
��& +
.
��+ ,
ToObject
��, 4
<
��4 5
ContentItem
��5 @
>
��@ A
(
��A B
)
��B C
;
��C D
var
�� 
handlerAspect
�� %
=
��& '
await
��( -
_contentManager
��. =
.
��= >!
PopulateAspectAsync
��> Q
<
��Q R 
RouteHandlerAspect
��R d
>
��d e
(
��e f
contentItem
��f q
)
��q r
;
��r s
if
�� 
(
�� 
!
�� 
handlerAspect
�� &
.
��& '
Disabled
��' /
)
��/ 0
{
�� 
var
�� 
path
��  
=
��! "
handlerAspect
��# 0
.
��0 1
Path
��1 5
;
��5 6
if
�� 
(
�� 
!
�� 
handlerAspect
�� *
.
��* +
Absolute
��+ 3
)
��3 4
{
�� 
path
��  
=
��! "
(
��# $
basePath
��$ ,
.
��, -
EndsWith
��- 5
(
��5 6
$char
��6 9
)
��9 :
?
��; <
basePath
��= E
:
��F G
basePath
��H P
+
��Q R
$char
��S V
)
��V W
+
��X Y
handlerAspect
��Z g
.
��g h
Path
��h l
;
��l m
}
�� 
results
�� 
.
��  
Add
��  #
(
��# $
new
��$ ' 
AutoroutePartIndex
��( :
{
�� 
ContentItemId
�� )
=
��* +"
containerContentItem
��, @
.
��@ A
ContentItemId
��A N
,
��N O
Path
��  
=
��! "
path
��# '
,
��' (
	Published
�� %
=
��& '"
containerContentItem
��( <
.
��< =
	Published
��= F
,
��F G
Latest
�� "
=
��# $"
containerContentItem
��% 9
.
��9 :
Latest
��: @
,
��@ A$
ContainedContentItemId
�� 2
=
��3 4
contentItem
��5 @
.
��@ A
ContentItemId
��A N
,
��N O
JsonPath
�� $
=
��% &
jItem
��' ,
.
��, -
Path
��- 1
}
�� 
)
�� 
;
�� 
}
�� 
var
�� 
itemBasePath
�� $
=
��% &
(
��' (
basePath
��( 0
.
��0 1
EndsWith
��1 9
(
��9 :
$char
��: =
)
��= >
?
��? @
basePath
��A I
:
��J K
basePath
��L T
+
��U V
$char
��W Z
)
��Z [
+
��\ ]
handlerAspect
��^ k
.
��k l
Path
��l p
;
��p q
var
�� 
childrenAspect
�� &
=
��' (
await
��) .
_contentManager
��/ >
.
��> ?!
PopulateAspectAsync
��? R
<
��R S)
ContainedContentItemsAspect
��S n
>
��n o
(
��o p
contentItem
��p {
)
��{ |
;
��| }
await
�� 6
(PopulateContainedContentItemIndexesAsync
�� B
(
��B C
results
��C J
,
��J K"
containerContentItem
��L `
,
��` a
childrenAspect
��b p
,
��p q
jItem
��r w
,
��w x
itemBasePath��y �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Indexing\AutoroutePartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Indexing  (
{ 
public 

class %
AutoroutePartIndexHandler *
:+ ,#
ContentPartIndexHandler- D
<D E
AutoroutePartE R
>R S
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
AutoroutePart		- :
part		; ?
,		? @!
BuildPartIndexContext		A V
context		W ^
)		^ _
{

 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
& 
~  
DocumentIndexOptions '
.' (
Sanitize( 0
& 
~  
DocumentIndexOptions '
.' (
Analyze( /
; 
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
part/ 3
.3 4
Path4 8
,8 9
options: A
)A B
;B C
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Liquid\ContentAutorouteLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Liquid  &
{		 
public

 

class

 6
*ContentAutorouteLiquidTemplateEventHandler

 ;
:

< ='
ILiquidTemplateEventHandler

> Y
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IAutorouteEntries *
_autorouteEntries+ <
;< =
public 6
*ContentAutorouteLiquidTemplateEventHandler 9
(9 :
IContentManager: I
contentManagerJ X
,X Y
IAutorouteEntriesZ k
autorouteEntriesl |
)| }
{ 	
_contentManager 
= 
contentManager ,
;, -
_autorouteEntries 
= 
autorouteEntries  0
;0 1
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
context 
.  
MemberAccessStrategy (
.( )
Register) 1
<1 2!
LiquidContentAccessor2 G
,G H"
LiquidPropertyAccessorI _
>_ `
(` a
$stra g
,g h
obji l
=>m o
{ 
return 
new "
LiquidPropertyAccessor 1
(1 2
async2 7
alias8 =
=>> @
{ 
if 
( 
! 
alias 
. 

StartsWith )
() *
$char* -
)- .
). /
{ 
alias 
= 
$str  #
+$ %
alias& +
;+ ,
} 
(   
var   
found   
,   
var    #
entry  $ )
)  ) *
=  + ,
await  - 2
_autorouteEntries  3 D
.  D E"
TryGetEntryByPathAsync  E [
(  [ \
alias  \ a
)  a b
;  b c
if"" 
("" 
found"" 
)"" 
{## 
return$$ 

FluidValue$$ )
.$$) *
Create$$* 0
($$0 1
await$$1 6
_contentManager$$7 F
.$$F G
GetAsync$$G O
($$O P
entry$$P U
.$$U V
ContentItemId$$V c
,$$c d
entry$$e j
.$$j k
JsonPath$$k s
)$$s t
)$$t u
;$$u v
}%% 
return'' 
NilValue'' #
.''# $
Instance''$ ,
;'', -
}(( 
)(( 
;(( 
})) 
))) 
;)) 
return++ 
Task++ 
.++ 
CompletedTask++ %
;++% &
},, 	
}-- 
}.. �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
,2 3
Dependencies 
= 
new 
[ 
] 
{ 
$str 5
}6 7
,7 8
Category		 
=		 
$str		 
)

 
]

 �0
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Migrations.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
{		 
public

 

class

 

Migrations

 
:

 
DataMigration

 +
{ 
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: I
,I J
builderK R
=>S U
builderV ]
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! O
)O P
)P Q
;Q R
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
AutoroutePartIndex. @
>@ A
(A B
tableB G
=>H J
tableK P
. 
Column 
< 
string 
> 
(  
$str  /
,/ 0
c1 2
=>3 5
c6 7
.7 8

WithLength8 B
(B C
$numC E
)E F
)F G
. 
Column 
< 
string 
> 
(  
$str  8
,8 9
c: ;
=>< >
c? @
.@ A

WithLengthA K
(K L
$numL N
)N O
)O P
. 
Column 
< 
string 
> 
(  
$str  *
,* +
c, -
=>. 0
c1 2
.2 3
	Unlimited3 <
(< =
)= >
)> ?
. 
Column 
< 
string 
> 
(  
$str  &
,& '
col( +
=>, .
col/ 2
.2 3

WithLength3 =
(= >
AutoroutePart> K
.K L
MaxPathLengthL Y
)Y Z
)Z [
. 
Column 
< 
bool 
> 
( 
$str )
)) *
. 
Column 
< 
bool 
> 
( 
$str &
)& '
)   
;   
SchemaBuilder"" 
."" 
AlterIndexTable"" )
<"") *
AutoroutePartIndex""* <
>""< =
(""= >
table""> C
=>""D F
table""G L
.## 
CreateIndex## 
(## 
$str## @
,##@ A
$str##B N
)##N O
)$$ 
;$$ 
return'' 
$num'' 
;'' 
}(( 	
public,, 
int,, 
UpdateFrom1,, 
(,, 
),,  
{-- 	%
_contentDefinitionManager.. %
...% &
MigratePartSettings..& 9
<..9 :
AutoroutePart..: G
,..G H!
AutoroutePartSettings..I ^
>..^ _
(.._ `
)..` a
;..a b
return00 
$num00 
;00 
}11 	
public44 
int44 
UpdateFrom244 
(44 
)44  
{55 	
return66 
$num66 
;66 
}77 	
public:: 
int:: 
UpdateFrom3:: 
(:: 
)::  
{;; 	
SchemaBuilder<< 
.<< 
AlterIndexTable<< )
<<<) *
AutoroutePartIndex<<* <
><<< =
(<<= >
table<<> C
=><<D F
table<<G L
.== 
	AddColumn== 
<== 
string== !
>==! "
(==" #
$str==# ;
,==; <
c=== >
=>==? A
c==B C
.==C D

WithLength==D N
(==N O
$num==O Q
)==Q R
)==R S
)>> 
;>> 
SchemaBuilder@@ 
.@@ 
AlterIndexTable@@ )
<@@) *
AutoroutePartIndex@@* <
>@@< =
(@@= >
table@@> C
=>@@D F
table@@G L
.AA 
	AddColumnAA 
<AA 
stringAA !
>AA! "
(AA" #
$strAA# -
,AA- .
cAA/ 0
=>AA1 3
cAA4 5
.AA5 6
	UnlimitedAA6 ?
(AA? @
)AA@ A
)AAA B
)BB 
;BB 
SchemaBuilderDD 
.DD 
AlterIndexTableDD )
<DD) *
AutoroutePartIndexDD* <
>DD< =
(DD= >
tableDD> C
=>DDD F
tableDDG L
.EE 
	AddColumnEE 
<EE 
boolEE 
>EE  
(EE  !
$strEE! )
,EE) *
cEE+ ,
=>EE- /
cEE0 1
.EE1 2
WithDefaultEE2 =
(EE= >
falseEE> C
)EEC D
)EED E
)FF 
;FF 
returnHH 
$numHH 
;HH 
}II 	
publicLL 
intLL 
UpdateFrom4LL 
(LL 
)LL  
{MM 	
SchemaBuilderNN 
.NN 
AlterIndexTableNN )
<NN) *
AutoroutePartIndexNN* <
>NN< =
(NN= >
tableNN> C
=>NND F
tableNNG L
.OO 
CreateIndexOO 
(OO 
$strOO @
,OO@ A
$strOOB N
)OON O
)PP 
;PP 
returnRR 
$numRR 
;RR 
}SS 	
}TT 
}UU �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Models\AutoroutePart.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Models  &
{ 
public 

class 
AutoroutePart 
:  
ContentPart! ,
{ 
public 
static 
char 
[ 
] $
InvalidCharactersForPath 5
=6 7
$str8 R
.R S
ToCharArrayS ^
(^ _
)_ `
;` a
public 
const 
int 
MaxPathLength &
=' (
$num) -
;- .
public

 
string

 
Path
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
' (
public 
bool 
SetHomepage 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
Disabled 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
RouteContainedItems '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
Absolute 
{ 
get "
;" #
set$ '
;' (
}) *
}   
}!! �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Models\AutoroutePartExtensions.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Models  &
{ 
public 

static 
class #
AutoroutePartExtensions /
{		 
public

 
static

 
IEnumerable

 !
<

! "
ValidationResult

" 2
>

2 3"
ValidatePathFieldValue

4 J
(

J K
this

K O
AutoroutePart

P ]
	autoroute

^ g
,

g h
IStringLocalizer

i y
S

z {
)

{ |
{ 	
if 
( 
	autoroute 
. 
Path 
== !
$str" %
)% &
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str	4 �
]
� �
,
� �
new
� �
[
� �
]
� �
{
� �
nameof
� �
(
� �
	autoroute
� �
.
� �
Path
� �
)
� �
}
� �
)
� �
;
� �
} 
if 
( 
	autoroute 
. 
Path 
? 
.  

IndexOfAny  *
(* +
AutoroutePart+ 8
.8 9$
InvalidCharactersForPath9 Q
)Q R
>S T
-U V
$numV W
||X Z
	autoroute[ d
.d e
Pathe i
?i j
.j k
IndexOfk r
(r s
$chars v
)v w
>x y
-z {
$num{ |
||} 
	autoroute
� �
.
� �
Path
� �
?
� �
.
� �
IndexOf
� �
(
� �
$str
� �
)
� �
>
� �
-
� �
$num
� �
)
� �
{ 
var '
invalidCharactersForMessage /
=0 1
string2 8
.8 9
Join9 =
(= >
$str> B
,B C
AutoroutePartD Q
.Q R$
InvalidCharactersForPathR j
.j k
Selectk q
(q r
cr s
=>t v
$"w y
\"y {
{{ |
c| }
}} ~
\"	~ �
"
� �
)
� �
)
� �
;
� �
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str	4 �
,
� �)
invalidCharactersForMessage
� �
]
� �
,
� �
new
� �
[
� �
]
� �
{
� �
nameof
� �
(
� �
	autoroute
� �
.
� �
Path
� �
)
� �
}
� �
)
� �
;
� �
} 
if 
( 
	autoroute 
. 
Path 
? 
.  
Length  &
>' (
AutoroutePart) 6
.6 7
MaxPathLength7 D
)D E
{ 
yield 
return 
new  
ValidationResult! 1
(1 2
S2 3
[3 4
$str	4 �
,
� �
AutoroutePart
� �
.
� �
MaxPathLength
� �
]
� �
,
� �
new
� �
[
� �
]
� �
{
� �
nameof
� �
(
� �
	autoroute
� �
.
� �
Path
� �
)
� �
}
� �
)
� �
;
� �
} 
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Models\AutoroutePartSettings.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Models  &
{ 
public 

class !
AutoroutePartSettings &
{ 
public

 
bool

 
AllowCustomPath
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
[ 	
DefaultValue	 
( 
$str ?
)? @
]@ A
public 
string 
Pattern 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. W
;W X
public 
bool 
ShowHomepageOption &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
AllowUpdatePath #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
AllowDisabled !
{" #
get$ '
;' (
set) ,
;, -
}. /
public$$ 
bool$$ $
AllowRouteContainedItems$$ ,
{$$- .
get$$/ 2
;$$2 3
set$$4 7
;$$7 8
}$$9 :
public)) 
bool)) %
ManageContainedItemRoutes)) -
{)). /
get))0 3
;))3 4
set))5 8
;))8 9
})): ;
public.. 
bool.. 
AllowAbsolutePath.. %
{..& '
get..( +
;..+ ,
set..- 0
;..0 1
}..2 3
}// 
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Permissions.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
public		 
static		 
readonly		 

Permission		 )
SetHomepage		* 5
=		6 7
new		8 ;

Permission		< F
(		F G
$str		G T
,		T U
$str		V e
)		e f
;		f g
public

 
Task

 
<

 
IEnumerable

 
<

  

Permission

  *
>

* +
>

+ ,
GetPermissionsAsync

- @
(

@ A
)

A B
{ 	
return 
Task 
. 

FromResult "
(" #
GetPermissions# 1
(1 2
)2 3
)3 4
;4 5
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{) *
Name 
= 
$str *
,* +
Permissions 
=  !
GetPermissions" 0
(0 1
)1 2
} 
} 
; 
} 	
private 
IEnumerable 
< 

Permission &
>& '
GetPermissions( 6
(6 7
)7 8
{ 	
return 
new 
[ 
] 
{ 
SetHomepage 
} 
; 
} 	
}   
}!! �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Properties\AssemblyInfo.cs
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
$str		 2
)		2 3
]		3 4
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
]7 8�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Razor\AutoroutePartRazorHelperExtensions.cs
public 
static 
class .
"AutoroutePartRazorHelperExtensions 6
{		 
public 

static 
async 
Task 
< 
string #
># $'
GetContentItemIdBySlugAsync% @
(@ A
thisA E
IOrchardHelperF T
orchardHelperU b
,b c
stringd j
slugk o
)o p
{ 
if 

( 
String 
. 
IsNullOrEmpty  
(  !
slug! %
)% &
)& '
{ 	
return 
null 
; 
} 	
if 

( 
slug 
. 

StartsWith 
( 
$str #
,# $
StringComparison% 5
.5 6
OrdinalIgnoreCase6 G
)G H
)H I
{ 	
slug 
= 
slug 
. 
	Substring !
(! "
$num" #
)# $
;$ %
} 	
if 

( 
! 
slug 
. 

StartsWith 
( 
$char  
)  !
)! "
{ 	
slug   
=   
$str   
+   
slug   
;   
}!! 	
var## 
autorouteEntries## 
=## 
orchardHelper## ,
.##, -
HttpContext##- 8
.##8 9
RequestServices##9 H
.##H I

GetService##I S
<##S T
IAutorouteEntries##T e
>##e f
(##f g
)##g h
;##h i
(%% 	
var%%	 
found%% 
,%% 
var%% 
entry%% 
)%% 
=%%  
await%%! &
autorouteEntries%%' 7
.%%7 8"
TryGetEntryByPathAsync%%8 N
(%%N O
slug%%O S
)%%S T
;%%T U
if'' 

('' 
found'' 
)'' 
{(( 	
return)) 
entry)) 
.)) 
ContentItemId)) &
;))& '
}** 	
return,, 
null,, 
;,, 
}-- 
public77 

static77 
async77 
Task77 
<77 
ContentItem77 (
>77( )%
GetContentItemBySlugAsync77* C
(77C D
this77D H
IOrchardHelper77I W
orchardHelper77X e
,77e f
string77g m
slug77n r
,77r s
bool77t x
latest77y 
=
77� �
false
77� �
)
77� �
{88 
var99 
contentItemId99 
=99 
await99 !
orchardHelper99" /
.99/ 0'
GetContentItemIdBySlugAsync990 K
(99K L
slug99L P
)99P Q
;99Q R
var:: 
contentManager:: 
=:: 
orchardHelper:: *
.::* +
HttpContext::+ 6
.::6 7
RequestServices::7 F
.::F G

GetService::G Q
<::Q R
IContentManager::R a
>::a b
(::b c
)::c d
;::d e
return<< 
await<< 
contentManager<< #
.<<# $
GetAsync<<$ ,
(<<, -
contentItemId<<- :
,<<: ;
latest<<< B
?<<C D
VersionOptions<<E S
.<<S T
Latest<<T Z
:<<[ \
VersionOptions<<] k
.<<k l
	Published<<l u
)<<u v
;<<v w
}== 
}>> �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\RemotePublishing\AutorouteMetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
RemotePublishing  0
{		 
public

 

class

 %
AutorouteMetaWeblogDriver

 *
:

+ ,
MetaWeblogDriver

- =
{ 
public 
override 
void 
SetCapabilities ,
(, -
Action- 3
<3 4
string4 :
,: ;
string< B
>B C
setCapabilityD Q
)Q R
{ 	
setCapability 
( 
$str (
,( )
$str* /
)/ 0
;0 1
} 	
public 
override 
void 
	BuildPost &
(& '

XRpcStruct' 1
	rpcStruct2 ;
,; <
XmlRpcContext= J
contextK R
,R S
ContentItemT _
contentItem` k
)k l
{ 	
var 
autoroutePart 
= 
contentItem  +
.+ ,
As, .
<. /
AutoroutePart/ <
>< =
(= >
)> ?
;? @
if 
( 
autoroutePart 
==  
null! %
)% &
{ 
return 
; 
} 
	rpcStruct 
. 
Set 
( 
$str #
,# $
autoroutePart% 2
.2 3
Path3 7
)7 8
;8 9
} 	
public 
override 
void 
EditPost %
(% &

XRpcStruct& 0
	rpcStruct1 :
,: ;
ContentItem< G
contentItemH S
)S T
{ 	
if 
( 
contentItem 
. 
As 
< 
AutoroutePart ,
>, -
(- .
). /
!=0 2
null3 7
)7 8
{ 
var   
slug   
=   
	rpcStruct   $
.  $ %
Optional  % -
<  - .
string  . 4
>  4 5
(  5 6
$str  6 ?
)  ? @
;  @ A
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrWhiteSpace"" .
("". /
slug""/ 3
)""3 4
)""4 5
{## 
contentItem$$ 
.$$  
Alter$$  %
<$$% &
AutoroutePart$$& 3
>$$3 4
($$4 5
x$$5 6
=>$$7 9
x$$: ;
.$$; <
Path$$< @
=$$A B
slug$$C G
)$$G H
;$$H I
}%% 
}&& 
}'' 	
}(( 
})) �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\RemotePublishing\Startup.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
RemotePublishing  0
{ 
[ 
RequireFeatures 
( 
$str 3
)3 4
]4 5
public 

class #
RemotePublishingStartup (
:) *
StartupBase+ 6
{		 
public

 
override

 
void

 
ConfigureServices

 .
(

. /
IServiceCollection

/ A
services

B J
)

J K
{ 	
services 
. 
	AddScoped 
< 
IMetaWeblogDriver 0
,0 1%
AutorouteMetaWeblogDriver2 K
>K L
(L M
)M N
;N O
} 	
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Routing\AutoRouteTransformer.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Routing  '
{		 
public

 

class

  
AutoRouteTransformer

 %
:

& '(
DynamicRouteValueTransformer

( D
{ 
private 
readonly 
IAutorouteEntries *
_entries+ 3
;3 4
private 
readonly 
AutorouteOptions )
_options* 2
;2 3
public  
AutoRouteTransformer #
(# $
IAutorouteEntries$ 5
entries6 =
,= >
IOptions? G
<G H
AutorouteOptionsH X
>X Y
optionsZ a
)a b
{ 	
_entries 
= 
entries 
; 
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
override 
async 
	ValueTask '
<' ( 
RouteValueDictionary( <
>< =
TransformAsync> L
(L M
HttpContextM X
httpContextY d
,d e 
RouteValueDictionaryf z
values	{ �
)
� �
{ 	
( 
var 
found 
, 
var 
entry !
)! "
=# $
await% *
_entries+ 3
.3 4"
TryGetEntryByPathAsync4 J
(J K
httpContextK V
.V W
RequestW ^
.^ _
Path_ c
.c d
Valued i
)i j
;j k
if 
( 
found 
) 
{ 
var 
routeValues 
=  !
new" % 
RouteValueDictionary& :
(: ;
_options; C
.C D
GlobalRouteValuesD U
)U V
{ 
[ 
_options 
. 
ContentItemIdKey .
]. /
=0 1
entry2 7
.7 8
ContentItemId8 E
} 
; 
if   
(   
!   
string   
.   
IsNullOrEmpty   )
(  ) *
entry  * /
.  / 0
JsonPath  0 8
)  8 9
)  9 :
{!! 
routeValues"" 
[""  
_options""  (
.""( )
JsonPathKey"") 4
]""4 5
=""6 7
entry""8 =
.""= >
JsonPath""> F
;""F G
}## 
values&& 
.&& 
Clear&& 
(&& 
)&& 
;&& 
return(( 
routeValues(( "
;((" #
}** 
return,, 
null,, 
;,, 
}-- 	
}.. 
}// �<
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Routing\AutorouteValuesAddressScheme.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Routing  '
{ 
internal 
sealed 
class (
AutoRouteValuesAddressScheme 6
:7 8*
IShellRouteValuesAddressScheme9 W
{ 
private 
readonly 
IAutorouteEntries *
_entries+ 3
;3 4
private 
readonly 
AutorouteOptions )
_options* 2
;2 3
public (
AutoRouteValuesAddressScheme +
(+ ,
IAutorouteEntries, =
entries> E
,E F
IOptionsG O
<O P
AutorouteOptionsP `
>` a
optionsb i
)i j
{ 	
_entries 
= 
entries 
; 
_options 
= 
options 
. 
Value $
;$ %
} 	
public 
IEnumerable 
< 
Endpoint #
># $
FindEndpoints% 2
(2 3
RouteValuesAddress3 E
addressF M
)M N
{ 	
if 
( 
address 
. 
AmbientValues %
==& (
null) -
||. 0
address1 8
.8 9
ExplicitValues9 G
==H J
nullK O
)O P
{ 
return 

Enumerable !
.! "
Empty" '
<' (
Endpoint( 0
>0 1
(1 2
)2 3
;3 4
} 
string!! 
contentItemId!!  
=!!! "
address!!# *
.!!* +
ExplicitValues!!+ 9
[!!9 :
_options!!: B
.!!B C%
ContainedContentItemIdKey!!C \
]!!\ ]
?!!] ^
.!!^ _
ToString!!_ g
(!!g h
)!!h i
;!!i j
if"" 
("" 
string"" 
."" 
IsNullOrEmpty"" $
(""$ %
contentItemId""% 2
)""2 3
)""3 4
{## 
contentItemId$$ 
=$$ 
address$$  '
.$$' (
ExplicitValues$$( 6
[$$6 7
_options$$7 ?
.$$? @
ContentItemIdKey$$@ P
]$$P Q
?$$Q R
.$$R S
ToString$$S [
($$[ \
)$$\ ]
;$$] ^
}%% 
if'' 
('' 
string'' 
.'' 
IsNullOrEmpty'' $
(''$ %
contentItemId''% 2
)''2 3
)''3 4
{(( 
return)) 

Enumerable)) !
.))! "
Empty))" '
<))' (
Endpoint))( 0
>))0 1
())1 2
)))2 3
;))3 4
}** 
(,, 
var,, 
found,, 
,,, 
var,, 
autorouteEntry,, *
),,* +
=,,, -
_entries,,. 6
.,,6 7+
TryGetEntryByContentItemIdAsync,,7 V
(,,V W
contentItemId,,W d
),,d e
.,,e f

GetAwaiter,,f p
(,,p q
),,q r
.,,r s
	GetResult,,s |
(,,| }
),,} ~
;,,~ 
if.. 
(.. 
!.. 
found.. 
).. 
{// 
return00 

Enumerable00 !
.00! "
Empty00" '
<00' (
Endpoint00( 0
>000 1
(001 2
)002 3
;003 4
}11 
if33 
(33 
Match33 
(33 
address33 
.33 
ExplicitValues33 ,
)33, -
)33- .
{44 
address66 
.66 
ExplicitValues66 &
.66& '
Remove66' -
(66- .
_options66. 6
.666 7%
ContainedContentItemIdKey667 P
)66P Q
;66Q R
var88 
routeValues88 
=88  !
new88" % 
RouteValueDictionary88& :
(88: ;
address88; B
.88B C
ExplicitValues88C Q
)88Q R
;88R S
if:: 
(:: 
address:: 
.:: 
ExplicitValues:: *
.::* +
Count::+ 0
>::1 2
_options::3 ;
.::; <
GlobalRouteValues::< M
.::M N
Count::N S
+::T U
$num::V W
)::W X
{;; 
foreach<< 
(<< 
var<<  
entry<<! &
in<<' )
address<<* 1
.<<1 2
ExplicitValues<<2 @
)<<@ A
{== 
if>> 
(>> 
String>> "
.>>" #
Equals>># )
(>>) *
entry>>* /
.>>/ 0
Key>>0 3
,>>3 4
_options>>5 =
.>>= >
ContentItemIdKey>>> N
,>>N O
StringComparison>>P `
.>>` a
OrdinalIgnoreCase>>a r
)>>r s
)>>s t
{?? 
continue@@ $
;@@$ %
}AA 
ifCC 
(CC 
!CC 
_optionsCC %
.CC% &
GlobalRouteValuesCC& 7
.CC7 8
ContainsKeyCC8 C
(CCC D
entryCCD I
.CCI J
KeyCCJ M
)CCM N
)CCN O
{DD 
routeValuesEE '
.EE' (
RemoveEE( .
(EE. /
entryEE/ 4
.EE4 5
KeyEE5 8
)EE8 9
;EE9 :
}FF 
}GG 
}HH 
varJJ 
endpointJJ 
=JJ 
newJJ "
RouteEndpointJJ# 0
(KK 
cLL 
=>LL 
nullLL 
,LL 
RoutePatternFactoryMM '
.MM' (
ParseMM( -
(MM- .
autorouteEntryMM. <
.MM< =
PathMM= A
,MMA B
routeValuesMMC N
,MMN O
nullMMP T
)MMT U
,MMU V
$numNN 
,NN 
nullOO 
,OO 
nullPP 
)QQ 
;QQ 
returnSS 
newSS 
[SS 
]SS 
{SS 
endpointSS '
}SS( )
;SS) *
}TT 
returnVV 

EnumerableVV 
.VV 
EmptyVV #
<VV# $
EndpointVV$ ,
>VV, -
(VV- .
)VV. /
;VV/ 0
}WW 	
privateYY 
boolYY 
MatchYY 
(YY  
RouteValueDictionaryYY /
explicitValuesYY0 >
)YY> ?
{ZZ 	
foreach[[ 
([[ 
var[[ 
entry[[ 
in[[ !
_options[[" *
.[[* +
GlobalRouteValues[[+ <
)[[< =
{\\ 
if]] 
(]] 
!]] 
String]] 
.]] 
Equals]] "
(]]" #
explicitValues]]# 1
[]]1 2
entry]]2 7
.]]7 8
Key]]8 ;
]]]; <
?]]< =
.]]= >
ToString]]> F
(]]F G
)]]G H
,]]H I
entry]]J O
.]]O P
Value]]P U
?]]U V
.]]V W
ToString]]W _
(]]_ `
)]]` a
,]]a b
StringComparison]]c s
.]]s t
OrdinalIgnoreCase	]]t �
)
]]� �
)
]]� �
{^^ 
return__ 
false__  
;__  !
}`` 
}aa 
returncc 
truecc 
;cc 
}dd 	
}ee 
}ff �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Services\AutorouteEntries.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Services  (
{ 
public 

class 
AutorouteEntries !
:" #
IAutorouteEntries$ 5
{ 
private 
ImmutableDictionary #
<# $
string$ *
,* +
AutorouteEntry, :
>: ;
_paths< B
=C D
ImmutableDictionaryE X
<X Y
stringY _
,_ `
AutorouteEntrya o
>o p
.p q
Emptyq v
;v w
private 
ImmutableDictionary #
<# $
string$ *
,* +
AutorouteEntry, :
>: ;
_contentItemIds< K
=L M
ImmutableDictionaryN a
<a b
stringb h
,h i
AutorouteEntryj x
>x y
.y z
Emptyz 
;	 �
private 
readonly 
SemaphoreSlim &

_semaphore' 1
=2 3
new4 7
SemaphoreSlim8 E
(E F
$numF G
)G H
;H I
private 
int 
_lastIndexId  
;  !
private 
string 
_stateIdentifier '
;' (
private 
bool 
_initialized !
;! "
public 
AutorouteEntries 
(  
)  !
{ 	
_contentItemIds 
= 
_contentItemIds -
.- .
WithComparers. ;
(; <
StringComparer< J
.J K
OrdinalIgnoreCaseK \
)\ ]
;] ^
} 	
public 
async 
Task 
< 
( 
bool 
,  
AutorouteEntry! /
)/ 0
>0 1"
TryGetEntryByPathAsync2 H
(H I
stringI O
pathP T
)T U
{   	
await!! "
EnsureInitializedAsync!! (
(!!( )
)!!) *
;!!* +
if## 
(## 
_contentItemIds## 
.##  
TryGetValue##  +
(##+ ,
path##, 0
.##0 1
TrimEnd##1 8
(##8 9
$char##9 <
)##< =
,##= >
out##? B
var##C F
entry##G L
)##L M
)##M N
{$$ 
return%% 
(%% 
true%% 
,%% 
entry%% #
)%%# $
;%%$ %
}&& 
return(( 
((( 
false(( 
,(( 
entry((  
)((  !
;((! "
})) 	
public++ 
async++ 
Task++ 
<++ 
(++ 
bool++ 
,++  
AutorouteEntry++! /
)++/ 0
>++0 1+
TryGetEntryByContentItemIdAsync++2 Q
(++Q R
string++R X
contentItemId++Y f
)++f g
{,, 	
await-- "
EnsureInitializedAsync-- (
(--( )
)--) *
;--* +
if// 
(// 
_paths// 
.// 
TryGetValue// "
(//" #
contentItemId//# 0
,//0 1
out//2 5
var//6 9
entry//: ?
)//? @
)//@ A
{00 
return11 
(11 
true11 
,11 
entry11 #
)11# $
;11$ %
}22 
return44 
(44 
false44 
,44 
entry44  
)44  !
;44! "
}55 	
public77 
async77 
Task77 
UpdateEntriesAsync77 ,
(77, -
)77- .
{88 	
await99 "
EnsureInitializedAsync99 (
(99( )
)99) *
;99* +
await<< !
AutorouteStateManager<< '
.<<' (
UpdateAsync<<( 3
(<<3 4
new<<4 7"
AutorouteStateDocument<<8 N
(<<N O
)<<O P
,<<P Q
afterUpdateAsync<<R b
:<<b c
RefreshEntriesAsync<<d w
)<<w x
;<<x y
}== 	
private?? 
async?? 
Task?? "
EnsureInitializedAsync?? 1
(??1 2
)??2 3
{@@ 	
ifAA 
(AA 
!AA 
_initializedAA 
)AA 
{BB 
awaitCC "
InitializeEntriesAsyncCC ,
(CC, -
)CC- .
;CC. /
}DD 
elseEE 
{FF 
varGG 
stateGG 
=GG 
awaitGG !!
AutorouteStateManagerGG" 7
.GG7 8%
GetOrCreateImmutableAsyncGG8 Q
(GGQ R
)GGR S
;GGS T
ifHH 
(HH 
_stateIdentifierHH $
!=HH% '
stateHH( -
.HH- .

IdentifierHH. 8
)HH8 9
{II 
awaitJJ 
RefreshEntriesAsyncJJ -
(JJ- .
stateJJ. 3
)JJ3 4
;JJ4 5
}KK 
}LL 
}MM 	
	protectedOO 
voidOO 

AddEntriesOO !
(OO! "
IEnumerableOO" -
<OO- .
AutorouteEntryOO. <
>OO< =
entriesOO> E
)OOE F
{PP 	
foreachSS 
(SS 
varSS 
entrySS 
inSS !
entriesSS" )
.SS) *
WhereSS* /
(SS/ 0
xSS0 1
=>SS2 4
StringSS5 ;
.SS; <
IsNullOrEmptySS< I
(SSI J
xSSJ K
.SSK L"
ContainedContentItemIdSSL b
)SSb c
)SSc d
)SSd e
{TT 
varUU 
entriesToRemoveUU #
=UU$ %
_pathsUU& ,
.UU, -
ValuesUU- 3
.UU3 4
WhereUU4 9
(UU9 :
xUU: ;
=>UU< >
xUU? @
.UU@ A
ContentItemIdUUA N
==UUO Q
entryUUR W
.UUW X
ContentItemIdUUX e
&&UUf h
!VV 
StringVV 
.VV 
IsNullOrEmptyVV )
(VV) *
xVV* +
.VV+ ,"
ContainedContentItemIdVV, B
)VVB C
)VVC D
;VVD E
_pathsXX 
=XX 
_pathsXX 
.XX  
RemoveRangeXX  +
(XX+ ,
entriesToRemoveXX, ;
.XX; <
SelectXX< B
(XXB C
xXXC D
=>XXE G
xXXH I
.XXI J"
ContainedContentItemIdXXJ `
)XX` a
)XXa b
;XXb c
_contentItemIdsYY 
=YY  !
_contentItemIdsYY" 1
.YY1 2
RemoveRangeYY2 =
(YY= >
entriesToRemoveYY> M
.YYM N
SelectYYN T
(YYT U
xYYU V
=>YYW Y
xYYZ [
.YY[ \
PathYY\ `
)YY` a
)YYa b
;YYb c
}ZZ 
foreach\\ 
(\\ 
var\\ 
entry\\ 
in\\ !
entries\\" )
)\\) *
{]] 
if^^ 
(^^ 
_paths^^ 
.^^ 
TryGetValue^^ &
(^^& '
entry^^' ,
.^^, -
ContentItemId^^- :
,^^: ;
out^^< ?
var^^@ C"
previousContainerEntry^^D Z
)^^Z [
&&^^\ ^
String__ 
.__ 
IsNullOrEmpty__ (
(__( )
entry__) .
.__. /"
ContainedContentItemId__/ E
)__E F
)__F G
{`` 
_contentItemIdsaa #
=aa$ %
_contentItemIdsaa& 5
.aa5 6
Removeaa6 <
(aa< ="
previousContainerEntryaa= S
.aaS T
PathaaT X
)aaX Y
;aaY Z
}bb 
ifdd 
(dd 
!dd 
Stringdd 
.dd 
IsNullOrEmptydd )
(dd) *
entrydd* /
.dd/ 0"
ContainedContentItemIddd0 F
)ddF G
&&ddH J
_pathsee 
.ee 
TryGetValueee &
(ee& '
entryee' ,
.ee, -"
ContainedContentItemIdee- C
,eeC D
outeeE H
vareeI L"
previousContainedEntryeeM c
)eec d
)eed e
{ff 
_contentItemIdsgg #
=gg$ %
_contentItemIdsgg& 5
.gg5 6
Removegg6 <
(gg< ="
previousContainedEntrygg= S
.ggS T
PathggT X
)ggX Y
;ggY Z
}hh 
_contentItemIdsjj 
=jj  !
_contentItemIdsjj" 1
.jj1 2
SetItemjj2 9
(jj9 :
entryjj: ?
.jj? @
Pathjj@ D
,jjD E
entryjjF K
)jjK L
;jjL M
ifll 
(ll 
!ll 
Stringll 
.ll 
IsNullOrEmptyll )
(ll) *
entryll* /
.ll/ 0"
ContainedContentItemIdll0 F
)llF G
)llG H
{mm 
_pathsnn 
=nn 
_pathsnn #
.nn# $
SetItemnn$ +
(nn+ ,
entrynn, 1
.nn1 2"
ContainedContentItemIdnn2 H
,nnH I
entrynnJ O
)nnO P
;nnP Q
}oo 
elsepp 
{qq 
_pathsrr 
=rr 
_pathsrr #
.rr# $
SetItemrr$ +
(rr+ ,
entryrr, 1
.rr1 2
ContentItemIdrr2 ?
,rr? @
entryrrA F
)rrF G
;rrG H
}ss 
}tt 
}uu 	
	protectedww 
voidww 
RemoveEntriesww $
(ww$ %
IEnumerableww% 0
<ww0 1
AutorouteEntryww1 ?
>ww? @
entrieswwA H
)wwH I
{xx 	
foreachyy 
(yy 
varyy 
entryyy 
inyy !
entriesyy" )
)yy) *
{zz 
var|| 
entriesToRemove|| #
=||$ %
_paths||& ,
.||, -
Values||- 3
.||3 4
Where||4 9
(||9 :
x||: ;
=>||< >
x||? @
.||@ A
ContentItemId||A N
==||O Q
entry||R W
.||W X
ContentItemId||X e
&&||f h
!}} 
String}} 
.}} 
IsNullOrEmpty}} )
(}}) *
x}}* +
.}}+ ,"
ContainedContentItemId}}, B
)}}B C
)}}C D
;}}D E
_paths 
= 
_paths 
.  
RemoveRange  +
(+ ,
entriesToRemove, ;
.; <
Select< B
(B C
xC D
=>E G
xH I
.I J"
ContainedContentItemIdJ `
)` a
)a b
;b c
_contentItemIds
�� 
=
��  !
_contentItemIds
��" 1
.
��1 2
RemoveRange
��2 =
(
��= >
entriesToRemove
��> M
.
��M N
Select
��N T
(
��T U
x
��U V
=>
��W Y
x
��Z [
.
��[ \
Path
��\ `
)
��` a
)
��a b
;
��b c
_paths
�� 
=
�� 
_paths
�� 
.
��  
Remove
��  &
(
��& '
entry
��' ,
.
��, -
ContentItemId
��- :
)
��: ;
;
��; <
_contentItemIds
�� 
=
��  !
_contentItemIds
��" 1
.
��1 2
Remove
��2 8
(
��8 9
entry
��9 >
.
��> ?
Path
��? C
)
��C D
;
��D E
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� !
RefreshEntriesAsync
�� .
(
��. /$
AutorouteStateDocument
��/ E
state
��F K
)
��K L
{
�� 	
if
�� 
(
�� 
_stateIdentifier
��  
==
��! #
state
��$ )
.
��) *

Identifier
��* 4
)
��4 5
{
�� 
return
�� 
;
�� 
}
�� 
await
�� 

_semaphore
�� 
.
�� 
	WaitAsync
�� &
(
��& '
)
��' (
;
��( )
try
�� 
{
�� 
if
�� 
(
�� 
_stateIdentifier
�� $
!=
��% '
state
��( -
.
��- .

Identifier
��. 8
)
��8 9
{
�� 
var
�� 
indexes
�� 
=
��  !
await
��" '
Session
��( /
.
��/ 0

QueryIndex
��0 :
<
��: ; 
AutoroutePartIndex
��; M
>
��M N
(
��N O
i
��O P
=>
��Q S
i
��T U
.
��U V
Id
��V X
>
��Y Z
_lastIndexId
��[ g
)
��g h
.
��h i
	ListAsync
��i r
(
��r s
)
��s t
;
��t u
var
�� 
entriesToRemove
�� '
=
��( )
indexes
��* 1
.
�� 
Where
�� 
(
�� 
i
��  
=>
��! #
!
��$ %
i
��% &
.
��& '
	Published
��' 0
||
��1 3
i
��4 5
.
��5 6
Path
��6 :
==
��; =
null
��> B
)
��B C
.
�� 

SelectMany
�� #
(
��# $
i
��$ %
=>
��& (
_paths
��) /
.
��/ 0
Values
��0 6
.
��6 7
Where
��7 <
(
��< =
e
��= >
=>
��? A
(
�� 
(
�� 
!
�� 
i
��  
.
��  !
	Published
��! *
&&
��+ -
!
��. /
i
��/ 0
.
��0 1
Latest
��1 7
)
��7 8
||
��9 ;
(
�� 
i
�� 
.
�� 
Path
�� #
==
��$ &
null
��' +
&&
��, .
i
��/ 0
.
��0 1
	Published
��1 :
)
��: ;
||
��< >
(
�� 
!
�� 
i
�� 
.
��  
	Published
��  )
&&
��* ,
e
��- .
.
��. /

DocumentId
��/ 9
==
��: <
i
��= >
.
��> ?

DocumentId
��? I
)
��I J
)
��J K
&&
��L N
(
�� 
e
�� 
.
�� 
ContentItemId
�� ,
==
��- /
i
��0 1
.
��1 2
ContentItemId
��2 ?
||
��@ B
e
�� 
.
�� $
ContainedContentItemId
�� 4
==
��5 7
i
��8 9
.
��9 :
ContentItemId
��: G
)
��G H
)
��H I
)
��I J
;
��J K
var
�� 
entriesToAdd
�� $
=
��% &
indexes
��' .
.
�� 
Where
�� 
(
�� 
i
��  
=>
��! #
i
��$ %
.
��% &
	Published
��& /
&&
��0 2
i
��3 4
.
��4 5
Path
��5 9
!=
��: <
null
��= A
)
��A B
.
�� 
Select
�� 
(
��  
i
��  !
=>
��" $
new
��% (
AutorouteEntry
��) 7
(
��7 8
i
��8 9
.
��9 :
ContentItemId
��: G
,
��G H
i
��I J
.
��J K
Path
��K O
,
��O P
i
��Q R
.
��R S$
ContainedContentItemId
��S i
,
��i j
i
��k l
.
��l m
JsonPath
��m u
)
��u v
{
�� 

DocumentId
�� &
=
��' (
i
��) *
.
��* +

DocumentId
��+ 5
}
�� 
)
�� 
;
�� 
RemoveEntries
�� !
(
��! "
entriesToRemove
��" 1
)
��1 2
;
��2 3

AddEntries
�� 
(
�� 
entriesToAdd
�� +
)
��+ ,
;
��, -
_lastIndexId
��  
=
��! "
indexes
��# *
.
��* +
LastOrDefault
��+ 8
(
��8 9
)
��9 :
?
��: ;
.
��; <
Id
��< >
??
��? A
$num
��B C
;
��C D
_stateIdentifier
�� $
=
��% &
state
��' ,
.
��, -

Identifier
��- 7
;
��7 8
}
�� 
}
�� 
finally
�� 
{
�� 

_semaphore
�� 
.
�� 
Release
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
	protected
�� 
virtual
�� 
async
�� 
Task
��  $$
InitializeEntriesAsync
��% ;
(
��; <
)
��< =
{
�� 	
if
�� 
(
�� 
_initialized
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
await
�� 

_semaphore
�� 
.
�� 
	WaitAsync
�� &
(
��& '
)
��' (
;
��( )
try
�� 
{
�� 
if
�� 
(
�� 
!
�� 
_initialized
�� !
)
��! "
{
�� 
var
�� 
state
�� 
=
�� 
await
��  %#
AutorouteStateManager
��& ;
.
��; <'
GetOrCreateImmutableAsync
��< U
(
��U V
)
��V W
;
��W X
var
�� 
indexes
�� 
=
��  !
await
��" '
Session
��( /
.
��/ 0

QueryIndex
��0 :
<
��: ; 
AutoroutePartIndex
��; M
>
��M N
(
��N O
i
��O P
=>
��Q S
i
��T U
.
��U V
	Published
��V _
&&
��` b
i
��c d
.
��d e
Path
��e i
!=
��j l
null
��m q
)
��q r
.
��r s
	ListAsync
��s |
(
��| }
)
��} ~
;
��~ 
var
�� 
entries
�� 
=
��  !
indexes
��" )
.
��) *
Select
��* 0
(
��0 1
i
��1 2
=>
��3 5
new
��6 9
AutorouteEntry
��: H
(
��H I
i
��I J
.
��J K
ContentItemId
��K X
,
��X Y
i
��Z [
.
��[ \
Path
��\ `
,
��` a
i
��b c
.
��c d$
ContainedContentItemId
��d z
,
��z {
i
��| }
.
��} ~
JsonPath��~ �
)��� �
{
�� 

DocumentId
�� "
=
��# $
i
��% &
.
��& '

DocumentId
��' 1
}
�� 
)
�� 
;
�� 

AddEntries
�� 
(
�� 
entries
�� &
)
��& '
;
��' (
_lastIndexId
��  
=
��! "
indexes
��# *
.
��* +
LastOrDefault
��+ 8
(
��8 9
)
��9 :
?
��: ;
.
��; <
Id
��< >
??
��? A
$num
��B C
;
��C D
_stateIdentifier
�� $
=
��% &
state
��' ,
.
��, -

Identifier
��- 7
;
��7 8
_initialized
��  
=
��! "
true
��# '
;
��' (
}
�� 
}
�� 
finally
�� 
{
�� 

_semaphore
�� 
.
�� 
Release
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
private
�� 
static
�� 
ISession
�� 
Session
��  '
=>
��( *

ShellScope
��+ 5
.
��5 6
Services
��6 >
.
��> ? 
GetRequiredService
��? Q
<
��Q R
ISession
��R Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
private
�� 
static
�� &
IVolatileDocumentManager
�� /
<
��/ 0$
AutorouteStateDocument
��0 F
>
��F G#
AutorouteStateManager
��H ]
=>
�� 

ShellScope
�� 
.
�� 
Services
�� "
.
��" # 
GetRequiredService
��# 5
<
��5 6&
IVolatileDocumentManager
��6 N
<
��N O$
AutorouteStateDocument
��O e
>
��e f
>
��f g
(
��g h
)
��h i
;
��i j
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Services\AutorouteHandleProvider.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Services  (
{ 
public 

class #
AutorouteHandleProvider (
:) *"
IContentHandleProvider+ A
{ 
private		 
readonly		 
IAutorouteEntries		 *
_autorouteEntries		+ <
;		< =
public #
AutorouteHandleProvider &
(& '
IAutorouteEntries' 8
autorouteEntries9 I
)I J
{ 	
_autorouteEntries 
= 
autorouteEntries  0
;0 1
} 	
public 
int 
Order 
=> 
$num 
; 
public 
async 
Task 
< 
string  
>  !!
GetContentItemIdAsync" 7
(7 8
string8 >
handle? E
)E F
{ 	
if 
( 
handle 
. 

StartsWith !
(! "
$str" )
,) *
System+ 1
.1 2
StringComparison2 B
.B C
OrdinalIgnoreCaseC T
)T U
)U V
{ 
handle 
= 
handle 
.  
	Substring  )
() *
$num* +
)+ ,
;, -
if 
( 
! 
handle 
. 

StartsWith &
(& '
$char' *
)* +
)+ ,
{ 
handle 
= 
$str  
+! "
handle# )
;) *
} 
( 
var 
found 
, 
var 
entry  %
)% &
=' (
await) .
_autorouteEntries/ @
.@ A"
TryGetEntryByPathAsyncA W
(W X
handleX ^
)^ _
;_ `
if 
( 
found 
) 
{   
return## 
entry##  
.##  !
ContentItemId##! .
;##. /
}$$ 
}%% 
return'' 
null'' 
;'' 
}(( 	
})) 
}** �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Services\AutorouteStateDocument.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Services  (
{ 
public 

class "
AutorouteStateDocument '
:( )
Document* 2
{ 
} 
} �B
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Settings\AutoroutePartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Settings  (
{ 
public 

class .
"AutoroutePartSettingsDisplayDriver 3
:4 52
&ContentTypePartDefinitionDisplayDriver6 \
{ 
private 
readonly "
ILiquidTemplateManager /
_templateManager0 @
;@ A
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public .
"AutoroutePartSettingsDisplayDriver 1
(1 2"
ILiquidTemplateManager2 H
templateManagerI X
,X Y
IStringLocalizerZ j
<j k/
"AutoroutePartSettingsDisplayDriver	k �
>
� �
	localizer
� �
)
� �
{ 	
_templateManager 
= 
templateManager .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
AutoroutePart& 3
)3 4
,4 5%
contentTypePartDefinition6 O
.O P
PartDefinitionP ^
.^ _
Name_ c
)c d
)d e
{ 
return 
null 
; 
} 
return   

Initialize   
<   *
AutoroutePartSettingsViewModel   <
>  < =
(  = >
$str  > Z
,  Z [
model  \ a
=>  b d
{!! 
var"" 
settings"" 
="" %
contentTypePartDefinition"" 8
.""8 9
GetSettings""9 D
<""D E!
AutoroutePartSettings""E Z
>""Z [
(""[ \
)""\ ]
;""] ^
model$$ 
.$$ 
AllowCustomPath$$ %
=$$& '
settings$$( 0
.$$0 1
AllowCustomPath$$1 @
;$$@ A
model%% 
.%% 
AllowUpdatePath%% %
=%%& '
settings%%( 0
.%%0 1
AllowUpdatePath%%1 @
;%%@ A
model&& 
.&& 
Pattern&& 
=&& 
settings&&  (
.&&( )
Pattern&&) 0
;&&0 1
model'' 
.'' 
ShowHomepageOption'' (
='') *
settings''+ 3
.''3 4
ShowHomepageOption''4 F
;''F G
model(( 
.(( 
AllowDisabled(( #
=(($ %
settings((& .
.((. /
AllowDisabled((/ <
;((< =
model)) 
.)) $
AllowRouteContainedItems)) .
=))/ 0
settings))1 9
.))9 :$
AllowRouteContainedItems)): R
;))R S
model** 
.** %
ManageContainedItemRoutes** /
=**0 1
settings**2 :
.**: ;%
ManageContainedItemRoutes**; T
;**T U
model++ 
.++ 
AllowAbsolutePath++ '
=++( )
settings++* 2
.++2 3
AllowAbsolutePath++3 D
;++D E
model,, 
.,, !
AutoroutePartSettings,, +
=,,, -
settings,,. 6
;,,6 7
}-- 
)-- 
.-- 
Location-- 
(-- 
$str-- !
)--! "
;--" #
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IDisplayResult00# 1
>001 2
UpdateAsync003 >
(00> ?%
ContentTypePartDefinition00? X%
contentTypePartDefinition00Y r
,00r s(
UpdateTypePartEditorContext	00t �
context
00� �
)
00� �
{11 	
if22 
(22 
!22 
String22 
.22 
Equals22 
(22 
nameof22 %
(22% &
AutoroutePart22& 3
)223 4
,224 5%
contentTypePartDefinition226 O
.22O P
PartDefinition22P ^
.22^ _
Name22_ c
)22c d
)22d e
{33 
return44 
null44 
;44 
}55 
var77 
model77 
=77 
new77 *
AutoroutePartSettingsViewModel77 :
(77: ;
)77; <
;77< =
await99 
context99 
.99 
Updater99 !
.99! "
TryUpdateModelAsync99" 5
(995 6
model996 ;
,99; <
Prefix99= C
,99C D
m:: 
=>:: 
m:: 
.:: 
Pattern:: 
,:: 
m;; 
=>;; 
m;; 
.;; 
AllowCustomPath;; &
,;;& '
m<< 
=><< 
m<< 
.<< 
AllowUpdatePath<< &
,<<& '
m== 
=>== 
m== 
.== 
ShowHomepageOption== )
,==) *
m>> 
=>>> 
m>> 
.>> 
AllowDisabled>> $
,>>$ %
m?? 
=>?? 
m?? 
.?? $
AllowRouteContainedItems?? /
,??/ 0
m@@ 
=>@@ 
m@@ 
.@@ %
ManageContainedItemRoutes@@ 0
,@@0 1
mAA 
=>AA 
mAA 
.AA 
AllowAbsolutePathAA (
)AA( )
;AA) *
ifCC 
(CC 
!CC 
stringCC 
.CC 
IsNullOrEmptyCC %
(CC% &
modelCC& +
.CC+ ,
PatternCC, 3
)CC3 4
&&CC5 7
!CC8 9
_templateManagerCC9 I
.CCI J
ValidateCCJ R
(CCR S
modelCCS X
.CCX Y
PatternCCY `
,CC` a
outCCb e
varCCf i
errorsCCj p
)CCp q
)CCq r
{DD 
contextEE 
.EE 
UpdaterEE 
.EE  

ModelStateEE  *
.EE* +
AddModelErrorEE+ 8
(EE8 9
nameofEE9 ?
(EE? @
modelEE@ E
.EEE F
PatternEEF M
)EEM N
,EEN O
SEEP Q
[EEQ R
$str	EER �
,
EE� �
string
EE� �
.
EE� �
Join
EE� �
(
EE� �
$str
EE� �
,
EE� �
errors
EE� �
)
EE� �
]
EE� �
)
EE� �
;
EE� �
}FF 
elseGG 
{HH 
contextII 
.II 
BuilderII 
.II  
WithSettingsII  ,
(II, -
newII- 0!
AutoroutePartSettingsII1 F
{JJ 
PatternKK 
=KK 
modelKK #
.KK# $
PatternKK$ +
,KK+ ,
AllowCustomPathLL #
=LL$ %
modelLL& +
.LL+ ,
AllowCustomPathLL, ;
,LL; <
AllowUpdatePathMM #
=MM$ %
modelMM& +
.MM+ ,
AllowUpdatePathMM, ;
,MM; <
ShowHomepageOptionNN &
=NN' (
modelNN) .
.NN. /
ShowHomepageOptionNN/ A
,NNA B
AllowDisabledOO !
=OO" #
modelOO$ )
.OO) *
AllowDisabledOO* 7
,OO7 8$
AllowRouteContainedItemsPP ,
=PP- .
modelPP/ 4
.PP4 5$
AllowRouteContainedItemsPP5 M
,PPM N%
ManageContainedItemRoutesQQ -
=QQ. /
modelQQ0 5
.QQ5 6%
ManageContainedItemRoutesQQ6 O
,QQO P
AllowAbsolutePathRR %
=RR& '
modelRR( -
.RR- .
AllowAbsolutePathRR. ?
}SS 
)SS 
;SS 
}TT 
returnVV 
EditVV 
(VV %
contentTypePartDefinitionVV 1
,VV1 2
contextVV3 :
.VV: ;
UpdaterVV; B
)VVB C
;VVC D
}WW 	
}XX 
}YY �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Sitemaps\AutorouteContentTypeProvider.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  
Sitemaps  (
{ 
public 

class (
AutorouteContentTypeProvider -
:. /)
IRouteableContentTypeProvider0 M
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public (
AutorouteContentTypeProvider +
(+ ,%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContentManager 
contentManager *
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task 
< 
string  
>  !
GetRouteAsync" /
(/ 0!
SitemapBuilderContext0 E
contextF M
,M N
ContentItemO Z
contentItem[ f
)f g
{ 	
var 
ctd 
= '
ListRoutableTypeDefinitions 1
(1 2
)2 3
?3 4
. 
FirstOrDefault 
(  
rctd  $
=>% '
rctd( ,
., -
Name- 1
==2 4
contentItem5 @
.@ A
ContentTypeA L
)L M
;M N
if!! 
(!! 
ctd!! 
!=!! 
null!! 
)!! 
{"" 
var## 
contentItemMetadata## '
=##( )
await##* /
_contentManager##0 ?
.##? @
PopulateAspectAsync##@ S
<##S T
ContentItemMetadata##T g
>##g h
(##h i
contentItem##i t
)##t u
;##u v
var$$ 
routes$$ 
=$$ 
contentItemMetadata$$ 0
.$$0 1
DisplayRouteValues$$1 C
;$$C D
return(( 
context(( 
.(( 

HostPrefix(( )
+((* +
context((, 3
.((3 4
	UrlHelper((4 =
.((= >
Action((> D
(((D E
routes((E K
[((K L
$str((L T
]((T U
.((U V
ToString((V ^
(((^ _
)((_ `
,((` a
routes((b h
)((h i
;((i j
})) 
return++ 
null++ 
;++ 
},, 	
public.. 
IEnumerable.. 
<.. !
ContentTypeDefinition.. 0
>..0 1'
ListRoutableTypeDefinitions..2 M
(..M N
)..N O
{// 	
return00 %
_contentDefinitionManager00 ,
.00, -
ListTypeDefinitions00- @
(00@ A
)00A B
.11 
Where11 
(11 
ctd11 
=>11 
ctd11 !
.11! "
Parts11" '
.11' (
Any11( +
(11+ ,
p11, -
=>11. 0
p111 2
.112 3
Name113 7
==118 :
nameof11; A
(11A B
AutoroutePart11B O
)11O P
)11P Q
)11Q R
;11R S
}22 	
}33 
}44 �3
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\Startup.cs
	namespace   	
OrchardCore  
 
.   
	Autoroute   
{!! 
public"" 

class"" 
Startup"" 
:"" 
StartupBase"" &
{## 
public%% 
override%% 
int%% 
ConfigureOrder%% *
=>%%+ -
-%%. /
$num%%/ 2
;%%2 3
static'' 
Startup'' 
('' 
)'' 
{(( 	
TemplateContext)) 
.)) &
GlobalMemberAccessStrategy)) 6
.))6 7
Register))7 ?
<))? @"
AutoroutePartViewModel))@ V
>))V W
())W X
)))X Y
;))Y Z
}** 	
public,, 
override,, 
void,, 
ConfigureServices,, .
(,,. /
IServiceCollection,,/ A
services,,B J
),,J K
{-- 	
services// 
.// 
AddContentPart// #
<//# $
AutoroutePart//$ 1
>//1 2
(//2 3
)//3 4
.00 
UseDisplayDriver00 !
<00! "&
AutoroutePartDisplayDriver00" <
>00< =
(00= >
)00> ?
.11 

AddHandler11 
<11  
AutoroutePartHandler11 0
>110 1
(111 2
)112 3
;113 4
services33 
.33 
	AddScoped33 
<33 
IContentHandler33 .
,33. /&
DefaultRouteContentHandler330 J
>33J K
(33K L
)33L M
;33M N
services44 
.44 
	AddScoped44 
<44 
IContentHandler44 .
,44. /#
AutorouteContentHandler440 G
>44G H
(44H I
)44I J
;44J K
services55 
.55 
	AddScoped55 
<55 
IPermissionProvider55 2
,552 3
Permissions554 ?
>55? @
(55@ A
)55A B
;55B C
services66 
.66 
	AddScoped66 
<66 3
'IContentTypePartDefinitionDisplayDriver66 F
,66F G.
"AutoroutePartSettingsDisplayDriver66H j
>66j k
(66k l
)66l m
;66m n
services77 
.77 
	AddScoped77 
<77 $
IContentPartIndexHandler77 7
,777 8%
AutoroutePartIndexHandler779 R
>77R S
(77S T
)77T U
;77U V
services99 
.99 
	AddScoped99 
<99 &
AutoroutePartIndexProvider99 9
>999 :
(99: ;
)99; <
;99< =
services:: 
.:: 
	AddScoped:: 
<::  
IScopedIndexProvider:: 3
>::3 4
(::4 5
sp::5 7
=>::8 :
sp::; =
.::= >
GetRequiredService::> P
<::P Q&
AutoroutePartIndexProvider::Q k
>::k l
(::l m
)::m n
)::n o
;::o p
services;; 
.;; 
	AddScoped;; 
<;; 
IContentHandler;; .
>;;. /
(;;/ 0
sp;;0 2
=>;;3 5
sp;;6 8
.;;8 9
GetRequiredService;;9 K
<;;K L&
AutoroutePartIndexProvider;;L f
>;;f g
(;;g h
);;h i
);;i j
;;;j k
services== 
.== 
	AddScoped== 
<== 
IDataMigration== -
,==- .

Migrations==/ 9
>==9 :
(==: ;
)==; <
;==< =
services>> 
.>> 
AddSingleton>> !
<>>! "
IAutorouteEntries>>" 3
,>>3 4
AutorouteEntries>>5 E
>>>E F
(>>F G
)>>G H
;>>H I
services?? 
.?? 
	AddScoped?? 
<?? "
IContentHandleProvider?? 5
,??5 6#
AutorouteHandleProvider??7 N
>??N O
(??O P
)??P Q
;??Q R
servicesAA 
.AA 
	AddScopedAA 
<AA '
ILiquidTemplateEventHandlerAA :
,AA: ;6
*ContentAutorouteLiquidTemplateEventHandlerAA< f
>AAf g
(AAg h
)AAh i
;AAi j
servicesCC 
.CC 
	ConfigureCC 
<CC !
GraphQLContentOptionsCC 4
>CC4 5
(CC5 6
optionsCC6 =
=>CC> @
{DD 
optionsEE 
.EE 
ConfigurePartEE %
<EE% &
AutoroutePartEE& 3
>EE3 4
(EE4 5
partOptionsEE5 @
=>EEA C
{FF 
partOptionsGG 
.GG  
CollapseGG  (
=GG) *
trueGG+ /
;GG/ 0
}HH 
)HH 
;HH 
}II 
)II 
;II 
servicesKK 
.KK 
AddSingletonKK !
<KK! " 
AutoRouteTransformerKK" 6
>KK6 7
(KK7 8
)KK8 9
;KK9 :
servicesLL 
.LL 
AddSingletonLL !
<LL! "*
IShellRouteValuesAddressSchemeLL" @
,LL@ A(
AutoRouteValuesAddressSchemeLLB ^
>LL^ _
(LL_ `
)LL` a
;LLa b
}MM 	
publicOO 
overrideOO 
voidOO 
	ConfigureOO &
(OO& '
IApplicationBuilderOO' :
appOO; >
,OO> ?!
IEndpointRouteBuilderOO@ U
routesOOV \
,OO\ ]
IServiceProviderOO^ n
serviceProviderOOo ~
)OO~ 
{PP 	
routesRR 
.RR %
MapDynamicControllerRouteRR ,
<RR, - 
AutoRouteTransformerRR- A
>RRA B
(RRB C
$strRRC T
)RRT U
;RRU V
}SS 	
}TT 
[VV 
RequireFeaturesVV 
(VV 
$strVV +
)VV+ ,
]VV, -
publicWW 

classWW 
SitemapStartupWW 
:WW  !
StartupBaseWW" -
{XX 
publicYY 
overrideYY 
voidYY 
ConfigureServicesYY .
(YY. /
IServiceCollectionYY/ A
servicesYYB J
)YYJ K
{ZZ 	
services[[ 
.[[ 
	AddScoped[[ 
<[[ )
IRouteableContentTypeProvider[[ <
,[[< =(
AutorouteContentTypeProvider[[> Z
>[[Z [
([[[ \
)[[\ ]
;[[] ^
}\\ 	
}]] 
}^^ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\ViewModels\AutoroutePartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  

ViewModels  *
{ 
public 

class *
AutoroutePartSettingsViewModel /
{ 
public 
bool 
AllowCustomPath #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Pattern 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
bool		 
ShowHomepageOption		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
bool

 
AllowUpdatePath
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
0 1
public 
bool 
AllowDisabled !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool $
AllowRouteContainedItems ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool %
ManageContainedItemRoutes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
bool 
AllowAbsolutePath %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public !
AutoroutePartSettings $!
AutoroutePartSettings% :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Autoroute\ViewModels\AutoroutePartViewModel.cs
	namespace 	
OrchardCore
 
. 
	Autoroute 
.  

ViewModels  *
{ 
public 

class "
AutoroutePartViewModel '
{ 
public		 
string		 
Path		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
bool

 
SetHomepage

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
bool 

UpdatePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 

IsHomepage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
RouteContainedItems '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
Absolute 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Disabled 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 
AutoroutePart 
AutoroutePart *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[ 	
	BindNever	 
] 
public !
AutoroutePartSettings $
Settings% -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} 