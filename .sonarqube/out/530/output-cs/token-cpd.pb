‚S
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Contents 
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
LinkGenerator &
_linkGenerator' 5
;5 6
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( %
IContentDefinitionManager   %$
contentDefinitionManager  & >
,  > ?
IContentManager!! 
contentManager!! *
,!!* + 
IHttpContextAccessor""  
httpContextAccessor""! 4
,""4 5
LinkGenerator## 
linkGenerator## '
,##' (!
IAuthorizationService$$ ! 
authorizationService$$" 6
,$$6 7
ISiteService%% 
siteService%% $
,%%$ %
IStringLocalizer&& 
<&& 
	AdminMenu&& &
>&&& '
	localizer&&( 1
)&&1 2
{'' 	%
_contentDefinitionManager(( %
=((& '$
contentDefinitionManager((( @
;((@ A
_contentManager)) 
=)) 
contentManager)) ,
;)), - 
_httpContextAccessor**  
=**! "
httpContextAccessor**# 6
;**6 7
_linkGenerator++ 
=++ 
linkGenerator++ *
;++* +!
_authorizationService,, !
=,," # 
authorizationService,,$ 8
;,,8 9
_siteService-- 
=-- 
siteService-- &
;--& '
S.. 
=.. 
	localizer.. 
;.. 
}// 	
public11 
async11 
Task11  
BuildNavigationAsync11 .
(11. /
string11/ 5
name116 :
,11: ;
NavigationBuilder11< M
builder11N U
)11U V
{22 	
var33 
context33 
=33  
_httpContextAccessor33 .
.33. /
HttpContext33/ :
;33: ;
if55 
(55 
!55 
String55 
.55 
Equals55 
(55 
name55 #
,55# $
$str55% ,
,55, -
StringComparison55. >
.55> ?
OrdinalIgnoreCase55? P
)55P Q
)55Q R
{66 
return77 
;77 
}88 
var:: "
contentTypeDefinitions:: &
=::' (%
_contentDefinitionManager::) B
.::B C
ListTypeDefinitions::C V
(::V W
)::W X
.::X Y
OrderBy::Y `
(::` a
d::a b
=>::c e
d::f g
.::g h
Name::h l
)::l m
;::m n
var;; 
contentTypes;; 
=;; "
contentTypeDefinitions;; 5
.;;5 6
Where;;6 ;
(;;; <
ctd;;< ?
=>;;@ B
ctd;;C F
.;;F G
GetSettings;;G R
<;;R S
ContentTypeSettings;;S f
>;;f g
(;;g h
);;h i
.;;i j
	Creatable;;j s
);;s t
.;;t u
OrderBy;;u |
(;;| }
ctd	;;} Ä
=>
;;Å É
ctd
;;Ñ á
.
;;á à
DisplayName
;;à ì
)
;;ì î
;
;;î ï
await<< 
builder<< 
.<< 
AddAsync<< "
(<<" #
S<<# $
[<<$ %
$str<<% .
]<<. /
,<</ 0
NavigationConstants<<1 D
.<<D E$
AdminMenuContentPosition<<E ]
,<<] ^
async<<_ d
content<<e l
=><<m o
{== 
content>> 
.>> 
AddClass>>  
(>>  !
$str>>! *
)>>* +
.>>+ ,
Id>>, .
(>>. /
$str>>/ 8
)>>8 9
;>>9 :
await?? 
content?? 
.?? 
AddAsync?? &
(??& '
S??' (
[??( )
$str??) 8
]??8 9
,??9 :
S??; <
[??< =
$str??= L
]??L M
.??M N
PrefixPosition??N \
(??\ ]
)??] ^
,??^ _
async??` e
contentItems??f r
=>??s u
{@@ 
ifAA 
(AA 
!AA 
awaitAA !
_authorizationServiceAA 4
.AA4 50
$AuthorizeContentTypeDefinitionsAsyncAA5 Y
(AAY Z
contextAAZ a
.AAa b
UserAAb f
,AAf g
CommonPermissionsAAh y
.AAy z
EditContent	AAz Ö
,
AAÖ Ü
contentTypes
AAá ì
,
AAì î
_contentManager
AAï §
)
AA§ •
)
AA• ¶
{BB 
contentItemsCC $
.CC$ %

PermissionCC% /
(CC/ 0
PermissionsCC0 ;
.CC; <
EditContentCC< G
)CCG H
;CCH I
}DD 
contentItemsFF  
.FF  !
ActionFF! '
(FF' (
nameofFF( .
(FF. /
AdminControllerFF/ >
.FF> ?
ListFF? C
)FFC D
,FFD E
typeofFFF L
(FFL M
AdminControllerFFM \
)FF\ ]
.FF] ^
ControllerNameFF^ l
(FFl m
)FFm n
,FFn o
newFFp s
{FFt u
areaFFv z
=FF{ |
$str	FF} ì
,
FFì î
contentTypeId
FFï ¢
=
FF£ §
$str
FF• ß
}
FF® ©
)
FF© ™
;
FF™ ´
contentItemsGG  
.GG  !
LocalNavGG! )
(GG) *
)GG* +
;GG+ ,
}HH 
)HH 
;HH 
}II 
)II 
;II 
varKK 
adminSettingsKK 
=KK 
(KK  !
awaitKK! &
_siteServiceKK' 3
.KK3 4 
GetSiteSettingsAsyncKK4 H
(KKH I
)KKI J
)KKJ K
.KKK L
AsKKL N
<KKN O
AdminSettingsKKO \
>KK\ ]
(KK] ^
)KK^ _
;KK_ `
ifMM 
(MM 
adminSettingsMM 
.MM 
DisplayNewMenuMM ,
&&MM- /
contentTypesMM0 <
.MM< =
AnyMM= @
(MM@ A
)MMA B
)MMB C
{NN 
awaitOO 
builderOO 
.OO 
AddAsyncOO &
(OO& '
SOO' (
[OO( )
$strOO) .
]OO. /
,OO/ 0
$strOO1 5
,OO5 6
asyncOO7 <
newMenuOO= D
=>OOE G
{PP 
newMenuQQ 
.QQ 
LinkToFirstChildQQ ,
(QQ, -
falseQQ- 2
)QQ2 3
.QQ3 4
AddClassQQ4 <
(QQ< =
$strQQ= B
)QQB C
.QQC D
IdQQD F
(QQF G
$strQQG L
)QQL M
;QQM N
foreachRR 
(RR 
varRR  !
contentTypeDefinitionRR! 6
inRR7 9
contentTypesRR: F
)RRF G
{SS 
varTT 
ciTT 
=TT  
awaitTT! &
_contentManagerTT' 6
.TT6 7
NewAsyncTT7 ?
(TT? @!
contentTypeDefinitionTT@ U
.TTU V
NameTTV Z
)TTZ [
;TT[ \
varUU 
cimUU 
=UU  !
awaitUU" '
_contentManagerUU( 7
.UU7 8
PopulateAspectAsyncUU8 K
<UUK L
ContentItemMetadataUUL _
>UU_ `
(UU` a
ciUUa c
)UUc d
;UUd e
varVV 
createRouteValuesVV -
=VV. /
cimVV0 3
.VV3 4
CreateRouteValuesVV4 E
;VVE F
createRouteValuesWW )
.WW) *
AddWW* -
(WW- .
$strWW. 9
,WW9 :
_linkGeneratorWW; I
.WWI J 
GetPathByRouteValuesWWJ ^
(WW^ _
contextWW_ f
,WWf g
$strWWh j
,WWj k
newWWl o
{XX 
areaYY  
=YY! "
$strYY# 9
,YY9 :

controllerZZ &
=ZZ' (
$strZZ) 0
,ZZ0 1
action[[ "
=[[# $
$str[[% +
}\\ 
)\\ 
)\\ 
;\\ 
if^^ 
(^^ 
createRouteValues^^ -
.^^- .
Any^^. 1
(^^1 2
)^^2 3
)^^3 4
{__ 
newMenu`` #
.``# $
Add``$ '
(``' (
new``( +
LocalizedString``, ;
(``; <!
contentTypeDefinition``< Q
.``Q R
DisplayName``R ]
,``] ^!
contentTypeDefinition``_ t
.``t u
DisplayName	``u Ä
)
``Ä Å
,
``Å Ç
$str
``É Ü
,
``Ü á
item
``à å
=>
``ç è
item
``ê î
.aa  !
Actionaa! '
(aa' (
cimaa( +
.aa+ ,
CreateRouteValuesaa, =
[aa= >
$straa> F
]aaF G
asaaH J
stringaaK Q
,aaQ R
cimaaS V
.aaV W
CreateRouteValuesaaW h
[aah i
$straai u
]aau v
asaaw y
string	aaz Ä
,
aaÄ Å
cim
aaÇ Ö
.
aaÖ Ü
CreateRouteValues
aaÜ ó
)
aaó ò
.bb  !

Permissionbb! +
(bb+ ,(
ContentTypePermissionsHelperbb, H
.bbH I#
CreateDynamicPermissionbbI `
(bb` a(
ContentTypePermissionsHelperbba }
.bb} ~ 
PermissionTemplates	bb~ ë
[
bbë í
CommonPermissions
bbí £
.
bb£ §
EditOwnContent
bb§ ≤
.
bb≤ ≥
Name
bb≥ ∑
]
bb∑ ∏
,
bb∏ π#
contentTypeDefinition
bb∫ œ
)
bbœ –
)
bb– —
)cc  !
;cc! "
}dd 
}ee 
}ff 
)ff 
;ff 
}gg 
}hh 	
}ii 
}jj Â
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\AdminNodes\ContentTypesAdminNode.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

AdminNodes )
{ 
public 

class !
ContentTypesAdminNode &
:' (
	AdminNode) 2
{ 
public 
bool 
ShowAll 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
ContentTypeEntry		 
[		  
]		  !
ContentTypes		" .
{		/ 0
get		1 4
;		4 5
set		6 9
;		9 :
}		; <
=		= >
new		? B
ContentTypeEntry		C S
[		S T
]		T U
{		V W
}		X Y
;		Y Z
}

 
public 

class 
ContentTypeEntry !
{ 
public 
string 
ContentTypeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} –9
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\AdminNodes\ContentTypesAdminNodeDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

AdminNodes )
{ 
public 

class '
ContentTypesAdminNodeDriver ,
:- .
DisplayDriver/ <
<< =
MenuItem= E
,E F!
ContentTypesAdminNodeG \
>\ ]
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public '
ContentTypesAdminNodeDriver *
(* +%
IContentDefinitionManager+ D$
contentDefinitionManagerE ]
)] ^
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
override 
IDisplayResult &
Display' .
(. /!
ContentTypesAdminNode/ D
treeNodeE M
)M N
{ 	
return 
Combine 
( 
View 
( 
$str ?
,? @
treeNodeA I
)I J
.J K
LocationK S
(S T
$strT a
,a b
$strc l
)l m
,m n
View 
( 
$str A
,A B
treeNodeC K
)K L
.L M
LocationM U
(U V
$strV e
,e f
$strg p
)p q
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,!
ContentTypesAdminNode, A
treeNodeB J
)J K
{ 	
var 
listable 
= %
_contentDefinitionManager 4
.4 5
ListTypeDefinitions5 H
(H I
)I J
.   
Where   
(   
ctd   
=>   
ctd   !
.  ! "
GetSettings  " -
<  - .
ContentTypeSettings  . A
>  A B
(  B C
)  C D
.  D E
Listable  E M
)  M N
.!! 
OrderBy!! 
(!! 
ctd!! 
=>!! 
ctd!!  #
.!!# $
DisplayName!!$ /
)!!/ 0
.!!0 1
ToList!!1 7
(!!7 8
)!!8 9
;!!9 :
var## 
entries## 
=## 
listable## "
.##" #
Select### )
(##) *
x##* +
=>##, .
new##/ 2%
ContentTypeEntryViewModel##3 L
{$$ 
ContentTypeId%% 
=%% 
x%%  !
.%%! "
Name%%" &
,%%& '
	IsChecked&& 
=&& 
treeNode&& $
.&&$ %
ContentTypes&&% 1
.&&1 2
Any&&2 5
(&&5 6
selected&&6 >
=>&&? A
String&&B H
.&&H I
Equals&&I O
(&&O P
selected&&P X
.&&X Y
ContentTypeId&&Y f
,&&f g
x&&h i
.&&i j
Name&&j n
,&&n o
StringComparison	&&p Ä
.
&&Ä Å
OrdinalIgnoreCase
&&Å í
)
&&í ì
)
&&ì î
,
&&î ï
	IconClass'' 
='' 
treeNode'' $
.''$ %
ContentTypes''% 1
.''1 2
Where''2 7
(''7 8
selected''8 @
=>''A C
selected''D L
.''L M
ContentTypeId''M Z
==''[ ]
x''^ _
.''_ `
Name''` d
)''d e
.''e f
FirstOrDefault''f t
(''t u
)''u v
?''v w
.''w x
	IconClass	''x Å
??
''Ç Ñ
String
''Ö ã
.
''ã å
Empty
''å ë
}(( 
)(( 
.(( 
ToArray(( 
((( 
)(( 
;(( 
return** 

Initialize** 
<** *
ContentTypesAdminNodeViewModel** <
>**< =
(**= >
$str**> e
,**e f
model**g l
=>**m o
{++ 
model,, 
.,, 
ShowAll,, 
=,, 
treeNode,,  (
.,,( )
ShowAll,,) 0
;,,0 1
model-- 
.-- 
	IconClass-- 
=--  !
treeNode--" *
.--* +
	IconClass--+ 4
;--4 5
model.. 
... 
ContentTypes.. "
=..# $
entries..% ,
;.., -
}// 
)// 
.// 
Location// 
(// 
$str// !
)//! "
;//" #
}00 	
public22 
override22 
async22 
Task22 "
<22" #
IDisplayResult22# 1
>221 2
UpdateAsync223 >
(22> ?!
ContentTypesAdminNode22? T
treeNode22U ]
,22] ^
IUpdateModel22_ k
updater22l s
)22s t
{33 	
treeNode55 
.55 
ContentTypes55 !
=55" #
Array55$ )
.55) *
Empty55* /
<55/ 0
ContentTypeEntry550 @
>55@ A
(55A B
)55B C
;55C D
var77 
model77 
=77 
new77 *
ContentTypesAdminNodeViewModel77 :
(77: ;
)77; <
;77< =
if99 
(99 
await99 
updater99 
.99 
TryUpdateModelAsync99 1
(991 2
model992 7
,997 8
Prefix999 ?
,99? @
x99A B
=>99C E
x99F G
.99G H
ShowAll99H O
,99O P
x99Q R
=>99S U
x99V W
.99W X
	IconClass99X a
,99a b
x99c d
=>99e g
x99h i
.99i j
ContentTypes99j v
)99v w
)99w x
{:: 
treeNode;; 
.;; 
ShowAll;;  
=;;! "
model;;# (
.;;( )
ShowAll;;) 0
;;;0 1
treeNode<< 
.<< 
	IconClass<< "
=<<# $
model<<% *
.<<* +
	IconClass<<+ 4
;<<4 5
treeNode== 
.== 
ContentTypes== %
===& '
model==( -
.==- .
ContentTypes==. :
.>> 
Where>> 
(>> 
x>> 
=>>> 
x>>  !
.>>! "
	IsChecked>>" +
==>>, .
true>>/ 3
)>>3 4
.?? 
Select?? 
(?? 
x?? 
=>??  
new??! $
ContentTypeEntry??% 5
{??6 7
ContentTypeId??8 E
=??F G
x??H I
.??I J
ContentTypeId??J W
,??W X
	IconClass??Y b
=??c d
x??e f
.??f g
	IconClass??g p
}??q r
)??r s
.@@ 
ToArray@@ 
(@@ 
)@@ 
;@@ 
}AA 
;AA 
returnCC 
EditCC 
(CC 
treeNodeCC  
)CC  !
;CC! "
}DD 	
}EE 
}FF ÅV
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\AdminNodes\ContentTypesAdminNodeNavigationBuilder.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

AdminNodes )
{ 
public 

class 2
&ContentTypesAdminNodeNavigationBuilder 7
:8 9'
IAdminNodeNavigationBuilder: U
{ 
private 
readonly 
LinkGenerator &
_linkGenerator' 5
;5 6
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
ILogger  
_logger! (
;( )
public 2
&ContentTypesAdminNodeNavigationBuilder 5
(5 6%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
LinkGenerator 
linkGenerator '
,' ( 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
ILogger 
< 2
&ContentTypesAdminNodeNavigationBuilder :
>: ;
logger< B
)B C
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_linkGenerator   
=   
linkGenerator   *
;  * + 
_httpContextAccessor!!  
=!!! "
httpContextAccessor!!# 6
;!!6 7
_logger"" 
="" 
logger"" 
;"" 
}## 	
public%% 
string%% 
Name%% 
=>%% 
typeof%% $
(%%$ %!
ContentTypesAdminNode%%% :
)%%: ;
.%%; <
Name%%< @
;%%@ A
public'' 
async'' 
Task''  
BuildNavigationAsync'' .
(''. /
MenuItem''/ 7
menuItem''8 @
,''@ A
NavigationBuilder''B S
builder''T [
,''[ \
IEnumerable''] h
<''h i(
IAdminNodeNavigationBuilder	''i Ñ
>
''Ñ Ö
treeNodeBuilders
''Ü ñ
)
''ñ ó
{(( 	
var)) 
node)) 
=)) 
menuItem)) 
as))  "!
ContentTypesAdminNode))# 8
;))8 9
if++ 
(++ 
(++ 
node++ 
==++ 
null++ 
)++ 
||++ !
(++" #
!++# $
node++$ (
.++( )
Enabled++) 0
)++0 1
)++1 2
{,, 
return-- 
;-- 
}.. 
var11 
typesToShow11 
=11 !
GetContentTypesToShow11 3
(113 4
node114 8
)118 9
;119 :
foreach22 
(22 
var22 
ctd22 
in22 
typesToShow22  +
)22+ ,
{33 
builder44 
.44 
Add44 
(44 
new44 
LocalizedString44  /
(44/ 0
ctd440 3
.443 4
DisplayName444 ?
,44? @
ctd44A D
.44D E
DisplayName44E P
)44P Q
,44Q R
	cTypeMenu44S \
=>44] _
{55 
	cTypeMenu66 
.66 
Url66 !
(66! "
_linkGenerator66" 0
.660 1 
GetPathByRouteValues661 E
(66E F 
_httpContextAccessor66F Z
.66Z [
HttpContext66[ f
,66f g
$str66h j
,66j k
new66l o
{77 
area88 
=88 
$str88 5
,885 6

controller99 "
=99# $
$str99% ,
,99, -
action:: 
=::  
$str::! '
,::' (
contentTypeId;; %
=;;& '
ctd;;( +
.;;+ ,
Name;;, 0
}<< 
)<< 
)<< 
;<< 
	cTypeMenu>> 
.>> 
Priority>> &
(>>& '
node>>' +
.>>+ ,
Priority>>, 4
)>>4 5
;>>5 6
	cTypeMenu?? 
.?? 
Position?? &
(??& '
node??' +
.??+ ,
Position??, 4
)??4 5
;??5 6
	cTypeMenu@@ 
.@@ 

Permission@@ (
(@@( )(
ContentTypePermissionsHelperAA 4
.AA4 5#
CreateDynamicPermissionAA5 L
(AAL M(
ContentTypePermissionsHelperAAM i
.AAi j
PermissionTemplatesAAj }
[AA} ~
CommonPermissions	AA~ è
.
AAè ê
PublishOwnContent
AAê °
.
AA° ¢
Name
AA¢ ¶
]
AA¶ ß
,
AAß ®
ctd
AA© ¨
)
AA¨ ≠
)
AA≠ Æ
;
AAÆ Ø
GetIconClassesCC "
(CC" #
ctdCC# &
,CC& '
nodeCC( ,
)CC, -
.CC- .
ToListCC. 4
(CC4 5
)CC5 6
.CC6 7
ForEachCC7 >
(CC> ?
cCC? @
=>CCA C
	cTypeMenuCCD M
.CCM N
AddClassCCN V
(CCV W
cCCW X
)CCX Y
)CCY Z
;CCZ [
}DD 
)DD 
;DD 
}EE 
foreachHH 
(HH 
varHH 
	childNodeHH "
inHH# %
nodeHH& *
.HH* +
ItemsHH+ 0
)HH0 1
{II 
tryJJ 
{KK 
varLL 
treeBuilderLL #
=LL$ %
treeNodeBuildersLL& 6
.LL6 7
WhereLL7 <
(LL< =
xLL= >
=>LL? A
xLLB C
.LLC D
NameLLD H
==LLI K
	childNodeLLL U
.LLU V
GetTypeLLV ]
(LL] ^
)LL^ _
.LL_ `
NameLL` d
)LLd e
.LLe f
FirstOrDefaultLLf t
(LLt u
)LLu v
;LLv w
awaitMM 
treeBuilderMM %
.MM% & 
BuildNavigationAsyncMM& :
(MM: ;
	childNodeMM; D
,MMD E
builderMMF M
,MMM N
treeNodeBuildersMMO _
)MM_ `
;MM` a
}NN 
catchOO 
(OO 
	ExceptionOO  
eOO! "
)OO" #
{PP 
_loggerQQ 
.QQ 
LogErrorQQ $
(QQ$ %
eQQ% &
,QQ& '
$strQQ( p
,QQp q
	childNodeQQr {
.QQ{ |
GetType	QQ| É
(
QQÉ Ñ
)
QQÑ Ö
.
QQÖ Ü
Name
QQÜ ä
)
QQä ã
;
QQã å
}RR 
}SS 
}TT 	
privateVV 
IEnumerableVV 
<VV !
ContentTypeDefinitionVV 1
>VV1 2!
GetContentTypesToShowVV3 H
(VVH I!
ContentTypesAdminNodeVVI ^
nodeVV_ c
)VVc d
{WW 	
varXX 
typesToShowXX 
=XX %
_contentDefinitionManagerXX 7
.XX7 8
ListTypeDefinitionsXX8 K
(XXK L
)XXL M
.YY 
WhereYY 
(YY 
ctdYY 
=>YY 
ctdYY !
.YY! "
GetSettingsYY" -
<YY- .
ContentTypeSettingsYY. A
>YYA B
(YYB C
)YYC D
.YYD E
ListableYYE M
)YYM N
;YYN O
if[[ 
([[ 
![[ 
node[[ 
.[[ 
ShowAll[[ 
)[[ 
{\\ 
node]] 
.]] 
ContentTypes]] !
=]]" #
node]]$ (
.]]( )
ContentTypes]]) 5
;]]5 6
typesToShow__ 
=__ 
typesToShow__ )
.`` 
Where`` 
(`` 
ctd`` 
=>`` !
node``" &
.``& '
ContentTypes``' 3
.``3 4
ToList``4 :
(``: ;
)``; <
.aa$ %
Anyaa% (
(aa( )
saa) *
=>aa+ -
Stringaa. 4
.aa4 5
Equalsaa5 ;
(aa; <
ctdaa< ?
.aa? @
Nameaa@ D
,aaD E
saaF G
.aaG H
ContentTypeIdaaH U
,aaU V
StringComparisonaaW g
.aag h
OrdinalIgnoreCaseaah y
)aay z
)aaz {
)aa{ |
;aa| }
}bb 
returndd 
typesToShowdd 
.dd 
OrderBydd &
(dd& '
tdd' (
=>dd) +
tdd, -
.dd- .
DisplayNamedd. 9
)dd9 :
;dd: ;
}ee 	
privategg 
Listgg 
<gg 
stringgg 
>gg 
GetIconClassesgg +
(gg+ ,!
ContentTypeDefinitiongg, A
contentTypeggB M
,ggM N!
ContentTypesAdminNodeggO d
nodegge i
)ggi j
{hh 	
ifii 
(ii 
nodeii 
.ii 
ShowAllii 
)ii 
{jj 
returnkk 
AddPrefixToClasseskk )
(kk) *
nodekk* .
.kk. /
	IconClasskk/ 8
)kk8 9
;kk9 :
}ll 
elsemm 
{nn 
varoo 
	typeEntryoo 
=oo 
nodeoo  $
.oo$ %
ContentTypesoo% 1
.pp  !
Wherepp! &
(pp& '
xpp' (
=>pp) +
Stringpp, 2
.pp2 3
Equalspp3 9
(pp9 :
xpp: ;
.pp; <
ContentTypeIdpp< I
,ppI J
contentTypeppK V
.ppV W
NameppW [
,pp[ \
StringComparisonpp] m
.ppm n
OrdinalIgnoreCaseppn 
)	pp Ä
)
ppÄ Å
.qq  !
FirstOrDefaultqq! /
(qq/ 0
)qq0 1
;qq1 2
returnss 
AddPrefixToClassesss )
(ss) *
	typeEntryss* 3
.ss3 4
	IconClassss4 =
)ss= >
;ss> ?
}tt 
}uu 	
privateww 
Listww 
<ww 
stringww 
>ww 
AddPrefixToClassesww /
(ww/ 0
stringww0 6

unprefixedww7 A
)wwA B
{xx 	
returnyy 

unprefixedyy 
?yy 
.yy 
Splityy $
(yy$ %
$charyy% (
)yy( )
.zz 
ToListzz 
(zz 
)zz 
.{{ 
Select{{ 
({{ 
c{{ 
=>{{ 
$str{{ *
+{{+ ,
c{{- .
){{. /
.|| 
ToList|| 
<|| 
string|| 
>|| 
(||  
)||  !
??}} 
new}} 
List}} 
<}} 
string}} "
>}}" #
(}}# $
)}}$ %
;}}% &
}~~ 	
} 
}ÄÄ á
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\AdminNodes\ContentTypesAdminNodeViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

AdminNodes )
{ 
public 

class *
ContentTypesAdminNodeViewModel /
{ 
public 
bool 
ShowAll 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
public %
ContentTypeEntryViewModel (
[( )
]) *
ContentTypes+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
=F G
newH K%
ContentTypeEntryViewModelL e
[e f
]f g
{h i
}j k
;k l
} 
public

 

class

 %
ContentTypeEntryViewModel

 *
{ 
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ContentTypeId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
	IconClass 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ‹Ì
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Controllers *
{   
public!! 

class!! 
AdminController!!  
:!!! "

Controller!!# -
{"" 
private## 
readonly## 
IContentManager## (
_contentManager##) 8
;##8 9
private$$ 
readonly$$ %
IContentDefinitionManager$$ 2%
_contentDefinitionManager$$3 L
;$$L M
private%% 
readonly%% 
ISiteService%% %
_siteService%%& 2
;%%2 3
private&& 
readonly&& 
YesSql&& 
.&&  
ISession&&  (
_session&&) 1
;&&1 2
private'' 
readonly'' &
IContentItemDisplayManager'' 3&
_contentItemDisplayManager''4 N
;''N O
private(( 
readonly(( 
	INotifier(( "
	_notifier((# ,
;((, -
private)) 
readonly)) !
IAuthorizationService)) .!
_authorizationService))/ D
;))D E
private** 
readonly** 
IDisplayManager** (
<**( )#
ContentOptionsViewModel**) @
>**@ A)
_contentOptionsDisplayManager**B _
;**_ `
private++ 
readonly++ *
IContentsAdminListQueryService++ 7*
_contentsAdminListQueryService++8 V
;++V W
private,, 
readonly,, 
IHtmlLocalizer,, '
H,,( )
;,,) *
private-- 
readonly-- 
IStringLocalizer-- )
S--* +
;--+ ,
private.. 
readonly..  
IUpdateModelAccessor.. - 
_updateModelAccessor... B
;..B C
private// 
readonly//  
IHttpContextAccessor// - 
_httpContextAccessor//. B
;//B C
private00 
readonly00 
IShapeFactory00 &
_shapeFactory00' 4
;004 5
private11 
readonly11 
dynamic11  
New11! $
;11$ %
private22 
readonly22 
ILogger22  
_logger22! (
;22( )
public44 
AdminController44 
(44 !
IAuthorizationService55 ! 
authorizationService55" 6
,556 7
IContentManager66 
contentManager66 *
,66* +&
IContentItemDisplayManager77 &%
contentItemDisplayManager77' @
,77@ A%
IContentDefinitionManager88 %$
contentDefinitionManager88& >
,88> ?
ISiteService99 
siteService99 $
,99$ %
	INotifier:: 
notifier:: 
,:: 
YesSql;; 
.;; 
ISession;; 
session;; #
,;;# $
IShapeFactory<< 
shapeFactory<< &
,<<& '
IDisplayManager== 
<== #
ContentOptionsViewModel== 3
>==3 4(
contentOptionsDisplayManager==5 Q
,==Q R*
IContentsAdminListQueryService>> *)
contentsAdminListQueryService>>+ H
,>>H I
ILogger?? 
<?? 
AdminController?? #
>??# $
logger??% +
,??+ ,
IHtmlLocalizer@@ 
<@@ 
AdminController@@ *
>@@* +
htmlLocalizer@@, 9
,@@9 :
IStringLocalizerAA 
<AA 
AdminControllerAA ,
>AA, -
stringLocalizerAA. =
,AA= > 
IUpdateModelAccessorBB  
updateModelAccessorBB! 4
,BB4 5 
IHttpContextAccessorCC  
httpContextAccessorCC! 4
)CC4 5
{DD 	!
_authorizationServiceEE !
=EE" # 
authorizationServiceEE$ 8
;EE8 9
	_notifierFF 
=FF 
notifierFF  
;FF  !&
_contentItemDisplayManagerGG &
=GG' (%
contentItemDisplayManagerGG) B
;GGB C
_sessionHH 
=HH 
sessionHH 
;HH 
_siteServiceII 
=II 
siteServiceII &
;II& '
_contentManagerJJ 
=JJ 
contentManagerJJ ,
;JJ, -%
_contentDefinitionManagerKK %
=KK& '$
contentDefinitionManagerKK( @
;KK@ A 
_updateModelAccessorLL  
=LL! "
updateModelAccessorLL# 6
;LL6 7 
_httpContextAccessorMM  
=MM! "
httpContextAccessorMM# 6
;MM6 7)
_contentOptionsDisplayManagerNN )
=NN* +(
contentOptionsDisplayManagerNN, H
;NNH I*
_contentsAdminListQueryServiceOO *
=OO+ ,)
contentsAdminListQueryServiceOO- J
;OOJ K
HQQ 
=QQ 
htmlLocalizerQQ 
;QQ 
SRR 
=RR 
stringLocalizerRR 
;RR  
_shapeFactorySS 
=SS 
shapeFactorySS (
;SS( )
NewTT 
=TT 
shapeFactoryTT 
;TT 
_loggerUU 
=UU 
loggerUU 
;UU 
}VV 	
[XX 	
HttpGetXX	 
]XX 
publicYY 
asyncYY 
TaskYY 
<YY 
IActionResultYY '
>YY' (
ListYY) -
(YY- .!
ListContentsViewModelYY. C
modelYYD I
,YYI J
PagerParametersYYK Z
pagerParametersYY[ j
,YYj k
stringYYl r
contentTypeId	YYs Ä
=
YYÅ Ç
$str
YYÉ Ö
)
YYÖ Ü
{ZZ 	
var[[ 
context[[ 
=[[  
_httpContextAccessor[[ .
.[[. /
HttpContext[[/ :
;[[: ;
var\\ "
contentTypeDefinitions\\ &
=\\' (%
_contentDefinitionManager\\) B
.\\B C
ListTypeDefinitions\\C V
(\\V W
)\\W X
.]] 
Where]] 
(]] 
ctd]] 
=>]] !
ctd]]" %
.]]% &
GetSettings]]& 1
<]]1 2
ContentTypeSettings]]2 E
>]]E F
(]]F G
)]]G H
.]]H I
	Creatable]]I R
)]]R S
.^^ 
OrderBy^^ 
(^^ 
ctd^^  
=>^^! #
ctd^^$ '
.^^' (
DisplayName^^( 3
)^^3 4
;^^4 5
if`` 
(`` 
!`` 
await`` !
_authorizationService`` ,
.``, -0
$AuthorizeContentTypeDefinitionsAsync``- Q
(``Q R
User``R V
,``V W
CommonPermissions``X i
.``i j
EditContent``j u
,``u v#
contentTypeDefinitions	``w ç
,
``ç é
_contentManager
``è û
)
``û ü
)
``ü †
{aa 
returnbb 
Forbidbb 
(bb 
)bb 
;bb  
}cc 
varee 
siteSettingsee 
=ee 
awaitee $
_siteServiceee% 1
.ee1 2 
GetSiteSettingsAsyncee2 F
(eeF G
)eeG H
;eeH I
varff 
pagerff 
=ff 
newff 
Pagerff !
(ff! "
pagerParametersff" 1
,ff1 2
siteSettingsff3 ?
.ff? @
PageSizeff@ H
)ffH I
;ffI J
ifii 
(ii 
!ii 
Stringii 
.ii 
IsNullOrEmptyii %
(ii% &
contentTypeIdii& 3
)ii3 4
)ii4 5
{jj 
modelkk 
.kk 
Optionskk 
.kk 
SelectedContentTypekk 1
=kk2 3
contentTypeIdkk4 A
;kkA B
}ll 
ifoo 
(oo 
!oo 
Stringoo 
.oo 
IsNullOrEmptyoo %
(oo% &
modeloo& +
.oo+ ,
Optionsoo, 3
.oo3 4
SelectedContentTypeoo4 G
)ooG H
)ooH I
{pp 
varqq !
contentTypeDefinitionqq )
=qq* +%
_contentDefinitionManagerqq, E
.qqE F
GetTypeDefinitionqqF W
(qqW X
modelqqX ]
.qq] ^
Optionsqq^ e
.qqe f
SelectedContentTypeqqf y
)qqy z
;qqz {
ifrr 
(rr !
contentTypeDefinitionrr )
==rr* ,
nullrr- 1
)rr1 2
{ss 
returntt 
NotFoundtt #
(tt# $
)tt$ %
;tt% &
}uu 
varww 
creatableListww !
=ww" #
newww$ '
Listww( ,
<ww, -
SelectListItemww- ;
>ww; <
(ww< =
)ww= >
;ww> ?
ifzz 
(zz !
contentTypeDefinitionzz )
.zz) *
GetSettingszz* 5
<zz5 6
ContentTypeSettingszz6 I
>zzI J
(zzJ K
)zzK L
.zzL M
	CreatablezzM V
||zzW Y
modelzzZ _
.zz_ `
Optionszz` g
.zzg h)
CanCreateSelectedContentType	zzh Ñ
)
zzÑ Ö
{{{ 
creatableList|| !
.||! "
Add||" %
(||% &
new||& )
SelectListItem||* 8
(||8 9
new||9 <
LocalizedString||= L
(||L M!
contentTypeDefinition||M b
.||b c
DisplayName||c n
,||n o"
contentTypeDefinition	||p Ö
.
||Ö Ü
DisplayName
||Ü ë
)
||ë í
.
||í ì
Value
||ì ò
,
||ò ô#
contentTypeDefinition
||ö Ø
.
||Ø ∞
Name
||∞ ¥
)
||¥ µ
)
||µ ∂
;
||∂ ∑
}}} 
model 
. 
Options 
. 
CreatableTypes ,
=- .
creatableList/ <
;< =
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
model
ÇÇ 
.
ÇÇ 
Options
ÇÇ 
.
ÇÇ 
CreatableTypes
ÇÇ ,
==
ÇÇ- /
null
ÇÇ0 4
)
ÇÇ4 5
{
ÉÉ 
var
ÑÑ 
creatableList
ÑÑ !
=
ÑÑ" #
new
ÑÑ$ '
List
ÑÑ( ,
<
ÑÑ, -
SelectListItem
ÑÑ- ;
>
ÑÑ; <
(
ÑÑ< =
)
ÑÑ= >
;
ÑÑ> ?
if
ÖÖ 
(
ÖÖ $
contentTypeDefinitions
ÖÖ *
.
ÖÖ* +
Any
ÖÖ+ .
(
ÖÖ. /
)
ÖÖ/ 0
)
ÖÖ0 1
{
ÜÜ 
foreach
áá 
(
áá 
var
áá  #
contentTypeDefinition
áá! 6
in
áá7 9$
contentTypeDefinitions
áá: P
)
ááP Q
{
àà 
var
ââ 
contentItem
ââ '
=
ââ( )
await
ââ* /
_contentManager
ââ0 ?
.
ââ? @
NewAsync
ââ@ H
(
ââH I#
contentTypeDefinition
ââI ^
.
ââ^ _
Name
ââ_ c
)
ââc d
;
ââd e
contentItem
ää #
.
ää# $
Owner
ää$ )
=
ää* +
context
ää, 3
.
ää3 4
User
ää4 8
.
ää8 9
FindFirstValue
ää9 G
(
ääG H

ClaimTypes
ääH R
.
ääR S
NameIdentifier
ääS a
)
ääa b
;
ääb c
if
åå 
(
åå 
await
åå !#
_authorizationService
åå" 7
.
åå7 8
AuthorizeAsync
åå8 F
(
ååF G
context
ååG N
.
ååN O
User
ååO S
,
ååS T
CommonPermissions
ååU f
.
ååf g
EditContent
ååg r
,
åår s
contentItem
ååt 
)åå Ä
)ååÄ Å
{
çç 
creatableList
éé )
.
éé) *
Add
éé* -
(
éé- .
new
éé. 1
SelectListItem
éé2 @
(
éé@ A
new
ééA D
LocalizedString
ééE T
(
ééT U#
contentTypeDefinition
ééU j
.
ééj k
DisplayName
éék v
,
éév w$
contentTypeDefinitionééx ç
.ééç é
DisplayNameééé ô
)ééô ö
.ééö õ
Valueééõ †
,éé† °%
contentTypeDefinitionéé¢ ∑
.éé∑ ∏
Nameéé∏ º
)ééº Ω
)ééΩ æ
;ééæ ø
}
èè 
}
êê 
}
ëë 
model
ìì 
.
ìì 
Options
ìì 
.
ìì 
CreatableTypes
ìì ,
=
ìì- .
creatableList
ìì/ <
;
ìì< =
}
îî 
model
óó 
.
óó 
Options
óó 
.
óó 
ContentStatuses
óó )
=
óó* +
new
óó, /
List
óó0 4
<
óó4 5
SelectListItem
óó5 C
>
óóC D
(
óóD E
)
óóE F
{
òò 
new
ôô 
SelectListItem
ôô "
(
ôô" #
)
ôô# $
{
ôô% &
Text
ôô' +
=
ôô, -
S
ôô. /
[
ôô/ 0
$str
ôô0 8
]
ôô8 9
,
ôô9 :
Value
ôô; @
=
ôôA B
nameof
ôôC I
(
ôôI J
ContentsStatus
ôôJ X
.
ôôX Y
Latest
ôôY _
)
ôô_ `
}
ôôa b
,
ôôb c
new
öö 
SelectListItem
öö "
(
öö" #
)
öö# $
{
öö% &
Text
öö' +
=
öö, -
S
öö. /
[
öö/ 0
$str
öö0 ;
]
öö; <
,
öö< =
Value
öö> C
=
ööD E
nameof
ööF L
(
ööL M
ContentsStatus
ööM [
.
öö[ \
	Published
öö\ e
)
ööe f
}
öög h
,
ööh i
new
õõ 
SelectListItem
õõ "
(
õõ" #
)
õõ# $
{
õõ% &
Text
õõ' +
=
õõ, -
S
õõ. /
[
õõ/ 0
$str
õõ0 =
]
õõ= >
,
õõ> ?
Value
õõ@ E
=
õõF G
nameof
õõH N
(
õõN O
ContentsStatus
õõO ]
.
õõ] ^
Draft
õõ^ c
)
õõc d
}
õõe f
,
õõf g
new
úú 
SelectListItem
úú "
(
úú" #
)
úú# $
{
úú% &
Text
úú' +
=
úú, -
S
úú. /
[
úú/ 0
$str
úú0 >
]
úú> ?
,
úú? @
Value
úúA F
=
úúG H
nameof
úúI O
(
úúO P
ContentsStatus
úúP ^
.
úú^ _
AllVersions
úú_ j
)
úúj k
}
úúl m
}
ùù 
;
ùù 
if
üü 
(
üü 
await
üü #
_authorizationService
üü +
.
üü+ ,
AuthorizeAsync
üü, :
(
üü: ;
context
üü; B
.
üüB C
User
üüC G
,
üüG H
Permissions
üüI T
.
üüT U
ListContent
üüU `
)
üü` a
)
üüa b
{
†† 
model
°° 
.
°° 
Options
°° 
.
°° 
ContentStatuses
°° -
.
°°- .
Insert
°°. 4
(
°°4 5
$num
°°5 6
,
°°6 7
new
°°8 ;
SelectListItem
°°< J
(
°°J K
)
°°K L
{
°°M N
Text
°°O S
=
°°T U
S
°°V W
[
°°W X
$str
°°X e
]
°°e f
,
°°f g
Value
°°h m
=
°°n o
nameof
°°p v
(
°°v w
ContentsStatus°°w Ö
.°°Ö Ü
Owner°°Ü ã
)°°ã å
}°°ç é
)°°é è
;°°è ê
}
¢¢ 
model
§§ 
.
§§ 
Options
§§ 
.
§§ 
ContentSorts
§§ &
=
§§' (
new
§§) ,
List
§§- 1
<
§§1 2
SelectListItem
§§2 @
>
§§@ A
(
§§A B
)
§§B C
{
•• 
new
¶¶ 
SelectListItem
¶¶ "
(
¶¶" #
)
¶¶# $
{
¶¶% &
Text
¶¶' +
=
¶¶, -
S
¶¶. /
[
¶¶/ 0
$str
¶¶0 B
]
¶¶B C
,
¶¶C D
Value
¶¶E J
=
¶¶K L
nameof
¶¶M S
(
¶¶S T
ContentsOrder
¶¶T a
.
¶¶a b
Created
¶¶b i
)
¶¶i j
}
¶¶k l
,
¶¶l m
new
ßß 
SelectListItem
ßß "
(
ßß" #
)
ßß# $
{
ßß% &
Text
ßß' +
=
ßß, -
S
ßß. /
[
ßß/ 0
$str
ßß0 C
]
ßßC D
,
ßßD E
Value
ßßF K
=
ßßL M
nameof
ßßN T
(
ßßT U
ContentsOrder
ßßU b
.
ßßb c
Modified
ßßc k
)
ßßk l
}
ßßm n
,
ßßn o
new
®® 
SelectListItem
®® "
(
®®" #
)
®®# $
{
®®% &
Text
®®' +
=
®®, -
S
®®. /
[
®®/ 0
$str
®®0 D
]
®®D E
,
®®E F
Value
®®G L
=
®®M N
nameof
®®O U
(
®®U V
ContentsOrder
®®V c
.
®®c d
	Published
®®d m
)
®®m n
}
®®o p
,
®®p q
new
©© 
SelectListItem
©© "
(
©©" #
)
©©# $
{
©©% &
Text
©©' +
=
©©, -
S
©©. /
[
©©/ 0
$str
©©0 7
]
©©7 8
,
©©8 9
Value
©©: ?
=
©©@ A
nameof
©©B H
(
©©H I
ContentsOrder
©©I V
.
©©V W
Title
©©W \
)
©©\ ]
}
©©^ _
}
™™ 
;
™™ 
model
¨¨ 
.
¨¨ 
Options
¨¨ 
.
¨¨  
ContentsBulkAction
¨¨ ,
=
¨¨- .
new
¨¨/ 2
List
¨¨3 7
<
¨¨7 8
SelectListItem
¨¨8 F
>
¨¨F G
(
¨¨G H
)
¨¨H I
{
≠≠ 
new
ÆÆ 
SelectListItem
ÆÆ "
(
ÆÆ" #
)
ÆÆ# $
{
ÆÆ% &
Text
ÆÆ' +
=
ÆÆ, -
S
ÆÆ. /
[
ÆÆ/ 0
$str
ÆÆ0 =
]
ÆÆ= >
,
ÆÆ> ?
Value
ÆÆ@ E
=
ÆÆF G
nameof
ÆÆH N
(
ÆÆN O 
ContentsBulkAction
ÆÆO a
.
ÆÆa b

PublishNow
ÆÆb l
)
ÆÆl m
}
ÆÆn o
,
ÆÆo p
new
ØØ 
SelectListItem
ØØ "
(
ØØ" #
)
ØØ# $
{
ØØ% &
Text
ØØ' +
=
ØØ, -
S
ØØ. /
[
ØØ/ 0
$str
ØØ0 ;
]
ØØ; <
,
ØØ< =
Value
ØØ> C
=
ØØD E
nameof
ØØF L
(
ØØL M 
ContentsBulkAction
ØØM _
.
ØØ_ `
	Unpublish
ØØ` i
)
ØØi j
}
ØØk l
,
ØØl m
new
∞∞ 
SelectListItem
∞∞ "
(
∞∞" #
)
∞∞# $
{
∞∞% &
Text
∞∞' +
=
∞∞, -
S
∞∞. /
[
∞∞/ 0
$str
∞∞0 8
]
∞∞8 9
,
∞∞9 :
Value
∞∞; @
=
∞∞A B
nameof
∞∞C I
(
∞∞I J 
ContentsBulkAction
∞∞J \
.
∞∞\ ]
Remove
∞∞] c
)
∞∞c d
}
∞∞e f
}
±± 
;
±± 
if
≥≥ 
(
≥≥ 
(
≥≥ 
String
≥≥ 
.
≥≥ 
IsNullOrEmpty
≥≥ %
(
≥≥% &
model
≥≥& +
.
≥≥+ ,
Options
≥≥, 3
.
≥≥3 4!
SelectedContentType
≥≥4 G
)
≥≥G H
||
≥≥I K
String
≥≥L R
.
≥≥R S
IsNullOrEmpty
≥≥S `
(
≥≥` a
contentTypeId
≥≥a n
)
≥≥n o
)
≥≥o p
&&
≥≥q s
model
≥≥t y
.
≥≥y z
Options≥≥z Å
.≥≥Å Ç"
ContentTypeOptions≥≥Ç î
==≥≥ï ó
null≥≥ò ú
)≥≥ú ù
{
¥¥ 
var
µµ 
listableTypes
µµ !
=
µµ" #
new
µµ$ '
List
µµ( ,
<
µµ, -#
ContentTypeDefinition
µµ- B
>
µµB C
(
µµC D
)
µµD E
;
µµE F
foreach
∂∂ 
(
∂∂ 
var
∂∂ 
ctd
∂∂  
in
∂∂! #'
_contentDefinitionManager
∂∂$ =
.
∂∂= >!
ListTypeDefinitions
∂∂> Q
(
∂∂Q R
)
∂∂R S
)
∂∂S T
{
∑∑ 
if
∏∏ 
(
∏∏ 
ctd
∏∏ 
.
∏∏ 
GetSettings
∏∏ '
<
∏∏' (!
ContentTypeSettings
∏∏( ;
>
∏∏; <
(
∏∏< =
)
∏∏= >
.
∏∏> ?
Listable
∏∏? G
)
∏∏G H
{
ππ 
var
∫∫ 
contentItem
∫∫ '
=
∫∫( )
await
∫∫* /
_contentManager
∫∫0 ?
.
∫∫? @
NewAsync
∫∫@ H
(
∫∫H I
ctd
∫∫I L
.
∫∫L M
Name
∫∫M Q
)
∫∫Q R
;
∫∫R S
contentItem
ªª #
.
ªª# $
Owner
ªª$ )
=
ªª* +
context
ªª, 3
.
ªª3 4
User
ªª4 8
.
ªª8 9
FindFirstValue
ªª9 G
(
ªªG H

ClaimTypes
ªªH R
.
ªªR S
NameIdentifier
ªªS a
)
ªªa b
;
ªªb c
var
ºº 

authorized
ºº &
=
ºº' (
await
ºº) .#
_authorizationService
ºº/ D
.
ººD E
AuthorizeAsync
ººE S
(
ººS T
User
ººT X
,
ººX Y
CommonPermissions
ººZ k
.
ººk l
EditContent
ººl w
,
ººw x
contentItemººy Ñ
)ººÑ Ö
;ººÖ Ü
if
ææ 
(
ææ 

authorized
ææ &
)
ææ& '
{
øø 
listableTypes
¿¿ )
.
¿¿) *
Add
¿¿* -
(
¿¿- .
ctd
¿¿. 1
)
¿¿1 2
;
¿¿2 3
}
¡¡ 
}
¬¬ 
}
√√ 
var
≈≈  
contentTypeOptions
≈≈ &
=
≈≈' (
listableTypes
≈≈) 6
.
∆∆ 
Select
∆∆ 
(
∆∆ 
ctd
∆∆ 
=>
∆∆  "
new
∆∆# &
KeyValuePair
∆∆' 3
<
∆∆3 4
string
∆∆4 :
,
∆∆: ;
string
∆∆< B
>
∆∆B C
(
∆∆C D
ctd
∆∆D G
.
∆∆G H
Name
∆∆H L
,
∆∆L M
ctd
∆∆N Q
.
∆∆Q R
DisplayName
∆∆R ]
)
∆∆] ^
)
∆∆^ _
.
«« 
ToList
«« 
(
«« 
)
«« 
.
«« 
OrderBy
«« %
(
««% &
kvp
««& )
=>
««* ,
kvp
««- 0
.
««0 1
Value
««1 6
)
««6 7
;
««7 8
model
…… 
.
…… 
Options
…… 
.
……  
ContentTypeOptions
…… 0
=
……1 2
new
……3 6
List
……7 ;
<
……; <
SelectListItem
……< J
>
……J K
{
   
new
ÀÀ 
SelectListItem
ÀÀ &
(
ÀÀ& '
)
ÀÀ' (
{
ÀÀ) *
Text
ÀÀ+ /
=
ÀÀ0 1
S
ÀÀ2 3
[
ÀÀ3 4
$str
ÀÀ4 G
]
ÀÀG H
,
ÀÀH I
Value
ÀÀJ O
=
ÀÀP Q
$str
ÀÀR T
}
ÀÀU V
}
ÃÃ 
;
ÃÃ 
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
option
ŒŒ #
in
ŒŒ$ & 
contentTypeOptions
ŒŒ' 9
)
ŒŒ9 :
{
œœ 
model
–– 
.
–– 
Options
–– !
.
––! " 
ContentTypeOptions
––" 4
.
––4 5
Add
––5 8
(
––8 9
new
––9 <
SelectListItem
––= K
(
––K L
)
––L M
{
––N O
Text
––P T
=
––U V
option
––W ]
.
––] ^
Value
––^ c
,
––c d
Value
––e j
=
––k l
option
––m s
.
––s t
Key
––t w
,
––w x
Selected––y Å
=––Ç É
(––Ñ Ö
option––Ö ã
.––ã å
Value––å ë
==––í î
model––ï ö
.––ö õ
Options––õ ¢
.––¢ £#
SelectedContentType––£ ∂
)––∂ ∑
}––∏ π
)––π ∫
;––∫ ª
}
—— 
}
““ 
if
’’ 
(
’’ 
model
’’ 
.
’’ 
Options
’’ 
.
’’  
ContentTypeOptions
’’ 0
==
’’1 3
null
’’4 8
)
’’8 9
{
÷÷ 
model
◊◊ 
.
◊◊ 
Options
◊◊ 
.
◊◊  
ContentTypeOptions
◊◊ 0
=
◊◊1 2
new
◊◊3 6
List
◊◊7 ;
<
◊◊; <
SelectListItem
◊◊< J
>
◊◊J K
(
◊◊K L
)
◊◊L M
;
◊◊M N
}
ÿÿ 
var
€€ 
query
€€ 
=
€€ 
await
€€ ,
_contentsAdminListQueryService
€€ <
.
€€< =

QueryAsync
€€= G
(
€€G H
model
€€H M
.
€€M N
Options
€€N U
,
€€U V"
_updateModelAccessor
€€W k
.
€€k l
ModelUpdater
€€l x
)
€€x y
;
€€y z
var
›› 
maxPagedCount
›› 
=
›› 
siteSettings
››  ,
.
››, -
MaxPagedCount
››- :
;
››: ;
if
ﬁﬁ 
(
ﬁﬁ 
maxPagedCount
ﬁﬁ 
>
ﬁﬁ 
$num
ﬁﬁ  !
&&
ﬁﬁ" $
pager
ﬁﬁ% *
.
ﬁﬁ* +
PageSize
ﬁﬁ+ 3
>
ﬁﬁ4 5
maxPagedCount
ﬁﬁ6 C
)
ﬁﬁC D
{
ﬂﬂ 
pager
‡‡ 
.
‡‡ 
PageSize
‡‡ 
=
‡‡  
maxPagedCount
‡‡! .
;
‡‡. /
}
·· 
var
‰‰ 
	routeData
‰‰ 
=
‰‰ 
new
‰‰ 
	RouteData
‰‰  )
(
‰‰) *
)
‰‰* +
;
‰‰+ ,
	routeData
ÂÂ 
.
ÂÂ 
Values
ÂÂ 
.
ÂÂ 
Add
ÂÂ  
(
ÂÂ  !
$str
ÂÂ! .
,
ÂÂ. /
model
ÂÂ0 5
.
ÂÂ5 6
Options
ÂÂ6 =
.
ÂÂ= >
DisplayText
ÂÂ> I
)
ÂÂI J
;
ÂÂJ K
var
ÁÁ 

pagerShape
ÁÁ 
=
ÁÁ 
(
ÁÁ 
await
ÁÁ #
New
ÁÁ$ '
.
ÁÁ' (
Pager
ÁÁ( -
(
ÁÁ- .
pager
ÁÁ. 3
)
ÁÁ3 4
)
ÁÁ4 5
.
ÁÁ5 6
TotalItemCount
ÁÁ6 D
(
ÁÁD E
maxPagedCount
ÁÁE R
>
ÁÁS T
$num
ÁÁU V
?
ÁÁW X
maxPagedCount
ÁÁY f
:
ÁÁg h
await
ÁÁi n
query
ÁÁo t
.
ÁÁt u

CountAsync
ÁÁu 
(ÁÁ Ä
)ÁÁÄ Å
)ÁÁÅ Ç
.ÁÁÇ É
	RouteDataÁÁÉ å
(ÁÁå ç
	routeDataÁÁç ñ
)ÁÁñ ó
;ÁÁó ò
var
ËË  
pageOfContentItems
ËË "
=
ËË# $
await
ËË% *
query
ËË+ 0
.
ËË0 1
Skip
ËË1 5
(
ËË5 6
pager
ËË6 ;
.
ËË; <
GetStartIndex
ËË< I
(
ËËI J
)
ËËJ K
)
ËËK L
.
ËËL M
Take
ËËM Q
(
ËËQ R
pager
ËËR W
.
ËËW X
PageSize
ËËX `
)
ËË` a
.
ËËa b
	ListAsync
ËËb k
(
ËËk l
)
ËËl m
;
ËËm n
var
ÎÎ "
contentItemSummaries
ÎÎ $
=
ÎÎ% &
new
ÎÎ' *
List
ÎÎ+ /
<
ÎÎ/ 0
dynamic
ÎÎ0 7
>
ÎÎ7 8
(
ÎÎ8 9
)
ÎÎ9 :
;
ÎÎ: ;
foreach
ÏÏ 
(
ÏÏ 
var
ÏÏ 
contentItem
ÏÏ $
in
ÏÏ% ' 
pageOfContentItems
ÏÏ( :
)
ÏÏ: ;
{
ÌÌ "
contentItemSummaries
ÓÓ $
.
ÓÓ$ %
Add
ÓÓ% (
(
ÓÓ( )
await
ÓÓ) .(
_contentItemDisplayManager
ÓÓ/ I
.
ÓÓI J
BuildDisplayAsync
ÓÓJ [
(
ÓÓ[ \
contentItem
ÓÓ\ g
,
ÓÓg h"
_updateModelAccessor
ÓÓi }
.
ÓÓ} ~
ModelUpdaterÓÓ~ ä
,ÓÓä ã
$strÓÓå ö
)ÓÓö õ
)ÓÓõ ú
;ÓÓú ù
}
ÔÔ 
var
ÚÚ 

startIndex
ÚÚ 
=
ÚÚ 
(
ÚÚ 

pagerShape
ÚÚ (
.
ÚÚ( )
Page
ÚÚ) -
-
ÚÚ. /
$num
ÚÚ0 1
)
ÚÚ1 2
*
ÚÚ3 4
(
ÚÚ5 6

pagerShape
ÚÚ6 @
.
ÚÚ@ A
PageSize
ÚÚA I
)
ÚÚI J
+
ÚÚK L
$num
ÚÚM N
;
ÚÚN O
model
ÛÛ 
.
ÛÛ 
Options
ÛÛ 
.
ÛÛ 

StartIndex
ÛÛ $
=
ÛÛ% &

startIndex
ÛÛ' 1
;
ÛÛ1 2
model
ÙÙ 
.
ÙÙ 
Options
ÙÙ 
.
ÙÙ 
EndIndex
ÙÙ "
=
ÙÙ# $

startIndex
ÙÙ% /
+
ÙÙ0 1"
contentItemSummaries
ÙÙ2 F
.
ÙÙF G
Count
ÙÙG L
-
ÙÙM N
$num
ÙÙO P
;
ÙÙP Q
model
ıı 
.
ıı 
Options
ıı 
.
ıı 
ContentItemsCount
ıı +
=
ıı, -"
contentItemSummaries
ıı. B
.
ııB C
Count
ııC H
;
ııH I
model
ˆˆ 
.
ˆˆ 
Options
ˆˆ 
.
ˆˆ 
TotalItemCount
ˆˆ (
=
ˆˆ) *

pagerShape
ˆˆ+ 5
.
ˆˆ5 6
TotalItemCount
ˆˆ6 D
;
ˆˆD E
var
¯¯ 
header
¯¯ 
=
¯¯ 
await
¯¯ +
_contentOptionsDisplayManager
¯¯ <
.
¯¯< =
BuildEditorAsync
¯¯= M
(
¯¯M N
model
¯¯N S
.
¯¯S T
Options
¯¯T [
,
¯¯[ \"
_updateModelAccessor
¯¯] q
.
¯¯q r
ModelUpdater
¯¯r ~
,
¯¯~ 
false¯¯Ä Ö
)¯¯Ö Ü
;¯¯Ü á
var
˙˙ 
shapeViewModel
˙˙ 
=
˙˙  
await
˙˙! &
_shapeFactory
˙˙' 4
.
˙˙4 5
CreateAsync
˙˙5 @
<
˙˙@ A#
ListContentsViewModel
˙˙A V
>
˙˙V W
(
˙˙W X
$str
˙˙X k
,
˙˙k l
	viewModel
˙˙m v
=>
˙˙w y
{
˚˚ 
	viewModel
¸¸ 
.
¸¸ 
ContentItems
¸¸ &
=
¸¸' ("
contentItemSummaries
¸¸) =
;
¸¸= >
	viewModel
˝˝ 
.
˝˝ 
Pager
˝˝ 
=
˝˝  !

pagerShape
˝˝" ,
;
˝˝, -
	viewModel
˛˛ 
.
˛˛ 
Options
˛˛ !
=
˛˛" #
model
˛˛$ )
.
˛˛) *
Options
˛˛* 1
;
˛˛1 2
	viewModel
ˇˇ 
.
ˇˇ 
Header
ˇˇ  
=
ˇˇ! "
header
ˇˇ# )
;
ˇˇ) *
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
shapeViewModel
ÇÇ &
)
ÇÇ& '
;
ÇÇ' (
}
ÉÉ 	
[
ÖÖ 	
HttpPost
ÖÖ	 
,
ÖÖ 

ActionName
ÖÖ 
(
ÖÖ 
$str
ÖÖ $
)
ÖÖ$ %
]
ÖÖ% &
[
ÜÜ 	
FormValueRequired
ÜÜ	 
(
ÜÜ 
$str
ÜÜ *
)
ÜÜ* +
]
ÜÜ+ ,
public
áá 
async
áá 
Task
áá 
<
áá 
ActionResult
áá &
>
áá& '
ListFilterPOST
áá( 6
(
áá6 7#
ListContentsViewModel
áá7 L
model
ááM R
)
ááR S
{
àà 	
await
ää +
_contentOptionsDisplayManager
ää /
.
ää/ 0
UpdateEditorAsync
ää0 A
(
ääA B
model
ääB G
.
ääG H
Options
ääH O
,
ääO P"
_updateModelAccessor
ääQ e
.
ääe f
ModelUpdater
ääf r
,
äär s
false
äät y
)
ääy z
;
ääz {
return
åå 
RedirectToAction
åå #
(
åå# $
$str
åå$ *
,
åå* +
model
åå, 1
.
åå1 2
Options
åå2 9
.
åå9 :
RouteValues
åå: E
)
ååE F
;
ååF G
}
çç 	
[
èè 	
HttpPost
èè	 
,
èè 

ActionName
èè 
(
èè 
$str
èè $
)
èè$ %
]
èè% &
[
êê 	
FormValueRequired
êê	 
(
êê 
$str
êê .
)
êê. /
]
êê/ 0
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
ActionResult
ëë &
>
ëë& '
ListPOST
ëë( 0
(
ëë0 1%
ContentOptionsViewModel
ëë1 H
options
ëëI P
,
ëëP Q
IEnumerable
ëëR ]
<
ëë] ^
int
ëë^ a
>
ëëa b
itemIds
ëëc j
)
ëëj k
{
íí 	
if
ìì 
(
ìì 
itemIds
ìì 
?
ìì 
.
ìì 
Count
ìì 
(
ìì 
)
ìì  
>
ìì! "
$num
ìì# $
)
ìì$ %
{
îî 
var
ïï !
checkedContentItems
ïï '
=
ïï( )
await
ïï* /
_session
ïï0 8
.
ïï8 9
Query
ïï9 >
<
ïï> ?
ContentItem
ïï? J
,
ïïJ K
ContentItemIndex
ïïL \
>
ïï\ ]
(
ïï] ^
)
ïï^ _
.
ïï_ `
Where
ïï` e
(
ïïe f
x
ïïf g
=>
ïïh j
x
ïïk l
.
ïïl m

DocumentId
ïïm w
.
ïïw x
IsIn
ïïx |
(
ïï| }
itemIdsïï} Ñ
)ïïÑ Ö
&&ïïÜ à
xïïâ ä
.ïïä ã
Latestïïã ë
)ïïë í
.ïïí ì
	ListAsyncïïì ú
(ïïú ù
)ïïù û
;ïïû ü
switch
ññ 
(
ññ 
options
ññ 
.
ññ  

BulkAction
ññ  *
)
ññ* +
{
óó 
case
òò  
ContentsBulkAction
òò +
.
òò+ ,
None
òò, 0
:
òò0 1
break
ôô 
;
ôô 
case
öö  
ContentsBulkAction
öö +
.
öö+ ,

PublishNow
öö, 6
:
öö6 7
foreach
õõ 
(
õõ  !
var
õõ! $
item
õõ% )
in
õõ* ,!
checkedContentItems
õõ- @
)
õõ@ A
{
úú 
if
ùù 
(
ùù  
!
ùù  !
await
ùù! &#
_authorizationService
ùù' <
.
ùù< =
AuthorizeAsync
ùù= K
(
ùùK L
User
ùùL P
,
ùùP Q
CommonPermissions
ùùR c
.
ùùc d
PublishContent
ùùd r
,
ùùr s
item
ùùt x
)
ùùx y
)
ùùy z
{
ûû 
	_notifier
üü  )
.
üü) *
Warning
üü* 1
(
üü1 2
H
üü2 3
[
üü3 4
$str
üü4 X
]
üüX Y
)
üüY Z
;
üüZ [
_session
††  (
.
††( )
Cancel
††) /
(
††/ 0
)
††0 1
;
††1 2
return
°°  &
Forbid
°°' -
(
°°- .
)
°°. /
;
°°/ 0
}
¢¢ 
await
§§ !
_contentManager
§§" 1
.
§§1 2
PublishAsync
§§2 >
(
§§> ?
item
§§? C
)
§§C D
;
§§D E
}
•• 
	_notifier
¶¶ !
.
¶¶! "
Success
¶¶" )
(
¶¶) *
H
¶¶* +
[
¶¶+ ,
$str
¶¶, M
]
¶¶M N
)
¶¶N O
;
¶¶O P
break
ßß 
;
ßß 
case
®®  
ContentsBulkAction
®® +
.
®®+ ,
	Unpublish
®®, 5
:
®®5 6
foreach
©© 
(
©©  !
var
©©! $
item
©©% )
in
©©* ,!
checkedContentItems
©©- @
)
©©@ A
{
™™ 
if
´´ 
(
´´  
!
´´  !
await
´´! &#
_authorizationService
´´' <
.
´´< =
AuthorizeAsync
´´= K
(
´´K L
User
´´L P
,
´´P Q
CommonPermissions
´´R c
.
´´c d
PublishContent
´´d r
,
´´r s
item
´´t x
)
´´x y
)
´´y z
{
¨¨ 
	_notifier
≠≠  )
.
≠≠) *
Warning
≠≠* 1
(
≠≠1 2
H
≠≠2 3
[
≠≠3 4
$str
≠≠4 Z
]
≠≠Z [
)
≠≠[ \
;
≠≠\ ]
_session
ÆÆ  (
.
ÆÆ( )
Cancel
ÆÆ) /
(
ÆÆ/ 0
)
ÆÆ0 1
;
ÆÆ1 2
return
ØØ  &
Forbid
ØØ' -
(
ØØ- .
)
ØØ. /
;
ØØ/ 0
}
∞∞ 
await
≤≤ !
_contentManager
≤≤" 1
.
≤≤1 2
UnpublishAsync
≤≤2 @
(
≤≤@ A
item
≤≤A E
)
≤≤E F
;
≤≤F G
}
≥≥ 
	_notifier
¥¥ !
.
¥¥! "
Success
¥¥" )
(
¥¥) *
H
¥¥* +
[
¥¥+ ,
$str
¥¥, O
]
¥¥O P
)
¥¥P Q
;
¥¥Q R
break
µµ 
;
µµ 
case
∂∂  
ContentsBulkAction
∂∂ +
.
∂∂+ ,
Remove
∂∂, 2
:
∂∂2 3
foreach
∑∑ 
(
∑∑  !
var
∑∑! $
item
∑∑% )
in
∑∑* ,!
checkedContentItems
∑∑- @
)
∑∑@ A
{
∏∏ 
if
ππ 
(
ππ  
!
ππ  !
await
ππ! &#
_authorizationService
ππ' <
.
ππ< =
AuthorizeAsync
ππ= K
(
ππK L
User
ππL P
,
ππP Q
CommonPermissions
ππR c
.
ππc d
DeleteContent
ππd q
,
ππq r
item
ππs w
)
ππw x
)
ππx y
{
∫∫ 
	_notifier
ªª  )
.
ªª) *
Warning
ªª* 1
(
ªª1 2
H
ªª2 3
[
ªª3 4
$str
ªª4 W
]
ªªW X
)
ªªX Y
;
ªªY Z
_session
ºº  (
.
ºº( )
Cancel
ºº) /
(
ºº/ 0
)
ºº0 1
;
ºº1 2
return
ΩΩ  &
Forbid
ΩΩ' -
(
ΩΩ- .
)
ΩΩ. /
;
ΩΩ/ 0
}
ææ 
await
¿¿ !
_contentManager
¿¿" 1
.
¿¿1 2
RemoveAsync
¿¿2 =
(
¿¿= >
item
¿¿> B
)
¿¿B C
;
¿¿C D
}
¡¡ 
	_notifier
¬¬ !
.
¬¬! "
Success
¬¬" )
(
¬¬) *
H
¬¬* +
[
¬¬+ ,
$str
¬¬, K
]
¬¬K L
)
¬¬L M
;
¬¬M N
break
√√ 
;
√√ 
default
ƒƒ 
:
ƒƒ 
throw
≈≈ 
new
≈≈ !)
ArgumentOutOfRangeException
≈≈" =
(
≈≈= >
)
≈≈> ?
;
≈≈? @
}
∆∆ 
}
«« 
return
…… 
RedirectToAction
…… #
(
……# $
$str
……$ *
)
……* +
;
……+ ,
}
   	
public
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
IActionResult
ÃÃ '
>
ÃÃ' (
Create
ÃÃ) /
(
ÃÃ/ 0
string
ÃÃ0 6
id
ÃÃ7 9
)
ÃÃ9 :
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 
String
ŒŒ 
.
ŒŒ  
IsNullOrWhiteSpace
ŒŒ )
(
ŒŒ) *
id
ŒŒ* ,
)
ŒŒ, -
)
ŒŒ- .
{
œœ 
return
–– 
NotFound
–– 
(
––  
)
––  !
;
––! "
}
—— 
var
”” 
contentItem
”” 
=
”” 
await
”” #
_contentManager
””$ 3
.
””3 4
NewAsync
””4 <
(
””< =
id
””= ?
)
””? @
;
””@ A
contentItem
÷÷ 
.
÷÷ 
Owner
÷÷ 
=
÷÷ 
User
÷÷  $
.
÷÷$ %
FindFirstValue
÷÷% 3
(
÷÷3 4

ClaimTypes
÷÷4 >
.
÷÷> ?
NameIdentifier
÷÷? M
)
÷÷M N
;
÷÷N O
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
await
ÿÿ #
_authorizationService
ÿÿ ,
.
ÿÿ, -
AuthorizeAsync
ÿÿ- ;
(
ÿÿ; <
User
ÿÿ< @
,
ÿÿ@ A
CommonPermissions
ÿÿB S
.
ÿÿS T
EditContent
ÿÿT _
,
ÿÿ_ `
contentItem
ÿÿa l
)
ÿÿl m
)
ÿÿm n
{
ŸŸ 
return
⁄⁄ 
Forbid
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄  
}
€€ 
var
›› 
model
›› 
=
›› 
await
›› (
_contentItemDisplayManager
›› 8
.
››8 9
BuildEditorAsync
››9 I
(
››I J
contentItem
››J U
,
››U V"
_updateModelAccessor
››W k
.
››k l
ModelUpdater
››l x
,
››x y
true
››z ~
)
››~ 
;›› Ä
return
ﬂﬂ 
View
ﬂﬂ 
(
ﬂﬂ 
model
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
[
‚‚ 	
HttpPost
‚‚	 
,
‚‚ 

ActionName
‚‚ 
(
‚‚ 
$str
‚‚ &
)
‚‚& '
]
‚‚' (
[
„„ 	
FormValueRequired
„„	 
(
„„ 
$str
„„ (
)
„„( )
]
„„) *
public
‰‰ 
Task
‰‰ 
<
‰‰ 
IActionResult
‰‰ !
>
‰‰! "

CreatePOST
‰‰# -
(
‰‰- .
string
‰‰. 4
id
‰‰5 7
,
‰‰7 8
[
‰‰9 :
Bind
‰‰: >
(
‰‰> ?
Prefix
‰‰? E
=
‰‰F G
$str
‰‰H U
)
‰‰U V
]
‰‰V W
string
‰‰X ^

submitSave
‰‰_ i
,
‰‰i j
string
‰‰k q
	returnUrl
‰‰r {
)
‰‰{ |
{
ÂÂ 	
var
ÊÊ 
stayOnSamePage
ÊÊ 
=
ÊÊ  

submitSave
ÊÊ! +
==
ÊÊ, .
$str
ÊÊ/ G
;
ÊÊG H
return
ÁÁ 

CreatePOST
ÁÁ 
(
ÁÁ 
id
ÁÁ  
,
ÁÁ  !
	returnUrl
ÁÁ" +
,
ÁÁ+ ,
stayOnSamePage
ÁÁ- ;
,
ÁÁ; <
async
ÁÁ= B
contentItem
ÁÁC N
=>
ÁÁO Q
{
ËË 
await
ÈÈ 
_contentManager
ÈÈ %
.
ÈÈ% &
SaveDraftAsync
ÈÈ& 4
(
ÈÈ4 5
contentItem
ÈÈ5 @
)
ÈÈ@ A
;
ÈÈA B
var
ÎÎ 
typeDefinition
ÎÎ "
=
ÎÎ# $'
_contentDefinitionManager
ÎÎ% >
.
ÎÎ> ?
GetTypeDefinition
ÎÎ? P
(
ÎÎP Q
contentItem
ÎÎQ \
.
ÎÎ\ ]
ContentType
ÎÎ] h
)
ÎÎh i
;
ÎÎi j
	_notifier
ÌÌ 
.
ÌÌ 
Success
ÌÌ !
(
ÌÌ! "
string
ÌÌ" (
.
ÌÌ( ) 
IsNullOrWhiteSpace
ÌÌ) ;
(
ÌÌ; <
typeDefinition
ÌÌ< J
.
ÌÌJ K
DisplayName
ÌÌK V
)
ÌÌV W
?
ÓÓ 
H
ÓÓ 
[
ÓÓ 
$str
ÓÓ <
]
ÓÓ< =
:
ÔÔ 
H
ÔÔ 
[
ÔÔ 
$str
ÔÔ 8
,
ÔÔ8 9
typeDefinition
ÔÔ: H
.
ÔÔH I
DisplayName
ÔÔI T
]
ÔÔT U
)
ÔÔU V
;
ÔÔV W
}
 
)
 
;
 
}
ÒÒ 	
[
ÛÛ 	
HttpPost
ÛÛ	 
,
ÛÛ 

ActionName
ÛÛ 
(
ÛÛ 
$str
ÛÛ &
)
ÛÛ& '
]
ÛÛ' (
[
ÙÙ 	
FormValueRequired
ÙÙ	 
(
ÙÙ 
$str
ÙÙ +
)
ÙÙ+ ,
]
ÙÙ, -
public
ıı 
async
ıı 
Task
ıı 
<
ıı 
IActionResult
ıı '
>
ıı' ("
CreateAndPublishPOST
ıı) =
(
ıı= >
string
ıı> D
id
ııE G
,
ııG H
[
ııI J
Bind
ııJ N
(
ııN O
Prefix
ııO U
=
ııV W
$str
ııX h
)
ııh i
]
ııi j
string
ıık q
submitPublish
ıır 
,ıı Ä
stringııÅ á
	returnUrlııà ë
)ııë í
{
ˆˆ 	
var
˜˜ 
stayOnSamePage
˜˜ 
=
˜˜  
submitPublish
˜˜! .
==
˜˜/ 1
$str
˜˜2 M
;
˜˜M N
var
˘˘ 
dummyContent
˘˘ 
=
˘˘ 
await
˘˘ $
_contentManager
˘˘% 4
.
˘˘4 5
NewAsync
˘˘5 =
(
˘˘= >
id
˘˘> @
)
˘˘@ A
;
˘˘A B
dummyContent
¸¸ 
.
¸¸ 
Owner
¸¸ 
=
¸¸  
User
¸¸! %
.
¸¸% &
FindFirstValue
¸¸& 4
(
¸¸4 5

ClaimTypes
¸¸5 ?
.
¸¸? @
NameIdentifier
¸¸@ N
)
¸¸N O
;
¸¸O P
if
˛˛ 
(
˛˛ 
!
˛˛ 
await
˛˛ #
_authorizationService
˛˛ ,
.
˛˛, -
AuthorizeAsync
˛˛- ;
(
˛˛; <
User
˛˛< @
,
˛˛@ A
CommonPermissions
˛˛B S
.
˛˛S T
PublishContent
˛˛T b
,
˛˛b c
dummyContent
˛˛d p
)
˛˛p q
)
˛˛q r
{
ˇˇ 
return
ÄÄ 
Forbid
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ  
}
ÅÅ 
return
ÉÉ 
await
ÉÉ 

CreatePOST
ÉÉ #
(
ÉÉ# $
id
ÉÉ$ &
,
ÉÉ& '
	returnUrl
ÉÉ( 1
,
ÉÉ1 2
stayOnSamePage
ÉÉ3 A
,
ÉÉA B
async
ÉÉC H
contentItem
ÉÉI T
=>
ÉÉU W
{
ÑÑ 
await
ÖÖ 
_contentManager
ÖÖ %
.
ÖÖ% &
PublishAsync
ÖÖ& 2
(
ÖÖ2 3
contentItem
ÖÖ3 >
)
ÖÖ> ?
;
ÖÖ? @
var
áá 
typeDefinition
áá "
=
áá# $'
_contentDefinitionManager
áá% >
.
áá> ?
GetTypeDefinition
áá? P
(
ááP Q
contentItem
ááQ \
.
áá\ ]
ContentType
áá] h
)
ááh i
;
áái j
	_notifier
ââ 
.
ââ 
Success
ââ !
(
ââ! "
string
ââ" (
.
ââ( ) 
IsNullOrWhiteSpace
ââ) ;
(
ââ; <
typeDefinition
ââ< J
.
ââJ K
DisplayName
ââK V
)
ââV W
?
ää 
H
ää 
[
ää 
$str
ää :
]
ää: ;
:
ãã 
H
ãã 
[
ãã 
$str
ãã 6
,
ãã6 7
typeDefinition
ãã8 F
.
ããF G
DisplayName
ããG R
]
ããR S
)
ããS T
;
ããT U
}
åå 
)
åå 
;
åå 
}
çç 	
private
èè 
async
èè 
Task
èè 
<
èè 
IActionResult
èè (
>
èè( )

CreatePOST
èè* 4
(
èè4 5
string
èè5 ;
id
èè< >
,
èè> ?
string
èè@ F
	returnUrl
èèG P
,
èèP Q
bool
èèR V
stayOnSamePage
èèW e
,
èèe f
Func
èèg k
<
èèk l
ContentItem
èèl w
,
èèw x
Task
èèy }
>
èè} ~#
conditionallyPublishèè ì
)èèì î
{
êê 	
var
ëë 
contentItem
ëë 
=
ëë 
await
ëë #
_contentManager
ëë$ 3
.
ëë3 4
NewAsync
ëë4 <
(
ëë< =
id
ëë= ?
)
ëë? @
;
ëë@ A
contentItem
îî 
.
îî 
Owner
îî 
=
îî 
User
îî  $
.
îî$ %
FindFirstValue
îî% 3
(
îî3 4

ClaimTypes
îî4 >
.
îî> ?
NameIdentifier
îî? M
)
îîM N
;
îîN O
if
ññ 
(
ññ 
!
ññ 
await
ññ #
_authorizationService
ññ ,
.
ññ, -
AuthorizeAsync
ññ- ;
(
ññ; <
User
ññ< @
,
ññ@ A
CommonPermissions
ññB S
.
ññS T
EditContent
ññT _
,
ññ_ `
contentItem
ñña l
)
ññl m
)
ññm n
{
óó 
return
òò 
Forbid
òò 
(
òò 
)
òò 
;
òò  
}
ôô 
var
õõ 
model
õõ 
=
õõ 
await
õõ (
_contentItemDisplayManager
õõ 8
.
õõ8 9
UpdateEditorAsync
õõ9 J
(
õõJ K
contentItem
õõK V
,
õõV W"
_updateModelAccessor
õõX l
.
õõl m
ModelUpdater
õõm y
,
õõy z
true
õõ{ 
)õõ Ä
;õõÄ Å
if
ùù 
(
ùù 

ModelState
ùù 
.
ùù 
IsValid
ùù "
)
ùù" #
{
ûû 
await
üü 
_contentManager
üü %
.
üü% &
CreateAsync
üü& 1
(
üü1 2
contentItem
üü2 =
,
üü= >
VersionOptions
üü? M
.
üüM N
Draft
üüN S
)
üüS T
;
üüT U
}
†† 
if
¢¢ 
(
¢¢ 
!
¢¢ 

ModelState
¢¢ 
.
¢¢ 
IsValid
¢¢ #
)
¢¢# $
{
££ 
_session
§§ 
.
§§ 
Cancel
§§ 
(
§§  
)
§§  !
;
§§! "
return
•• 
View
•• 
(
•• 
model
•• !
)
••! "
;
••" #
}
¶¶ 
await
®® "
conditionallyPublish
®® &
(
®®& '
contentItem
®®' 2
)
®®2 3
;
®®3 4
if
™™ 
(
™™ 
(
™™ 
!
™™ 
string
™™ 
.
™™ 
IsNullOrEmpty
™™ &
(
™™& '
	returnUrl
™™' 0
)
™™0 1
)
™™1 2
&&
™™3 5
(
™™6 7
!
™™7 8
stayOnSamePage
™™8 F
)
™™F G
)
™™G H
{
´´ 
return
¨¨ 
LocalRedirect
¨¨ $
(
¨¨$ %
	returnUrl
¨¨% .
)
¨¨. /
;
¨¨/ 0
}
≠≠ 
var
ØØ 
adminRouteValues
ØØ  
=
ØØ! "
(
ØØ# $
await
ØØ$ )
_contentManager
ØØ* 9
.
ØØ9 :!
PopulateAspectAsync
ØØ: M
<
ØØM N!
ContentItemMetadata
ØØN a
>
ØØa b
(
ØØb c
contentItem
ØØc n
)
ØØn o
)
ØØo p
.
ØØp q
AdminRouteValuesØØq Å
;ØØÅ Ç
if
±± 
(
±± 
!
±± 
string
±± 
.
±± 
IsNullOrEmpty
±± %
(
±±% &
	returnUrl
±±& /
)
±±/ 0
)
±±0 1
{
≤≤ 
adminRouteValues
≥≥  
.
≥≥  !
Add
≥≥! $
(
≥≥$ %
$str
≥≥% 0
,
≥≥0 1
	returnUrl
≥≥2 ;
)
≥≥; <
;
≥≥< =
}
¥¥ 
return
∂∂ 
RedirectToRoute
∂∂ "
(
∂∂" #
adminRouteValues
∂∂# 3
)
∂∂3 4
;
∂∂4 5
}
∑∑ 	
public
ππ 
async
ππ 
Task
ππ 
<
ππ 
IActionResult
ππ '
>
ππ' (
Display
ππ) 0
(
ππ0 1
string
ππ1 7
contentItemId
ππ8 E
)
ππE F
{
∫∫ 	
var
ªª 
contentItem
ªª 
=
ªª 
await
ªª #
_contentManager
ªª$ 3
.
ªª3 4
GetAsync
ªª4 <
(
ªª< =
contentItemId
ªª= J
,
ªªJ K
VersionOptions
ªªL Z
.
ªªZ [
Latest
ªª[ a
)
ªªa b
;
ªªb c
if
ΩΩ 
(
ΩΩ 
contentItem
ΩΩ 
==
ΩΩ 
null
ΩΩ #
)
ΩΩ# $
{
ææ 
return
øø 
NotFound
øø 
(
øø  
)
øø  !
;
øø! "
}
¿¿ 
if
¬¬ 
(
¬¬ 
!
¬¬ 
await
¬¬ #
_authorizationService
¬¬ ,
.
¬¬, -
AuthorizeAsync
¬¬- ;
(
¬¬; <
User
¬¬< @
,
¬¬@ A
CommonPermissions
¬¬B S
.
¬¬S T
ViewContent
¬¬T _
,
¬¬_ `
contentItem
¬¬a l
)
¬¬l m
)
¬¬m n
{
√√ 
return
ƒƒ 
Forbid
ƒƒ 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ  
}
≈≈ 
var
«« 
model
«« 
=
«« 
await
«« (
_contentItemDisplayManager
«« 8
.
««8 9
BuildDisplayAsync
««9 J
(
««J K
contentItem
««K V
,
««V W"
_updateModelAccessor
««X l
.
««l m
ModelUpdater
««m y
,
««y z
$str««{ à
)««à â
;««â ä
return
…… 
View
…… 
(
…… 
model
…… 
)
…… 
;
…… 
}
   	
public
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
IActionResult
ÃÃ '
>
ÃÃ' (
Edit
ÃÃ) -
(
ÃÃ- .
string
ÃÃ. 4
contentItemId
ÃÃ5 B
)
ÃÃB C
{
ÕÕ 	
var
ŒŒ 
contentItem
ŒŒ 
=
ŒŒ 
await
ŒŒ #
_contentManager
ŒŒ$ 3
.
ŒŒ3 4
GetAsync
ŒŒ4 <
(
ŒŒ< =
contentItemId
ŒŒ= J
,
ŒŒJ K
VersionOptions
ŒŒL Z
.
ŒŒZ [
Latest
ŒŒ[ a
)
ŒŒa b
;
ŒŒb c
if
–– 
(
–– 
contentItem
–– 
==
–– 
null
–– #
)
––# $
{
—— 
return
““ 
NotFound
““ 
(
““  
)
““  !
;
““! "
}
”” 
if
’’ 
(
’’ 
!
’’ 
await
’’ #
_authorizationService
’’ ,
.
’’, -
AuthorizeAsync
’’- ;
(
’’; <
User
’’< @
,
’’@ A
CommonPermissions
’’B S
.
’’S T
EditContent
’’T _
,
’’_ `
contentItem
’’a l
)
’’l m
)
’’m n
{
÷÷ 
return
◊◊ 
Forbid
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊  
}
ÿÿ 
var
⁄⁄ 
model
⁄⁄ 
=
⁄⁄ 
await
⁄⁄ (
_contentItemDisplayManager
⁄⁄ 8
.
⁄⁄8 9
BuildEditorAsync
⁄⁄9 I
(
⁄⁄I J
contentItem
⁄⁄J U
,
⁄⁄U V"
_updateModelAccessor
⁄⁄W k
.
⁄⁄k l
ModelUpdater
⁄⁄l x
,
⁄⁄x y
false
⁄⁄z 
)⁄⁄ Ä
;⁄⁄Ä Å
return
‹‹ 
View
‹‹ 
(
‹‹ 
model
‹‹ 
)
‹‹ 
;
‹‹ 
}
›› 	
[
ﬂﬂ 	
HttpPost
ﬂﬂ	 
,
ﬂﬂ 

ActionName
ﬂﬂ 
(
ﬂﬂ 
$str
ﬂﬂ $
)
ﬂﬂ$ %
]
ﬂﬂ% &
[
‡‡ 	
FormValueRequired
‡‡	 
(
‡‡ 
$str
‡‡ (
)
‡‡( )
]
‡‡) *
public
·· 
Task
·· 
<
·· 
IActionResult
·· !
>
··! "
EditPOST
··# +
(
··+ ,
string
··, 2
contentItemId
··3 @
,
··@ A
[
··B C
Bind
··C G
(
··G H
Prefix
··H N
=
··O P
$str
··Q ^
)
··^ _
]
··_ `
string
··a g

submitSave
··h r
,
··r s
string
··t z
	returnUrl··{ Ñ
)··Ñ Ö
{
‚‚ 	
var
„„ 
stayOnSamePage
„„ 
=
„„  

submitSave
„„! +
==
„„, .
$str
„„/ G
;
„„G H
return
‰‰ 
EditPOST
‰‰ 
(
‰‰ 
contentItemId
‰‰ )
,
‰‰) *
	returnUrl
‰‰+ 4
,
‰‰4 5
stayOnSamePage
‰‰6 D
,
‰‰D E
async
‰‰F K
contentItem
‰‰L W
=>
‰‰X Z
{
ÂÂ 
await
ÊÊ 
_contentManager
ÊÊ %
.
ÊÊ% &
SaveDraftAsync
ÊÊ& 4
(
ÊÊ4 5
contentItem
ÊÊ5 @
)
ÊÊ@ A
;
ÊÊA B
var
ËË 
typeDefinition
ËË "
=
ËË# $'
_contentDefinitionManager
ËË% >
.
ËË> ?
GetTypeDefinition
ËË? P
(
ËËP Q
contentItem
ËËQ \
.
ËË\ ]
ContentType
ËË] h
)
ËËh i
;
ËËi j
	_notifier
ÍÍ 
.
ÍÍ 
Success
ÍÍ !
(
ÍÍ! "
string
ÍÍ" (
.
ÍÍ( ) 
IsNullOrWhiteSpace
ÍÍ) ;
(
ÍÍ; <
typeDefinition
ÍÍ< J
.
ÍÍJ K
DisplayName
ÍÍK V
)
ÍÍV W
?
ÎÎ 
H
ÎÎ 
[
ÎÎ 
$str
ÎÎ <
]
ÎÎ< =
:
ÏÏ 
H
ÏÏ 
[
ÏÏ 
$str
ÏÏ 8
,
ÏÏ8 9
typeDefinition
ÏÏ: H
.
ÏÏH I
DisplayName
ÏÏI T
]
ÏÏT U
)
ÏÏU V
;
ÏÏV W
}
ÌÌ 
)
ÌÌ 
;
ÌÌ 
}
ÓÓ 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 $
)
$ %
]
% &
[
ÒÒ 	
FormValueRequired
ÒÒ	 
(
ÒÒ 
$str
ÒÒ +
)
ÒÒ+ ,
]
ÒÒ, -
public
ÚÚ 
async
ÚÚ 
Task
ÚÚ 
<
ÚÚ 
IActionResult
ÚÚ '
>
ÚÚ' ( 
EditAndPublishPOST
ÚÚ) ;
(
ÚÚ; <
string
ÚÚ< B
contentItemId
ÚÚC P
,
ÚÚP Q
[
ÚÚR S
Bind
ÚÚS W
(
ÚÚW X
Prefix
ÚÚX ^
=
ÚÚ_ `
$str
ÚÚa q
)
ÚÚq r
]
ÚÚr s
string
ÚÚt z
submitPublishÚÚ{ à
,ÚÚà â
stringÚÚä ê
	returnUrlÚÚë ö
)ÚÚö õ
{
ÛÛ 	
var
ÙÙ 
stayOnSamePage
ÙÙ 
=
ÙÙ  
submitPublish
ÙÙ! .
==
ÙÙ/ 1
$str
ÙÙ2 M
;
ÙÙM N
var
ˆˆ 
content
ˆˆ 
=
ˆˆ 
await
ˆˆ 
_contentManager
ˆˆ  /
.
ˆˆ/ 0
GetAsync
ˆˆ0 8
(
ˆˆ8 9
contentItemId
ˆˆ9 F
,
ˆˆF G
VersionOptions
ˆˆH V
.
ˆˆV W
Latest
ˆˆW ]
)
ˆˆ] ^
;
ˆˆ^ _
if
¯¯ 
(
¯¯ 
content
¯¯ 
==
¯¯ 
null
¯¯ 
)
¯¯  
{
˘˘ 
return
˙˙ 
NotFound
˙˙ 
(
˙˙  
)
˙˙  !
;
˙˙! "
}
˚˚ 
if
˝˝ 
(
˝˝ 
!
˝˝ 
await
˝˝ #
_authorizationService
˝˝ ,
.
˝˝, -
AuthorizeAsync
˝˝- ;
(
˝˝; <
User
˝˝< @
,
˝˝@ A
CommonPermissions
˝˝B S
.
˝˝S T
PublishContent
˝˝T b
,
˝˝b c
content
˝˝d k
)
˝˝k l
)
˝˝l m
{
˛˛ 
return
ˇˇ 
Forbid
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ  
}
ÄÄ 
return
ÅÅ 
await
ÅÅ 
EditPOST
ÅÅ !
(
ÅÅ! "
contentItemId
ÅÅ" /
,
ÅÅ/ 0
	returnUrl
ÅÅ1 :
,
ÅÅ: ;
stayOnSamePage
ÅÅ< J
,
ÅÅJ K
async
ÅÅL Q
contentItem
ÅÅR ]
=>
ÅÅ^ `
{
ÇÇ 
await
ÉÉ 
_contentManager
ÉÉ %
.
ÉÉ% &
PublishAsync
ÉÉ& 2
(
ÉÉ2 3
contentItem
ÉÉ3 >
)
ÉÉ> ?
;
ÉÉ? @
var
ÖÖ 
typeDefinition
ÖÖ "
=
ÖÖ# $'
_contentDefinitionManager
ÖÖ% >
.
ÖÖ> ?
GetTypeDefinition
ÖÖ? P
(
ÖÖP Q
contentItem
ÖÖQ \
.
ÖÖ\ ]
ContentType
ÖÖ] h
)
ÖÖh i
;
ÖÖi j
	_notifier
áá 
.
áá 
Success
áá !
(
áá! "
string
áá" (
.
áá( ) 
IsNullOrWhiteSpace
áá) ;
(
áá; <
typeDefinition
áá< J
.
ááJ K
DisplayName
ááK V
)
ááV W
?
àà 
H
àà 
[
àà 
$str
àà :
]
àà: ;
:
ââ 
H
ââ 
[
ââ 
$str
ââ 6
,
ââ6 7
typeDefinition
ââ8 F
.
ââF G
DisplayName
ââG R
]
ââR S
)
ââS T
;
ââT U
}
ää 
)
ää 
;
ää 
}
ãã 	
private
çç 
async
çç 
Task
çç 
<
çç 
IActionResult
çç (
>
çç( )
EditPOST
çç* 2
(
çç2 3
string
çç3 9
contentItemId
çç: G
,
ççG H
string
ççI O
	returnUrl
ççP Y
,
ççY Z
bool
çç[ _
stayOnSamePage
çç` n
,
ççn o
Func
ççp t
<
ççt u
ContentItemççu Ä
,ççÄ Å
TaskççÇ Ü
>ççÜ á$
conditionallyPublishççà ú
)ççú ù
{
éé 	
var
èè 
contentItem
èè 
=
èè 
await
èè #
_contentManager
èè$ 3
.
èè3 4
GetAsync
èè4 <
(
èè< =
contentItemId
èè= J
,
èèJ K
VersionOptions
èèL Z
.
èèZ [
DraftRequired
èè[ h
)
èèh i
;
èèi j
if
ëë 
(
ëë 
contentItem
ëë 
==
ëë 
null
ëë #
)
ëë# $
{
íí 
return
ìì 
NotFound
ìì 
(
ìì  
)
ìì  !
;
ìì! "
}
îî 
if
ññ 
(
ññ 
!
ññ 
await
ññ #
_authorizationService
ññ ,
.
ññ, -
AuthorizeAsync
ññ- ;
(
ññ; <
User
ññ< @
,
ññ@ A
CommonPermissions
ññB S
.
ññS T
EditContent
ññT _
,
ññ_ `
contentItem
ñña l
)
ññl m
)
ññm n
{
óó 
return
òò 
Forbid
òò 
(
òò 
)
òò 
;
òò  
}
ôô 
var
õõ 
model
õõ 
=
õõ 
await
õõ (
_contentItemDisplayManager
õõ 8
.
õõ8 9
UpdateEditorAsync
õõ9 J
(
õõJ K
contentItem
õõK V
,
õõV W"
_updateModelAccessor
õõX l
.
õõl m
ModelUpdater
õõm y
,
õõy z
falseõõ{ Ä
)õõÄ Å
;õõÅ Ç
if
ùù 
(
ùù 
!
ùù 

ModelState
ùù 
.
ùù 
IsValid
ùù #
)
ùù# $
{
ûû 
_session
üü 
.
üü 
Cancel
üü 
(
üü  
)
üü  !
;
üü! "
return
†† 
View
†† 
(
†† 
$str
†† "
,
††" #
model
††$ )
)
††) *
;
††* +
}
°° 
await
££ "
conditionallyPublish
££ &
(
££& '
contentItem
££' 2
)
££2 3
;
££3 4
if
•• 
(
•• 
	returnUrl
•• 
==
•• 
null
•• !
)
••! "
{
¶¶ 
return
ßß 
RedirectToAction
ßß '
(
ßß' (
$str
ßß( .
,
ßß. /
new
ßß0 3"
RouteValueDictionary
ßß4 H
{
ßßI J
{
ßßK L
$str
ßßM \
,
ßß\ ]
contentItem
ßß^ i
.
ßßi j
ContentItemId
ßßj w
}
ßßx y
}
ßßz {
)
ßß{ |
;
ßß| }
}
®® 
else
©© 
if
©© 
(
©© 
stayOnSamePage
©© #
)
©©# $
{
™™ 
return
´´ 
RedirectToAction
´´ '
(
´´' (
$str
´´( .
,
´´. /
new
´´0 3"
RouteValueDictionary
´´4 H
{
´´I J
{
´´K L
$str
´´M \
,
´´\ ]
contentItem
´´^ i
.
´´i j
ContentItemId
´´j w
}
´´x y
,
´´y z
{
´´{ |
$str´´} à
,´´à â
	returnUrl´´ä ì
}´´î ï
}´´ñ ó
)´´ó ò
;´´ò ô
}
¨¨ 
else
≠≠ 
{
ÆÆ 
return
ØØ 
LocalRedirect
ØØ $
(
ØØ$ %
	returnUrl
ØØ% .
)
ØØ. /
;
ØØ/ 0
}
∞∞ 
}
±± 	
[
≥≥ 	
HttpPost
≥≥	 
]
≥≥ 
public
¥¥ 
async
¥¥ 
Task
¥¥ 
<
¥¥ 
IActionResult
¥¥ '
>
¥¥' (
Clone
¥¥) .
(
¥¥. /
string
¥¥/ 5
contentItemId
¥¥6 C
,
¥¥C D
string
¥¥E K
	returnUrl
¥¥L U
)
¥¥U V
{
µµ 	
var
∂∂ 
contentItem
∂∂ 
=
∂∂ 
await
∂∂ #
_contentManager
∂∂$ 3
.
∂∂3 4
GetAsync
∂∂4 <
(
∂∂< =
contentItemId
∂∂= J
,
∂∂J K
VersionOptions
∂∂L Z
.
∂∂Z [
Latest
∂∂[ a
)
∂∂a b
;
∂∂b c
if
∏∏ 
(
∏∏ 
contentItem
∏∏ 
==
∏∏ 
null
∏∏ #
)
∏∏# $
{
ππ 
return
∫∫ 
NotFound
∫∫ 
(
∫∫  
)
∫∫  !
;
∫∫! "
}
ªª 
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
await
ΩΩ #
_authorizationService
ΩΩ ,
.
ΩΩ, -
AuthorizeAsync
ΩΩ- ;
(
ΩΩ; <
User
ΩΩ< @
,
ΩΩ@ A
CommonPermissions
ΩΩB S
.
ΩΩS T
CloneContent
ΩΩT `
,
ΩΩ` a
contentItem
ΩΩb m
)
ΩΩm n
)
ΩΩn o
{
ææ 
return
øø 
Forbid
øø 
(
øø 
)
øø 
;
øø  
}
¿¿ 
try
¬¬ 
{
√√ 
await
ƒƒ 
_contentManager
ƒƒ %
.
ƒƒ% &

CloneAsync
ƒƒ& 0
(
ƒƒ0 1
contentItem
ƒƒ1 <
)
ƒƒ< =
;
ƒƒ= >
}
≈≈ 
catch
∆∆ 
(
∆∆ '
InvalidOperationException
∆∆ ,
)
∆∆, -
{
«« 
	_notifier
»» 
.
»» 
Warning
»» !
(
»»! "
H
»»" #
[
»»# $
$str
»»$ G
]
»»G H
)
»»H I
;
»»I J
return
…… 
Url
…… 
.
…… 

IsLocalUrl
…… %
(
……% &
	returnUrl
……& /
)
……/ 0
?
……1 2
(
……3 4
IActionResult
……4 A
)
……A B
LocalRedirect
……B O
(
……O P
	returnUrl
……P Y
)
……Y Z
:
……[ \
RedirectToAction
……] m
(
……m n
$str
……n t
)
……t u
;
……u v
}
   
	_notifier
ÃÃ 
.
ÃÃ 
Information
ÃÃ !
(
ÃÃ! "
H
ÃÃ" #
[
ÃÃ# $
$str
ÃÃ$ Z
]
ÃÃZ [
)
ÃÃ[ \
;
ÃÃ\ ]
return
ŒŒ 
Url
ŒŒ 
.
ŒŒ 

IsLocalUrl
ŒŒ !
(
ŒŒ! "
	returnUrl
ŒŒ" +
)
ŒŒ+ ,
?
ŒŒ- .
(
ŒŒ/ 0
IActionResult
ŒŒ0 =
)
ŒŒ= >
LocalRedirect
ŒŒ> K
(
ŒŒK L
	returnUrl
ŒŒL U
)
ŒŒU V
:
ŒŒW X
RedirectToAction
ŒŒY i
(
ŒŒi j
$str
ŒŒj p
)
ŒŒp q
;
ŒŒq r
}
œœ 	
[
—— 	
HttpPost
——	 
]
—— 
public
““ 
async
““ 
Task
““ 
<
““ 
IActionResult
““ '
>
““' (
DiscardDraft
““) 5
(
““5 6
string
““6 <
contentItemId
““= J
,
““J K
string
““L R
	returnUrl
““S \
)
““\ ]
{
”” 	
var
‘‘ 
contentItem
‘‘ 
=
‘‘ 
await
‘‘ #
_contentManager
‘‘$ 3
.
‘‘3 4
GetAsync
‘‘4 <
(
‘‘< =
contentItemId
‘‘= J
,
‘‘J K
VersionOptions
‘‘L Z
.
‘‘Z [
Latest
‘‘[ a
)
‘‘a b
;
‘‘b c
if
÷÷ 
(
÷÷ 
contentItem
÷÷ 
==
÷÷ 
null
÷÷ #
||
÷÷$ &
contentItem
÷÷' 2
.
÷÷2 3
	Published
÷÷3 <
)
÷÷< =
{
◊◊ 
return
ÿÿ 
NotFound
ÿÿ 
(
ÿÿ  
)
ÿÿ  !
;
ÿÿ! "
}
ŸŸ 
if
€€ 
(
€€ 
!
€€ 
await
€€ #
_authorizationService
€€ ,
.
€€, -
AuthorizeAsync
€€- ;
(
€€; <
User
€€< @
,
€€@ A
CommonPermissions
€€B S
.
€€S T
DeleteContent
€€T a
,
€€a b
contentItem
€€c n
)
€€n o
)
€€o p
{
‹‹ 
return
›› 
Forbid
›› 
(
›› 
)
›› 
;
››  
}
ﬁﬁ 
if
‡‡ 
(
‡‡ 
contentItem
‡‡ 
!=
‡‡ 
null
‡‡ #
)
‡‡# $
{
·· 
var
‚‚ 
typeDefinition
‚‚ "
=
‚‚# $'
_contentDefinitionManager
‚‚% >
.
‚‚> ?
GetTypeDefinition
‚‚? P
(
‚‚P Q
contentItem
‚‚Q \
.
‚‚\ ]
ContentType
‚‚] h
)
‚‚h i
;
‚‚i j
await
‰‰ 
_contentManager
‰‰ %
.
‰‰% &
DiscardDraftAsync
‰‰& 7
(
‰‰7 8
contentItem
‰‰8 C
)
‰‰C D
;
‰‰D E
	_notifier
ÊÊ 
.
ÊÊ 
Success
ÊÊ !
(
ÊÊ! "
string
ÊÊ" (
.
ÊÊ( ) 
IsNullOrWhiteSpace
ÊÊ) ;
(
ÊÊ; <
typeDefinition
ÊÊ< J
.
ÊÊJ K
DisplayName
ÊÊK V
)
ÊÊV W
?
ÁÁ 
H
ÁÁ 
[
ÁÁ 
$str
ÁÁ 5
]
ÁÁ5 6
:
ËË 
H
ËË 
[
ËË 
$str
ËË 9
,
ËË9 :
typeDefinition
ËË; I
.
ËËI J
DisplayName
ËËJ U
]
ËËU V
)
ËËV W
;
ËËW X
}
ÈÈ 
return
ÎÎ 
Url
ÎÎ 
.
ÎÎ 

IsLocalUrl
ÎÎ !
(
ÎÎ! "
	returnUrl
ÎÎ" +
)
ÎÎ+ ,
?
ÎÎ- .
(
ÎÎ/ 0
IActionResult
ÎÎ0 =
)
ÎÎ= >
LocalRedirect
ÎÎ> K
(
ÎÎK L
	returnUrl
ÎÎL U
)
ÎÎU V
:
ÎÎW X
RedirectToAction
ÎÎY i
(
ÎÎi j
$str
ÎÎj p
)
ÎÎp q
;
ÎÎq r
}
ÏÏ 	
[
ÓÓ 	
HttpPost
ÓÓ	 
]
ÓÓ 
public
ÔÔ 
async
ÔÔ 
Task
ÔÔ 
<
ÔÔ 
IActionResult
ÔÔ '
>
ÔÔ' (
Remove
ÔÔ) /
(
ÔÔ/ 0
string
ÔÔ0 6
contentItemId
ÔÔ7 D
,
ÔÔD E
string
ÔÔF L
	returnUrl
ÔÔM V
)
ÔÔV W
{
 	
var
ÒÒ 
contentItem
ÒÒ 
=
ÒÒ 
await
ÒÒ #
_contentManager
ÒÒ$ 3
.
ÒÒ3 4
GetAsync
ÒÒ4 <
(
ÒÒ< =
contentItemId
ÒÒ= J
,
ÒÒJ K
VersionOptions
ÒÒL Z
.
ÒÒZ [
Latest
ÒÒ[ a
)
ÒÒa b
;
ÒÒb c
if
ÛÛ 
(
ÛÛ 
!
ÛÛ 
await
ÛÛ #
_authorizationService
ÛÛ ,
.
ÛÛ, -
AuthorizeAsync
ÛÛ- ;
(
ÛÛ; <
User
ÛÛ< @
,
ÛÛ@ A
CommonPermissions
ÛÛB S
.
ÛÛS T
DeleteContent
ÛÛT a
,
ÛÛa b
contentItem
ÛÛc n
)
ÛÛn o
)
ÛÛo p
{
ÙÙ 
return
ıı 
Forbid
ıı 
(
ıı 
)
ıı 
;
ıı  
}
ˆˆ 
if
¯¯ 
(
¯¯ 
contentItem
¯¯ 
!=
¯¯ 
null
¯¯ #
)
¯¯# $
{
˘˘ 
var
˙˙ 
typeDefinition
˙˙ "
=
˙˙# $'
_contentDefinitionManager
˙˙% >
.
˙˙> ?
GetTypeDefinition
˙˙? P
(
˙˙P Q
contentItem
˙˙Q \
.
˙˙\ ]
ContentType
˙˙] h
)
˙˙h i
;
˙˙i j
await
¸¸ 
_contentManager
¸¸ %
.
¸¸% &
RemoveAsync
¸¸& 1
(
¸¸1 2
contentItem
¸¸2 =
)
¸¸= >
;
¸¸> ?
	_notifier
˛˛ 
.
˛˛ 
Success
˛˛ !
(
˛˛! "
string
˛˛" (
.
˛˛( ) 
IsNullOrWhiteSpace
˛˛) ;
(
˛˛; <
typeDefinition
˛˛< J
.
˛˛J K
DisplayName
˛˛K V
)
˛˛V W
?
ˇˇ 
H
ˇˇ 
[
ˇˇ 
$str
ˇˇ 8
]
ˇˇ8 9
:
ÄÄ 
H
ÄÄ 
[
ÄÄ 
$str
ÄÄ 4
,
ÄÄ4 5
typeDefinition
ÄÄ6 D
.
ÄÄD E
DisplayName
ÄÄE P
]
ÄÄP Q
)
ÄÄQ R
;
ÄÄR S
}
ÅÅ 
return
ÉÉ 
Url
ÉÉ 
.
ÉÉ 

IsLocalUrl
ÉÉ !
(
ÉÉ! "
	returnUrl
ÉÉ" +
)
ÉÉ+ ,
?
ÉÉ- .
(
ÉÉ/ 0
IActionResult
ÉÉ0 =
)
ÉÉ= >
LocalRedirect
ÉÉ> K
(
ÉÉK L
	returnUrl
ÉÉL U
)
ÉÉU V
:
ÉÉW X
RedirectToAction
ÉÉY i
(
ÉÉi j
$str
ÉÉj p
)
ÉÉp q
;
ÉÉq r
}
ÑÑ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
]
ÜÜ 
public
áá 
async
áá 
Task
áá 
<
áá 
IActionResult
áá '
>
áá' (
Publish
áá) 0
(
áá0 1
string
áá1 7
contentItemId
áá8 E
,
ááE F
string
ááG M
	returnUrl
ááN W
)
ááW X
{
àà 	
var
ââ 
contentItem
ââ 
=
ââ 
await
ââ #
_contentManager
ââ$ 3
.
ââ3 4
GetAsync
ââ4 <
(
ââ< =
contentItemId
ââ= J
,
ââJ K
VersionOptions
ââL Z
.
ââZ [
Latest
ââ[ a
)
ââa b
;
ââb c
if
ää 
(
ää 
contentItem
ää 
==
ää 
null
ää #
)
ää# $
{
ãã 
return
åå 
NotFound
åå 
(
åå  
)
åå  !
;
åå! "
}
çç 
if
èè 
(
èè 
!
èè 
await
èè #
_authorizationService
èè ,
.
èè, -
AuthorizeAsync
èè- ;
(
èè; <
User
èè< @
,
èè@ A
CommonPermissions
èèB S
.
èèS T
PublishContent
èèT b
,
èèb c
contentItem
èèd o
)
èèo p
)
èèp q
{
êê 
return
ëë 
Forbid
ëë 
(
ëë 
)
ëë 
;
ëë  
}
íí 
await
îî 
_contentManager
îî !
.
îî! "
PublishAsync
îî" .
(
îî. /
contentItem
îî/ :
)
îî: ;
;
îî; <
var
ññ 
typeDefinition
ññ 
=
ññ  '
_contentDefinitionManager
ññ! :
.
ññ: ;
GetTypeDefinition
ññ; L
(
ññL M
contentItem
ññM X
.
ññX Y
ContentType
ññY d
)
ññd e
;
ññe f
if
òò 
(
òò 
string
òò 
.
òò 
IsNullOrEmpty
òò $
(
òò$ %
typeDefinition
òò% 3
.
òò3 4
DisplayName
òò4 ?
)
òò? @
)
òò@ A
{
ôô 
	_notifier
öö 
.
öö 
Success
öö !
(
öö! "
H
öö" #
[
öö# $
$str
öö$ F
]
ööF G
)
ööG H
;
ööH I
}
õõ 
else
úú 
{
ùù 
	_notifier
ûû 
.
ûû 
Success
ûû !
(
ûû! "
H
ûû" #
[
ûû# $
$str
ûû$ B
,
ûûB C
typeDefinition
ûûD R
.
ûûR S
DisplayName
ûûS ^
]
ûû^ _
)
ûû_ `
;
ûû` a
}
üü 
return
°° 
Url
°° 
.
°° 

IsLocalUrl
°° !
(
°°! "
	returnUrl
°°" +
)
°°+ ,
?
°°- .
(
°°/ 0
IActionResult
°°0 =
)
°°= >
LocalRedirect
°°> K
(
°°K L
	returnUrl
°°L U
)
°°U V
:
°°W X
RedirectToAction
°°Y i
(
°°i j
$str
°°j p
)
°°p q
;
°°q r
}
¢¢ 	
[
§§ 	
HttpPost
§§	 
]
§§ 
public
•• 
async
•• 
Task
•• 
<
•• 
IActionResult
•• '
>
••' (
	Unpublish
••) 2
(
••2 3
string
••3 9
contentItemId
••: G
,
••G H
string
••I O
	returnUrl
••P Y
)
••Y Z
{
¶¶ 	
var
ßß 
contentItem
ßß 
=
ßß 
await
ßß #
_contentManager
ßß$ 3
.
ßß3 4
GetAsync
ßß4 <
(
ßß< =
contentItemId
ßß= J
,
ßßJ K
VersionOptions
ßßL Z
.
ßßZ [
Latest
ßß[ a
)
ßßa b
;
ßßb c
if
®® 
(
®® 
contentItem
®® 
==
®® 
null
®® #
)
®®# $
{
©© 
return
™™ 
NotFound
™™ 
(
™™  
)
™™  !
;
™™! "
}
´´ 
if
≠≠ 
(
≠≠ 
!
≠≠ 
await
≠≠ #
_authorizationService
≠≠ ,
.
≠≠, -
AuthorizeAsync
≠≠- ;
(
≠≠; <
User
≠≠< @
,
≠≠@ A
CommonPermissions
≠≠B S
.
≠≠S T
PublishContent
≠≠T b
,
≠≠b c
contentItem
≠≠d o
)
≠≠o p
)
≠≠p q
{
ÆÆ 
return
ØØ 
Forbid
ØØ 
(
ØØ 
)
ØØ 
;
ØØ  
}
∞∞ 
await
≤≤ 
_contentManager
≤≤ !
.
≤≤! "
UnpublishAsync
≤≤" 0
(
≤≤0 1
contentItem
≤≤1 <
)
≤≤< =
;
≤≤= >
var
¥¥ 
typeDefinition
¥¥ 
=
¥¥  '
_contentDefinitionManager
¥¥! :
.
¥¥: ;
GetTypeDefinition
¥¥; L
(
¥¥L M
contentItem
¥¥M X
.
¥¥X Y
ContentType
¥¥Y d
)
¥¥d e
;
¥¥e f
if
∂∂ 
(
∂∂ 
string
∂∂ 
.
∂∂ 
IsNullOrEmpty
∂∂ $
(
∂∂$ %
typeDefinition
∂∂% 3
.
∂∂3 4
DisplayName
∂∂4 ?
)
∂∂? @
)
∂∂@ A
{
∑∑ 
	_notifier
∏∏ 
.
∏∏ 
Success
∏∏ !
(
∏∏! "
H
∏∏" #
[
∏∏# $
$str
∏∏$ G
]
∏∏G H
)
∏∏H I
;
∏∏I J
}
ππ 
else
∫∫ 
{
ªª 
	_notifier
ºº 
.
ºº 
Success
ºº !
(
ºº! "
H
ºº" #
[
ºº# $
$str
ºº$ C
,
ººC D
typeDefinition
ººE S
.
ººS T
DisplayName
ººT _
]
ºº_ `
)
ºº` a
;
ººa b
}
ΩΩ 
return
øø 
Url
øø 
.
øø 

IsLocalUrl
øø !
(
øø! "
	returnUrl
øø" +
)
øø+ ,
?
øø- .
(
øø/ 0
IActionResult
øø0 =
)
øø= >
LocalRedirect
øø> K
(
øøK L
	returnUrl
øøL U
)
øøU V
:
øøW X
RedirectToAction
øøY i
(
øøi j
$str
øøj p
)
øøp q
;
øøq r
}
¿¿ 	
}
¡¡ 
}¬¬ ıo
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Controllers\ApiController.cs
	namespace 	
OrchardCore
 
. 
Content 
. 
Controllers )
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
$str' ,
), -
,- ."
IgnoreAntiforgeryToken/ E
,E F
AllowAnonymousG U
]U V
public 

class 
ApiController 
:  

Controller! +
{ 
private 
static 
readonly 
JsonMergeSettings  1#
UpdateJsonMergeSettings2 I
=J K
newL O
JsonMergeSettingsP a
{b c
MergeArrayHandlingd v
=w x
MergeArrayHandling	y ã
.
ã å
Replace
å ì
}
î ï
;
ï ñ
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ApiController 
( 
IContentManager 
contentManager *
,* +!
IAuthorizationService ! 
authorizationService" 6
,6 7
IStringLocalizer 
< 
ApiController *
>* +
stringLocalizer, ;
); <
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_contentManager   
=   
contentManager   ,
;  , -
S!! 
=!! 
stringLocalizer!! 
;!!  
}"" 	
[$$ 	
Route$$	 
($$ 
$str$$  
)$$  !
,$$! "
HttpGet$$# *
]$$* +
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
Get%%) ,
(%%, -
string%%- 3
contentItemId%%4 A
)%%A B
{&& 	
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
.''M N
AccessContentApi''N ^
)''^ _
)''_ `
{(( 
return)) 
this)) 
.)) 
ChallengeOrForbid)) -
())- .
$str)). 3
)))3 4
;))4 5
}** 
var,, 
contentItem,, 
=,, 
await,, #
_contentManager,,$ 3
.,,3 4
GetAsync,,4 <
(,,< =
contentItemId,,= J
),,J K
;,,K L
if.. 
(.. 
contentItem.. 
==.. 
null.. #
)..# $
{// 
return00 
NotFound00 
(00  
)00  !
;00! "
}11 
if33 
(33 
!33 
await33 !
_authorizationService33 ,
.33, -
AuthorizeAsync33- ;
(33; <
User33< @
,33@ A
CommonPermissions33B S
.33S T
ViewContent33T _
,33_ `
contentItem33a l
)33l m
)33m n
{44 
return55 
this55 
.55 
ChallengeOrForbid55 -
(55- .
$str55. 3
)553 4
;554 5
}66 
return88 
Ok88 
(88 
contentItem88 !
)88! "
;88" #
}99 	
[;; 	

HttpDelete;;	 
];; 
[<< 	
Route<<	 
(<< 
$str<<  
)<<  !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Delete==) /
(==/ 0
string==0 6
contentItemId==7 D
)==D E
{>> 	
if?? 
(?? 
!?? 
await?? !
_authorizationService?? ,
.??, -
AuthorizeAsync??- ;
(??; <
User??< @
,??@ A
Permissions??B M
.??M N
AccessContentApi??N ^
)??^ _
)??_ `
{@@ 
returnAA 
thisAA 
.AA 
ChallengeOrForbidAA -
(AA- .
$strAA. 3
)AA3 4
;AA4 5
}BB 
varDD 
contentItemDD 
=DD 
awaitDD #
_contentManagerDD$ 3
.DD3 4
GetAsyncDD4 <
(DD< =
contentItemIdDD= J
)DDJ K
;DDK L
ifFF 
(FF 
contentItemFF 
==FF 
nullFF #
)FF# $
{GG 
returnHH 

StatusCodeHH !
(HH! "
$numHH" %
)HH% &
;HH& '
}II 
ifKK 
(KK 
!KK 
awaitKK !
_authorizationServiceKK ,
.KK, -
AuthorizeAsyncKK- ;
(KK; <
UserKK< @
,KK@ A
CommonPermissionsKKB S
.KKS T
DeleteContentKKT a
,KKa b
contentItemKKc n
)KKn o
)KKo p
{LL 
returnMM 
thisMM 
.MM 
ChallengeOrForbidMM -
(MM- .
$strMM. 3
)MM3 4
;MM4 5
}NN 
awaitPP 
_contentManagerPP !
.PP! "
RemoveAsyncPP" -
(PP- .
contentItemPP. 9
)PP9 :
;PP: ;
returnRR 
OkRR 
(RR 
contentItemRR !
)RR! "
;RR" #
}SS 	
[UU 	
HttpPostUU	 
]UU 
publicVV 
asyncVV 
TaskVV 
<VV 
IActionResultVV '
>VV' (
PostVV) -
(VV- .
ContentItemVV. 9
modelVV: ?
,VV? @
boolVVA E
draftVVF K
=VVL M
falseVVN S
)VVS T
{WW 	
ifXX 
(XX 
!XX 
awaitXX !
_authorizationServiceXX ,
.XX, -
AuthorizeAsyncXX- ;
(XX; <
UserXX< @
,XX@ A
PermissionsXXB M
.XXM N
AccessContentApiXXN ^
)XX^ _
)XX_ `
{YY 
returnZZ 
thisZZ 
.ZZ 
ChallengeOrForbidZZ -
(ZZ- .
$strZZ. 3
)ZZ3 4
;ZZ4 5
}[[ 
var`` 
contentItem`` 
=`` 
await`` #
_contentManager``$ 3
.``3 4
GetAsync``4 <
(``< =
model``= B
.``B C
ContentItemId``C P
,``P Q
VersionOptions``R `
.``` a
DraftRequired``a n
)``n o
;``o p
ifbb 
(bb 
contentItembb 
==bb 
nullbb #
)bb# $
{cc 
ifdd 
(dd 
!dd 
awaitdd !
_authorizationServicedd 0
.dd0 1
AuthorizeAsyncdd1 ?
(dd? @
Userdd@ D
,ddD E
CommonPermissionsddF W
.ddW X
PublishContentddX f
)ddf g
)ddg h
{ee 
returnff 
thisff 
.ff  
ChallengeOrForbidff  1
(ff1 2
$strff2 7
)ff7 8
;ff8 9
}gg 
varii 
newContentItemii "
=ii# $
awaitii% *
_contentManagerii+ :
.ii: ;
NewAsyncii; C
(iiC D
modeliiD I
.iiI J
ContentTypeiiJ U
)iiU V
;iiV W
newContentItemjj 
.jj 
Mergejj $
(jj$ %
modeljj% *
)jj* +
;jj+ ,
varll 
resultll 
=ll 
awaitll "
_contentManagerll# 2
.ll2 3(
UpdateValidateAndCreateAsyncll3 O
(llO P
newContentItemllP ^
,ll^ _
VersionOptionsll` n
.lln o
Draftllo t
)llt u
;llu v
ifnn 
(nn 
!nn 
resultnn 
.nn 
	Succeedednn %
)nn% &
{oo 
returnpp 
Problempp "
(pp" #
titleqq 
:qq 
Sqq  
[qq  !
$strqq! J
]qqJ K
,qqK L
detailrr 
:rr 
stringrr  &
.rr& '
Joinrr' +
(rr+ ,
$charrr, /
,rr/ 0
resultrr1 7
.rr7 8
Errorsrr8 >
)rr> ?
,rr? @

statusCodess "
:ss" #
(ss$ %
intss% (
)ss( )
HttpStatusCodess) 7
.ss7 8

BadRequestss8 B
)ssB C
;ssC D
}tt 
elseww 
ifww 
(ww 
!ww 

ModelStateww $
.ww$ %
IsValidww% ,
)ww, -
{xx 
returnyy 
Problemyy "
(yy" #
titlezz 
:zz 
Szz  
[zz  !
$strzz! J
]zzJ K
,zzK L
detail{{ 
:{{ 
String{{  &
.{{& '
Join{{' +
({{+ ,
$str{{, 0
,{{0 1

ModelState{{2 <
.{{< =
Values{{= C
.{{C D

SelectMany{{D N
({{N O
x{{O P
=>{{Q S
x{{T U
.{{U V
Errors{{V \
.{{\ ]
Select{{] c
({{c d
x{{d e
=>{{f h
x{{i j
.{{j k
ErrorMessage{{k w
){{w x
){{x y
){{y z
,{{z {

statusCode|| "
:||" #
(||$ %
int||% (
)||( )
HttpStatusCode||) 7
.||7 8

BadRequest||8 B
)||B C
;||C D
}}} 
contentItem 
= 
newContentItem ,
;, -
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
await
ÉÉ #
_authorizationService
ÉÉ 0
.
ÉÉ0 1
AuthorizeAsync
ÉÉ1 ?
(
ÉÉ? @
User
ÉÉ@ D
,
ÉÉD E
CommonPermissions
ÉÉF W
.
ÉÉW X
EditContent
ÉÉX c
,
ÉÉc d
contentItem
ÉÉe p
)
ÉÉp q
)
ÉÉq r
{
ÑÑ 
return
ÖÖ 
this
ÖÖ 
.
ÖÖ  
ChallengeOrForbid
ÖÖ  1
(
ÖÖ1 2
$str
ÖÖ2 7
)
ÖÖ7 8
;
ÖÖ8 9
}
ÜÜ 
contentItem
àà 
.
àà 
Merge
àà !
(
àà! "
model
àà" '
,
àà' (%
UpdateJsonMergeSettings
àà) @
)
àà@ A
;
ààA B
await
ää 
_contentManager
ää %
.
ää% &
UpdateAsync
ää& 1
(
ää1 2
contentItem
ää2 =
)
ää= >
;
ää> ?
var
ãã 
result
ãã 
=
ãã 
await
ãã "
_contentManager
ãã# 2
.
ãã2 3
ValidateAsync
ãã3 @
(
ãã@ A
contentItem
ããA L
)
ããL M
;
ããM N
if
çç 
(
çç 
!
çç 
result
çç 
.
çç 
	Succeeded
çç %
)
çç% &
{
éé 
return
èè 
Problem
èè "
(
èè" #
title
êê 
:
êê 
S
êê  
[
êê  !
$str
êê! J
]
êêJ K
,
êêK L
detail
ëë 
:
ëë 
string
ëë  &
.
ëë& '
Join
ëë' +
(
ëë+ ,
$char
ëë, /
,
ëë/ 0
result
ëë1 7
.
ëë7 8
Errors
ëë8 >
)
ëë> ?
,
ëë? @

statusCode
íí "
:
íí" #
(
íí$ %
int
íí% (
)
íí( )
HttpStatusCode
íí) 7
.
íí7 8

BadRequest
íí8 B
)
ííB C
;
ííC D
}
ìì 
else
ññ 
if
ññ 
(
ññ 
!
ññ 

ModelState
ññ $
.
ññ$ %
IsValid
ññ% ,
)
ññ, -
{
óó 
return
òò 
Problem
òò "
(
òò" #
title
ôô 
:
ôô 
S
ôô  
[
ôô  !
$str
ôô! J
]
ôôJ K
,
ôôK L
detail
öö 
:
öö 
String
öö  &
.
öö& '
Join
öö' +
(
öö+ ,
$str
öö, 0
,
öö0 1

ModelState
öö2 <
.
öö< =
Values
öö= C
.
ööC D

SelectMany
ööD N
(
ööN O
x
ööO P
=>
ööQ S
x
ööT U
.
ööU V
Errors
ööV \
.
öö\ ]
Select
öö] c
(
ööc d
x
ööd e
=>
ööf h
x
ööi j
.
ööj k
ErrorMessage
öök w
)
ööw x
)
ööx y
)
ööy z
,
ööz {

statusCode
õõ "
:
õõ" #
(
õõ$ %
int
õõ% (
)
õõ( )
HttpStatusCode
õõ) 7
.
õõ7 8

BadRequest
õõ8 B
)
õõB C
;
õõC D
}
úú 
}
ùù 
if
üü 
(
üü 
!
üü 
draft
üü 
)
üü 
{
†† 
await
°° 
_contentManager
°° %
.
°°% &
PublishAsync
°°& 2
(
°°2 3
contentItem
°°3 >
)
°°> ?
;
°°? @
}
¢¢ 
else
££ 
{
§§ 
await
•• 
_contentManager
•• %
.
••% &
SaveDraftAsync
••& 4
(
••4 5
contentItem
••5 @
)
••@ A
;
••A B
}
¶¶ 
return
®® 
Ok
®® 
(
®® 
contentItem
®® !
)
®®! "
;
®®" #
}
©© 	
}
™™ 
}´´ ª*
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Controllers\ItemController.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
Controllers		 *
{

 
public 

class 
ItemController 
:  !

Controller" ,
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
ItemController 
( 
IContentManager 
contentManager *
,* +&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A!
IAuthorizationService ! 
authorizationService" 6
,6 7 
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9&
_contentItemDisplayManager &
=' (%
contentItemDisplayManager) B
;B C
_contentManager 
= 
contentManager ,
;, - 
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Display) 0
(0 1
string1 7
contentItemId8 E
,E F
stringG M
jsonPathN V
)V W
{ 	
var   
contentItem   
=   
await   #
_contentManager  $ 3
.  3 4
GetAsync  4 <
(  < =
contentItemId  = J
,  J K
jsonPath  L T
)  T U
;  U V
if"" 
("" 
contentItem"" 
=="" 
null"" #
)""# $
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
,''@ A
CommonPermissions''B S
.''S T
ViewContent''T _
,''_ `
contentItem''a l
)''l m
)''m n
{(( 
return)) 
this)) 
.)) 
ChallengeOrForbid)) -
())- .
))). /
;))/ 0
}** 
var,, 
model,, 
=,, 
await,, &
_contentItemDisplayManager,, 8
.,,8 9
BuildDisplayAsync,,9 J
(,,J K
contentItem,,K V
,,,V W 
_updateModelAccessor,,X l
.,,l m
ModelUpdater,,m y
),,y z
;,,z {
return.. 
View.. 
(.. 
model.. 
).. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Preview11) 0
(110 1
string111 7
contentItemId118 E
)11E F
{22 	
if33 
(33 
contentItemId33 
==33  
null33! %
)33% &
{44 
return55 
NotFound55 
(55  
)55  !
;55! "
}66 
var88 
versionOptions88 
=88  
VersionOptions88! /
.88/ 0
Latest880 6
;886 7
var:: 
contentItem:: 
=:: 
await:: #
_contentManager::$ 3
.::3 4
GetAsync::4 <
(::< =
contentItemId::= J
,::J K
versionOptions::L Z
)::Z [
;::[ \
if<< 
(<< 
contentItem<< 
==<< 
null<< #
)<<# $
{== 
return>> 
NotFound>> 
(>>  
)>>  !
;>>! "
}?? 
ifAA 
(AA 
!AA 
awaitAA !
_authorizationServiceAA ,
.AA, -
AuthorizeAsyncAA- ;
(AA; <
UserAA< @
,AA@ A
CommonPermissionsAAB S
.AAS T
PreviewContentAAT b
,AAb c
contentItemAAd o
)AAo p
)AAp q
{BB 
returnCC 
thisCC 
.CC 
ChallengeOrForbidCC -
(CC- .
)CC. /
;CC/ 0
}DD 
varFF 
modelFF 
=FF 
awaitFF &
_contentItemDisplayManagerFF 8
.FF8 9
BuildDisplayAsyncFF9 J
(FFJ K
contentItemFFK V
,FFV W 
_updateModelAccessorFFX l
.FFl m
ModelUpdaterFFm y
)FFy z
;FFz {
returnHH 
ViewHH 
(HH 
modelHH 
)HH 
;HH 
}II 	
}JJ 
}KK Ö
∑D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\AddToDeploymentPlanContentDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
public		 

class		 ,
 AddToDeploymentPlanContentDriver		 1
:		2 3 
ContentDisplayDriver		4 H
{

 
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
public ,
 AddToDeploymentPlanContentDriver /
(/ 0"
IDeploymentPlanService0 F!
deploymentPlanServiceG \
)\ ]
{ 	"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ContentItem/ :
model; @
)@ A
{ 	
return 
Combine 
( 
Dynamic 
( 
$str M
)M N
. 
Location !
(! "
$str" 0
,0 1
$str2 B
)B C
. 

RenderWhen #
(# $
async$ )
(* +
)+ ,
=>- /
await0 5"
_deploymentPlanService6 L
.L M(
DoesUserHavePermissionsAsyncM i
(i j
)j k
)k l
,l m
Shape 
( 
$str M
,M N
newO R 
ContentItemViewModelS g
(g h
modelh m
)m n
)n o
. 
Location !
(! "
$str" 0
,0 1
$str2 B
)B C
. 

RenderWhen #
(# $
async$ )
(* +
)+ ,
=>- /
await0 5"
_deploymentPlanService6 L
.L M(
DoesUserHavePermissionsAsyncM i
(i j
)j k
)k l
) 
; 
} 	
} 
} Ü
»D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\AddToDeploymentPlanContentsAdminListDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
public		 

class		 =
1AddToDeploymentPlanContentsAdminListDisplayDriver		 B
:		C D
DisplayDriver		E R
<		R S#
ContentOptionsViewModel		S j
>		j k
{

 
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
public =
1AddToDeploymentPlanContentsAdminListDisplayDriver @
(@ A"
IDeploymentPlanServiceA W!
deploymentPlanServiceX m
)m n
{ 	"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
DisplayAsync3 ?
(? @#
ContentOptionsViewModel@ W
modelX ]
,] ^
BuildDisplayContext_ r
contexts z
)z {
{ 	
if 
( 
await "
_deploymentPlanService ,
., -(
DoesUserHavePermissionsAsync- I
(I J
)J K
)K L
{ 
return 
Combine 
( 
Dynamic 
( 
$str N
)N O
.O P
LocationP X
(X Y
$strY f
,f g
$strh t
)t u
,u v
Dynamic 
( 
$str Z
)Z [
.[ \
Location\ d
(d e
$stre r
,r s
$str	t Ä
)
Ä Å
) 
; 
} 
return 
null 
; 
} 	
} 
} ÛW
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\AddToDeploymentPlanController.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
[ 
Feature 
( 
$str B
)B C
]C D
[ 
Admin 

]
 
public 

class )
AddToDeploymentPlanController .
:/ 0

Controller1 ;
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IEnumerable $
<$ %"
IDeploymentStepFactory% ;
>; <

_factories= G
;G H
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public )
AddToDeploymentPlanController ,
(, -!
IAuthorizationService ! 
authorizationService" 6
,6 7
IContentManager 
contentManager *
,* +
ISession   
session   
,   
IEnumerable!! 
<!! "
IDeploymentStepFactory!! .
>!!. /
	factories!!0 9
,!!9 :
	INotifier"" 
notifier"" 
,"" 
IHtmlLocalizer## 
<## )
AddToDeploymentPlanController## 8
>##8 9
htmlLocalizer##: G
)$$ 
{%% 	!
_authorizationService&& !
=&&" # 
authorizationService&&$ 8
;&&8 9
_contentManager'' 
='' 
contentManager'' ,
;'', -
_session(( 
=(( 
session(( 
;(( 

_factories)) 
=)) 
	factories)) "
;))" #
	_notifier** 
=** 
notifier**  
;**  !
H++ 
=++ 
htmlLocalizer++ 
;++ 
},, 	
[.. 	
HttpPost..	 
].. 
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
AddContentItem//) 7
(//7 8
int//8 ;
deploymentPlanId//< L
,//L M
string//N T
	returnUrl//U ^
,//^ _
string//` f
contentItemId//g t
)//t u
{00 	
if11 
(11 
!11 
(11 
await11 !
_authorizationService11 -
.11- .
AuthorizeAsync11. <
(11< =
User11= A
,11A B
OrchardCore11C N
.11N O

Deployment11O Y
.11Y Z
CommonPermissions11Z k
.11k l!
ManageDeploymentPlan	11l Ä
)
11Ä Å
&&
11Ç Ñ
await22 !
_authorizationService22 +
.22+ ,
AuthorizeAsync22, :
(22: ;
User22; ?
,22? @
OrchardCore22A L
.22L M

Deployment22M W
.22W X
CommonPermissions22X i
.22i j
Export22j p
)22p q
)33 
)33 
{44 
return55 
Forbid55 
(55 
)55 
;55  
}66 
var88 
deploymentPlan88 
=88  
await88! &
_session88' /
.88/ 0
GetAsync880 8
<888 9
DeploymentPlan889 G
>88G H
(88H I
deploymentPlanId88I Y
)88Y Z
;88Z [
if:: 
(:: 
deploymentPlan:: 
==:: !
null::" &
)::& '
{;; 
return<< 
NotFound<< 
(<<  
)<<  !
;<<! "
}== 
var?? 
contentItem?? 
=?? 
await?? #
_contentManager??$ 3
.??3 4
GetAsync??4 <
(??< =
contentItemId??= J
)??J K
;??K L
ifAA 
(AA 
contentItemAA 
==AA 
nullAA #
)AA# $
{BB 
returnCC 
NotFoundCC 
(CC  
)CC  !
;CC! "
}DD 
ifHH 
(HH 
!HH 
awaitHH !
_authorizationServiceHH ,
.HH, -
AuthorizeAsyncHH- ;
(HH; <
UserHH< @
,HH@ A
CommonPermissionsHHB S
.HHS T
EditContentHHT _
,HH_ `
contentItemHHa l
)HHl m
)HHm n
{II 
returnJJ 
ForbidJJ 
(JJ 
)JJ 
;JJ  
}KK 
varMM 
stepMM 
=MM 
(MM %
ContentItemDeploymentStepMM 1
)MM1 2

_factoriesMM2 <
.MM< =
FirstOrDefaultMM= K
(MMK L
xMML M
=>MMN P
xMMQ R
.MMR S
NameMMS W
==MMX Z
nameofMM[ a
(MMa b%
ContentItemDeploymentStepMMb {
)MM{ |
)MM| }
.MM} ~
Create	MM~ Ñ
(
MMÑ Ö
)
MMÖ Ü
;
MMÜ á
stepNN 
.NN 
ContentItemIdNN 
=NN  
contentItemNN! ,
.NN, -
ContentItemIdNN- :
;NN: ;
deploymentPlanPP 
.PP 
DeploymentStepsPP *
.PP* +
AddPP+ .
(PP. /
stepPP/ 3
)PP3 4
;PP4 5
	_notifierRR 
.RR 
SuccessRR 
(RR 
HRR 
[RR  
$strRR  T
]RRT U
)RRU V
;RRV W
_sessionTT 
.TT 
SaveTT 
(TT 
deploymentPlanTT (
)TT( )
;TT) *
returnVV 
LocalRedirectVV  
(VV  !
	returnUrlVV! *
)VV* +
;VV+ ,
}WW 	
[YY 	
HttpPostYY	 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
AddContentItemsZZ) 8
(ZZ8 9
intZZ9 <
deploymentPlanIdZZ= M
,ZZM N
stringZZO U
	returnUrlZZV _
,ZZ_ `
IEnumerableZZa l
<ZZl m
intZZm p
>ZZp q
itemIdsZZr y
)ZZy z
{[[ 	
if\\ 
(\\ 
itemIds\\ 
?\\ 
.\\ 
Count\\ 
(\\ 
)\\  
==\\! #
$num\\$ %
)\\% &
{]] 
return^^ 
LocalRedirect^^ $
(^^$ %
	returnUrl^^% .
)^^. /
;^^/ 0
}__ 
ifaa 
(aa 
!aa 
(aa 
awaitaa !
_authorizationServiceaa -
.aa- .
AuthorizeAsyncaa. <
(aa< =
Useraa= A
,aaA B
OrchardCoreaaC N
.aaN O

DeploymentaaO Y
.aaY Z
CommonPermissionsaaZ k
.aak l!
ManageDeploymentPlan	aal Ä
)
aaÄ Å
&&
aaÇ Ñ
awaitbb !
_authorizationServicebb +
.bb+ ,
AuthorizeAsyncbb, :
(bb: ;
Userbb; ?
,bb? @
OrchardCorebbA L
.bbL M

DeploymentbbM W
.bbW X
CommonPermissionsbbX i
.bbi j
Exportbbj p
)bbp q
)cc 
)cc 
{dd 
returnee 
Forbidee 
(ee 
)ee 
;ee  
}ff 
varhh 
deploymentPlanhh 
=hh  
awaithh! &
_sessionhh' /
.hh/ 0
GetAsynchh0 8
<hh8 9
DeploymentPlanhh9 G
>hhG H
(hhH I
deploymentPlanIdhhI Y
)hhY Z
;hhZ [
ifjj 
(jj 
deploymentPlanjj 
==jj !
nulljj" &
)jj& '
{kk 
returnll 
NotFoundll 
(ll  
)ll  !
;ll! "
}mm 
varoo 
contentItemsoo 
=oo 
awaitoo $
_sessionoo% -
.oo- .
Queryoo. 3
<oo3 4
ContentItemoo4 ?
,oo? @
ContentItemIndexooA Q
>ooQ R
(ooR S
)ooS T
.ooT U
WhereooU Z
(ooZ [
xoo[ \
=>oo] _
xoo` a
.ooa b

DocumentIdoob l
.ool m
IsInoom q
(ooq r
itemIdsoor y
)ooy z
&&oo{ }
xoo~ 
.	oo Ä
	Published
ooÄ â
)
ooâ ä
.
ooä ã
	ListAsync
ooã î
(
ooî ï
)
ooï ñ
;
ooñ ó
foreachqq 
(qq 
varqq 
itemqq 
inqq  
contentItemsqq! -
)qq- .
{rr 
ifuu 
(uu 
!uu 
awaituu !
_authorizationServiceuu 0
.uu0 1
AuthorizeAsyncuu1 ?
(uu? @
Useruu@ D
,uuD E
CommonPermissionsuuF W
.uuW X
EditContentuuX c
,uuc d
itemuue i
)uui j
)uuj k
{vv 
	_notifierww 
.ww 
Warningww %
(ww% &
Hww& '
[ww' (
$strww( [
]ww[ \
)ww\ ]
;ww] ^
returnyy 
Forbidyy !
(yy! "
)yy" #
;yy# $
}zz 
var{{ 
step{{ 
={{ 
({{ %
ContentItemDeploymentStep{{ 5
){{5 6

_factories{{6 @
.{{@ A
FirstOrDefault{{A O
({{O P
x{{P Q
=>{{R T
x{{U V
.{{V W
Name{{W [
=={{\ ^
nameof{{_ e
({{e f%
ContentItemDeploymentStep{{f 
)	{{ Ä
)
{{Ä Å
.
{{Å Ç
Create
{{Ç à
(
{{à â
)
{{â ä
;
{{ä ã
step|| 
.|| 
ContentItemId|| "
=||# $
item||% )
.||) *
ContentItemId||* 7
;||7 8
deploymentPlan~~ 
.~~ 
DeploymentSteps~~ .
.~~. /
Add~~/ 2
(~~2 3
step~~3 7
)~~7 8
;~~8 9
} 
	_notifier
ÅÅ 
.
ÅÅ 
Success
ÅÅ 
(
ÅÅ 
H
ÅÅ 
[
ÅÅ  
$str
ÅÅ  T
]
ÅÅT U
)
ÅÅU V
;
ÅÅV W
_session
ÉÉ 
.
ÉÉ 
Save
ÉÉ 
(
ÉÉ 
deploymentPlan
ÉÉ (
)
ÉÉ( )
;
ÉÉ) *
return
ÖÖ 
LocalRedirect
ÖÖ  
(
ÖÖ  !
	returnUrl
ÖÖ! *
)
ÖÖ* +
;
ÖÖ+ ,
}
ÜÜ 	
}
áá 
}àà Ø%
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\AddToDeploymentPlanStartup.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
[ 
Feature 
( 
$str B
)B C
]C D
public 

class &
AddToDeploymentPlanStartup +
:, -
StartupBase. 9
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public &
AddToDeploymentPlanStartup )
() *
IOptions* 2
<2 3
AdminOptions3 ?
>? @
adminOptionsA M
)M N
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddTransient !
<! "
IDeploymentSource" 3
,3 4'
ContentItemDeploymentSource5 P
>P Q
(Q R
)R S
;S T
services 
. 
AddSingleton !
<! ""
IDeploymentStepFactory" 8
>8 9
(9 :
new: =!
DeploymentStepFactory> S
<S T%
ContentItemDeploymentStepT m
>m n
(n o
)o p
)p q
;q r
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
DeploymentStep. <
>< =
,= >+
ContentItemDeploymentStepDriver? ^
>^ _
(_ `
)` a
;a b
services 
. 
	AddScoped 
< !
IContentDisplayDriver 4
,4 5,
 AddToDeploymentPlanContentDriver6 V
>V W
(W X
)X Y
;Y Z
services   
.   
	AddScoped   
<   
IDisplayDriver   -
<  - .#
ContentOptionsViewModel  . E
>  E F
,  F G=
1AddToDeploymentPlanContentsAdminListDisplayDriver  H y
>  y z
(  z {
)  { |
;  | }
}!! 	
public## 
override## 
void## 
	Configure## &
(##& '
IApplicationBuilder##' :
app##; >
,##> ?!
IEndpointRouteBuilder##@ U
routes##V \
,##\ ]
IServiceProvider##^ n
serviceProvider##o ~
)##~ 
{$$ 	
var%% -
!addToDeploymentPlanControllerName%% 1
=%%2 3
typeof%%4 :
(%%: ;)
AddToDeploymentPlanController%%; X
)%%X Y
.%%Y Z
ControllerName%%Z h
(%%h i
)%%i j
;%%j k
routes'' 
.'' "
MapAreaControllerRoute'' )
('') *
name(( 
:(( 
$str(( *
,((* +
areaName)) 
:)) 
$str)) /
,))/ 0
pattern** 
:** 
_adminOptions** %
.**% &
AdminUrlPrefix**& 4
+**5 6
$str**7 o
,**o p
defaults++ 
:++ 
new++ 
{++ 

controller++ )
=++* +-
!addToDeploymentPlanControllerName++, M
,++M N
action++O U
=++V W
nameof++X ^
(++^ _)
AddToDeploymentPlanController++_ |
.++| }
AddContentItem	++} ã
)
++ã å
}
++ç é
),, 
;,, 
routes.. 
... "
MapAreaControllerRoute.. )
(..) *
name// 
:// 
$str// *
,//* +
areaName00 
:00 
$str00 /
,00/ 0
pattern11 
:11 
_adminOptions11 %
.11% &
AdminUrlPrefix11& 4
+115 6
$str117 p
,11p q
defaults22 
:22 
new22 
{22 

controller22 )
=22* +-
!addToDeploymentPlanControllerName22, M
,22M N
action22O U
=22V W
nameof22X ^
(22^ _)
AddToDeploymentPlanController22_ |
.22| }
AddContentItems	22} å
)
22å ç
}
22é è
)33 
;33 
}44 	
}55 
}66 Í
≤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\ContentItemDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
public		 

class		 '
ContentItemDeploymentSource		 ,
:		- .
IDeploymentSource		/ @
{

 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public '
ContentItemDeploymentSource *
(* +
IContentManager+ :
contentManager; I
)I J
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var %
contentItemDeploymentStep )
=* +
step, 0
as1 3%
ContentItemDeploymentStep4 M
;M N
if 
( %
contentItemDeploymentStep )
==* ,
null- 1
||2 4%
contentItemDeploymentStep5 N
.N O
ContentItemIdO \
==] _
null` d
)d e
{ 
return 
; 
} 
var 
contentItem 
= 
await #
_contentManager$ 3
.3 4
GetAsync4 <
(< =%
contentItemDeploymentStep= V
.V W
ContentItemIdW d
)d e
;e f
if 
( 
contentItem 
== 
null #
)# $
{ 
return 
; 
}   
var"" 
jContentItem"" 
="" 
JObject"" &
.""& '

FromObject""' 1
(""1 2
contentItem""2 =
)""= >
;""> ?
jContentItem## 
.## 
Remove## 
(##  
nameof##  &
(##& '
ContentItem##' 2
.##2 3
Id##3 5
)##5 6
)##6 7
;##7 8
var%% 
contentStep%% 
=%% 
result%% $
.%%$ %
Steps%%% *
.%%* +
FirstOrDefault%%+ 9
(%%9 :
s%%: ;
=>%%< >
s%%? @
[%%@ A
$str%%A G
]%%G H
?%%H I
.%%I J
ToString%%J R
(%%R S
)%%S T
==%%U W
$str%%X a
)%%a b
;%%b c
if&& 
(&& 
contentStep&& 
!=&& 
null&& #
)&&# $
{'' 
var(( 
data(( 
=(( 
contentStep(( &
[((& '
$str((' -
]((- .
as((/ 1
JArray((2 8
;((8 9
data)) 
.)) 
Add)) 
()) 
jContentItem)) %
)))% &
;))& '
}** 
else++ 
{,, 
result-- 
.-- 
Steps-- 
.-- 
Add--  
(--  !
new--! $
JObject--% ,
(--, -
new.. 
	JProperty.. !
(..! "
$str.." (
,..( )
$str..* 3
)..3 4
,..4 5
new// 
	JProperty// !
(//! "
$str//" (
,//( )
new//* -
JArray//. 4
(//4 5
)//5 6
{00 
jContentItem11 $
}22 
)22 
)33 
)33 
;33 
}44 
}55 	
}66 
}77 Ø
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\ContentItemDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
public 

class %
ContentItemDeploymentStep *
:+ ,
DeploymentStep- ;
{		 
public

 %
ContentItemDeploymentStep

 (
(

( )
)

) *
{ 	
Name 
= 
nameof 
( %
ContentItemDeploymentStep 3
)3 4
;4 5
} 	
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Ó$
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\ContentItemDeploymentStepDriver.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 

Deployment

 )
.

) *
AddToDeploymentPlan

* =
{ 
public 

class +
ContentItemDeploymentStepDriver 0
:1 2
DisplayDriver3 @
<@ A
DeploymentStepA O
,O P%
ContentItemDeploymentStepQ j
>j k
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public +
ContentItemDeploymentStepDriver .
(. /
IContentManager/ >
contentManager? M
,M N
IStringLocalizer 
< +
ContentItemDeploymentStepDriver <
>< =
stringLocalizer> M
)M N
{ 	
_contentManager 
= 
contentManager ,
;, -
S 
= 
stringLocalizer 
;  
} 	
public 
override 
IDisplayResult &
Display' .
(. /%
ContentItemDeploymentStep/ H
stepI M
)M N
{ 	
return 
Combine 
( 
View 
( 
$str C
,C D
stepE I
)I J
.J K
LocationK S
(S T
$strT ]
,] ^
$str_ h
)h i
,i j
View 
( 
$str E
,E F
stepG K
)K L
.L M
LocationM U
(U V
$strV a
,a b
$strc l
)l m
) 
; 
} 	
public!! 
override!! 
IDisplayResult!! &
Edit!!' +
(!!+ ,%
ContentItemDeploymentStep!!, E
step!!F J
)!!J K
{"" 	
return## 

Initialize## 
<## .
"ContentItemDeploymentStepViewModel## @
>##@ A
(##A B
$str##B i
,##i j
model##k p
=>##q s
{$$ 
model%% 
.%% 
ContentItemId%% #
=%%$ %
step%%& *
.%%* +
ContentItemId%%+ 8
;%%8 9
}&& 
)&& 
.&& 
Location&& 
(&& 
$str&& !
)&&! "
;&&" #
}'' 	
public)) 
override)) 
async)) 
Task)) "
<))" #
IDisplayResult))# 1
>))1 2
UpdateAsync))3 >
())> ?%
ContentItemDeploymentStep))? X
step))Y ]
,))] ^
IUpdateModel))_ k
updater))l s
)))s t
{** 	
var++ 
model++ 
=++ 
new++ .
"ContentItemDeploymentStepViewModel++ >
(++> ?
)++? @
;++@ A
if-- 
(-- 
await-- 
updater-- 
.-- 
TryUpdateModelAsync-- 1
(--1 2
model--2 7
,--7 8
Prefix--9 ?
,--? @
x--A B
=>--C E
x--F G
.--G H
ContentItemId--H U
)--U V
)--V W
{.. 
var// 
contentItem// 
=//  !
await//" '
_contentManager//( 7
.//7 8
GetAsync//8 @
(//@ A
model//A F
.//F G
ContentItemId//G T
)//T U
;//U V
if00 
(00 
contentItem00 
==00  "
null00# '
)00' (
{11 
updater22 
.22 

ModelState22 &
.22& '
AddModelError22' 4
(224 5
Prefix225 ;
,22; <
nameof22= C
(22C D
step22D H
.22H I
ContentItemId22I V
)22V W
,22W X
S22Y Z
[22Z [
$str22[ ~
]22~ 
)	22 Ä
;
22Ä Å
}33 
else44 
{55 
step66 
.66 
ContentItemId66 &
=66' (
model66) .
.66. /
ContentItemId66/ <
;66< =
}77 
}88 
return:: 
Edit:: 
(:: 
step:: 
):: 
;:: 
};; 	
}<< 
}==  
πD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AddToDeploymentPlan\ContentItemDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
AddToDeploymentPlan* =
{ 
public 

class .
"ContentItemDeploymentStepViewModel 3
{ 
[ 	
Required	 
] 
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
}		 
}

 ‚$
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AllContentDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
{		 
public

 

class

 &
AllContentDeploymentSource

 +
:

, -
IDeploymentSource

. ?
{ 
private 
readonly 
ISession !
_session" *
;* +
public &
AllContentDeploymentSource )
() *
ISession* 2
session3 :
): ;
{ 	
_session 
= 
session 
; 
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
allContentStep 
=  
step! %
as& ($
AllContentDeploymentStep) A
;A B
if 
( 
allContentStep 
== !
null" &
)& '
{ 
return 
; 
} 
var 
data 
= 
new 
JArray !
(! "
)" #
;# $
result 
. 
Steps 
. 
Add 
( 
new  
JObject! (
(( )
new 
	JProperty 
( 
$str $
,$ %
$str& /
)/ 0
,0 1
new 
	JProperty 
( 
$str $
,$ %
data& *
)* +
)   
)   
;   
foreach"" 
("" 
var"" 
contentItem"" $
in""% '
await""( -
_session"". 6
.""6 7
Query""7 <
<""< =
ContentItem""= H
,""H I
ContentItemIndex""J Z
>""Z [
(""[ \
x""\ ]
=>""^ `
x""a b
.""b c
	Published""c l
)""l m
.""m n
	ListAsync""n w
(""w x
)""x y
)""y z
{## 
var$$ 

objectData$$ 
=$$  
JObject$$! (
.$$( )

FromObject$$) 3
($$3 4
contentItem$$4 ?
)$$? @
;$$@ A

objectData'' 
.'' 
Remove'' !
(''! "
nameof''" (
(''( )
ContentItem'') 4
.''4 5
Id''5 7
)''7 8
)''8 9
;''9 :
if)) 
()) 
allContentStep)) "
.))" #
ExportAsSetupRecipe))# 6
)))6 7
{** 

objectData++ 
[++ 
nameof++ %
(++% &
ContentItem++& 1
.++1 2
Owner++2 7
)++7 8
]++8 9
=++: ;
$str++< ]
;++] ^

objectData,, 
[,, 
nameof,, %
(,,% &
ContentItem,,& 1
.,,1 2
Author,,2 8
),,8 9
],,9 :
=,,; <
$str,,= `
;,,` a

objectData-- 
[-- 
nameof-- %
(--% &
ContentItem--& 1
.--1 2
ContentItemId--2 ?
)--? @
]--@ A
=--B C
$str--D R
;--R S

objectData.. 
... 
Remove.. %
(..% &
nameof..& ,
(.., -
ContentItem..- 8
...8 9 
ContentItemVersionId..9 M
)..M N
)..N O
;..O P

objectData// 
.// 
Remove// %
(//% &
nameof//& ,
(//, -
ContentItem//- 8
.//8 9

CreatedUtc//9 C
)//C D
)//D E
;//E F

objectData00 
.00 
Remove00 %
(00% &
nameof00& ,
(00, -
ContentItem00- 8
.008 9
ModifiedUtc009 D
)00D E
)00E F
;00F G

objectData11 
.11 
Remove11 %
(11% &
nameof11& ,
(11, -
ContentItem11- 8
.118 9
PublishedUtc119 E
)11E F
)11F G
;11G H
}22 
data33 
.33 
Add33 
(33 

objectData33 #
)33# $
;33$ %
}44 
return66 
;66 
}77 	
}88 
}99 •
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AllContentDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
{ 
public 

class $
AllContentDeploymentStep )
:* +
DeploymentStep, :
{		 
public

 $
AllContentDeploymentStep
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
} 	
public 
bool 
ExportAsSetupRecipe '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ‘
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\AllContentDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
{		 
public

 

class

 *
AllContentDeploymentStepDriver

 /
:

0 1
DisplayDriver

2 ?
<

? @
DeploymentStep

@ N
,

N O$
AllContentDeploymentStep

P h
>

h i
{ 
public 
override 
IDisplayResult &
Display' .
(. /$
AllContentDeploymentStep/ G
stepH L
)L M
{ 	
return 
Combine 
( 
View 
( 
$str B
,B C
stepD H
)H I
.I J
LocationJ R
(R S
$strS \
,\ ]
$str^ g
)g h
,h i
View 
( 
$str D
,D E
stepF J
)J K
.K L
LocationL T
(T U
$strU `
,` a
$strb k
)k l
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,$
AllContentDeploymentStep, D
stepE I
)I J
{ 	
return 

Initialize 
< -
!AllContentDeploymentStepViewModel ?
>? @
(@ A
$strA g
,g h
modeli n
=>o q
{ 
model 
. 
ExportAsSetupRecipe )
=* +
step, 0
.0 1
ExportAsSetupRecipe1 D
;D E
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
AllContentDeploymentStep? W
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
.B C
ExportAsSetupRecipeC V
)V W
;W X
return!! 
Edit!! 
(!! 
step!! 
)!! 
;!! 
}"" 	
}## 
}$$ ê'
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ContentDeploymentSource.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 

Deployment		 )
{

 
public 

class #
ContentDeploymentSource (
:) *
IDeploymentSource+ <
{ 
private 
readonly 
ISession !
_session" *
;* +
public #
ContentDeploymentSource &
(& '
ISession' /
session0 7
)7 8
{ 	
_session 
= 
session 
; 
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
contentStep 
= 
step "
as# %!
ContentDeploymentStep& ;
;; <
if 
( 
contentStep 
== 
null #
)# $
{ 
return 
; 
} 
var 
data 
= 
new 
JArray !
(! "
)" #
;# $
foreach!! 
(!! 
var!! 
contentItem!! $
in!!% '
await!!( -
_session!!. 6
.!!6 7
Query!!7 <
<!!< =
ContentItem!!= H
,!!H I
ContentItemIndex!!J Z
>!!Z [
(!![ \
x!!\ ]
=>!!^ `
x!!a b
.!!b c
	Published!!c l
&&!!m o
x!!p q
.!!q r
ContentType!!r }
.!!} ~
IsIn	!!~ Ç
(
!!Ç É
contentStep
!!É é
.
!!é è
ContentTypes
!!è õ
)
!!õ ú
)
!!ú ù
.
!!ù û
	ListAsync
!!û ß
(
!!ß ®
)
!!® ©
)
!!© ™
{"" 
var## 

objectData## 
=##  
JObject##! (
.##( )

FromObject##) 3
(##3 4
contentItem##4 ?
)##? @
;##@ A

objectData&& 
.&& 
Remove&& !
(&&! "
nameof&&" (
(&&( )
ContentItem&&) 4
.&&4 5
Id&&5 7
)&&7 8
)&&8 9
;&&9 :
if(( 
((( 
contentStep(( 
.((  
ExportAsSetupRecipe((  3
)((3 4
{)) 

objectData** 
[** 
nameof** %
(**% &
ContentItem**& 1
.**1 2
Owner**2 7
)**7 8
]**8 9
=**: ;
$str**< ]
;**] ^

objectData++ 
[++ 
nameof++ %
(++% &
ContentItem++& 1
.++1 2
Author++2 8
)++8 9
]++9 :
=++; <
$str++= `
;++` a

objectData,, 
[,, 
nameof,, %
(,,% &
ContentItem,,& 1
.,,1 2
ContentItemId,,2 ?
),,? @
],,@ A
=,,B C
$str,,D R
;,,R S

objectData-- 
.-- 
Remove-- %
(--% &
nameof--& ,
(--, -
ContentItem--- 8
.--8 9 
ContentItemVersionId--9 M
)--M N
)--N O
;--O P

objectData.. 
... 
Remove.. %
(..% &
nameof..& ,
(.., -
ContentItem..- 8
...8 9

CreatedUtc..9 C
)..C D
)..D E
;..E F

objectData// 
.// 
Remove// %
(//% &
nameof//& ,
(//, -
ContentItem//- 8
.//8 9
ModifiedUtc//9 D
)//D E
)//E F
;//F G

objectData00 
.00 
Remove00 %
(00% &
nameof00& ,
(00, -
ContentItem00- 8
.008 9
PublishedUtc009 E
)00E F
)00F G
;00G H
}11 
data22 
.22 
Add22 
(22 

objectData22 #
)22# $
;22$ %
}33 
if55 
(55 
data55 
.55 
	HasValues55 
)55 
{66 
var77 
jobj77 
=77 
new77 
JObject77 &
{88 
[99 
$str99 
]99 
=99 
$str99 (
,99( )
[:: 
$str:: 
]:: 
=:: 
data:: #
};; 
;;; 
result== 
.== 
Steps== 
.== 
Add==  
(==  !
jobj==! %
)==% &
;==& '
}>> 
}?? 	
}@@ 
}AA ⁄
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ContentDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
{ 
public 

class !
ContentDeploymentStep &
:' (
DeploymentStep) 7
{		 
public

 !
ContentDeploymentStep

 $
(

$ %
)

% &
{ 	
Name 
= 
$str *
;* +
} 	
public 
string 
[ 
] 
ContentTypes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
ExportAsSetupRecipe '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ò
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ContentDeploymentStepDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 

Deployment		 )
{

 
public 

class '
ContentDeploymentStepDriver ,
:- .
DisplayDriver/ <
<< =
DeploymentStep= K
,K L!
ContentDeploymentStepM b
>b c
{ 
public 
override 
IDisplayResult &
Display' .
(. /!
ContentDeploymentStep/ D
stepE I
)I J
{ 	
return 
Combine 
( 
View 
( 
$str ?
,? @
stepA E
)E F
.F G
LocationG O
(O P
$strP Y
,Y Z
$str[ d
)d e
,e f
View 
( 
$str A
,A B
stepC G
)G H
.H I
LocationI Q
(Q R
$strR ]
,] ^
$str_ h
)h i
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,!
ContentDeploymentStep, A
stepB F
)F G
{ 	
return 

Initialize 
< *
ContentDeploymentStepViewModel <
>< =
(= >
$str> a
,a b
modelc h
=>i k
{ 
model 
. 
ContentTypes "
=# $
step% )
.) *
ContentTypes* 6
;6 7
model 
. 
ExportAsSetupRecipe )
=* +
step, 0
.0 1
ExportAsSetupRecipe1 D
;D E
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?!
ContentDeploymentStep? T
stepU Y
,Y Z
IUpdateModel[ g
updaterh o
)o p
{   	
step"" 
."" 
ContentTypes"" 
="" 
Array""  %
.""% &
Empty""& +
<""+ ,
string"", 2
>""2 3
(""3 4
)""4 5
;""5 6
await$$ 
updater$$ 
.$$ 
TryUpdateModelAsync$$ -
($$- .
step$$. 2
,$$2 3
Prefix$$4 :
,$$: ;
x$$< =
=>$$> @
x$$A B
.$$B C
ContentTypes$$C O
,$$O P
x$$Q R
=>$$S U
x$$V W
.$$W X
ExportAsSetupRecipe$$X k
)$$k l
;$$l m
return&& 
Edit&& 
(&& 
step&& 
)&& 
;&& 
}'' 	
}(( 
})) †
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\Download\DisplayJsonContentItemViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
Download* 2
{ 
public 

class +
DisplayJsonContentItemViewModel 0
{ 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
ContentItemJson %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
}		 
}

 …
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\Download\DownloadContentDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
Download* 2
{		 
public

 

class

 !
DownloadContentDriver

 &
:

' ( 
ContentDisplayDriver

) =
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public !
DownloadContentDriver $
($ % 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ContentItem/ :
contentItem; F
)F G
{ 	
var 
context 
=  
_httpContextAccessor .
.. /
HttpContext/ :
;: ;
return 
Shape 
( 
$str A
,A B
newC F 
ContentItemViewModelG [
([ \
contentItem\ g
)g h
)h i
.i j
Locationj r
(r s
$str	s Å
,
Å Ç
$str
É ì
)
ì î
. 

RenderWhen 
(  
async  %
(& '
)' (
=>) +
{ 
var 
hasEditPermission -
=. /
await0 5!
_authorizationService6 K
.K L
AuthorizeAsyncL Z
(Z [
context[ b
.b c
Userc g
,g h
OrchardCorei t
.t u

Deploymentu 
.	 Ä
CommonPermissions
Ä ë
.
ë í
Export
í ò
,
ò ô
contentItem
ö •
)
• ¶
;
¶ ß
if   
(   
hasEditPermission   -
)  - .
{!! 
return"" "
true""# '
;""' (
}## 
return%% 
false%% $
;%%$ %
}&& 
)&& 
;&& 
}'' 	
}(( 
})) Ù2
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\Download\DownloadController.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 

Deployment

 )
.

) *
Download

* 2
{ 
[ 
Admin 

]
 
[ 
Feature 
( 
$str 7
)7 8
]8 9
public 

class 
DownloadController #
:$ %

Controller& 0
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public 
DownloadController !
(! "!
IAuthorizationService ! 
authorizationService" 6
,6 7
IContentManager 
contentManager *
) 
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
_contentManager 
= 
contentManager ,
;, -
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Display) 0
(0 1
string1 7
contentItemId8 E
,E F
boolG K
latestL R
=S T
falseU Z
)Z [
{ 	
if 
( 
! 
await !
_authorizationService ,
., -
AuthorizeAsync- ;
(; <
User< @
,@ A
OrchardCoreB M
.M N

DeploymentN X
.X Y
CommonPermissionsY j
.j k
Exportk q
)q r
)r s
{   
return!! 
Forbid!! 
(!! 
)!! 
;!!  
}"" 
var$$ 
contentItem$$ 
=$$ 
await$$ #
_contentManager$$$ 3
.$$3 4
GetAsync$$4 <
($$< =
contentItemId$$= J
,$$J K
latest$$L R
==$$S U
false$$V [
?$$\ ]
VersionOptions$$^ l
.$$l m
	Published$$m v
:$$w x
VersionOptions	$$y á
.
$$á à
Latest
$$à é
)
$$é è
;
$$è ê
if&& 
(&& 
contentItem&& 
==&& 
null&& #
)&&# $
{'' 
return(( 
NotFound(( 
(((  
)((  !
;((! "
})) 
if-- 
(-- 
!-- 
await-- !
_authorizationService-- ,
.--, -
AuthorizeAsync--- ;
(--; <
User--< @
,--@ A
CommonPermissions--B S
.--S T
EditContent--T _
,--_ `
contentItem--a l
)--l m
)--m n
{.. 
return// 
Forbid// 
(// 
)// 
;//  
}00 
var22 
model22 
=22 
new22 +
DisplayJsonContentItemViewModel22 ;
{33 
ContentItem44 
=44 
contentItem44 )
,44) *
ContentItemJson55 
=55  !
JObject55" )
.55) *

FromObject55* 4
(554 5
contentItem555 @
)55@ A
.55A B
ToString55B J
(55J K
)55K L
}66 
;66 
return88 
View88 
(88 
model88 
)88 
;88 
}99 	
[;; 	
HttpPost;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Download<<) 1
(<<1 2
string<<2 8
contentItemId<<9 F
,<<F G
bool<<H L
latest<<M S
=<<T U
false<<V [
)<<[ \
{== 	
if>> 
(>> 
!>> 
await>> !
_authorizationService>> ,
.>>, -
AuthorizeAsync>>- ;
(>>; <
User>>< @
,>>@ A
OrchardCore>>B M
.>>M N

Deployment>>N X
.>>X Y
CommonPermissions>>Y j
.>>j k
Export>>k q
)>>q r
)>>r s
{?? 
return@@ 
Forbid@@ 
(@@ 
)@@ 
;@@  
}AA 
varCC 
contentItemCC 
=CC 
awaitCC #
_contentManagerCC$ 3
.CC3 4
GetAsyncCC4 <
(CC< =
contentItemIdCC= J
,CCJ K
latestCCL R
==CCS U
falseCCV [
?CC\ ]
VersionOptionsCC^ l
.CCl m
	PublishedCCm v
:CCw x
VersionOptions	CCy á
.
CCá à
Latest
CCà é
)
CCé è
;
CCè ê
ifEE 
(EE 
contentItemEE 
==EE 
nullEE #
)EE# $
{FF 
returnGG 
NotFoundGG 
(GG  
)GG  !
;GG! "
}HH 
ifLL 
(LL 
!LL 
awaitLL !
_authorizationServiceLL ,
.LL, -
AuthorizeAsyncLL- ;
(LL; <
UserLL< @
,LL@ A
CommonPermissionsLLB S
.LLS T
EditContentLLT _
,LL_ `
contentItemLLa l
)LLl m
)LLm n
{MM 
returnNN 
ForbidNN 
(NN 
)NN 
;NN  
}OO 
varQQ 
jItemQQ 
=QQ 
JObjectQQ 
.QQ  

FromObjectQQ  *
(QQ* +
contentItemQQ+ 6
)QQ6 7
;QQ7 8
returnSS 
FileSS 
(SS 
EncodingSS  
.SS  !
UTF8SS! %
.SS% &
GetBytesSS& .
(SS. /
jItemSS/ 4
.SS4 5
ToStringSS5 =
(SS= >
)SS> ?
)SS? @
,SS@ A
$strSSB T
,SST U
$"SSV X
{SSX Y
contentItemSSY d
.SSd e
ContentItemIdSSe r
}SSr s
.jsonSSs x
"SSx y
)SSy z
;SSz {
}TT 	
}UU 
}VV †
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\Download\DownloadStartup.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *
Download* 2
{ 
[ 
Feature 
( 
$str 7
)7 8
]8 9
public 

class 
DownloadStartup  
:! "
StartupBase# .
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
DownloadStartup 
( 
IOptions '
<' (
AdminOptions( 4
>4 5
adminOptions6 B
)B C
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< !
IContentDisplayDriver 4
,4 5!
DownloadContentDriver6 K
>K L
(L M
)M N
;N O
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
var "
downloadControllerName &
=' (
typeof) /
(/ 0
DownloadController0 B
)B C
.C D
ControllerNameD R
(R S
)S T
;T U
routes   
.   "
MapAreaControllerRoute   )
(  ) *
name!! 
:!! 
$str!! &
,!!& '
areaName"" 
:"" 
$str"" /
,""/ 0
pattern## 
:## 
_adminOptions## %
.##% &
AdminUrlPrefix##& 4
+##5 6
$str##7 Z
,##Z [
defaults$$ 
:$$ 
new$$ 
{$$ 

controller$$ )
=$$* +"
downloadControllerName$$, B
,$$B C
action$$D J
=$$K L
nameof$$M S
($$S T
DownloadController$$T f
.$$f g
Display$$g n
)$$n o
}$$p q
)%% 
;%% 
routes'' 
.'' "
MapAreaControllerRoute'' )
('') *
name(( 
:(( 
$str(( '
,((' (
areaName)) 
:)) 
$str)) /
,))/ 0
pattern** 
:** 
_adminOptions** %
.**% &
AdminUrlPrefix**& 4
+**5 6
$str**7 [
,**[ \
defaults++ 
:++ 
new++ 
{++ 

controller++ )
=++* +"
downloadControllerName++, B
,++B C
action++D J
=++K L
nameof++M S
(++S T
DownloadController++T f
.++f g
Download++g o
)++o p
}++q r
),, 
;,, 
}-- 	
}.. 
}// †
ÀD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetAdminMenu.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
public 

class 4
(ExportContentToDeploymentTargetAdminMenu 9
:: ;
INavigationProvider< O
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
public 4
(ExportContentToDeploymentTargetAdminMenu 7
(7 8
IStringLocalizer8 H
<H I
	AdminMenuI R
>R S
	localizerT ]
)] ^
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
$str )
]) *
,* +
settings, 4
=>5 7
settings8 @
. 
Add  
(  !
S! "
[" #
$str# ;
]; <
,< =
S> ?
[? @
$str@ X
]X Y
.Y Z
PrefixPositionZ h
(h i
)i j
,j k

deploymentl v
=>w y

deployment	z Ñ
.  !
Action! '
(' (
$str( /
,/ 0
$str1 8
,8 9
new: =
{> ?
area@ D
=E F
$strG ]
,] ^
groupId_ f
=g h
$str	i ä
}
ã å
)
å ç
.  !

Permission! +
(+ ,
OrchardCore, 7
.7 8

Deployment8 B
.B C
CommonPermissionsC T
.T U 
ManageDeploymentPlanU i
)i j
.  !
LocalNav! )
() *
)* +
)   
)!! 
)"" 
)## 
;## 
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
}'' 
}(( ¯"
œD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetContentDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 

Deployment		 )
.		) *+
ExportContentToDeploymentTarget		* I
{

 
public 

class 8
,ExportContentToDeploymentTargetContentDriver =
:> ? 
ContentDisplayDriver@ T
{ 
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 8
,ExportContentToDeploymentTargetContentDriver ;
(; <"
IDeploymentPlanService "!
deploymentPlanService# 8
,8 9
ISiteService 
siteService $
)$ %
{ 	"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
_siteService 
= 
siteService &
;& '
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ContentItem/ :
model; @
)@ A
{ 	
return 
Combine 
( 
Dynamic 
( 
$str W
)W X
. 
Location 
( 
$str ,
,, -
$str. >
)> ?
. 

RenderWhen 
(  
async  %
(& '
)' (
=>) +
{ 
if 
( 
await !"
_deploymentPlanService" 8
.8 9-
!DoesUserHaveExportPermissionAsync9 Z
(Z [
)[ \
)\ ]
{   
var!! 
siteSettings!!  ,
=!!- .
await!!/ 4
_siteService!!5 A
.!!A B 
GetSiteSettingsAsync!!B V
(!!V W
)!!W X
;!!X Y
var"" 3
'exportContentToDeploymentTargetSettings""  G
=""H I
siteSettings""J V
.""V W
As""W Y
<""Y Z4
'ExportContentToDeploymentTargetSettings	""Z Å
>
""Å Ç
(
""Ç É
)
""É Ñ
;
""Ñ Ö
if## 
(##  3
'exportContentToDeploymentTargetSettings##  G
.##G H1
%ExportContentToDeploymentTargetPlanId##H m
!=##n p
$num##q r
)##r s
{$$ 
return%%  &
true%%' +
;%%+ ,
}&& 
}'' 
return)) 
false)) $
;))$ %
}** 
)** 
,** 
Shape++ 
(++ 
$str++ U
,++U V
new++W Z 
ContentItemViewModel++[ o
(++o p
model++p u
)++u v
)++v w
.,, 
Location,, 
(,, 
$str,, ,
,,,, -
$str,,. >
),,> ?
.-- 

RenderWhen-- 
(--  
async--  %
(--& '
)--' (
=>--) +
{.. 
if// 
(// 
await// !"
_deploymentPlanService//" 8
.//8 9-
!DoesUserHaveExportPermissionAsync//9 Z
(//Z [
)//[ \
)//\ ]
{00 
var11 
siteSettings11  ,
=11- .
await11/ 4
_siteService115 A
.11A B 
GetSiteSettingsAsync11B V
(11V W
)11W X
;11X Y
var22 3
'exportContentToDeploymentTargetSettings22  G
=22H I
siteSettings22J V
.22V W
As22W Y
<22Y Z4
'ExportContentToDeploymentTargetSettings	22Z Å
>
22Å Ç
(
22Ç É
)
22É Ñ
;
22Ñ Ö
if33 
(33  3
'exportContentToDeploymentTargetSettings33  G
.33G H1
%ExportContentToDeploymentTargetPlanId33H m
!=33n p
$num33q r
)33r s
{44 
return55  &
true55' +
;55+ ,
}66 
}77 
return99 
false99 $
;99$ %
}:: 
):: 
);; 
;;; 
}<< 	
}== 
}>> â
‡D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetContentsAdminListDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 

Deployment		 )
.		) *+
ExportContentToDeploymentTarget		* I
{

 
public 

class I
=ExportContentToDeploymentTargetContentsAdminListDisplayDriver N
:O P
DisplayDriverQ ^
<^ _#
ContentOptionsViewModel_ v
>v w
{ 
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public I
=ExportContentToDeploymentTargetContentsAdminListDisplayDriver L
(L M"
IDeploymentPlanService "!
deploymentPlanService# 8
,8 9
ISiteService 
siteService $
)$ %
{ 	"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
_siteService 
= 
siteService &
;& '
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
DisplayAsync3 ?
(? @#
ContentOptionsViewModel@ W
modelX ]
,] ^
BuildDisplayContext_ r
contexts z
)z {
{ 	
if 
( 
await "
_deploymentPlanService ,
., --
!DoesUserHaveExportPermissionAsync- N
(N O
)O P
)P Q
{ 
var 
siteSettings  
=! "
await# (
_siteService) 5
.5 6 
GetSiteSettingsAsync6 J
(J K
)K L
;L M
var 3
'exportContentToDeploymentTargetSettings ;
=< =
siteSettings> J
.J K
AsK M
<M N3
'ExportContentToDeploymentTargetSettingsN u
>u v
(v w
)w x
;x y
if 
( 3
'exportContentToDeploymentTargetSettings ;
.; <1
%ExportContentToDeploymentTargetPlanId< a
!=b d
$nume f
)f g
{ 
return   
Combine   "
(  " #
Dynamic!! 
(!!  
$str!!  ^
)!!^ _
.!!_ `
Location!!` h
(!!h i
$str!!i v
,!!v w
$str	!!x Ñ
)
!!Ñ Ö
,
!!Ö Ü
Dynamic"" 
(""  
$str""  l
)""l m
.""m n
Location""n v
(""v w
$str	""w Ñ
,
""Ñ Ö
$str
""Ü í
)
""í ì
)## 
;## 
}$$ 
}%% 
return'' 
null'' 
;'' 
}(( 	
})) 
}** §8
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
public 

class ;
/ExportContentToDeploymentTargetDeploymentSource @
:A B
IDeploymentSourceC T
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public ;
/ExportContentToDeploymentTargetDeploymentSource >
(> ?
IContentManager 
contentManager *
,* +
ISession 
session 
,  
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{ 	
_contentManager 
= 
contentManager ,
;, -
_session 
= 
session 
;  
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var   @
4exportContentToDeploymentTargetContentDeploymentStep   D
=  E F
step  G K
as  L N9
-ExportContentToDeploymentTargetDeploymentStep  O |
;  | }
if"" 
("" @
4exportContentToDeploymentTargetContentDeploymentStep"" D
==""E G
null""H L
)""L M
{## 
return$$ 
;$$ 
}%% 
var'' 
data'' 
='' 
new'' 
JArray'' !
(''! "
)''" #
;''# $
result(( 
.(( 
Steps(( 
.(( 
Add(( 
((( 
new((  
JObject((! (
(((( )
new)) 
	JProperty)) 
()) 
$str)) $
,))$ %
$str))& /
)))/ 0
,))0 1
new** 
	JProperty** 
(** 
$str** $
,**$ %
data**& *
)*** +
)++ 
)++ 
;++ 
var-- 
model-- 
=-- 
new-- 0
$ExportContentToDeploymentTargetModel-- @
(--@ A
)--A B
;--B C
await..  
_updateModelAccessor.. &
...& '
ModelUpdater..' 3
...3 4
TryUpdateModelAsync..4 G
(..G H
model..H M
,..M N
$str..O p
,..p q
m..r s
=>..t v
m..w x
...x y
ItemIds	..y Ä
,
..Ä Å
m
..Ç É
=>
..Ñ Ü
m
..á à
.
..à â
Latest
..â è
,
..è ê
m
..ë í
=>
..ì ï
m
..ñ ó
.
..ó ò
ContentItemId
..ò •
)
..• ¶
;
..¶ ß
if00 
(00 
!00 
string00 
.00 
IsNullOrEmpty00 %
(00% &
model00& +
.00+ ,
ContentItemId00, 9
)009 :
)00: ;
{11 
var22 
contentItem22 
=22  !
await22" '
_contentManager22( 7
.227 8
GetAsync228 @
(22@ A
model22A F
.22F G
ContentItemId22G T
,22T U
model22V [
.22[ \
Latest22\ b
?22c d
VersionOptions22e s
.22s t
Latest22t z
:22{ |
VersionOptions	22} ã
.
22ã å
	Published
22å ï
)
22ï ñ
;
22ñ ó
if33 
(33 
contentItem33 
!=33  "
null33# '
)33' (
{44 
var55 

objectData55 "
=55# $
JObject55% ,
.55, -

FromObject55- 7
(557 8
contentItem558 C
)55C D
;55D E

objectData66 
.66 
Remove66 %
(66% &
nameof66& ,
(66, -
ContentItem66- 8
.668 9
Id669 ;
)66; <
)66< =
;66= >
data77 
.77 
Add77 
(77 

objectData77 '
)77' (
;77( )
}88 
}99 
if;; 
(;; 
model;; 
.;; 
ItemIds;; 
?;; 
.;; 
Count;; $
(;;$ %
);;% &
>;;' (
$num;;) *
);;* +
{<< 
var== 
checkedContentItems== '
===( )
await==* /
_session==0 8
.==8 9
Query==9 >
<==> ?
ContentItem==? J
,==J K
ContentItemIndex==L \
>==\ ]
(==] ^
)==^ _
.==_ `
Where==` e
(==e f
x==f g
=>==h j
x==k l
.==l m

DocumentId==m w
.==w x
IsIn==x |
(==| }
model	==} Ç
.
==Ç É
ItemIds
==É ä
)
==ä ã
&&
==å é
x
==è ê
.
==ê ë
	Published
==ë ö
)
==ö õ
.
==õ ú
	ListAsync
==ú •
(
==• ¶
)
==¶ ß
;
==ß ®
foreach?? 
(?? 
var?? 
contentItem?? (
in??) +
checkedContentItems??, ?
)??? @
{@@ 
varAA 

objectDataAA "
=AA# $
JObjectAA% ,
.AA, -

FromObjectAA- 7
(AA7 8
contentItemAA8 C
)AAC D
;AAD E

objectDataBB 
.BB 
RemoveBB %
(BB% &
nameofBB& ,
(BB, -
ContentItemBB- 8
.BB8 9
IdBB9 ;
)BB; <
)BB< =
;BB= >
dataCC 
.CC 
AddCC 
(CC 

objectDataCC '
)CC' (
;CC( )
}DD 
}EE 
}FF 	
publicHH 
classHH 0
$ExportContentToDeploymentTargetModelHH 9
{II 	
publicJJ 
IEnumerableJJ 
<JJ 
intJJ "
>JJ" #
ItemIdsJJ$ +
{JJ, -
getJJ. 1
;JJ1 2
setJJ3 6
;JJ6 7
}JJ8 9
publicKK 
stringKK 
ContentItemIdKK '
{KK( )
getKK* -
;KK- .
setKK/ 2
;KK2 3
}KK4 5
publicLL 
boolLL 
LatestLL 
{LL  
getLL! $
;LL$ %
setLL& )
;LL) *
}LL+ ,
}MM 	
}NN 
}OO ˆ
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
public 

class 9
-ExportContentToDeploymentTargetDeploymentStep >
:? @
DeploymentStepA O
{		 
public

 9
-ExportContentToDeploymentTargetDeploymentStep

 <
(

< =
)

= >
{ 	
Name 
= 
nameof 
( 9
-ExportContentToDeploymentTargetDeploymentStep G
)G H
;H I
} 	
} 
} ö
÷D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
public 

class ?
3ExportContentToDeploymentTargetDeploymentStepDriver D
:E F
DisplayDriverG T
<T U
DeploymentStepU c
,c d:
-ExportContentToDeploymentTargetDeploymentStep	e í
>
í ì
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /9
-ExportContentToDeploymentTargetDeploymentStep		/ \
step		] a
)		a b
{

 	
return 
Combine 
( 
View 
( 
$str W
,W X
stepY ]
)] ^
.^ _
Location_ g
(g h
$strh q
,q r
$strs |
)| }
,} ~
View 
( 
$str Y
,Y Z
step[ _
)_ `
.` a
Locationa i
(i j
$strj u
,u v
$str	w Ä
)
Ä Å
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,9
-ExportContentToDeploymentTargetDeploymentStep, Y
stepZ ^
)^ _
{ 	
return 
View 
( 
$str S
,S T
stepU Y
)Y Z
.Z [
Location[ c
(c d
$strd m
)m n
;n o
} 	
} 
} ÿ
ÃD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetMigrations.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 

Deployment

 )
.

) *+
ExportContentToDeploymentTarget

* I
{ 
[ 
Feature 
( 
$str N
)N O
]O P
public 

class 5
)ExportContentToDeploymentTargetMigrations :
:; <
DataMigration= J
{ 
private 
readonly 
IRecipeMigrator (
_recipeMigrator) 8
;8 9
private 
readonly "
IDeploymentPlanService /"
_deploymentPlanService0 F
;F G
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 5
)ExportContentToDeploymentTargetMigrations 8
(8 9
IRecipeMigrator 
recipeMigrator *
,* +"
IDeploymentPlanService "!
deploymentPlanService# 8
,8 9
ISiteService 
siteService $
) 
{ 	
_recipeMigrator 
= 
recipeMigrator ,
;, -"
_deploymentPlanService "
=# $!
deploymentPlanService% :
;: ;
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< 
int 
> 
CreateAsync *
(* +
)+ ,
{ 	
await   
_recipeMigrator   !
.  ! "
ExecuteAsync  " .
(  . /
$str  / \
,  \ ]
this  ^ b
)  b c
;  c d
var"" 
deploymentPlans"" 
=""  !
await""" '"
_deploymentPlanService""( >
.""> ?&
GetAllDeploymentPlansAsync""? Y
(""Y Z
)""Z [
;""[ \
var## /
#exportContentToDeploymentTargetPlan## 3
=##4 5
deploymentPlans##6 E
.##E F
FirstOrDefault##F T
(##T U
x##U V
=>##W Y
x##Z [
.##[ \
DeploymentSteps##\ k
.##k l
Any##l o
(##o p
x##p q
=>##r t
x##u v
.##v w
Name##w {
==##| ~
nameof	## Ö
(
##Ö Ü;
-ExportContentToDeploymentTargetDeploymentStep
##Ü ≥
)
##≥ ¥
)
##¥ µ
)
##µ ∂
;
##∂ ∑
if%% 
(%% /
#exportContentToDeploymentTargetPlan%% 3
!=%%4 6
null%%7 ;
)%%; <
{&& 
var'' 
siteSettings''  
=''! "
await''# (
_siteService'') 5
.''5 6!
LoadSiteSettingsAsync''6 K
(''K L
)''L M
;''M N
siteSettings(( 
.(( 
Alter(( "
<((" #3
'ExportContentToDeploymentTargetSettings((# J
>((J K
(((K L
nameof((L R
(((R S3
'ExportContentToDeploymentTargetSettings((S z
)((z {
,(({ |
aspect	((} É
=>
((Ñ Ü
aspect
((á ç
.
((ç é3
%ExportContentToDeploymentTargetPlanId
((é ≥
=
((¥ µ1
#exportContentToDeploymentTargetPlan
((∂ Ÿ
.
((Ÿ ⁄
Id
((⁄ ‹
)
((‹ ›
;
((› ﬁ
await** 
_siteService** "
.**" ##
UpdateSiteSettingsAsync**# :
(**: ;
siteSettings**; G
)**G H
;**H I
}++ 
return-- 
$num-- 
;-- 
}.. 	
}// 
}00 Õ
 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetSettings.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
public 

class 3
'ExportContentToDeploymentTargetSettings 8
{ 
public 
int 1
%ExportContentToDeploymentTargetPlanId 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
}		 
}

 Ã%
◊D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetSettingsDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 

Deployment		 )
.		) *+
ExportContentToDeploymentTarget		* I
{

 
public 

class @
4ExportContentToDeploymentTargetSettingsDisplayDriver E
:F G 
SectionDisplayDriverH \
<\ ]
ISite] b
,b c4
'ExportContentToDeploymentTargetSettings	d ã
>
ã å
{ 
private 
const 
string 
SettingsGroupId ,
=- .
$str/ P
;P Q
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public @
4ExportContentToDeploymentTargetSettingsDisplayDriver C
(C D 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =3
'ExportContentToDeploymentTargetSettings= d
settingse m
,m n
BuildEditorContext	o Å
context
Ç â
)
â ä
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if 
( 
user 
== 
null 
|| 
!  !
await! &!
_authorizationService' <
.< =
AuthorizeAsync= K
(K L
userL P
,P Q
OrchardCoreR ]
.] ^

Deployment^ h
.h i
CommonPermissionsi z
.z {!
ManageDeploymentPlan	{ è
)
è ê
)
ê ë
{ 
return 
null 
; 
}   
return"" 

Initialize"" 
<"" <
0ExportContentToDeploymentTargetSettingsViewModel"" N
>""N O
(""O P
$str""P ~
,""~ 
model
""Ä Ö
=>
""Ü à
{## 
model$$ 
.$$ 1
%ExportContentToDeploymentTargetPlanId$$ ;
=$$< =
settings$$> F
.$$F G1
%ExportContentToDeploymentTargetPlanId$$G l
;$$l m
}%% 
)%% 
.%% 
Location%% 
(%% 
$str%% #
)%%# $
.%%$ %
OnGroup%%% ,
(%%, -
SettingsGroupId%%- <
)%%< =
;%%= >
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?3
'ExportContentToDeploymentTargetSettings((? f
settings((g o
,((o p
BuildEditorContext	((q É
context
((Ñ ã
)
((ã å
{)) 	
if** 
(** 
context** 
.** 
GroupId** 
==**  "
SettingsGroupId**# 2
)**2 3
{++ 
var,, 
model,, 
=,, 
new,, <
0ExportContentToDeploymentTargetSettingsViewModel,,  P
(,,P Q
),,Q R
;,,R S
await.. 
context.. 
... 
Updater.. %
...% &
TryUpdateModelAsync..& 9
(..9 :
model..: ?
,..? @
Prefix..A G
,..G H
m..I J
=>..K M
m..N O
...O P1
%ExportContentToDeploymentTargetPlanId..P u
)..u v
;..v w
settings00 
.00 1
%ExportContentToDeploymentTargetPlanId00 >
=00? @
model00A F
.00F G1
%ExportContentToDeploymentTargetPlanId00G l
;00l m
}11 
return33 
await33 
	EditAsync33 "
(33" #
settings33# +
,33+ ,
context33- 4
)334 5
;335 6
}44 	
}55 
}66 ﬂ
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
public 

class <
0ExportContentToDeploymentTargetSettingsViewModel A
{ 
public 
int 1
%ExportContentToDeploymentTargetPlanId 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
} ô%
…D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Deployment\ExportContentToDeploymentTarget\ExportContentToDeploymentTargetStartup.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

Deployment )
.) *+
ExportContentToDeploymentTarget* I
{ 
[ 
Feature 
( 
$str N
)N O
]O P
public 

class 2
&ExportContentToDeploymentTargetStartup 7
:8 9
StartupBase: E
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 34
(ExportContentToDeploymentTargetAdminMenu4 \
>\ ]
(] ^
)^ _
;_ `
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 5@
4ExportContentToDeploymentTargetSettingsDisplayDriver6 j
>j k
(k l
)l m
;m n
services 
. 
AddTransient !
<! "
IDeploymentSource" 3
,3 4;
/ExportContentToDeploymentTargetDeploymentSource5 d
>d e
(e f
)f g
;g h
services 
. 
AddSingleton !
<! ""
IDeploymentStepFactory" 8
>8 9
(9 :
new: =!
DeploymentStepFactory> S
<S T:
-ExportContentToDeploymentTargetDeploymentStep	T Å
>
Å Ç
(
Ç É
)
É Ñ
)
Ñ Ö
;
Ö Ü
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
DeploymentStep. <
>< =
,= >?
3ExportContentToDeploymentTargetDeploymentStepDriver? r
>r s
(s t
)t u
;u v
services 
. 
	AddScoped 
< 
IDataMigration -
,- .5
)ExportContentToDeploymentTargetMigrations/ X
>X Y
(Y Z
)Z [
;[ \
services 
. 
	AddScoped 
< !
IContentDisplayDriver 4
,4 58
,ExportContentToDeploymentTargetContentDriver6 b
>b c
(c d
)d e
;e f
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .#
ContentOptionsViewModel. E
>E F
,F GJ
=ExportContentToDeploymentTargetContentsAdminListDisplayDriver	H Ö
>
Ö Ü
(
Ü á
)
á à
;
à â
services   
.   
AddTransient   !
<  ! "
IDeploymentSource  " 3
,  3 40
$SiteSettingsPropertyDeploymentSource  5 Y
<  Y Z4
'ExportContentToDeploymentTargetSettings	  Z Å
>
  Å Ç
>
  Ç É
(
  É Ñ
)
  Ñ Ö
;
  Ö Ü
services!! 
.!! 
	AddScoped!! 
<!! 
IDisplayDriver!! -
<!!- .
DeploymentStep!!. <
>!!< =
>!!= >
(!!> ?
sp!!? A
=>!!B D
{"" 
var## 
S## 
=## 
sp## 
.## 

GetService## %
<##% &
IStringLocalizer##& 6
<##6 72
&ExportContentToDeploymentTargetStartup##7 ]
>##] ^
>##^ _
(##_ `
)##` a
;##a b
return$$ 
new$$ 4
(SiteSettingsPropertyDeploymentStepDriver$$ C
<$$C D3
'ExportContentToDeploymentTargetSettings$$D k
>$$k l
($$l m
S$$m n
[$$n o
$str	$$o ù
]
$$ù û
,
$$û ü
S
$$† °
[
$$° ¢
$str
$$¢ ›
]
$$› ﬁ
)
$$ﬁ ﬂ
;
$$ﬂ ‡
}%% 
)%% 
;%% 
services&& 
.&& 
AddSingleton&& !
<&&! ""
IDeploymentStepFactory&&" 8
>&&8 9
(&&9 :
new&&: =5
)SiteSettingsPropertyDeploymentStepFactory&&> g
<&&g h4
'ExportContentToDeploymentTargetSettings	&&h è
>
&&è ê
(
&&ê ë
)
&&ë í
)
&&í ì
;
&&ì î
}(( 	
})) 
}** §9
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Drivers\ContentOptionsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Drivers &
{ 
public		 

class		 '
ContentOptionsDisplayDriver		 ,
:		- .
DisplayDriver		/ <
<		< =#
ContentOptionsViewModel		= T
>		T U
{

 
	protected 
override 
void 
BuildPrefix  +
(+ ,#
ContentOptionsViewModel, C
modelD I
,I J
stringK Q
htmlFieldPrefixR a
)a b
{ 	
Prefix 
= 
$str 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /#
ContentOptionsViewModel/ F
modelG L
)L M
{ 	
return 

Initialize 
< #
ContentOptionsViewModel 5
>5 6
(6 7
$str7 U
,U V
mW X
=>Y [(
BuildContentOptionsViewModel\ x
(x y
my z
,z {
model	| Å
)
Å Ç
)
Ç É
.
É Ñ
Location
Ñ å
(
å ç
$str
ç ö
,
ö õ
$str
ú ®
)
® ©
;
© ™
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,#
ContentOptionsViewModel, C
modelD I
)I J
{ 	
return 
Combine 
( 

Initialize 
< #
ContentOptionsViewModel 2
>2 3
(3 4
$str4 M
,M N
mO P
=>Q S(
BuildContentOptionsViewModelT p
(p q
mq r
,r s
modelt y
)y z
)z {
.{ |
Location	| Ñ
(
Ñ Ö
$str
Ö ê
)
ê ë
,
ë í

Initialize 
< #
ContentOptionsViewModel 2
>2 3
(3 4
$str4 M
,M N
mO P
=>Q S(
BuildContentOptionsViewModelT p
(p q
mq r
,r s
modelt y
)y z
)z {
.{ |
Location	| Ñ
(
Ñ Ö
$str
Ö ê
)
ê ë
,
ë í

Initialize 
< #
ContentOptionsViewModel 2
>2 3
(3 4
$str4 N
,N O
mP Q
=>R T(
BuildContentOptionsViewModelU q
(q r
mr s
,s t
modelu z
)z {
){ |
.| }
Location	} Ö
(
Ö Ü
$str
Ü í
)
í ì
,
ì î

Initialize 
< #
ContentOptionsViewModel 2
>2 3
(3 4
$str4 N
,N O
mP Q
=>R T(
BuildContentOptionsViewModelU q
(q r
mr s
,s t
modelu z
)z {
){ |
.| }
Location	} Ö
(
Ö Ü
$str
Ü î
)
î ï
,
ï ñ

Initialize 
< #
ContentOptionsViewModel 2
>2 3
(3 4
$str4 Z
,Z [
m\ ]
=>^ `(
BuildContentOptionsViewModela }
(} ~
m~ 
,	 Ä
model
Å Ü
)
Ü á
)
á à
.
à â
Location
â ë
(
ë í
$str
í †
)
† °
) 
; 
} 	
public!! 
override!! 
async!! 
Task!! "
<!!" #
IDisplayResult!!# 1
>!!1 2
UpdateAsync!!3 >
(!!> ?#
ContentOptionsViewModel!!? V
model!!W \
,!!\ ]
IUpdateModel!!^ j
updater!!k r
)!!r s
{"" 	
var## 
	viewModel## 
=## 
new## #
ContentOptionsViewModel##  7
(##7 8
)##8 9
;##9 :
if$$ 
($$ 
await$$ 
updater$$ 
.$$ 
TryUpdateModelAsync$$ 1
($$1 2
	viewModel$$2 ;
,$$; <
Prefix$$= C
)$$C D
)$$D E
{%% 
model&& 
.&& 
RouteValues&& !
.&&! "
TryAdd&&" (
(&&( )
$str&&) :
,&&: ;
	viewModel&&< E
.&&E F
OrderBy&&F M
)&&M N
;&&N O
model'' 
.'' 
RouteValues'' !
.''! "
TryAdd''" (
(''( )
$str'') A
,''A B
	viewModel''C L
.''L M
ContentsStatus''M [
)''[ \
;''\ ]
model(( 
.(( 
RouteValues(( !
.((! "
TryAdd((" (
(((( )
$str(() F
,((F G
	viewModel((H Q
.((Q R
SelectedContentType((R e
)((e f
;((f g
model)) 
.)) 
RouteValues)) !
.))! "
TryAdd))" (
())( )
$str))) >
,))> ?
	viewModel))@ I
.))I J
DisplayText))J U
)))U V
;))V W
}** 
return,, 
Edit,, 
(,, 
model,, 
),, 
;,, 
}-- 	
private// 
static// 
void// (
BuildContentOptionsViewModel// 8
(//8 9#
ContentOptionsViewModel//9 P
m//Q R
,//R S#
ContentOptionsViewModel//T k
model//l q
)//q r
{00 	
m11 
.11 
ContentTypeOptions11  
=11! "
model11# (
.11( )
ContentTypeOptions11) ;
;11; <
m22 
.22 
ContentStatuses22 
=22 
model22  %
.22% &
ContentStatuses22& 5
;225 6
m33 
.33 
ContentSorts33 
=33 
model33 "
.33" #
ContentSorts33# /
;33/ 0
m44 
.44 
ContentsBulkAction44  
=44! "
model44# (
.44( )
ContentsBulkAction44) ;
;44; <
m55 
.55 
CreatableTypes55 
=55 
model55 $
.55$ %
CreatableTypes55% 3
;553 4
m66 
.66 

StartIndex66 
=66 
model66  
.66  !

StartIndex66! +
;66+ ,
m77 
.77 
EndIndex77 
=77 
model77 
.77 
EndIndex77 '
;77' (
m88 
.88 
ContentItemsCount88 
=88  !
model88" '
.88' (
ContentItemsCount88( 9
;889 :
m99 
.99 
TotalItemCount99 
=99 
model99 $
.99$ %
TotalItemCount99% 3
;993 4
}:: 	
};; 
}<< ˘h
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Drivers\ContentsDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Drivers &
{ 
public 

class 
ContentsDriver 
:  ! 
ContentDisplayDriver" 6
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public 
ContentsDriver 
( %
IContentDefinitionManager %$
contentDefinitionManager& >
,> ? 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ContentItem/ :
contentItem; F
,F G
IUpdateModelH T
updaterU \
)\ ]
{   	
var$$ 
context$$ 
=$$  
_httpContextAccessor$$ .
.$$. /
HttpContext$$/ :
;$$: ;
var%% 
results%% 
=%% 
new%% 
List%% "
<%%" #
IDisplayResult%%# 1
>%%1 2
(%%2 3
)%%3 4
;%%4 5
var&& !
contentTypeDefinition&& %
=&&& '%
_contentDefinitionManager&&( A
.&&A B
GetTypeDefinition&&B S
(&&S T
contentItem&&T _
.&&_ `
ContentType&&` k
)&&k l
;&&l m
var'' !
contentsMetadataShape'' %
=''& '
Shape''( -
(''- .
$str''. @
,''@ A
new((  
ContentItemViewModel(( (
(((( )
contentItem(() 4
)((4 5
)((5 6
.)) 
Location)) 
()) 
$str)) "
,))" #
$str))$ 4
)))4 5
.** 
Location** 
(** 
$str** '
,**' (
$str**) 2
)**2 3
;**3 4
if,, 
(,, !
contentTypeDefinition,, %
!=,,& (
null,,) -
),,- .
{-- !
contentsMetadataShape.. %
...% &

Displaying..& 0
(..0 1
ctx..1 4
=>..5 7
{// 
var00 

stereotype00 "
=00# $
$str00% '
;00' (
var11 
settings11  
=11! "!
contentTypeDefinition11# 8
?118 9
.119 :
GetSettings11: E
<11E F
ContentTypeSettings11F Y
>11Y Z
(11Z [
)11[ \
;11\ ]
if22 
(22 
settings22  
!=22! #
null22$ (
)22( )
{33 

stereotype44 "
=44# $
settings44% -
.44- .

Stereotype44. 8
;448 9
}55 
if77 
(77 
!77 
String77 
.77  
IsNullOrEmpty77  -
(77- .

stereotype77. 8
)778 9
&&77: <
!77= >
String77> D
.77D E
Equals77E K
(77K L
$str77L U
,77U V

stereotype77W a
,77a b
StringComparison77c s
.77s t
OrdinalIgnoreCase	77t Ö
)
77Ö Ü
)
77Ü á
{88 
ctx99 
.99 
Shape99 !
.99! "
Metadata99" *
.99* +

Alternates99+ 5
.995 6
Add996 9
(999 :
$"99: <
{99< =

stereotype99= G
}99G H
__ContentsMetadata99H Z
"99Z [
)99[ \
;99\ ]
}:: 
var<< 
displayType<< #
=<<$ %
ctx<<& )
.<<) *
Shape<<* /
.<</ 0
Metadata<<0 8
.<<8 9
DisplayType<<9 D
;<<D E
if>> 
(>> 
!>> 
String>> 
.>>  
IsNullOrEmpty>>  -
(>>- .
displayType>>. 9
)>>9 :
&&>>; =
displayType>>> I
!=>>J L
$str>>M U
)>>U V
{?? 
ctx@@ 
.@@ 
Shape@@ !
.@@! "
Metadata@@" *
.@@* +

Alternates@@+ 5
.@@5 6
Add@@6 9
(@@9 :
$"@@: <
ContentsMetadata_@@< M
{@@M N
ctx@@N Q
.@@Q R
Shape@@R W
.@@W X
Metadata@@X `
.@@` a
DisplayType@@a l
}@@l m
"@@m n
)@@n o
;@@o p
ifBB 
(BB 
!BB 
StringBB #
.BB# $
IsNullOrEmptyBB$ 1
(BB1 2

stereotypeBB2 <
)BB< =
&&BB> @
!BBA B
StringBBB H
.BBH I
EqualsBBI O
(BBO P
$strBBP Y
,BBY Z

stereotypeBB[ e
,BBe f
StringComparisonBBg w
.BBw x
OrdinalIgnoreCase	BBx â
)
BBâ ä
)
BBä ã
{CC 
ctxDD 
.DD  
ShapeDD  %
.DD% &
MetadataDD& .
.DD. /

AlternatesDD/ 9
.DD9 :
AddDD: =
(DD= >
$"DD> @
{DD@ A

stereotypeDDA K
}DDK L
_DDL M
{DDM N
displayTypeDDN Y
}DDY Z
__ContentsMetadataDDZ l
"DDl m
)DDm n
;DDn o
}EE 
}FF 
}HH 
)HH 
;HH 
resultsJJ 
.JJ 
AddJJ 
(JJ !
contentsMetadataShapeJJ 1
)JJ1 2
;JJ2 3
resultsKK 
.KK 
AddKK 
(KK 
ShapeKK !
(KK! "
$strKK" C
,KKC D
newKKE H 
ContentItemViewModelKKI ]
(KK] ^
contentItemKK^ i
)KKi j
)KKj k
.KKk l
LocationKKl t
(KKt u
$str	KKu É
,
KKÉ Ñ
$str
KKÖ ë
)
KKë í
)
KKí ì
;
KKì î
resultsLL 
.LL 
AddLL 
(LL 
ShapeLL !
(LL! "
$strLL" F
,LLF G
newLLH K 
ContentItemViewModelLLL `
(LL` a
contentItemLLa l
)LLl m
)LLm n
.LLn o
LocationLLo w
(LLw x
$str	LLx Ü
,
LLÜ á
$str
LLà ò
)
LLò ô
.MM 

RenderWhenMM 
(MM  
asyncMM  %
(MM& '
)MM' (
=>MM) +
{NN 
varOO  
hasPublishPermissionOO 0
=OO1 2
awaitOO3 8!
_authorizationServiceOO9 N
.OON O
AuthorizeAsyncOOO ]
(OO] ^
contextOO^ e
.OOe f
UserOOf j
,OOj k
CommonPermissionsOOl }
.OO} ~
PublishContent	OO~ å
,
OOå ç
contentItem
OOé ô
)
OOô ö
;
OOö õ
varPP 
hasDeletePermissionPP /
=PP0 1
awaitPP2 7!
_authorizationServicePP8 M
.PPM N
AuthorizeAsyncPPN \
(PP\ ]
contextPP] d
.PPd e
UserPPe i
,PPi j
CommonPermissionsPPk |
.PP| }
DeleteContent	PP} ä
,
PPä ã
contentItem
PPå ó
)
PPó ò
;
PPò ô
varQQ  
hasPreviewPermissionQQ 0
=QQ1 2
awaitQQ3 8!
_authorizationServiceQQ9 N
.QQN O
AuthorizeAsyncQQO ]
(QQ] ^
contextQQ^ e
.QQe f
UserQQf j
,QQj k
CommonPermissionsQQl }
.QQ} ~
PreviewContent	QQ~ å
,
QQå ç
contentItem
QQé ô
)
QQô ö
;
QQö õ
varRR 
hasClonePermissionRR .
=RR/ 0
awaitRR1 6!
_authorizationServiceRR7 L
.RRL M
AuthorizeAsyncRRM [
(RR[ \
contextRR\ c
.RRc d
UserRRd h
,RRh i
CommonPermissionsRRj {
.RR{ |
CloneContent	RR| à
,
RRà â
contentItem
RRä ï
)
RRï ñ
;
RRñ ó
ifTT 
(TT  
hasPublishPermissionTT 0
||TT1 3
hasDeletePermissionTT4 G
||TTH J 
hasPreviewPermissionTTK _
||TT` b
hasClonePermissionTTc u
)TTu v
{UU 
returnVV "
trueVV# '
;VV' (
}WW 
returnYY 
falseYY $
;YY$ %
}ZZ 
)ZZ 
)[[ 
;[[ 
}\\ 
results^^ 
.^^ 
Add^^ 
(^^ 
Shape^^ 
(^^ 
$str^^ 9
,^^9 :
new^^; > 
ContentItemViewModel^^? S
(^^S T
contentItem^^T _
)^^_ `
)^^` a
.^^a b
Location^^b j
(^^j k
$str^^k y
,^^y z
$str	^^{ Ñ
)
^^Ñ Ö
)
^^Ö Ü
;
^^Ü á
results__ 
.__ 
Add__ 
(__ 
Shape__ 
(__ 
$str__ 9
,__9 :
new__; > 
ContentItemViewModel__? S
(__S T
contentItem__T _
)___ `
)__` a
.__a b
Location__b j
(__j k
$str__k y
,__y z
$str	__{ Ñ
)
__Ñ Ö
)
__Ö Ü
;
__Ü á
returnaa 
Combineaa 
(aa 
resultsaa "
.aa" #
ToArrayaa# *
(aa* +
)aa+ ,
)aa, -
;aa- .
}bb 	
publicdd 
overridedd 
IDisplayResultdd &
Editdd' +
(dd+ ,
ContentItemdd, 7
contentItemdd8 C
,ddC D
IUpdateModelddE Q
updaterddR Y
)ddY Z
{ee 	
varff 
contextff 
=ff  
_httpContextAccessorff .
.ff. /
HttpContextff/ :
;ff: ;
vargg !
contentTypeDefinitiongg %
=gg& '%
_contentDefinitionManagergg( A
.ggA B
GetTypeDefinitionggB S
(ggS T
contentItemggT _
.gg_ `
ContentTypegg` k
)ggk l
;ggl m
varhh 
resultshh 
=hh 
newhh 
Listhh "
<hh" #
IDisplayResulthh# 1
>hh1 2
(hh2 3
)hh3 4
;hh4 5
ifjj 
(jj !
contentTypeDefinitionjj %
==jj& (
nulljj) -
)jj- .
{kk 
returnll 
nullll 
;ll 
}mm 
resultsoo 
.oo 
Addoo 
(oo 
Dynamicoo 
(oo  
$stroo  7
)oo7 8
.oo8 9
Locationoo9 A
(ooA B
$strooB N
)ooN O
.pp 

RenderWhenpp 
(pp 
(pp 
)pp 
=>pp !!
_authorizationServicepp" 7
.pp7 8
AuthorizeAsyncpp8 F
(ppF G
contextppG N
.ppN O
UserppO S
,ppS T
CommonPermissionsppU f
.ppf g
PublishContentppg u
,ppu v
contentItem	ppw Ç
)
ppÇ É
)
ppÉ Ñ
)
ppÑ Ö
;
ppÖ Ü
resultsrr 
.rr 
Addrr 
(rr 
Dynamicrr 
(rr  
$strrr  9
)rr9 :
.rr: ;
Locationrr; C
(rrC D
$strrrD P
)rrP Q
.ss 

RenderWhenss 
(ss 
asyncss !
(ss" #
)ss# $
=>ss% '
{tt 
ifuu 
(uu !
contentTypeDefinitionuu -
.uu- .
GetSettingsuu. 9
<uu9 :
ContentTypeSettingsuu: M
>uuM N
(uuN O
)uuO P
.uuP Q
	DraftableuuQ Z
&&uu[ ]
awaitvv !
_authorizationServicevv 3
.vv3 4
AuthorizeAsyncvv4 B
(vvB C
contextvvC J
.vvJ K
UservvK O
,vvO P
CommonPermissionsvvQ b
.vvb c
EditContentvvc n
,vvn o
contentItemvvp {
)vv{ |
)vv| }
{ww 
returnxx 
truexx #
;xx# $
}yy 
return{{ 
false{{  
;{{  !
}|| 
)|| 
)}} 
;}} 
return 
Combine 
( 
results "
." #
ToArray# *
(* +
)+ ,
), -
;- .
}
ÄÄ 	
}
ÅÅ 
}ÇÇ å#
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Drivers\DateEditorDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Drivers &
{ 
public 

class 
DateEditorDriver !
:" #$
ContentPartDisplayDriver$ <
<< =

CommonPart= G
>G H
{ 
private 
readonly 
ILocalClock $
_localClock% 0
;0 1
public 
DateEditorDriver 
(  
ILocalClock  +

localClock, 6
)6 7
{ 	
_localClock 
= 

localClock $
;$ %
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,

CommonPart, 6
part7 ;
,; <"
BuildPartEditorContext= S
contextT [
)[ \
{ 	
var 
settings 
= 
context "
." #
TypePartDefinition# 5
.5 6
GetSettings6 A
<A B
CommonPartSettingsB T
>T U
(U V
)V W
;W X
if 
( 
settings 
. 
DisplayDateEditor *
)* +
{ 
return 

Initialize !
<! "
DateEditorViewModel" 5
>5 6
(6 7
$str7 N
,N O
asyncP U
modelV [
=>\ ^
{ 
model 
. 
LocalDateTime '
=( )
part* .
.. /
ContentItem/ :
.: ;

CreatedUtc; E
.E F
HasValueF N
? 
( 
DateTime 
?  
)  !
(! "
await" '
_localClock( 3
.3 4
ConvertToLocalAsync4 G
(G H
partH L
.L M
ContentItemM X
.X Y

CreatedUtcY c
.c d
Valued i
)i j
)j k
.k l
DateTimel t
:   
null   
;   
}!! 
)!! 
;!! 
}"" 
return$$ 
null$$ 
;$$ 
}%% 	
public'' 
override'' 
async'' 
Task'' "
<''" #
IDisplayResult''# 1
>''1 2
UpdateAsync''3 >
(''> ?

CommonPart''? I
part''J N
,''N O
IUpdateModel''P \
updater''] d
,''d e#
UpdatePartEditorContext''f }
context	''~ Ö
)
''Ö Ü
{(( 	
var)) 
settings)) 
=)) 
context)) "
.))" #
TypePartDefinition))# 5
.))5 6
GetSettings))6 A
<))A B
CommonPartSettings))B T
>))T U
())U V
)))V W
;))W X
if++ 
(++ 
settings++ 
.++ 
DisplayDateEditor++ *
)++* +
{,, 
var-- 
model-- 
=-- 
new-- 
DateEditorViewModel--  3
(--3 4
)--4 5
;--5 6
await.. 
updater.. 
... 
TryUpdateModelAsync.. 1
(..1 2
model..2 7
,..7 8
Prefix..9 ?
)..? @
;..@ A
if00 
(00 
model00 
.00 
LocalDateTime00 '
==00( *
null00+ /
)00/ 0
{11 
part22 
.22 
ContentItem22 $
.22$ %

CreatedUtc22% /
=220 1
null222 6
;226 7
}33 
else44 
{55 
part66 
.66 
ContentItem66 $
.66$ %

CreatedUtc66% /
=660 1
await662 7
_localClock668 C
.66C D
ConvertToUtcAsync66D U
(66U V
model66V [
.66[ \
LocalDateTime66\ i
.66i j
Value66j o
)66o p
;66p q
}77 
}88 
return:: 
Edit:: 
(:: 
part:: 
,:: 
context:: %
)::% &
;::& '
};; 	
}<< 
}== øD
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Drivers\OwnerEditorDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Drivers &
{ 
public 

class 
OwnerEditorDriver "
:# $$
ContentPartDisplayDriver% =
<= >

CommonPart> H
>H I
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
UserManager $
<$ %
IUser% *
>* +
_userManager, 8
;8 9
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
OwnerEditorDriver  
(  !!
IAuthorizationService! 6 
authorizationService7 K
,K L 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
UserManager 
< 
IUser 
> 
userManager *
,* +
IStringLocalizer 
< 
OwnerEditorDriver .
>. /
stringLocalizer0 ?
)? @
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_userManager 
= 
userManager &
;& '
S   
=   
stringLocalizer   
;    
}!! 	
public## 
override## 
async## 
Task## "
<##" #
IDisplayResult### 1
>##1 2
	EditAsync##3 <
(##< =

CommonPart##= G
part##H L
,##L M"
BuildPartEditorContext##N d
context##e l
)##l m
{$$ 	
var%% 
currentUser%% 
=%%  
_httpContextAccessor%% 2
.%%2 3
HttpContext%%3 >
?%%> ?
.%%? @
User%%@ D
;%%D E
if'' 
('' 
currentUser'' 
=='' 
null'' #
||''$ &
!''' (
(''( )
await'') .!
_authorizationService''/ D
.''D E
AuthorizeAsync''E S
(''S T
currentUser''T _
,''_ `
StandardPermissions''a t
.''t u
	SiteOwner''u ~
,''~ 
part
''Ä Ñ
)
''Ñ Ö
)
''Ö Ü
)
''Ü á
{(( 
return)) 
null)) 
;)) 
}** 
var,, 
settings,, 
=,, 
context,, "
.,," #
TypePartDefinition,,# 5
.,,5 6
GetSettings,,6 A
<,,A B
CommonPartSettings,,B T
>,,T U
(,,U V
),,V W
;,,W X
if.. 
(.. 
settings.. 
... 
DisplayOwnerEditor.. +
)..+ ,
{// 
return00 

Initialize00 !
<00! " 
OwnerEditorViewModel00" 6
>006 7
(007 8
$str008 P
,00P Q
async00R W
model00X ]
=>00^ `
{11 
if22 
(22 
part22 
.22 
ContentItem22 (
.22( )
Owner22) .
!=22/ 1
null222 6
)226 7
{33 
var55 
user55  
=55! "
await55# (
_userManager55) 5
.555 6
FindByIdAsync556 C
(55C D
part55D H
.55H I
ContentItem55I T
.55T U
Owner55U Z
)55Z [
;55[ \
model66 
.66 
	OwnerName66 '
=66( )
user66* .
.66. /
UserName66/ 7
;667 8
}77 
}88 
)88 
;88 
}99 
return;; 
null;; 
;;; 
}<< 	
public>> 
override>> 
async>> 
Task>> "
<>>" #
IDisplayResult>># 1
>>>1 2
UpdateAsync>>3 >
(>>> ?

CommonPart>>? I
part>>J N
,>>N O#
UpdatePartEditorContext>>P g
context>>h o
)>>o p
{?? 	
var@@ 
currentUser@@ 
=@@  
_httpContextAccessor@@ 2
.@@2 3
HttpContext@@3 >
?@@> ?
.@@? @
User@@@ D
;@@D E
ifBB 
(BB 
currentUserBB 
==BB 
nullBB #
||BB$ &
!BB' (
(BB( )
awaitBB) .!
_authorizationServiceBB/ D
.BBD E
AuthorizeAsyncBBE S
(BBS T
currentUserBBT _
,BB_ `
StandardPermissionsBBa t
.BBt u
	SiteOwnerBBu ~
,BB~ 
part
BBÄ Ñ
)
BBÑ Ö
)
BBÖ Ü
)
BBÜ á
{CC 
returnDD 
nullDD 
;DD 
}EE 
varGG 
settingsGG 
=GG 
contextGG "
.GG" #
TypePartDefinitionGG# 5
.GG5 6
GetSettingsGG6 A
<GGA B
CommonPartSettingsGGB T
>GGT U
(GGU V
)GGV W
;GGW X
ifII 
(II 
!II 
settingsII 
.II 
DisplayOwnerEditorII ,
)II, -
{JJ 
ifKK 
(KK 
partKK 
.KK 
ContentItemKK $
.KK$ %
OwnerKK% *
==KK+ -
nullKK. 2
)KK2 3
{LL 
partMM 
.MM 
ContentItemMM $
.MM$ %
OwnerMM% *
=MM+ ,
currentUserMM- 8
.MM8 9
FindFirstValueMM9 G
(MMG H

ClaimTypesMMH R
.MMR S
NameIdentifierMMS a
)MMa b
;MMb c
}NN 
}OO 
elsePP 
{QQ 
varRR 
modelRR 
=RR 
newRR  
OwnerEditorViewModelRR  4
(RR4 5
)RR5 6
;RR6 7
ifTT 
(TT 
partTT 
.TT 
ContentItemTT $
.TT$ %
OwnerTT% *
!=TT+ -
nullTT. 2
)TT2 3
{UU 
varVV 
userVV 
=VV 
awaitVV $
_userManagerVV% 1
.VV1 2
FindByIdAsyncVV2 ?
(VV? @
partVV@ D
.VVD E
ContentItemVVE P
.VVP Q
OwnerVVQ V
)VVV W
;VVW X
modelWW 
.WW 
	OwnerNameWW #
=WW$ %
userWW& *
.WW* +
UserNameWW+ 3
;WW3 4
}XX 
varZZ 
priorOwnerNameZZ "
=ZZ# $
modelZZ% *
.ZZ* +
	OwnerNameZZ+ 4
;ZZ4 5
await[[ 
context[[ 
.[[ 
Updater[[ %
.[[% &
TryUpdateModelAsync[[& 9
([[9 :
model[[: ?
,[[? @
Prefix[[A G
)[[G H
;[[H I
if]] 
(]] 
model]] 
.]] 
	OwnerName]] #
!=]]$ &
priorOwnerName]]' 5
)]]5 6
{^^ 
var__ 
newOwner__  
=__! "
(__# $
await__$ )
_userManager__* 6
.__6 7
FindByNameAsync__7 F
(__F G
model__G L
.__L M
	OwnerName__M V
)__V W
)__W X
;__X Y
ifaa 
(aa 
newOwneraa  
==aa! #
nullaa$ (
)aa( )
{bb 
contextcc 
.cc  
Updatercc  '
.cc' (

ModelStatecc( 2
.cc2 3
AddModelErrorcc3 @
(cc@ A
$strccA W
,ccW X
SccY Z
[ccZ [
$strcc[ n
]ccn o
)cco p
;ccp q
}dd 
elseee 
{ff 
partgg 
.gg 
ContentItemgg (
.gg( )
Ownergg) .
=gg/ 0
awaitgg1 6
_userManagergg7 C
.ggC D
GetUserIdAsyncggD R
(ggR S
newOwnerggS [
)gg[ \
;gg\ ]
}hh 
}ii 
}jj 
returnll 
awaitll 
	EditAsyncll "
(ll" #
partll# '
,ll' (
contextll) 0
)ll0 1
;ll1 2
}mm 	
}nn 
}oo ÚC
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Feeds\CommonFeedItemBuilder.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Feeds $
.$ %
Builders% -
{ 
public 

class !
CommonFeedItemBuilder &
:' (
IFeedItemBuilder) 9
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public !
CommonFeedItemBuilder $
($ %
IContentManager% 4
contentManager5 C
)C D
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task 
PopulateAsync '
(' (
FeedContext( 3
context4 ;
); <
{ 	
foreach 
( 
var 
feedItem !
in" $
context% ,
., -
Response- 5
.5 6
Items6 ;
.; <
OfType< B
<B C
FeedItemC K
<K L
ContentItemL W
>W X
>X Y
(Y Z
)Z [
)[ \
{ 
var 
contentItem 
=  !
feedItem" *
.* +
Item+ /
;/ 0
var 
contentItemMetadata '
=( )
await* /
_contentManager0 ?
.? @
PopulateAspectAsync@ S
<S T
ContentItemMetadataT g
>g h
(h i
contentItemi t
)t u
;u v
var 

bodyAspect 
=  
await! &
_contentManager' 6
.6 7
PopulateAspectAsync7 J
<J K

BodyAspectK U
>U V
(V W
contentItemW b
)b c
;c d
var 
routes 
= 
contentItemMetadata 0
.0 1
DisplayRouteValues1 C
;C D
if"" 
("" 
context"" 
."" 
Format"" "
==""# %
$str""& +
)""+ ,
{## 
var$$ 
link$$ 
=$$ 
new$$ "
XElement$$# +
($$+ ,
$str$$, 2
)$$2 3
;$$3 4
var%% 
guid%% 
=%% 
new%% "
XElement%%# +
(%%+ ,
$str%%, 2
,%%2 3
new%%4 7

XAttribute%%8 B
(%%B C
$str%%C P
,%%P Q
$str%%R X
)%%X Y
)%%Y Z
;%%Z [
context'' 
.'' 
Response'' $
.''$ %
Contextualize''% 2
(''2 3
contextualize''3 @
=>''A C
{(( 
var)) 
request)) #
=))$ %
contextualize))& 3
.))3 4
Url))4 7
.))7 8
ActionContext))8 E
.))E F
HttpContext))F Q
.))Q R
Request))R Y
;))Y Z
var** 
url** 
=**  !
contextualize**" /
.**/ 0
Url**0 3
.**3 4
Action**4 :
(**: ;
routes**; A
[**A B
$str**B J
]**J K
.**K L
ToString**L T
(**T U
)**U V
,**V W
routes**X ^
[**^ _
$str**_ k
]**k l
.**l m
ToString**m u
(**u v
)**v w
,**w x
routes**y 
,	** Ä
request
**Å à
.
**à â
Scheme
**â è
)
**è ê
;
**ê ë
link,, 
.,, 
Add,,  
(,,  !
url,,! $
),,$ %
;,,% &
guid-- 
.-- 
Add--  
(--  !
url--! $
)--$ %
;--% &
}.. 
).. 
;.. 
feedItem00 
.00 
Element00 $
.00$ %
SetElementValue00% 4
(004 5
$str005 <
,00< =
contentItem00> I
.00I J
DisplayText00J U
)00U V
;00V W
feedItem11 
.11 
Element11 $
.11$ %
Add11% (
(11( )
link11) -
)11- .
;11. /
feedItem33 
.33 
Element33 $
.33$ %
Add33% (
(33( )
new33) ,
XElement33- 5
(335 6
$str336 C
,33C D
new33E H
XCData33I O
(33O P

bodyAspect33P Z
.33Z [
Body33[ _
?33_ `
.33` a
ToString33a i
(33i j
)33j k
??33l n
String33o u
.33u v
Empty33v {
)33{ |
)33| }
)33} ~
;33~ 
if55 
(55 
contentItem55 #
.55# $
PublishedUtc55$ 0
!=551 3
null554 8
)558 9
{66 
feedItem==  
.==  !
Element==! (
.==( )
SetElementValue==) 8
(==8 9
$str==9 B
,==B C
contentItem==D O
.==O P
PublishedUtc==P \
.==\ ]
Value==] b
.==b c
ToString==c k
(==k l
$str==l o
)==o p
)==p q
;==q r
}>> 
feedItem@@ 
.@@ 
Element@@ $
.@@$ %
Add@@% (
(@@( )
guid@@) -
)@@- .
;@@. /
}AA 
elseBB 
{CC 
contextDD 
.DD 
ResponseDD $
.DD$ %
ContextualizeDD% 2
(DD2 3
contextualizeDD3 @
=>DDA C
{EE 
varFF 
requestFF #
=FF$ %
contextualizeFF& 3
.FF3 4
UrlFF4 7
.FF7 8
ActionContextFF8 E
.FFE F
HttpContextFFF Q
.FFQ R
RequestFFR Y
;FFY Z
varGG 
urlGG 
=GG  !
contextualizeGG" /
.GG/ 0
UrlGG0 3
.GG3 4
ActionGG4 :
(GG: ;
routesGG; A
[GGA B
$strGGB J
]GGJ K
.GGK L
ToStringGGL T
(GGT U
)GGU V
,GGV W
routesGGX ^
[GG^ _
$strGG_ k
]GGk l
.GGl m
ToStringGGm u
(GGu v
)GGv w
,GGw x
routesGGy 
,	GG Ä
request
GGÅ à
.
GGà â
Scheme
GGâ è
)
GGè ê
;
GGê ë
contextII 
.II  
BuilderII  '
.II' (
AddPropertyII( 3
(II3 4
contextII4 ;
,II; <
feedItemII= E
,IIE F
$strIIG M
,IIM N
urlIIO R
)IIR S
;IIS T
}JJ 
)JJ 
;JJ 
contextLL 
.LL 
BuilderLL #
.LL# $
AddPropertyLL$ /
(LL/ 0
contextLL0 7
,LL7 8
feedItemLL9 A
,LLA B
$strLLC J
,LLJ K
contentItemLLL W
.LLW X
DisplayTextLLX c
)LLc d
;LLd e
contextMM 
.MM 
BuilderMM #
.MM# $
AddPropertyMM$ /
(MM/ 0
contextMM0 7
,MM7 8
feedItemMM9 A
,MMA B
newMMC F
XElementMMG O
(MMO P
$strMMP ]
,MM] ^
newMM_ b
XCDataMMc i
(MMi j

bodyAspectMMj t
.MMt u
BodyMMu y
?MMy z
.MMz {
ToString	MM{ É
(
MMÉ Ñ
)
MMÑ Ö
??
MMÜ à
String
MMâ è
.
MMè ê
Empty
MMê ï
)
MMï ñ
)
MMñ ó
)
MMó ò
;
MMò ô
ifOO 
(OO 
contentItemOO #
.OO# $
PublishedUtcOO$ 0
!=OO1 3
nullOO4 8
)OO8 9
{PP 
contextQQ 
.QQ  
BuilderQQ  '
.QQ' (
AddPropertyQQ( 3
(QQ3 4
contextQQ4 ;
,QQ; <
feedItemQQ= E
,QQE F
$strQQG W
,QQW X
contentItemQQY d
.QQd e
PublishedUtcQQe q
.QQq r
ValueQQr w
.QQw x
ToString	QQx Ä
(
QQÄ Å
$str
QQÅ Ñ
)
QQÑ Ö
)
QQÖ Ü
;
QQÜ á
}RR 
}SS 
}TT 
}UU 	
}VV 
}WW ∆
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
GraphQL &
{ 
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
public 

class 
Startup 
: 
StartupBase &
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
. 
AddContentGraphQL &
(& '
)' (
;( )
} 	
} 
} ´8
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Handlers\ContentsHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Handlers '
{ 
public		 

class		 
ContentsHandler		  
:		! "
ContentHandlerBase		# 5
{

 
private 
readonly 
	ITagCache "
	_tagCache# ,
;, -
public 
ContentsHandler 
( 
	ITagCache (
tagCache) 1
)1 2
{ 	
	_tagCache 
= 
tagCache  
;  !
} 	
public 
override 
Task 
PublishedAsync +
(+ ,!
PublishContentContext, A
contextB I
)I J
{ 	
return 
	_tagCache 
. 
RemoveTagAsync +
(+ ,
$", .
contentitemid:. <
{< =
context= D
.D E
ContentItemE P
.P Q
ContentItemIdQ ^
}^ _
"_ `
)` a
;a b
} 	
public 
override 
Task 
RemovedAsync )
() * 
RemoveContentContext* >
context? F
)F G
{ 	
if 
( 
context 
. 
NoActiveVersionLeft +
)+ ,
{ 
return 
	_tagCache  
.  !
RemoveTagAsync! /
(/ 0
$"0 2
contentitemid:2 @
{@ A
contextA H
.H I
ContentItemI T
.T U
ContentItemIdU b
}b c
"c d
)d e
;e f
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
public!! 
override!! 
Task!! 
UnpublishedAsync!! -
(!!- .!
PublishContentContext!!. C
context!!D K
)!!K L
{"" 	
return## 
	_tagCache## 
.## 
RemoveTagAsync## +
(##+ ,
$"##, .
contentitemid:##. <
{##< =
context##= D
.##D E
ContentItem##E P
.##P Q
ContentItemId##Q ^
}##^ _
"##_ `
)##` a
;##a b
}$$ 	
public&& 
override&& 
Task&& %
GetContentItemAspectAsync&& 6
(&&6 7$
ContentItemAspectContext&&7 O
context&&P W
)&&W X
{'' 	
return(( 
context(( 
.(( 
ForAsync(( #
<((# $
ContentItemMetadata(($ 7
>((7 8
(((8 9
metadata((9 A
=>((B D
{)) 
if** 
(** 
metadata** 
.** 
CreateRouteValues** .
==**/ 1
null**2 6
)**6 7
{++ 
metadata,, 
.,, 
CreateRouteValues,, .
=,,/ 0
new,,1 4 
RouteValueDictionary,,5 I
{,,J K
{-- 
$str-- 
,--  
$str--! 7
}--7 8
,--8 9
{.. 
$str.. %
,..% &
$str..' .
}... /
,../ 0
{// 
$str// !
,//! "
$str//# +
}//+ ,
,//, -
{00 
$str00 
,00 
context00 &
.00& '
ContentItem00' 2
.002 3
ContentType003 >
}00> ?
}11 
;11 
}22 
if44 
(44 
metadata44 
.44 
EditorRouteValues44 .
==44/ 1
null442 6
)446 7
{55 
metadata66 
.66 
EditorRouteValues66 .
=66/ 0
new661 4 
RouteValueDictionary665 I
{66J K
{77 
$str77 
,77  
$str77! 7
}777 8
,778 9
{88 
$str88 %
,88% &
$str88' .
}88. /
,88/ 0
{99 
$str99 !
,99! "
$str99# )
}99) *
,99* +
{:: 
$str:: (
,::( )
context::* 1
.::1 2
ContentItem::2 =
.::= >
ContentItemId::> K
}::K L
};; 
;;; 
}<< 
if>> 
(>> 
metadata>> 
.>> 
AdminRouteValues>> -
==>>. 0
null>>1 5
)>>5 6
{?? 
metadata@@ 
.@@ 
AdminRouteValues@@ -
=@@. /
new@@0 3 
RouteValueDictionary@@4 H
{@@I J
{AA 
$strAA 
,AA  
$strAA! 7
}AA7 8
,AA8 9
{BB 
$strBB %
,BB% &
$strBB' .
}BB. /
,BB/ 0
{CC 
$strCC !
,CC! "
$strCC# )
}CC) *
,CC* +
{DD 
$strDD (
,DD( )
contextDD* 1
.DD1 2
ContentItemDD2 =
.DD= >
ContentItemIdDD> K
}DDK L
}EE 
;EE 
}FF 
ifHH 
(HH 
metadataHH 
.HH 
DisplayRouteValuesHH /
==HH0 2
nullHH3 7
)HH7 8
{II 
metadataJJ 
.JJ 
DisplayRouteValuesJJ /
=JJ0 1
newJJ2 5 
RouteValueDictionaryJJ6 J
{JJK L
{KK 
$strKK 
,KK  
$strKK! 7
}KK7 8
,KK8 9
{LL 
$strLL %
,LL% &
$strLL' -
}LL- .
,LL. /
{MM 
$strMM !
,MM! "
$strMM# ,
}MM, -
,MM- .
{NN 
$strNN (
,NN( )
contextNN* 1
.NN1 2
ContentItemNN2 =
.NN= >
ContentItemIdNN> K
}NNK L
}OO 
;OO 
}PP 
ifRR 
(RR 
metadataRR 
.RR 
RemoveRouteValuesRR .
==RR/ 1
nullRR2 6
)RR6 7
{SS 
metadataTT 
.TT 
RemoveRouteValuesTT .
=TT/ 0
newTT1 4 
RouteValueDictionaryTT5 I
{TTJ K
{UU 
$strUU 
,UU  
$strUU! 7
}UU7 8
,UU8 9
{VV 
$strVV %
,VV% &
$strVV' .
}VV. /
,VV/ 0
{WW 
$strWW !
,WW! "
$strWW# +
}WW+ ,
,WW, -
{XX 
$strXX (
,XX( )
contextXX* 1
.XX1 2
ContentItemXX2 =
.XX= >
ContentItemIdXX> K
}XXK L
}YY 
;YY 
}ZZ 
return\\ 
Task\\ 
.\\ 
CompletedTask\\ )
;\\) *
}]] 
)]] 
;]] 
}^^ 	
}__ 
}`` æ0
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Handlers\FullTextAspectContentHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Handlers '
{ 
public 

class (
FullTextAspectContentHandler -
:. /
ContentHandlerBase0 B
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public (
FullTextAspectContentHandler +
(+ ,%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?"
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9
IServiceProvider 
serviceProvider ,
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A"
_liquidTemplateManager   "
=  # $!
liquidTemplateManager  % :
;  : ;
_serviceProvider!! 
=!! 
serviceProvider!! .
;!!. /
}"" 	
public$$ 
override$$ 
Task$$ %
GetContentItemAspectAsync$$ 6
($$6 7$
ContentItemAspectContext$$7 O
context$$P W
)$$W X
{%% 	
var&& !
contentTypeDefinition&& %
=&&& '%
_contentDefinitionManager&&( A
.&&A B
GetTypeDefinition&&B S
(&&S T
context&&T [
.&&[ \
ContentItem&&\ g
.&&g h
ContentType&&h s
)&&s t
;&&t u
if(( 
((( !
contentTypeDefinition(( %
==((& (
null(() -
)((- .
{)) 
return** 
Task** 
.** 
CompletedTask** )
;**) *
}++ 
return-- 
context-- 
.-- 
ForAsync-- #
<--# $
FullTextAspect--$ 2
>--2 3
(--3 4
async--4 9
fullTextAspect--: H
=>--I K
{.. 
var// !
contentTypeDefinition// )
=//* +%
_contentDefinitionManager//, E
.//E F
GetTypeDefinition//F W
(//W X
context//X _
.//_ `
ContentItem//` k
.//k l
ContentType//l w
)//w x
;//x y
var00 
settings00 
=00 !
contentTypeDefinition00 4
.004 5
GetSettings005 @
<00@ A"
FullTextAspectSettings00A W
>00W X
(00X Y
)00Y Z
;00Z [
if22 
(22 
settings22 
.22 
IncludeDisplayText22 /
)22/ 0
{33 
fullTextAspect44 "
.44" #
Segments44# +
.44+ ,
Add44, /
(44/ 0
context440 7
.447 8
ContentItem448 C
.44C D
DisplayText44D O
)44O P
;44P Q
}55 
if77 
(77 
settings77 
.77 
IncludeBodyAspect77 .
)77. /
{88 
var:: 
contentManager:: &
=::' (
_serviceProvider::) 9
.::9 :
GetRequiredService::: L
<::L M
IContentManager::M \
>::\ ]
(::] ^
)::^ _
;::_ `
var;; 

bodyAspect;; "
=;;# $
await;;% *
contentManager;;+ 9
.;;9 :
PopulateAspectAsync;;: M
<;;M N

BodyAspect;;N X
>;;X Y
(;;Y Z
context;;Z a
.;;a b
ContentItem;;b m
);;m n
;;;n o
if== 
(== 

bodyAspect== "
!===# %
null==& *
&&==+ -

bodyAspect==. 8
.==8 9
Body==9 =
!===> @
null==A E
)==E F
{>> 
using?? 
(?? 
var?? "
sw??# %
=??& '
new??( +
StringWriter??, 8
(??8 9
)??9 :
)??: ;
{@@ 

bodyAspectBB &
.BB& '
BodyBB' +
.BB+ ,
WriteToBB, 3
(BB3 4
swBB4 6
,BB6 7
NullHtmlEncoderBB8 G
.BBG H
DefaultBBH O
)BBO P
;BBP Q
fullTextAspectCC *
.CC* +
SegmentsCC+ 3
.CC3 4
AddCC4 7
(CC7 8
swCC8 :
.CC: ;
ToStringCC; C
(CCC D
)CCD E
)CCE F
;CCF G
}DD 
}EE 
}FF 
ifHH 
(HH 
settingsHH 
.HH #
IncludeFullTextTemplateHH 4
&&HH5 7
!HH8 9
StringHH9 ?
.HH? @
IsNullOrEmptyHH@ M
(HHM N
settingsHHN V
.HHV W
FullTextTemplateHHW g
)HHg h
)HHh i
{II 
varJJ 
resultJJ 
=JJ  
awaitJJ! &"
_liquidTemplateManagerJJ' =
.JJ= >
RenderAsyncJJ> I
(JJI J
settingsJJJ R
.JJR S
FullTextTemplateJJS c
,JJc d
NullEncoderJJe p
.JJp q
DefaultJJq x
,JJx y
context	JJz Å
.
JJÅ Ç
ContentItem
JJÇ ç
,
JJç é
scopeKK 
=>KK  
scopeKK! &
.KK& '
SetValueKK' /
(KK/ 0
$strKK0 =
,KK= >
contextKK? F
.KKF G
ContentItemKKG R
)KKR S
)KKS T
;KKT U
fullTextAspectMM "
.MM" #
SegmentsMM# +
.MM+ ,
AddMM, /
(MM/ 0
resultMM0 6
)MM6 7
;MM7 8
}NN 
}OO 
)OO 
;OO 
}PP 	
}QQ 
}RR ä
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Indexing\AspectsContentIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Indexing '
{ 
public		 

class		 &
AspectsContentIndexHandler		 +
:		, -$
IContentItemIndexHandler		. F
{

 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public &
AspectsContentIndexHandler )
() *
IContentManager* 9
contentManager: H
)H I
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task 
BuildIndexAsync )
() *
BuildIndexContext* ;
context< C
)C D
{ 	
var 
body 
= 
await 
_contentManager ,
., -
PopulateAspectAsync- @
(@ A
contextA H
.H I
ContentItemI T
,T U
newV Y

BodyAspectZ d
(d e
)e f
)f g
;g h
if 
( 
body 
!= 
null 
) 
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
IndexingConstants %
.% &
BodyAspectBodyKey& 7
,7 8
body 
. 
Body 
,  
DocumentIndexOptions (
.( )
Analyze) 0
|1 2 
DocumentIndexOptions3 G
.G H
SanitizeH P
)P Q
;Q R
} 
context 
. 
DocumentIndex !
.! "
Set" %
(% &
IndexingConstants !
.! ""
DisplayTextAnalyzedKey" 8
,8 9
context   
.   
ContentItem   #
.  # $
DisplayText  $ /
,  / 0 
DocumentIndexOptions!! $
.!!$ %
Analyze!!% ,
|!!- . 
DocumentIndexOptions!!/ C
.!!C D
Sanitize!!D L
)!!L M
;!!M N
context## 
.## 
DocumentIndex## !
.##! "
Set##" %
(##% &
IndexingConstants$$ !
.$$! "
DisplayTextKey$$" 0
,$$0 1
context%% 
.%% 
ContentItem%% #
.%%# $
DisplayText%%$ /
,%%/ 0 
DocumentIndexOptions&& $
.&&$ %
Store&&% *
)&&* +
;&&+ ,
context(( 
.(( 
DocumentIndex(( !
.((! "
Set((" %
(((% &
IndexingConstants)) !
.))! "$
DisplayTextNormalizedKey))" :
,)): ;
context** 
.** 
ContentItem** #
.**# $
DisplayText**$ /
?**/ 0
.**0 1
ReplaceDiacritics**1 B
(**B C
)**C D
.**D E
ToLower**E L
(**L M
)**M N
,**N O 
DocumentIndexOptions++ $
.++$ %
Store++% *
)++* +
;+++ ,
},, 	
}-- 
}.. Ê9
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Indexing\ContentItemIndexCoordinator.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
Indexing		 '
{

 
public 

class '
ContentItemIndexCoordinator ,
:- .$
IContentItemIndexHandler/ G
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly !
ITypeActivatorFactory .
<. /
ContentPart/ :
>: ;
_contentPartFactory< O
;O P
private 
readonly 
IEnumerable $
<$ %$
IContentPartIndexHandler% =
>= >
_partIndexHandlers? Q
;Q R
private 
readonly 
IEnumerable $
<$ %%
IContentFieldIndexHandler% >
>> ?
_fieldIndexHandlers@ S
;S T
private 
readonly 
ILogger  
_logger! (
;( )
public '
ContentItemIndexCoordinator *
(* +%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?!
ITypeActivatorFactory !
<! "
ContentPart" -
>- .
contentPartFactory/ A
,A B
IEnumerable 
< $
IContentPartIndexHandler 0
>0 1
partIndexHandlers2 C
,C D
IEnumerable 
< %
IContentFieldIndexHandler 1
>1 2
fieldIndexHandlers3 E
,E F
ILogger 
< '
ContentItemIndexCoordinator /
>/ 0
logger1 7
)7 8
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_contentPartFactory 
=  !
contentPartFactory" 4
;4 5
_partIndexHandlers 
=  
partIndexHandlers! 2
;2 3
_fieldIndexHandlers   
=    !
fieldIndexHandlers  " 4
;  4 5
_logger!! 
=!! 
logger!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
BuildIndexAsync$$ )
($$) *
BuildIndexContext$$* ;
context$$< C
)$$C D
{%% 	
var&& !
contentTypeDefinition&& %
=&&& '%
_contentDefinitionManager&&( A
.&&A B
GetTypeDefinition&&B S
(&&S T
context&&T [
.&&[ \
ContentItem&&\ g
.&&g h
ContentType&&h s
)&&s t
;&&t u
if(( 
((( !
contentTypeDefinition(( %
==((& (
null(() -
)((- .
{)) 
return** 
;** 
}++ 
foreach-- 
(-- 
var-- %
contentTypePartDefinition-- 2
in--3 5!
contentTypeDefinition--6 K
.--K L
Parts--L Q
)--Q R
{.. 
var// 
partName// 
=// %
contentTypePartDefinition// 8
.//8 9
Name//9 =
;//= >
var00 
partTypeName00  
=00! "%
contentTypePartDefinition00# <
.00< =
PartDefinition00= K
.00K L
Name00L P
;00P Q
var11 
partActivator11 !
=11" #
_contentPartFactory11$ 7
.117 8
GetTypeActivator118 H
(11H I
partTypeName11I U
)11U V
;11V W
var22 
part22 
=22 
(22 
ContentPart22 '
)22' (
context22( /
.22/ 0
ContentItem220 ;
.22; <
Get22< ?
(22? @
partActivator22@ M
.22M N
Type22N R
,22R S
partName22T \
)22\ ]
;22] ^
var44 !
typePartIndexSettings44 )
=44* +%
contentTypePartDefinition44, E
.44E F
GetSettings44F Q
<44Q R 
ContentIndexSettings44R f
>44f g
(44g h
)44h i
;44i j
if77 
(77 
partName77 
!=77 
partTypeName77  ,
&&77- /
!770 1!
typePartIndexSettings771 F
.77F G
Included77G O
)77O P
{88 
continue99 
;99 
}:: 
await<< 
_partIndexHandlers<< (
.<<( )
InvokeAsync<<) 4
(<<4 5
(<<5 6
handler<<6 =
,<<= >
part<<? C
,<<C D%
contentTypePartDefinition<<E ^
,<<^ _
context<<` g
,<<g h!
typePartIndexSettings<<i ~
)<<~ 
=>
<<Ä Ç
handler== 
.== 
BuildIndexAsync== +
(==+ ,
part==, 0
,==0 1%
contentTypePartDefinition==2 K
,==K L
context==M T
,==T U!
typePartIndexSettings==V k
)==k l
,==l m
part>> 
,>> %
contentTypePartDefinition>> 7
,>>7 8
context>>9 @
,>>@ A!
typePartIndexSettings>>B W
,>>W X
_logger>>Y `
)>>` a
;>>a b
foreach@@ 
(@@ 
var@@ &
contentPartFieldDefinition@@ 7
in@@8 :%
contentTypePartDefinition@@; T
.@@T U
PartDefinition@@U c
.@@c d
Fields@@d j
)@@j k
{AA 
varBB "
partFieldIndexSettingsBB .
=BB/ 0&
contentPartFieldDefinitionBB1 K
.BBK L
GetSettingsBBL W
<BBW X 
ContentIndexSettingsBBX l
>BBl m
(BBm n
)BBn o
;BBo p
ifDD 
(DD 
!DD "
partFieldIndexSettingsDD /
.DD/ 0
IncludedDD0 8
)DD8 9
{EE 
continueFF  
;FF  !
}GG 
awaitII 
_fieldIndexHandlersII -
.II- .
InvokeAsyncII. 9
(II9 :
(II: ;
handlerII; B
,IIB C
partIID H
,IIH I%
contentTypePartDefinitionIIJ c
,IIc d&
contentPartFieldDefinitionIIe 
,	II Ä
context
IIÅ à
,
IIà â$
partFieldIndexSettings
IIä †
)
II† °
=>
II¢ §
handlerJJ 
.JJ  
BuildIndexAsyncJJ  /
(JJ/ 0
partJJ0 4
,JJ4 5%
contentTypePartDefinitionJJ6 O
,JJO P&
contentPartFieldDefinitionJJQ k
,JJk l
contextJJm t
,JJt u#
partFieldIndexSettings	JJv å
)
JJå ç
,
JJç é
partKK  
,KK  !%
contentTypePartDefinitionKK" ;
,KK; <&
contentPartFieldDefinitionKK= W
,KKW X
contextKKY `
,KK` a"
partFieldIndexSettingsKKb x
,KKx y
_logger	KKz Å
)
KKÅ Ç
;
KKÇ É
}LL 
}MM 
returnOO 
;OO 
}PP 	
}QQ 
}RR ¯%
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Indexing\DefaultContentIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Indexing '
{ 
public 

class &
DefaultContentIndexHandler +
:, -$
IContentItemIndexHandler. F
{ 
public 
Task 
BuildIndexAsync #
(# $
BuildIndexContext$ 5
context6 =
)= >
{		 	
context

 
.

 
DocumentIndex

 !
.

! "
Set

" %
(

% &
IndexingConstants !
.! "
ContentItemIdKey" 2
,2 3
context 
. 
ContentItem #
.# $
ContentItemId$ 1
,1 2 
DocumentIndexOptions $
.$ %
Store% *
)* +
;+ ,
context 
. 
DocumentIndex !
.! "
Set" %
(% &
IndexingConstants !
.! "#
ContentItemVersionIdKey" 9
,9 :
context 
. 
ContentItem #
.# $ 
ContentItemVersionId$ 8
,8 9 
DocumentIndexOptions $
.$ %
Store% *
)* +
;+ ,
context 
. 
DocumentIndex !
.! "
Set" %
(% &
IndexingConstants !
.! "
ContentTypeKey" 0
,0 1
context 
. 
ContentItem #
.# $
ContentType$ /
,/ 0 
DocumentIndexOptions $
.$ %
Store% *
)* +
;+ ,
context 
. 
DocumentIndex !
.! "
Set" %
(% &
IndexingConstants !
.! "
CreatedUtcKey" /
,/ 0
context 
. 
ContentItem #
.# $

CreatedUtc$ .
,. / 
DocumentIndexOptions $
.$ %
Store% *
)* +
;+ ,
context 
. 
DocumentIndex !
.! "
Set" %
(% &
IndexingConstants !
.! "
	LatestKey" +
,+ ,
context   
.   
ContentItem   #
.  # $
Latest  $ *
,  * + 
DocumentIndexOptions!! $
.!!$ %
Store!!% *
)!!* +
;!!+ ,
context## 
.## 
DocumentIndex## !
.##! "
Set##" %
(##% &
IndexingConstants$$ !
.$$! "
OwnerKey$$" *
,$$* +
context%% 
.%% 
ContentItem%% #
.%%# $
Owner%%$ )
,%%) * 
DocumentIndexOptions&& $
.&&$ %
Store&&% *
)&&* +
;&&+ ,
context(( 
.(( 
DocumentIndex(( !
.((! "
Set((" %
(((% &
IndexingConstants)) !
.))! "
	AuthorKey))" +
,))+ ,
context** 
.** 
ContentItem** #
.**# $
Author**$ *
,*** + 
DocumentIndexOptions++ $
.++$ %
Store++% *
)++* +
;+++ ,
context-- 
.-- 
DocumentIndex-- !
.--! "
Set--" %
(--% &
IndexingConstants.. !
...! "
ModifiedUtcKey.." 0
,..0 1
context// 
.// 
ContentItem// #
.//# $
ModifiedUtc//$ /
,/// 0 
DocumentIndexOptions00 $
.00$ %
Store00% *
)00* +
;00+ ,
context22 
.22 
DocumentIndex22 !
.22! "
Set22" %
(22% &
IndexingConstants33 !
.33! "
PublishedKey33" .
,33. /
context44 
.44 
ContentItem44 #
.44# $
	Published44$ -
,44- . 
DocumentIndexOptions55 $
.55$ %
Store55% *
)55* +
;55+ ,
context77 
.77 
DocumentIndex77 !
.77! "
Set77" %
(77% &
IndexingConstants88 !
.88! "
PublishedUtcKey88" 1
,881 2
context99 
.99 
ContentItem99 #
.99# $
PublishedUtc99$ 0
,990 1 
DocumentIndexOptions:: $
.::$ %
Store::% *
)::* +
;::+ ,
return<< 
Task<< 
.<< 
CompletedTask<< %
;<<% &
}== 	
}>> 
}?? ˝
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Indexing\FullTextContentIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Indexing '
{ 
public		 

class		 '
FullTextContentIndexHandler		 ,
:		- .$
IContentItemIndexHandler		/ G
{

 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public '
FullTextContentIndexHandler *
(* +
IContentManager+ :
contentManager; I
)I J
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task 
BuildIndexAsync )
() *
BuildIndexContext* ;
context< C
)C D
{ 	
var 
result 
= 
await 
_contentManager .
.. /
PopulateAspectAsync/ B
<B C
FullTextAspectC Q
>Q R
(R S
contextS Z
.Z [
ContentItem[ f
)f g
;g h
foreach 
( 
var 
segment  
in! #
result$ *
.* +
Segments+ 3
)3 4
{ 
if 
( 
! 
String 
. 
IsNullOrEmpty )
() *
segment* 1
)1 2
)2 3
{ 
context 
. 
DocumentIndex )
.) *
Set* -
(- .
IndexingConstants )
.) *
FullTextKey* 5
,5 6
segment 
,   
DocumentIndexOptions ,
., -
Analyze- 4
|5 6 
DocumentIndexOptions7 K
.K L
SanitizeL T
)T U
;U V
} 
}   
}!! 	
}"" 
}## —1
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\BuildDisplayFilter.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Liquid %
{ 
public 

class 
BuildDisplayFilter #
:$ %
ILiquidFilter& 3
{ 
private 
const 
int +
DefaultMaxContentItemRecursions 9
=: ;
$num< >
;> ?
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
static 
async 
	ValueTask "
<" #

FluidValue# -
>- .
Awaited/ 6
(6 7
Task7 ;
<; <
IShape< B
>B C
taskD H
)H I
{ 
return 

FluidValue !
.! "
Create" (
(( )
await) .
task/ 3
)3 4
;4 5
} 
var 
obj 
= 
input 
. 
ToObjectValue )
() *
)* +
;+ ,
if 
( 
! 
( 
obj 
is 
ContentItem $
contentItem% 0
)0 1
)1 2
{ 
contentItem 
= 
null "
;" #
if   
(   
obj   
is   
JObject   "
jObject  # *
)  * +
{!! 
contentItem"" 
=""  !
jObject""" )
."") *
ToObject""* 2
<""2 3
ContentItem""3 >
>""> ?
(""? @
)""@ A
;""A B
}## 
}$$ 
if(( 
((( 
contentItem(( 
?(( 
.(( 
ContentItemId(( *
==((+ -
null((. 2
)((2 3
{)) 
return** 
new** 
	ValueTask** $
<**$ %

FluidValue**% /
>**/ 0
(**0 1
NilValue**1 9
.**9 :
Instance**: B
)**B C
;**C D
}++ 
if-- 
(-- 
!-- 
ctx-- 
.-- 
AmbientValues-- "
.--" #
TryGetValue--# .
(--. /
$str--/ 9
,--9 :
out--; >
var--? B
services--C K
)--K L
)--L M
{.. 
throw// 
new// 
ArgumentException// +
(//+ ,
$str//, c
)//c d
;//d e
}00 
var22 
serviceProvider22 
=22  !
(22" #
IServiceProvider22# 3
)223 4
services224 <
;22< =
var44 '
buildDisplayRecursionHelper44 +
=44, -
serviceProvider44. =
.44= >
GetRequiredService44> P
<44P Q'
IContentItemRecursionHelper44Q l
<44l m
BuildDisplayFilter44m 
>	44 Ä
>
44Ä Å
(
44Å Ç
)
44Ç É
;
44É Ñ
var88 
maxRecursions88 
=88 
	arguments88  )
[88) *
$str88* :
]88: ;
;88; <
var99 
recursionLimit99 
=99  
maxRecursions99! .
.99. /
Type99/ 3
==994 6
FluidValues997 B
.99B C
Number99C I
?99J K
Convert99L S
.99S T
ToInt3299T [
(99[ \
maxRecursions99\ i
.99i j
ToNumberValue99j w
(99w x
)99x y
)99y z
:99{ |,
DefaultMaxContentItemRecursions	99} ú
;
99ú ù
if:: 
(:: '
buildDisplayRecursionHelper:: +
.::+ ,
IsRecursive::, 7
(::7 8
contentItem::8 C
,::C D
recursionLimit::E S
)::S T
)::T U
{;; 
return<< 
new<< 
	ValueTask<< $
<<<$ %

FluidValue<<% /
><</ 0
(<<0 1
NilValue<<1 9
.<<9 :
Instance<<: B
)<<B C
;<<C D
}== 
var?? 
displayType?? 
=?? 
	arguments?? '
[??' (
$str??( .
]??. /
.??/ 0
Or??0 2
(??2 3
	arguments??3 <
.??< =
At??= ?
(??? @
$num??@ A
)??A B
)??B C
.??C D
ToStringValue??D Q
(??Q R
)??R S
;??S T
var@@ 
displayManager@@ 
=@@  
serviceProvider@@! 0
.@@0 1
GetRequiredService@@1 C
<@@C D&
IContentItemDisplayManager@@D ^
>@@^ _
(@@_ `
)@@` a
;@@a b
varAA 
updateModelAccessorAA #
=AA$ %
serviceProviderAA& 5
.AA5 6
GetRequiredServiceAA6 H
<AAH I 
IUpdateModelAccessorAAI ]
>AA] ^
(AA^ _
)AA_ `
;AA` a
varCC 
taskCC 
=CC 
displayManagerCC %
.CC% &
BuildDisplayAsyncCC& 7
(CC7 8
contentItemCC8 C
,CCC D
updateModelAccessorCCE X
.CCX Y
ModelUpdaterCCY e
,CCe f
displayTypeCCg r
)CCr s
;CCs t
ifDD 
(DD 
taskDD 
.DD #
IsCompletedSuccessfullyDD ,
)DD, -
{EE 
returnFF 
newFF 
	ValueTaskFF $
<FF$ %

FluidValueFF% /
>FF/ 0
(FF0 1

FluidValueFF1 ;
.FF; <
CreateFF< B
(FFB C
taskFFC G
.FFG H
ResultFFH N
)FFN O
)FFO P
;FFP Q
}GG 
returnII 
AwaitedII 
(II 
taskII 
)II  
;II  !
}JJ 	
}KK 
}LL Ó
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\ContentItemFilter.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 
Liquid

 %
{ 
public 

class 
ContentItemFilter "
:# $
ILiquidFilter% 2
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, _
)_ `
;` a
} 
var 
contentManager 
=  
(! "
(" #
IServiceProvider# 3
)3 4
services4 <
)< =
.= >
GetRequiredService> P
<P Q
IContentManagerQ `
>` a
(a b
)b c
;c d
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Array* /
)/ 0
{ 
var 
contentItemIds "
=# $
input% *
.* +
	Enumerate+ 4
(4 5
)5 6
.6 7
Select7 =
(= >
x> ?
=>@ B
xC D
.D E
ToStringValueE R
(R S
)S T
)T U
.U V
ToArrayV ]
(] ^
)^ _
;_ `
return 

FluidValue !
.! "
Create" (
(( )
await) .
contentManager/ =
.= >
GetAsync> F
(F G
contentItemIdsG U
)U V
)V W
;W X
} 
else 
{ 
var   
contentItemId   !
=  " #
input  $ )
.  ) *
ToStringValue  * 7
(  7 8
)  8 9
;  9 :
return"" 

FluidValue"" !
.""! "
Create""" (
(""( )
await"") .
contentManager""/ =
.""= >
GetAsync""> F
(""F G
contentItemId""G T
)""T U
)""U V
;""V W
}## 
}$$ 	
}%% 
}&& •
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\ContentItemRecursionHelper.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Liquid %
{ 
public 

	interface '
IContentItemRecursionHelper 0
<0 1
T1 2
>2 3
where4 9
T: ;
:< =
ILiquidFilter> K
{ 
bool 
IsRecursive 
( 
ContentItem $
contentItem% 0
,0 1
int2 5
maxRecursions6 C
=D E
$numF G
)G H
;H I
} 
public 

class &
ContentItemRecursionHelper +
<+ ,
T, -
>- .
:/ 0'
IContentItemRecursionHelper1 L
<L M
TM N
>N O
whereP U
TV W
:X Y
ILiquidFilterZ g
{ 
private 

Dictionary 
< 
ContentItem &
,& '
int( +
>+ ,
_recursions- 8
=9 :
new; >

Dictionary? I
<I J
ContentItemJ U
,U V
intW Z
>Z [
([ \
)\ ]
;] ^
public 
bool 
IsRecursive 
(  
ContentItem  +
contentItem, 7
,7 8
int9 <
maxRecursions= J
=K L
$numM N
)N O
{ 	
if 
( 
_recursions 
. 
ContainsKey '
(' (
contentItem( 3
)3 4
)4 5
{ 
var 
counter 
= 
_recursions )
[) *
contentItem* 5
]5 6
;6 7
if 
( 
maxRecursions !
<" #
$num$ %
)% &
{ 
maxRecursions   !
=  " #
$num  $ %
;  % &
}!! 
if## 
(## 
counter## 
>## 
maxRecursions## +
)##+ ,
{$$ 
return%% 
true%% 
;%%  
}&& 
_recursions(( 
[(( 
contentItem(( '
]((' (
=(() *
counter((+ 2
+((3 4
$num((5 6
;((6 7
return)) 
false)) 
;)) 
}** 
_recursions,, 
[,, 
contentItem,, #
],,# $
=,,% &
$num,,' (
;,,( )
return-- 
false-- 
;-- 
}.. 	
}// 
}00 ‚/
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\ContentLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Liquid %
{ 
public		 

class		 -
!ContentLiquidTemplateEventHandler		 2
:		3 4'
ILiquidTemplateEventHandler		5 P
{

 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly !
IContentHandleManager .!
_contentHandleManager/ D
;D E
public -
!ContentLiquidTemplateEventHandler 0
(0 1
IContentManager1 @
contentManagerA O
,O P!
IContentHandleManagerQ f 
contentHandleManagerg {
){ |
{ 	
_contentManager 
= 
contentManager ,
;, -!
_contentHandleManager !
=" # 
contentHandleManager$ 8
;8 9
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
context 
. 
SetValue 
( 
$str &
,& '
new( +!
LiquidContentAccessor, A
(A B
)B C
)C D
;D E
context 
.  
MemberAccessStrategy (
.( )
Register) 1
<1 2"
LiquidPropertyAccessor2 H
,H I

FluidValueJ T
>T U
(U V
(V W
objW Z
,Z [
name\ `
)` a
=>b d
obje h
.h i
GetValueAsynci v
(v w
namew {
){ |
)| }
;} ~
context 
.  
MemberAccessStrategy (
.( )
Register) 1
<1 2!
LiquidContentAccessor2 G
,G H"
LiquidPropertyAccessorI _
>_ `
(` a
$stra p
,p q
objr u
=>v x
{ 
return 
new "
LiquidPropertyAccessor 1
(1 2
async2 7
contentItemId8 E
=>F H

FluidValueI S
.S T
CreateT Z
(Z [
await[ `
_contentManagera p
.p q
GetAsyncq y
(y z
contentItemId	z á
)
á à
)
à â
)
â ä
;
ä ã
} 
) 
; 
context 
.  
MemberAccessStrategy (
.( )
Register) 1
<1 2!
LiquidContentAccessor2 G
,G H"
LiquidPropertyAccessorI _
>_ `
(` a
$stra w
,w x
objy |
=>} 
{ 
return   
new   "
LiquidPropertyAccessor   1
(  1 2
async  2 7 
contentItemVersionId  8 L
=>  M O

FluidValue  P Z
.  Z [
Create  [ a
(  a b
await  b g
_contentManager  h w
.  w x
GetVersionAsync	  x á
(
  á à"
contentItemVersionId
  à ú
)
  ú ù
)
  ù û
)
  û ü
;
  ü †
}!! 
)!! 
;!! 
context## 
.##  
MemberAccessStrategy## (
.##( )
Register##) 1
<##1 2!
LiquidContentAccessor##2 G
,##G H"
LiquidPropertyAccessor##I _
>##_ `
(##` a
$str##a i
,##i j
obj##k n
=>##o q
new##r u#
LiquidPropertyAccessor	##v å
(
##å ç
name
##ç ë
=>
##í î%
GetContentByHandleAsync
##ï ¨
(
##¨ ≠
name
##≠ ±
,
##± ≤
true
##≥ ∑
)
##∑ ∏
)
##∏ π
)
##π ∫
;
##∫ ª
context%% 
.%%  
MemberAccessStrategy%% (
.%%( )
Register%%) 1
<%%1 2!
LiquidContentAccessor%%2 G
,%%G H

FluidValue%%I S
>%%S T
(%%T U
(%%U V
obj%%V Y
,%%Y Z
name%%[ _
)%%_ `
=>%%a c#
GetContentByHandleAsync%%d {
(%%{ |
name	%%| Ä
)
%%Ä Å
)
%%Å Ç
;
%%Ç É
return'' 
Task'' 
.'' 
CompletedTask'' %
;''% &
}(( 	
private** 
async** 
Task** 
<** 

FluidValue** %
>**% &#
GetContentByHandleAsync**' >
(**> ?
string**? E
handle**F L
,**L M
bool**N R
latest**S Y
=**Z [
false**\ a
)**a b
{++ 	
var,, 
contentItemId,, 
=,, 
await,,  %!
_contentHandleManager,,& ;
.,,; <!
GetContentItemIdAsync,,< Q
(,,Q R
handle,,R X
),,X Y
;,,Y Z
if.. 
(.. 
contentItemId.. 
==..  
null..! %
)..% &
{// 
return00 
NilValue00 
.00  
Instance00  (
;00( )
}11 
var33 
contentItem33 
=33 
await33 #
_contentManager33$ 3
.333 4
GetAsync334 <
(33< =
contentItemId33= J
,33J K
latest33L R
?33S T
VersionOptions33U c
.33c d
Latest33d j
:33k l
VersionOptions33m {
.33{ |
	Published	33| Ö
)
33Ö Ü
;
33Ü á
return44 

FluidValue44 
.44 
Create44 $
(44$ %
contentItem44% 0
)440 1
;441 2
}55 	
}66 
}77 ä
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\DisplayTextFilter.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Liquid %
{ 
public		 

class		 
DisplayTextFilter		 "
:		# $
ILiquidFilter		% 2
{

 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
var 
contentItem 
= 
input #
.# $
ToObjectValue$ 1
(1 2
)2 3
as4 6
ContentItem7 B
;B C
if 
( 
contentItem 
== 
null #
)# $
{ 
return 
new 
	ValueTask $
<$ %

FluidValue% /
>/ 0
(0 1
NilValue1 9
.9 :
Instance: B
)B C
;C D
} 
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
StringValue1 <
(< =
contentItem= H
.H I
DisplayTextI T
??U W
$strX Z
)Z [
)[ \
;\ ]
} 	
} 
} ë$
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\DisplayUrlFilter.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Liquid %
{ 
public 

class 
DisplayUrlFilter !
:" #
ILiquidFilter$ 1
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public 
DisplayUrlFilter 
(  
IContentManager  /
contentManager0 >
)> ?
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
var 
contentItem 
= 
input #
.# $
ToObjectValue$ 1
(1 2
)2 3
as4 6
ContentItem7 B
;B C 
RouteValueDictionary  
routeValues! ,
;, -
if 
( 
contentItem 
== 
null #
)# $
{ 
if 
( 
! 
ctx 
. 
AmbientValues &
.& '
TryGetValue' 2
(2 3
$str3 =
,= >
out? B
varC F
servicesValueG T
)T U
)U V
{   
throw!! 
new!! 
ArgumentException!! /
(!!/ 0
$str!!0 _
)!!_ `
;!!` a
}"" 
var## 
autoRouteOption## #
=##$ %
(##& '
(##' (
IServiceProvider##( 8
)##8 9
servicesValue##9 F
)##F G
.##G H
GetRequiredService##H Z
<##Z [
IOptions##[ c
<##c d
AutorouteOptions##d t
>##t u
>##u v
(##v w
)##w x
?##x y
.##y z
Value##z 
;	## Ä
routeValues$$ 
=$$ 
new$$ ! 
RouteValueDictionary$$" 6
($$6 7
autoRouteOption$$7 F
.$$F G
GlobalRouteValues$$G X
)$$X Y
;$$Y Z
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% (
(%%( )
input%%) .
.%%. /
ToStringValue%%/ <
(%%< =
)%%= >
)%%> ?
)%%? @
{&& 
throw'' 
new'' 
ArgumentException'' /
(''/ 0
$str''0 g
)''g h
;''h i
}(( 
routeValues)) 
[)) 
autoRouteOption)) +
.))+ ,
ContentItemIdKey)), <
]))< =
=))> ?
input))@ E
.))E F
ToStringValue))F S
())S T
)))T U
;))U V
}** 
else++ 
{,, 
var-- 
contentItemMetadata-- '
=--( )
await--* /
_contentManager--0 ?
.--? @
PopulateAspectAsync--@ S
<--S T
ContentItemMetadata--T g
>--g h
(--h i
contentItem--i t
)--t u
;--u v
routeValues.. 
=.. 
contentItemMetadata.. 1
...1 2
DisplayRouteValues..2 D
;..D E
}// 
if11 
(11 
!11 
ctx11 
.11 
AmbientValues11 "
.11" #
TryGetValue11# .
(11. /
$str11/ :
,11: ;
out11< ?
var11@ C
	urlHelper11D M
)11M N
)11N O
{22 
throw33 
new33 
ArgumentException33 +
(33+ ,
$str33, \
)33\ ]
;33] ^
}44 
var66 
linkUrl66 
=66 
(66 
(66 

IUrlHelper66 &
)66& '
	urlHelper66' 0
)660 1
.661 2
RouteUrl662 :
(66: ;
routeValues66; F
)66F G
;66G H
return88 
new88 
StringValue88 "
(88" #
linkUrl88# *
)88* +
;88+ ,
}99 	
}:: 
};; Æ;
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Liquid\FullTextFilter.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Liquid %
{ 
public 

class 
FullTextFilter 
:  !
ILiquidFilter" /
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, `
)` a
;a b
} 
var 
serviceProvider 
=  !
(" #
IServiceProvider# 3
)3 4
services4 <
;< =
var 
contentManager 
=  
serviceProvider! 0
.0 1
GetRequiredService1 C
<C D
IContentManagerD S
>S T
(T U
)U V
;V W
var #
fullTextRecursionHelper '
=( )
serviceProvider* 9
.9 :
GetRequiredService: L
<L M'
IContentItemRecursionHelperM h
<h i
FullTextFilteri w
>w x
>x y
(y z
)z {
;{ |
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Array* /
)/ 0
{ 
var 
contentItems  
=! "
new# &
List' +
<+ ,
ContentItem, 7
>7 8
(8 9
)9 :
;: ;
foreach   
(   
var   
objValue   $
in  % '
input  ( -
.  - .
	Enumerate  . 7
(  7 8
)  8 9
)  9 :
{!! 
var"" 
contentItem"" #
=""$ %
GetContentItem""& 4
(""4 5
objValue""5 =
)""= >
;""> ?
if## 
(## 
contentItem## #
!=##$ &
null##' +
)##+ ,
{$$ 
if%% 
(%% 
!%% #
fullTextRecursionHelper%% 4
.%%4 5
IsRecursive%%5 @
(%%@ A
contentItem%%A L
)%%L M
)%%M N
{&& 
contentItems'' (
.''( )
Add'') ,
('', -
contentItem''- 8
)''8 9
;''9 :
}(( 
})) 
}** 
if,, 
(,, 
!,, 
contentItems,, !
.,,! "
Any,," %
(,,% &
),,& '
),,' (
{-- 
return.. 
NilValue.. #
...# $
Instance..$ ,
;.., -
}// 
var11 
aspects11 
=11 
new11 !
List11" &
<11& '
FullTextAspect11' 5
>115 6
(116 7
)117 8
;118 9
foreach33 
(33 
var33 
contentItem33 '
in33( *
contentItems33+ 7
)337 8
{44 
aspects55 
.55 
Add55 
(55  
await55  %
contentManager55& 4
.554 5
PopulateAspectAsync555 H
<55H I
FullTextAspect55I W
>55W X
(55X Y
contentItem55Y d
)55d e
)55e f
;55f g
}66 
return99 
new99 

ArrayValue99 %
(99% &
aspects99& -
.99- .

SelectMany99. 8
(998 9
x999 :
=>99; =
x99> ?
.99? @
Segments99@ H
)99H I
.99I J
Where99J O
(99O P
x99P Q
=>99R T
!99U V
String99V \
.99\ ]
IsNullOrEmpty99] j
(99j k
x99k l
)99l m
)99m n
.99n o
Select99o u
(99u v
x99v w
=>99x z
new99{ ~
StringValue	99 ä
(
99ä ã
x
99ã å
+
99ç é
$char
99è í
)
99í ì
)
99ì î
)
99î ï
;
99ï ñ
}:: 
else;; 
{<< 
var== 
contentItem== 
===  !
GetContentItem==" 0
(==0 1
input==1 6
)==6 7
;==7 8
if?? 
(?? 
contentItem?? 
==??  "
null??# '
||??( *#
fullTextRecursionHelper??+ B
.??B C
IsRecursive??C N
(??N O
contentItem??O Z
)??Z [
)??[ \
{@@ 
returnAA 
NilValueAA #
.AA# $
InstanceAA$ ,
;AA, -
}BB 
varDD 
fullTextAspectDD "
=DD# $
awaitDD% *
contentManagerDD+ 9
.DD9 :
PopulateAspectAsyncDD: M
<DDM N
FullTextAspectDDN \
>DD\ ]
(DD] ^
contentItemDD^ i
)DDi j
;DDj k
returnGG 
newGG 

ArrayValueGG %
(GG% &
fullTextAspectGG& 4
.GG4 5
SegmentsGG5 =
.GG= >
WhereGG> C
(GGC D
xGGD E
=>GGF H
!GGI J
StringGGJ P
.GGP Q
IsNullOrEmptyGGQ ^
(GG^ _
xGG_ `
)GG` a
)GGa b
.GGb c
SelectGGc i
(GGi j
xGGj k
=>GGl n
newGGo r
StringValueGGs ~
(GG~ 
x	GG Ä
)
GGÄ Å
)
GGÅ Ç
)
GGÇ É
;
GGÉ Ñ
}HH 
}II 	
privateKK 
staticKK 
ContentItemKK "
GetContentItemKK# 1
(KK1 2

FluidValueKK2 <
inputKK= B
)KKB C
{LL 	
varMM 
objMM 
=MM 
inputMM 
.MM 
ToObjectValueMM )
(MM) *
)MM* +
;MM+ ,
ifOO 
(OO 
!OO 
(OO 
objOO 
isOO 
ContentItemOO $
contentItemOO% 0
)OO0 1
)OO1 2
{PP 
contentItemQQ 
=QQ 
nullQQ "
;QQ" #
ifSS 
(SS 
objSS 
isSS 
JObjectSS "
jObjectSS# *
)SS* +
{TT 
contentItemUU 
=UU  !
jObjectUU" )
.UU) *
ToObjectUU* 2
<UU2 3
ContentItemUU3 >
>UU> ?
(UU? @
)UU@ A
;UUA B
ifXX 
(XX 
contentItemXX #
?XX# $
.XX$ %
ContentItemIdXX% 2
==XX3 5
nullXX6 :
)XX: ;
{YY 
returnZZ 
nullZZ #
;ZZ# $
}[[ 
}\\ 
}]] 
return__ 
contentItem__ 
;__ 
}`` 	
}aa 
}bb ·
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str	 
,  
Name 
=	 

$str 
, 
Description 
= 
$str [
,[ \
Dependencies 
= 
new 
[ 
] 
{ 
$str 
, 
$str 
} 
, 
Category 
= 
$str #
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 5
,5 6
Name 
=	 

$str $
,$ %
Description 
= 
$str >
,> ?
Dependencies 
= 
new 
[ 
] 
{ 
$str 1
}2 3
,3 4
Category 
= 
$str #
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 J
,J K
Name   
=  	 

$str   0
,  0 1
Description!! 
=!! 
$str!! Y
,!!Y Z
Dependencies"" 
="" 
new"" 
["" 
]"" 
{"" 
$str"" 1
,""1 2
$str""3 K
}""L M
,""M N
Category## 
=## 
$str## #
)$$ 
]$$ 
[&& 
assembly&& 	
:&&	 

Feature&& 
(&& 
Id'' 
='' 
$str''	 >
,''> ?
Name(( 
=((	 

$str(( +
,((+ ,
Description)) 
=)) 
$str)) T
,))T U
Dependencies** 
=** 
new** 
[** 
]** 
{** 
$str** 1
,**1 2
$str**3 K
}**L M
,**M N
Category++ 
=++ 
$str++ #
),, 
],, 
[.. 
assembly.. 	
:..	 

Feature.. 
(.. 
Id// 
=// 
$str//	 3
,//3 4
Name00 
=00	 

$str00 -
,00- .
Description11 
=11 
$str11 Q
,11Q R
Dependencies22 
=22 
new22 
[22 
]22 
{22 
$str22 1
,221 2
$str223 K
}22L M
,22M N
Category33 
=33 
$str33 #
)44 
]44 µ

ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Migrations.cs
	namespace 	
OrchardCore
 
. 
Contents 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private		 %
IContentDefinitionManager		 )%
_contentDefinitionManager		* C
;		C D
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: F
,F G
builderH O
=>P R
builderS Z
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! b
)b c
)c d
;d e
return 
$num 
; 
} 	
} 
} °
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Models\CommonPart.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Models %
{ 
public		 

class		 

CommonPart		 
:		 
ContentPart		 )
{

 
} 
} –
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Models\CommonPartSettings.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Models %
{ 
public 

class 
CommonPartSettings #
{ 
public 
bool 
DisplayDateEditor %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
DisplayOwnerEditor &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ’

ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Models\FullTextAspectSettings.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Models %
{ 
public 

class "
FullTextAspectSettings '
{ 
public

 
bool

 #
IncludeFullTextTemplate

 +
{

, -
get

. 1
;

1 2
set

3 6
;

6 7
}

8 9
public 
string 
FullTextTemplate &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
IncludeBodyAspect %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
true6 :
;: ;
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
IncludeDisplayText &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
true7 ;
;; <
} 
} ¿;
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Permissions.cs
	namespace 	
OrchardCore
 
. 
Contents 
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{		 
public 
static 
readonly 

Permission )
PublishContent* 8
=9 :
CommonPermissions; L
.L M
PublishContentM [
;[ \
public 
static 
readonly 

Permission )
PublishOwnContent* ;
=< =
CommonPermissions> O
.O P
PublishOwnContentP a
;a b
public 
static 
readonly 

Permission )
EditContent* 5
=6 7
CommonPermissions8 I
.I J
EditContentJ U
;U V
public 
static 
readonly 

Permission )
EditOwnContent* 8
=9 :
CommonPermissions; L
.L M
EditOwnContentM [
;[ \
public 
static 
readonly 

Permission )
DeleteContent* 7
=8 9
CommonPermissions: K
.K L
DeleteContentL Y
;Y Z
public 
static 
readonly 

Permission )
DeleteOwnContent* :
=; <
CommonPermissions= N
.N O
DeleteOwnContentO _
;_ `
public 
static 
readonly 

Permission )
ViewContent* 5
=6 7
CommonPermissions8 I
.I J
ViewContentJ U
;U V
public 
static 
readonly 

Permission )
ViewOwnContent* 8
=9 :
CommonPermissions; L
.L M
ViewOwnContentM [
;[ \
public 
static 
readonly 

Permission )
PreviewContent* 8
=9 :
CommonPermissions; L
.L M
PreviewContentM [
;[ \
public 
static 
readonly 

Permission )
PreviewOwnContent* ;
=< =
CommonPermissions> O
.O P
PreviewOwnContentP a
;a b
public 
static 
readonly 

Permission )
CloneContent* 6
=7 8
CommonPermissions9 J
.J K
CloneContentK W
;W X
public 
static 
readonly 

Permission )
CloneOwnContent* 9
=: ;
CommonPermissions< M
.M N
CloneOwnContentN ]
;] ^
public 
static 
readonly 

Permission )
ListContent* 5
=6 7
CommonPermissions8 I
.I J
ListContentJ U
;U V
public 
static 
readonly 

Permission )
AccessContentApi* :
=; <
new= @

PermissionA K
(K L
$strL ^
,^ _
$str` |
)| }
;} ~
public   
Task   
<   
IEnumerable   
<    

Permission    *
>  * +
>  + ,
GetPermissionsAsync  - @
(  @ A
)  A B
{!! 	
return"" 
Task"" 
."" 

FromResult"" "
(""" #
new""# &
[""& '
]""' (
{## 
EditOwnContent$$ 
,$$ 
EditContent%% 
,%% 
PublishOwnContent&& !
,&&! "
PublishContent'' 
,'' 
DeleteOwnContent((  
,((  !
DeleteContent)) 
,)) 
ViewContent** 
,** 
ViewOwnContent++ 
,++ 
PreviewOwnContent,, !
,,,! "
PreviewContent-- 
,-- 
CloneContent.. 
,.. 
CloneOwnContent// 
,//  
AccessContentApi00  
,00  !
ListContent11 
}22 
.33 
AsEnumerable33 
(33 
)33 
)33 
;33 
}44 	
public66 
IEnumerable66 
<66  
PermissionStereotype66 /
>66/ 0!
GetDefaultStereotypes661 F
(66F G
)66G H
{77 	
return88 
new88 
[88 
]88 
{88 
new99  
PermissionStereotype99 (
{99) *
Name:: 
=:: 
$str:: *
,::* +
Permissions;; 
=;;  !
new;;" %
[;;% &
];;& '
{;;( )
PublishContent;;* 8
,;;8 9
EditContent;;: E
,;;E F
DeleteContent;;G T
,;;T U
PreviewContent;;V d
,;;d e
CloneContent;;f r
,;;r s
AccessContentApi	;;t Ñ
,
;;Ñ Ö
ListContent
;;Ü ë
}
;;í ì
}<< 
,<< 
new==  
PermissionStereotype== (
{==) *
Name>> 
=>> 
$str>> #
,>># $
Permissions?? 
=??  !
new??" %
[??% &
]??& '
{??( )
PublishContent??* 8
,??8 9
EditContent??: E
,??E F
DeleteContent??G T
,??T U
PreviewContent??V d
,??d e
CloneContent??f r
,??r s
ListContent??t 
}
??Ä Å
}@@ 
,@@ 
newAA  
PermissionStereotypeAA (
{AA) *
NameBB 
=BB 
$strBB &
}CC 
,CC 
newDD  
PermissionStereotypeDD (
{DD) *
NameEE 
=EE 
$strEE #
,EE# $
PermissionsFF 
=FF  !
newFF" %
[FF% &
]FF& '
{FF( )
PublishOwnContentFF* ;
,FF; <
EditOwnContentFF= K
,FFK L
DeleteOwnContentFFM ]
,FF] ^
PreviewOwnContentFF_ p
,FFp q
CloneOwnContent	FFr Å
}
FFÇ É
}GG 
,GG 
newHH  
PermissionStereotypeHH (
{HH) *
NameII 
=II 
$strII (
,II( )
PermissionsJJ 
=JJ  !
newJJ" %
[JJ% &
]JJ& '
{JJ( )
EditOwnContentJJ* 8
,JJ8 9
PreviewOwnContentJJ: K
,JJK L
CloneOwnContentJJM \
}JJ] ^
}KK 
,KK 
newLL  
PermissionStereotypeLL (
{LL) *
NameMM 
=MM 
$strMM *
,MM* +
PermissionsNN 
=NN  !
newNN" %
[NN% &
]NN& '
{NN( )
ViewContentNN* 5
}NN6 7
}OO 
,OO 
newPP  
PermissionStereotypePP (
{PP) *
NameQQ 
=QQ 
$strQQ &
,QQ& '
PermissionsRR 
=RR  !
newRR" %
[RR% &
]RR& '
{RR( )
ViewContentRR* 5
}RR6 7
}SS 
,SS 
}TT 
;TT 
}UU 	
}VV 
}WW —C
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Razor\ContentRazorHelperExtensions.cs
public

 
static

 
class

 (
ContentRazorHelperExtensions

 0
{ 
public 

static 
Task 
< 
string 
> )
GetContentItemIdByHandleAsync <
(< =
this= A
IOrchardHelperB P
orchardHelperQ ^
,^ _
string` f
handleg m
)m n
{ 
var  
contentHandleManager  
=! "
orchardHelper# 0
.0 1
HttpContext1 <
.< =
RequestServices= L
.L M

GetServiceM W
<W X!
IContentHandleManagerX m
>m n
(n o
)o p
;p q
return  
contentHandleManager #
.# $!
GetContentItemIdAsync$ 9
(9 :
handle: @
)@ A
;A B
} 
public## 

static## 
async## 
Task## 
<## 
ContentItem## (
>##( )'
GetContentItemByHandleAsync##* E
(##E F
this##F J
IOrchardHelper##K Y
orchardHelper##Z g
,##g h
string##i o
handle##p v
,##v w
bool##x |
latest	##} É
=
##Ñ Ö
false
##Ü ã
)
##ã å
{$$ 
var%% 
contentItemId%% 
=%% 
await%% !)
GetContentItemIdByHandleAsync%%" ?
(%%? @
orchardHelper%%@ M
,%%M N
handle%%O U
)%%U V
;%%V W
var&& 
contentManager&& 
=&& 
orchardHelper&& *
.&&* +
HttpContext&&+ 6
.&&6 7
RequestServices&&7 F
.&&F G

GetService&&G Q
<&&Q R
IContentManager&&R a
>&&a b
(&&b c
)&&c d
;&&d e
return'' 
await'' 
contentManager'' #
.''# $
GetAsync''$ ,
('', -
contentItemId''- :
,'': ;
latest''< B
?''C D
VersionOptions''E S
.''S T
Latest''T Z
:''[ \
VersionOptions''] k
.''k l
	Published''l u
)''u v
;''v w
}(( 
public22 

static22 
Task22 
<22 
ContentItem22 "
>22" ##
GetContentItemByIdAsync22$ ;
(22; <
this22< @
IOrchardHelper22A O
orchardHelper22P ]
,22] ^
string22_ e
contentItemId22f s
,22s t
bool22u y
latest	22z Ä
=
22Å Ç
false
22É à
)
22à â
{33 
var44 
contentManager44 
=44 
orchardHelper44 *
.44* +
HttpContext44+ 6
.446 7
RequestServices447 F
.44F G

GetService44G Q
<44Q R
IContentManager44R a
>44a b
(44b c
)44c d
;44d e
return55 
contentManager55 
.55 
GetAsync55 &
(55& '
contentItemId55' 4
,554 5
latest556 <
?55= >
VersionOptions55? M
.55M N
Latest55N T
:55U V
VersionOptions55W e
.55e f
	Published55f o
)55o p
;55p q
}66 
public?? 

static?? 
Task?? 
<?? 
IEnumerable?? "
<??" #
ContentItem??# .
>??. /
>??/ 0$
GetContentItemsByIdAsync??1 I
(??I J
this??J N
IOrchardHelper??O ]
orchardHelper??^ k
,??k l
IEnumerable??m x
<??x y
string??y 
>	?? Ä
contentItemIds
??Å è
,
??è ê
bool
??ë ï
latest
??ñ ú
=
??ù û
false
??ü §
)
??§ •
{@@ 
varAA 
contentManagerAA 
=AA 
orchardHelperAA *
.AA* +
HttpContextAA+ 6
.AA6 7
RequestServicesAA7 F
.AAF G

GetServiceAAG Q
<AAQ R
IContentManagerAAR a
>AAa b
(AAb c
)AAc d
;AAd e
returnBB 
contentManagerBB 
.BB 
GetAsyncBB &
(BB& '
contentItemIdsBB' 5
,BB5 6
latestBB7 =
)BB= >
;BB> ?
}CC 
publicLL 

staticLL 
TaskLL 
<LL 
ContentItemLL "
>LL" #*
GetContentItemByVersionIdAsyncLL$ B
(LLB C
thisLLC G
IOrchardHelperLLH V
orchardHelperLLW d
,LLd e
stringLLf l!
contentItemVersionId	LLm Å
)
LLÅ Ç
{MM 
varNN 
contentManagerNN 
=NN 
orchardHelperNN *
.NN* +
HttpContextNN+ 6
.NN6 7
RequestServicesNN7 F
.NNF G

GetServiceNNG Q
<NNQ R
IContentManagerNNR a
>NNa b
(NNb c
)NNc d
;NNd e
returnOO 
contentManagerOO 
.OO 
GetVersionAsyncOO -
(OO- . 
contentItemVersionIdOO. B
)OOB C
;OOC D
}PP 
publicUU 

staticUU 
asyncUU 
TaskUU 
<UU 
IEnumerableUU (
<UU( )
ContentItemUU) 4
>UU4 5
>UU5 6"
QueryContentItemsAsyncUU7 M
(UUM N
thisUUN R
IOrchardHelperUUS a
orchardHelperUUb o
,UUo p
FuncUUq u
<UUu v
IQueryUUv |
<UU| }
ContentItem	UU} à
,
UUà â
ContentItemIndex
UUä ö
>
UUö õ
,
UUõ ú
IQuery
UUù £
<
UU£ §
ContentItem
UU§ Ø
>
UUØ ∞
>
UU∞ ±
query
UU≤ ∑
)
UU∑ ∏
{VV 
varWW 
contentManagerWW 
=WW 
orchardHelperWW *
.WW* +
HttpContextWW+ 6
.WW6 7
RequestServicesWW7 F
.WWF G

GetServiceWWG Q
<WWQ R
IContentManagerWWR a
>WWa b
(WWb c
)WWc d
;WWd e
varXX 
sessionXX 
=XX 
orchardHelperXX #
.XX# $
HttpContextXX$ /
.XX/ 0
RequestServicesXX0 ?
.XX? @

GetServiceXX@ J
<XXJ K
ISessionXXK S
>XXS T
(XXT U
)XXU V
;XXV W
varZZ 
contentItemsZZ 
=ZZ 
awaitZZ  
queryZZ! &
(ZZ& '
sessionZZ' .
.ZZ. /
QueryZZ/ 4
<ZZ4 5
ContentItemZZ5 @
,ZZ@ A
ContentItemIndexZZB R
>ZZR S
(ZZS T
)ZZT U
)ZZU V
.ZZV W
	ListAsyncZZW `
(ZZ` a
)ZZa b
;ZZb c
return\\ 
await\\ 
contentManager\\ #
.\\# $
	LoadAsync\\$ -
(\\- .
contentItems\\. :
)\\: ;
;\\; <
}]] 
publicee 

staticee 
Taskee 
<ee 
IEnumerableee "
<ee" #
ContentItemee# .
>ee. /
>ee/ 03
'GetRecentContentItemsByContentTypeAsyncee1 X
(eeX Y
thiseeY ]
IOrchardHelperee^ l
orchardHelpereem z
,eez {
string	ee| Ç
contentType
eeÉ é
,
eeé è
int
eeê ì
maxContentItems
eeî £
=
ee§ •
$num
ee¶ ®
)
ee® ©
{ff 
returngg 
orchardHelpergg 
.gg "
QueryContentItemsAsyncgg 3
(gg3 4
querygg4 9
=>gg: <
querygg= B
.ggB C
WhereggC H
(ggH I
xggI J
=>ggK M
xggN O
.ggO P
ContentTypeggP [
==gg\ ^
contentTypegg_ j
&&ggk m
xggn o
.ggo p
	Publishedggp y
==ggz |
true	gg} Å
)
ggÅ Ç
.
ggÇ É
OrderByDescending
ggÉ î
(
ggî ï
x
ggï ñ
=>
ggó ô
x
ggö õ
.
ggõ ú

CreatedUtc
ggú ¶
)
gg¶ ß
.
ggß ®
Take
gg® ¨
(
gg¨ ≠
maxContentItems
gg≠ º
)
ggº Ω
)
ggΩ æ
;
ggæ ø
}hh 
}ii å
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Recipes\ContentStep.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Recipes &
{		 
public 

class 
ContentStep 
: 
IRecipeStepHandler 1
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public 
ContentStep 
( 
IContentManager *
contentManager+ 9
)9 :
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 6
,6 7
StringComparison8 H
.H I
OrdinalIgnoreCaseI Z
)Z [
)[ \
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .
ContentStepModel. >
>> ?
(? @
)@ A
;A B
var 
contentItems 
= 
model $
.$ %
Data% )
.) *
ToObject* 2
<2 3
ContentItem3 >
[> ?
]? @
>@ A
(A B
)B C
;C D
await!! 
_contentManager!! !
.!!! "
ImportAsync!!" -
(!!- .
contentItems!!. :
)!!: ;
;!!; <
}"" 	
}## 
public%% 

class%% 
ContentStepModel%% !
{&& 
public'' 
JArray'' 
Data'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
}(( 
})) éC
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Scripting\ContentMethodsProvider.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
	Scripting		 (
{

 
public 

class "
ContentMethodsProvider '
:( )!
IGlobalMethodProvider* ?
{ 
private 
readonly 
GlobalMethod %!
_newContentItemMethod& ;
;; <
private 
readonly 
GlobalMethod %$
_createContentItemMethod& >
;> ?
private 
readonly 
GlobalMethod %$
_updateContentItemMethod& >
;> ?
private 
readonly 
GlobalMethod %$
_deleteContentItemMethod& >
;> ?
public "
ContentMethodsProvider %
(% &
)& '
{ 	!
_newContentItemMethod !
=" #
new$ '
GlobalMethod( 4
{ 
Name 
= 
$str '
,' (
Method 
= 
serviceProvider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
IContent: B
>B C
)C D
(D E
(E F
contentTypeF Q
)Q R
=>S U
{ 
var 
contentManager &
=' (
serviceProvider) 8
.8 9
GetRequiredService9 K
<K L
IContentManagerL [
>[ \
(\ ]
)] ^
;^ _
var 
contentItem #
=$ %
contentManager& 4
.4 5
NewAsync5 =
(= >
contentType> I
)I J
.J K

GetAwaiterK U
(U V
)V W
.W X
	GetResultX a
(a b
)b c
;c d
return 
contentItem &
;& '
} 
) 
} 
; $
_createContentItemMethod   $
=  % &
new  ' *
GlobalMethod  + 7
{!! 
Name"" 
="" 
$str"" *
,""* +
Method## 
=## 
serviceProvider## (
=>##) +
(##, -
Func##- 1
<##1 2
string##2 8
,##8 9
bool##: >
?##> ?
,##? @
object##A G
,##G H
IContent##I Q
>##Q R
)##R S
(##S T
(##T U
contentType##U `
,##` a
publish##b i
,##i j

properties##k u
)##u v
=>##w y
{$$ 
var%% 
contentManager%% &
=%%' (
serviceProvider%%) 8
.%%8 9
GetRequiredService%%9 K
<%%K L
IContentManager%%L [
>%%[ \
(%%\ ]
)%%] ^
;%%^ _
var&& 
contentItem&& #
=&&$ %
contentManager&&& 4
.&&4 5
NewAsync&&5 =
(&&= >
contentType&&> I
)&&I J
.&&J K

GetAwaiter&&K U
(&&U V
)&&V W
.&&W X
	GetResult&&X a
(&&a b
)&&b c
;&&c d
contentItem'' 
.''  
Merge''  %
(''% &

properties''& 0
)''0 1
;''1 2
var(( 
result(( 
=((  
contentManager((! /
.((/ 0(
UpdateValidateAndCreateAsync((0 L
(((L M
contentItem((M X
,((X Y
publish((Z a
==((b d
true((e i
?((j k
VersionOptions((l z
.((z {
	Published	(({ Ñ
:
((Ö Ü
VersionOptions
((á ï
.
((ï ñ
Draft
((ñ õ
)
((õ ú
.
((ú ù

GetAwaiter
((ù ß
(
((ß ®
)
((® ©
.
((© ™
	GetResult
((™ ≥
(
((≥ ¥
)
((¥ µ
;
((µ ∂
if)) 
()) 
result)) 
.)) 
	Succeeded)) (
)))( )
{** 
return++ 
contentItem++ *
;++* +
},, 
else-- 
{.. 
throw// 
new// !
ValidationException//" 5
(//5 6
string//6 <
.//< =
Join//= A
(//A B
$str//B F
,//F G
result//H N
.//N O
Errors//O U
)//U V
)//V W
;//W X
}00 
}11 
)11 
}22 
;22 $
_updateContentItemMethod44 $
=44% &
new44' *
GlobalMethod44+ 7
{55 
Name66 
=66 
$str66 *
,66* +
Method77 
=77 
serviceProvider77 (
=>77) +
(77, -
Action77- 3
<773 4
ContentItem774 ?
,77? @
object77A G
>77G H
)77H I
(77I J
(77J K
contentItem77K V
,77V W

properties77X b
)77b c
=>77d f
{88 
var99 
contentManager99 &
=99' (
serviceProvider99) 8
.998 9
GetRequiredService999 K
<99K L
IContentManager99L [
>99[ \
(99\ ]
)99] ^
;99^ _
contentItem:: 
.::  
Merge::  %
(::% &

properties::& 0
,::0 1
new::2 5
JsonMergeSettings::6 G
{::H I
MergeArrayHandling::J \
=::] ^
MergeArrayHandling::_ q
.::q r
Replace::r y
}::z {
)::{ |
;::| }
contentManager;; "
.;;" #
UpdateAsync;;# .
(;;. /
contentItem;;/ :
);;: ;
.;;; <

GetAwaiter;;< F
(;;F G
);;G H
.;;H I
	GetResult;;I R
(;;R S
);;S T
;;;T U
var<< 
result<< 
=<<  
contentManager<<! /
.<</ 0
ValidateAsync<<0 =
(<<= >
contentItem<<> I
)<<I J
.<<J K

GetAwaiter<<K U
(<<U V
)<<V W
.<<W X
	GetResult<<X a
(<<a b
)<<b c
;<<c d
if== 
(== 
!== 
result== 
.==  
	Succeeded==  )
)==) *
{>> 
throw?? 
new?? !
ValidationException??" 5
(??5 6
string??6 <
.??< =
Join??= A
(??A B
$str??B F
,??F G
result??H N
.??N O
Errors??O U
)??U V
)??V W
;??W X
}@@ 
}AA 
)AA 
}BB 
;BB $
_deleteContentItemMethodDD $
=DD% &
newDD' *
GlobalMethodDD+ 7
{EE 
NameFF 
=FF 
$strFF *
,FF* +
MethodGG 
=GG 
serviceProviderGG (
=>GG) +
(GG, -
ActionGG- 3
<GG3 4
ContentItemGG4 ?
,GG? @
objectGGA G
>GGG H
)GGH I
(GGI J
(GGJ K
contentItemGGK V
,GGV W

propertiesGGX b
)GGb c
=>GGd f
{HH 
varII 
contentManagerII &
=II' (
serviceProviderII) 8
.II8 9
GetRequiredServiceII9 K
<IIK L
IContentManagerIIL [
>II[ \
(II\ ]
)II] ^
;II^ _
contentManagerJJ "
.JJ" #
RemoveAsyncJJ# .
(JJ. /
contentItemJJ/ :
)JJ: ;
.JJ; <

GetAwaiterJJ< F
(JJF G
)JJG H
.JJH I
	GetResultJJI R
(JJR S
)JJS T
;JJT U
}KK 
)KK 
}LL 
;LL 
}MM 	
publicOO 
IEnumerableOO 
<OO 
GlobalMethodOO '
>OO' (

GetMethodsOO) 3
(OO3 4
)OO4 5
{PP 	
returnQQ 
newQQ 
[QQ 
]QQ 
{QQ !
_newContentItemMethodQQ 0
,QQ0 1$
_createContentItemMethodQQ2 J
,QQJ K$
_updateContentItemMethodQQL d
,QQd e$
_deleteContentItemMethodQQf ~
}	QQ Ä
;
QQÄ Å
}RR 	
}SS 
}TT ï	
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Scripting\Startup.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Scripting (
{ 
[ 
RequireFeatures 
( 
$str ,
), -
]- .
public 

class 
Startup 
: 
StartupBase &
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
. 
AddSingleton !
<! "!
IGlobalMethodProvider" 7
,7 8"
ContentMethodsProvider9 O
>O P
(P Q
)Q R
;R S
services 
. 
AddSingleton !
<! "!
IGlobalMethodProvider" 7
,7 8
UrlMethodsProvider9 K
>K L
(L M
)M N
;N O
} 	
} 
} …
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Scripting\UrlMethodsProvider.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Scripting (
{ 
public		 

class		 
UrlMethodsProvider		 #
:		$ %!
IGlobalMethodProvider		& ;
{

 
private 
readonly 
GlobalMethod %
_getUrlPrefix& 3
;3 4
public 
UrlMethodsProvider !
(! "
)" #
{ 	
_getUrlPrefix 
= 
new 
GlobalMethod  ,
{ 
Name 
= 
$str %
,% &
Method 
= 
serviceProvider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
string: @
>@ A
)A B
(B C
(C D
stringD J
pathK O
)O P
=>Q S
{ 
string 
ret 
;  
var 
shellSettings &
=' (
serviceProvider) 8
.8 9
GetRequiredService9 K
<K L
ShellSettingsL Y
>Y Z
(Z [
)[ \
;\ ]
if 
( 
! 
string  
.  !
IsNullOrWhiteSpace! 3
(3 4
shellSettings4 A
.A B
RequestUrlPrefixB R
)R S
)S T
ret 
= 
shellSettings ,
., -
RequestUrlPrefix- =
.= >
Trim> B
(B C
$charC F
)F G
;G H
else 
ret 
= 
string %
.% &
Empty& +
;+ ,
if 
( 
! 
string  
.  !
IsNullOrWhiteSpace! 3
(3 4
path4 8
)8 9
)9 :
{ 
ret 
= 
string %
.% &
Concat& ,
(, -
ret- 0
,0 1
$char2 5
,5 6
path7 ;
.; <
Trim< @
(@ A
$charA D
)D E
)E F
.F G
TrimG K
(K L
$charL O
)O P
;P Q
}   
return"" 
string"" "
.""" #
Concat""# )
("") *
$char""* -
,""- .
ret""/ 2
)""2 3
;""3 4
}## 
)## 
}$$ 
;$$ 
}%% 	
public'' 
IEnumerable'' 
<'' 
GlobalMethod'' '
>''' (

GetMethods'') 3
(''3 4
)''4 5
{(( 	
return)) 
new)) 
[)) 
])) 
{)) 
_getUrlPrefix)) (
}))) *
;))* +
}** 	
}++ 
},, òA
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Security\ContentTypeAuthorizationHandler.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 
Security

 '
{ 
public 

class +
ContentTypeAuthorizationHandler 0
:1 2 
AuthorizationHandler3 G
<G H!
PermissionRequirementH ]
>] ^
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public +
ContentTypeAuthorizationHandler .
(. /
IServiceProvider/ ?
serviceProvider@ O
)O P
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
	protected 
override 
async  
Task! %"
HandleRequirementAsync& <
(< ='
AuthorizationHandlerContext= X
contextY `
,` a!
PermissionRequirementb w
requirement	x É
)
É Ñ
{ 	
if 
( 
context 
. 
HasSucceeded $
)$ %
{ 
return 
; 
} 
if 
( 
context 
. 
Resource  
==! #
null$ (
)( )
{ 
return   
;   
}!! 
var## 
contentItem## 
=## 
context## %
.##% &
Resource##& .
as##/ 1
ContentItem##2 =
;##= >

Permission%% 

permission%% !
=%%" #
null%%$ (
;%%( )
if'' 
('' 
contentItem'' 
!='' 
null'' #
)''# $
{(( 
if)) 
())  
OwnerVariationExists)) (
())( )
requirement))) 4
.))4 5

Permission))5 ?
)))? @
&&))A C
HasOwnership))D P
())P Q
context))Q X
.))X Y
User))Y ]
,))] ^
contentItem))_ j
)))j k
)))k l
{** 

permission++ 
=++  
GetOwnerVariation++! 2
(++2 3
requirement++3 >
.++> ?

Permission++? I
)++I J
;++J K
},, 
}-- 
var// !
contentTypePermission// %
=//& '(
ContentTypePermissionsHelper//( D
.//D E&
ConvertToDynamicPermission//E _
(//_ `

permission//` j
??//k m
requirement//n y
.//y z

Permission	//z Ñ
)
//Ñ Ö
;
//Ö Ü
if11 
(11 !
contentTypePermission11 %
!=11& (
null11) -
)11- .
{22 
var44 
contentType44 
=44  !
contentItem44" -
!=44. 0
null441 5
?55 
contentItem55 !
.55! "
ContentType55" -
:66 
Convert66 
.66 
ToString66 &
(66& '
context66' .
.66. /
Resource66/ 7
.667 8
ToString668 @
(66@ A
)66A B
)66B C
;77 
if99 
(99 
!99 
String99 
.99 
IsNullOrEmpty99 )
(99) *
contentType99* 5
)995 6
)996 7
{:: 

permission;; 
=;;  (
ContentTypePermissionsHelper;;! =
.;;= >#
CreateDynamicPermission;;> U
(;;U V!
contentTypePermission;;V k
,;;k l
contentType;;m x
);;x y
;;;y z
}<< 
}== 
if?? 
(?? 

permission?? 
==?? 
null?? "
)??" #
{@@ 
returnAA 
;AA 
}BB 
varEE  
authorizationServiceEE $
=EE% &
_serviceProviderEE' 7
.EE7 8

GetServiceEE8 B
<EEB C!
IAuthorizationServiceEEC X
>EEX Y
(EEY Z
)EEZ [
;EE[ \
ifGG 
(GG 
awaitGG  
authorizationServiceGG *
.GG* +
AuthorizeAsyncGG+ 9
(GG9 :
contextGG: A
.GGA B
UserGGB F
,GGF G

permissionGGH R
)GGR S
)GGS T
{HH 
contextII 
.II 
SucceedII 
(II  
requirementII  +
)II+ ,
;II, -
}JJ 
}KK 	
privateMM 
staticMM 

PermissionMM !
GetOwnerVariationMM" 3
(MM3 4

PermissionMM4 >

permissionMM? I
)MMI J
{NN 	
ifOO 
(OO 

permissionOO 
.OO 
NameOO 
==OO  "
CommonPermissionsOO# 4
.OO4 5
PublishContentOO5 C
.OOC D
NameOOD H
)OOH I
{PP 
returnQQ 
CommonPermissionsQQ (
.QQ( )
PublishOwnContentQQ) :
;QQ: ;
}RR 
ifTT 
(TT 

permissionTT 
.TT 
NameTT 
==TT  "
CommonPermissionsTT# 4
.TT4 5
EditContentTT5 @
.TT@ A
NameTTA E
)TTE F
{UU 
returnVV 
CommonPermissionsVV (
.VV( )
EditOwnContentVV) 7
;VV7 8
}WW 
ifYY 
(YY 

permissionYY 
.YY 
NameYY 
==YY  "
CommonPermissionsYY# 4
.YY4 5
DeleteContentYY5 B
.YYB C
NameYYC G
)YYG H
{ZZ 
return[[ 
CommonPermissions[[ (
.[[( )
DeleteOwnContent[[) 9
;[[9 :
}\\ 
if^^ 
(^^ 

permission^^ 
.^^ 
Name^^ 
==^^  "
CommonPermissions^^# 4
.^^4 5
ViewContent^^5 @
.^^@ A
Name^^A E
)^^E F
{__ 
return`` 
CommonPermissions`` (
.``( )
ViewOwnContent``) 7
;``7 8
}aa 
ifcc 
(cc 

permissioncc 
.cc 
Namecc 
==cc  "
CommonPermissionscc# 4
.cc4 5
PreviewContentcc5 C
.ccC D
NameccD H
)ccH I
{dd 
returnee 
CommonPermissionsee (
.ee( )
PreviewOwnContentee) :
;ee: ;
}ff 
ifhh 
(hh 

permissionhh 
.hh 
Namehh 
==hh  "
CommonPermissionshh# 4
.hh4 5
CloneContenthh5 A
.hhA B
NamehhB F
)hhF G
{ii 
returnjj 
CommonPermissionsjj (
.jj( )
CloneOwnContentjj) 8
;jj8 9
}kk 
returnmm 
nullmm 
;mm 
}nn 	
privatepp 
staticpp 
boolpp 
HasOwnershippp (
(pp( )
ClaimsPrincipalpp) 8
userpp9 =
,pp= >
ContentItempp? J
contentppK R
)ppR S
{qq 	
ifrr 
(rr 
userrr 
==rr 
nullrr 
||rr 
contentrr  '
==rr( *
nullrr+ /
)rr/ 0
{ss 
returntt 
falsett 
;tt 
}uu 
returnww 
userww 
.ww 
FindFirstValueww &
(ww& '

ClaimTypesww' 1
.ww1 2
NameIdentifierww2 @
)ww@ A
==wwB D
contentwwE L
.wwL M
OwnerwwM R
;wwR S
}xx 	
privatezz 
staticzz 
boolzz  
OwnerVariationExistszz 0
(zz0 1

Permissionzz1 ;

permissionzz< F
)zzF G
{{{ 	
return|| 
GetOwnerVariation|| $
(||$ %

permission||% /
)||/ 0
!=||1 3
null||4 8
;||8 9
}}} 	
}~~ 
} Ω
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Security\ContentTypePermissions.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Security '
{		 
public

 

class

 "
ContentTypePermissions

 '
:

( )
IPermissionProvider

* =
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public "
ContentTypePermissions %
(% &%
IContentDefinitionManager& ?$
contentDefinitionManager@ X
)X Y
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
var 
securableTypes 
=  %
_contentDefinitionManager! :
.: ;
ListTypeDefinitions; N
(N O
)O P
. 
Where 
( 
ctd 
=> 
ctd !
.! "
GetSettings" -
<- .
ContentTypeSettings. A
>A B
(B C
)C D
.D E
	SecurableE N
)N O
;O P
var 
result 
= 
new 
List !
<! "

Permission" ,
>, -
(- .
). /
;/ 0
foreach 
( 
var 
typeDefinition '
in( *
securableTypes+ 9
)9 :
{ 
foreach 
( 
var 
permissionTemplate /
in0 2(
ContentTypePermissionsHelper3 O
.O P
PermissionTemplatesP c
.c d
Valuesd j
)j k
{ 
result 
. 
Add 
( (
ContentTypePermissionsHelper ;
.; <#
CreateDynamicPermission< S
(S T
permissionTemplateT f
,f g
typeDefinitionh v
)v w
)w x
;x y
}   
}!! 
return## 
Task## 
.## 

FromResult## "
(##" #
result### )
.##) *
AsEnumerable##* 6
(##6 7
)##7 8
)##8 9
;##9 :
}$$ 	
public&& 
IEnumerable&& 
<&&  
PermissionStereotype&& /
>&&/ 0!
GetDefaultStereotypes&&1 F
(&&F G
)&&G H
{'' 	
return(( 

Enumerable(( 
.(( 
Empty(( #
<((# $ 
PermissionStereotype(($ 8
>((8 9
(((9 :
)((: ;
;((; <
})) 	
}** 
}++ Ÿ
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Services\ContentItemIdHandleProvider.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Services '
{ 
public 

class '
ContentItemIdHandleProvider ,
:- ."
IContentHandleProvider/ E
{ 
public 
int 
Order 
=> 
$num 
; 
public

 
Task

 
<

 
string

 
>

 !
GetContentItemIdAsync

 1
(

1 2
string

2 8
handle

9 ?
)

? @
{ 	
if 
( 
handle 
. 

StartsWith !
(! "
$str" 2
,2 3
System4 :
.: ;
StringComparison; K
.K L
OrdinalIgnoreCaseL ]
)] ^
)^ _
{ 
string 
contentItemId $
=% &
handle' -
.- .
	Substring. 7
(7 8
$num8 :
): ;
;; <
return 
Task 
. 

FromResult &
(& '
contentItemId' 4
)4 5
;5 6
} 
return 
Task 
. 

FromResult "
<" #
string# )
>) *
(* +
null+ /
)/ 0
;0 1
} 	
} 
} ìÜ
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Services\DefaultContentsAdminListFilter.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Services '
{ 
public 

class *
DefaultContentsAdminListFilter /
:0 1$
IContentsAdminListFilter2 J
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public *
DefaultContentsAdminListFilter -
(- .%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?!
IAuthorizationService ! 
authorizationService" 6
,6 7 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5
IContentManager   
contentManager   *
)  * +
{!! 	%
_contentDefinitionManager"" %
=""& '$
contentDefinitionManager""( @
;""@ A!
_authorizationService## !
=##" # 
authorizationService##$ 8
;##8 9 
_httpContextAccessor$$  
=$$! "
httpContextAccessor$$# 6
;$$6 7
_contentManager%% 
=%% 
contentManager%% ,
;%%, -
}&& 	
public(( 
async(( 
Task(( 
FilterAsync(( %
(((% &#
ContentOptionsViewModel((& =
model((> C
,((C D
IQuery((E K
<((K L
ContentItem((L W
>((W X
query((Y ^
,((^ _
IUpdateModel((` l
updater((m t
)((t u
{)) 	
var** 
user** 
=**  
_httpContextAccessor** +
.**+ ,
HttpContext**, 7
.**7 8
User**8 <
;**< =
var++ 
userNameIdentifier++ "
=++# $
user++% )
.++) *
FindFirstValue++* 8
(++8 9

ClaimTypes++9 C
.++C D
NameIdentifier++D R
)++R S
;++S T
if-- 
(-- 
!-- 
String-- 
.-- 
IsNullOrEmpty-- %
(--% &
model--& +
.--+ ,
DisplayText--, 7
)--7 8
)--8 9
{.. 
query// 
.// 
With// 
<// 
ContentItemIndex// +
>//+ ,
(//, -
x//- .
=>/// 1
x//2 3
.//3 4
DisplayText//4 ?
.//? @
Contains//@ H
(//H I
model//I N
.//N O
DisplayText//O Z
)//Z [
)//[ \
;//\ ]
}00 
switch22 
(22 
model22 
.22 
ContentsStatus22 (
)22( )
{33 
case44 
ContentsStatus44 #
.44# $
	Published44$ -
:44- .
query55 
.55 
With55 
<55 
ContentItemIndex55 /
>55/ 0
(550 1
x551 2
=>553 5
x556 7
.557 8
	Published558 A
)55A B
;55B C
break66 
;66 
case77 
ContentsStatus77 #
.77# $
Draft77$ )
:77) *
query88 
.88 
With88 
<88 
ContentItemIndex88 /
>88/ 0
(880 1
x881 2
=>883 5
x886 7
.887 8
Latest888 >
&&88? A
!88B C
x88C D
.88D E
	Published88E N
)88N O
;88O P
break99 
;99 
case:: 
ContentsStatus:: #
.::# $
AllVersions::$ /
:::/ 0
query;; 
.;; 
With;; 
<;; 
ContentItemIndex;; /
>;;/ 0
(;;0 1
x;;1 2
=>;;3 5
x;;6 7
.;;7 8
Latest;;8 >
);;> ?
;;;? @
break<< 
;<< 
default== 
:== 
query>> 
.>> 
With>> 
<>> 
ContentItemIndex>> /
>>>/ 0
(>>0 1
x>>1 2
=>>>3 5
x>>6 7
.>>7 8
Latest>>8 >
)>>> ?
;>>? @
break?? 
;?? 
}@@ 
varBB 
canListAllContentBB !
=BB" #
awaitBB$ )!
_authorizationServiceBB* ?
.BB? @
AuthorizeAsyncBB@ N
(BBN O
userBBO S
,BBS T
PermissionsBBU `
.BB` a
ListContentBBa l
)BBl m
;BBm n
ifEE 
(EE 
!EE 
stringEE 
.EE 
IsNullOrEmptyEE %
(EE% &
modelEE& +
.EE+ ,
SelectedContentTypeEE, ?
)EE? @
)EE@ A
{FF 
varGG !
contentTypeDefinitionGG )
=GG* +%
_contentDefinitionManagerGG, E
.GGE F
GetTypeDefinitionGGF W
(GGW X
modelGGX ]
.GG] ^
SelectedContentTypeGG^ q
)GGq r
;GGr s
ifHH 
(HH !
contentTypeDefinitionHH )
!=HH* ,
nullHH- 1
)HH1 2
{II 
varLL 
contentItemLL #
=LL$ %
awaitLL& +
_contentManagerLL, ;
.LL; <
NewAsyncLL< D
(LLD E!
contentTypeDefinitionLLE Z
.LLZ [
NameLL[ _
)LL_ `
;LL` a
contentItemMM 
.MM  
OwnerMM  %
=MM& '
userNameIdentifierMM( :
;MM: ;
varOO $
hasContentListPermissionOO 0
=OO1 2
awaitOO3 8!
_authorizationServiceOO9 N
.OON O
AuthorizeAsyncOOO ]
(OO] ^
userOO^ b
,OOb c)
ContentTypePermissionsHelper	OOd Ä
.
OOÄ Å%
CreateDynamicPermission
OOÅ ò
(
OOò ô*
ContentTypePermissionsHelper
OOô µ
.
OOµ ∂!
PermissionTemplates
OO∂ …
[
OO…  
CommonPermissions
OO  €
.
OO€ ‹
ListContent
OO‹ Á
.
OOÁ Ë
Name
OOË Ï
]
OOÏ Ì
,
OOÌ Ó#
contentTypeDefinition
OOÔ Ñ
)
OOÑ Ö
,
OOÖ Ü
contentItem
OOá í
)
OOí ì
;
OOì î
ifPP 
(PP $
hasContentListPermissionPP 0
)PP0 1
{QQ 
queryRR 
.RR 
WithRR "
<RR" #
ContentItemIndexRR# 3
>RR3 4
(RR4 5
xRR5 6
=>RR7 9
xRR: ;
.RR; <
ContentTypeRR< G
==RRH J
modelRRK P
.RRP Q
SelectedContentTypeRRQ d
)RRd e
;RRe f
}SS 
elseTT 
{UU 
queryVV 
.VV 
WithVV "
<VV" #
ContentItemIndexVV# 3
>VV3 4
(VV4 5
xVV5 6
=>VV7 9
xVV: ;
.VV; <
ContentTypeVV< G
==VVH J
modelVVK P
.VVP Q
SelectedContentTypeVVQ d
&&VVe g
xVVh i
.VVi j
OwnerVVj o
==VVp r
userNameIdentifier	VVs Ö
)
VVÖ Ü
;
VVÜ á
}WW 
}XX 
}YY 
elseZZ 
{[[ 
var\\ 
listableTypes\\ !
=\\" #
new\\$ '
List\\( ,
<\\, -!
ContentTypeDefinition\\- B
>\\B C
(\\C D
)\\D E
;\\E F
var]] "
authorizedContentTypes]] *
=]]+ ,
new]]- 0
List]]1 5
<]]5 6!
ContentTypeDefinition]]6 K
>]]K L
(]]L M
)]]M N
;]]N O
var^^ $
unauthorizedContentTypes^^ ,
=^^- .
new^^/ 2
List^^3 7
<^^7 8!
ContentTypeDefinition^^8 M
>^^M N
(^^N O
)^^O P
;^^P Q
foreach`` 
(`` 
var`` 
ctd``  
in``! #%
_contentDefinitionManager``$ =
.``= >
ListTypeDefinitions``> Q
(``Q R
)``R S
)``S T
{aa 
ifbb 
(bb 
ctdbb 
.bb 
GetSettingsbb '
<bb' (
ContentTypeSettingsbb( ;
>bb; <
(bb< =
)bb= >
.bb> ?
Listablebb? G
)bbG H
{cc 
varff 
contentItemff '
=ff( )
awaitff* /
_contentManagerff0 ?
.ff? @
NewAsyncff@ H
(ffH I
ctdffI L
.ffL M
NameffM Q
)ffQ R
;ffR S
contentItemgg #
.gg# $
Ownergg$ )
=gg* +
userNameIdentifiergg, >
;gg> ?
varii 
hasEditPermissionii -
=ii. /
awaitii0 5!
_authorizationServiceii6 K
.iiK L
AuthorizeAsynciiL Z
(iiZ [
userii[ _
,ii_ `
CommonPermissionsiia r
.iir s
EditContentiis ~
,ii~ 
contentItem
iiÄ ã
)
iiã å
;
iiå ç
ifjj 
(jj 
hasEditPermissionjj -
)jj- .
{kk 
listableTypesll )
.ll) *
Addll* -
(ll- .
ctdll. 1
)ll1 2
;ll2 3
}mm 
ifoo 
(oo 
!oo 
canListAllContentoo .
)oo. /
{pp 
varqq $
hasContentListPermissionqq  8
=qq9 :
awaitqq; @!
_authorizationServiceqqA V
.qqV W
AuthorizeAsyncqqW e
(qqe f
userqqf j
,qqj k)
ContentTypePermissionsHelper	qql à
.
qqà â%
CreateDynamicPermission
qqâ †
(
qq† °*
ContentTypePermissionsHelper
qq° Ω
.
qqΩ æ!
PermissionTemplates
qqæ —
[
qq— “
CommonPermissions
qq“ „
.
qq„ ‰
ListContent
qq‰ Ô
.
qqÔ 
Name
qq Ù
]
qqÙ ı
,
qqı ˆ
ctd
qq˜ ˙
)
qq˙ ˚
,
qq˚ ¸
contentItem
qq˝ à
)
qqà â
;
qqâ ä
ifrr 
(rr  $
hasContentListPermissionrr  8
)rr8 9
{ss "
authorizedContentTypestt  6
.tt6 7
Addtt7 :
(tt: ;
ctdtt; >
)tt> ?
;tt? @
}uu 
elsevv  
{ww $
unauthorizedContentTypesxx  8
.xx8 9
Addxx9 <
(xx< =
ctdxx= @
)xx@ A
;xxA B
}yy 
}zz 
}{{ 
}|| 
if~~ 
(~~ "
authorizedContentTypes~~ *
.~~* +
Any~~+ .
(~~. /
)~~/ 0
&&~~1 3
!~~4 5
canListAllContent~~5 F
)~~F G
{ 
query
ÄÄ 
.
ÄÄ 
With
ÄÄ 
<
ÄÄ 
ContentItemIndex
ÄÄ /
>
ÄÄ/ 0
(
ÄÄ0 1
)
ÄÄ1 2
.
ÄÄ2 3
Where
ÄÄ3 8
(
ÄÄ8 9
x
ÄÄ9 :
=>
ÄÄ; =
(
ÄÄ> ?
x
ÄÄ? @
.
ÄÄ@ A
ContentType
ÄÄA L
.
ÄÄL M
IsIn
ÄÄM Q
(
ÄÄQ R$
authorizedContentTypes
ÄÄR h
.
ÄÄh i
Select
ÄÄi o
(
ÄÄo p
t
ÄÄp q
=>
ÄÄr t
t
ÄÄu v
.
ÄÄv w
Name
ÄÄw {
)
ÄÄ{ |
.
ÄÄ| }
ToArrayÄÄ} Ñ
(ÄÄÑ Ö
)ÄÄÖ Ü
)ÄÄÜ á
)ÄÄá à
||ÄÄâ ã
(ÄÄå ç
xÄÄç é
.ÄÄé è
ContentTypeÄÄè ö
.ÄÄö õ
IsInÄÄõ ü
(ÄÄü †(
unauthorizedContentTypesÄÄ† ∏
.ÄÄ∏ π
SelectÄÄπ ø
(ÄÄø ¿
tÄÄ¿ ¡
=>ÄÄ¬ ƒ
tÄÄ≈ ∆
.ÄÄ∆ «
NameÄÄ« À
)ÄÄÀ Ã
.ÄÄÃ Õ
ToArrayÄÄÕ ‘
(ÄÄ‘ ’
)ÄÄ’ ÷
)ÄÄ÷ ◊
&&ÄÄÿ ⁄
xÄÄ€ ‹
.ÄÄ‹ ›
OwnerÄÄ› ‚
==ÄÄ„ Â"
userNameIdentifierÄÄÊ ¯
)ÄÄ¯ ˘
)ÄÄ˘ ˙
;ÄÄ˙ ˚
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
query
ÑÑ 
.
ÑÑ 
With
ÑÑ 
<
ÑÑ 
ContentItemIndex
ÑÑ /
>
ÑÑ/ 0
(
ÑÑ0 1
x
ÑÑ1 2
=>
ÑÑ3 5
x
ÑÑ6 7
.
ÑÑ7 8
ContentType
ÑÑ8 C
.
ÑÑC D
IsIn
ÑÑD H
(
ÑÑH I
listableTypes
ÑÑI V
.
ÑÑV W
Select
ÑÑW ]
(
ÑÑ] ^
t
ÑÑ^ _
=>
ÑÑ` b
t
ÑÑc d
.
ÑÑd e
Name
ÑÑe i
)
ÑÑi j
.
ÑÑj k
ToArray
ÑÑk r
(
ÑÑr s
)
ÑÑs t
)
ÑÑt u
)
ÑÑu v
;
ÑÑv w
if
ââ 
(
ââ 
!
ââ 
canListAllContent
ââ *
)
ââ* +
{
ää 
query
ãã 
.
ãã 
With
ãã "
<
ãã" #
ContentItemIndex
ãã# 3
>
ãã3 4
(
ãã4 5
x
ãã5 6
=>
ãã7 9
x
ãã: ;
.
ãã; <
Owner
ãã< A
==
ããB D 
userNameIdentifier
ããE W
)
ããW X
;
ããX Y
}
åå 
else
çç 
{
éé 
if
èè 
(
èè 
model
èè !
.
èè! "
ContentsStatus
èè" 0
==
èè1 3
ContentsStatus
èè4 B
.
èèB C
Owner
èèC H
)
èèH I
{
êê 
query
ëë !
.
ëë! "
With
ëë" &
<
ëë& '
ContentItemIndex
ëë' 7
>
ëë7 8
(
ëë8 9
x
ëë9 :
=>
ëë; =
x
ëë> ?
.
ëë? @
Owner
ëë@ E
==
ëëF H 
userNameIdentifier
ëëI [
)
ëë[ \
;
ëë\ ]
}
íí 
}
ìì 
}
îî 
}
ïï 
switch
òò 
(
òò 
model
òò 
.
òò 
OrderBy
òò !
)
òò! "
{
ôô 
case
öö 
ContentsOrder
öö "
.
öö" #
Modified
öö# +
:
öö+ ,
query
õõ 
.
õõ 
With
õõ 
<
õõ 
ContentItemIndex
õõ /
>
õõ/ 0
(
õõ0 1
)
õõ1 2
.
õõ2 3
OrderByDescending
õõ3 D
(
õõD E
x
õõE F
=>
õõG I
x
õõJ K
.
õõK L
ModifiedUtc
õõL W
)
õõW X
;
õõX Y
break
úú 
;
úú 
case
ùù 
ContentsOrder
ùù "
.
ùù" #
	Published
ùù# ,
:
ùù, -
query
ûû 
.
ûû 
With
ûû 
<
ûû 
ContentItemIndex
ûû /
>
ûû/ 0
(
ûû0 1
)
ûû1 2
.
ûû2 3
OrderByDescending
ûû3 D
(
ûûD E
cr
ûûE G
=>
ûûH J
cr
ûûK M
.
ûûM N
PublishedUtc
ûûN Z
)
ûûZ [
;
ûû[ \
break
üü 
;
üü 
case
†† 
ContentsOrder
†† "
.
††" #
Created
††# *
:
††* +
query
°° 
.
°° 
With
°° 
<
°° 
ContentItemIndex
°° /
>
°°/ 0
(
°°0 1
)
°°1 2
.
°°2 3
OrderByDescending
°°3 D
(
°°D E
cr
°°E G
=>
°°H J
cr
°°K M
.
°°M N

CreatedUtc
°°N X
)
°°X Y
;
°°Y Z
break
¢¢ 
;
¢¢ 
case
££ 
ContentsOrder
££ "
.
££" #
Title
££# (
:
££( )
query
§§ 
.
§§ 
With
§§ 
<
§§ 
ContentItemIndex
§§ /
>
§§/ 0
(
§§0 1
)
§§1 2
.
§§2 3
OrderBy
§§3 :
(
§§: ;
cr
§§; =
=>
§§> @
cr
§§A C
.
§§C D
DisplayText
§§D O
)
§§O P
;
§§P Q
break
•• 
;
•• 
default
¶¶ 
:
¶¶ 
query
ßß 
.
ßß 
With
ßß 
<
ßß 
ContentItemIndex
ßß /
>
ßß/ 0
(
ßß0 1
)
ßß1 2
.
ßß2 3
OrderByDescending
ßß3 D
(
ßßD E
cr
ßßE G
=>
ßßH J
cr
ßßK M
.
ßßM N
ModifiedUtc
ßßN Y
)
ßßY Z
;
ßßZ [
break
®® 
;
®® 
}
©© 
;
©© 
}
™™ 	
}
´´ 
}¨¨ ∂
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Services\DefaultContentsAdminListQueryService.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 
Services

 '
{ 
public 

class 0
$DefaultContentsAdminListQueryService 5
:6 7*
IContentsAdminListQueryService8 V
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IEnumerable $
<$ %$
IContentsAdminListFilter% =
>= >%
_contentsAdminListFilters? X
;X Y
private 
readonly 
ILogger  
_logger! (
;( )
public 0
$DefaultContentsAdminListQueryService 3
(3 4
ISession 
session 
, 
IEnumerable 
< $
IContentsAdminListFilter 0
>0 1$
contentsAdminListFilters2 J
,J K
ILogger 
< 0
$DefaultContentsAdminListQueryService 8
>8 9
logger: @
)@ A
{ 	
_session 
= 
session 
; %
_contentsAdminListFilters %
=& '$
contentsAdminListFilters( @
;@ A
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IQuery  
<  !
ContentItem! ,
>, -
>- .

QueryAsync/ 9
(9 :#
ContentOptionsViewModel: Q
modelR W
,W X
IUpdateModelY e
updaterf m
)m n
{ 	
var 
query 
= 
_session  
.  !
Query! &
<& '
ContentItem' 2
>2 3
(3 4
)4 5
;5 6
await!! %
_contentsAdminListFilters!! +
.!!+ ,
InvokeAsync!!, 7
(!!7 8
(!!8 9
filter!!9 ?
,!!? @
model!!A F
,!!F G
query!!H M
,!!M N
updater!!O V
)!!V W
=>!!X Z
filter!![ a
.!!a b
FilterAsync!!b m
(!!m n
model!!n s
,!!s t
query!!u z
,!!z {
updater	!!| É
)
!!É Ñ
,
!!Ñ Ö
model
!!Ü ã
,
!!ã å
query
!!ç í
,
!!í ì
updater
!!î õ
,
!!õ ú
_logger
!!ù §
)
!!§ •
;
!!• ¶
return## 
query## 
;## 
}$$ 	
}%% 
}&&  
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Settings\CommonPartSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Lists

 
.

 
Settings

 $
{ 
public 

class +
CommonPartSettingsDisplayDriver 0
:1 22
&ContentTypePartDefinitionDisplayDriver3 Y
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
(% &

CommonPart& 0
)0 1
,1 2%
contentTypePartDefinition3 L
.L M
PartDefinitionM [
.[ \
Name\ `
)` a
)a b
{ 
return 
null 
; 
} 
return 

Initialize 
< '
CommonPartSettingsViewModel 9
>9 :
(: ;
$str; T
,T U
modelV [
=>\ ^
{ 
var 
settings 
= %
contentTypePartDefinition 8
.8 9
GetSettings9 D
<D E
CommonPartSettingsE W
>W X
(X Y
)Y Z
;Z [
model 
. 
DisplayDateEditor '
=( )
settings* 2
.2 3
DisplayDateEditor3 D
;D E
model 
. 
DisplayOwnerEditor (
=) *
settings+ 3
.3 4
DisplayOwnerEditor4 F
;F G
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
(> ?%
ContentTypePartDefinition? X%
contentTypePartDefinitionY r
,r s(
UpdateTypePartEditorContext	t è
context
ê ó
)
ó ò
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &

CommonPart& 0
)0 1
,1 2%
contentTypePartDefinition3 L
.L M
PartDefinitionM [
.[ \
Name\ `
)` a
)a b
{   
return!! 
null!! 
;!! 
}"" 
var$$ 
model$$ 
=$$ 
new$$ '
CommonPartSettingsViewModel$$ 7
($$7 8
)$$8 9
;$$9 :
if&& 
(&& 
await&& 
context&& 
.&& 
Updater&& %
.&&% &
TryUpdateModelAsync&&& 9
(&&9 :
model&&: ?
,&&? @
Prefix&&A G
)&&G H
)&&H I
{'' 
context(( 
.(( 
Builder(( 
.((  
WithSettings((  ,
(((, -
new((- 0
CommonPartSettings((1 C
{((D E
DisplayDateEditor((F W
=((X Y
model((Z _
.((_ `
DisplayDateEditor((` q
,((q r
DisplayOwnerEditor	((s Ö
=
((Ü á
model
((à ç
.
((ç é 
DisplayOwnerEditor
((é †
}
((° ¢
)
((¢ £
;
((£ §
})) 
return++ 
Edit++ 
(++ %
contentTypePartDefinition++ 1
,++1 2
context++3 :
.++: ;
Updater++; B
)++B C
;++C D
},, 	
}-- 
}.. ∆-
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Settings\FullTextAspectSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 
Settings

 '
{ 
public 

class /
#FullTextAspectSettingsDisplayDriver 4
:5 6.
"ContentTypeDefinitionDisplayDriver7 Y
{ 
private 
readonly "
ILiquidTemplateManager /
_templateManager0 @
;@ A
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public /
#FullTextAspectSettingsDisplayDriver 2
(2 3"
ILiquidTemplateManager "
templateManager# 2
,2 3
IStringLocalizer 
< /
#FullTextAspectSettingsDisplayDriver @
>@ A
	localizerB K
)K L
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
(+ ,!
ContentTypeDefinition, A!
contentTypeDefinitionB W
)W X
{ 	
return 

Initialize 
< +
FullTextAspectSettingsViewModel =
>= >
(> ?
$str? \
,\ ]
model^ c
=>d f
{ 
var 
settings 
= !
contentTypeDefinition 4
.4 5
GetSettings5 @
<@ A"
FullTextAspectSettingsA W
>W X
(X Y
)Y Z
;Z [
model 
. #
IncludeFullTextTemplate -
=. /
settings0 8
.8 9#
IncludeFullTextTemplate9 P
;P Q
model   
.   
FullTextTemplate   &
=  ' (
settings  ) 1
.  1 2
FullTextTemplate  2 B
;  B C
model!! 
.!! 
IncludeDisplayText!! (
=!!) *
settings!!+ 3
.!!3 4
IncludeDisplayText!!4 F
;!!F G
model"" 
."" 
IncludeBodyAspect"" '
=""( )
settings""* 2
.""2 3
IncludeBodyAspect""3 D
;""D E
}## 
)## 
.## 
Location## 
(## 
$str## #
)### $
;##$ %
}$$ 	
public&& 
override&& 
async&& 
Task&& "
<&&" #
IDisplayResult&&# 1
>&&1 2
UpdateAsync&&3 >
(&&> ?!
ContentTypeDefinition&&? T!
contentTypeDefinition&&U j
,&&j k$
UpdateTypeEditorContext	&&l É
context
&&Ñ ã
)
&&ã å
{'' 	
var(( 
model(( 
=(( 
new(( +
FullTextAspectSettingsViewModel(( ;
(((; <
)((< =
;((= >
await** 
context** 
.** 
Updater** !
.**! "
TryUpdateModelAsync**" 5
(**5 6
model**6 ;
,**; <
Prefix**= C
,**C D
m++ 
=>++ 
m++ 
.++ #
IncludeFullTextTemplate++ .
,++. /
m,, 
=>,, 
m,, 
.,, 
FullTextTemplate,, '
,,,' (
m-- 
=>-- 
m-- 
.-- 
IncludeDisplayText-- )
,--) *
m.. 
=>.. 
m.. 
... 
IncludeBodyAspect.. (
)..( )
;..) *
if00 
(00 
!00 
string00 
.00 
IsNullOrEmpty00 %
(00% &
model00& +
.00+ ,
FullTextTemplate00, <
)00< =
&&00> @
!00A B
_templateManager00B R
.00R S
Validate00S [
(00[ \
model00\ a
.00a b
FullTextTemplate00b r
,00r s
out00t w
var00x {
errors	00| Ç
)
00Ç É
)
00É Ñ
{11 
context22 
.22 
Updater22 
.22  

ModelState22  *
.22* +
AddModelError22+ 8
(228 9
nameof229 ?
(22? @
model22@ E
.22E F
FullTextTemplate22F V
)22V W
,22W X
S22Y Z
[22Z [
$str	22[ û
,
22û ü
string
22† ¶
.
22¶ ß
Join
22ß ´
(
22´ ¨
$str
22¨ Ø
,
22Ø ∞
errors
22± ∑
)
22∑ ∏
]
22∏ π
)
22π ∫
;
22∫ ª
}33 
else44 
{55 
context66 
.66 
Builder66 
.66  
WithSettings66  ,
(66, -
new66- 0"
FullTextAspectSettings661 G
{77 #
IncludeFullTextTemplate88 +
=88, -
model88. 3
.883 4#
IncludeFullTextTemplate884 K
,88K L
FullTextTemplate99 $
=99% &
model99' ,
.99, -
FullTextTemplate99- =
,99= >
IncludeDisplayText:: &
=::' (
model::) .
.::. /
IncludeDisplayText::/ A
,::A B
IncludeBodyAspect;; %
=;;& '
model;;( -
.;;- .
IncludeBodyAspect;;. ?
}<< 
)<< 
;<< 
}== 
return?? 
Edit?? 
(?? !
contentTypeDefinition?? -
)??- .
;??. /
}@@ 	
}AA 
}BB Ï?
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Shapes.cs
	namespace 	
OrchardCore
 
. 
Contents 
{		 
public

 

class

 
Shapes

 
:

 
IShapeTableProvider

 -
{ 
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder 
. 
Describe 
( 
$str &
)& '
. 
OnDisplaying 
( 

displaying (
=>) +
{ 
dynamic 
shape !
=" #

displaying$ .
.. /
Shape/ 4
;4 5
ContentItem 
contentItem  +
=, -
shape. 3
.3 4
ContentItem4 ?
;? @
if 
( 
contentItem #
!=$ &
null' +
)+ ,
{ 

displaying "
." #
Shape# (
.( )
Metadata) 1
.1 2

Alternates2 <
.< =
Add= @
(@ A
$strA K
+L M"
EncodeAlternateElementN d
(d e

displayinge o
.o p
Shapep u
.u v
Metadatav ~
.~ 
DisplayType	 ä
)
ä ã
)
ã å
;
å ç

displaying "
." #
Shape# (
.( )
Metadata) 1
.1 2

Alternates2 <
.< =
Add= @
(@ A
$strA L
+M N"
EncodeAlternateElementO e
(e f
contentItemf q
.q r
ContentTyper }
)} ~
)~ 
;	 Ä

displaying!! "
.!!" #
Shape!!# (
.!!( )
Metadata!!) 1
.!!1 2

Alternates!!2 <
.!!< =
Add!!= @
(!!@ A
$str!!A L
+!!M N
contentItem!!O Z
.!!Z [
Id!![ ]
)!!] ^
;!!^ _

displaying$$ "
.$$" #
Shape$$# (
.$$( )
Metadata$$) 1
.$$1 2

Alternates$$2 <
.$$< =
Add$$= @
($$@ A
$str$$A K
+$$L M

displaying$$N X
.$$X Y
Shape$$Y ^
.$$^ _
Metadata$$_ g
.$$g h
DisplayType$$h s
+$$t u
$str$$v z
+$${ |#
EncodeAlternateElement	$$} ì
(
$$ì î
contentItem
$$î ü
.
$$ü †
ContentType
$$† ´
)
$$´ ¨
)
$$¨ ≠
;
$$≠ Æ

displaying'' "
.''" #
Shape''# (
.''( )
Metadata'') 1
.''1 2

Alternates''2 <
.''< =
Add''= @
(''@ A
$str''A K
+''L M

displaying''N X
.''X Y
Shape''Y ^
.''^ _
Metadata''_ g
.''g h
DisplayType''h s
+''t u
$str''v z
+''{ |
contentItem	''} à
.
''à â
Id
''â ã
)
''ã å
;
''å ç
}(( 
})) 
))) 
;)) 
builder,, 
.,, 
Describe,, 
(,, 
$str,, *
),,* +
.-- 
OnProcessing-- 
(-- 
async-- #
context--$ +
=>--, .
{.. 
dynamic// 
content// #
=//$ %
context//& -
.//- .
Shape//. 3
;//3 4
string00 
handle00 !
=00" #
content00$ +
.00+ ,
Handle00, 2
;002 3
string11 
displayType11 &
=11' (
content11) 0
.110 1
DisplayType111 <
;11< =
string22 
	alternate22 $
=22% &
content22' .
.22. /
	Alternate22/ 8
;228 9
if44 
(44 
String44 
.44 
IsNullOrEmpty44 ,
(44, -
handle44- 3
)443 4
)444 5
{55 
handle77 
=77  
content77! (
.77( )
Alias77) .
;77. /
if88 
(88 
String88 "
.88" #
IsNullOrEmpty88# 0
(880 1
handle881 7
)887 8
)888 9
{99 
return:: "
;::" #
};; 
}<< 
var>> 
contentManager>> &
=>>' (
context>>) 0
.>>0 1
ServiceProvider>>1 @
.>>@ A
GetRequiredService>>A S
<>>S T
IContentManager>>T c
>>>c d
(>>d e
)>>e f
;>>f g
var?? 
handleManager?? %
=??& '
context??( /
.??/ 0
ServiceProvider??0 ?
.??? @
GetRequiredService??@ R
<??R S!
IContentHandleManager??S h
>??h i
(??i j
)??j k
;??k l
var@@ 
displayManager@@ &
=@@' (
context@@) 0
.@@0 1
ServiceProvider@@1 @
.@@@ A
GetRequiredService@@A S
<@@S T&
IContentItemDisplayManager@@T n
>@@n o
(@@o p
)@@p q
;@@q r
varAA 
updateModelAccessorAA +
=AA, -
contextAA. 5
.AA5 6
ServiceProviderAA6 E
.AAE F
GetRequiredServiceAAF X
<AAX Y 
IUpdateModelAccessorAAY m
>AAm n
(AAn o
)AAo p
;AAp q
varCC 
contentItemIdCC %
=CC& '
awaitCC( -
handleManagerCC. ;
.CC; <!
GetContentItemIdAsyncCC< Q
(CCQ R
handleCCR X
)CCX Y
;CCY Z
ifEE 
(EE 
stringEE 
.EE 
IsNullOrEmptyEE ,
(EE, -
contentItemIdEE- :
)EE: ;
)EE; <
{FF 
returnGG 
;GG 
}HH 
varJJ 
contentItemJJ #
=JJ$ %
awaitJJ& +
contentManagerJJ, :
.JJ: ;
GetAsyncJJ; C
(JJC D
contentItemIdJJD Q
)JJQ R
;JJR S
ifLL 
(LL 
contentItemLL #
==LL$ &
nullLL' +
)LL+ ,
{MM 
returnNN 
;NN 
}OO 
contentQQ 
.QQ 
ContentItemQQ '
=QQ( )
contentItemQQ* 5
;QQ5 6
varSS 
displayShapeSS $
=SS% &
awaitSS' ,
displayManagerSS- ;
.SS; <
BuildDisplayAsyncSS< M
(SSM N
contentItemSSN Y
,SSY Z
updateModelAccessorSS[ n
.SSn o
ModelUpdaterSSo {
,SS{ |
displayType	SS} à
)
SSà â
;
SSâ ä
ifUU 
(UU 
!UU 
StringUU 
.UU  
IsNullOrEmptyUU  -
(UU- .
	alternateUU. 7
)UU7 8
)UU8 9
{VV 
displayShapeWW $
.WW$ %
MetadataWW% -
.WW- .

AlternatesWW. 8
.WW8 9
AddWW9 <
(WW< =
	alternateWW= F
)WWF G
;WWG H
}XX 
contentZZ 
.ZZ 
AddZZ 
(ZZ  
displayShapeZZ  ,
)ZZ, -
;ZZ- .
}[[ 
)[[ 
;[[ 
}\\ 	
privatecc 
stringcc "
EncodeAlternateElementcc -
(cc- .
stringcc. 4
alternateElementcc5 E
)ccE F
{dd 	
returnee 
alternateElementee #
.ee# $
Replaceee$ +
(ee+ ,
$stree, /
,ee/ 0
$stree1 5
)ee5 6
.ee6 7
Replaceee7 >
(ee> ?
$charee? B
,eeB C
$chareeD G
)eeG H
;eeH I
}ff 	
}gg 
}hh Øy
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\ContentTypesSitemapSourceBuilder.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Sitemaps '
{ 
public 

class ,
 ContentTypesSitemapSourceBuilder 1
:2 3$
SitemapSourceBuilderBase4 L
<L M%
ContentTypesSitemapSourceM f
>f g
{ 
private 
static 
readonly 

XNamespace  *
	Namespace+ 4
=5 6
$str7 d
;d e
private 
readonly ,
 IRouteableContentTypeCoordinator 9,
 _routeableContentTypeCoordinator: Z
;Z [
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly &
IContentItemsQueryProvider 3&
_contentItemsQueryProvider4 N
;N O
private 
readonly 
IEnumerable $
<$ %7
+ISitemapContentItemExtendedMetadataProvider% P
>P Q8
,_sitemapContentItemExtendedMetadataProvidersR ~
;~ 
public ,
 ContentTypesSitemapSourceBuilder /
(/ 0,
 IRouteableContentTypeCoordinator ,+
routeableContentTypeCoordinator- L
,L M
IContentManager 
contentManager *
,* +&
IContentItemsQueryProvider &%
contentItemsQueryProvider' @
,@ A
IEnumerable 
< 7
+ISitemapContentItemExtendedMetadataProvider C
>C D7
+sitemapContentItemExtendedMetadataProvidersE p
) 
{ 	,
 _routeableContentTypeCoordinator ,
=- .+
routeableContentTypeCoordinator/ N
;N O
_contentManager   
=   
contentManager   ,
;  , -&
_contentItemsQueryProvider!! &
=!!' (%
contentItemsQueryProvider!!) B
;!!B C8
,_sitemapContentItemExtendedMetadataProviders"" 8
=""9 :7
+sitemapContentItemExtendedMetadataProviders""; f
;""f g
}## 	
public%% 
override%% 
async%% 
Task%% "
BuildSourceAsync%%# 3
(%%3 4%
ContentTypesSitemapSource%%4 M
source%%N T
,%%T U!
SitemapBuilderContext%%V k
context%%l s
)%%s t
{&& 	
var'' 
queryContext'' 
='' 
new'' "$
ContentItemsQueryContext''# ;
(''; <
)''< =
;''= >
await(( &
_contentItemsQueryProvider(( ,
.((, - 
GetContentItemsAsync((- A
(((A B
source((B H
,((H I
queryContext((J V
)((V W
;((W X
foreach** 
(** 
var** 
sciemp** 
in**  "8
,_sitemapContentItemExtendedMetadataProviders**# O
)**O P
{++ 
context,, 
.,, 
Response,,  
.,,  !
ResponseElement,,! 0
.,,0 1
Add,,1 4
(,,4 5
sciemp,,5 ;
.,,; < 
GetExtendedAttribute,,< P
),,P Q
;,,Q R
}-- 
foreach// 
(// 
var// 
contentItem// $
in//% '
queryContext//( 4
.//4 5
ContentItems//5 A
)//A B
{00 
var11 
url11 
=11 
new11 
XElement11 &
(11& '
	Namespace11' 0
+111 2
$str113 8
)118 9
;119 :
if33 
(33 
await33 $
BuildUrlsetMetadataAsync33 2
(332 3
source333 9
,339 :
context33; B
,33B C
queryContext33D P
,33P Q
contentItem33R ]
,33] ^
url33_ b
)33b c
)33c d
{44 
context55 
.55 
Response55 $
.55$ %
ResponseElement55% 4
.554 5
Add555 8
(558 9
url559 <
)55< =
;55= >
}66 
}77 
}88 	
private:: 
async:: 
Task:: 
<:: 
bool:: 
>::  $
BuildUrlsetMetadataAsync::! 9
(::9 :%
ContentTypesSitemapSource::: S
source::T Z
,::Z [!
SitemapBuilderContext::\ q
context::r y
,::y z%
ContentItemsQueryContext	::{ ì
queryContext
::î †
,
::† °
ContentItem
::¢ ≠
contentItem
::Æ π
,
::π ∫
XElement
::ª √
url
::ƒ «
)
::« »
{;; 	
if<< 
(<< 
await<< 
BuildUrlAsync<< #
(<<# $
context<<$ +
,<<+ ,
contentItem<<- 8
,<<8 9
url<<: =
)<<= >
)<<> ?
{== 
if>> 
(>> 
await>> &
BuildExtendedMetadataAsync>> 4
(>>4 5
context>>5 <
,>>< =
queryContext>>> J
,>>J K
contentItem>>L W
,>>W X
url>>Y \
)>>\ ]
)>>] ^
{?? 
PopulateLastMod@@ #
(@@# $
contentItem@@$ /
,@@/ 0
url@@1 4
)@@4 5
;@@5 6
awaitAA +
PopulateChangeFrequencyPriorityAA 9
(AA9 :
sourceAA: @
,AA@ A
contentItemAAB M
,AAM N
urlAAO R
)AAR S
;AAS T
returnBB 
trueBB 
;BB  
}CC 
returnEE 
falseEE 
;EE 
}FF 
;FF 
returnHH 
falseHH 
;HH 
}II 	
privateKK 
asyncKK 
TaskKK 
<KK 
boolKK 
>KK  &
BuildExtendedMetadataAsyncKK! ;
(KK; <!
SitemapBuilderContextKK< Q
contextKKR Y
,KKY Z$
ContentItemsQueryContextKK[ s
queryContext	KKt Ä
,
KKÄ Å
ContentItem
KKÇ ç
contentItem
KKé ô
,
KKô ö
XElement
KKõ £
url
KK§ ß
)
KKß ®
{LL 	
varMM 
suceededMM 
=MM 
trueMM 
;MM  
foreachNN 
(NN 
varNN 
scNN 
inNN 8
,_sitemapContentItemExtendedMetadataProvidersNN K
)NNK L
{OO 
ifPP 
(PP 
!PP 
awaitPP 
scPP 
.PP &
ApplyExtendedMetadataAsyncPP 8
(PP8 9
contextPP9 @
,PP@ A
queryContextPPB N
,PPN O
contentItemPPP [
,PP[ \
urlPP] `
)PP` a
)PPa b
{QQ 
suceededRR 
=RR 
falseRR $
;RR$ %
}SS 
}TT 
returnUU 
suceededUU 
;UU 
}VV 	
privateXX 
asyncXX 
TaskXX 
<XX 
boolXX 
>XX  
BuildUrlAsyncXX! .
(XX. /!
SitemapBuilderContextXX/ D
contextXXE L
,XXL M
ContentItemXXN Y
contentItemXXZ e
,XXe f
XElementXXg o
urlXXp s
)XXs t
{YY 	
varZZ !
sitemapMetadataAspectZZ %
=ZZ& '
awaitZZ( -
_contentManagerZZ. =
.ZZ= >
PopulateAspectAsyncZZ> Q
<ZZQ R!
SitemapMetadataAspectZZR g
>ZZg h
(ZZh i
contentItemZZi t
)ZZt u
;ZZu v
if[[ 
([[ !
sitemapMetadataAspect[[ %
.[[% &
Exclude[[& -
)[[- .
{\\ 
return]] 
false]] 
;]] 
}^^ 
var`` 
locValue`` 
=`` 
await``  ,
 _routeableContentTypeCoordinator``! A
.``A B
GetRouteAsync``B O
(``O P
context``P W
,``W X
contentItem``Y d
)``d e
;``e f
varbb 
locbb 
=bb 
newbb 
XElementbb "
(bb" #
	Namespacebb# ,
+bb- .
$strbb/ 4
)bb4 5
;bb5 6
loccc 
.cc 
Addcc 
(cc 
locValuecc 
)cc 
;cc 
urldd 
.dd 
Adddd 
(dd 
locdd 
)dd 
;dd 
returnee 
trueee 
;ee 
}ff 	
privatehh 
asynchh 
Taskhh +
PopulateChangeFrequencyPriorityhh :
(hh: ;%
ContentTypesSitemapSourcehh; T
sourcehhU [
,hh[ \
ContentItemhh] h
contentItemhhi t
,hht u
XElementhhv ~
url	hh Ç
)
hhÇ É
{ii 	
varjj !
sitemapMetadataAspectjj %
=jj& '
awaitjj( -
_contentManagerjj. =
.jj= >
PopulateAspectAsyncjj> Q
<jjQ R!
SitemapMetadataAspectjjR g
>jjg h
(jjh i
contentItemjji t
)jjt u
;jju v
varll  
changeFrequencyValuell $
=ll% &!
sitemapMetadataAspectll' <
.ll< =
ChangeFrequencyll= L
;llL M
ifmm 
(mm 
Stringmm 
.mm 
IsNullOrEmptymm $
(mm$ % 
changeFrequencyValuemm% 9
)mm9 :
)mm: ;
{nn 
ifoo 
(oo 
sourceoo 
.oo 
IndexAlloo #
)oo# $
{pp  
changeFrequencyValueqq (
=qq) *
sourceqq+ 1
.qq1 2
ChangeFrequencyqq2 A
.qqA B
ToStringqqB J
(qqJ K
)qqK L
;qqL M
}rr 
elsess 
ifss 
(ss 
sourcess 
.ss  

LimitItemsss  *
)ss* +
{tt  
changeFrequencyValueuu (
=uu) *
sourceuu+ 1
.uu1 2
LimitedContentTypeuu2 D
.uuD E
ChangeFrequencyuuE T
.uuT U
ToStringuuU ]
(uu] ^
)uu^ _
;uu_ `
}vv 
elseww 
{xx 
varyy 
sitemapEntryyy $
=yy% &
sourceyy' -
.yy- .
ContentTypesyy. :
.zz 
FirstOrDefaultzz '
(zz' (
ctzz( *
=>zz+ -
Stringzz. 4
.zz4 5
Equalszz5 ;
(zz; <
ctzz< >
.zz> ?
ContentTypeNamezz? N
,zzN O
contentItemzzP [
.zz[ \
ContentTypezz\ g
)zzg h
)zzh i
;zzi j 
changeFrequencyValue|| (
=||) *
sitemapEntry||+ 7
.||7 8
ChangeFrequency||8 G
.||G H
ToString||H P
(||P Q
)||Q R
;||R S
}}} 
}~~ 
var
ÄÄ 
priorityIntValue
ÄÄ  
=
ÄÄ! "#
sitemapMetadataAspect
ÄÄ# 8
.
ÄÄ8 9
Priority
ÄÄ9 A
;
ÄÄA B
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
priorityIntValue
ÅÅ !
.
ÅÅ! "
HasValue
ÅÅ" *
)
ÅÅ* +
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
source
ÉÉ 
.
ÉÉ 
IndexAll
ÉÉ #
)
ÉÉ# $
{
ÑÑ 
priorityIntValue
ÖÖ $
=
ÖÖ% &
source
ÖÖ' -
.
ÖÖ- .
Priority
ÖÖ. 6
;
ÖÖ6 7
}
ÜÜ 
else
áá 
if
áá 
(
áá 
source
áá 
.
áá  

LimitItems
áá  *
)
áá* +
{
àà 
priorityIntValue
ââ $
=
ââ% &
source
ââ' -
.
ââ- . 
LimitedContentType
ââ. @
.
ââ@ A
Priority
ââA I
;
ââI J
}
ää 
else
ãã 
{
åå 
var
çç 
sitemapEntry
çç $
=
çç% &
source
çç' -
.
çç- .
ContentTypes
çç. :
.
éé 
FirstOrDefault
éé '
(
éé' (
ct
éé( *
=>
éé+ -
String
éé. 4
.
éé4 5
Equals
éé5 ;
(
éé; <
ct
éé< >
.
éé> ?
ContentTypeName
éé? N
,
ééN O
contentItem
ééP [
.
éé[ \
ContentType
éé\ g
)
éég h
)
ééh i
;
ééi j
priorityIntValue
êê $
=
êê% &
sitemapEntry
êê' 3
.
êê3 4
Priority
êê4 <
;
êê< =
}
ëë 
}
íí 
var
îî 
priorityValue
îî 
=
îî 
(
îî  !
priorityIntValue
îî! 1
*
îî2 3
$num
îî4 8
)
îî8 9
.
îî9 :
Value
îî: ?
.
îî? @
ToString
îî@ H
(
îîH I
CultureInfo
îîI T
.
îîT U
InvariantCulture
îîU e
)
îîe f
;
îîf g
var
ññ 

changeFreq
ññ 
=
ññ 
new
ññ  
XElement
ññ! )
(
ññ) *
	Namespace
ññ* 3
+
ññ4 5
$str
ññ6 B
)
ññB C
;
ññC D

changeFreq
óó 
.
óó 
Add
óó 
(
óó "
changeFrequencyValue
óó /
.
óó/ 0
ToLower
óó0 7
(
óó7 8
)
óó8 9
)
óó9 :
;
óó: ;
url
òò 
.
òò 
Add
òò 
(
òò 

changeFreq
òò 
)
òò 
;
òò  
var
öö 
priority
öö 
=
öö 
new
öö 
XElement
öö '
(
öö' (
	Namespace
öö( 1
+
öö2 3
$str
öö4 >
)
öö> ?
;
öö? @
priority
õõ 
.
õõ 
Add
õõ 
(
õõ 
priorityValue
õõ &
)
õõ& '
;
õõ' (
url
úú 
.
úú 
Add
úú 
(
úú 
priority
úú 
)
úú 
;
úú 
}
ùù 	
private
üü 
void
üü 
PopulateLastMod
üü $
(
üü$ %
ContentItem
üü% 0
contentItem
üü1 <
,
üü< =
XElement
üü> F
url
üüG J
)
üüJ K
{
†† 	
if
¢¢ 
(
¢¢ 
contentItem
¢¢ 
.
¢¢ 
ModifiedUtc
¢¢ '
.
¢¢' (
HasValue
¢¢( 0
)
¢¢0 1
{
££ 
var
§§ 
lastMod
§§ 
=
§§ 
new
§§ !
XElement
§§" *
(
§§* +
	Namespace
§§+ 4
+
§§5 6
$str
§§7 @
)
§§@ A
;
§§A B
lastMod
•• 
.
•• 
Add
•• 
(
•• 
contentItem
•• '
.
••' (
ModifiedUtc
••( 3
.
••3 4
GetValueOrDefault
••4 E
(
••E F
)
••F G
.
••G H
ToString
••H P
(
••P Q
$str
••Q i
)
••i j
)
••j k
;
••k l
url
¶¶ 
.
¶¶ 
Add
¶¶ 
(
¶¶ 
lastMod
¶¶ 
)
¶¶  
;
¶¶  !
}
ßß 
}
®® 	
}
©© 
}™™ Õo
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\ContentTypesSitemapSourceDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Sitemaps '
{ 
public 

class +
ContentTypesSitemapSourceDriver 0
:1 2
DisplayDriver3 @
<@ A
SitemapSourceA N
,N O%
ContentTypesSitemapSourceP i
>i j
{ 
private 
readonly 
IEnumerable $
<$ %)
IRouteableContentTypeProvider% B
>B C4
(_routeableContentTypeDefinitionProvidersD l
;l m
public +
ContentTypesSitemapSourceDriver .
(. /
IEnumerable 
< )
IRouteableContentTypeProvider 5
>5 63
'routeableContentTypeDefinitionProviders7 ^
) 
{ 	4
(_routeableContentTypeDefinitionProviders 4
=5 63
'routeableContentTypeDefinitionProviders7 ^
;^ _
} 	
public 
override 
IDisplayResult &
Display' .
(. /%
ContentTypesSitemapSource/ H
sitemapSourceI V
)V W
{ 	
return 
Combine 
( 
View 
( 
$str =
,= >
sitemapSource? L
)L M
.M N
LocationN V
(V W
$strW e
,e f
$strg p
)p q
,q r
View 
( 
$str :
,: ;
sitemapSource< I
)I J
.J K
LocationK S
(S T
$strT _
,_ `
$stra j
)j k
) 
; 
} 	
public   
override   
IDisplayResult   &
Edit  ' +
(  + ,%
ContentTypesSitemapSource  , E
sitemapSource  F S
,  S T
IUpdateModel  U a
updater  b i
)  i j
{!! 	
var"" "
contentTypeDefinitions"" &
=""' (4
(_routeableContentTypeDefinitionProviders"") Q
.## 

SelectMany## 
(## 
x## 
=>##  
x##! "
.##" #'
ListRoutableTypeDefinitions### >
(##> ?
)##? @
)##@ A
;##A B
var%% 
entries%% 
=%% "
contentTypeDefinitions%% 0
.&& 
Select&& 
(&& 
ctd&& 
=>&& 
new&& ",
 ContentTypeSitemapEntryViewModel&&# C
{'' 
ContentTypeName(( #
=(($ %
ctd((& )
.(() *
Name((* .
,((. /"
ContentTypeDisplayName)) *
=))+ ,
ctd))- 0
.))0 1
DisplayName))1 <
,))< =
	IsChecked** 
=** 
sitemapSource**  -
.**- .
ContentTypes**. :
.**: ;
Any**; >
(**> ?
s**? @
=>**A C
String**D J
.**J K
Equals**K Q
(**Q R
s**R S
.**S T
ContentTypeName**T c
,**c d
ctd**e h
.**h i
Name**i m
)**m n
)**n o
,**o p
ChangeFrequency++ #
=++$ %
sitemapSource++& 3
.++3 4
ContentTypes++4 @
.++@ A
FirstOrDefault++A O
(++O P
s++P Q
=>++R T
String++U [
.++[ \
Equals++\ b
(++b c
s++c d
.++d e
ContentTypeName++e t
,++t u
ctd++v y
.++y z
Name++z ~
)++~ 
)	++ Ä
?
++Ä Å
.
++Å Ç
ChangeFrequency
++Ç ë
??
++í î
ChangeFrequency
++ï §
.
++§ •
Daily
++• ™
,
++™ ´
Priority,, 
=,, 
sitemapSource,, ,
.,,, -
ContentTypes,,- 9
.,,9 :
FirstOrDefault,,: H
(,,H I
s,,I J
=>,,K M
String,,N T
.,,T U
Equals,,U [
(,,[ \
s,,\ ]
.,,] ^
ContentTypeName,,^ m
,,,m n
ctd,,o r
.,,r s
Name,,s w
),,w x
),,x y
?,,y z
.,,z {
Priority	,,{ É
??
,,Ñ Ü
$num
,,á à
,
,,à â
}-- 
)-- 
... 
OrderBy.. 
(.. 
ctd.. 
=>.. 
ctd..  #
...# $"
ContentTypeDisplayName..$ :
)..: ;
.// 
ToArray// 
(// 
)// 
;// 
var11 
limitedEntries11 
=11  "
contentTypeDefinitions11! 7
.22 
Select22 
(22 
ctd22 
=>22 
new22 "3
'ContentTypeLimitedSitemapEntryViewModel22# J
{33 
ContentTypeName44 #
=44$ %
ctd44& )
.44) *
Name44* .
,44. /"
ContentTypeDisplayName55 *
=55+ ,
ctd55- 0
.550 1
DisplayName551 <
}66 
)66 
.77 
OrderBy77 
(77 
ctd77 
=>77 
ctd77  #
.77# $"
ContentTypeDisplayName77$ :
)77: ;
.88 
ToArray88 
(88 
)88 
;88 
var:: 

limitedCtd:: 
=:: "
contentTypeDefinitions:: 3
.;; 
FirstOrDefault;; 
(;;  
ctd;;  #
=>;;$ &
String;;' -
.;;- .
Equals;;. 4
(;;4 5
sitemapSource;;5 B
.;;B C
LimitedContentType;;C U
.;;U V
ContentTypeName;;V e
,;;e f
ctd;;g j
.;;j k
Name;;k o
);;o p
);;p q
;;;q r
if== 
(== 

limitedCtd== 
!=== 
null== "
)==" #
{>> 
var?? 
limitedEntry??  
=??! "
limitedEntries??# 1
.??1 2
FirstOrDefault??2 @
(??@ A
le??A C
=>??D F
String??G M
.??M N
Equals??N T
(??T U
le??U W
.??W X
ContentTypeName??X g
,??g h

limitedCtd??i s
.??s t
Name??t x
)??x y
)??y z
;??z {
limitedEntry@@ 
.@@ 
Priority@@ %
=@@& '
sitemapSource@@( 5
.@@5 6
LimitedContentType@@6 H
.@@H I
Priority@@I Q
;@@Q R
limitedEntryAA 
.AA 
ChangeFrequencyAA ,
=AA- .
sitemapSourceAA/ <
.AA< =
LimitedContentTypeAA= O
.AAO P
ChangeFrequencyAAP _
;AA_ `
limitedEntryBB 
.BB 
SkipBB !
=BB" #
sitemapSourceBB$ 1
.BB1 2
LimitedContentTypeBB2 D
.BBD E
SkipBBE I
;BBI J
limitedEntryCC 
.CC 
TakeCC !
=CC" #
sitemapSourceCC$ 1
.CC1 2
LimitedContentTypeCC2 D
.CCD E
TakeCCE I
;CCI J
}DD 
returnFF 

InitializeFF 
<FF .
"ContentTypesSitemapSourceViewModelFF @
>FF@ A
(FFA B
$strFFB b
,FFb c
modelFFd i
=>FFj l
{GG 
modelHH 
.HH 
IndexAllHH 
=HH  
sitemapSourceHH! .
.HH. /
IndexAllHH/ 7
;HH7 8
modelII 
.II 

LimitItemsII  
=II! "
sitemapSourceII# 0
.II0 1

LimitItemsII1 ;
;II; <
modelJJ 
.JJ 
PriorityJJ 
=JJ  
sitemapSourceJJ! .
.JJ. /
PriorityJJ/ 7
;JJ7 8
modelKK 
.KK 
ChangeFrequencyKK %
=KK& '
sitemapSourceKK( 5
.KK5 6
ChangeFrequencyKK6 E
;KKE F
modelLL 
.LL 
ContentTypesLL "
=LL# $
entriesLL% ,
;LL, -
modelMM 
.MM 
LimitedContentTypesMM )
=MM* +
limitedEntriesMM, :
;MM: ;
modelNN 
.NN 
LimitedContentTypeNN (
=NN) *

limitedCtdNN+ 5
!=NN6 8
nullNN9 =
?NN> ?

limitedCtdNN@ J
.NNJ K
NameNNK O
:NNP Q"
contentTypeDefinitionsNNR h
.NNh i
FirstOrDefaultNNi w
(NNw x
)NNx y
.NNy z
NameNNz ~
;NN~ 
modelOO 
.OO 
SitemapSourceOO #
=OO$ %
sitemapSourceOO& 3
;OO3 4
}PP 
)PP 
.PP 
LocationPP 
(PP 
$strPP !
)PP! "
;PP" #
}QQ 	
publicSS 
overrideSS 
asyncSS 
TaskSS "
<SS" #
IDisplayResultSS# 1
>SS1 2
UpdateAsyncSS3 >
(SS> ?%
ContentTypesSitemapSourceSS? X
sitemapSSY `
,SS` a
UpdateEditorContextSSb u
contextSSv }
)SS} ~
{TT 	
varUU 
modelUU 
=UU 
newUU .
"ContentTypesSitemapSourceViewModelUU >
(UU> ?
)UU? @
;UU@ A
ifWW 
(WW 
awaitWW 
contextWW 
.WW 
UpdaterWW %
.WW% &
TryUpdateModelAsyncWW& 9
(WW9 :
modelWW: ?
,WW? @
PrefixXX 
,XX 
mYY 
=>YY 
mYY 
.YY 
IndexAllYY #
,YY# $
mZZ 
=>ZZ 
mZZ 
.ZZ 

LimitItemsZZ %
,ZZ% &
m[[ 
=>[[ 
m[[ 
.[[ 
Priority[[ #
,[[# $
m\\ 
=>\\ 
m\\ 
.\\ 
ChangeFrequency\\ *
,\\* +
m]] 
=>]] 
m]] 
.]] 
ContentTypes]] '
,]]' (
m^^ 
=>^^ 
m^^ 
.^^ 
LimitedContentTypes^^ .
,^^. /
m__ 
=>__ 
m__ 
.__ 
LimitedContentType__ -
)`` 
)`` 
{aa 
sitemapbb 
.bb 
IndexAllbb  
=bb! "
modelbb# (
.bb( )
IndexAllbb) 1
;bb1 2
sitemapcc 
.cc 

LimitItemscc "
=cc# $
modelcc% *
.cc* +

LimitItemscc+ 5
;cc5 6
sitemapdd 
.dd 
Prioritydd  
=dd! "
modeldd# (
.dd( )
Prioritydd) 1
;dd1 2
sitemapee 
.ee 
ChangeFrequencyee '
=ee( )
modelee* /
.ee/ 0
ChangeFrequencyee0 ?
;ee? @
sitemapff 
.ff 
ContentTypesff $
=ff% &
modelff' ,
.ff, -
ContentTypesff- 9
.gg 
Wheregg 
(gg 
xgg 
=>gg 
xgg  !
.gg! "
	IsCheckedgg" +
==gg, .
truegg/ 3
)gg3 4
.hh 
Selecthh 
(hh 
xhh 
=>hh  
newhh! $#
ContentTypeSitemapEntryhh% <
{ii 
ContentTypeNamejj '
=jj( )
xjj* +
.jj+ ,
ContentTypeNamejj, ;
,jj; <
ChangeFrequencykk '
=kk( )
xkk* +
.kk+ ,
ChangeFrequencykk, ;
,kk; <
Priorityll  
=ll! "
xll# $
.ll$ %
Priorityll% -
,ll- .
}mm 
)mm 
.nn 
ToArraynn 
(nn 
)nn 
;nn 
varpp 
limitedEntrypp  
=pp! "
modelpp# (
.pp( )
LimitedContentTypespp) <
.pp< =
FirstOrDefaultpp= K
(ppK L
lctppL O
=>ppP R
StringppS Y
.ppY Z
EqualsppZ `
(pp` a
lctppa d
.ppd e
ContentTypeNameppe t
,ppt u
modelppv {
.pp{ |
LimitedContentType	pp| é
)
ppé è
)
ppè ê
;
ppê ë
ifqq 
(qq 
limitedEntryqq  
!=qq! #
nullqq$ (
)qq( )
{rr 
sitemapss 
.ss 
LimitedContentTypess .
.ss. /
ContentTypeNamess/ >
=ss? @
limitedEntryssA M
.ssM N
ContentTypeNamessN ]
;ss] ^
sitemaptt 
.tt 
LimitedContentTypett .
.tt. /
ChangeFrequencytt/ >
=tt? @
limitedEntryttA M
.ttM N
ChangeFrequencyttN ]
;tt] ^
sitemapuu 
.uu 
LimitedContentTypeuu .
.uu. /
Priorityuu/ 7
=uu8 9
limitedEntryuu: F
.uuF G
PriorityuuG O
;uuO P
sitemapvv 
.vv 
LimitedContentTypevv .
.vv. /
Skipvv/ 3
=vv4 5
limitedEntryvv6 B
.vvB C
SkipvvC G
;vvG H
sitemapww 
.ww 
LimitedContentTypeww .
.ww. /
Takeww/ 3
=ww4 5
limitedEntryww6 B
.wwB C
TakewwC G
;wwG H
}xx 
elseyy 
{zz 
sitemap{{ 
.{{ 
LimitedContentType{{ .
={{/ 0
new{{1 4*
LimitedContentTypeSitemapEntry{{5 S
({{S T
){{T U
;{{U V
}|| 
}}} 
;}} 
return 
Edit 
( 
sitemap 
,  
context! (
.( )
Updater) 0
)0 1
;1 2
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ﬁ/
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\ContentTypesSitemapSourceModifiedDateProvider.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Sitemaps '
{ 
public 

class 9
-ContentTypesSitemapSourceModifiedDateProvider >
:? @1
%SitemapSourceModifiedDateProviderBaseA f
<f g&
ContentTypesSitemapSource	g Ä
>
Ä Å
{ 
private 
readonly ,
 IRouteableContentTypeCoordinator 9,
 _routeableContentTypeCoordinator: Z
;Z [
private 
readonly 
ISession !
_session" *
;* +
public 9
-ContentTypesSitemapSourceModifiedDateProvider <
(< =,
 IRouteableContentTypeCoordinator ,+
routeableContentTypeCoordinator- L
,L M
ISession 
session 
) 
{ 	,
 _routeableContentTypeCoordinator ,
=- .+
routeableContentTypeCoordinator/ N
;N O
_session 
= 
session 
; 
} 	
public 
override 
async 
Task "
<" #
DateTime# +
?+ ,
>, -$
GetLastModifiedDateAsync. F
(F G%
ContentTypesSitemapSourceG `
sourcea g
)g h
{ 	
ContentItem #
lastModifiedContentItem /
;/ 0
if   
(   
source   
.   
IndexAll   
)    
{!! 
var"" 
typesToIndex""  
=""! ",
 _routeableContentTypeCoordinator""# C
.## '
ListRoutableTypeDefinitions## 0
(##0 1
)##1 2
.$$ 
Select$$ 
($$ 
ctd$$ 
=>$$  "
ctd$$# &
.$$& '
Name$$' +
)$$+ ,
;$$, -
var&& 
query&& 
=&& 
_session&& $
.&&$ %
Query&&% *
<&&* +
ContentItem&&+ 6
>&&6 7
(&&7 8
)&&8 9
.'' 
With'' 
<'' 
ContentItemIndex'' *
>''* +
(''+ ,
x'', -
=>''. 0
x''1 2
.''2 3
	Published''3 <
&&''= ?
x''@ A
.''A B
ContentType''B M
.''M N
IsIn''N R
(''R S
typesToIndex''S _
)''_ `
)''` a
.(( 
OrderByDescending(( &
(((& '
x((' (
=>(() +
x((, -
.((- .
ModifiedUtc((. 9
)((9 :
;((: ;#
lastModifiedContentItem** '
=**( )
await*** /
query**0 5
.**5 6
FirstOrDefaultAsync**6 I
(**I J
)**J K
;**K L
}++ 
else,, 
if,, 
(,, 
source,, 
.,, 

LimitItems,, &
),,& '
{-- 
var.. 
query.. 
=.. 
_session.. $
...$ %
Query..% *
<..* +
ContentItem..+ 6
>..6 7
(..7 8
)..8 9
.// 
With// 
<// 
ContentItemIndex// *
>//* +
(//+ ,
x//, -
=>//. 0
x//1 2
.//2 3
	Published//3 <
&&//= ?
x//@ A
.//A B
ContentType//B M
==//N P
source//Q W
.//W X
LimitedContentType//X j
.//j k
ContentTypeName//k z
)//z {
.00 
OrderByDescending00 &
(00& '
x00' (
=>00) +
x00, -
.00- .
ModifiedUtc00. 9
)009 :
;00: ;#
lastModifiedContentItem22 '
=22( )
await22* /
query220 5
.225 6
FirstOrDefaultAsync226 I
(22I J
)22J K
;22K L
}33 
else44 
{55 
var66 
typesToIndex66  
=66! ",
 _routeableContentTypeCoordinator66# C
.77 '
ListRoutableTypeDefinitions77 0
(770 1
)771 2
.88 
Where88 
(88 
ctd88 
=>88 !
source88" (
.88( )
ContentTypes88) 5
.885 6
Any886 9
(889 :
s88: ;
=>88< >
String88? E
.88E F
Equals88F L
(88L M
ctd88M P
.88P Q
Name88Q U
,88U V
s88W X
.88X Y
ContentTypeName88Y h
)88h i
)88i j
)88j k
.99 
Select99 
(99 
ctd99 
=>99  "
ctd99# &
.99& '
Name99' +
)99+ ,
;99, -
var<< 
query<< 
=<< 
_session<< $
.<<$ %
Query<<% *
<<<* +
ContentItem<<+ 6
><<6 7
(<<7 8
)<<8 9
.== 
With== 
<== 
ContentItemIndex== *
>==* +
(==+ ,
x==, -
=>==. 0
x==1 2
.==2 3
	Published==3 <
&&=== ?
x==@ A
.==A B
ContentType==B M
.==M N
IsIn==N R
(==R S
typesToIndex==S _
)==_ `
)==` a
.>> 
OrderByDescending>> &
(>>& '
x>>' (
=>>>) +
x>>, -
.>>- .
ModifiedUtc>>. 9
)>>9 :
;>>: ;#
lastModifiedContentItem@@ '
=@@( )
await@@* /
query@@0 5
.@@5 6
FirstOrDefaultAsync@@6 I
(@@I J
)@@J K
;@@K L
}AA 
returnCC #
lastModifiedContentItemCC *
.CC* +
ModifiedUtcCC+ 6
;CC6 7
}DD 	
}EE 
}FF ˝$
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\ContentTypesSitemapSourceUpdateHandler.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
Sitemaps		 '
{

 
public 

class 2
&ContentTypesSitemapSourceUpdateHandler 7
:8 9'
ISitemapSourceUpdateHandler: U
{ 
private 
readonly 
ISitemapManager (
_sitemapManager) 8
;8 9
public 2
&ContentTypesSitemapSourceUpdateHandler 5
(5 6
ISitemapManager6 E
sitemapManagerF T
)T U
{ 	
_sitemapManager 
= 
sitemapManager ,
;, -
} 	
public 
async 
Task 
UpdateSitemapAsync ,
(, - 
SitemapUpdateContext- A
contextB I
)I J
{ 	
var 
contentItem 
= 
context %
.% &
UpdateObject& 2
as3 5
ContentItem6 A
;A B
if 
( 
contentItem 
== 
null #
)# $
{ 
return 
; 
} 
var 
sitemaps 
= 
( 
await !
_sitemapManager" 1
.1 2
LoadSitemapsAsync2 C
(C D
)D E
)E F
. 
Where 
( 
s 
=> 
s 
. 
GetType %
(% &
)& '
==( *
typeof+ 1
(1 2
Sitemap2 9
)9 :
): ;
;; <
if   
(   
!   
sitemaps   
.   
Any   
(   
)   
)    
{!! 
return"" 
;"" 
}## 
var%% 
contentTypeName%% 
=%%  !
contentItem%%" -
.%%- .
ContentType%%. 9
;%%9 :
foreach'' 
('' 
var'' 
sitemap''  
in''! #
sitemaps''$ ,
)'', -
{(( 
foreach** 
(** 
var** 
source** #
in**$ &
sitemap**' .
.**. /
SitemapSources**/ =
.++ 
Select++ 
(++ 
s++ 
=>++  
s++! "
as++# %%
ContentTypesSitemapSource++& ?
)++? @
)++@ A
{,, 
if-- 
(-- 
source-- 
==-- !
null--" &
)--& '
{.. 
continue//  
;//  !
}00 
if22 
(22 
source22 
.22 
IndexAll22 '
)22' (
{33 
sitemap44 
.44  

Identifier44  *
=44+ ,
IdGenerator44- 8
.448 9

GenerateId449 C
(44C D
)44D E
;44E F
break55 
;55 
}66 
else77 
if77 
(77 
source77 #
.77# $

LimitItems77$ .
&&77/ 1
String772 8
.778 9
Equals779 ?
(77? @
source77@ F
.77F G
LimitedContentType77G Y
.77Y Z
ContentTypeName77Z i
,77i j
contentTypeName77k z
)77z {
)77{ |
{88 
sitemap99 
.99  

Identifier99  *
=99+ ,
IdGenerator99- 8
.998 9

GenerateId999 C
(99C D
)99D E
;99E F
break:: 
;:: 
};; 
else<< 
if<< 
(<< 
source<< #
.<<# $
ContentTypes<<$ 0
.<<0 1
Any<<1 4
(<<4 5
ct<<5 7
=><<8 :
String<<; A
.<<A B
Equals<<B H
(<<H I
ct<<I K
.<<K L
ContentTypeName<<L [
,<<[ \
contentTypeName<<] l
)<<l m
)<<m n
)<<n o
{== 
sitemap>> 
.>>  

Identifier>>  *
=>>+ ,
IdGenerator>>- 8
.>>8 9

GenerateId>>9 C
(>>C D
)>>D E
;>>E F
break?? 
;?? 
}@@ 
}AA 
}BB 
awaitDD 
_sitemapManagerDD !
.DD! "
UpdateSitemapAsyncDD" 4
(DD4 5
)DD5 6
;DD6 7
}EE 	
}FF 
}GG "
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\ContentTypesSitemapSourceViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Sitemaps '
{ 
public 

class .
"ContentTypesSitemapSourceViewModel 3
{ 
public 
bool 
IndexAll 
{ 
get "
;" #
set$ '
;' (
}) *
public

 
bool

 

LimitItems

 
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
public 
ChangeFrequency 
ChangeFrequency .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, -
;- .
public ,
 ContentTypeSitemapEntryViewModel /
[/ 0
]0 1
ContentTypes2 >
{? @
getA D
;D E
setF I
;I J
}K L
=M N
newO R,
 ContentTypeSitemapEntryViewModelS s
[s t
]t u
{v w
}x y
;y z
public 3
'ContentTypeLimitedSitemapEntryViewModel 6
[6 7
]7 8
LimitedContentTypes9 L
{M N
getO R
;R S
setT W
;W X
}Y Z
=[ \
new] `4
'ContentTypeLimitedSitemapEntryViewModel	a à
[
à â
]
â ä
{
ã å
}
ç é
;
é è
public 
string 
LimitedContentType (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
	BindNever	 
] 
public 
SitemapSource 
SitemapSource *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
public 

class ,
 ContentTypeSitemapEntryViewModel 1
{ 
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string "
ContentTypeDisplayName ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
ContentTypeName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
ChangeFrequency 
ChangeFrequency .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public   
int   
Priority   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
}!! 
public## 

class## 3
'ContentTypeLimitedSitemapEntryViewModel## 8
{$$ 
public%% 
string%% "
ContentTypeDisplayName%% ,
{%%- .
get%%/ 2
;%%2 3
set%%4 7
;%%7 8
}%%9 :
public&& 
string&& 
ContentTypeName&& %
{&&& '
get&&( +
;&&+ ,
set&&- 0
;&&0 1
}&&2 3
public'' 
ChangeFrequency'' 
ChangeFrequency'' .
{''/ 0
get''1 4
;''4 5
set''6 9
;''9 :
}''; <
=''= >
ChangeFrequency''? N
.''N O
Daily''O T
;''T U
public(( 
int(( 
Priority(( 
{(( 
get(( !
;((! "
set((# &
;((& '
}((( )
=((* +
$num((, -
;((- .
public)) 
int)) 
Skip)) 
{)) 
get)) 
;)) 
set)) "
;))" #
}))$ %
public** 
int** 
Take** 
{** 
get** 
;** 
set** "
;**" #
}**$ %
=**& '
$num**( .
;**. /
}++ 
},, î
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\ContentTypesSitemapUpdateHandler.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Sitemaps '
{ 
public 

class ,
 ContentTypesSitemapUpdateHandler 1
:2 3
ContentHandlerBase4 F
{ 
private		 
readonly		 !
ISitemapUpdateHandler		 .!
_sitemapUpdateHandler		/ D
;		D E
public ,
 ContentTypesSitemapUpdateHandler /
(/ 0!
ISitemapUpdateHandler0 E 
sitemapUpdateHandlerF Z
)Z [
{ 	!
_sitemapUpdateHandler !
=" # 
sitemapUpdateHandler$ 8
;8 9
} 	
public 
override 
Task 
PublishedAsync +
(+ ,!
PublishContentContext, A
contextB I
)I J
{ 	
var 
updateContext 
= 
new  # 
SitemapUpdateContext$ 8
{ 
UpdateObject 
= 
context &
.& '
ContentItem' 2
,2 3
} 
; 
return !
_sitemapUpdateHandler (
.( )
UpdateSitemapAsync) ;
(; <
updateContext< I
)I J
;J K
} 	
public 
override 
Task 
UnpublishedAsync -
(- .!
PublishContentContext. C
contextD K
)K L
{ 	
var 
updateContext 
= 
new  # 
SitemapUpdateContext$ 8
{ 
UpdateObject 
= 
context &
.& '
ContentItem' 2
,2 3
} 
; 
return!! !
_sitemapUpdateHandler!! (
.!!( )
UpdateSitemapAsync!!) ;
(!!; <
updateContext!!< I
)!!I J
;!!J K
}"" 	
}## 
}$$ ¯4
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Sitemaps\DefaultContentItemsQueryProvider.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
Sitemaps '
{ 
public 

class ,
 DefaultContentItemsQueryProvider 1
:2 3&
IContentItemsQueryProvider4 N
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly ,
 IRouteableContentTypeCoordinator 9,
 _routeableContentTypeCoordinator: Z
;Z [
public ,
 DefaultContentItemsQueryProvider /
(/ 0
ISession 
session 
, ,
 IRouteableContentTypeCoordinator ,+
routeableContentTypeCoordinator- L
) 
{ 	
_session 
= 
session 
; ,
 _routeableContentTypeCoordinator ,
=- .+
routeableContentTypeCoordinator/ N
;N O
} 	
public 
async 
Task  
GetContentItemsAsync .
(. /%
ContentTypesSitemapSource/ H
sourceI O
,O P$
ContentItemsQueryContextQ i
contextj q
)q r
{ 	
var +
routeableContentTypeDefinitions /
=0 1,
 _routeableContentTypeCoordinator2 R
.R S'
ListRoutableTypeDefinitionsS n
(n o
)o p
;p q
if   
(   
source   
.   
IndexAll   
)    
{!! 
var"" 
	rctdNames"" 
="" +
routeableContentTypeDefinitions""  ?
.""? @
Select""@ F
(""F G
rctd""G K
=>""L N
rctd""O S
.""S T
Name""T X
)""X Y
;""Y Z
var$$ 
queryResults$$  
=$$! "
await$$# (
_session$$) 1
.$$1 2
Query$$2 7
<$$7 8
ContentItem$$8 C
>$$C D
($$D E
)$$E F
.%% 
With%% 
<%% 
ContentItemIndex%% *
>%%* +
(%%+ ,
x%%, -
=>%%. 0
x%%1 2
.%%2 3
	Published%%3 <
&&%%= ?
x%%@ A
.%%A B
ContentType%%B M
.%%M N
IsIn%%N R
(%%R S
	rctdNames%%S \
)%%\ ]
)%%] ^
.&& 
OrderBy&& 
(&& 
x&& 
=>&& !
x&&" #
.&&# $

CreatedUtc&&$ .
)&&. /
.'' 
	ListAsync'' 
('' 
)''  
;''  !
context)) 
.)) 
ContentItems)) $
=))% &
queryResults))' 3
;))3 4
}** 
else++ 
if++ 
(++ 
source++ 
.++ 

LimitItems++ &
)++& '
{,, 
var.. 
typeIsValid.. 
=..  !+
routeableContentTypeDefinitions.." A
.// 
Any// 
(// 
ctd// 
=>// 
String//  &
.//& '
Equals//' -
(//- .
source//. 4
.//4 5
LimitedContentType//5 G
.//G H
ContentTypeName//H W
,//W X
ctd//Y \
.//\ ]
Name//] a
)//a b
)//b c
;//c d
if11 
(11 
typeIsValid11 
)11  
{22 
var33 
queryResults33 $
=33% &
await33' ,
_session33- 5
.335 6
Query336 ;
<33; <
ContentItem33< G
>33G H
(33H I
)33I J
.44 
With44 
<44 
ContentItemIndex44 .
>44. /
(44/ 0
x440 1
=>442 4
x445 6
.446 7
ContentType447 B
==44C E
source44F L
.44L M
LimitedContentType44M _
.44_ `
ContentTypeName44` o
&&44p r
x44s t
.44t u
	Published44u ~
)44~ 
.55 
OrderBy55  
(55  !
x55! "
=>55# %
x55& '
.55' (

CreatedUtc55( 2
)552 3
.66 
Skip66 
(66 
source66 $
.66$ %
LimitedContentType66% 7
.667 8
Skip668 <
)66< =
.77 
Take77 
(77 
source77 $
.77$ %
LimitedContentType77% 7
.777 8
Take778 <
)77< =
.88 
	ListAsync88 "
(88" #
)88# $
;88$ %
context:: 
.:: 
ContentItems:: (
=::) *
queryResults::+ 7
;::7 8
};; 
}<< 
else== 
{>> 
var@@ 
typesToIndex@@  
=@@! "+
routeableContentTypeDefinitions@@# B
.AA 
WhereAA 
(AA 
ctdAA 
=>AA !
sourceAA" (
.AA( )
ContentTypesAA) 5
.AA5 6
AnyAA6 9
(AA9 :
sAA: ;
=>AA< >
StringAA? E
.AAE F
EqualsAAF L
(AAL M
ctdAAM P
.AAP Q
NameAAQ U
,AAU V
sAAW X
.AAX Y
ContentTypeNameAAY h
)AAh i
)AAi j
)AAj k
.BB 
SelectBB 
(BB 
xBB 
=>BB  
xBB! "
.BB" #
NameBB# '
)BB' (
;BB( )
varDD 
queryResultsDD  
=DD! "
awaitDD# (
_sessionDD) 1
.DD1 2
QueryDD2 7
<DD7 8
ContentItemDD8 C
>DDC D
(DDD E
)DDE F
.EE 
WithEE 
<EE 
ContentItemIndexEE *
>EE* +
(EE+ ,
xEE, -
=>EE. 0
xEE1 2
.EE2 3
ContentTypeEE3 >
.EE> ?
IsInEE? C
(EEC D
typesToIndexEED P
)EEP Q
&&EER T
xEEU V
.EEV W
	PublishedEEW `
)EE` a
.FF 
OrderByFF 
(FF 
xFF 
=>FF !
xFF" #
.FF# $

CreatedUtcFF$ .
)FF. /
.GG 
	ListAsyncGG 
(GG 
)GG  
;GG  !
contextII 
.II 
ContentItemsII $
=II% &
queryResultsII' 3
;II3 4
}JJ 
}KK 	
}LL 
}MM ÚÊ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Startup.cs
	namespace66 	
OrchardCore66
 
.66 
Contents66 
{77 
public88 

class88 
Startup88 
:88 
StartupBase88 &
{99 
private:: 
readonly:: 
AdminOptions:: %
_adminOptions::& 3
;::3 4
static<< 
Startup<< 
(<< 
)<< 
{== 	
TemplateContext>> 
.>> &
GlobalMemberAccessStrategy>> 6
.>>6 7
Register>>7 ?
<>>? @
ContentItem>>@ K
>>>K L
(>>L M
)>>M N
;>>N O
TemplateContext?? 
.?? &
GlobalMemberAccessStrategy?? 6
.??6 7
Register??7 ?
<??? @
ContentElement??@ N
>??N O
(??O P
)??P Q
;??Q R
TemplateContext@@ 
.@@ &
GlobalMemberAccessStrategy@@ 6
.@@6 7
Register@@7 ?
<@@? @
ShapeViewModel@@@ N
<@@N O
ContentItem@@O Z
>@@Z [
>@@[ \
(@@\ ]
)@@] ^
;@@^ _
TemplateContextAA 
.AA &
GlobalMemberAccessStrategyAA 6
.AA6 7
RegisterAA7 ?
<AA? @%
ContentTypePartDefinitionAA@ Y
>AAY Z
(AAZ [
)AA[ \
;AA\ ]
TemplateContextBB 
.BB &
GlobalMemberAccessStrategyBB 6
.BB6 7
RegisterBB7 ?
<BB? @&
ContentPartFieldDefinitionBB@ Z
>BBZ [
(BB[ \
)BB\ ]
;BB] ^
TemplateContextCC 
.CC &
GlobalMemberAccessStrategyCC 6
.CC6 7
RegisterCC7 ?
<CC? @"
ContentFieldDefinitionCC@ V
>CCV W
(CCW X
)CCX Y
;CCY Z
TemplateContextDD 
.DD &
GlobalMemberAccessStrategyDD 6
.DD6 7
RegisterDD7 ?
<DD? @!
ContentPartDefinitionDD@ U
>DDU V
(DDV W
)DDW X
;DDX Y
}EE 	
publicGG 
StartupGG 
(GG 
IOptionsGG 
<GG  
AdminOptionsGG  ,
>GG, -
adminOptionsGG. :
)GG: ;
{HH 	
_adminOptionsII 
=II 
adminOptionsII (
.II( )
ValueII) .
;II. /
}JJ 	
publicLL 
overrideLL 
voidLL 
ConfigureServicesLL .
(LL. /
IServiceCollectionLL/ A
servicesLLB J
)LLJ K
{MM 	
servicesNN 
.NN  
AddContentManagementNN )
(NN) *
)NN* +
;NN+ ,
servicesOO 
.OO '
AddContentManagementDisplayOO 0
(OO0 1
)OO1 2
;OO2 3
servicesPP 
.PP 
	AddScopedPP 
<PP 
IPermissionProviderPP 2
,PP2 3
PermissionsPP4 ?
>PP? @
(PP@ A
)PPA B
;PPB C
servicesQQ 
.QQ 
	AddScopedQQ 
<QQ 
IPermissionProviderQQ 2
,QQ2 3"
ContentTypePermissionsQQ4 J
>QQJ K
(QQK L
)QQL M
;QQM N
servicesRR 
.RR 
	AddScopedRR 
<RR !
IAuthorizationHandlerRR 4
,RR4 5+
ContentTypeAuthorizationHandlerRR6 U
>RRU V
(RRV W
)RRW X
;RRX Y
servicesSS 
.SS 
	AddScopedSS 
<SS 
IShapeTableProviderSS 2
,SS2 3
ShapesSS4 :
>SS: ;
(SS; <
)SS< =
;SS= >
servicesTT 
.TT 
	AddScopedTT 
<TT 
INavigationProviderTT 2
,TT2 3
	AdminMenuTT4 =
>TT= >
(TT> ?
)TT? @
;TT@ A
servicesUU 
.UU 
	AddScopedUU 
<UU !
IContentDisplayDriverUU 4
,UU4 5
ContentsDriverUU6 D
>UUD E
(UUE F
)UUF G
;UUG H
servicesVV 
.VV 
	AddScopedVV 
<VV 
IContentHandlerVV .
,VV. /
ContentsHandlerVV0 ?
>VV? @
(VV@ A
)VVA B
;VVB C
servicesWW 
.WW "
AddRecipeExecutionStepWW +
<WW+ ,
ContentStepWW, 7
>WW7 8
(WW8 9
)WW9 :
;WW: ;
servicesYY 
.YY 
	AddScopedYY 
<YY $
IContentItemIndexHandlerYY 7
,YY7 8'
FullTextContentIndexHandlerYY9 T
>YYT U
(YYU V
)YYV W
;YYW X
servicesZZ 
.ZZ 
	AddScopedZZ 
<ZZ $
IContentItemIndexHandlerZZ 7
,ZZ7 8&
AspectsContentIndexHandlerZZ9 S
>ZZS T
(ZZT U
)ZZU V
;ZZV W
services[[ 
.[[ 
	AddScoped[[ 
<[[ $
IContentItemIndexHandler[[ 7
,[[7 8&
DefaultContentIndexHandler[[9 S
>[[S T
([[T U
)[[U V
;[[V W
services\\ 
.\\ 
	AddScoped\\ 
<\\ "
IContentHandleProvider\\ 5
,\\5 6'
ContentItemIdHandleProvider\\7 R
>\\R S
(\\S T
)\\T U
;\\U V
services]] 
.]] 
	AddScoped]] 
<]] $
IContentItemIndexHandler]] 7
,]]7 8'
ContentItemIndexCoordinator]]9 T
>]]T U
(]]U V
)]]V W
;]]W X
services__ 
.__ 
AddIdGeneration__ $
(__$ %
)__% &
;__& '
services`` 
.`` 
	AddScoped`` 
<`` 
IDataMigration`` -
,``- .

Migrations``/ 9
>``9 :
(``: ;
)``; <
;``< =
servicescc 
.cc 
AddContentPartcc #
<cc# $

CommonPartcc$ .
>cc. /
(cc/ 0
)cc0 1
.dd 
UseDisplayDriverdd !
<dd! "
DateEditorDriverdd" 2
>dd2 3
(dd3 4
)dd4 5
.ee 
UseDisplayDriveree !
<ee! "
OwnerEditorDriveree" 3
>ee3 4
(ee4 5
)ee5 6
;ee6 7
servicesgg 
.gg 
	AddScopedgg 
<gg 3
'IContentTypePartDefinitionDisplayDrivergg F
,ggF G+
CommonPartSettingsDisplayDriverggH g
>ggg h
(ggh i
)ggi j
;ggj k
servicesjj 
.jj 
	AddScopedjj 
<jj /
#IContentTypeDefinitionDisplayDriverjj B
,jjB C/
#FullTextAspectSettingsDisplayDriverjjD g
>jjg h
(jjh i
)jji j
;jjj k
serviceskk 
.kk 
	AddScopedkk 
<kk 
IContentHandlerkk .
,kk. /(
FullTextAspectContentHandlerkk0 L
>kkL M
(kkM N
)kkN O
;kkO P
servicesmm 
.mm 
AddTagHelpersmm "
<mm" # 
ContentLinkTagHelpermm# 7
>mm7 8
(mm8 9
)mm9 :
;mm: ;
servicesnn 
.nn 
AddTagHelpersnn "
<nn" # 
ContentItemTagHelpernn# 7
>nn7 8
(nn8 9
)nn9 :
;nn: ;
servicesoo 
.oo 
	Configureoo 
<oo 
AutorouteOptionsoo /
>oo/ 0
(oo0 1
optionsoo1 8
=>oo9 ;
{pp 
ifqq 
(qq 
optionsqq 
.qq 
GlobalRouteValuesqq -
.qq- .
Countqq. 3
==qq4 6
$numqq7 8
)qq8 9
{rr 
optionsss 
.ss 
GlobalRouteValuesss -
=ss. /
newss0 3 
RouteValueDictionaryss4 H
{tt 
{uu 
$struu 
,uu  
$struu! 7
}uu7 8
,uu8 9
{vv 
$strvv %
,vv% &
$strvv' -
}vv- .
,vv. /
{ww 
$strww !
,ww! "
$strww# ,
}ww, -
}xx 
;xx 
optionszz 
.zz 
ContentItemIdKeyzz ,
=zz- .
$strzz/ >
;zz> ?
options{{ 
.{{ %
ContainedContentItemIdKey{{ 5
={{6 7
$str{{8 P
;{{P Q
options|| 
.|| 
JsonPathKey|| '
=||( )
$str||* 4
;||4 5
}}} 
}~~ 
)~~ 
;~~ 
services
ÄÄ 
.
ÄÄ 
	AddScoped
ÄÄ 
<
ÄÄ &
IContentsAdminListFilter
ÄÄ 7
,
ÄÄ7 8,
DefaultContentsAdminListFilter
ÄÄ9 W
>
ÄÄW X
(
ÄÄX Y
)
ÄÄY Z
;
ÄÄZ [
services
ÅÅ 
.
ÅÅ 
	AddScoped
ÅÅ 
<
ÅÅ ,
IContentsAdminListQueryService
ÅÅ =
,
ÅÅ= >2
$DefaultContentsAdminListQueryService
ÅÅ? c
>
ÅÅc d
(
ÅÅd e
)
ÅÅe f
;
ÅÅf g
services
ÉÉ 
.
ÉÉ 
	AddScoped
ÉÉ 
<
ÉÉ 
IDisplayManager
ÉÉ .
<
ÉÉ. /%
ContentOptionsViewModel
ÉÉ/ F
>
ÉÉF G
,
ÉÉG H
DisplayManager
ÉÉI W
<
ÉÉW X%
ContentOptionsViewModel
ÉÉX o
>
ÉÉo p
>
ÉÉp q
(
ÉÉq r
)
ÉÉr s
;
ÉÉs t
services
ÑÑ 
.
ÑÑ 
	AddScoped
ÑÑ 
<
ÑÑ 
IDisplayDriver
ÑÑ -
<
ÑÑ- .%
ContentOptionsViewModel
ÑÑ. E
>
ÑÑE F
,
ÑÑF G)
ContentOptionsDisplayDriver
ÑÑH c
>
ÑÑc d
(
ÑÑd e
)
ÑÑe f
;
ÑÑf g
services
áá 
.
áá 
	AddScoped
áá 
<
áá )
ILiquidTemplateEventHandler
áá :
,
áá: ;/
!ContentLiquidTemplateEventHandler
áá< ]
>
áá] ^
(
áá^ _
)
áá_ `
;
áá` a
services
ââ 
.
ââ 
AddLiquidFilter
ââ $
<
ââ$ % 
BuildDisplayFilter
ââ% 7
>
ââ7 8
(
ââ8 9
$str
ââ9 N
)
ââN O
;
ââO P
services
ää 
.
ää 
AddLiquidFilter
ää $
<
ää$ %
ContentItemFilter
ää% 6
>
ää6 7
(
ää7 8
$str
ää8 I
)
ääI J
;
ääJ K
services
ãã 
.
ãã 
AddLiquidFilter
ãã $
<
ãã$ %
DisplayTextFilter
ãã% 6
>
ãã6 7
(
ãã7 8
$str
ãã8 F
)
ããF G
;
ããG H
services
åå 
.
åå 
AddLiquidFilter
åå $
<
åå$ %
DisplayUrlFilter
åå% 5
>
åå5 6
(
åå6 7
$str
åå7 D
)
ååD E
;
ååE F
services
çç 
.
çç 
AddLiquidFilter
çç $
<
çç$ %
FullTextFilter
çç% 3
>
çç3 4
(
çç4 5
$str
çç5 @
)
çç@ A
;
ççA B
services
èè 
.
èè 
	AddScoped
èè 
(
èè 
typeof
èè %
(
èè% &)
IContentItemRecursionHelper
èè& A
<
èèA B
>
èèB C
)
èèC D
,
èèD E
typeof
èèF L
(
èèL M(
ContentItemRecursionHelper
èèM g
<
èèg h
>
èèh i
)
èèi j
)
èèj k
;
èèk l
}
êê 	
public
íí 
override
íí 
void
íí 
	Configure
íí &
(
íí& '!
IApplicationBuilder
íí' :
builder
íí; B
,
ííB C#
IEndpointRouteBuilder
ííD Y
routes
ííZ `
,
íí` a
IServiceProvider
ííb r
serviceProvideríís Ç
)ííÇ É
{
ìì 	
var
îî  
itemControllerName
îî "
=
îî# $
typeof
îî% +
(
îî+ ,
ItemController
îî, :
)
îî: ;
.
îî; <
ControllerName
îî< J
(
îîJ K
)
îîK L
;
îîL M
routes
ññ 
.
ññ $
MapAreaControllerRoute
ññ )
(
ññ) *
name
óó 
:
óó 
$str
óó *
,
óó* +
areaName
òò 
:
òò 
$str
òò 0
,
òò0 1
pattern
ôô 
:
ôô 
$str
ôô @
,
ôô@ A
defaults
öö 
:
öö 
new
öö 
{
öö 

controller
öö  *
=
öö+ , 
itemControllerName
öö- ?
,
öö? @
action
ööA G
=
ööH I
nameof
ööJ P
(
ööP Q
ItemController
ööQ _
.
öö_ `
Display
öö` g
)
öög h
}
ööi j
)
õõ 
;
õõ 
routes
ùù 
.
ùù $
MapAreaControllerRoute
ùù )
(
ùù) *
name
ûû 
:
ûû 
$str
ûû *
,
ûû* +
areaName
üü 
:
üü 
$str
üü 0
,
üü0 1
pattern
†† 
:
†† 
$str
†† H
,
††H I
defaults
°° 
:
°° 
new
°° 
{
°° 

controller
°°  *
=
°°+ , 
itemControllerName
°°- ?
,
°°? @
action
°°A G
=
°°H I
nameof
°°J P
(
°°P Q
ItemController
°°Q _
.
°°_ `
Preview
°°` g
)
°°g h
}
°°i j
)
¢¢ 
;
¢¢ 
routes
§§ 
.
§§ $
MapAreaControllerRoute
§§ )
(
§§) *
name
•• 
:
•• 
$str
•• 1
,
••1 2
areaName
¶¶ 
:
¶¶ 
$str
¶¶ 0
,
¶¶0 1
pattern
ßß 
:
ßß 
$str
ßß Z
,
ßßZ [
defaults
®® 
:
®® 
new
®® 
{
®® 

controller
®®  *
=
®®+ , 
itemControllerName
®®- ?
,
®®? @
action
®®A G
=
®®H I
nameof
®®J P
(
®®P Q
ItemController
®®Q _
.
®®_ `
Preview
®®` g
)
®®g h
}
®®i j
)
©© 
;
©© 
var
¨¨ !
adminControllerName
¨¨ #
=
¨¨$ %
typeof
¨¨& ,
(
¨¨, -
AdminController
¨¨- <
)
¨¨< =
.
¨¨= >
ControllerName
¨¨> L
(
¨¨L M
)
¨¨M N
;
¨¨N O
routes
ÆÆ 
.
ÆÆ $
MapAreaControllerRoute
ÆÆ )
(
ÆÆ) *
name
ØØ 
:
ØØ 
$str
ØØ '
,
ØØ' (
areaName
∞∞ 
:
∞∞ 
$str
∞∞ 0
,
∞∞0 1
pattern
±± 
:
±± 
_adminOptions
±± &
.
±±& '
AdminUrlPrefix
±±' 5
+
±±6 7
$str
±±8 e
,
±±e f
defaults
≤≤ 
:
≤≤ 
new
≤≤ 
{
≤≤ 

controller
≤≤  *
=
≤≤+ ,!
adminControllerName
≤≤- @
,
≤≤@ A
action
≤≤B H
=
≤≤I J
nameof
≤≤K Q
(
≤≤Q R
AdminController
≤≤R a
.
≤≤a b
Edit
≤≤b f
)
≤≤f g
}
≤≤h i
)
≥≥ 
;
≥≥ 
routes
µµ 
.
µµ $
MapAreaControllerRoute
µµ )
(
µµ) *
name
∂∂ 
:
∂∂ 
$str
∂∂ )
,
∂∂) *
areaName
∑∑ 
:
∑∑ 
$str
∑∑ 0
,
∑∑0 1
pattern
∏∏ 
:
∏∏ 
_adminOptions
∏∏ &
.
∏∏& '
AdminUrlPrefix
∏∏' 5
+
∏∏6 7
$str
∏∏8 \
,
∏∏\ ]
defaults
ππ 
:
ππ 
new
ππ 
{
ππ 

controller
ππ  *
=
ππ+ ,!
adminControllerName
ππ- @
,
ππ@ A
action
ππB H
=
ππI J
nameof
ππK Q
(
ππQ R
AdminController
ππR a
.
ππa b
Create
ππb h
)
ππh i
}
ππj k
)
∫∫ 
;
∫∫ 
routes
ºº 
.
ºº $
MapAreaControllerRoute
ºº )
(
ºº) *
name
ΩΩ 
:
ΩΩ 
$str
ΩΩ (
,
ΩΩ( )
areaName
ææ 
:
ææ 
$str
ææ 0
,
ææ0 1
pattern
øø 
:
øø 
_adminOptions
øø &
.
øø& '
AdminUrlPrefix
øø' 5
+
øø6 7
$str
øø8 h
,
øøh i
defaults
¿¿ 
:
¿¿ 
new
¿¿ 
{
¿¿ 

controller
¿¿  *
=
¿¿+ ,!
adminControllerName
¿¿- @
,
¿¿@ A
action
¿¿B H
=
¿¿I J
nameof
¿¿K Q
(
¿¿Q R
AdminController
¿¿R a
.
¿¿a b
Display
¿¿b i
)
¿¿i j
}
¿¿k l
)
¡¡ 
;
¡¡ 
routes
√√ 
.
√√ $
MapAreaControllerRoute
√√ )
(
√√) *
name
ƒƒ 
:
ƒƒ 
$str
ƒƒ (
,
ƒƒ( )
areaName
≈≈ 
:
≈≈ 
$str
≈≈ 0
,
≈≈0 1
pattern
∆∆ 
:
∆∆ 
_adminOptions
∆∆ &
.
∆∆& '
AdminUrlPrefix
∆∆' 5
+
∆∆6 7
$str
∆∆8 a
,
∆∆a b
defaults
«« 
:
«« 
new
«« 
{
«« 

controller
««  *
=
««+ ,!
adminControllerName
««- @
,
««@ A
action
««B H
=
««I J
nameof
««K Q
(
««Q R
AdminController
««R a
.
««a b
List
««b f
)
««f g
}
««h i
)
»» 
;
»» 
routes
   
.
   $
MapAreaControllerRoute
   )
(
  ) *
name
ÀÀ 
:
ÀÀ 
$str
ÀÀ /
,
ÀÀ/ 0
areaName
ÃÃ 
:
ÃÃ 
$str
ÃÃ 0
,
ÃÃ0 1
pattern
ÕÕ 
:
ÕÕ 
_adminOptions
ÕÕ &
.
ÕÕ& '
AdminUrlPrefix
ÕÕ' 5
+
ÕÕ6 7
$str
ÕÕ8 h
,
ÕÕh i
defaults
ŒŒ 
:
ŒŒ 
new
ŒŒ 
{
ŒŒ 

controller
ŒŒ  *
=
ŒŒ+ ,!
adminControllerName
ŒŒ- @
,
ŒŒ@ A
action
ŒŒB H
=
ŒŒI J
nameof
ŒŒK Q
(
ŒŒQ R
AdminController
ŒŒR a
.
ŒŒa b
Publish
ŒŒb i
)
ŒŒi j
}
ŒŒk l
)
œœ 
;
œœ 
routes
—— 
.
—— $
MapAreaControllerRoute
—— )
(
——) *
name
““ 
:
““ 
$str
““ 4
,
““4 5
areaName
”” 
:
”” 
$str
”” 0
,
””0 1
pattern
‘‘ 
:
‘‘ 
_adminOptions
‘‘ &
.
‘‘& '
AdminUrlPrefix
‘‘' 5
+
‘‘6 7
$str
‘‘8 m
,
‘‘m n
defaults
’’ 
:
’’ 
new
’’ 
{
’’ 

controller
’’  *
=
’’+ ,!
adminControllerName
’’- @
,
’’@ A
action
’’B H
=
’’I J
nameof
’’K Q
(
’’Q R
AdminController
’’R a
.
’’a b
DiscardDraft
’’b n
)
’’n o
}
’’p q
)
÷÷ 
;
÷÷ 
routes
ÿÿ 
.
ÿÿ $
MapAreaControllerRoute
ÿÿ )
(
ÿÿ) *
name
ŸŸ 
:
ŸŸ 
$str
ŸŸ .
,
ŸŸ. /
areaName
⁄⁄ 
:
⁄⁄ 
$str
⁄⁄ 0
,
⁄⁄0 1
pattern
€€ 
:
€€ 
_adminOptions
€€ &
.
€€& '
AdminUrlPrefix
€€' 5
+
€€6 7
$str
€€8 g
,
€€g h
defaults
‹‹ 
:
‹‹ 
new
‹‹ 
{
‹‹ 

controller
‹‹  *
=
‹‹+ ,!
adminControllerName
‹‹- @
,
‹‹@ A
action
‹‹B H
=
‹‹I J
nameof
‹‹K Q
(
‹‹Q R
AdminController
‹‹R a
.
‹‹a b
Remove
‹‹b h
)
‹‹h i
}
‹‹j k
)
›› 
;
›› 
routes
ﬂﬂ 
.
ﬂﬂ $
MapAreaControllerRoute
ﬂﬂ )
(
ﬂﬂ) *
name
‡‡ 
:
‡‡ 
$str
‡‡ -
,
‡‡- .
areaName
·· 
:
·· 
$str
·· 0
,
··0 1
pattern
‚‚ 
:
‚‚ 
_adminOptions
‚‚ &
.
‚‚& '
AdminUrlPrefix
‚‚' 5
+
‚‚6 7
$str
‚‚8 f
,
‚‚f g
defaults
„„ 
:
„„ 
new
„„ 
{
„„ 

controller
„„  *
=
„„+ ,!
adminControllerName
„„- @
,
„„@ A
action
„„B H
=
„„I J
nameof
„„K Q
(
„„Q R
AdminController
„„R a
.
„„a b
Clone
„„b g
)
„„g h
}
„„i j
)
‰‰ 
;
‰‰ 
routes
ÊÊ 
.
ÊÊ $
MapAreaControllerRoute
ÊÊ )
(
ÊÊ) *
name
ÁÁ 
:
ÁÁ 
$str
ÁÁ 1
,
ÁÁ1 2
areaName
ËË 
:
ËË 
$str
ËË 0
,
ËË0 1
pattern
ÈÈ 
:
ÈÈ 
_adminOptions
ÈÈ &
.
ÈÈ& '
AdminUrlPrefix
ÈÈ' 5
+
ÈÈ6 7
$str
ÈÈ8 j
,
ÈÈj k
defaults
ÍÍ 
:
ÍÍ 
new
ÍÍ 
{
ÍÍ 

controller
ÍÍ  *
=
ÍÍ+ ,!
adminControllerName
ÍÍ- @
,
ÍÍ@ A
action
ÍÍB H
=
ÍÍI J
nameof
ÍÍK Q
(
ÍÍQ R
AdminController
ÍÍR a
.
ÍÍa b
	Unpublish
ÍÍb k
)
ÍÍk l
}
ÍÍm n
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
}
ÌÌ 
[
ÔÔ 
RequireFeatures
ÔÔ 
(
ÔÔ 
$str
ÔÔ -
)
ÔÔ- .
]
ÔÔ. /
public
 

class
 
DeploymentStartup
 "
:
# $
StartupBase
% 0
{
ÒÒ 
public
ÚÚ 
override
ÚÚ 
void
ÚÚ 
ConfigureServices
ÚÚ .
(
ÚÚ. / 
IServiceCollection
ÚÚ/ A
services
ÚÚB J
)
ÚÚJ K
{
ÛÛ 	
services
ÙÙ 
.
ÙÙ 
AddTransient
ÙÙ !
<
ÙÙ! "
IDeploymentSource
ÙÙ" 3
,
ÙÙ3 4(
AllContentDeploymentSource
ÙÙ5 O
>
ÙÙO P
(
ÙÙP Q
)
ÙÙQ R
;
ÙÙR S
services
ıı 
.
ıı 
AddSingleton
ıı !
<
ıı! "$
IDeploymentStepFactory
ıı" 8
>
ıı8 9
(
ıı9 :
new
ıı: =#
DeploymentStepFactory
ıı> S
<
ııS T&
AllContentDeploymentStep
ııT l
>
ııl m
(
ıım n
)
ıın o
)
ııo p
;
ııp q
services
ˆˆ 
.
ˆˆ 
	AddScoped
ˆˆ 
<
ˆˆ 
IDisplayDriver
ˆˆ -
<
ˆˆ- .
DeploymentStep
ˆˆ. <
>
ˆˆ< =
,
ˆˆ= >,
AllContentDeploymentStepDriver
ˆˆ? ]
>
ˆˆ] ^
(
ˆˆ^ _
)
ˆˆ_ `
;
ˆˆ` a
services
¯¯ 
.
¯¯ 
AddTransient
¯¯ !
<
¯¯! "
IDeploymentSource
¯¯" 3
,
¯¯3 4%
ContentDeploymentSource
¯¯5 L
>
¯¯L M
(
¯¯M N
)
¯¯N O
;
¯¯O P
services
˘˘ 
.
˘˘ 
AddSingleton
˘˘ !
<
˘˘! "$
IDeploymentStepFactory
˘˘" 8
>
˘˘8 9
(
˘˘9 :
new
˘˘: =#
DeploymentStepFactory
˘˘> S
<
˘˘S T#
ContentDeploymentStep
˘˘T i
>
˘˘i j
(
˘˘j k
)
˘˘k l
)
˘˘l m
;
˘˘m n
services
˙˙ 
.
˙˙ 
	AddScoped
˙˙ 
<
˙˙ 
IDisplayDriver
˙˙ -
<
˙˙- .
DeploymentStep
˙˙. <
>
˙˙< =
,
˙˙= >)
ContentDeploymentStepDriver
˙˙? Z
>
˙˙Z [
(
˙˙[ \
)
˙˙\ ]
;
˙˙] ^
}
˚˚ 	
}
¸¸ 
[
˛˛ 
RequireFeatures
˛˛ 
(
˛˛ 
$str
˛˛ ,
)
˛˛, -
]
˛˛- .
public
ˇˇ 

class
ˇˇ 
AdminMenuStartup
ˇˇ !
:
ˇˇ" #
StartupBase
ˇˇ$ /
{
ÄÄ 
public
ÅÅ 
override
ÅÅ 
void
ÅÅ 
ConfigureServices
ÅÅ .
(
ÅÅ. / 
IServiceCollection
ÅÅ/ A
services
ÅÅB J
)
ÅÅJ K
{
ÇÇ 	
services
ÉÉ 
.
ÉÉ 
AddSingleton
ÉÉ !
<
ÉÉ! "'
IAdminNodeProviderFactory
ÉÉ" ;
>
ÉÉ; <
(
ÉÉ< =
new
ÉÉ= @&
AdminNodeProviderFactory
ÉÉA Y
<
ÉÉY Z#
ContentTypesAdminNode
ÉÉZ o
>
ÉÉo p
(
ÉÉp q
)
ÉÉq r
)
ÉÉr s
;
ÉÉs t
services
ÑÑ 
.
ÑÑ 
	AddScoped
ÑÑ 
<
ÑÑ )
IAdminNodeNavigationBuilder
ÑÑ :
,
ÑÑ: ;4
&ContentTypesAdminNodeNavigationBuilder
ÑÑ< b
>
ÑÑb c
(
ÑÑc d
)
ÑÑd e
;
ÑÑe f
services
ÖÖ 
.
ÖÖ 
	AddScoped
ÖÖ 
<
ÖÖ 
IDisplayDriver
ÖÖ -
<
ÖÖ- .
MenuItem
ÖÖ. 6
>
ÖÖ6 7
,
ÖÖ7 8)
ContentTypesAdminNodeDriver
ÖÖ9 T
>
ÖÖT U
(
ÖÖU V
)
ÖÖV W
;
ÖÖW X
}
ÜÜ 	
}
áá 
[
ââ 
Feature
ââ 
(
ââ 
$str
ââ 9
)
ââ9 :
]
ââ: ;
public
ää 

class
ää *
FileContentDefinitionStartup
ää -
:
ää. /
StartupBase
ää0 ;
{
ãã 
public
åå 
override
åå 
void
åå 
ConfigureServices
åå .
(
åå. / 
IServiceCollection
åå/ A
services
ååB J
)
ååJ K
{
çç 	
services
éé 
.
éé +
AddFileContentDefinitionStore
éé 2
(
éé2 3
)
éé3 4
;
éé4 5
}
èè 	
}
êê 
[
íí 
RequireFeatures
íí 
(
íí 
$str
íí +
)
íí+ ,
]
íí, -
public
ìì 

class
ìì 
SitemapsStartup
ìì  
:
ìì! "
StartupBase
ìì# .
{
îî 
public
ïï 
override
ïï 
void
ïï 
ConfigureServices
ïï .
(
ïï. / 
IServiceCollection
ïï/ A
services
ïïB J
)
ïïJ K
{
ññ 	
services
óó 
.
óó 
	AddScoped
óó 
<
óó #
ISitemapSourceBuilder
óó 4
,
óó4 5.
 ContentTypesSitemapSourceBuilder
óó6 V
>
óóV W
(
óóW X
)
óóX Y
;
óóY Z
services
òò 
.
òò 
	AddScoped
òò 
<
òò )
ISitemapSourceUpdateHandler
òò :
,
òò: ;4
&ContentTypesSitemapSourceUpdateHandler
òò< b
>
òòb c
(
òòc d
)
òòd e
;
òòe f
services
ôô 
.
ôô 
	AddScoped
ôô 
<
ôô 0
"ISitemapSourceModifiedDateProvider
ôô A
,
ôôA B;
-ContentTypesSitemapSourceModifiedDateProvider
ôôC p
>
ôôp q
(
ôôq r
)
ôôr s
;
ôôs t
services
öö 
.
öö 
	AddScoped
öö 
<
öö 
IDisplayDriver
öö -
<
öö- .
SitemapSource
öö. ;
>
öö; <
,
öö< =-
ContentTypesSitemapSourceDriver
öö> ]
>
öö] ^
(
öö^ _
)
öö_ `
;
öö` a
services
õõ 
.
õõ 
	AddScoped
õõ 
<
õõ #
ISitemapSourceFactory
õõ 4
,
õõ4 5"
SitemapSourceFactory
õõ6 J
<
õõJ K'
ContentTypesSitemapSource
õõK d
>
õõd e
>
õõe f
(
õõf g
)
õõg h
;
õõh i
services
úú 
.
úú 
	AddScoped
úú 
<
úú (
IContentItemsQueryProvider
úú 9
,
úú9 :.
 DefaultContentItemsQueryProvider
úú; [
>
úú[ \
(
úú\ ]
)
úú] ^
;
úú^ _
services
ùù 
.
ùù 
	AddScoped
ùù 
<
ùù 
IContentHandler
ùù .
,
ùù. /.
 ContentTypesSitemapUpdateHandler
ùù0 P
>
ùùP Q
(
ùùQ R
)
ùùR S
;
ùùS T
}
ûû 	
}
üü 
[
°° 
RequireFeatures
°° 
(
°° 
$str
°° (
)
°°( )
]
°°) *
public
¢¢ 

class
¢¢ 
FeedsStartup
¢¢ 
:
¢¢ 
StartupBase
¢¢  +
{
££ 
public
§§ 
override
§§ 
void
§§ 
ConfigureServices
§§ .
(
§§. / 
IServiceCollection
§§/ A
services
§§B J
)
§§J K
{
•• 	
services
ßß 
.
ßß 
	AddScoped
ßß 
<
ßß 
IFeedItemBuilder
ßß /
,
ßß/ 0#
CommonFeedItemBuilder
ßß1 F
>
ßßF G
(
ßßG H
)
ßßH I
;
ßßI J
}
®® 	
}
©© 
}™™ Ï
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewComponents\DisplayContentItemViewComponent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
ViewComponents -
{		 
public

 

class

 +
DisplayContentItemViewComponent

 0
:

1 2
ViewComponent

3 @
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly  
IUpdateModelAccessor -!
_modelUpdaterAccessor. C
;C D
public +
DisplayContentItemViewComponent .
(. /
IContentManager 
contentManager *
,* +&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A 
IUpdateModelAccessor   
modelUpdaterAccessor! 5
)5 6
{ 	&
_contentItemDisplayManager &
=' (%
contentItemDisplayManager) B
;B C
_contentManager 
= 
contentManager ,
;, -!
_modelUpdaterAccessor !
=" # 
modelUpdaterAccessor$ 8
;8 9
} 	
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
string< B
contentItemIdC P
=Q R
nullS W
,W X
stringY _
displayType` k
=l m
nulln r
)r s
{ 	
ContentItem 
contentItem #
=$ %
null& *
;* +
if 
( 
contentItemId 
!=  
null! %
)% &
{ 
contentItem   
=   
await   #
_contentManager  $ 3
.  3 4
GetAsync  4 <
(  < =
contentItemId  = J
)  J K
;  K L
}!! 
if## 
(## 
contentItem## 
==## 
null## #
)### $
{$$ 
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$str%%, D
)%%D E
;%%E F
}&& 
var(( 
model(( 
=(( 
await(( &
_contentItemDisplayManager(( 8
.((8 9
BuildDisplayAsync((9 J
(((J K
contentItem((K V
,((V W!
_modelUpdaterAccessor((X m
.((m n
ModelUpdater((n z
,((z {
displayType	((| á
)
((á à
;
((à â
return** 
View** 
(** 
model** 
)** 
;** 
}++ 	
},, 
}-- ‘
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\AllContentDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class -
!AllContentDeploymentStepViewModel 2
{ 
public 
bool 
ExportAsSetupRecipe '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Í
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\CommonPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class '
CommonPartSettingsViewModel ,
{ 
public 
bool 
DisplayDateEditor %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
DisplayOwnerEditor &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} å
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\ContentDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class *
ContentDeploymentStepViewModel /
{ 
public 
string 
[ 
] 
ContentTypes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
ExportAsSetupRecipe '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ≈
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\DateEditorViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class 
DateEditorViewModel $
{ 
public 
DateTime 
? 
LocalDateTime &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
}		 ø
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\FullTextAspectSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class +
FullTextAspectSettingsViewModel 0
{ 
public 
bool #
IncludeFullTextTemplate +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
FullTextTemplate &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IncludeBodyAspect %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IncludeDisplayText &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
}		 
}

 ∂
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\IndexingEditorViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class #
IndexingEditorViewModel (
{ 
public 
bool 
	IsIndexed 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ü
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\ListContentsViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class !
ListContentsViewModel &
{ 
public !
ListContentsViewModel $
($ %
)% &
{		 	
Options

 
=

 
new

 #
ContentOptionsViewModel

 1
(

1 2
)

2 3
;

3 4
} 	
public 
int 
? 
Page 
{ 
get 
; 
set  #
;# $
}% &
public #
ContentOptionsViewModel &
Options' .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
[ 	
	BindNever	 
] 
public 
dynamic 
Header 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
	BindNever	 
] 
public 
List 
< 
dynamic 
> 
ContentItems )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	
	BindNever	 
] 
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˛
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\ListContentTypesViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class %
ListContentTypesViewModel *
{ 
public 
IEnumerable 
< !
ContentTypeDefinition 0
>0 1
Types2 7
{8 9
get: =
;= >
set? B
;B C
}D E
}		 
}

 ≤
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\OwnerEditorViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 

ViewModels )
{ 
public 

class  
OwnerEditorViewModel %
{ 
public 
string 
	OwnerName 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ù
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\ViewModels\PublishContentViewModel.cs∏N
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentActivity.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

abstract 
class 
ContentActivity )
:* +
Activity, 4
{ 
	protected 
readonly 
IStringLocalizer +
S, -
;- .
	protected 
ContentActivity !
(! "
IContentManager" 1
contentManager2 @
,@ A$
IWorkflowScriptEvaluatorB Z
scriptEvaluator[ j
,j k
IStringLocalizerl |
	localizer	} Ü
)
Ü á
{ 	
ContentManager 
= 
contentManager +
;+ ,
ScriptEvaluator 
= 
scriptEvaluator -
;- .
S 
= 
	localizer 
; 
} 	
	protected 
IContentManager !
ContentManager" 0
{1 2
get3 6
;6 7
}8 9
	protected $
IWorkflowScriptEvaluator *
ScriptEvaluator+ :
{; <
get= @
;@ A
}B C
	protected"" 
ContentEventContext"" %
InlineEvent""& 1
{""2 3
get""4 7
;""7 8
private""9 @
set""A D
;""D E
}""F G
=""H I
new""J M
ContentEventContext""N a
(""a b
)""b c
;""c d
public$$ 
override$$ 
LocalizedString$$ '
Category$$( 0
=>$$1 3
S$$4 5
[$$5 6
$str$$6 ?
]$$? @
;$$@ A
public)) 
WorkflowExpression)) !
<))! "
IContent))" *
>))* +
Content)), 3
{** 	
get++ 
=>++ 
GetProperty++ 
(++ 
(++  
)++  !
=>++" $
new++% (
WorkflowExpression++) ;
<++; <
IContent++< D
>++D E
(++E F
)++F G
)++G H
;++H I
set,, 
=>,, 
SetProperty,, 
(,, 
value,, $
),,$ %
;,,% &
}-- 	
public// 
override// 
IEnumerable// #
<//# $
Outcome//$ +
>//+ ,
GetPossibleOutcomes//- @
(//@ A$
WorkflowExecutionContext//A Y
workflowContext//Z i
,//i j
ActivityContext//k z
activityContext	//{ ä
)
//ä ã
{00 	
return11 
Outcomes11 
(11 
S11 
[11 
$str11 $
]11$ %
)11% &
;11& '
}22 	
public44 
override44 
Task44  
OnInputReceivedAsync44 1
(441 2$
WorkflowExecutionContext442 J
workflowContext44K Z
,44Z [
IDictionary44\ g
<44g h
string44h n
,44n o
object44p v
>44v w
input44x }
)44} ~
{55 	
var66 
contentEvent66 
=66 
input66 $
?66$ %
.66% &
GetValue66& .
<66. /
ContentEventContext66/ B
>66B C
(66C D!
ContentEventConstants66D Y
.66Y Z 
ContentEventInputKey66Z n
)66n o
;66o p
if88 
(88 
contentEvent88 
!=88 
null88  $
)88$ %
{99 
InlineEvent:: 
=:: 
contentEvent:: *
;::* +
InlineEvent<< 
.<< 
IsStart<< #
=<<$ %
workflowContext<<& 5
.<<5 6
Status<<6 <
==<<= ?
WorkflowStatus<<@ N
.<<N O
Starting<<O W
;<<W X
}== 
return?? 
Task?? 
.?? 
CompletedTask?? %
;??% &
}@@ 	
publicBB 
overrideBB #
ActivityExecutionResultBB /
ExecuteBB0 7
(BB7 8$
WorkflowExecutionContextBB8 P
workflowContextBBQ `
,BB` a
ActivityContextBBb q
activityContext	BBr Å
)
BBÅ Ç
{CC 	
returnDD 
OutcomesDD 
(DD 
$strDD "
)DD" #
;DD# $
}EE 	
	protectedGG 
virtualGG 
asyncGG 
TaskGG  $
<GG$ %
IContentGG% -
>GG- .
GetContentAsyncGG/ >
(GG> ?$
WorkflowExecutionContextGG? W
workflowContextGGX g
)GGg h
{HH 	
IContentII 
contentII 
;II 
ifLL 
(LL 
!LL 
StringLL 
.LL 
IsNullOrWhiteSpaceLL *
(LL* +
ContentLL+ 2
.LL2 3

ExpressionLL3 =
)LL= >
)LL> ?
{MM 
varNN 

expressionNN 
=NN  
newNN! $
WorkflowExpressionNN% 7
<NN7 8
objectNN8 >
>NN> ?
{NN@ A

ExpressionNNB L
=NNM N
ContentNNO V
.NNV W

ExpressionNNW a
}NNb c
;NNc d
varOO 
resultOO 
=OO 
awaitOO "
ScriptEvaluatorOO# 2
.OO2 3
EvaluateAsyncOO3 @
(OO@ A

expressionOOA K
,OOK L
workflowContextOOM \
)OO\ ]
;OO] ^
ifQQ 
(QQ 
resultQQ 
isQQ 
ContentItemQQ )
contentItemQQ* 5
)QQ5 6
{RR 
contentSS 
=SS 
contentItemSS )
;SS) *
}TT 
elseUU 
ifUU 
(UU 
resultUU 
isUU  "
stringUU# )
contentItemIdUU* 7
)UU7 8
{VV 
contentWW 
=WW 
newWW !)
ContentItemIdExpressionResultWW" ?
(WW? @
contentItemIdWW@ M
)WWM N
;WWN O
}XX 
elseYY 
{ZZ 
var\\ 
json\\ 
=\\ 
JsonConvert\\ *
.\\* +
SerializeObject\\+ :
(\\: ;
result\\; A
)\\A B
;\\B C
content]] 
=]] 
JsonConvert]] )
.]]) *
DeserializeObject]]* ;
<]]; <
ContentItem]]< G
>]]G H
(]]H I
json]]I M
)]]M N
;]]N O
}^^ 
}__ 
else`` 
{aa 
contentcc 
=cc 
workflowContextcc )
.cc) *
Inputcc* /
.cc/ 0
GetValuecc0 8
<cc8 9
IContentcc9 A
>ccA B
(ccB C!
ContentEventConstantsccC X
.ccX Y
ContentItemInputKeyccY l
)ccl m
??dd 
workflowContextdd &
.dd& '

Propertiesdd' 1
.dd1 2
GetValuedd2 :
<dd: ;
IContentdd; C
>ddC D
(ddD E!
ContentEventConstantsddE Z
.ddZ [
ContentItemInputKeydd[ n
)ddn o
;ddo p
}ee 
ifgg 
(gg 
contentgg 
!=gg 
nullgg 
&&gg  "
contentgg# *
.gg* +
ContentItemgg+ 6
.gg6 7
ContentItemIdgg7 D
!=ggE G
nullggH L
)ggL M
{hh 
returnii 
contentii 
;ii 
}jj 
returnll 
nullll 
;ll 
}mm 	
	protectedoo 
virtualoo 
asyncoo 
Taskoo  $
<oo$ %
stringoo% +
>oo+ ,!
GetContentItemIdAsyncoo- B
(ooB C$
WorkflowExecutionContextooC [
workflowContextoo\ k
)ook l
{pp 	
ifrr 
(rr 
!rr 
stringrr 
.rr 
IsNullOrWhiteSpacerr *
(rr* +
Contentrr+ 2
.rr2 3

Expressionrr3 =
)rr= >
)rr> ?
{ss 
vartt 

expressiontt 
=tt  
newtt! $
WorkflowExpressiontt% 7
<tt7 8
objecttt8 >
>tt> ?
{tt@ A

ExpressionttB L
=ttM N
ContentttO V
.ttV W

ExpressionttW a
}ttb c
;ttc d
varuu 
contentItemIdResultuu '
=uu( )
awaituu* /
ScriptEvaluatoruu0 ?
.uu? @
EvaluateAsyncuu@ M
(uuM N

expressionuuN X
,uuX Y
workflowContextuuZ i
)uui j
;uuj k
ifww 
(ww 
contentItemIdResultww '
isww( *
stringww+ 1
contentItemIdww2 ?
)ww? @
{xx 
returnyy 
contentItemIdyy (
;yy( )
}zz 
}{{ 
return}} 
null}} 
;}} 
}~~ 	
	protected
ÄÄ 
class
ÄÄ +
ContentItemIdExpressionResult
ÄÄ 5
:
ÄÄ6 7
IContent
ÄÄ8 @
{
ÅÅ 	
public
ÇÇ +
ContentItemIdExpressionResult
ÇÇ 0
(
ÇÇ0 1
string
ÇÇ1 7
contentItemId
ÇÇ8 E
)
ÇÇE F
{
ÉÉ 
ContentItem
ÑÑ 
=
ÑÑ 
new
ÑÑ !
ContentItem
ÑÑ" -
(
ÑÑ- .
)
ÑÑ. /
{
ÑÑ0 1
ContentItemId
ÑÑ2 ?
=
ÑÑ@ A
contentItemId
ÑÑB O
}
ÑÑP Q
;
ÑÑQ R
}
ÖÖ 
public
áá 
ContentItem
áá 
ContentItem
áá *
{
áá+ ,
get
áá- 0
;
áá0 1
}
áá2 3
}
àà 	
}
ââ 
}ää ±
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentCreatedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
ContentCreatedEvent $
:% &
ContentEvent' 3
{ 
public		 
ContentCreatedEvent		 "
(		" #
IContentManager		# 2
contentManager		3 A
,		A B$
IWorkflowScriptEvaluator		C [
scriptEvaluator		\ k
,		k l
IStringLocalizer		m }
<		} ~ 
ContentCreatedEvent			~ ë
>
		ë í
	localizer
		ì ú
)
		ú ù
:
		û ü
base
		† §
(
		§ •
contentManager
		• ≥
,
		≥ ¥
scriptEvaluator
		µ ƒ
,
		ƒ ≈
	localizer
		∆ œ
)
		œ –
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ContentCreatedEvent. A
)A B
;B C
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 P
]P Q
;Q R
} 
} ±
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentDeletedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
ContentDeletedEvent $
:% &
ContentEvent' 3
{ 
public		 
ContentDeletedEvent		 "
(		" #
IContentManager		# 2
contentManager		3 A
,		A B$
IWorkflowScriptEvaluator		C [
scriptEvaluator		\ k
,		k l
IStringLocalizer		m }
<		} ~ 
ContentDeletedEvent			~ ë
>
		ë í
	localizer
		ì ú
)
		ú ù
:
		û ü
base
		† §
(
		§ •
contentManager
		• ≥
,
		≥ ¥
scriptEvaluator
		µ ƒ
,
		ƒ ≈
	localizer
		∆ œ
)
		œ –
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ContentDeletedEvent. A
)A B
;B C
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 P
]P Q
;Q R
} 
} ƒ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentDraftSavedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class "
ContentDraftSavedEvent '
:( )
ContentEvent* 6
{ 
public		 "
ContentDraftSavedEvent		 %
(		% &
IContentManager		& 5
contentManager		6 D
,		D E$
IWorkflowScriptEvaluator		F ^
scriptEvaluator		_ n
,		n o
IStringLocalizer			p Ä
<
		Ä Å$
ContentDraftSavedEvent
		Å ó
>
		ó ò
	localizer
		ô ¢
)
		¢ £
:
		§ •
base
		¶ ™
(
		™ ´
contentManager
		´ π
,
		π ∫
scriptEvaluator
		ª  
,
		  À
	localizer
		Ã ’
)
		’ ÷
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- ."
ContentDraftSavedEvent. D
)D E
;E F
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 S
]S T
;T U
} 
} ‘
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentEvent.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 
	Workflows

 (
.

( )

Activities

) 3
{ 
public 

abstract 
class 
ContentEvent &
:' (
ContentActivity) 8
,8 9
IEvent: @
{ 
	protected 
ContentEvent 
( 
IContentManager .
contentManager/ =
,= >$
IWorkflowScriptEvaluator? W
scriptEvaluatorX g
,g h
IStringLocalizeri y
	localizer	z É
)
É Ñ
:
Ö Ü
base
á ã
(
ã å
contentManager
å ö
,
ö õ
scriptEvaluator
ú ´
,
´ ¨
	localizer
≠ ∂
)
∂ ∑
{ 	
} 	
public 
IList 
< 
string 
> 
ContentTypeFilter .
{ 	
get 
=> 
GetProperty 
< 
IList $
<$ %
string% +
>+ ,
>, -
(- .
defaultValue. :
:: ;
(< =
)= >
=>? A
newB E
ListF J
<J K
stringK Q
>Q R
(R S
)S T
)T U
;U V
set 
=> 
SetProperty 
( 
value $
)$ %
;% &
} 	
public 
override 
async 
Task "
<" #
bool# '
>' (
CanExecuteAsync) 8
(8 9$
WorkflowExecutionContext9 Q
workflowContextR a
,a b
ActivityContextc r
activityContext	s Ç
)
Ç É
{ 	
var 
content 
= 
await 
GetContentAsync  /
(/ 0
workflowContext0 ?
)? @
;@ A
if 
( 
content 
== 
null 
)  
{ 
return 
false 
; 
} 
var!! 
contentTypes!! 
=!! 
ContentTypeFilter!! 0
.!!0 1
Where!!1 6
(!!6 7
x!!7 8
=>!!9 ;
!!!< =
string!!= C
.!!C D
IsNullOrWhiteSpace!!D V
(!!V W
x!!W X
)!!X Y
)!!Y Z
.!!Z [
ToList!![ a
(!!a b
)!!b c
;!!c d
return$$ 
!$$ 
contentTypes$$  
.$$  !
Any$$! $
($$$ %
)$$% &
||$$' )
contentTypes$$* 6
.$$6 7
Any$$7 :
($$: ;
contentType$$; F
=>$$G I
content$$J Q
.$$Q R
ContentItem$$R ]
.$$] ^
ContentType$$^ i
==$$j l
contentType$$m x
)$$x y
;$$y z
}%% 	
public'' 
override'' #
ActivityExecutionResult'' /
Execute''0 7
(''7 8$
WorkflowExecutionContext''8 P
workflowContext''Q `
,''` a
ActivityContext''b q
activityContext	''r Å
)
''Å Ç
{(( 	
return)) 
Halt)) 
()) 
))) 
;)) 
}** 	
public,, 
override,, #
ActivityExecutionResult,, /
Resume,,0 6
(,,6 7$
WorkflowExecutionContext,,7 O
workflowContext,,P _
,,,_ `
ActivityContext,,a p
activityContext	,,q Ä
)
,,Ä Å
{-- 	
return.. 
Outcomes.. 
(.. 
$str.. "
).." #
;..# $
}// 	
}00 
}11 Ω
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentPublishedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class !
ContentPublishedEvent &
:' (
ContentEvent) 5
{ 
public		 !
ContentPublishedEvent		 $
(		$ %
IContentManager		% 4
contentManager		5 C
,		C D$
IWorkflowScriptEvaluator		E ]
scriptEvaluator		^ m
,		m n
IStringLocalizer		o 
<			 Ä#
ContentPublishedEvent
		Ä ï
>
		ï ñ
	localizer
		ó †
)
		† °
:
		¢ £
base
		§ ®
(
		® ©
contentManager
		© ∑
,
		∑ ∏
scriptEvaluator
		π »
,
		» …
	localizer
		  ”
)
		” ‘
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .!
ContentPublishedEvent. C
)C D
;D E
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 R
]R S
;S T
} 
} Ç
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

abstract 
class 
ContentTask %
:& '
ContentActivity( 7
,7 8
ITask9 >
{		 
	protected

 
ContentTask

 
(

 
IContentManager

 -
contentManager

. <
,

< =$
IWorkflowScriptEvaluator

> V
scriptEvaluator

W f
,

f g
IStringLocalizer

h x
	localizer	

y Ç
)


Ç É
: 
base 
( 
contentManager !
,! "
scriptEvaluator# 2
,2 3
	localizer4 =
)= >
{ 	
} 	
} 
} …
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentUnpublishedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class #
ContentUnpublishedEvent (
:) *
ContentEvent+ 7
{ 
public		 #
ContentUnpublishedEvent		 &
(		& '
IContentManager		' 6
contentManager		7 E
,		E F$
IWorkflowScriptEvaluator		G _
scriptEvaluator		` o
,		o p
IStringLocalizer			q Å
<
		Å Ç%
ContentUnpublishedEvent
		Ç ô
>
		ô ö
	localizer
		õ §
)
		§ •
:
		¶ ß
base
		® ¨
(
		¨ ≠
contentManager
		≠ ª
,
		ª º
scriptEvaluator
		Ω Ã
,
		Ã Õ
	localizer
		Œ ◊
)
		◊ ÿ
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .#
ContentUnpublishedEvent. E
)E F
;F G
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 T
]T U
;U V
} 
} ±
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentUpdatedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
ContentUpdatedEvent $
:% &
ContentEvent' 3
{ 
public		 
ContentUpdatedEvent		 "
(		" #
IContentManager		# 2
contentManager		3 A
,		A B$
IWorkflowScriptEvaluator		C [
scriptEvaluator		\ k
,		k l
IStringLocalizer		m }
<		} ~ 
ContentUpdatedEvent			~ ë
>
		ë í
	localizer
		ì ú
)
		ú ù
:
		û ü
base
		† §
(
		§ •
contentManager
		• ≥
,
		≥ ¥
scriptEvaluator
		µ ƒ
,
		ƒ ≈
	localizer
		∆ œ
)
		œ –
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
ContentUpdatedEvent. A
)A B
;B C
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 P
]P Q
;Q R
} 
} Ω
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\ContentVersionedEvent.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class !
ContentVersionedEvent &
:' (
ContentEvent) 5
{ 
public		 !
ContentVersionedEvent		 $
(		$ %
IContentManager		% 4
contentManager		5 C
,		C D$
IWorkflowScriptEvaluator		E ]
scriptEvaluator		^ m
,		m n
IStringLocalizer		o 
<			 Ä#
ContentVersionedEvent
		Ä ï
>
		ï ñ
	localizer
		ó †
)
		† °
:
		¢ £
base
		§ ®
(
		® ©
contentManager
		© ∑
,
		∑ ∏
scriptEvaluator
		π »
,
		» …
	localizer
		  ”
)
		” ‘
{

 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .!
ContentVersionedEvent. C
)C D
;D E
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 R
]R S
;S T
} 
} ∆[
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\CreateContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
CreateContentTask "
:# $
ContentTask% 0
{ 
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
JavaScriptEncoder *
_javaScriptEncoder+ =
;= >
public 
CreateContentTask  
(  !
IContentManager 
contentManager *
,* +(
IWorkflowExpressionEvaluator (
expressionEvaluator) <
,< =$
IWorkflowScriptEvaluator $
scriptEvaluator% 4
,4 5
IStringLocalizer 
< 
CreateContentTask .
>. /
	localizer0 9
,9 :
JavaScriptEncoder 
javaScriptEncoder /
)/ 0
: 
base 
( 
contentManager !
,! "
scriptEvaluator# 2
,2 3
	localizer4 =
)= >
{ 	 
_expressionEvaluator  
=! "
expressionEvaluator# 6
;6 7
_javaScriptEncoder 
=  
javaScriptEncoder! 2
;2 3
}   	
public"" 
override"" 
string"" 
Name"" #
=>""$ &
nameof""' -
(""- .
CreateContentTask"". ?
)""? @
;""@ A
public$$ 
override$$ 
LocalizedString$$ '
Category$$( 0
=>$$1 3
S$$4 5
[$$5 6
$str$$6 ?
]$$? @
;$$@ A
public&& 
override&& 
LocalizedString&& '
DisplayText&&( 3
=>&&4 6
S&&7 8
[&&8 9
$str&&9 N
]&&N O
;&&O P
public(( 
string(( 
ContentType(( !
{)) 	
get** 
=>** 
GetProperty** 
<** 
string** %
>**% &
(**& '
)**' (
;**( )
set++ 
=>++ 
SetProperty++ 
(++ 
value++ $
)++$ %
;++% &
},, 	
public.. 
bool.. 
Publish.. 
{// 	
get00 
=>00 
GetProperty00 
<00 
bool00 #
>00# $
(00$ %
)00% &
;00& '
set11 
=>11 
SetProperty11 
(11 
value11 $
)11$ %
;11% &
}22 	
public44 
WorkflowExpression44 !
<44! "
string44" (
>44( )
ContentProperties44* ;
{55 	
get66 
=>66 
GetProperty66 
(66 
(66  
)66  !
=>66" $
new66% (
WorkflowExpression66) ;
<66; <
string66< B
>66B C
(66C D
JsonConvert66D O
.66O P
SerializeObject66P _
(66_ `
new66` c
{66d e
DisplayText66f q
=66r s
S66t u
[66u v
$str	66v Ö
]
66Ö Ü
.
66Ü á
Value
66á å
}
66ç é
,
66é è

Formatting
66ê ö
.
66ö õ
Indented
66õ £
)
66£ §
)
66§ •
)
66• ¶
;
66¶ ß
set77 
=>77 
SetProperty77 
(77 
value77 $
)77$ %
;77% &
}88 	
public:: 
override:: 
bool:: 

CanExecute:: '
(::' ($
WorkflowExecutionContext::( @
workflowContext::A P
,::P Q
ActivityContext::R a
activityContext::b q
)::q r
{;; 	
return<< 
!<< 
String<< 
.<< 
IsNullOrEmpty<< (
(<<( )
ContentType<<) 4
)<<4 5
;<<5 6
}== 	
public?? 
override?? 
IEnumerable?? #
<??# $
Outcome??$ +
>??+ ,
GetPossibleOutcomes??- @
(??@ A$
WorkflowExecutionContext??A Y
workflowContext??Z i
,??i j
ActivityContext??k z
activityContext	??{ ä
)
??ä ã
{@@ 	
returnAA 
OutcomesAA 
(AA 
SAA 
[AA 
$strAA $
]AA$ %
,AA% &
SAA' (
[AA( )
$strAA) 1
]AA1 2
)AA2 3
;AA3 4
}BB 	
publicDD 
asyncDD 
overrideDD 
TaskDD "
<DD" ##
ActivityExecutionResultDD# :
>DD: ;
ExecuteAsyncDD< H
(DDH I$
WorkflowExecutionContextDDI a
workflowContextDDb q
,DDq r
ActivityContext	DDs Ç
activityContext
DDÉ í
)
DDí ì
{EE 	
ifFF 
(FF 
InlineEventFF 
.FF 
IsStartFF #
&&FF$ &
InlineEventFF' 2
.FF2 3
ContentTypeFF3 >
==FF? A
ContentTypeFFB M
)FFM N
{GG 
ifHH 
(HH 
InlineEventHH 
.HH  
NameHH  $
==HH% '
nameofHH( .
(HH. /
ContentUpdatedEventHH/ B
)HHB C
)HHC D
{II 
throwJJ 
newJJ %
InvalidOperationExceptionJJ 7
(JJ7 8
$"JJ8 :
The 'JJ: ?
{JJ? @
nameofJJ@ F
(JJF G
CreateContentTaskJJG X
)JJX Y
}JJY ZW
J' can't update the content item as it is executed inline from a starting '	JJZ §
{
JJ§ •
nameof
JJ• ´
(
JJ´ ¨!
ContentUpdatedEvent
JJ¨ ø
)
JJø ¿
}
JJ¿ ¡S
E' of the same content type, which would result in an infinitive loop.
JJ¡ Ü
"
JJÜ á
)
JJá à
;
JJà â
}KK 
ifMM 
(MM 
InlineEventMM 
.MM  
NameMM  $
==MM% '
nameofMM( .
(MM. /
ContentCreatedEventMM/ B
)MMB C
)MMC D
{NN 
throwOO 
newOO %
InvalidOperationExceptionOO 7
(OO7 8
$"OO8 :
The 'OO: ?
{OO? @
nameofOO@ F
(OOF G
CreateContentTaskOOG X
)OOX Y
}OOY ZW
J' can't create the content item as it is executed inline from a starting '	OOZ §
{
OO§ •
nameof
OO• ´
(
OO´ ¨!
ContentCreatedEvent
OO¨ ø
)
OOø ¿
}
OO¿ ¡S
E' of the same content type, which would result in an infinitive loop.
OO¡ Ü
"
OOÜ á
)
OOá à
;
OOà â
}PP 
ifRR 
(RR 
PublishRR 
&&RR 
InlineEventRR *
.RR* +
NameRR+ /
==RR0 2
nameofRR3 9
(RR9 :!
ContentPublishedEventRR: O
)RRO P
)RRP Q
{SS 
throwTT 
newTT %
InvalidOperationExceptionTT 7
(TT7 8
$"TT8 :
The 'TT: ?
{TT? @
nameofTT@ F
(TTF G
CreateContentTaskTTG X
)TTX Y
}TTY ZX
K' can't publish the content item as it is executed inline from a starting '	TTZ •
{
TT• ¶
nameof
TT¶ ¨
(
TT¨ ≠#
ContentPublishedEvent
TT≠ ¬
)
TT¬ √
}
TT√ ƒS
E' of the same content type, which would result in an infinitive loop.
TTƒ â
"
TTâ ä
)
TTä ã
;
TTã å
}UU 
ifWW 
(WW 
!WW 
PublishWW 
&&WW 
InlineEventWW  +
.WW+ ,
NameWW, 0
==WW1 3
nameofWW4 :
(WW: ;"
ContentDraftSavedEventWW; Q
)WWQ R
)WWR S
{XX 
throwYY 
newYY %
InvalidOperationExceptionYY 7
(YY7 8
$"YY8 :
The 'YY: ?
{YY? @
nameofYY@ F
(YYF G
CreateContentTaskYYG X
)YYX Y
}YYY ZW
J' can't create the content item as it is executed inline from a starting '	YYZ §
{
YY§ •
nameof
YY• ´
(
YY´ ¨$
ContentDraftSavedEvent
YY¨ ¬
)
YY¬ √
}
YY√ ƒS
E' of the same content type, which would result in an infinitive loop.
YYƒ â
"
YYâ ä
)
YYä ã
;
YYã å
}ZZ 
}[[ 
var]] 
contentItem]] 
=]] 
await]] #
ContentManager]]$ 2
.]]2 3
NewAsync]]3 ;
(]]; <
ContentType]]< G
)]]G H
;]]H I
if__ 
(__ 
!__ 
String__ 
.__ 
IsNullOrWhiteSpace__ *
(__* +
ContentProperties__+ <
.__< =

Expression__= G
)__G H
)__H I
{`` 
varaa 
contentPropertiesaa %
=aa& '
awaitaa( - 
_expressionEvaluatoraa. B
.aaB C
EvaluateAsyncaaC P
(aaP Q
ContentPropertiesaaQ b
,aab c
workflowContextaad s
,aas t
_javaScriptEncoder	aau á
)
aaá à
;
aaà â
contentItembb 
.bb 
Mergebb !
(bb! "
JObjectbb" )
.bb) *
Parsebb* /
(bb/ 0
contentPropertiesbb0 A
)bbA B
)bbB C
;bbC D
}cc 
varee 
resultee 
=ee 
awaitee 
ContentManageree -
.ee- .(
UpdateValidateAndCreateAsyncee. J
(eeJ K
contentItemeeK V
,eeV W
VersionOptionseeX f
.eef g
Drafteeg l
)eel m
;eem n
ifgg 
(gg 
resultgg 
.gg 
	Succeededgg  
)gg  !
{hh 
ifii 
(ii 
Publishii 
)ii 
{jj 
awaitkk 
ContentManagerkk (
.kk( )
PublishAsynckk) 5
(kk5 6
contentItemkk6 A
)kkA B
;kkB C
}ll 
elsemm 
{nn 
awaitoo 
ContentManageroo (
.oo( )
SaveDraftAsyncoo) 7
(oo7 8
contentItemoo8 C
)ooC D
;ooD E
}pp 
workflowContextrr 
.rr  
CorrelationIdrr  -
=rr. /
contentItemrr0 ;
.rr; <
ContentItemIdrr< I
;rrI J
workflowContextss 
.ss  

Propertiesss  *
[ss* +!
ContentEventConstantsss+ @
.ss@ A
ContentItemInputKeyssA T
]ssT U
=ssV W
contentItemssX c
;ssc d
workflowContexttt 
.tt  

LastResulttt  *
=tt+ ,
contentItemtt- 8
;tt8 9
returnvv 
Outcomesvv 
(vv  
$strvv  &
)vv& '
;vv' (
}ww 
workflowContextyy 
.yy 

LastResultyy &
=yy' (
resultyy) /
;yy/ 0
return{{ 
Outcomes{{ 
({{ 
$str{{ $
){{$ %
;{{% &
}|| 	
}}} 
}~~ ≈0
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\DeleteContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
DeleteContentTask "
:# $
ContentTask% 0
{ 
public 
DeleteContentTask  
(  !
IContentManager! 0
contentManager1 ?
,? @$
IWorkflowScriptEvaluatorA Y
scriptEvaluatorZ i
,i j
IStringLocalizerk {
<{ |
DeleteContentTask	| ç
>
ç é
	localizer
è ò
)
ò ô
:
ö õ
base
ú †
(
† °
contentManager
° Ø
,
Ø ∞
scriptEvaluator
± ¿
,
¿ ¡
	localizer
¬ À
)
À Ã
{ 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
DeleteContentTask. ?
)? @
;@ A
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 N
]N O
;O P
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 ?
]? @
;@ A
public 
override 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ ä
)
ä ã
{ 	
return 
Outcomes 
( 
S 
[ 
$str '
]' (
,( )
S* +
[+ ,
$str, 2
]2 3
)3 4
;4 5
} 	
public 
override 
async 
Task "
<" ##
ActivityExecutionResult# :
>: ;
ExecuteAsync< H
(H I$
WorkflowExecutionContextI a
workflowContextb q
,q r
ActivityContext	s Ç
activityContext
É í
)
í ì
{ 	
var   
content   
=   
await   
GetContentAsync    /
(  / 0
workflowContext  0 ?
)  ? @
;  @ A
if"" 
("" 
content"" 
=="" 
null"" 
)""  
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$"$$4 6
The '$$6 ;
{$$; <
nameof$$< B
($$B C
DeleteContentTask$$C T
)$$T U
}$$U V2
&' failed to retrieve the content item.$$V |
"$$| }
)$$} ~
;$$~ 
}%% 
if'' 
('' 
String'' 
.'' 
Equals'' 
('' 
InlineEvent'' )
.'') *
ContentItemId''* 7
,''7 8
content''9 @
.''@ A
ContentItem''A L
.''L M
ContentItemId''M Z
,''Z [
StringComparison''\ l
.''l m
OrdinalIgnoreCase''m ~
)''~ 
)	'' Ä
{(( 
return)) 
Outcomes)) 
())  
$str))  &
)))& '
;))' (
}** 
var,, 
contentItem,, 
=,, 
await,, #
ContentManager,,$ 2
.,,2 3
GetAsync,,3 ;
(,,; <
content,,< C
.,,C D
ContentItem,,D O
.,,O P
ContentItemId,,P ]
,,,] ^
VersionOptions,,_ m
.,,m n
Latest,,n t
),,t u
;,,u v
if.. 
(.. 
contentItem.. 
==.. 
null.. #
)..# $
{// 
if00 
(00 
content00 
is00 )
ContentItemIdExpressionResult00 <
)00< =
{11 
throw22 
new22 %
InvalidOperationException22 7
(227 8
$"228 :
The '22: ?
{22? @
nameof22@ F
(22F G
DeleteContentTask22G X
)22X Y
}22Y Z3
&' failed to retrieve the content item.	22Z Ä
"
22Ä Å
)
22Å Ç
;
22Ç É
}33 
contentItem55 
=55 
content55 %
.55% &
ContentItem55& 1
;551 2
}66 
if88 
(88 
InlineEvent88 
.88 
IsStart88 #
&&88$ &
InlineEvent88' 2
.882 3
ContentType883 >
==88? A
contentItem88B M
.88M N
ContentType88N Y
&&88Z \
InlineEvent88] h
.88h i
Name88i m
==88n p
nameof88q w
(88w x 
ContentDeletedEvent	88x ã
)
88ã å
)
88å ç
{99 
throw:: 
new:: %
InvalidOperationException:: 3
(::3 4
$"::4 6
The '::6 ;
{::; <
nameof::< B
(::B C
DeleteContentTask::C T
)::T U
}::U VW
J' can't delete the content item as it is executed inline from a starting '	::V †
{
::† °
nameof
::° ß
(
::ß ®!
ContentDeletedEvent
::® ª
)
::ª º
}
::º ΩS
E' of the same content type, which would result in an infinitive loop.
::Ω Ç
"
::Ç É
)
::É Ñ
;
::Ñ Ö
};; 
await== 
ContentManager==  
.==  !
RemoveAsync==! ,
(==, -
contentItem==- 8
)==8 9
;==9 :
return?? 
Outcomes?? 
(?? 
$str?? %
)??% &
;??& '
}@@ 	
}AA 
}BB €0
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\PublishContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
PublishContentTask #
:$ %
ContentTask& 1
{ 
public 
PublishContentTask !
(! "
IContentManager" 1
contentManager2 @
,@ A$
IWorkflowScriptEvaluatorB Z
scriptEvaluator[ j
,j k
IStringLocalizerl |
<| }
PublishContentTask	} è
>
è ê
	localizer
ë ö
)
ö õ
:
ú ù
base
û ¢
(
¢ £
contentManager
£ ±
,
± ≤
scriptEvaluator
≥ ¬
,
¬ √
	localizer
ƒ Õ
)
Õ Œ
{ 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
PublishContentTask. @
)@ A
;A B
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 O
]O P
;P Q
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 ?
]? @
;@ A
public 
override 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ ä
)
ä ã
{ 	
return 
Outcomes 
( 
S 
[ 
$str )
]) *
,* +
S, -
[- .
$str. 4
]4 5
)5 6
;6 7
} 	
public 
override 
async 
Task "
<" ##
ActivityExecutionResult# :
>: ;
ExecuteAsync< H
(H I$
WorkflowExecutionContextI a
workflowContextb q
,q r
ActivityContext	s Ç
activityContext
É í
)
í ì
{ 	
var   
content   
=   
await   
GetContentAsync    /
(  / 0
workflowContext  0 ?
)  ? @
;  @ A
if"" 
("" 
content"" 
=="" 
null"" 
)""  
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$"$$4 6
The '$$6 ;
{$$; <
nameof$$< B
($$B C
PublishContentTask$$C U
)$$U V
}$$V W2
&' failed to retrieve the content item.$$W }
"$$} ~
)$$~ 
;	$$ Ä
}%% 
if'' 
('' 
String'' 
.'' 
Equals'' 
('' 
InlineEvent'' )
.'') *
ContentItemId''* 7
,''7 8
content''9 @
.''@ A
ContentItem''A L
.''L M
ContentItemId''M Z
,''Z [
StringComparison''\ l
.''l m
OrdinalIgnoreCase''m ~
)''~ 
)	'' Ä
{(( 
return)) 
Outcomes)) 
())  
$str))  &
)))& '
;))' (
}** 
var,, 
contentItem,, 
=,, 
await,, #
ContentManager,,$ 2
.,,2 3
GetAsync,,3 ;
(,,; <
content,,< C
.,,C D
ContentItem,,D O
.,,O P
ContentItemId,,P ]
,,,] ^
VersionOptions,,_ m
.,,m n
DraftRequired,,n {
),,{ |
;,,| }
if.. 
(.. 
contentItem.. 
==.. 
null.. #
)..# $
{// 
if00 
(00 
content00 
is00 )
ContentItemIdExpressionResult00 <
)00< =
{11 
throw22 
new22 %
InvalidOperationException22 7
(227 8
$"228 :
The '22: ?
{22? @
nameof22@ F
(22F G
PublishContentTask22G Y
)22Y Z
}22Z [3
&' failed to retrieve the content item.	22[ Å
"
22Å Ç
)
22Ç É
;
22É Ñ
}33 
contentItem55 
=55 
content55 %
.55% &
ContentItem55& 1
;551 2
}66 
if88 
(88 
InlineEvent88 
.88 
IsStart88 #
&&88$ &
InlineEvent88' 2
.882 3
ContentType883 >
==88? A
contentItem88B M
.88M N
ContentType88N Y
&&88Z \
InlineEvent88] h
.88h i
Name88i m
==88n p
nameof88q w
(88w x"
ContentPublishedEvent	88x ç
)
88ç é
)
88é è
{99 
throw:: 
new:: %
InvalidOperationException:: 3
(::3 4
$"::4 6
The '::6 ;
{::; <
nameof::< B
(::B C
PublishContentTask::C U
)::U V
}::V WX
K' can't publish the content item as it is executed inline from a starting '	::W ¢
{
::¢ £
nameof
::£ ©
(
::© ™#
ContentPublishedEvent
::™ ø
)
::ø ¿
}
::¿ ¡S
E' of the same content type, which would result in an infinitive loop.
::¡ Ü
"
::Ü á
)
::á à
;
::à â
};; 
await== 
ContentManager==  
.==  !
PublishAsync==! -
(==- .
contentItem==. 9
)==9 :
;==: ;
return?? 
Outcomes?? 
(?? 
$str?? '
)??' (
;??( )
}@@ 	
}AA 
}BB Ì#
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\RetrieveContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
RetrieveContentTask $
:% &
ContentTask' 2
{ 
public 
RetrieveContentTask "
(" #
IContentManager# 2
contentManager3 A
,A B$
IWorkflowScriptEvaluatorC [
scriptEvaluator\ k
,k l
IStringLocalizerm }
<} ~ 
RetrieveContentTask	~ ë
>
ë í
	localizer
ì ú
)
ú ù
:
û ü
base
† §
(
§ •
contentManager
• ≥
,
≥ ¥
scriptEvaluator
µ ƒ
,
ƒ ≈
	localizer
∆ œ
)
œ –
{ 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .
RetrieveContentTask. A
)A B
;B C
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 P
]P Q
;Q R
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 ?
]? @
;@ A
public 
override 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ ä
)
ä ã
{ 	
return 
Outcomes 
( 
S 
[ 
$str )
]) *
)* +
;+ ,
} 	
public 
override 
async 
Task "
<" ##
ActivityExecutionResult# :
>: ;
ExecuteAsync< H
(H I$
WorkflowExecutionContextI a
workflowContextb q
,q r
ActivityContext	s Ç
activityContext
É í
)
í ì
{   	
var!! 
contentItemId!! 
=!! 
await!!  %!
GetContentItemIdAsync!!& ;
(!!; <
workflowContext!!< K
)!!K L
;!!L M
if## 
(## 
contentItemId## 
==##  
null##! %
)##% &
{$$ 
throw%% 
new%% %
InvalidOperationException%% 3
(%%3 4
$"%%4 6
The '%%6 ;
{%%; <
nameof%%< B
(%%B C
RetrieveContentTask%%C V
)%%V W
}%%W X6
)' failed to evaluate the 'ContentItemId'.	%%X Å
"
%%Å Ç
)
%%Ç É
;
%%É Ñ
}&& 
var(( 
contentItem(( 
=(( 
await(( #
ContentManager(($ 2
.((2 3
GetAsync((3 ;
(((; <
contentItemId((< I
,((I J
VersionOptions((K Y
.((Y Z
Latest((Z `
)((` a
;((a b
if** 
(** 
contentItem** 
==** 
null** #
)**# $
{++ 
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$",,4 6
The ',,6 ;
{,,; <
nameof,,< B
(,,B C
RetrieveContentTask,,C V
),,V W
},,W X2
&' failed to retrieve the content item.,,X ~
",,~ 
)	,, Ä
;
,,Ä Å
}-- 
workflowContext// 
.// 
CorrelationId// )
=//* +
contentItem//, 7
.//7 8
ContentItemId//8 E
;//E F
workflowContext00 
.00 

Properties00 &
[00& '!
ContentEventConstants00' <
.00< =
ContentItemInputKey00= P
]00P Q
=00R S
contentItem00T _
;00_ `
workflowContext11 
.11 

LastResult11 &
=11' (
contentItem11) 4
;114 5
return33 
Outcomes33 
(33 
$str33 '
)33' (
;33( )
}44 	
}55 
}66 0
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\UnpublishContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class  
UnpublishContentTask %
:& '
ContentTask( 3
{ 
public  
UnpublishContentTask #
(# $
IContentManager$ 3
contentManager4 B
,B C$
IWorkflowScriptEvaluatorD \
scriptEvaluator] l
,l m
IStringLocalizern ~
<~ !
UnpublishContentTask	 ì
>
ì î
	localizer
ï û
)
û ü
:
† °
base
¢ ¶
(
¶ ß
contentManager
ß µ
,
µ ∂
scriptEvaluator
∑ ∆
,
∆ «
	localizer
» —
)
— “
{ 	
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- . 
UnpublishContentTask. B
)B C
;C D
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 Q
]Q R
;R S
public 
override 
LocalizedString '
Category( 0
=>1 3
S4 5
[5 6
$str6 ?
]? @
;@ A
public 
override 
IEnumerable #
<# $
Outcome$ +
>+ ,
GetPossibleOutcomes- @
(@ A$
WorkflowExecutionContextA Y
workflowContextZ i
,i j
ActivityContextk z
activityContext	{ ä
)
ä ã
{ 	
return 
Outcomes 
( 
S 
[ 
$str +
]+ ,
,, -
S. /
[/ 0
$str0 6
]6 7
)7 8
;8 9
} 	
public 
override 
async 
Task "
<" ##
ActivityExecutionResult# :
>: ;
ExecuteAsync< H
(H I$
WorkflowExecutionContextI a
workflowContextb q
,q r
ActivityContext	s Ç
activityContext
É í
)
í ì
{ 	
var   
content   
=   
await   
GetContentAsync    /
(  / 0
workflowContext  0 ?
)  ? @
;  @ A
if"" 
("" 
content"" 
=="" 
null"" 
)""  
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$"$$4 6
The '$$6 ;
{$$; <
nameof$$< B
($$B C 
UnpublishContentTask$$C W
)$$W X
}$$X Y2
&' failed to retrieve the content item.$$Y 
"	$$ Ä
)
$$Ä Å
;
$$Å Ç
}%% 
if'' 
('' 
String'' 
.'' 
Equals'' 
('' 
InlineEvent'' )
.'') *
ContentItemId''* 7
,''7 8
content''9 @
.''@ A
ContentItem''A L
.''L M
ContentItemId''M Z
,''Z [
StringComparison''\ l
.''l m
OrdinalIgnoreCase''m ~
)''~ 
)	'' Ä
{(( 
return)) 
Outcomes)) 
())  
$str))  &
)))& '
;))' (
}** 
var,, 
contentItem,, 
=,, 
await,, #
ContentManager,,$ 2
.,,2 3
GetAsync,,3 ;
(,,; <
content,,< C
.,,C D
ContentItem,,D O
.,,O P
ContentItemId,,P ]
,,,] ^
VersionOptions,,_ m
.,,m n
Latest,,n t
),,t u
;,,u v
if.. 
(.. 
contentItem.. 
==.. 
null.. #
)..# $
{// 
if00 
(00 
content00 
is00 )
ContentItemIdExpressionResult00 <
)00< =
{11 
throw22 
new22 %
InvalidOperationException22 7
(227 8
$"228 :
The '22: ?
{22? @
nameof22@ F
(22F G 
UnpublishContentTask22G [
)22[ \
}22\ ]3
&' failed to retrieve the content item.	22] É
"
22É Ñ
)
22Ñ Ö
;
22Ö Ü
}33 
contentItem55 
=55 
content55 %
.55% &
ContentItem55& 1
;551 2
}66 
if88 
(88 
InlineEvent88 
.88 
IsStart88 #
&&88$ &
InlineEvent88' 2
.882 3
ContentType883 >
==88? A
contentItem88B M
.88M N
ContentType88N Y
&&88Z \
InlineEvent88] h
.88h i
Name88i m
==88n p
nameof88q w
(88w x$
ContentUnpublishedEvent	88x è
)
88è ê
)
88ê ë
{99 
throw:: 
new:: %
InvalidOperationException:: 3
(::3 4
$"::4 6
The '::6 ;
{::; <
nameof::< B
(::B C 
UnpublishContentTask::C W
)::W X
}::X YZ
M' can't unpublish the content item as it is executed inline from a starting '	::Y ¶
{
::¶ ß
nameof
::ß ≠
(
::≠ Æ%
ContentUnpublishedEvent
::Æ ≈
)
::≈ ∆
}
::∆ «S
E' of the same content type, which would result in an infinitive loop.
::« å
"
::å ç
)
::ç é
;
::é è
};; 
await== 
ContentManager==  
.==  !
UnpublishAsync==! /
(==/ 0
contentItem==0 ;
)==; <
;==< =
return?? 
Outcomes?? 
(?? 
$str?? )
)??) *
;??* +
}@@ 	
}AA 
}BB ”Ñ
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Activities\UpdateContentTask.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

Activities) 3
{ 
public 

class 
UpdateContentTask "
:# $
ContentTask% 0
{ 
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly (
IWorkflowExpressionEvaluator 5 
_expressionEvaluator6 J
;J K
private 
readonly 
JavaScriptEncoder *
_javaScriptEncoder+ =
;= >
public 
UpdateContentTask  
(  !
IContentManager 
contentManager *
,* + 
IUpdateModelAccessor  
updateModelAccessor! 4
,4 5(
IWorkflowExpressionEvaluator (
expressionEvaluator) <
,< =$
IWorkflowScriptEvaluator $
scriptEvaluator% 4
,4 5
IStringLocalizer 
< 
UpdateContentTask .
>. /
	localizer0 9
,9 :
JavaScriptEncoder 
javaScriptEncoder /
)/ 0
:   
base   
(   
contentManager   !
,  ! "
scriptEvaluator  # 2
,  2 3
	localizer  4 =
)  = >
{!! 	 
_updateModelAccessor""  
=""! "
updateModelAccessor""# 6
;""6 7 
_expressionEvaluator##  
=##! "
expressionEvaluator### 6
;##6 7
_javaScriptEncoder$$ 
=$$  
javaScriptEncoder$$! 2
;$$2 3
}%% 	
public'' 
override'' 
string'' 
Name'' #
=>''$ &
nameof''' -
(''- .
UpdateContentTask''. ?
)''? @
;''@ A
public)) 
override)) 
LocalizedString)) '
Category))( 0
=>))1 3
S))4 5
[))5 6
$str))6 ?
]))? @
;))@ A
public++ 
override++ 
LocalizedString++ '
DisplayText++( 3
=>++4 6
S++7 8
[++8 9
$str++9 N
]++N O
;++O P
public-- 
bool-- 
Publish-- 
{.. 	
get// 
=>// 
GetProperty// 
<// 
bool// #
>//# $
(//$ %
)//% &
;//& '
set00 
=>00 
SetProperty00 
(00 
value00 $
)00$ %
;00% &
}11 	
public33 
WorkflowExpression33 !
<33! "
string33" (
>33( )#
ContentItemIdExpression33* A
{44 	
get55 
=>55 
GetProperty55 
(55 
(55  
)55  !
=>55" $
new55% (
WorkflowExpression55) ;
<55; <
string55< B
>55B C
(55C D
)55D E
)55E F
;55F G
set66 
=>66 
SetProperty66 
(66 
value66 $
)66$ %
;66% &
}77 	
public99 
WorkflowExpression99 !
<99! "
string99" (
>99( )
ContentProperties99* ;
{:: 	
get;; 
=>;; 
GetProperty;; 
(;; 
(;;  
);;  !
=>;;" $
new;;% (
WorkflowExpression;;) ;
<;;; <
string;;< B
>;;B C
(;;C D
JsonConvert;;D O
.;;O P
SerializeObject;;P _
(;;_ `
new;;` c
{;;d e
DisplayText;;f q
=;;r s
S;;t u
[;;u v
$str	;;v Ö
]
;;Ö Ü
.
;;Ü á
Value
;;á å
}
;;ç é
,
;;é è

Formatting
;;ê ö
.
;;ö õ
Indented
;;õ £
)
;;£ §
)
;;§ •
)
;;• ¶
;
;;¶ ß
set<< 
=><< 
SetProperty<< 
(<< 
value<< $
)<<$ %
;<<% &
}== 	
public?? 
override?? 
IEnumerable?? #
<??# $
Outcome??$ +
>??+ ,
GetPossibleOutcomes??- @
(??@ A$
WorkflowExecutionContext??A Y
workflowContext??Z i
,??i j
ActivityContext??k z
activityContext	??{ ä
)
??ä ã
{@@ 	
returnAA 
OutcomesAA 
(AA 
SAA 
[AA 
$strAA $
]AA$ %
,AA% &
SAA' (
[AA( )
$strAA) 1
]AA1 2
)AA2 3
;AA3 4
}BB 	
publicDD 
asyncDD 
overrideDD 
TaskDD "
<DD" ##
ActivityExecutionResultDD# :
>DD: ;
ExecuteAsyncDD< H
(DDH I$
WorkflowExecutionContextDDI a
workflowContextDDb q
,DDq r
ActivityContext	DDs Ç
activityContext
DDÉ í
)
DDí ì
{EE 	
varFF 
contentItemIdFF 
=FF 
awaitFF  %!
GetContentItemIdAsyncFF& ;
(FF; <
workflowContextFF< K
)FFK L
;FFL M
ifHH 
(HH 
contentItemIdHH 
==HH  
nullHH! %
)HH% &
{II 
throwJJ 
newJJ %
InvalidOperationExceptionJJ 3
(JJ3 4
$"JJ4 6
The JJ6 :
{JJ: ;
nameofJJ; A
(JJA B
UpdateContentTaskJJB S
)JJS T
}JJT U4
( failed to evaluate the 'ContentItemId'.JJU }
"JJ} ~
)JJ~ 
;	JJ Ä
}KK 
varMM *
inlineEventOfSameContentItemIdMM .
=MM/ 0
StringMM1 7
.MM7 8
EqualsMM8 >
(MM> ?
InlineEventMM? J
.MMJ K
ContentItemIdMMK X
,MMX Y
contentItemIdMMZ g
,MMg h
StringComparisonMMi y
.MMy z
OrdinalIgnoreCase	MMz ã
)
MMã å
;
MMå ç
ifOO 
(OO *
inlineEventOfSameContentItemIdOO .
)OO. /
{PP 
ifQQ 
(QQ 
InlineEventQQ 
.QQ  
NameQQ  $
==QQ% '
nameofQQ( .
(QQ. /!
ContentPublishedEventQQ/ D
)QQD E
)QQE F
{RR 
throwSS 
newSS %
InvalidOperationExceptionSS 7
(SS7 8
$"SS8 :
The 'SS: ?
{SS? @
nameofSS@ F
(SSF G
UpdateContentTaskSSG X
)SSX Y
}SSY ZN
A' can't update the content item as it is executed inline from a '	SSZ õ
{
SSõ ú
nameof
SSú ¢
(
SS¢ £#
ContentPublishedEvent
SS£ ∏
)
SS∏ π
}
SSπ ∫X
J' of the same content item, please use an event that is triggered earlier.
SS∫ Ñ
"
SSÑ Ö
)
SSÖ Ü
;
SSÜ á
}TT 
ifVV 
(VV 
InlineEventVV 
.VV  
NameVV  $
==VV% '
nameofVV( .
(VV. /"
ContentDraftSavedEventVV/ E
)VVE F
)VVF G
{WW 
throwXX 
newXX %
InvalidOperationExceptionXX 7
(XX7 8
$"XX8 :
The 'XX: ?
{XX? @
nameofXX@ F
(XXF G
UpdateContentTaskXXG X
)XXX Y
}XXY ZN
A' can't update the content item as it is executed inline from a '	XXZ õ
{
XXõ ú
nameof
XXú ¢
(
XX¢ £$
ContentDraftSavedEvent
XX£ π
)
XXπ ∫
}
XX∫ ªX
J' of the same content item, please use an event that is triggered earlier.
XXª Ö
"
XXÖ Ü
)
XXÜ á
;
XXá à
}YY 
}ZZ 
ContentItem\\ 
contentItem\\ #
=\\$ %
null\\& *
;\\* +
if^^ 
(^^ 
!^^ *
inlineEventOfSameContentItemId^^ /
)^^/ 0
{__ 
contentItem`` 
=`` 
await`` #
ContentManager``$ 2
.``2 3
GetAsync``3 ;
(``; <
contentItemId``< I
,``I J
VersionOptions``K Y
.``Y Z
DraftRequired``Z g
)``g h
;``h i
}aa 
elsebb 
{cc 
contentItemdd 
=dd 
workflowContextdd -
.dd- .
Inputdd. 3
.dd3 4
GetValuedd4 <
<dd< =
IContentdd= E
>ddE F
(ddF G!
ContentEventConstantsddG \
.dd\ ]
ContentItemInputKeydd] p
)ddp q
?ddq r
.ddr s
ContentItemdds ~
;dd~ 
}ee 
ifgg 
(gg 
contentItemgg 
==gg 
nullgg #
)gg# $
{hh 
throwii 
newii %
InvalidOperationExceptionii 3
(ii3 4
$"ii4 6
The 'ii6 ;
{ii; <
nameofii< B
(iiB C
UpdateContentTaskiiC T
)iiT U
}iiU V2
&' failed to retrieve the content item.iiV |
"ii| }
)ii} ~
;ii~ 
}jj 
ifll 
(ll 
!ll *
inlineEventOfSameContentItemIdll /
&&ll0 2
InlineEventll3 >
.ll> ?
IsStartll? F
&&llG I
InlineEventllJ U
.llU V
ContentTypellV a
==llb d
contentItemlle p
.llp q
ContentTypellq |
)ll| }
{mm 
ifnn 
(nn 
InlineEventnn 
.nn  
Namenn  $
==nn% '
nameofnn( .
(nn. /
ContentUpdatedEventnn/ B
)nnB C
)nnC D
{oo 
throwpp 
newpp %
InvalidOperationExceptionpp 7
(pp7 8
$"pp8 :
The 'pp: ?
{pp? @
nameofpp@ F
(ppF G
UpdateContentTaskppG X
)ppX Y
}ppY ZW
J' can't update the content item as it is executed inline from a starting '	ppZ §
{
pp§ •
nameof
pp• ´
(
pp´ ¨!
ContentUpdatedEvent
pp¨ ø
)
ppø ¿
}
pp¿ ¡S
E' of the same content type, which would result in an infinitive loop.
pp¡ Ü
"
ppÜ á
)
ppá à
;
ppà â
}qq 
ifss 
(ss 
Publishss 
&&ss 
InlineEventss *
.ss* +
Namess+ /
==ss0 2
nameofss3 9
(ss9 :!
ContentPublishedEventss: O
)ssO P
)ssP Q
{tt 
throwuu 
newuu %
InvalidOperationExceptionuu 7
(uu7 8
$"uu8 :
The 'uu: ?
{uu? @
nameofuu@ F
(uuF G
UpdateContentTaskuuG X
)uuX Y
}uuY ZX
K' can't publish the content item as it is executed inline from a starting '	uuZ •
{
uu• ¶
nameof
uu¶ ¨
(
uu¨ ≠#
ContentPublishedEvent
uu≠ ¬
)
uu¬ √
}
uu√ ƒS
E' of the same content type, which would result in an infinitive loop.
uuƒ â
"
uuâ ä
)
uuä ã
;
uuã å
}vv 
ifxx 
(xx 
!xx 
Publishxx 
&&xx 
InlineEventxx  +
.xx+ ,
Namexx, 0
==xx1 3
nameofxx4 :
(xx: ;"
ContentDraftSavedEventxx; Q
)xxQ R
)xxR S
{yy 
throwzz 
newzz %
InvalidOperationExceptionzz 7
(zz7 8
$"zz8 :
The 'zz: ?
{zz? @
nameofzz@ F
(zzF G
UpdateContentTaskzzG X
)zzX Y
}zzY ZW
J' can't update the content item as it is executed inline from a starting '	zzZ §
{
zz§ •
nameof
zz• ´
(
zz´ ¨$
ContentDraftSavedEvent
zz¨ ¬
)
zz¬ √
}
zz√ ƒS
E' of the same content type, which would result in an infinitive loop.
zzƒ â
"
zzâ ä
)
zzä ã
;
zzã å
}{{ 
}|| 
if~~ 
(~~ 
!~~ 
String~~ 
.~~ 
IsNullOrWhiteSpace~~ *
(~~* +
ContentProperties~~+ <
.~~< =

Expression~~= G
)~~G H
)~~H I
{ 
var
ÄÄ 
contentProperties
ÄÄ %
=
ÄÄ& '
await
ÄÄ( -"
_expressionEvaluator
ÄÄ. B
.
ÄÄB C
EvaluateAsync
ÄÄC P
(
ÄÄP Q
ContentProperties
ÄÄQ b
,
ÄÄb c
workflowContext
ÄÄd s
,
ÄÄs t!
_javaScriptEncoderÄÄu á
)ÄÄá à
;ÄÄà â
contentItem
ÅÅ 
.
ÅÅ 
Merge
ÅÅ !
(
ÅÅ! "
JObject
ÅÅ" )
.
ÅÅ) *
Parse
ÅÅ* /
(
ÅÅ/ 0
contentProperties
ÅÅ0 A
)
ÅÅA B
,
ÅÅB C
new
ÅÅD G
JsonMergeSettings
ÅÅH Y
{
ÅÅZ [ 
MergeArrayHandling
ÅÅ\ n
=
ÅÅo p!
MergeArrayHandlingÅÅq É
.ÅÅÉ Ñ
ReplaceÅÅÑ ã
}ÅÅå ç
)ÅÅç é
;ÅÅé è
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
!
ÑÑ ,
inlineEventOfSameContentItemId
ÑÑ /
)
ÑÑ/ 0
{
ÖÖ 
await
ÜÜ 
ContentManager
ÜÜ $
.
ÜÜ$ %
UpdateAsync
ÜÜ% 0
(
ÜÜ0 1
contentItem
ÜÜ1 <
)
ÜÜ< =
;
ÜÜ= >
}
áá 
var
ââ 
result
ââ 
=
ââ 
await
ââ 
ContentManager
ââ -
.
ââ- .
ValidateAsync
ââ. ;
(
ââ; <
contentItem
ââ< G
)
ââG H
;
ââH I
if
ãã 
(
ãã 
result
ãã 
.
ãã 
	Succeeded
ãã  
)
ãã  !
{
åå 
if
çç 
(
çç 
!
çç ,
inlineEventOfSameContentItemId
çç 3
)
çç3 4
{
éé 
if
èè 
(
èè 
Publish
èè 
)
èè  
{
êê 
await
ëë 
ContentManager
ëë ,
.
ëë, -
PublishAsync
ëë- 9
(
ëë9 :
contentItem
ëë: E
)
ëëE F
;
ëëF G
}
íí 
else
ìì 
{
îî 
await
ïï 
ContentManager
ïï ,
.
ïï, -
SaveDraftAsync
ïï- ;
(
ïï; <
contentItem
ïï< G
)
ïïG H
;
ïïH I
}
ññ 
}
óó 
workflowContext
ôô 
.
ôô  
CorrelationId
ôô  -
=
ôô. /
contentItem
ôô0 ;
.
ôô; <
ContentItemId
ôô< I
;
ôôI J
workflowContext
öö 
.
öö  

Properties
öö  *
[
öö* +#
ContentEventConstants
öö+ @
.
öö@ A!
ContentItemInputKey
ööA T
]
ööT U
=
ööV W
contentItem
ööX c
;
ööc d
workflowContext
õõ 
.
õõ  

LastResult
õõ  *
=
õõ+ ,
contentItem
õõ- 8
;
õõ8 9
return
ùù 
Outcomes
ùù 
(
ùù  
$str
ùù  &
)
ùù& '
;
ùù' (
}
ûû 
if
†† 
(
†† ,
inlineEventOfSameContentItemId
†† .
)
††. /
{
°° "
_updateModelAccessor
¢¢ $
.
¢¢$ %
ModelUpdater
¢¢% 1
.
¢¢1 2

ModelState
¢¢2 <
.
¢¢< =
AddModelError
¢¢= J
(
¢¢J K
nameof
¢¢K Q
(
¢¢Q R
UpdateContentTask
¢¢R c
)
¢¢c d
,
¢¢d e
$"
££ 
The '
££ 
{
££ 
workflowContext
££ +
.
££+ ,
WorkflowType
££, 8
.
££8 9
Name
££9 =
}
££= >
:
££> ?
{
££? @
nameof
££@ F
(
££F G
UpdateContentTask
££G X
)
££X Y
}
££Y Z3
%' failed to update the content item: 
££Z 
"££ Ä
+
§§ 
String
§§ 
.
§§ 
Join
§§ !
(
§§! "
$str
§§" &
,
§§& '
result
§§( .
.
§§. /
Errors
§§/ 5
)
§§5 6
)
§§6 7
;
§§7 8
}
•• 
workflowContext
ßß 
.
ßß 

LastResult
ßß &
=
ßß' (
result
ßß) /
;
ßß/ 0
return
©© 
Outcomes
©© 
(
©© 
$str
©© $
)
©©$ %
;
©©% &
}
™™ 	
}
´´ 
}¨¨ π
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentCreatedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class ,
 ContentCreatedEventDisplayDriver 1
:2 3%
ContentEventDisplayDriver4 M
<M N
ContentCreatedEventN a
,a b(
ContentCreatedEventViewModelc 
>	 Ä
{ 
public		 ,
 ContentCreatedEventDisplayDriver		 /
(		/ 0%
IContentDefinitionManager		0 I$
contentDefinitionManager		J b
)		b c
:		d e
base		f j
(		j k%
contentDefinitionManager			k É
)
		É Ñ
{

 	
} 	
} 
} π
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentDeletedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class ,
 ContentDeletedEventDisplayDriver 1
:2 3%
ContentEventDisplayDriver4 M
<M N
ContentDeletedEventN a
,a b(
ContentDeletedEventViewModelc 
>	 Ä
{ 
public		 ,
 ContentDeletedEventDisplayDriver		 /
(		/ 0%
IContentDefinitionManager		0 I$
contentDefinitionManager		J b
)		b c
:		d e
base		f j
(		j k%
contentDefinitionManager			k É
)
		É Ñ
{

 	
} 	
} 
}  
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentDraftSavedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class /
#ContentDraftSavedEventDisplayDriver 4
:5 6%
ContentEventDisplayDriver7 P
<P Q"
ContentDraftSavedEventQ g
,g h,
ContentDraftSavedEventViewModel	i à
>
à â
{ 
public		 /
#ContentDraftSavedEventDisplayDriver		 2
(		2 3%
IContentDefinitionManager		3 L$
contentDefinitionManager		M e
)		e f
:		g h
base		i m
(		m n%
contentDefinitionManager			n Ü
)
		Ü á
{

 	
} 	
} 
} ˆ4
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

abstract 
class %
ContentEventDisplayDriver 3
<3 4
	TActivity4 =
,= >

TViewModel? I
>I J
:K L!
ActivityDisplayDriverM b
<b c
	TActivityc l
,l m

TViewModeln x
>x y
wherez 
	TActivity
Ä â
:
ä ã
ContentEvent
å ò
where
ô û

TViewModel
ü ©
:
™ ´#
ContentEventViewModel
¨ ¡
<
¡ ¬
	TActivity
¬ À
>
À Ã
,
Ã Õ
new
Œ —
(
— “
)
“ ”
{ 
	protected %
ContentEventDisplayDriver +
(+ ,%
IContentDefinitionManager, E$
contentDefinitionManagerF ^
)^ _
{ 	$
ContentDefinitionManager $
=% &$
contentDefinitionManager' ?
;? @
} 	
	protected %
IContentDefinitionManager +$
ContentDefinitionManager, D
{E F
getG J
;J K
}L M
	protected 
override 
void 
EditActivity  ,
(, -
	TActivity- 6
source7 =
,= >

TViewModel? I
targetJ P
)P Q
{ 	
target 
. $
SelectedContentTypeNames +
=, -
source. 4
.4 5
ContentTypeFilter5 F
;F G
} 	
public 
async 
override 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
	TActivity? H
modelI N
,N O
IUpdateModelP \
updater] d
)d e
{ 	
var 
	viewModel 
= 
new 

TViewModel  *
(* +
)+ ,
;, -
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
Prefix= C
,C D
xE F
=>G I
xJ K
.K L$
SelectedContentTypeNamesL d
)d e
)e f
{ 
model   
.   
ContentTypeFilter   '
=  ( )#
FilterContentTypesQuery  * A
(  A B
	viewModel  B K
.  K L$
SelectedContentTypeNames  L d
)  d e
.  e f
ToList  f l
(  l m
)  m n
;  n o
}!! 
return"" 
Edit"" 
("" 
model"" 
)"" 
;"" 
}## 	
public%% 
override%% 
IDisplayResult%% &
Display%%' .
(%%. /
	TActivity%%/ 8
activity%%9 A
)%%A B
{&& 	
return'' 
Combine'' 
('' 
Shape(( 
((( 
$"(( 
{(( 
typeof(( 
(((  
	TActivity((  )
)(() *
.((* +
Name((+ /
}((/ 0
_Fields_Thumbnail((0 A
"((A B
,((B C
new((D G!
ContentEventViewModel((H ]
<((] ^
	TActivity((^ g
>((g h
(((h i
activity((i q
)((q r
)((r s
.((s t
Location((t |
(((| }
$str	((} à
,
((à â
$str
((ä ì
)
((ì î
,
((î ï
Factory)) 
()) 
$")) 
{)) 
typeof)) !
())! "
	TActivity))" +
)))+ ,
.)), -
Name))- 1
}))1 2
_Fields_Design))2 @
"))@ A
,))A B
ctx))C F
=>))G I
{** 
var++ "
contentTypeDefinitions++ .
=++/ 0$
ContentDefinitionManager++1 I
.++I J
ListTypeDefinitions++J ]
(++] ^
)++^ _
.++_ `
ToDictionary++` l
(++l m
x++m n
=>++o q
x++r s
.++s t
Name++t x
)++x y
;++y z
var,, *
selectedContentTypeDefinitions,, 6
=,,7 8
activity,,9 A
.,,A B
ContentTypeFilter,,B S
.,,S T
Select,,T Z
(,,Z [
x,,[ \
=>,,] _"
contentTypeDefinitions,,` v
[,,v w
x,,w x
],,x y
),,y z
.,,z {
ToList	,,{ Å
(
,,Å Ç
)
,,Ç É
;
,,É Ñ
var.. 
shape.. 
=.. 
new..  #!
ContentEventViewModel..$ 9
<..9 :
	TActivity..: C
>..C D
(..D E
)..E F
;..F G
shape// 
.// 
ContentTypeFilter// +
=//, -*
selectedContentTypeDefinitions//. L
;//L M
shape00 
.00 
Activity00 "
=00# $
activity00% -
;00- .
return22 
shape22  
;22  !
}33 
)33 
.33 
Location33 
(33 
$str33 $
,33$ %
$str33& /
)33/ 0
)44 
;44 
}55 	
	protected:: 
IEnumerable:: 
<:: 
string:: $
>::$ %#
FilterContentTypesQuery::& =
(::= >
IEnumerable::> I
<::I J
string::J P
>::P Q
contentTypeNames::R b
)::b c
{;; 	
var<< "
contentTypeDefinitions<< &
=<<' ($
ContentDefinitionManager<<) A
.<<A B
ListTypeDefinitions<<B U
(<<U V
)<<V W
.<<W X
ToDictionary<<X d
(<<d e
x<<e f
=><<g i
x<<j k
.<<k l
Name<<l p
)<<p q
;<<q r
return== 
contentTypeNames== #
.==# $
Where==$ )
(==) *
x==* +
=>==, .
!==/ 0
string==0 6
.==6 7
IsNullOrWhiteSpace==7 I
(==I J
x==J K
)==K L
&&==M O"
contentTypeDefinitions==P f
.==f g
ContainsKey==g r
(==r s
x==s t
)==t u
)==u v
;==v w
}>> 	
}?? 
}@@ ≈
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentPublishedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class .
"ContentPublishedEventDisplayDriver 3
:4 5%
ContentEventDisplayDriver6 O
<O P!
ContentPublishedEventP e
,e f+
ContentPublishedEventViewModel	g Ö
>
Ö Ü
{ 
public		 .
"ContentPublishedEventDisplayDriver		 1
(		1 2%
IContentDefinitionManager		2 K$
contentDefinitionManager		L d
)		d e
:		f g
base		h l
(		l m%
contentDefinitionManager			m Ö
)
		Ö Ü
{

 	
} 	
} 
} È
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

abstract 
class $
ContentTaskDisplayDriver 2
<2 3
	TActivity3 <
,< =

TViewModel> H
>H I
:J K!
ActivityDisplayDriverL a
<a b
	TActivityb k
,k l

TViewModelm w
>w x
wherey ~
	TActivity	 à
:
â ä
ContentTask
ã ñ
where
ó ú

TViewModel
ù ß
:
® ©"
ContentTaskViewModel
™ æ
<
æ ø
	TActivity
ø »
>
» …
,
…  
new
À Œ
(
Œ œ
)
œ –
{		 
public

 
override

 
IDisplayResult

 &
Display

' .
(

. /
	TActivity

/ 8
activity

9 A
)

A B
{ 	
return 
Combine 
( 
Shape 
( 
$" 
{ 
typeof 
(  
	TActivity  )
)) *
.* +
Name+ /
}/ 0
_Fields_Thumbnail0 A
"A B
,B C
newD G 
ContentTaskViewModelH \
<\ ]
	TActivity] f
>f g
(g h
activityh p
)p q
)q r
.r s
Locations {
({ |
$str	| á
,
á à
$str
â í
)
í ì
,
ì î
Shape 
( 
$" 
{ 
typeof 
(  
	TActivity  )
)) *
.* +
Name+ /
}/ 0
_Fields_Design0 >
"> ?
,? @
newA D 
ContentTaskViewModelE Y
<Y Z
	TActivityZ c
>c d
(d e
activitye m
)m n
)n o
.o p
Locationp x
(x y
$str	y Å
,
Å Ç
$str
É å
)
å ç
) 
; 
} 	
} 
} œ
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentUnpublishedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class 0
$ContentUnpublishedEventDisplayDriver 5
:6 7%
ContentEventDisplayDriver8 Q
<Q R#
ContentUnpublishedEventR i
,i j-
 ContentUnpublishedEventViewModel	k ã
>
ã å
{ 
public		 0
$ContentUnpublishedEventDisplayDriver		 3
(		3 4%
IContentDefinitionManager		4 M$
contentDefinitionManager		N f
)		f g
:		h i
base		j n
(		n o%
contentDefinitionManager			o á
)
		á à
{

 	
} 	
} 
} π
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentUpdatedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class ,
 ContentUpdatedEventDisplayDriver 1
:2 3%
ContentEventDisplayDriver4 M
<M N
ContentUpdatedEventN a
,a b(
ContentUpdatedEventViewModelc 
>	 Ä
{ 
public		 ,
 ContentUpdatedEventDisplayDriver		 /
(		/ 0%
IContentDefinitionManager		0 I$
contentDefinitionManager		J b
)		b c
:		d e
base		f j
(		j k%
contentDefinitionManager			k É
)
		É Ñ
{

 	
} 	
} 
} ≈
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\ContentVersionedEventDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class .
"ContentVersionedEventDisplayDriver 3
:4 5%
ContentEventDisplayDriver6 O
<O P!
ContentVersionedEventP e
,e f+
ContentVersionedEventViewModel	g Ö
>
Ö Ü
{ 
public		 .
"ContentVersionedEventDisplayDriver		 1
(		1 2%
IContentDefinitionManager		2 K$
contentDefinitionManager		L d
)		d e
:		f g
base		h l
(		l m%
contentDefinitionManager			m Ö
)
		Ö Ü
{

 	
} 	
} 
} ô
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\CreateContentTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{		 
public

 

class

 *
CreateContentTaskDisplayDriver

 /
:

0 1$
ContentTaskDisplayDriver

2 J
<

J K
CreateContentTask

K \
,

\ ]&
CreateContentTaskViewModel

^ x
>

x y
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public *
CreateContentTaskDisplayDriver -
(- .%
IContentDefinitionManager. G$
contentDefinitionManagerH `
)` a
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
	protected 
override 
void 
EditActivity  ,
(, -
CreateContentTask- >
activity? G
,G H&
CreateContentTaskViewModelI c
modeld i
)i j
{ 	
model 
. !
AvailableContentTypes '
=( )%
_contentDefinitionManager* C
.C D
ListTypeDefinitionsD W
(W X
)X Y
. 
Select 
( 
x 
=> 
new  
SelectListItem! /
{0 1
Text2 6
=7 8
x9 :
.: ;
DisplayName; F
,F G
ValueH M
=N O
xP Q
.Q R
NameR V
}W X
)X Y
. 
ToList 
( 
) 
; 
model 
. 
ContentType 
= 
activity  (
.( )
ContentType) 4
;4 5
model 
. 
Publish 
= 
activity $
.$ %
Publish% ,
;, -
model 
. 
ContentProperties #
=$ %
activity& .
.. /
ContentProperties/ @
.@ A

ExpressionA K
;K L
} 	
	protected 
override 
void 
UpdateActivity  .
(. /&
CreateContentTaskViewModel/ I
modelJ O
,O P
CreateContentTaskQ b
activityc k
)k l
{ 	
activity   
.   
ContentType    
=  ! "
model  # (
.  ( )
ContentType  ) 4
;  4 5
activity!! 
.!! 
Publish!! 
=!! 
model!! $
.!!$ %
Publish!!% ,
;!!, -
activity"" 
."" 
ContentProperties"" &
=""' (
new"") ,
WorkflowExpression""- ?
<""? @
string""@ F
>""F G
(""G H
model""H M
.""M N
ContentProperties""N _
)""_ `
;""` a
}## 	
}$$ 
}%% Ù
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\DeleteContentTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class *
DeleteContentTaskDisplayDriver /
:0 1$
ContentTaskDisplayDriver2 J
<J K
DeleteContentTaskK \
,\ ]&
DeleteContentTaskViewModel^ x
>x y
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
DeleteContentTask

- >
activity

? G
,

G H&
DeleteContentTaskViewModel

I c
model

d i
)

i j
{ 	
model 
. 

Expression 
= 
activity '
.' (
Content( /
./ 0

Expression0 :
;: ;
} 	
	protected 
override 
void 
UpdateActivity  .
(. /&
DeleteContentTaskViewModel/ I
modelJ O
,O P
DeleteContentTaskQ b
activityc k
)k l
{ 	
activity 
. 
Content 
= 
new "
WorkflowExpression# 5
<5 6
IContent6 >
>> ?
(? @
model@ E
.E F

ExpressionF P
)P Q
;Q R
} 	
} 
} ¸
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\PublishContentTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class +
PublishContentTaskDisplayDriver 0
:1 2$
ContentTaskDisplayDriver3 K
<K L
PublishContentTaskL ^
,^ _'
PublishContentTaskViewModel` {
>{ |
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
PublishContentTask

- ?
activity

@ H
,

H I'
PublishContentTaskViewModel

J e
model

f k
)

k l
{ 	
model 
. 

Expression 
= 
activity '
.' (
Content( /
./ 0

Expression0 :
;: ;
} 	
	protected 
override 
void 
UpdateActivity  .
(. /'
PublishContentTaskViewModel/ J
modelK P
,P Q
PublishContentTaskR d
activitye m
)m n
{ 	
activity 
. 
Content 
= 
new "
WorkflowExpression# 5
<5 6
IContent6 >
>> ?
(? @
model@ E
.E F

ExpressionF P
)P Q
;Q R
} 	
} 
} ä
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\RetrieveContentTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class ,
 RetrieveContentTaskDisplayDriver 1
:2 3$
ContentTaskDisplayDriver4 L
<L M
RetrieveContentTaskM `
,` a(
RetrieveContentTaskViewModelb ~
>~ 
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, -
RetrieveContentTask

- @
activity

A I
,

I J(
RetrieveContentTaskViewModel

K g
model

h m
)

m n
{ 	
model 
. 
ContentItemId 
=  !
activity" *
.* +
Content+ 2
.2 3

Expression3 =
;= >
} 	
	protected 
override 
void 
UpdateActivity  .
(. /(
RetrieveContentTaskViewModel/ K
modelL Q
,Q R
RetrieveContentTaskS f
activityg o
)o p
{ 	
activity 
. 
Content 
= 
new "
WorkflowExpression# 5
<5 6
IContent6 >
>> ?
(? @
model@ E
.E F
ContentItemIdF S
)S T
;T U
} 	
} 
} è
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\UnpublishContentTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )
Drivers) 0
{ 
public 

class -
!UnpublishContentTaskDisplayDriver 2
:3 4$
ContentTaskDisplayDriver5 M
<M N 
UnpublishContentTaskN b
,b c*
UnpublishContentTaskViewModel	d Å
>
Å Ç
{		 
	protected

 
override

 
void

 
EditActivity

  ,
(

, - 
UnpublishContentTask

- A
activity

B J
,

J K)
UnpublishContentTaskViewModel

L i
model

j o
)

o p
{ 	
model 
. 

Expression 
= 
activity '
.' (
Content( /
./ 0

Expression0 :
;: ;
} 	
	protected 
override 
void 
UpdateActivity  .
(. /)
UnpublishContentTaskViewModel/ L
modelM R
,R S 
UnpublishContentTaskT h
activityi q
)q r
{ 	
activity 
. 
Content 
= 
new "
WorkflowExpression# 5
<5 6
IContent6 >
>> ?
(? @
model@ E
.E F

ExpressionF P
)P Q
;Q R
} 	
} 
} ”
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Drivers\UpdateContentTaskDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
	Workflows		 (
.		( )
Drivers		) 0
{

 
public 

class *
UpdateContentTaskDisplayDriver /
:0 1$
ContentTaskDisplayDriver2 J
<J K
UpdateContentTaskK \
,\ ]&
UpdateContentTaskViewModel^ x
>x y
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public *
UpdateContentTaskDisplayDriver -
(- .%
IContentDefinitionManager. G$
contentDefinitionManagerH `
)` a
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
	protected 
override 
void 
EditActivity  ,
(, -
UpdateContentTask- >
activity? G
,G H&
UpdateContentTaskViewModelI c
modeld i
)i j
{ 	
model 
. !
AvailableContentTypes '
=( )%
_contentDefinitionManager* C
.C D
ListTypeDefinitionsD W
(W X
)X Y
. 
Select 
( 
x 
=> 
new  
SelectListItem! /
{0 1
Text2 6
=7 8
x9 :
.: ;
DisplayName; F
,F G
ValueH M
=N O
xP Q
.Q R
NameR V
}W X
)X Y
. 
ToList 
( 
) 
; 
model 
. #
ContentItemIdExpression )
=* +
activity, 4
.4 5
Content5 <
.< =

Expression= G
;G H
model 
. 
ContentProperties #
=$ %
activity& .
.. /
ContentProperties/ @
.@ A

ExpressionA K
;K L
model 
. 
Publish 
= 
activity $
.$ %
Publish% ,
;, -
} 	
	protected 
override 
void 
UpdateActivity  .
(. /&
UpdateContentTaskViewModel/ I
modelJ O
,O P
UpdateContentTaskQ b
activityc k
)k l
{   	
activity!! 
.!! 
Content!! 
=!! 
new!! "
WorkflowExpression!!# 5
<!!5 6
IContent!!6 >
>!!> ?
(!!? @
model!!@ E
.!!E F#
ContentItemIdExpression!!F ]
)!!] ^
;!!^ _
activity"" 
."" 
ContentProperties"" &
=""' (
new"") ,
WorkflowExpression""- ?
<""? @
string""@ F
>""F G
(""G H
model""H M
.""M N
ContentProperties""N _
)""_ `
;""` a
activity## 
.## 
Publish## 
=## 
model## $
.##$ %
Publish##% ,
;##, -
}$$ 	
}%% 
}&& ˝
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Handlers\ContentItemSerializer.cs
	namespace 	
OrchardCore
 
. 
	Workflows 
.  
Services  (
{ 
public 

class !
ContentItemSerializer &
:' ($
IWorkflowValueSerializer) A
{		 
private

 
readonly

 
IContentManager

 (
_contentManager

) 8
;

8 9
public !
ContentItemSerializer $
($ %
IContentManager% 4
contentManager5 C
)C D
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
Task !
DeserializeValueAsync /
(/ 0)
SerializeWorkflowValueContext0 M
contextN U
)U V
{ 	
if 
( 
context 
. 
Input 
is  
JObject! (
jObject) 0
)0 1
{ 
var 
type 
= 
jObject "
." #
Value# (
<( )
string) /
>/ 0
(0 1
$str1 7
)7 8
;8 9
if 
( 
type 
== 
$str %
)% &
{ 
var 
	contentId !
=" #
jObject$ +
.+ ,
Value, 1
<1 2
string2 8
>8 9
(9 :
$str: E
)E F
;F G
context 
. 
Output "
=# $
	contentId% .
!=/ 1
null2 6
?7 8
await9 >
_contentManager? N
.N O
GetAsyncO W
(W X
	contentIdX a
,a b
VersionOptionsc q
.q r
Latestr x
)x y
:z {
default	| É
(
É Ñ
IContent
Ñ å
)
å ç
;
ç é
} 
} 
} 	
public 
Task 
SerializeValueAsync '
(' ()
SerializeWorkflowValueContext( E
contextF M
)M N
{   	
if!! 
(!! 
context!! 
.!! 
Input!! 
is!!  
IContent!!! )
content!!* 1
)!!1 2
{"" 
context## 
.## 
Output## 
=##  
JObject##! (
.##( )

FromObject##) 3
(##3 4
new##4 7
{$$ 
Type%% 
=%% 
$str%% $
,%%$ %
	ContentId&& 
=&& 
content&&  '
.&&' (
ContentItem&&( 3
.&&3 4
ContentItemId&&4 A
}'' 
)'' 
;'' 
}(( 
return** 
Task** 
.** 
CompletedTask** %
;**% &
}++ 	
},, 
}-- ÷,
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Handlers\ContentsHandler.cs
	namespace		 	
OrchardCore		
 
.		 
Contents		 
.		 
	Workflows		 (
.		( )
Handlers		) 1
{

 
public 

class 
ContentsHandler  
:! "
ContentHandlerBase# 5
{ 
private 
readonly 
IWorkflowManager )
_workflowManager* :
;: ;
public 
ContentsHandler 
( 
IWorkflowManager /
workflowManager0 ?
)? @
{ 	
_workflowManager 
= 
workflowManager .
;. /
} 	
public 
override 
Task 
CreatedAsync )
() * 
CreateContentContext* >
context? F
)F G
{ 	
return %
TriggerWorkflowEventAsync ,
(, -
nameof- 3
(3 4
ContentCreatedEvent4 G
)G H
,H I
contextJ Q
.Q R
ContentItemR ]
)] ^
;^ _
} 	
public 
override 
Task 
UpdatedAsync )
() * 
UpdateContentContext* >
context? F
)F G
{ 	
return %
TriggerWorkflowEventAsync ,
(, -
nameof- 3
(3 4
ContentUpdatedEvent4 G
)G H
,H I
contextJ Q
.Q R
ContentItemR ]
)] ^
;^ _
} 	
public 
override 
Task 
DraftSavedAsync ,
(, -#
SaveDraftContentContext- D
contextE L
)L M
{ 	
return   %
TriggerWorkflowEventAsync   ,
(  , -
nameof  - 3
(  3 4"
ContentDraftSavedEvent  4 J
)  J K
,  K L
context  M T
.  T U
ContentItem  U `
)  ` a
;  a b
}!! 	
public## 
override## 
Task## 
PublishedAsync## +
(##+ ,!
PublishContentContext##, A
context##B I
)##I J
{$$ 	
return%% %
TriggerWorkflowEventAsync%% ,
(%%, -
nameof%%- 3
(%%3 4!
ContentPublishedEvent%%4 I
)%%I J
,%%J K
context%%L S
.%%S T
ContentItem%%T _
)%%_ `
;%%` a
}&& 	
public(( 
override(( 
Task(( 
UnpublishedAsync(( -
(((- .!
PublishContentContext((. C
context((D K
)((K L
{)) 	
return** %
TriggerWorkflowEventAsync** ,
(**, -
nameof**- 3
(**3 4#
ContentUnpublishedEvent**4 K
)**K L
,**L M
context**N U
.**U V
ContentItem**V a
)**a b
;**b c
}++ 	
public-- 
override-- 
Task-- 
RemovedAsync-- )
(--) * 
RemoveContentContext--* >
context--? F
)--F G
{.. 	
return// %
TriggerWorkflowEventAsync// ,
(//, -
nameof//- 3
(//3 4
ContentDeletedEvent//4 G
)//G H
,//H I
context//J Q
.//Q R
ContentItem//R ]
)//] ^
;//^ _
}00 	
public22 
override22 
Task22 
VersionedAsync22 +
(22+ ,!
VersionContentContext22, A
context22B I
)22I J
{33 	
return44 %
TriggerWorkflowEventAsync44 ,
(44, -
nameof44- 3
(443 4!
ContentVersionedEvent444 I
)44I J
,44J K
context44L S
.44S T
ContentItem44T _
)44_ `
;44` a
}55 	
private77 
Task77 %
TriggerWorkflowEventAsync77 .
(77. /
string77/ 5
name776 :
,77: ;
ContentItem77< G
contentItem77H S
)77S T
{88 	
var99 
contentEvent99 
=99 
new99 "
ContentEventContext99# 6
(996 7
)997 8
{:: 
Name;; 
=;; 
name;; 
,;; 
ContentType<< 
=<< 
contentItem<< )
.<<) *
ContentType<<* 5
,<<5 6
ContentItemId== 
=== 
contentItem==  +
.==+ ,
ContentItemId==, 9
}>> 
;>> 
var@@ 
input@@ 
=@@ 
new@@ 

Dictionary@@ &
<@@& '
string@@' -
,@@- .
object@@/ 5
>@@5 6
{AA 
{BB !
ContentEventConstantsBB '
.BB' (
ContentItemInputKeyBB( ;
,BB; <
contentItemBB= H
}BBI J
,BBJ K
{CC !
ContentEventConstantsCC '
.CC' ( 
ContentEventInputKeyCC( <
,CC< =
contentEventCC> J
}CCK L
}DD 
;DD 
returnFF 
_workflowManagerFF #
.FF# $
TriggerEventAsyncFF$ 5
(FF5 6
nameFF6 :
,FF: ;
inputFF< A
,FFA B
correlationIdFFC P
:FFP Q
contentItemFFR ]
.FF] ^
ContentItemIdFF^ k
)FFk l
;FFl m
}GG 	
}HH 
}II Õ 
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\Startup.cs
	namespace

 	
OrchardCore


 
.

 
Contents

 
.

 
	Workflows

 (
{ 
[ 
RequireFeatures 
( 
$str ,
), -
]- .
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
. 
AddActivity  
<  !
ContentCreatedEvent! 4
,4 5,
 ContentCreatedEventDisplayDriver6 V
>V W
(W X
)X Y
;Y Z
services 
. 
AddActivity  
<  !
ContentDeletedEvent! 4
,4 5,
 ContentDeletedEventDisplayDriver6 V
>V W
(W X
)X Y
;Y Z
services 
. 
AddActivity  
<  !!
ContentPublishedEvent! 6
,6 7.
"ContentPublishedEventDisplayDriver8 Z
>Z [
([ \
)\ ]
;] ^
services 
. 
AddActivity  
<  !#
ContentUnpublishedEvent! 8
,8 90
$ContentUnpublishedEventDisplayDriver: ^
>^ _
(_ `
)` a
;a b
services 
. 
AddActivity  
<  !
ContentUpdatedEvent! 4
,4 5,
 ContentUpdatedEventDisplayDriver6 V
>V W
(W X
)X Y
;Y Z
services 
. 
AddActivity  
<  !"
ContentDraftSavedEvent! 7
,7 8/
#ContentDraftSavedEventDisplayDriver9 \
>\ ]
(] ^
)^ _
;_ `
services 
. 
AddActivity  
<  !!
ContentVersionedEvent! 6
,6 7.
"ContentVersionedEventDisplayDriver8 Z
>Z [
([ \
)\ ]
;] ^
services 
. 
AddActivity  
<  !
DeleteContentTask! 2
,2 3*
DeleteContentTaskDisplayDriver4 R
>R S
(S T
)T U
;U V
services 
. 
AddActivity  
<  !
PublishContentTask! 3
,3 4+
PublishContentTaskDisplayDriver5 T
>T U
(U V
)V W
;W X
services 
. 
AddActivity  
<  ! 
UnpublishContentTask! 5
,5 6-
!UnpublishContentTaskDisplayDriver7 X
>X Y
(Y Z
)Z [
;[ \
services 
. 
AddActivity  
<  !
CreateContentTask! 2
,2 3*
CreateContentTaskDisplayDriver4 R
>R S
(S T
)T U
;U V
services 
. 
AddActivity  
<  !
RetrieveContentTask! 4
,4 5,
 RetrieveContentTaskDisplayDriver6 V
>V W
(W X
)X Y
;Y Z
services 
. 
AddActivity  
<  !
UpdateContentTask! 2
,2 3*
UpdateContentTaskDisplayDriver4 R
>R S
(S T
)T U
;U V
services 
. 
	AddScoped 
< 
IContentHandler .
,. /
ContentsHandler0 ?
>? @
(@ A
)A B
;B C
services   
.   
	AddScoped   
<   $
IWorkflowValueSerializer   7
,  7 8!
ContentItemSerializer  9 N
>  N O
(  O P
)  P Q
;  Q R
}!! 	
}"" 
}## ∆
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentCreatedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class (
ContentCreatedEventViewModel -
:. /!
ContentEventViewModel0 E
<E F
ContentCreatedEventF Y
>Y Z
{ 
} 
} ∆
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentDeletedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class (
ContentDeletedEventViewModel -
:. /!
ContentEventViewModel0 E
<E F
ContentDeletedEventF Y
>Y Z
{ 
} 
} œ
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentDraftSavedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class +
ContentDraftSavedEventViewModel 0
:1 2!
ContentEventViewModel3 H
<H I"
ContentDraftSavedEventI _
>_ `
{ 
} 
} ¬
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class !
ContentEventViewModel &
<& '
T' (
>( )
:* +
ActivityViewModel, =
<= >
T> ?
>? @
whereA F
TG H
:I J
ContentEventK W
{		 
public

 !
ContentEventViewModel

 $
(

$ %
)

% &
{ 	
} 	
public !
ContentEventViewModel $
($ %
T% &
activity' /
)/ 0
{ 	
Activity 
= 
activity 
;  
} 	
public 
IList 
< !
ContentTypeDefinition *
>* +
ContentTypeFilter, =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
IList 
< 
string 
> $
SelectedContentTypeNames 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
=D E
newF I
ListJ N
<N O
stringO U
>U V
(V W
)W X
;X Y
} 
} Ã
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentPublishedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class *
ContentPublishedEventViewModel /
:0 1!
ContentEventViewModel2 G
<G H!
ContentPublishedEventH ]
>] ^
{ 
} 
} Í
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class  
ContentTaskViewModel %
<% &
T& '
>' (
:) *
ActivityViewModel+ <
<< =
T= >
>> ?
where@ E
TF G
:H I
ContentTaskJ U
{ 
public  
ContentTaskViewModel #
(# $
)$ %
{		 	
}

 	
public  
ContentTaskViewModel #
(# $
T$ %
activity& .
). /
{ 	
Activity 
= 
activity 
;  
} 	
} 
} “
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentUnpublishedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class ,
 ContentUnpublishedEventViewModel 1
:2 3!
ContentEventViewModel4 I
<I J#
ContentUnpublishedEventJ a
>a b
{ 
} 
} ∆
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentUpdatedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class (
ContentUpdatedEventViewModel -
:. /!
ContentEventViewModel0 E
<E F
ContentUpdatedEventF Y
>Y Z
{ 
} 
} Ã
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\ContentVersionedEventViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class *
ContentVersionedEventViewModel /
:0 1!
ContentEventViewModel2 G
<G H!
ContentVersionedEventH ]
>] ^
{ 
} 
} ≥

ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\CreateContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class &
CreateContentTaskViewModel +
:, - 
ContentTaskViewModel. B
<B C
CreateContentTaskC T
>T U
{		 
[

 	
	BindNever

	 
]

 
public 
IList 
< 
SelectListItem #
># $!
AvailableContentTypes% :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Publish 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
ContentProperties '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ›
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\DeleteContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class &
DeleteContentTaskViewModel +
:, - 
ContentTaskViewModel. B
<B C
DeleteContentTaskC T
>T U
{ 
public

 
string

 

Expression

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} ‡
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\PublishContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class '
PublishContentTaskViewModel ,
:- . 
ContentTaskViewModel/ C
<C D
PublishContentTaskD V
>V W
{ 
public

 
string

 

Expression

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} Ê
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\RetrieveContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class (
RetrieveContentTaskViewModel -
:. / 
ContentTaskViewModel0 D
<D E
RetrieveContentTaskE X
>X Y
{ 
public

 
string

 
ContentItemId

 #
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
} Ê
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\UnpublishContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class )
UnpublishContentTaskViewModel .
:/ 0 
ContentTaskViewModel1 E
<E F 
UnpublishContentTaskF Z
>Z [
{ 
public

 
string

 

Expression

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} ﬁ
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Contents\Workflows\ViewModels\UpdateContentTaskViewModel.cs
	namespace 	
OrchardCore
 
. 
Contents 
. 
	Workflows (
.( )

ViewModels) 3
{ 
public 

class &
UpdateContentTaskViewModel +
:, - 
ContentTaskViewModel. B
<B C
UpdateContentTaskC T
>T U
{		 
[

 	
	BindNever

	 
]

 
public 
IList 
< 
SelectListItem #
># $!
AvailableContentTypes% :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string #
ContentItemIdExpression -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
ContentProperties '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
Publish 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 