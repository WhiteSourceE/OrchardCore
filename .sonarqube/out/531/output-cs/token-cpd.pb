Ï
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNode.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

AdminNodes &
{ 
public 

class 
ListsAdminNode 
:  !
	AdminNode" +
{ 
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool "
AddContentTypeAsParent *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
true; ?
;? @
public		 
string		 
IconForParentLink		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
string

 
IconForContentItems

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
} 
} Ä3
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNodeDriver.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

AdminNodes &
{ 
public 

class  
ListsAdminNodeDriver %
:& '
DisplayDriver( 5
<5 6
MenuItem6 >
,> ?
ListsAdminNode@ N
>N O
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public  
ListsAdminNodeDriver #
(# $%
IContentDefinitionManager$ =$
contentDefinitionManager> V
)V W
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ListsAdminNode/ =
treeNode> F
)F G
{ 	
return 
Combine 
( 
View 
( 
$str 8
,8 9
treeNode: B
)B C
.C D
LocationD L
(L M
$strM Z
,Z [
$str\ e
)e f
,f g
View 
( 
$str :
,: ;
treeNode< D
)D E
.E F
LocationF N
(N O
$strO ^
,^ _
$str` i
)i j
) 
; 
} 	
public   
override   
IDisplayResult   &
Edit  ' +
(  + ,
ListsAdminNode  , :
treeNode  ; C
)  C D
{!! 	
return"" 

Initialize"" 
<"" #
ListsAdminNodeViewModel"" 5
>""5 6
(""6 7
$str""7 W
,""W X
model""Y ^
=>""_ a
{## 
model$$ 
.$$ 
ContentType$$ !
=$$" #
treeNode$$$ ,
.$$, -
ContentType$$- 8
;$$8 9
model%% 
.%% 
ContentTypes%% "
=%%# $$
GetContenTypesSelectList%%% =
(%%= >
)%%> ?
;%%? @
model&& 
.&& 
IconForContentItems&& )
=&&* +
treeNode&&, 4
.&&4 5
IconForContentItems&&5 H
;&&H I
model'' 
.'' "
AddContentTypeAsParent'' ,
=''- .
treeNode''/ 7
.''7 8"
AddContentTypeAsParent''8 N
;''N O
model(( 
.(( 
IconForParentLink(( '
=((( )
treeNode((* 2
.((2 3
IconForParentLink((3 D
;((D E
})) 
))) 
.)) 
Location)) 
()) 
$str)) !
)))! "
;))" #
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?
ListsAdminNode,,? M
treeNode,,N V
,,,V W
IUpdateModel,,X d
updater,,e l
),,l m
{-- 	
var.. 
model.. 
=.. 
new.. #
ListsAdminNodeViewModel.. 3
(..3 4
)..4 5
;..5 6
if00 
(00 
await00 
updater00 
.00 
TryUpdateModelAsync00 1
(001 2
model002 7
,007 8
Prefix009 ?
,00? @
x11 
=>11 
x11 
.11 
ContentType11 "
,11" #
x11$ %
=>11& (
x11) *
.11* +
IconForContentItems11+ >
,11> ?
x22 
=>22 
x22 
.22 "
AddContentTypeAsParent22 -
,22- .
x22/ 0
=>221 3
x224 5
.225 6
IconForParentLink226 G
)22G H
)22H I
{33 
treeNode44 
.44 
ContentType44 $
=44% &
model44' ,
.44, -
ContentType44- 8
;448 9
treeNode55 
.55 
IconForContentItems55 ,
=55- .
model55/ 4
.554 5
IconForContentItems555 H
;55H I
treeNode66 
.66 "
AddContentTypeAsParent66 /
=660 1
model662 7
.667 8"
AddContentTypeAsParent668 N
;66N O
treeNode77 
.77 
IconForParentLink77 *
=77+ ,
model77- 2
.772 3
IconForParentLink773 D
;77D E
}88 
;88 
return:: 
Edit:: 
(:: 
treeNode::  
)::  !
;::! "
};; 	
private== 
List== 
<== 
SelectListItem== #
>==# $$
GetContenTypesSelectList==% =
(=== >
)==> ?
{>> 	
return?? %
_contentDefinitionManager?? ,
.??, -
ListTypeDefinitions??- @
(??@ A
)??A B
.@@ 
Where@@ 
(@@ 
ctd@@ 
=>@@ 
ctd@@ !
.@@! "
Parts@@" '
.@@' (
Any@@( +
(@@+ ,
p@@, -
=>@@. 0
p@@1 2
.@@2 3
PartDefinition@@3 A
.@@A B
Name@@B F
.@@F G
Equals@@G M
(@@M N
typeof@@N T
(@@T U
ListPart@@U ]
)@@] ^
.@@^ _
Name@@_ c
,@@c d
StringComparison@@e u
.@@u v
OrdinalIgnoreCase	@@v á
)
@@á à
)
@@à â
)
@@â ä
.AA 
OrderByAA 
(AA 
ctdAA 
=>AA 
ctdAA  #
.AA# $
DisplayNameAA$ /
)AA/ 0
.BB 
SelectBB 
(BB 
ctdBB 
=>BB 
newBB "
SelectListItemBB# 1
{BB2 3
ValueBB4 9
=BB: ;
ctdBB< ?
.BB? @
NameBB@ D
,BBD E
TextBBF J
=BBK L
ctdBBM P
.BBP Q
DisplayNameBBQ \
}BB] ^
)BB^ _
.CC 
ToListCC 
(CC 
)CC 
;CC 
}DD 	
}EE 
}FF ‹_
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNodeNavigationBuilder.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

AdminNodes &
{ 
public 

class +
ListsAdminNodeNavigationBuilder 0
:1 2'
IAdminNodeNavigationBuilder3 N
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
private 
ListsAdminNode 
_node $
;$ %
private !
ContentTypeDefinition %
_contentType& 2
;2 3
private 
const 
int 
MaxItemsInNode (
=) *
$num+ .
;. /
public +
ListsAdminNodeNavigationBuilder .
(. /%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContentManager   
contentManager   *
,  * +
ISession!! 
session!! 
,!! 
ILogger"" 
<"" +
ListsAdminNodeNavigationBuilder"" 3
>""3 4
logger""5 ;
)""; <
{## 	%
_contentDefinitionManager$$ %
=$$& '$
contentDefinitionManager$$( @
;$$@ A
_contentManager%% 
=%% 
contentManager%% ,
;%%, -
_session&& 
=&& 
session&& 
;&& 
_logger'' 
='' 
logger'' 
;'' 
}(( 	
public** 
string** 
Name** 
=>** 
typeof** $
(**$ %
ListsAdminNode**% 3
)**3 4
.**4 5
Name**5 9
;**9 :
public,, 
async,, 
Task,,  
BuildNavigationAsync,, .
(,,. /
MenuItem,,/ 7
menuItem,,8 @
,,,@ A
NavigationBuilder,,B S
builder,,T [
,,,[ \
IEnumerable,,] h
<,,h i(
IAdminNodeNavigationBuilder	,,i Ñ
>
,,Ñ Ö
treeNodeBuilders
,,Ü ñ
)
,,ñ ó
{-- 	
_node.. 
=.. 
menuItem.. 
as.. 
ListsAdminNode..  .
;... /
if00 
(00 
_node00 
==00 
null00 
||00  
!00! "
_node00" '
.00' (
Enabled00( /
||000 2
String003 9
.009 :
IsNullOrEmpty00: G
(00G H
_node00H M
.00M N
ContentType00N Y
)00Y Z
)00Z [
{11 
return22 
;22 
}33 
_contentType55 
=55 %
_contentDefinitionManager55 4
.554 5
GetTypeDefinition555 F
(55F G
_node55G L
.55L M
ContentType55M X
)55X Y
;55Y Z
if77 
(77 
_node77 
.77 "
AddContentTypeAsParent77 ,
)77, -
{88 
if99 
(99 
_contentType99  
==99! #
null99$ (
)99( )
{:: 
_logger;; 
.;; 
LogError;; $
(;;$ %
$str;;% g
,;;g h
_node;;i n
.;;n o
ContentType;;o z
);;z {
;;;{ |
}<< 
await>> 
builder>> 
.>> 
AddAsync>> &
(>>& '
new>>' *
LocalizedString>>+ :
(>>: ;
_contentType>>; G
.>>G H
DisplayName>>H S
,>>S T
_contentType>>U a
.>>a b
DisplayName>>b m
)>>m n
,>>n o
async>>p u
listTypeMenu	>>v Ç
=>
>>É Ö
{?? 
AddPrefixToClasses@@ &
(@@& '
_node@@' ,
.@@, -
IconForParentLink@@- >
)@@> ?
.@@? @
ForEach@@@ G
(@@G H
c@@H I
=>@@J L
listTypeMenu@@M Y
.@@Y Z
AddClass@@Z b
(@@b c
c@@c d
)@@d e
)@@e f
;@@f g
listTypeMenuAA  
.AA  !

PermissionAA! +
(AA+ ,(
ContentTypePermissionsHelperAA, H
.AAH I#
CreateDynamicPermissionAAI `
(AA` a(
ContentTypePermissionsHelperBB 4
.BB4 5
PermissionTemplatesBB5 H
[BBH I
CommonPermissionsBBI Z
.BBZ [
EditContentBB[ f
.BBf g
NameBBg k
]BBk l
,BBl m
_contentTypeBBn z
)BBz {
)BB{ |
;BB| }
awaitCC  
AddContentItemsAsyncCC .
(CC. /
listTypeMenuCC/ ;
)CC; <
;CC< =
}DD 
)DD 
;DD 
}EE 
elseFF 
{GG 
awaitHH  
AddContentItemsAsyncHH *
(HH* +
builderHH+ 2
)HH2 3
;HH3 4
}II 
foreachLL 
(LL 
varLL 
	childNodeLL "
inLL# %
_nodeLL& +
.LL+ ,
ItemsLL, 1
)LL1 2
{MM 
tryNN 
{OO 
varPP 
treeBuilderPP #
=PP$ %
treeNodeBuildersPP& 6
.PP6 7
WherePP7 <
(PP< =
xPP= >
=>PP? A
xPPB C
.PPC D
NamePPD H
==PPI K
	childNodePPL U
.PPU V
GetTypePPV ]
(PP] ^
)PP^ _
.PP_ `
NamePP` d
)PPd e
.PPe f
FirstOrDefaultPPf t
(PPt u
)PPu v
;PPv w
awaitQQ 
treeBuilderQQ %
.QQ% & 
BuildNavigationAsyncQQ& :
(QQ: ;
	childNodeQQ; D
,QQD E
builderQQF M
,QQM N
treeNodeBuildersQQO _
)QQ_ `
;QQ` a
}RR 
catchSS 
(SS 
	ExceptionSS  
eSS! "
)SS" #
{TT 
_loggerUU 
.UU 
LogErrorUU $
(UU$ %
eUU% &
,UU& '
$strUU( p
,UUp q
	childNodeUUr {
.UU{ |
GetType	UU| É
(
UUÉ Ñ
)
UUÑ Ö
.
UUÖ Ü
Name
UUÜ ä
)
UUä ã
;
UUã å
}VV 
}WW 
}XX 	
privateZZ 
asyncZZ 
TaskZZ  
AddContentItemsAsyncZZ /
(ZZ/ 0
NavigationBuilderZZ0 A
listTypeMenuZZB N
)ZZN O
{[[ 	
foreach\\ 
(\\ 
var\\ 
ci\\ 
in\\ 
await\\ $ 
getContentItemsAsync\\% 9
(\\9 :
)\\: ;
)\\; <
{]] 
var^^ 
cim^^ 
=^^ 
await^^ 
_contentManager^^  /
.^^/ 0
PopulateAspectAsync^^0 C
<^^C D
ContentItemMetadata^^D W
>^^W X
(^^X Y
ci^^Y [
)^^[ \
;^^\ ]
if`` 
(`` 
cim`` 
.`` 
AdminRouteValues`` (
.``( )
Any``) ,
(``, -
)``- .
&&``/ 1
ci``2 4
.``4 5
DisplayText``5 @
!=``A C
null``D H
)``H I
{aa 
listTypeMenubb  
.bb  !
Addbb! $
(bb$ %
newbb% (
LocalizedStringbb) 8
(bb8 9
cibb9 ;
.bb; <
DisplayTextbb< G
,bbG H
cibbI K
.bbK L
DisplayTextbbL W
)bbW X
,bbX Y
mbbZ [
=>bb\ ^
{cc 
mdd 
.dd 
Actiondd  
(dd  !
cimdd! $
.dd$ %
AdminRouteValuesdd% 5
[dd5 6
$strdd6 >
]dd> ?
asdd@ B
stringddC I
,ddI J
cimddK N
.ddN O
AdminRouteValuesddO _
[dd_ `
$strdd` l
]ddl m
asddn p
stringddq w
,ddw x
cimddy |
.dd| }
AdminRouteValues	dd} ç
)
ddç é
;
ddé è
mee 
.ee 
Resourceee "
(ee" #
ciee# %
)ee% &
;ee& '
mff 
.ff 
Priorityff "
(ff" #
_nodeff# (
.ff( )
Priorityff) 1
)ff1 2
;ff2 3
mgg 
.gg 
Positiongg "
(gg" #
_nodegg# (
.gg( )
Positiongg) 1
)gg1 2
;gg2 3
mhh 
.hh 
LocalNavhh "
(hh" #
)hh# $
;hh$ %
AddPrefixToClassesii *
(ii* +
_nodeii+ 0
.ii0 1
IconForContentItemsii1 D
)iiD E
.iiE F
ToListiiF L
(iiL M
)iiM N
.iiN O
ForEachiiO V
(iiV W
ciiW X
=>iiY [
mii\ ]
.ii] ^
AddClassii^ f
(iif g
ciig h
)iih i
)iii j
;iij k
mkk 
.kk 

Permissionkk $
(kk$ %(
ContentTypePermissionsHelperkk% A
.kkA B#
CreateDynamicPermissionkkB Y
(kkY Z(
ContentTypePermissionsHelperll 4
.ll4 5
PermissionTemplatesll5 H
[llH I
CommonPermissionsllI Z
.llZ [
EditContentll[ f
.llf g
Namellg k
]llk l
,lll m
_contentTypelln z
)llz {
)ll{ |
;ll| }
}mm 
)mm 
;mm 
}nn 
}oo 
}pp 	
privaterr 
asyncrr 
Taskrr 
<rr 
Listrr 
<rr  
ContentItemrr  +
>rr+ ,
>rr, - 
getContentItemsAsyncrr. B
(rrB C
)rrC D
{ss 	
returntt 
(tt 
awaittt 
_sessiontt "
.tt" #
Querytt# (
<tt( )
ContentItemtt) 4
,tt4 5
ContentItemIndextt6 F
>ttF G
(ttG H
)ttH I
.uu 
Withuu 
<uu 
ContentItemIndexuu &
>uu& '
(uu' (
xuu( )
=>uu* ,
xuu- .
.uu. /
Latestuu/ 5
&&uu6 8
xuu9 :
.uu: ;
ContentTypeuu; F
==uuG I
_nodeuuJ O
.uuO P
ContentTypeuuP [
)uu[ \
.vv 
Takevv 
(vv 
MaxItemsInNodevv $
)vv$ %
.ww 
	ListAsyncww 
(ww 
)ww 
)ww 
.xx 
OrderByxx 
(xx 
xxx 
=>xx 
xxx 
.xx  
DisplayTextxx  +
)xx+ ,
.yy 
ToListyy 
(yy 
)yy 
;yy 
}zz 	
private|| 
List|| 
<|| 
string|| 
>|| 
AddPrefixToClasses|| /
(||/ 0
string||0 6

unprefixed||7 A
)||A B
{}} 	
return~~ 

unprefixed~~ 
?~~ 
.~~ 
Split~~ $
(~~$ %
$char~~% (
)~~( )
. 
ToList 
( 
) 
.
ÄÄ 
Select
ÄÄ 
(
ÄÄ 
c
ÄÄ 
=>
ÄÄ 
$str
ÄÄ *
+
ÄÄ+ ,
c
ÄÄ- .
)
ÄÄ. /
.
ÅÅ 
ToList
ÅÅ 
<
ÅÅ 
string
ÅÅ 
>
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
??
ÇÇ 
new
ÇÇ 
List
ÇÇ 
<
ÇÇ 
string
ÇÇ "
>
ÇÇ" #
(
ÇÇ# $
)
ÇÇ$ %
;
ÇÇ% &
}
ÉÉ 	
}
ÑÑ 
}ÖÖ Ä

óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNodeViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

AdminNodes &
{ 
public 

class #
ListsAdminNodeViewModel (
{ 
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
bool		 "
AddContentTypeAsParent		 *
{		+ ,
get		- 0
;		0 1
set		2 5
;		5 6
}		7 8
public

 
string

 
IconForParentLink

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
string 
IconForContentItems )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
List 
< 
SelectListItem "
>" #
ContentTypes$ 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
} ˝8
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Controllers\OrderController.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Controllers '
{ 
[ 
Admin 

]
 
public 

class 
OrderController  
:! "

Controller# -
{ 
private 
readonly 
IContainerService *
_containerService+ <
;< =
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public 
OrderController 
( 
IContainerService 0
containerService1 A
,A B!
IAuthorizationServiceC X 
authorizationServiceY m
)m n
{ 	
_containerService 
= 
containerService  0
;0 1!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (#
UpdateContentItemOrders) @
(@ A
stringA G
containerIdH S
,S T
intU X
oldIndexY a
,a b
intc f
newIndexg o
,o p 
PagerSlimParameters	q Ñ!
pagerSlimParameters
Ö ò
,
ò ô
int
ö ù
pageSize
û ¶
)
¶ ß
{ 	
var 
pager 
= 
new 
	PagerSlim %
(% &
pagerSlimParameters& 9
,9 :
pageSize; C
)C D
;D E
if 
( 
pager 
. 
Before 
!= 
null  $
&&% '
pager( -
.- .
After. 3
!=4 6
null7 ;
); <
{   
var!! 
beforeValue!! 
=!!  !
int!!" %
.!!% &
Parse!!& +
(!!+ ,
pager!!, 1
.!!1 2
Before!!2 8
)!!8 9
;!!9 :
beforeValue"" 
-="" 
$num""  
;""  !
var## 

afterValue## 
=##  
int##! $
.##$ %
Parse##% *
(##* +
pager##+ 0
.##0 1
After##1 6
)##6 7
;##7 8

afterValue$$ 
+=$$ 
$num$$ 
;$$  
pager%% 
.%% 
Before%% 
=%% 

afterValue%% )
.%%) *
ToString%%* 2
(%%2 3
)%%3 4
;%%4 5
pager&& 
.&& 
After&& 
=&& 
beforeValue&& )
.&&) *
ToString&&* 2
(&&2 3
)&&3 4
;&&4 5
}'' 
else(( 
if(( 
((( 
pager(( 
.(( 
Before(( !
!=((" $
null((% )
)(() *
{)) 
var** 
beforeValue** 
=**  !
int**" %
.**% &
Parse**& +
(**+ ,
pager**, 1
.**1 2
Before**2 8
)**8 9
;**9 :
beforeValue++ 
-=++ 
$num++  
;++  !
pager,, 
.,, 
Before,, 
=,, 
null,, #
;,,# $
pager-- 
.-- 
After-- 
=-- 
beforeValue-- )
.--) *
ToString--* 2
(--2 3
)--3 4
;--4 5
}.. 
else// 
if// 
(// 
pager// 
.// 
After//  
!=//! #
null//$ (
)//( )
{00 
var11 

afterValue11 
=11  
int11! $
.11$ %
Parse11% *
(11* +
pager11+ 0
.110 1
After111 6
)116 7
;117 8

afterValue22 
+=22 
$num22 
;22  
pager33 
.33 
After33 
=33 
null33 "
;33" #
pager44 
.44 
Before44 
=44 

afterValue44 )
.44) *
ToString44* 2
(442 3
)443 4
;444 5
}55 
var88 
pageOfContentItems88 "
=88# $
(88% &
await88& +
_containerService88, =
.88= >$
QueryContainedItemsAsync88> V
(88V W
containerId99 
,99 
true:: 
,:: 
pager;; 
,;; 
new<<  
ContainedItemOptions<< (
{<<) *
Status<<+ 1
=<<2 3
ContentsStatus<<4 B
.<<B C
Latest<<C I
}<<J K
)<<K L
)<<L M
.== 
ToList== 
(== 
)== 
;== 
if?? 
(?? 
pageOfContentItems?? "
==??# %
null??& *
||??+ -
!??. /
pageOfContentItems??/ A
.??A B
Any??B E
(??E F
)??F G
)??G H
{@@ 
returnAA 
NotFoundAA 
(AA  
)AA  !
;AA! "
}BB 
foreachDD 
(DD 
varDD 
pagedContentItemDD )
inDD* ,
pageOfContentItemsDD- ?
)DD? @
{EE 
ifFF 
(FF 
!FF 
awaitFF !
_authorizationServiceFF 0
.FF0 1
AuthorizeAsyncFF1 ?
(FF? @
UserFF@ D
,FFD E
CommonPermissionsFFF W
.FFW X
PublishContentFFX f
,FFf g
pagedContentItemFFh x
)FFx y
)FFy z
{GG 
returnHH 
ForbidHH !
(HH! "
)HH" #
;HH# $
}II 
}JJ 
varLL #
currentOrderOfFirstItemLL '
=LL( )
pageOfContentItemsLL* <
.LL< =
FirstOrDefaultLL= K
(LLK L
)LLL M
.LLM N
AsLLN P
<LLP Q
ContainedPartLLQ ^
>LL^ _
(LL_ `
)LL` a
.LLa b
OrderLLb g
;LLg h
varNN 
contentItemNN 
=NN 
pageOfContentItemsNN 0
[NN0 1
oldIndexNN1 9
]NN9 :
;NN: ;
pageOfContentItemsPP 
.PP 
RemovePP %
(PP% &
contentItemPP& 1
)PP1 2
;PP2 3
pageOfContentItemsQQ 
.QQ 
InsertQQ %
(QQ% &
newIndexQQ& .
,QQ. /
contentItemQQ0 ;
)QQ; <
;QQ< =
awaitSS 
_containerServiceSS #
.SS# $(
UpdateContentItemOrdersAsyncSS$ @
(SS@ A
pageOfContentItemsSSA S
,SSS T#
currentOrderOfFirstItemSSU l
)SSl m
;SSm n
returnUU 
OkUU 
(UU 
)UU 
;UU 
}VV 	
}WW 
}XX ◊.
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Controllers\RemotePublishingController.cs
	namespace		 	
OrchardCore		
 
.		 
Lists		 
.		 
Controllers		 '
{

 
[ 
RequireFeatures 
( 
$str 3
)3 4
]4 5
public 

class &
RemotePublishingController +
:, -

Controller. 8
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ILogger  
_logger! (
;( )
public &
RemotePublishingController )
() *
IContentManager 
contentManager *
,* +
ILogger 
< &
RemotePublishingController .
>. /
logger0 6
)6 7
{ 	
_contentManager 
= 
contentManager ,
;, -
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Rsd) ,
(, -
string- 3
contentItemId4 A
)A B
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Debug+ 0
)0 1
)1 2
{ 
_logger 
. 
LogDebug  
(  !
$str! 0
)0 1
;1 2
} 
var   
contentItem   
=   
await   #
_contentManager  $ 3
.  3 4
GetAsync  4 <
(  < =
contentItemId  = J
)  J K
;  K L
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
}%% 
var'' 
listPart'' 
='' 
contentItem'' &
.''& '
As''' )
<'') *
ListPart''* 2
>''2 3
(''3 4
)''4 5
;''5 6
if)) 
()) 
listPart)) 
==)) 
null))  
)))  !
{** 
return++ 
NotFound++ 
(++  
)++  !
;++! "
},, 
const.. 
string.. 
manifestUri.. $
=..% &
$str..' N
;..N O
var00 
url00 
=00 
Url00 
.00 
Action00  
(00  !
$str00! (
,00( )
$str00* 0
,000 1
new002 5
{006 7
area008 <
=00= >
$str00? S
}00T U
,00U V
Request00W ^
.00^ _
Scheme00_ e
)00e f
;00f g
var22 
options22 
=22 
new22 
XElement22 &
(22& '
XName33 
.33 
Get33 
(33 
$str33 #
,33# $
manifestUri33% 0
)330 1
,331 2
new44 
XElement44 
(44 
XName44 "
.44" #
Get44# &
(44& '
$str44' 3
,443 4
manifestUri445 @
)44@ A
,44A B
$str44C P
)44P Q
,44Q R
new55 
XElement55 
(55 
XName55 "
.55" #
Get55# &
(55& '
$str55' 3
,553 4
manifestUri555 @
)55@ A
,55A B
$str55C \
)55\ ]
,55] ^
new66 
XElement66 
(66 
XName66 "
.66" #
Get66# &
(66& '
$str66' 5
,665 6
manifestUri667 B
)66B C
,66C D
$str66E ^
)66^ _
,66_ `
new77 
XElement77 
(77 
XName77 "
.77" #
Get77# &
(77& '
$str77' -
,77- .
manifestUri77/ :
)77: ;
,77; <
new88 
XElement88  
(88  !
XName88! &
.88& '
Get88' *
(88* +
$str88+ 0
,880 1
manifestUri882 =
)88= >
,88> ?
new99 

XAttribute99 &
(99& '
$str99' -
,99- .
$str99/ ;
)99; <
,99< =
new:: 

XAttribute:: &
(::& '
$str::' 2
,::2 3
true::4 8
)::8 9
,::9 :
new;; 

XAttribute;; &
(;;& '
$str;;' 0
,;;0 1
url;;2 5
);;5 6
,;;6 7
new<< 

XAttribute<< &
(<<& '
$str<<' /
,<</ 0
contentItem<<1 <
.<<< =
ContentItemId<<= J
)<<J K
)<<K L
)<<L M
)<<M N
;<<N O
var>> 
doc>> 
=>> 
new>> 
	XDocument>> #
(>># $
new>>$ '
XElement>>( 0
(>>0 1
XName??( -
.??- .
Get??. 1
(??1 2
$str??2 7
,??7 8
manifestUri??9 D
)??D E
,??E F
new@@( +

XAttribute@@, 6
(@@6 7
$str@@7 @
,@@@ A
$str@@B G
)@@G H
,@@H I
optionsAA( /
)AA/ 0
)AA0 1
;AA1 2
returnCC 
ContentCC 
(CC 
docCC 
.CC 
ToStringCC '
(CC' (
)CC( )
,CC) *
$strCC+ 5
)CC5 6
;CC6 7
}DD 	
}EE 
}FF ·3
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Drivers\ContainedPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Drivers #
{ 
public 

class &
ContainedPartDisplayDriver +
:, - 
ContentDisplayDriver. B
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IContainerService *
_containerService+ <
;< =
public &
ContainedPartDisplayDriver )
() *
IContentManager 
contentManager *
,* +
ISession 
session 
, 
IContainerService 
containerService .
) 
{ 	
_session 
= 
session 
; 
_contentManager 
= 
contentManager ,
;, -
_containerService 
= 
containerService  0
;0 1
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =
ContentItem= H
modelI N
,N O
IUpdateModelP \
updater] d
)d e
{ 	
if%% 
(%% 
model%% 
.%% 
As%% 
<%% 
ContainedPart%% &
>%%& '
(%%' (
)%%( )
!=%%* ,
null%%- 1
)%%1 2
{&& 
return'' 
BuildViewModel'' %
(''% &
model''& +
.''+ ,
As'', .
<''. /
ContainedPart''/ <
>''< =
(''= >
)''> ?
.''? @
ListContentItemId''@ Q
,''Q R
model''S X
.''X Y
ContentType''Y d
)''d e
;''e f
}(( 
var** 
	viewModel** 
=** 
new** &
EditContainedPartViewModel**  :
(**: ;
)**; <
;**< =
if++ 
(++ 
await++ 
updater++ 
.++ 
TryUpdateModelAsync++ 1
(++1 2
	viewModel++2 ;
,++; <
nameof++= C
(++C D
ListPart++D L
)++L M
)++M N
&&++O Q
	viewModel++R [
.++[ \
ContainerId++\ g
!=++h j
null++k o
&&++p r
	viewModel++s |
.++| }
ContentType	++} à
==
++â ã
model
++å ë
.
++ë í
ContentType
++í ù
)
++ù û
{,, 
return33 
BuildViewModel33 %
(33% &
	viewModel33& /
.33/ 0
ContainerId330 ;
,33; <
model33= B
.33B C
ContentType33C N
,33N O
	viewModel33P Y
.33Y Z
EnableOrdering33Z h
)33h i
;33i j
}44 
return66 
null66 
;66 
}77 	
private99 
IDisplayResult99 
BuildViewModel99 -
(99- .
string99. 4
containerId995 @
,99@ A
string99B H
contentType99I T
,99T U
bool99V Z
enableOrdering99[ i
=99j k
false99l q
)99q r
{:: 	
return;; 

Initialize;; 
<;; &
EditContainedPartViewModel;; 8
>;;8 9
(;;9 :
$str;;: P
,;;P Q
m;;R S
=>;;T V
{<< 
m== 
.== 
ContainerId== 
=== 
containerId==  +
;==+ ,
m>> 
.>> 
EnableOrdering>>  
=>>! "
enableOrdering>># 1
;>>1 2
m?? 
.?? 
ContentType?? 
=?? 
contentType??  +
;??+ ,
}@@ 
)@@ 
.AA 
LocationAA 
(AA 
$strAA 
)AA  
;AA  !
}BB 	
publicDD 
overrideDD 
asyncDD 
TaskDD "
<DD" #
IDisplayResultDD# 1
>DD1 2
UpdateAsyncDD3 >
(DD> ?
ContentItemDD? J
modelDDK P
,DDP Q
IUpdateModelDDR ^
updaterDD_ f
)DDf g
{EE 	
varFF 
	viewModelFF 
=FF 
newFF &
EditContainedPartViewModelFF  :
(FF: ;
)FF; <
;FF< =
ifJJ 
(JJ 
awaitJJ 
updaterJJ 
.JJ 
TryUpdateModelAsyncJJ 1
(JJ1 2
	viewModelJJ2 ;
,JJ; <
nameofJJ= C
(JJC D
ListPartJJD L
)JJL M
)JJM N
&&JJO Q
	viewModelJJR [
.JJ[ \
ContainerIdJJ\ g
!=JJh j
nullJJk o
&&JJp r
	viewModelJJs |
.JJ| }
ContentType	JJ} à
==
JJâ ã
model
JJå ë
.
JJë í
ContentType
JJí ù
)
JJù û
{KK 
modelLL 
.LL 
AlterLL 
<LL 
ContainedPartLL )
>LL) *
(LL* +
xLL+ ,
=>LL- /
xLL0 1
.LL1 2
ListContentItemIdLL2 C
=LLD E
	viewModelLLF O
.LLO P
ContainerIdLLP [
)LL[ \
;LL\ ]
ifNN 
(NN 
	viewModelNN 
.NN 
EnableOrderingNN ,
)NN, -
{OO 
varPP 
	nextOrderPP !
=PP" #
awaitPP$ )
_containerServicePP* ;
.PP; <#
GetNextOrderNumberAsyncPP< S
(PPS T
	viewModelPPT ]
.PP] ^
ContainerIdPP^ i
)PPi j
;PPj k
modelQQ 
.QQ 
AlterQQ 
<QQ  
ContainedPartQQ  -
>QQ- .
(QQ. /
xQQ/ 0
=>QQ1 3
xQQ4 5
.QQ5 6
OrderQQ6 ;
=QQ< =
	nextOrderQQ> G
)QQG H
;QQH I
}RR 
}SS 
returnUU 
awaitUU 
	EditAsyncUU "
(UU" #
modelUU# (
,UU( )
updaterUU* 1
)UU1 2
;UU2 3
}VV 	
}WW 
}XX €
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Drivers\ListPartContentsAdminListDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Lists		 
.		 
Drivers		 #
{

 
public 

class 2
&ListPartContentsAdminListDisplayDriver 7
:8 9
DisplayDriver: G
<G H#
ContentOptionsViewModelH _
>_ `
{ 
	protected 
override 
void 
BuildPrefix  +
(+ ,#
ContentOptionsViewModel, C
modelD I
,I J
stringK Q
htmlFieldPrefixR a
)a b
{ 	
Prefix 
= 
$str 
;  
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,#
ContentOptionsViewModel, C
modelD I
,I J
IUpdateModelK W
updaterX _
)_ `
{ 	
return 
Dynamic 
( 
$str >
)> ?
.? @
Location@ H
(H I
$strI U
)U V
;V W
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?#
ContentOptionsViewModel? V
modelW \
,\ ]
IUpdateModel^ j
updaterk r
)r s
{ 	
var 
	viewModel 
= 
new 0
$ListPartContentsAdminFilterViewModel  D
(D E
)E F
;F G
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
nameof= C
(C D
ListPartD L
)L M
)M N
)N O
{ 
if 
( 
	viewModel 
.  
ShowListContentTypes 2
)2 3
{ 
model 
. 
RouteValues %
.% &
TryAdd& ,
(, -
$str- L
,L M
	viewModelN W
.W X 
ShowListContentTypesX l
)l m
;m n
} 
if!! 
(!! 
!!! 
string!! 
.!! 
IsNullOrEmpty!! )
(!!) *
	viewModel!!* 3
.!!3 4
ListContentItemId!!4 E
)!!E F
)!!F G
{"" 
model## 
.## 
RouteValues## %
.##% &
TryAdd##& ,
(##, -
$str##- I
,##I J
	viewModel##K T
.##T U
ListContentItemId##U f
)##f g
;##g h
}$$ 
}%% 
return'' 
Edit'' 
('' 
model'' 
,'' 
updater'' &
)''& '
;''' (
}(( 	
})) 
}** ’N
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Drivers\ListPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Drivers #
{ 
public 

class !
ListPartDisplayDriver &
:' ($
ContentPartDisplayDriver) A
<A B
ListPartB J
>J K
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContainerService *
_containerService+ <
;< =
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public !
ListPartDisplayDriver $
($ %%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContainerService 
containerService .
,. / 
IUpdateModelAccessor  
updateModelAccessor! 4
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_containerService 
= 
containerService  0
;0 1 
_updateModelAccessor    
=  ! "
updateModelAccessor  # 6
;  6 7
}!! 	
public## 
override## 
IDisplayResult## &
Display##' .
(##. /
ListPart##/ 7
listPart##8 @
,##@ A#
BuildPartDisplayContext##B Y
context##Z a
)##a b
{$$ 	
return%% 
Combine&& 
(&& 

Initialize'' 
<'' 
ListPartViewModel'' 0
>''0 1
(''1 2
GetDisplayShapeType''2 E
(''E F
context''F M
)''M N
,''N O
async''P U
model''V [
=>''\ ^
{(( 
var)) 
pager)) !
=))" #
await))$ )
GetPagerSlimAsync))* ;
()); <
context))< C
)))C D
;))D E
var** 
settings** $
=**% &
context**' .
.**. /
TypePartDefinition**/ A
.**A B
GetSettings**B M
<**M N
ListPartSettings**N ^
>**^ _
(**_ `
)**` a
;**a b
var++  
containedItemOptions++ 0
=++1 2
new++3 6 
ContainedItemOptions++7 K
(++K L
)++L M
;++M N
model,, 
.,, 
ContentItems,, *
=,,+ ,
(,,- .
await,,. 3
_containerService,,4 E
.,,E F$
QueryContainedItemsAsync,,F ^
(,,^ _
listPart-- $
.--$ %
ContentItem--% 0
.--0 1
ContentItemId--1 >
,--> ?
settings.. $
...$ %
EnableOrdering..% 3
,..3 4
pager// !
,//! " 
containedItemOptions00 0
)000 1
)001 2
.002 3
ToArray003 :
(00: ;
)00; <
;00< =
model22 
.22 +
ContainedContentTypeDefinitions22 =
=22> ?$
GetContainedContentTypes22@ X
(22X Y
context22Y `
)22` a
;22a b
model33 
.33 
Context33 %
=33& '
context33( /
;33/ 0
model44 
.44 
Pager44 #
=44$ %
await44& +
context44, 3
.443 4
New444 7
.447 8
	PagerSlim448 A
(44A B
pager44B G
)44G H
;44H I
}55 
)55 
.66 
Location66 
(66 
$str66 &
,66& '
$str66( 4
)664 5
,665 6

Initialize77 
<77 
ListPartViewModel77 0
>770 1
(771 2
$str772 <
,77< =
async77> C
model77D I
=>77J L
{88 
var99 
pager99 !
=99" #
await99$ )
GetPagerSlimAsync99* ;
(99; <
context99< C
)99C D
;99D E
var:: 
settings:: $
=::% &
context::' .
.::. /
TypePartDefinition::/ A
.::A B
GetSettings::B M
<::M N
ListPartSettings::N ^
>::^ _
(::_ `
)::` a
;::a b
var;; #
listPartFilterViewModel;; 3
=;;4 5
new;;6 9#
ListPartFilterViewModel;;: Q
(;;Q R
);;R S
;;;S T
var<<  
containedItemOptions<< 0
=<<1 2
new<<3 6 
ContainedItemOptions<<7 K
(<<K L
)<<L M
;<<M N
await>>  
_updateModelAccessor>> 2
.>>2 3
ModelUpdater>>3 ?
.>>? @
TryUpdateModelAsync>>@ S
(>>S T#
listPartFilterViewModel>>T k
,>>k l
Prefix>>m s
)>>s t
;>>t u
model?? 
.?? 
ListPart?? &
=??' (
listPart??) 1
;??1 2 
containedItemOptions@@ ,
.@@, -
DisplayText@@- 8
=@@9 :#
listPartFilterViewModel@@; R
.@@R S
DisplayText@@S ^
;@@^ _ 
containedItemOptionsAA ,
.AA, -
StatusAA- 3
=AA4 5#
listPartFilterViewModelAA6 M
.AAM N
StatusAAN T
;AAT U
modelBB 
.BB #
ListPartFilterViewModelBB 5
=BB6 7#
listPartFilterViewModelBB8 O
;BBO P
modelDD 
.DD 
ContentItemsDD *
=DD+ ,
(DD- .
awaitDD. 3
_containerServiceDD4 E
.DDE F$
QueryContainedItemsAsyncDDF ^
(DD^ _
listPartEE $
.EE$ %
ContentItemEE% 0
.EE0 1
ContentItemIdEE1 >
,EE> ?
settingsFF $
.FF$ %
EnableOrderingFF% 3
,FF3 4
pagerGG !
,GG! " 
containedItemOptionsHH 0
)HH0 1
)HH1 2
.HH2 3
ToArrayHH3 :
(HH: ;
)HH; <
;HH< =
modelJJ 
.JJ +
ContainedContentTypeDefinitionsJJ =
=JJ> ?$
GetContainedContentTypesJJ@ X
(JJX Y
contextJJY `
)JJ` a
;JJa b
modelKK 
.KK 
ContextKK %
=KK& '
contextKK( /
;KK/ 0
modelLL 
.LL 
EnableOrderingLL ,
=LL- .
settingsLL/ 7
.LL7 8
EnableOrderingLL8 F
;LLF G
modelMM 
.MM 
PagerMM #
=MM$ %
awaitMM& +
contextMM, 3
.MM3 4
NewMM4 7
.MM7 8
	PagerSlimMM8 A
(MMA B
pagerMMB G
)MMG H
;MMH I
}NN 
)NN 
.OO 
LocationOO 
(OO 
$strOO +
,OO+ ,
$strOO- 9
)OO9 :
,OO: ;

InitializePP 
<PP  
ContentItemViewModelPP 3
>PP3 4
(PP4 5
$strPP5 ?
,PP? @
modelPPA F
=>PPG I
modelPPJ O
.PPO P
ContentItemPPP [
=PP\ ]
listPartPP^ f
.PPf g
ContentItemPPg r
)PPr s
.QQ 
LocationQQ 
(QQ 
$strQQ ,
,QQ, -
$strQQ. 9
)QQ9 :
)RR 
;RR 
}SS 	
privateUU 
asyncUU 
TaskUU 
<UU 
	PagerSlimUU $
>UU$ %
GetPagerSlimAsyncUU& 7
(UU7 8#
BuildPartDisplayContextUU8 O
contextUUP W
)UUW X
{VV 	
varWW 
settingsWW 
=WW 
contextWW "
.WW" #
TypePartDefinitionWW# 5
.WW5 6
GetSettingsWW6 A
<WWA B
ListPartSettingsWWB R
>WWR S
(WWS T
)WWT U
;WWU V
varXX 
pagerParametersXX 
=XX  !
newXX" %
PagerSlimParametersXX& 9
(XX9 :
)XX: ;
;XX; <
awaitYY 
contextYY 
.YY 
UpdaterYY !
.YY! "
TryUpdateModelAsyncYY" 5
(YY5 6
pagerParametersYY6 E
)YYE F
;YYF G
var[[ 
pager[[ 
=[[ 
new[[ 
	PagerSlim[[ %
([[% &
pagerParameters[[& 5
,[[5 6
settings[[7 ?
.[[? @
PageSize[[@ H
)[[H I
;[[I J
return]] 
pager]] 
;]] 
}^^ 	
private`` 
IEnumerable`` 
<`` !
ContentTypeDefinition`` 1
>``1 2$
GetContainedContentTypes``3 K
(``K L#
BuildPartDisplayContext``L c
context``d k
)``k l
{aa 	
varbb 
settingsbb 
=bb 
contextbb "
.bb" #
TypePartDefinitionbb# 5
.bb5 6
GetSettingsbb6 A
<bbA B
ListPartSettingsbbB R
>bbR S
(bbS T
)bbT U
;bbU V
varcc 
contentTypescc 
=cc 
settingscc '
.cc' (!
ContainedContentTypescc( =
??cc> @

EnumerableccA K
.ccK L
EmptyccL Q
<ccQ R
stringccR X
>ccX Y
(ccY Z
)ccZ [
;cc[ \
returndd 
contentTypesdd 
.dd  
Selectdd  &
(dd& '
contentTypedd' 2
=>dd3 5%
_contentDefinitionManagerdd6 O
.ddO P
GetTypeDefinitionddP a
(dda b
contentTypeddb m
)ddm n
)ddn o
;ddo p
}ee 	
}ff 
}gg —
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListFeedEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Feeds !
{ 
public 

class !
ListFeedEditViewModel &
{ 
public 
string 
FeedProxyUrl "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
FeedItemsCount !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
ListFeedQuery2 ?
.? @
DefaultItemsCount@ Q
;Q R
public		 
ContentItem		 
ContentItem		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
}

 
} ÆU
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListFeedQuery.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Feeds !
{ 
public 

class 
ListFeedQuery 
:  
IFeedQueryProvider! 3
,3 4

IFeedQuery5 ?
{ 
public 
const 
int 
DefaultItemsCount *
=+ ,
$num- /
;/ 0
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
public 
ListFeedQuery 
( 
IContentManager ,
contentManager- ;
,; <
ISession= E
sessionF M
)M N
{ 	
_contentManager 
= 
contentManager ,
;, -
_session 
= 
session 
; 
} 	
public 
async 
Task 
< 
FeedQueryMatch (
>( )

MatchAsync* 4
(4 5
FeedContext5 @
contextA H
)H I
{ 	
var   
model   
=   
new   "
ListFeedQueryViewModel   2
(  2 3
)  3 4
;  4 5
if"" 
("" 
!"" 
await"" 
context"" 
."" 
Updater"" &
.""& '
TryUpdateModelAsync""' :
("": ;
model""; @
)""@ A
||""B D
model""E J
.""J K
ContentItemId""K X
==""Y [
null""\ `
)""` a
{## 
return$$ 
null$$ 
;$$ 
}%% 
return'' 
new'' 
FeedQueryMatch'' %
{''& '
	FeedQuery''( 1
=''2 3
this''4 8
,''8 9
Priority'': B
=''C D
-''E F
$num''F G
}''H I
;''I J
}(( 	
public** 
async** 
Task** 
ExecuteAsync** &
(**& '
FeedContext**' 2
context**3 :
)**: ;
{++ 	
var,, 
model,, 
=,, 
new,, "
ListFeedQueryViewModel,, 2
(,,2 3
),,3 4
;,,4 5
if.. 
(.. 
!.. 
await.. 
context.. 
... 
Updater.. &
...& '
TryUpdateModelAsync..' :
(..: ;
model..; @
)..@ A
||..B D
model..E J
...J K
ContentItemId..K X
==..Y [
null..\ `
)..` a
{// 
return00 
;00 
}11 
var33 
contentItem33 
=33 
await33 #
_contentManager33$ 3
.333 4
GetAsync334 <
(33< =
model33= B
.33B C
ContentItemId33C P
)33P Q
;33Q R
if55 
(55 
contentItem55 
==55 
null55 #
)55# $
{66 
return77 
;77 
}88 
var:: 
contentItemMetadata:: #
=::$ %
await::& +
_contentManager::, ;
.::; <
PopulateAspectAsync::< O
<::O P
ContentItemMetadata::P c
>::c d
(::d e
contentItem::e p
)::p q
;::q r
var;; 

bodyAspect;; 
=;; 
await;; "
_contentManager;;# 2
.;;2 3
PopulateAspectAsync;;3 F
<;;F G

BodyAspect;;G Q
>;;Q R
(;;R S
contentItem;;S ^
);;^ _
;;;_ `
var<< 
routes<< 
=<< 
contentItemMetadata<< ,
.<<, -
DisplayRouteValues<<- ?
;<<? @
if>> 
(>> 
context>> 
.>> 
Format>> 
==>> !
$str>>" '
)>>' (
{?? 
var@@ 
link@@ 
=@@ 
new@@ 
XElement@@ '
(@@' (
$str@@( .
)@@. /
;@@/ 0
contextAA 
.AA 
ResponseAA  
.AA  !
ElementAA! (
.AA( )
SetElementValueAA) 8
(AA8 9
$strAA9 @
,AA@ A
contentItemAAB M
.AAM N
DisplayTextAAN Y
)AAY Z
;AAZ [
contextBB 
.BB 
ResponseBB  
.BB  !
ElementBB! (
.BB( )
AddBB) ,
(BB, -
linkBB- 1
)BB1 2
;BB2 3
contextDD 
.DD 
ResponseDD  
.DD  !
ElementDD! (
.DD( )
AddDD) ,
(DD, -
newDD- 0
XElementDD1 9
(DD9 :
$strDD: G
,DDG H
newDDI L
XCDataDDM S
(DDS T

bodyAspectDDT ^
.DD^ _
BodyDD_ c
?DDc d
.DDd e
ToStringDDe m
(DDm n
)DDn o
??DDp r
StringDDs y
.DDy z
EmptyDDz 
)	DD Ä
)
DDÄ Å
)
DDÅ Ç
;
DDÇ É
contextFF 
.FF 
ResponseFF  
.FF  !
ContextualizeFF! .
(FF. /
contextualizeFF/ <
=>FF= ?
{GG 
varHH 
requestHH 
=HH  !
contextualizeHH" /
.HH/ 0
UrlHH0 3
.HH3 4
ActionContextHH4 A
.HHA B
HttpContextHHB M
.HHM N
RequestHHN U
;HHU V
varII 
urlII 
=II 
contextualizeII +
.II+ ,
UrlII, /
.II/ 0
ActionII0 6
(II6 7
routesII7 =
[II= >
$strII> F
]IIF G
.IIG H
ToStringIIH P
(IIP Q
)IIQ R
,IIR S
routesIIT Z
[IIZ [
$strII[ g
]IIg h
.IIh i
ToStringIIi q
(IIq r
)IIr s
,IIs t
routesIIu {
,II{ |
request	II} Ñ
.
IIÑ Ö
Scheme
IIÖ ã
)
IIã å
;
IIå ç
linkKK 
.KK 
AddKK 
(KK 
urlKK  
)KK  !
;KK! "
}LL 
)LL 
;LL 
}MM 
elseNN 
{OO 
contextPP 
.PP 
BuilderPP 
.PP  
AddPropertyPP  +
(PP+ ,
contextPP, 3
,PP3 4
nullPP5 9
,PP9 :
$strPP; B
,PPB C
contentItemPPD O
.PPO P
DisplayTextPPP [
)PP[ \
;PP\ ]
contextQQ 
.QQ 
BuilderQQ 
.QQ  
AddPropertyQQ  +
(QQ+ ,
contextQQ, 3
,QQ3 4
nullQQ5 9
,QQ9 :
newQQ; >
XElementQQ? G
(QQG H
$strQQH U
,QQU V
newQQW Z
XCDataQQ[ a
(QQa b

bodyAspectQQb l
.QQl m
BodyQQm q
?QQq r
.QQr s
ToStringQQs {
(QQ{ |
)QQ| }
??	QQ~ Ä
String
QQÅ á
.
QQá à
Empty
QQà ç
)
QQç é
)
QQé è
)
QQè ê
;
QQê ë
contextSS 
.SS 
ResponseSS  
.SS  !
ContextualizeSS! .
(SS. /
contextualizeSS/ <
=>SS= ?
{TT 
varUU 
requestUU 
=UU  !
contextualizeUU" /
.UU/ 0
UrlUU0 3
.UU3 4
ActionContextUU4 A
.UUA B
HttpContextUUB M
.UUM N
RequestUUN U
;UUU V
varVV 
urlVV 
=VV 
contextualizeVV +
.VV+ ,
UrlVV, /
.VV/ 0
ActionVV0 6
(VV6 7
routesVV7 =
[VV= >
$strVV> F
]VVF G
.VVG H
ToStringVVH P
(VVP Q
)VVQ R
,VVR S
routesVVT Z
[VVZ [
$strVV[ g
]VVg h
.VVh i
ToStringVVi q
(VVq r
)VVr s
,VVs t
routesVVu {
,VV{ |
request	VV} Ñ
.
VVÑ Ö
Scheme
VVÖ ã
)
VVã å
;
VVå ç
contextXX 
.XX 
BuilderXX #
.XX# $
AddPropertyXX$ /
(XX/ 0
contextXX0 7
,XX7 8
nullXX9 =
,XX= >
$strXX? E
,XXE F
urlXXG J
)XXJ K
;XXK L
}YY 
)YY 
;YY 
}ZZ 
int\\ 

itemsCount\\ 
=\\ 
contentItem\\ (
.\\( )
Content\\) 0
.\\0 1
ListPart\\1 9
?\\9 :
.\\: ;
FeedItemsCount\\; I
??\\J L
DefaultItemsCount\\M ^
;\\^ _
IEnumerable^^ 
<^^ 
ContentItem^^ #
>^^# $
items^^% *
;^^* +
items`` 
=`` 

itemsCount`` 
==`` !
$num``" #
?aa 

Enumerableaa 
.aa 
Emptyaa "
<aa" #
ContentItemaa# .
>aa. /
(aa/ 0
)aa0 1
:bb 
awaitbb 
_sessionbb  
.bb  !
Querybb! &
<bb& '
ContentItembb' 2
>bb2 3
(bb3 4
)bb4 5
.cc 
Withcc 
<cc 
ContainedPartIndexcc ,
>cc, -
(cc- .
xcc. /
=>cc0 2
xcc3 4
.cc4 5
ListContentItemIdcc5 F
==ccG I
contentItemccJ U
.ccU V
ContentItemIdccV c
)ccc d
.dd 
Withdd 
<dd 
ContentItemIndexdd *
>dd* +
(dd+ ,
xdd, -
=>dd. 0
xdd1 2
.dd2 3
	Publisheddd3 <
)dd< =
.ee 
OrderByDescendingee &
(ee& '
xee' (
=>ee) +
xee, -
.ee- .

CreatedUtcee. 8
)ee8 9
.ff 
Takeff 
(ff 

itemsCountff $
)ff$ %
.gg 
	ListAsyncgg 
(gg 
)gg  
;gg  !
foreachii 
(ii 
varii 
itemii 
inii  
itemsii! &
)ii& '
{jj 
contextkk 
.kk 
Builderkk 
.kk  
AddItemkk  '
(kk' (
contextkk( /
,kk/ 0
itemkk1 5
)kk5 6
;kk6 7
}ll 
}mm 	
}nn 
}oo ™
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListFeedQueryViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Feeds !
{ 
public 

class "
ListFeedQueryViewModel '
{ 
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ü
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListPartFeedDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Feeds !
{		 
public

 

class

 %
ListPartFeedDisplayDriver

 *
:

+ ,$
ContentPartDisplayDriver

- E
<

E F
ListPart

F N
>

N O
{ 
public 
override 
IDisplayResult &
Display' .
(. /
ListPart/ 7
listPart8 @
,@ A#
BuildPartDisplayContextB Y
contextZ a
)a b
{ 	
return 
Dynamic 
( 
$str )
,) *
shape+ 0
=>1 3
{ 
shape 
. 
ContentItem !
=" #
listPart$ ,
., -
ContentItem- 8
;8 9
} 
) 
. 
Location 
( 
$str 
, 
$str  )
)) *
;* +
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
ListPart, 4
part5 9
)9 :
{ 	
return 

Initialize 
< !
ListFeedEditViewModel 3
>3 4
(4 5
$str5 H
,H I
mJ K
=>L N
{ 
m 
. 
FeedProxyUrl 
=  
part! %
.% &
ContentItem& 1
.1 2
Content2 9
.9 :
ListPart: B
.B C
FeedProxyUrlC O
;O P
m 
. 
FeedItemsCount  
=! "
part# '
.' (
ContentItem( 3
.3 4
Content4 ;
.; <
ListPart< D
.D E
FeedItemsCountE S
??T V
$numW Y
;Y Z
m 
. 
ContentItem 
= 
part  $
.$ %
ContentItem% 0
;0 1
} 
) 
; 
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
ListPart? G
partH L
,L M
IUpdateModelN Z
updater[ b
)b c
{   	
var!! 
model!! 
=!! 
new!! !
ListFeedEditViewModel!! 1
(!!1 2
)!!2 3
;!!3 4
model"" 
."" 
ContentItem"" 
="" 
part""  $
.""$ %
ContentItem""% 0
;""0 1
await$$ 
updater$$ 
.$$ 
TryUpdateModelAsync$$ -
($$- .
model$$. 3
,$$3 4
Prefix$$5 ;
,$$; <
t$$= >
=>$$? A
t$$B C
.$$C D
FeedProxyUrl$$D P
,$$P Q
t$$R S
=>$$T V
t$$W X
.$$X Y
FeedItemsCount$$Y g
)$$g h
;$$h i
part&& 
.&& 
ContentItem&& 
.&& 
Content&& $
.&&$ %
ListPart&&% -
.&&- .
FeedProxyUrl&&. :
=&&; <
model&&= B
.&&B C
FeedProxyUrl&&C O
;&&O P
part'' 
.'' 
ContentItem'' 
.'' 
Content'' $
.''$ %
ListPart''% -
.''- .
FeedItemsCount''. <
=''= >
model''? D
.''D E
FeedItemsCount''E S
;''S T
return)) 
Edit)) 
()) 
part)) 
))) 
;)) 
}** 	
}++ 
},, ì

éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListPartFeedHandler.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Drivers #
{ 
public 

class 
ListPartFeedHandler $
:% &
ContentPartHandler' 9
<9 :
ListPart: B
>B C
{		 
public

 
override

 
Task

 %
GetContentItemAspectAsync

 6
(

6 7$
ContentItemAspectContext

7 O
context

P W
,

W X
ListPart

Y a
part

b f
)

f g
{ 	
return 
context 
. 
ForAsync #
<# $
FeedMetadata$ 0
>0 1
(1 2
feedMetadata2 >
=>? A
{ 
feedMetadata 
. 
FeedProxyUrl )
=* +
part, 0
.0 1
Content1 8
.8 9
FeedProxyUrl9 E
;E F
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
} 	
} 
} Ç	
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ContainedInputObjectType.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
GraphQL #
{ 
public 

class $
ContainedInputObjectType )
:* +%
WhereInputObjectGraphType, E
<E F
ContainedPartF S
>S T
{		 
public

 $
ContainedInputObjectType
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
8 9
ContainedPart

9 F
>

F G
S

H I
)

I J
{ 	
Name 
= 
$str '
;' (
Description 
= 
S 
[ 
$str ?
]? @
;@ A!
AddScalarFilterFields !
<! "
IdGraphType" -
>- .
(. /
$str/ B
,B C
SD E
[E F
$str	F å
]
å ç
)
ç é
;
é è
} 	
} 
} ∫

úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ContainedPartIndexAliasProvider.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
GraphQL #
{ 
public 

class +
ContainedPartIndexAliasProvider 0
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
ContainedPartIndex 1
)1 2
,2 3
	IndexType 
= 
typeof "
(" #
ContainedPartIndex# 5
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
} ¡	
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ContainedQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
GraphQL #
{ 
public 

class $
ContainedQueryObjectType )
:* +
ObjectGraphType, ;
<; <
ContainedPart< I
>I J
{ 
public		 $
ContainedQueryObjectType		 '
(		' (
IStringLocalizer		( 8
<		8 9$
ContainedQueryObjectType		9 Q
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
$str {
]{ |
;| }
Field 
( 
x 
=> 
x 
. 
ListContentItemId *
)* +
;+ ,
Field 
( 
x 
=> 
x 
. 
Order 
) 
;  
} 	
} 
} Õ1
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ListQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
GraphQL #
{ 
public 

class 
ListQueryObjectType $
:% &
ObjectGraphType' 6
<6 7
ListPart7 ?
>? @
{ 
public 
ListQueryObjectType "
(" #
IStringLocalizer# 3
<3 4
ListQueryObjectType4 G
>G H
SI J
)J K
{ 	
Name 
= 
$str 
; 
Description 
= 
S 
[ 
$str G
]G H
;H I
Field 
< 
ListGraphType 
<   
ContentItemInterface  4
>4 5
,5 6
IEnumerable7 B
<B C
ContentItemC N
>N O
>O P
(P Q
)Q R
. 
Name 
( 
$str $
)$ %
. 
Description 
( 
$str 0
)0 1
. 
Argument 
< 
IntGraphType &
,& '
int( +
>+ ,
(, -
$str- 4
,4 5
$str6 \
,\ ]
$num^ `
)` a
. 
Argument 
< 
IntGraphType &
,& '
int( +
>+ ,
(, -
$str- 3
,3 4
$str5 U
,U V
$numW X
)X Y
. 
ResolveAsync 
( 
async #
g$ %
=>& (
{   
var!! 
serviceProvider!! '
=!!( )
g!!* +
.!!+ ,"
ResolveServiceProvider!!, B
(!!B C
)!!C D
;!!D E
var"" 
session"" 
=""  !
serviceProvider""" 1
.""1 2

GetService""2 <
<""< =
ISession""= E
>""E F
(""F G
)""G H
;""H I
var## 
accessor##  
=##! "
serviceProvider### 2
.##2 3
GetRequiredService##3 E
<##E F&
IDataLoaderContextAccessor##F `
>##` a
(##a b
)##b c
;##c d
var%% 

dataLoader%% "
=%%# $
accessor%%% -
.%%- .
Context%%. 5
.%%5 6)
GetOrAddCollectionBatchLoader%%6 S
<%%S T
string%%T Z
,%%Z [
ContentItem%%\ g
>%%g h
(%%h i
$str	%%i â
,
%%â ä
x
%%ã å
=>
%%ç è3
%LoadPublishedContentItemsForListAsync
%%ê µ
(
%%µ ∂
x
%%∂ ∑
,
%%∑ ∏
session
%%π ¿
)
%%¿ ¡
)
%%¡ ¬
;
%%¬ √
return'' 
('' 
await'' !

dataLoader''" ,
.'', -
	LoadAsync''- 6
(''6 7
g''7 8
.''8 9
Source''9 ?
.''? @
ContentItem''@ K
.''K L
ContentItemId''L Y
)''Y Z
)''Z [
.((  !
Skip((! %
(((% &
g((& '
.((' (
GetArgument((( 3
<((3 4
int((4 7
>((7 8
(((8 9
$str((9 ?
)((? @
)((@ A
.))  !
Take))! %
())% &
g))& '
.))' (
GetArgument))( 3
<))3 4
int))4 7
>))7 8
())8 9
$str))9 @
)))@ A
)))A B
;))B C
}** 
)** 
;** 
}++ 	
private-- 
static-- 
async-- 
Task-- !
<--! "
ILookup--" )
<--) *
string--* 0
,--0 1
ContentItem--2 =
>--= >
>--> ?1
%LoadPublishedContentItemsForListAsync--@ e
(--e f
IEnumerable--f q
<--q r
string--r x
>--x y
contentItemIds	--z à
,
--à â
ISession
--ä í
session
--ì ö
)
--ö õ
{.. 	
if// 
(// 
contentItemIds// 
is// !
null//" &
||//' )
!//* +
contentItemIds//+ 9
.//9 :
Any//: =
(//= >
)//> ?
)//? @
{00 
return11 
new11 

Dictionary11 %
<11% &
string11& ,
,11, -
ContentItem11. 9
>119 :
(11: ;
)11; <
.11< =
ToLookup11= E
(11E F
k11F G
=>11H J
k11K L
.11L M
Key11M P
,11P Q
v11R S
=>11T V
v11W X
.11X Y
Value11Y ^
)11^ _
;11_ `
}22 
var44 
query44 
=44 
await44 
session44 %
.44% &
Query44& +
<44+ ,
ContentItem44, 7
>447 8
(448 9
)449 :
.55% &
With55& *
<55* +
ContentItemIndex55+ ;
>55; <
(55< =
ci55= ?
=>55@ B
ci55C E
.55E F
	Published55F O
)55O P
.66% &
With66& *
<66* +
ContainedPartIndex66+ =
>66= >
(66> ?
cp66? A
=>66B D
cp66E G
.66G H
ListContentItemId66H Y
.66Y Z
IsIn66Z ^
(66^ _
contentItemIds66_ m
)66m n
)66n o
.77% &
OrderBy77& -
(77- .
o77. /
=>770 2
o773 4
.774 5
Order775 :
)77: ;
.88% &
	ListAsync88& /
(88/ 0
)880 1
;881 2
return:: 
query:: 
.:: 
ToLookup:: !
(::! "
k::" #
=>::$ &
k::' (
.::( )
As::) +
<::+ ,
ContainedPart::, 9
>::9 :
(::: ;
)::; <
.::< =
ListContentItemId::= N
)::N O
;::O P
};; 	
}<< 
}== ë
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
Lists		 
.		 
GraphQL		 #
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
ContainedPart- :
,: ;$
ContainedInputObjectType< T
>T U
(U V
)V W
;W X
services 
. 
AddObjectGraphType '
<' (
ContainedPart( 5
,5 6$
ContainedQueryObjectType7 O
>O P
(P Q
)Q R
;R S
services 
. 
AddObjectGraphType '
<' (
ListPart( 0
,0 1
ListQueryObjectType2 E
>E F
(F G
)G H
;H I
services 
. 
AddTransient !
<! "
IIndexAliasProvider" 5
,5 6+
ContainedPartIndexAliasProvider7 V
>V W
(W X
)X Y
;Y Z
services 
. .
"AddWhereInputIndexPropertyProvider 7
<7 8
ContainedPartIndex8 J
>J K
(K L
)L M
;M N
} 	
} 
} “!
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ContainedPartHandler.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Handlers $
{ 
public 

class  
ContainedPartHandler %
:& '
ContentHandlerBase( :
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public  
ContainedPartHandler #
(# $
IServiceProvider$ 4
serviceProvider5 D
)D E
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
async 
Task "
CloningAsync# /
(/ 0
CloneContentContext0 C
contextD K
)K L
{ 	
var 
containedPart 
= 
context  '
.' (
CloneContentItem( 8
.8 9
As9 ;
<; <
ContainedPart< I
>I J
(J K
)K L
;L M
if 
( 
containedPart 
!=  
null! %
)% &
{ 
var 
contentManager "
=# $
_serviceProvider% 5
.5 6
GetRequiredService6 H
<H I
IContentManagerI X
>X Y
(Y Z
)Z [
;[ \
var 
listContentItem #
=$ %
await& +
contentManager, :
.: ;
GetAsync; C
(C D
containedPartD Q
.Q R
ListContentItemIdR c
)c d
;d e
if 
( 
listContentItem #
!=$ &
null' +
)+ ,
{   
var!! $
contentDefinitionManager!! 0
=!!1 2
_serviceProvider!!3 C
.!!C D
GetRequiredService!!D V
<!!V W%
IContentDefinitionManager!!W p
>!!p q
(!!q r
)!!r s
;!!s t
var"" !
contentTypeDefinition"" -
="". /$
contentDefinitionManager""0 H
.""H I
GetTypeDefinition""I Z
(""Z [
listContentItem""[ j
.""j k
ContentType""k v
)""v w
;""w x
var## %
contentTypePartDefinition## 1
=##2 3!
contentTypeDefinition##4 I
.##I J
Parts##J O
.##O P
FirstOrDefault##P ^
(##^ _
x##_ `
=>##a c
String##d j
.##j k
Equals##k q
(##q r
x##r s
.##s t
PartDefinition	##t Ç
.
##Ç É
Name
##É á
,
##á à
$str
##â ì
)
##ì î
)
##î ï
;
##ï ñ
var$$ 
settings$$  
=$$! "%
contentTypePartDefinition$$# <
.$$< =
GetSettings$$= H
<$$H I
ListPartSettings$$I Y
>$$Y Z
($$Z [
)$$[ \
;$$\ ]
if%% 
(%% 
settings%%  
.%%  !
EnableOrdering%%! /
)%%/ 0
{&& 
var'' 
containerService'' ,
=''- .
_serviceProvider''/ ?
.''? @
GetRequiredService''@ R
<''R S
IContainerService''S d
>''d e
(''e f
)''f g
;''g h
var(( 
	nextOrder(( %
=((& '
await((( -
containerService((. >
.((> ?#
GetNextOrderNumberAsync((? V
(((V W
containedPart((W d
.((d e
ListContentItemId((e v
)((v w
;((w x
context)) 
.))  
CloneContentItem))  0
.))0 1
Alter))1 6
<))6 7
ContainedPart))7 D
>))D E
())E F
x))F G
=>))H J
x))K L
.))L M
Order))M R
=))S T
	nextOrder))U ^
)))^ _
;))_ `
}** 
}++ 
},, 
}-- 	
}.. 
}// ¶4
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ContainedPartLocalizationHandler.cs
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
 
Drivers

 #
{ 
public 

class ,
 ContainedPartLocalizationHandler 1
:2 3.
"ContentLocalizationPartHandlerBase4 V
<V W
LocalizationPartW g
>g h
{ 
private 
readonly 
ISession !
_session" *
;* +
public ,
 ContainedPartLocalizationHandler /
(/ 0
ISession0 8
session9 @
)@ A
{ 	
_session 
= 
session 
; 
} 	
public 
override 
async 
Task "
LocalizingAsync# 2
(2 3&
LocalizationContentContext3 M
contextN U
,U V
LocalizationPartW g
parth l
)l m
{ 	
var 
containedPart 
= 
context  '
.' (
ContentItem( 3
.3 4
As4 6
<6 7
ContainedPart7 D
>D E
(E F
)F G
;G H
if 
( 
containedPart 
!=  
null! %
)% &
{ 
var 
list 
= 
await  
_session! )
.) *

QueryIndex* 4
<4 5%
LocalizedContentItemIndex5 N
>N O
(O P
iP Q
=>R T
(U V
iV W
.W X
	PublishedX a
||b d
ie f
.f g
Latestg m
)m n
&&o q
ir s
.s t
ContentItemId	t Å
==
Ç Ñ
containedPart
Ö í
.
í ì
ListContentItemId
ì §
)
§ •
.
• ¶!
FirstOrDefaultAsync
¶ π
(
π ∫
)
∫ ª
;
ª º
var 
localizedList !
=" #
await$ )
_session* 2
.2 3

QueryIndex3 =
<= >%
LocalizedContentItemIndex> W
>W X
(X Y
iY Z
=>[ ]
(^ _
i_ `
.` a
	Publisheda j
||k m
in o
.o p
Latestp v
)v w
&&x z
i{ |
.| }
LocalizationSet	} å
==
ç è
list
ê î
.
î ï
LocalizationSet
ï §
&&
• ß
i
® ©
.
© ™
Culture
™ ±
==
≤ ¥
context
µ º
.
º Ω
Culture
Ω ƒ
)
ƒ ≈
.
≈ ∆!
FirstOrDefaultAsync
∆ Ÿ
(
Ÿ ⁄
)
⁄ €
;
€ ‹
if!! 
(!! 
localizedList!! !
!=!!" $
null!!% )
)!!) *
{"" 
containedPart## !
.##! "
ListContentItemId##" 3
=##4 5
localizedList##6 C
.##C D
ContentItemId##D Q
;##Q R
containedPart$$ !
.$$! "
Apply$$" '
($$' (
)$$( )
;$$) *
}%% 
}&& 
}'' 	
}(( 
public** 

class** ,
 LocalizationContainedPartHandler** 1
:**2 3
ContentPartHandler**4 F
<**F G
LocalizationPart**G W
>**W X
{++ 
private,, 
readonly,, 
ISession,, !
_session,," *
;,,* +
public-- ,
 LocalizationContainedPartHandler-- /
(--/ 0
ISession--0 8
session--9 @
)--@ A
{.. 	
_session// 
=// 
session// 
;// 
}00 	
public66 
override66 
async66 
Task66 "
CreatingAsync66# 0
(660 1 
CreateContentContext661 E
context66F M
,66M N
LocalizationPart66O _
instance66` h
)66h i
{77 	
var88 
containedPart88 
=88 
context88  '
.88' (
ContentItem88( 3
.883 4
As884 6
<886 7
ContainedPart887 D
>88D E
(88E F
)88F G
;88G H
if99 
(99 
containedPart99 
!=99  
null99! %
)99% &
{:: 
var;; 
list;; 
=;; 
await;;  
_session;;! )
.;;) *

QueryIndex;;* 4
<;;4 5%
LocalizedContentItemIndex;;5 N
>;;N O
(;;O P
i;;P Q
=>;;R T
(;;U V
i;;V W
.;;W X
	Published;;X a
||;;b d
i;;e f
.;;f g
Latest;;g m
);;m n
&&;;o q
i;;r s
.;;s t
ContentItemId	;;t Å
==
;;Ç Ñ
containedPart
;;Ö í
.
;;í ì
ListContentItemId
;;ì §
)
;;§ •
.
;;• ¶!
FirstOrDefaultAsync
;;¶ π
(
;;π ∫
)
;;∫ ª
;
;;ª º
var<< 
localizedList<< !
=<<" #
await<<$ )
_session<<* 2
.<<2 3

QueryIndex<<3 =
<<<= >%
LocalizedContentItemIndex<<> W
><<W X
(<<X Y
i<<Y Z
=><<[ ]
(<<^ _
i<<_ `
.<<` a
	Published<<a j
||<<k m
i<<n o
.<<o p
Latest<<p v
)<<v w
&&<<x z
i<<{ |
.<<| }
LocalizationSet	<<} å
==
<<ç è
list
<<ê î
.
<<î ï
LocalizationSet
<<ï §
&&
<<• ß
i
<<® ©
.
<<© ™
Culture
<<™ ±
==
<<≤ ¥
instance
<<µ Ω
.
<<Ω æ
Culture
<<æ ≈
)
<<≈ ∆
.
<<∆ «!
FirstOrDefaultAsync
<<« ⁄
(
<<⁄ €
)
<<€ ‹
;
<<‹ ›
if>> 
(>> 
localizedList>> !
!=>>" $
null>>% )
)>>) *
{?? 
containedPart@@ !
.@@! "
ListContentItemId@@" 3
=@@4 5
localizedList@@6 C
.@@C D
ContentItemId@@D Q
;@@Q R
containedPartAA !
.AA! "
ApplyAA" '
(AA' (
)AA( )
;AA) *
}BB 
}CC 
}DD 	
}EE 
}FF ﬂ
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ListPartHandler.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Drivers #
{ 
public		 

class		 
ListPartHandler		  
:		! "
ContentPartHandler		# 5
<		5 6
ListPart		6 >
>		> ?
{

 
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
,W X
ListPartY a
partb f
)f g
{ 	
return 
context 
. 
ForAsync #
<# $
ContentItemMetadata$ 7
>7 8
(8 9
contentItemMetadata9 L
=>M O
{ 
contentItemMetadata #
.# $
AdminRouteValues$ 4
=5 6
new7 : 
RouteValueDictionary; O
{ 
{ 
$str 
, 
$str 3
}3 4
,4 5
{ 
$str !
,! "
$str# *
}* +
,+ ,
{ 
$str 
, 
$str (
}( )
,) *
{ 
$str $
,$ %
context& -
.- .
ContentItem. 9
.9 :
ContentItemId: G
}G H
} 
; 
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
} 	
} 
} ™
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ListPartLocalizationHandler.cs
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
 
Drivers

 #
{ 
public 

class '
ListPartLocalizationHandler ,
:- ..
"ContentLocalizationPartHandlerBase/ Q
<Q R
ListPartR Z
>Z [
{ 
private 
readonly 
ISession !
_session" *
;* +
public '
ListPartLocalizationHandler *
(* +
ISession+ 3
session4 ;
); <
{ 	
_session 
= 
session 
; 
} 	
public 
override 
async 
Task "
LocalizedAsync# 1
(1 2&
LocalizationContentContext2 L
contextM T
,T U
ListPartV ^
part_ c
)c d
{ 	
var 
containedList 
= 
await  %
_session& .
.. /
Query/ 4
<4 5
ContentItem5 @
,@ A
ContainedPartIndexB T
>T U
(U V
x 
=> 
x 
. 
ListContentItemId (
==) +
context, 3
.3 4
Original4 <
.< =
ContentItemId= J
)J K
.K L
	ListAsyncL U
(U V
)V W
;W X
if 
( 
! 
containedList 
. 
Any "
(" #
)# $
)$ %
{ 
return   
;   
}!! 
foreach## 
(## 
var## 
item## 
in##  
containedList##! .
)##. /
{$$ 
var%% 
localizationPart%% $
=%%% &
item%%' +
.%%+ ,
As%%, .
<%%. /
LocalizationPart%%/ ?
>%%? @
(%%@ A
)%%A B
;%%B C
if&& 
(&& 
localizationPart&& $
.&&$ %
Culture&&% ,
==&&- /
context&&0 7
.&&7 8
Culture&&8 ?
)&&? @
{'' 
var(( 
cp(( 
=(( 
item(( !
.((! "
As((" $
<(($ %
ContainedPart((% 2
>((2 3
(((3 4
)((4 5
;((5 6
cp)) 
.)) 
ListContentItemId)) (
=))) *
context))+ 2
.))2 3
ContentItem))3 >
.))> ?
ContentItemId))? L
;))L M
cp** 
.** 
Apply** 
(** 
)** 
;** 
_session++ 
.++ 
Save++ !
(++! "
item++" &
)++& '
;++' (
},, 
}-- 
}.. 	
}// 
}00 ¥
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Helpers\ListOrchardHelperExtensions.cs
public 
static 
class '
ListOrchardHelperExtensions /
{ 
public 

static 
async 
Task 
< 
int  
>  !$
QueryListItemsCountAsync" :
(: ;
this; ?
IOrchardHelper@ N
orchardHelperO \
,\ ]
string^ d
listContentItemIde v
,v w

Expression	x Ç
<
Ç É
Func
É á
<
á à
ContentItemIndex
à ò
,
ò ô
bool
ö û
>
û ü
>
ü †
itemPredicate
° Æ
=
Ø ∞
null
± µ
)
µ ∂
{ 
var 
session 
= 
orchardHelper #
.# $
HttpContext$ /
./ 0
RequestServices0 ?
.? @

GetService@ J
<J K
ISessionK S
>S T
(T U
)U V
;V W
return 
await 
ListQueryHelpers %
.% &$
QueryListItemsCountAsync& >
(> ?
session? F
,F G
listContentItemIdH Y
,Y Z
itemPredicate[ h
)h i
;i j
} 
public## 

static## 
async## 
Task## 
<## 
IEnumerable## (
<##( )
ContentItem##) 4
>##4 5
>##5 6
QueryListItemsAsync##7 J
(##J K
this##K O
IOrchardHelper##P ^
orchardHelper##_ l
,##l m
string##n t
listContentItemId	##u Ü
,
##Ü á

Expression
##à í
<
##í ì
Func
##ì ó
<
##ó ò
ContentItemIndex
##ò ®
,
##® ©
bool
##™ Æ
>
##Æ Ø
>
##Ø ∞
itemPredicate
##± æ
=
##ø ¿
null
##¡ ≈
)
##≈ ∆
{$$ 
var%% 
session%% 
=%% 
orchardHelper%% #
.%%# $
HttpContext%%$ /
.%%/ 0
RequestServices%%0 ?
.%%? @

GetService%%@ J
<%%J K
ISession%%K S
>%%S T
(%%T U
)%%U V
;%%V W
return'' 
await'' 
ListQueryHelpers'' %
.''% &
QueryListItemsAsync''& 9
(''9 :
session'': A
,''A B
listContentItemId''C T
,''T U
itemPredicate''V c
)''c d
;''d e
}(( 
})) ¬
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Helpers\ListQueryHelpers.cs
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
 
Helpers

 #
{ 
internal 
static 
class 
ListQueryHelpers *
{ 
internal 
static 
async 
Task "
<" #
int# &
>& '$
QueryListItemsCountAsync( @
(@ A
ISessionA I
sessionJ Q
,Q R
stringS Y
listContentItemIdZ k
,k l

Expressionm w
<w x
Funcx |
<| }
ContentItemIndex	} ç
,
ç é
bool
è ì
>
ì î
>
î ï
itemPredicate
ñ £
=
§ •
null
¶ ™
)
™ ´
{ 	
return 
await 
session  
.  !
Query! &
<& '
ContentItem' 2
>2 3
(3 4
)4 5
. 
With 
< 
ContainedPartIndex ,
>, -
(- .
x. /
=>0 2
x3 4
.4 5
ListContentItemId5 F
==G I
listContentItemIdJ [
)[ \
. 
With 
< 
ContentItemIndex *
>* +
(+ ,
itemPredicate, 9
??: <
(= >
x> ?
=>@ B
xC D
.D E
	PublishedE N
)N O
)O P
. 

CountAsync 
(  
)  !
;! "
} 	
internal 
static 
async 
Task "
<" #
IEnumerable# .
<. /
ContentItem/ :
>: ;
>; <
QueryListItemsAsync= P
(P Q
ISessionQ Y
sessionZ a
,a b
stringc i
listContentItemIdj {
,{ |

Expression	} á
<
á à
Func
à å
<
å ç
ContentItemIndex
ç ù
,
ù û
bool
ü £
>
£ §
>
§ •
itemPredicate
¶ ≥
=
¥ µ
null
∂ ∫
)
∫ ª
{ 	
return 
await 
session  
.  !
Query! &
<& '
ContentItem' 2
>2 3
(3 4
)4 5
. 
With 
< 
ContainedPartIndex ,
>, -
(- .
x. /
=>0 2
x3 4
.4 5
ListContentItemId5 F
==G I
listContentItemIdJ [
)[ \
. 
With 
< 
ContentItemIndex *
>* +
(+ ,
itemPredicate, 9
??: <
(= >
x> ?
=>@ B
xC D
.D E
	PublishedE N
)N O
)O P
. 
	ListAsync 
( 
)  
;  !
} 	
} 
} à
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Indexes\ContainedPartContentIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Indexes #
{ 
public 

class ,
 ContainedPartContentIndexHandler 1
:2 3$
IContentItemIndexHandler4 L
{		 
public

 
const

 
string

 
	ParentKey

 %
=

& '
$str

( O
;

O P
public 
Task 
BuildIndexAsync #
(# $
BuildIndexContext$ 5
context6 =
)= >
{ 	
var 
parent 
= 
context  
.  !
ContentItem! ,
., -
As- /
</ 0
ContainedPart0 =
>= >
(> ?
)? @
;@ A
if 
( 
parent 
== 
null 
) 
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
context 
. 
DocumentIndex !
.! "
Set" %
(% &
	ParentKey 
, 
parent 
. 
ListContentItemId (
,( ) 
DocumentIndexOptions $
.$ %
Store% *
)* +
;+ ,
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} µ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Indexes\ContainedPartIndex.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Indexes #
{ 
public 

class 
ContainedPartIndex #
:$ %
MapIndex& .
{ 
public		 
string		 
ListContentItemId		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
int

 
Order

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
} 
public 

class &
ContainedPartIndexProvider +
:, -
IndexProvider. ;
<; <
ContentItem< G
>G H
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
ContentItem6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
ContainedPartIndex *
>* +
(+ ,
), -
. 
When 
( 
contentItem !
=>" $
contentItem% 0
.0 1
Has1 4
<4 5
ContainedPart5 B
>B C
(C D
)D E
)E F
. 
Map 
( 
contentItem  
=>! #
{ 
var 
containedPart %
=& '
contentItem( 3
.3 4
As4 6
<6 7
ContainedPart7 D
>D E
(E F
)F G
;G H
if 
( 
containedPart %
==& (
null) -
)- .
{ 
return 
null #
;# $
} 
return 
new 
ContainedPartIndex 1
{ 
ListContentItemId )
=* +
containedPart, 9
.9 :
ListContentItemId: K
,K L
Order 
= 
containedPart  -
.- .
Order. 3
} 
; 
}   
)   
;   
}!! 	
}"" 
}## ⁄
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Liquid\ContainerFilter.cs
	namespace		 	
OrchardCore		
 
.		 
Lists		 
.		 
Liquid		 "
{

 
public 

class 
ContainerFilter  
:! "
ILiquidFilter# 0
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
public 
ContainerFilter 
( 
IContentManager .
contentManager/ =
)= >
{ 	
_contentManager 
= 
contentManager ,
;, -
} 	
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
var 
contentItem 
= 
input #
.# $
ToObjectValue$ 1
(1 2
)2 3
as4 6
ContentItem7 B
;B C
if 
( 
contentItem 
== 
null #
)# $
{ 
throw 
new 
ArgumentException +
(+ ,
$str, I
)I J
;J K
} 
var 
containerId 
= 
contentItem )
.) *
As* ,
<, -
ContainedPart- :
>: ;
(; <
)< =
?= >
.> ?
ListContentItemId? P
;P Q
if 
( 
containerId 
!= 
null #
)# $
{   
var!! 
	container!! 
=!! 
await!!  %
_contentManager!!& 5
.!!5 6
GetAsync!!6 >
(!!> ?
containerId!!? J
)!!J K
;!!K L
if## 
(## 
	container## 
!=##  
null##! %
)##% &
{$$ 
return%% 
new%% 
ObjectValue%% *
(%%* +
	container%%+ 4
)%%4 5
;%%5 6
}&& 
}'' 
return)) 
new)) 
ObjectValue)) "
())" #
contentItem))# .
))). /
;))/ 0
}** 	
}++ 
},, Õ
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Liquid\ListCountFilter.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Liquid "
{ 
public 

class 
ListCountFilter  
:! "
ILiquidFilter# 0
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, Z
)Z [
;[ \
} 
string 
listContentItemId $
=% &
null' +
;+ ,
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Object* 0
&&1 3
input4 9
.9 :
ToObjectValue: G
(G H
)H I
isJ L
ContentItemM X
contentItemY d
)d e
{ 
listContentItemId !
=" #
contentItem$ /
./ 0
ContentItemId0 =
;= >
} 
else 
{ 
listContentItemId !
=" #
input$ )
.) *
ToStringValue* 7
(7 8
)8 9
;9 :
} 
var!! 
session!! 
=!! 
(!! 
(!! 
IServiceProvider!! ,
)!!, -
services!!- 5
)!!5 6
.!!6 7
GetRequiredService!!7 I
<!!I J
ISession!!J R
>!!R S
(!!S T
)!!T U
;!!U V
var## 
	listCount## 
=## 
await## !
ListQueryHelpers##" 2
.##2 3$
QueryListItemsCountAsync##3 K
(##K L
session##L S
,##S T
listContentItemId##U f
)##f g
;##g h
return%% 
NumberValue%% 
.%% 
Create%% %
(%%% &
	listCount%%& /
)%%/ 0
;%%0 1
}&& 	
}'' 
}(( «
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Liquid\ListItemsFilter.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Liquid "
{ 
public 

class 
ListItemsFilter  
:! "
ILiquidFilter# 0
{ 
public 
async 
	ValueTask 
< 

FluidValue )
>) *
ProcessAsync+ 7
(7 8

FluidValue8 B
inputC H
,H I
FilterArgumentsJ Y
	argumentsZ c
,c d
TemplateContexte t
ctxu x
)x y
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, Z
)Z [
;[ \
} 
string 
listContentItemId $
=% &
null' +
;+ ,
if 
( 
input 
. 
Type 
== 
FluidValues )
.) *
Object* 0
&&1 3
input4 9
.9 :
ToObjectValue: G
(G H
)H I
isJ L
ContentItemM X
contentItemY d
)d e
{ 
listContentItemId !
=" #
contentItem$ /
./ 0
ContentItemId0 =
;= >
} 
else 
{ 
listContentItemId !
=" #
input$ )
.) *
ToStringValue* 7
(7 8
)8 9
;9 :
} 
var!! 
session!! 
=!! 
(!! 
(!! 
IServiceProvider!! ,
)!!, -
services!!- 5
)!!5 6
.!!6 7
GetRequiredService!!7 I
<!!I J
ISession!!J R
>!!R S
(!!S T
)!!T U
;!!U V
var## 
	listItems## 
=## 
await## !
ListQueryHelpers##" 2
.##2 3
QueryListItemsAsync##3 F
(##F G
session##G N
,##N O
listContentItemId##P a
)##a b
;##b c
return%% 

FluidValue%% 
.%% 
Create%% $
(%%$ %
	listItems%%% .
)%%. /
;%%/ 0
}&& 	
}'' 
}(( ≠	
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str	 
, 
Name 
=	 

$str 
, 
Description 
= 
$str N
,N O
Dependencies 
= 
new 
[ 
] 
{ 
$str 5
}6 7
,7 8
Category 
= 
$str #
) 
] æ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Migrations.cs
	namespace 	
OrchardCore
 
. 
Lists 
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
$str: D
,D E
builderF M
=>N P
builderQ X
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! 7
)7 8
)8 9
;9 :
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
ContainedPartIndex. @
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
$str  3
,3 4
c5 6
=>7 9
c: ;
.; <

WithLength< F
(F G
$numG I
)I J
)J K
. 
Column 
< 
int 
> 
( 
$str $
)$ %
) 
; 
SchemaBuilder 
. 
AlterIndexTable )
<) *
ContainedPartIndex* <
>< =
(= >
table> C
=>D F
tableG L
. 
CreateIndex 
( 
$str @
,@ A
$strB N
,N O
$strP c
,c d
$stre l
)l m
)   
;   
return## 
$num## 
;## 
}$$ 	
public(( 
int(( 
UpdateFrom1(( 
((( 
)((  
{)) 	%
_contentDefinitionManager** %
.**% &
MigratePartSettings**& 9
<**9 :
ListPart**: B
,**B C
ListPartSettings**D T
>**T U
(**U V
)**V W
;**W X
return,, 
$num,, 
;,, 
}-- 	
public00 
int00 
UpdateFrom200 
(00 
)00  
{11 	
SchemaBuilder22 
.22 
AlterIndexTable22 )
<22) *
ContainedPartIndex22* <
>22< =
(22= >
table22> C
=>22D F
table22G L
.33 
CreateIndex33 
(33 
$str33 @
,33@ A
$str33B N
,33N O
$str33P c
,33c d
$str33e l
)33l m
)44 
;44 
return66 
$num66 
;66 
}77 	
}88 
}99 Ü
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ContainedItemOptions.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Models "
{ 
public 

enum 
ContentsStatus 
{ 
	Published 
, 
Latest 
, 
Draft 
, 
Owner 
}		 
public 

class  
ContainedItemOptions %
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ContentsStatus 
Status $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
ContentsStatus5 C
.C D
	PublishedD M
;M N
} 
} ‹
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ContainedPart.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Models "
{ 
public 

class 
ContainedPart 
:  
ContentPart! ,
{		 
public 
string 
ListContentItemId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
Order 
{ 
get 
; 
set  #
;# $
}% &
} 
} ó
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ListPart.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Models "
{ 
public 

class 
ListPart 
: 
ContentPart '
{ 
} 
} Ø
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ListPartSettings.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Models "
{ 
public 

class 
ListPartSettings !
{ 
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$num, .
;. /
public 
string 
[ 
] !
ContainedContentTypes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
bool 
EnableOrdering "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 ü

öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\RemotePublishing\ListMetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
RemotePublishing ,
{ 
[		 
RequireFeatures		 
(		 
$str		 3
)		3 4
]		4 5
public

 

class

  
ListMetaWeblogDriver

 %
:

& '$
ContentPartDisplayDriver

( @
<

@ A
ListPart

A I
>

I J
{ 
public 
override 
IDisplayResult &
Display' .
(. /
ListPart/ 7
listPart8 @
,@ A#
BuildPartDisplayContextB Y
contextZ a
)a b
{ 	
return 
Dynamic 
( 
$str 6
,6 7
shape8 =
=>> @
{ 
shape 
. 
ContentItem !
=" #
listPart$ ,
., -
ContentItem- 8
;8 9
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
} 
} ’ú
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\RemotePublishing\MetaWeblogHandler.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
RemotePublishing ,
{ 
[ 
RequireFeatures 
( 
$str 3
)3 4
]4 5
public 

class 
MetaWeblogHandler "
:# $
IXmlRpcHandler% 3
{   
private!! 
readonly!! 
IContentManager!! (
_contentManager!!) 8
;!!8 9
private"" 
readonly"" %
IContentDefinitionManager"" 2%
_contentDefinitionManager""3 L
;""L M
private## 
readonly## !
IAuthorizationService## .!
_authorizationService##/ D
;##D E
private$$ 
readonly$$ 
IMediaFileStore$$ (
_mediaFileStore$$) 8
;$$8 9
private%% 
readonly%% 
IMembershipService%% +
_membershipService%%, >
;%%> ?
private&& 
readonly&& 
IEnumerable&& $
<&&$ %
IMetaWeblogDriver&&% 6
>&&6 7
_metaWeblogDrivers&&8 J
;&&J K
private'' 
readonly'' 
ISession'' !
_session''" *
;''* +
private(( 
readonly(( 
IStringLocalizer(( )
S((* +
;((+ ,
public** 
MetaWeblogHandler**  
(**  !
IContentManager++ 
contentManager++ *
,++* +!
IAuthorizationService,, ! 
authorizationService,," 6
,,,6 7
IMembershipService-- 
membershipService-- 0
,--0 1
ISession.. 
session.. 
,.. %
IContentDefinitionManager// %$
contentDefinitionManager//& >
,//> ?
IMediaFileStore00 
mediaFileStore00 *
,00* +
IEnumerable11 
<11 
IMetaWeblogDriver11 )
>11) *
metaWeblogDrivers11+ <
,11< =
IStringLocalizer22 
<22 
MetaWeblogHandler22 .
>22. /
	localizer220 9
)229 :
{33 	
_contentManager44 
=44 
contentManager44 ,
;44, -%
_contentDefinitionManager55 %
=55& '$
contentDefinitionManager55( @
;55@ A!
_authorizationService66 !
=66" # 
authorizationService66$ 8
;668 9
_metaWeblogDrivers77 
=77  
metaWeblogDrivers77! 2
;772 3
_session88 
=88 
session88 
;88 
_mediaFileStore99 
=99 
mediaFileStore99 ,
;99, -
_membershipService:: 
=::  
membershipService::! 2
;::2 3
S;; 
=;; 
	localizer;; 
;;; 
}<< 	
public>> 
void>> 
SetCapabilities>> #
(>># $
XElement>>$ ,
options>>- 4
)>>4 5
{?? 	
const@@ 
string@@ 
manifestUri@@ $
=@@% &
$str@@' Y
;@@Y Z
foreachBB 
(BB 
varBB 
driverBB 
inBB  "
_metaWeblogDriversBB# 5
)BB5 6
{CC 
driverDD 
.DD 
SetCapabilitiesDD &
(DD& '
(DD' (
nameDD( ,
,DD, -
valueDD. 3
)DD3 4
=>DD5 7
{DD8 9
optionsDD: A
.DDA B
SetElementValueDDB Q
(DDQ R
XNameDDR W
.DDW X
GetDDX [
(DD[ \
nameDD\ `
,DD` a
manifestUriDDb m
)DDm n
,DDn o
valueDDp u
)DDu v
;DDv w
}DDx y
)DDy z
;DDz {
}EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
ProcessAsyncHH &
(HH& '
XmlRpcContextHH' 4
contextHH5 <
)HH< =
{II 	
ifJJ 
(JJ 
contextJJ 
.JJ 
RpcMethodCallJJ %
.JJ% &

MethodNameJJ& 0
==JJ1 3
$strJJ4 K
)JJK L
{KK 
varLL 
resultLL 
=LL 
awaitLL "'
MetaWeblogGetUserBlogsAsyncLL# >
(LL> ?
contextLL? F
,LLF G
ConvertMM 
.MM 
ToStringMM $
(MM$ %
contextMM% ,
.MM, -
RpcMethodCallMM- :
.MM: ;
ParamsMM; A
[MMA B
$numMMB C
]MMC D
.MMD E
ValueMME J
)MMJ K
,MMK L
ConvertNN 
.NN 
ToStringNN $
(NN$ %
contextNN% ,
.NN, -
RpcMethodCallNN- :
.NN: ;
ParamsNN; A
[NNA B
$numNNB C
]NNC D
.NND E
ValueNNE J
)NNJ K
)NNK L
;NNL M
contextPP 
.PP 
RpcMethodResponsePP )
=PP* +
newPP, /
XRpcMethodResponsePP0 B
(PPB C
)PPC D
.PPD E
AddPPE H
(PPH I
resultPPI O
)PPO P
;PPP Q
}QQ 
ifSS 
(SS 
contextSS 
.SS 
RpcMethodCallSS %
.SS% &

MethodNameSS& 0
==SS1 3
$strSS4 O
)SSO P
{TT 
varUU 
resultUU 
=UU 
awaitUU "$
MetaWeblogGetRecentPostsUU# ;
(UU; <
contextVV 
,VV 
ConvertWW 
.WW 
ToStringWW $
(WW$ %
contextWW% ,
.WW, -
RpcMethodCallWW- :
.WW: ;
ParamsWW; A
[WWA B
$numWWB C
]WWC D
.WWD E
ValueWWE J
)WWJ K
,WWK L
ConvertXX 
.XX 
ToStringXX $
(XX$ %
contextXX% ,
.XX, -
RpcMethodCallXX- :
.XX: ;
ParamsXX; A
[XXA B
$numXXB C
]XXC D
.XXD E
ValueXXE J
)XXJ K
,XXK L
ConvertYY 
.YY 
ToStringYY $
(YY$ %
contextYY% ,
.YY, -
RpcMethodCallYY- :
.YY: ;
ParamsYY; A
[YYA B
$numYYB C
]YYC D
.YYD E
ValueYYE J
)YYJ K
,YYK L
ConvertZZ 
.ZZ 
ToInt32ZZ #
(ZZ# $
contextZZ$ +
.ZZ+ ,
RpcMethodCallZZ, 9
.ZZ9 :
ParamsZZ: @
[ZZ@ A
$numZZA B
]ZZB C
.ZZC D
ValueZZD I
)ZZI J
,ZZJ K
context[[ 
.[[ 
Drivers[[ #
)[[# $
;[[$ %
context]] 
.]] 
RpcMethodResponse]] )
=]]* +
new]], /
XRpcMethodResponse]]0 B
(]]B C
)]]C D
.]]D E
Add]]E H
(]]H I
result]]I O
)]]O P
;]]P Q
}^^ 
if`` 
(`` 
context`` 
.`` 
RpcMethodCall`` %
.``% &

MethodName``& 0
==``1 3
$str``4 H
)``H I
{aa 
varbb 
resultbb 
=bb 
awaitbb ""
MetaWeblogNewPostAsyncbb# 9
(bb9 :
Convertcc 
.cc 
ToStringcc $
(cc$ %
contextcc% ,
.cc, -
RpcMethodCallcc- :
.cc: ;
Paramscc; A
[ccA B
$numccB C
]ccC D
.ccD E
ValueccE J
)ccJ K
,ccK L
Convertdd 
.dd 
ToStringdd $
(dd$ %
contextdd% ,
.dd, -
RpcMethodCalldd- :
.dd: ;
Paramsdd; A
[ddA B
$numddB C
]ddC D
.ddD E
ValueddE J
)ddJ K
,ddK L
Convertee 
.ee 
ToStringee $
(ee$ %
contextee% ,
.ee, -
RpcMethodCallee- :
.ee: ;
Paramsee; A
[eeA B
$numeeB C
]eeC D
.eeD E
ValueeeE J
)eeJ K
,eeK L
(ff 

XRpcStructff 
)ff  
contextff  '
.ff' (
RpcMethodCallff( 5
.ff5 6
Paramsff6 <
[ff< =
$numff= >
]ff> ?
.ff? @
Valueff@ E
,ffE F
Convertgg 
.gg 
	ToBooleangg %
(gg% &
contextgg& -
.gg- .
RpcMethodCallgg. ;
.gg; <
Paramsgg< B
[ggB C
$numggC D
]ggD E
.ggE F
ValueggF K
)ggK L
,ggL M
contexthh 
.hh 
Drivershh #
)hh# $
;hh$ %
contextjj 
.jj 
RpcMethodResponsejj )
=jj* +
newjj, /
XRpcMethodResponsejj0 B
(jjB C
)jjC D
.jjD E
AddjjE H
(jjH I
resultjjI O
)jjO P
;jjP Q
}kk 
ifmm 
(mm 
contextmm 
.mm 
RpcMethodCallmm %
.mm% &

MethodNamemm& 0
==mm1 3
$strmm4 H
)mmH I
{nn 
varoo 
resultoo 
=oo 
awaitoo ""
MetaWeblogGetPostAsyncoo# 9
(oo9 :
contextpp 
,pp 
Convertqq 
.qq 
ToStringqq $
(qq$ %
contextqq% ,
.qq, -
RpcMethodCallqq- :
.qq: ;
Paramsqq; A
[qqA B
$numqqB C
]qqC D
.qqD E
ValueqqE J
)qqJ K
,qqK L
Convertrr 
.rr 
ToStringrr $
(rr$ %
contextrr% ,
.rr, -
RpcMethodCallrr- :
.rr: ;
Paramsrr; A
[rrA B
$numrrB C
]rrC D
.rrD E
ValuerrE J
)rrJ K
,rrK L
Convertss 
.ss 
ToStringss $
(ss$ %
contextss% ,
.ss, -
RpcMethodCallss- :
.ss: ;
Paramsss; A
[ssA B
$numssB C
]ssC D
.ssD E
ValuessE J
)ssJ K
,ssK L
contexttt 
.tt 
Driverstt #
)tt# $
;tt$ %
contextuu 
.uu 
RpcMethodResponseuu )
=uu* +
newuu, /
XRpcMethodResponseuu0 B
(uuB C
)uuC D
.uuD E
AdduuE H
(uuH I
resultuuI O
)uuO P
;uuP Q
}vv 
ifxx 
(xx 
contextxx 
.xx 
RpcMethodCallxx %
.xx% &

MethodNamexx& 0
==xx1 3
$strxx4 I
)xxI J
{yy 
varzz 
resultzz 
=zz 
awaitzz "#
MetaWeblogEditPostAsynczz# :
(zz: ;
Convert{{ 
.{{ 
ToString{{ $
({{$ %
context{{% ,
.{{, -
RpcMethodCall{{- :
.{{: ;
Params{{; A
[{{A B
$num{{B C
]{{C D
.{{D E
Value{{E J
){{J K
,{{K L
Convert|| 
.|| 
ToString|| $
(||$ %
context||% ,
.||, -
RpcMethodCall||- :
.||: ;
Params||; A
[||A B
$num||B C
]||C D
.||D E
Value||E J
)||J K
,||K L
Convert}} 
.}} 
ToString}} $
(}}$ %
context}}% ,
.}}, -
RpcMethodCall}}- :
.}}: ;
Params}}; A
[}}A B
$num}}B C
]}}C D
.}}D E
Value}}E J
)}}J K
,}}K L
(~~ 

XRpcStruct~~ 
)~~  
context~~  '
.~~' (
RpcMethodCall~~( 5
.~~5 6
Params~~6 <
[~~< =
$num~~= >
]~~> ?
.~~? @
Value~~@ E
,~~E F
Convert 
. 
	ToBoolean %
(% &
context& -
.- .
RpcMethodCall. ;
.; <
Params< B
[B C
$numC D
]D E
.E F
ValueF K
)K L
,L M
context
ÄÄ 
.
ÄÄ 
Drivers
ÄÄ #
)
ÄÄ# $
;
ÄÄ$ %
context
ÅÅ 
.
ÅÅ 
RpcMethodResponse
ÅÅ )
=
ÅÅ* +
new
ÅÅ, / 
XRpcMethodResponse
ÅÅ0 B
(
ÅÅB C
)
ÅÅC D
.
ÅÅD E
Add
ÅÅE H
(
ÅÅH I
result
ÅÅI O
)
ÅÅO P
;
ÅÅP Q
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
context
ÑÑ 
.
ÑÑ 
RpcMethodCall
ÑÑ %
.
ÑÑ% &

MethodName
ÑÑ& 0
==
ÑÑ1 3
$str
ÑÑ4 H
)
ÑÑH I
{
ÖÖ 
var
ÜÜ 
result
ÜÜ 
=
ÜÜ 
await
ÜÜ "'
MetaWeblogDeletePostAsync
ÜÜ# <
(
ÜÜ< =
Convert
áá 
.
áá 
ToString
áá $
(
áá$ %
context
áá% ,
.
áá, -
RpcMethodCall
áá- :
.
áá: ;
Params
áá; A
[
ááA B
$num
ááB C
]
ááC D
.
ááD E
Value
ááE J
)
ááJ K
,
ááK L
Convert
àà 
.
àà 
ToString
àà $
(
àà$ %
context
àà% ,
.
àà, -
RpcMethodCall
àà- :
.
àà: ;
Params
àà; A
[
ààA B
$num
ààB C
]
ààC D
.
ààD E
Value
ààE J
)
ààJ K
,
ààK L
Convert
ââ 
.
ââ 
ToString
ââ $
(
ââ$ %
context
ââ% ,
.
ââ, -
RpcMethodCall
ââ- :
.
ââ: ;
Params
ââ; A
[
ââA B
$num
ââB C
]
ââC D
.
ââD E
Value
ââE J
)
ââJ K
,
ââK L
context
ää 
.
ää 
Drivers
ää #
)
ää# $
;
ää$ %
context
ãã 
.
ãã 
RpcMethodResponse
ãã )
=
ãã* +
new
ãã, / 
XRpcMethodResponse
ãã0 B
(
ããB C
)
ããC D
.
ããD E
Add
ããE H
(
ããH I
result
ããI O
)
ããO P
;
ããP Q
}
åå 
if
éé 
(
éé 
context
éé 
.
éé 
RpcMethodCall
éé %
.
éé% &

MethodName
éé& 0
==
éé1 3
$str
éé4 O
)
ééO P
{
èè 
var
êê 
result
êê 
=
êê 
await
êê "+
MetaWeblogNewMediaObjectAsync
êê# @
(
êê@ A
Convert
ëë 
.
ëë 
ToString
ëë $
(
ëë$ %
context
ëë% ,
.
ëë, -
RpcMethodCall
ëë- :
.
ëë: ;
Params
ëë; A
[
ëëA B
$num
ëëB C
]
ëëC D
.
ëëD E
Value
ëëE J
)
ëëJ K
,
ëëK L
Convert
íí 
.
íí 
ToString
íí $
(
íí$ %
context
íí% ,
.
íí, -
RpcMethodCall
íí- :
.
íí: ;
Params
íí; A
[
ííA B
$num
ííB C
]
ííC D
.
ííD E
Value
ííE J
)
ííJ K
,
ííK L
(
ìì 

XRpcStruct
ìì 
)
ìì  
context
ìì  '
.
ìì' (
RpcMethodCall
ìì( 5
.
ìì5 6
Params
ìì6 <
[
ìì< =
$num
ìì= >
]
ìì> ?
.
ìì? @
Value
ìì@ E
)
ììE F
;
ììF G
context
îî 
.
îî 
RpcMethodResponse
îî )
=
îî* +
new
îî, / 
XRpcMethodResponse
îî0 B
(
îîB C
)
îîC D
.
îîD E
Add
îîE H
(
îîH I
result
îîI O
)
îîO P
;
îîP Q
}
ïï 
}
ññ 	
private
òò 
async
òò 
Task
òò 
<
òò 

XRpcStruct
òò %
>
òò% &+
MetaWeblogNewMediaObjectAsync
òò' D
(
òòD E
string
òòE K
userName
òòL T
,
òòT U
string
òòV \
password
òò] e
,
òòe f

XRpcStruct
òòg q
file
òòr v
)
òòv w
{
ôô 	
var
öö 
user
öö 
=
öö 
await
öö 
ValidateUserAsync
öö .
(
öö. /
userName
öö/ 7
,
öö7 8
password
öö9 A
)
ööA B
;
ööB C
var
úú 
name
úú 
=
úú 
file
úú 
.
úú 
Optional
úú $
<
úú$ %
string
úú% +
>
úú+ ,
(
úú, -
$str
úú- 3
)
úú3 4
;
úú4 5
var
ùù 
bits
ùù 
=
ùù 
file
ùù 
.
ùù 
Optional
ùù $
<
ùù$ %
byte
ùù% )
[
ùù) *
]
ùù* +
>
ùù+ ,
(
ùù, -
$str
ùù- 3
)
ùù3 4
;
ùù4 5
var
üü 
directoryName
üü 
=
üü 
Path
üü  $
.
üü$ %
GetDirectoryName
üü% 5
(
üü5 6
name
üü6 :
)
üü: ;
;
üü; <
var
†† 
filePath
†† 
=
†† 
_mediaFileStore
†† *
.
††* +
Combine
††+ 2
(
††2 3
directoryName
††3 @
,
††@ A
Path
††B F
.
††F G
GetFileName
††G R
(
††R S
name
††S W
)
††W X
)
††X Y
;
††Y Z
Stream
°° 
stream
°° 
=
°° 
null
°°  
;
°°  !
try
¢¢ 
{
££ 
stream
§§ 
=
§§ 
new
§§ 
MemoryStream
§§ )
(
§§) *
bits
§§* .
)
§§. /
;
§§/ 0
filePath
•• 
=
•• 
await
••  
_mediaFileStore
••! 0
.
••0 1'
CreateFileFromStreamAsync
••1 J
(
••J K
filePath
••K S
,
••S T
stream
••U [
)
••[ \
;
••\ ]
}
¶¶ 
finally
ßß 
{
®® 
stream
©© 
?
©© 
.
©© 
Dispose
©© 
(
©©  
)
©©  !
;
©©! "
}
™™ 
var
¨¨ 
	publicUrl
¨¨ 
=
¨¨ 
_mediaFileStore
¨¨ +
.
¨¨+ , 
MapPathToPublicUrl
¨¨, >
(
¨¨> ?
filePath
¨¨? G
)
¨¨G H
;
¨¨H I
return
ÆÆ 
new
ÆÆ 

XRpcStruct
ÆÆ !
(
ÆÆ! "
)
ÆÆ" #
.
ØØ 
Set
ØØ 
(
ØØ 
$str
ØØ 
,
ØØ 
	publicUrl
ØØ &
)
ØØ& '
.
∞∞ 
Set
∞∞ 
(
∞∞ 
$str
∞∞ 
,
∞∞ 
	publicUrl
∞∞ %
)
∞∞% &
.
±± 
Set
±± 
(
±± 
$str
±± 
,
±± 
file
±± !
.
±±! "
Optional
±±" *
<
±±* +
string
±±+ 1
>
±±1 2
(
±±2 3
$str
±±3 9
)
±±9 :
)
±±: ;
;
±±; <
}
≤≤ 	
private
¥¥ 
async
¥¥ 
Task
¥¥ 
<
¥¥ 
	XRpcArray
¥¥ $
>
¥¥$ %)
MetaWeblogGetUserBlogsAsync
¥¥& A
(
¥¥A B
XmlRpcContext
¥¥B O
context
¥¥P W
,
¥¥W X
string
¥¥Y _
userName
¥¥` h
,
¥¥h i
string
¥¥j p
password
¥¥q y
)
¥¥y z
{
µµ 	
var
∂∂ 
user
∂∂ 
=
∂∂ 
await
∂∂ 
ValidateUserAsync
∂∂ .
(
∂∂. /
userName
∂∂/ 7
,
∂∂7 8
password
∂∂9 A
)
∂∂A B
;
∂∂B C
	XRpcArray
∏∏ 
array
∏∏ 
=
∏∏ 
new
∏∏ !
	XRpcArray
∏∏" +
(
∏∏+ ,
)
∏∏, -
;
∏∏- .
foreach
ªª 
(
ªª 
var
ªª 
type
ªª 
in
ªª  '
_contentDefinitionManager
ªª! :
.
ªª: ;!
ListTypeDefinitions
ªª; N
(
ªªN O
)
ªªO P
)
ªªP Q
{
ºº 
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
type
ΩΩ 
.
ΩΩ 
Parts
ΩΩ 
.
ΩΩ  
Any
ΩΩ  #
(
ΩΩ# $
x
ΩΩ$ %
=>
ΩΩ& (
x
ΩΩ) *
.
ΩΩ* +
Name
ΩΩ+ /
==
ΩΩ0 2
nameof
ΩΩ3 9
(
ΩΩ9 :
ListPart
ΩΩ: B
)
ΩΩB C
)
ΩΩC D
)
ΩΩD E
{
ææ 
continue
øø 
;
øø 
}
¿¿ 
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
list
¬¬ !
in
¬¬" $
await
¬¬% *
_session
¬¬+ 3
.
¬¬3 4
Query
¬¬4 9
<
¬¬9 :
ContentItem
¬¬: E
,
¬¬E F
ContentItemIndex
¬¬G W
>
¬¬W X
(
¬¬X Y
x
¬¬Y Z
=>
¬¬[ ]
x
¬¬^ _
.
¬¬_ `
ContentType
¬¬` k
==
¬¬l n
type
¬¬o s
.
¬¬s t
Name
¬¬t x
)
¬¬x y
.
¬¬y z
	ListAsync¬¬z É
(¬¬É Ñ
)¬¬Ñ Ö
)¬¬Ö Ü
{
√√ 
if
≈≈ 
(
≈≈ 
await
≈≈ #
_authorizationService
≈≈ 3
.
≈≈3 4
AuthorizeAsync
≈≈4 B
(
≈≈B C
user
≈≈C G
,
≈≈G H
CommonPermissions
≈≈I Z
.
≈≈Z [
EditContent
≈≈[ f
,
≈≈f g
list
≈≈h l
)
≈≈l m
)
≈≈m n
{
∆∆ 
var
«« 
metadata
«« $
=
««% &
await
««' ,
_contentManager
««- <
.
««< =!
PopulateAspectAsync
««= P
<
««P Q!
ContentItemMetadata
««Q d
>
««d e
(
««e f
list
««f j
)
««j k
;
««k l
var
»»  
displayRouteValues
»» .
=
»»/ 0
metadata
»»1 9
.
»»9 : 
DisplayRouteValues
»»: L
;
»»L M
array
   
.
   
Add
   !
(
  ! "
new
  " %

XRpcStruct
  & 0
(
  0 1
)
  1 2
.
ÀÀ& '
Set
ÀÀ' *
(
ÀÀ* +
$str
ÀÀ+ 0
,
ÀÀ0 1
context
ÀÀ2 9
.
ÀÀ9 :
Url
ÀÀ: =
.
ÀÀ= >
Action
ÀÀ> D
(
ÀÀD E 
displayRouteValues
ÀÀE W
[
ÀÀW X
$str
ÀÀX `
]
ÀÀ` a
.
ÀÀa b
ToString
ÀÀb j
(
ÀÀj k
)
ÀÀk l
,
ÀÀl m!
displayRouteValuesÀÀn Ä
[ÀÀÄ Å
$strÀÀÅ ç
]ÀÀç é
.ÀÀé è
ToStringÀÀè ó
(ÀÀó ò
)ÀÀò ô
,ÀÀô ö"
displayRouteValuesÀÀõ ≠
,ÀÀ≠ Æ
contextÀÀØ ∂
.ÀÀ∂ ∑
HttpContextÀÀ∑ ¬
.ÀÀ¬ √
RequestÀÀ√  
.ÀÀ  À
SchemeÀÀÀ —
)ÀÀ— “
)ÀÀ“ ”
.
ÃÃ& '
Set
ÃÃ' *
(
ÃÃ* +
$str
ÃÃ+ 3
,
ÃÃ3 4
list
ÃÃ5 9
.
ÃÃ9 :
ContentItemId
ÃÃ: G
)
ÃÃG H
.
ÕÕ& '
Set
ÕÕ' *
(
ÕÕ* +
$str
ÕÕ+ 5
,
ÕÕ5 6
list
ÕÕ7 ;
.
ÕÕ; <
DisplayText
ÕÕ< G
)
ÕÕG H
)
ÕÕH I
;
ÕÕI J
}
ŒŒ 
}
œœ 
}
–– 
return
““ 
array
““ 
;
““ 
}
”” 	
private
’’ 
async
’’ 
Task
’’ 
<
’’ 
	XRpcArray
’’ $
>
’’$ %&
MetaWeblogGetRecentPosts
’’& >
(
’’> ?
XmlRpcContext
÷÷ 
context
÷÷ !
,
÷÷! "
string
◊◊ 
contentItemId
◊◊  
,
◊◊  !
string
ÿÿ 
userName
ÿÿ 
,
ÿÿ 
string
ŸŸ 
password
ŸŸ 
,
ŸŸ 
int
⁄⁄ 
numberOfPosts
⁄⁄ 
,
⁄⁄ 
IEnumerable
€€ 
<
€€ 
IXmlRpcDriver
€€ %
>
€€% &
drivers
€€' .
)
€€. /
{
‹‹ 	
var
›› 
user
›› 
=
›› 
await
›› 
ValidateUserAsync
›› .
(
››. /
userName
››/ 7
,
››7 8
password
››9 A
)
››A B
;
››B C
await
‡‡ 
CheckAccessAsync
‡‡ "
(
‡‡" #
CommonPermissions
‡‡# 4
.
‡‡4 5
EditContent
‡‡5 @
,
‡‡@ A
user
‡‡B F
,
‡‡F G
null
‡‡H L
)
‡‡L M
;
‡‡M N
var
‚‚ 
list
‚‚ 
=
‚‚ 
await
‚‚ 
_contentManager
‚‚ ,
.
‚‚, -
GetAsync
‚‚- 5
(
‚‚5 6
contentItemId
‚‚6 C
)
‚‚C D
;
‚‚D E
if
‰‰ 
(
‰‰ 
list
‰‰ 
==
‰‰ 
null
‰‰ 
)
‰‰ 
{
ÂÂ 
throw
ÊÊ 
new
ÊÊ '
InvalidOperationException
ÊÊ 3
(
ÊÊ3 4
$str
ÊÊ4 R
+
ÊÊS T
contentItemId
ÊÊU b
)
ÊÊb c
;
ÊÊc d
}
ÁÁ 
var
ÈÈ 
array
ÈÈ 
=
ÈÈ 
new
ÈÈ 
	XRpcArray
ÈÈ %
(
ÈÈ% &
)
ÈÈ& '
;
ÈÈ' (
var
ÎÎ 
contentItems
ÎÎ 
=
ÎÎ 
await
ÎÎ $
_session
ÎÎ% -
.
ÎÎ- .
Query
ÎÎ. 3
<
ÎÎ3 4
ContentItem
ÎÎ4 ?
>
ÎÎ? @
(
ÎÎ@ A
)
ÎÎA B
.
ÏÏ 
With
ÏÏ 
<
ÏÏ  
ContainedPartIndex
ÏÏ (
>
ÏÏ( )
(
ÏÏ) *
x
ÏÏ* +
=>
ÏÏ, .
x
ÏÏ/ 0
.
ÏÏ0 1
ListContentItemId
ÏÏ1 B
==
ÏÏC E
contentItemId
ÏÏF S
)
ÏÏS T
.
ÌÌ 
With
ÌÌ 
<
ÌÌ 
ContentItemIndex
ÌÌ &
>
ÌÌ& '
(
ÌÌ' (
x
ÌÌ( )
=>
ÌÌ* ,
x
ÌÌ- .
.
ÌÌ. /
Latest
ÌÌ/ 5
)
ÌÌ5 6
.
ÓÓ 
OrderByDescending
ÓÓ "
(
ÓÓ" #
x
ÓÓ# $
=>
ÓÓ% '
x
ÓÓ( )
.
ÓÓ) *

CreatedUtc
ÓÓ* 4
)
ÓÓ4 5
.
ÔÔ 
Take
ÔÔ 
(
ÔÔ 
numberOfPosts
ÔÔ #
)
ÔÔ# $
.
 
	ListAsync
 
(
 
)
 
;
 
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ 
contentItem
ÚÚ $
in
ÚÚ% '
contentItems
ÚÚ( 4
)
ÚÚ4 5
{
ÛÛ 
var
ÙÙ 

postStruct
ÙÙ 
=
ÙÙ  
await
ÙÙ! &#
CreateBlogStructAsync
ÙÙ' <
(
ÙÙ< =
context
ÙÙ= D
,
ÙÙD E
contentItem
ÙÙF Q
)
ÙÙQ R
;
ÙÙR S
foreach
ˆˆ 
(
ˆˆ 
var
ˆˆ 
driver
ˆˆ #
in
ˆˆ$ &
drivers
ˆˆ' .
)
ˆˆ. /
{
˜˜ 
driver
¯¯ 
.
¯¯ 
Process
¯¯ "
(
¯¯" #

postStruct
¯¯# -
)
¯¯- .
;
¯¯. /
}
˘˘ 
array
˚˚ 
.
˚˚ 
Add
˚˚ 
(
˚˚ 

postStruct
˚˚ $
)
˚˚$ %
;
˚˚% &
}
¸¸ 
return
˛˛ 
array
˛˛ 
;
˛˛ 
}
ˇˇ 	
private
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
string
ÅÅ !
>
ÅÅ! "$
MetaWeblogNewPostAsync
ÅÅ# 9
(
ÅÅ9 :
string
ÇÇ 
contentItemId
ÇÇ  
,
ÇÇ  !
string
ÉÉ 
userName
ÉÉ 
,
ÉÉ 
string
ÑÑ 
password
ÑÑ 
,
ÑÑ 

XRpcStruct
ÖÖ 
content
ÖÖ 
,
ÖÖ 
bool
ÜÜ 
publish
ÜÜ 
,
ÜÜ 
IEnumerable
áá 
<
áá 
IXmlRpcDriver
áá %
>
áá% &
drivers
áá' .
)
áá. /
{
àà 	
var
ââ 
user
ââ 
=
ââ 
await
ââ 
ValidateUserAsync
ââ .
(
ââ. /
userName
ââ/ 7
,
ââ7 8
password
ââ9 A
)
ââA B
;
ââB C
await
åå 
CheckAccessAsync
åå "
(
åå" #
publish
åå# *
?
åå+ ,
CommonPermissions
åå- >
.
åå> ?
PublishContent
åå? M
:
ååN O
CommonPermissions
ååP a
.
ååa b
EditContent
ååb m
,
ååm n
user
ååo s
,
åås t
null
ååu y
)
ååy z
;
ååz {
var
éé 
list
éé 
=
éé 
await
éé 
_contentManager
éé ,
.
éé, -
GetAsync
éé- 5
(
éé5 6
contentItemId
éé6 C
)
ééC D
;
ééD E
if
êê 
(
êê 
list
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
throw
íí 
new
íí '
InvalidOperationException
íí 3
(
íí3 4
$str
íí4 R
+
ííS T
contentItemId
ííU b
)
ííb c
;
ííc d
}
ìì 
var
ïï 
postType
ïï 
=
ïï &
GetContainedContentTypes
ïï 3
(
ïï3 4
list
ïï4 8
)
ïï8 9
.
ïï9 :
FirstOrDefault
ïï: H
(
ïïH I
)
ïïI J
;
ïïJ K
var
ññ 
contentItem
ññ 
=
ññ 
await
ññ #
_contentManager
ññ$ 3
.
ññ3 4
NewAsync
ññ4 <
(
ññ< =
postType
ññ= E
.
ññE F
Name
ññF J
)
ññJ K
;
ññK L
contentItem
òò 
.
òò 
Owner
òò 
=
òò 
user
òò  $
.
òò$ %
FindFirstValue
òò% 3
(
òò3 4

ClaimTypes
òò4 >
.
òò> ?
NameIdentifier
òò? M
)
òòM N
;
òòN O
contentItem
ôô 
.
ôô 
Alter
ôô 
<
ôô 
ContainedPart
ôô +
>
ôô+ ,
(
ôô, -
x
ôô- .
=>
ôô/ 1
x
ôô2 3
.
ôô3 4
ListContentItemId
ôô4 E
=
ôôF G
list
ôôH L
.
ôôL M
ContentItemId
ôôM Z
)
ôôZ [
;
ôô[ \
foreach
õõ 
(
õõ 
var
õõ 
driver
õõ 
in
õõ  " 
_metaWeblogDrivers
õõ# 5
)
õõ5 6
{
úú 
driver
ùù 
.
ùù 
EditPost
ùù 
(
ùù  
content
ùù  '
,
ùù' (
contentItem
ùù) 4
)
ùù4 5
;
ùù5 6
}
ûû 
await
†† 
_contentManager
†† !
.
††! "
CreateAsync
††" -
(
††- .
contentItem
††. 9
,
††9 :
VersionOptions
††; I
.
††I J
Draft
††J O
)
††O P
;
††P Q
var
££ 
publishedUtc
££ 
=
££ 
content
££ &
.
££& '
Optional
££' /
<
££/ 0
DateTime
££0 8
?
££8 9
>
££9 :
(
££: ;
$str
££; M
)
££M N
;
££N O
if
§§ 
(
§§ 
publishedUtc
§§ 
==
§§ 
null
§§  $
)
§§$ %
{
•• 
publishedUtc
ßß 
=
ßß 
content
ßß &
.
ßß& '
Optional
ßß' /
<
ßß/ 0
DateTime
ßß0 8
?
ßß8 9
>
ßß9 :
(
ßß: ;
$str
ßß; H
)
ßßH I
;
ßßI J
}
®® 
else
©© 
{
™™ 
publishedUtc
¨¨ 
=
¨¨ 
new
¨¨ "
DateTime
¨¨# +
(
¨¨+ ,
publishedUtc
¨¨, 8
.
¨¨8 9
Value
¨¨9 >
.
¨¨> ?
Ticks
¨¨? D
,
¨¨D E
DateTimeKind
¨¨F R
.
¨¨R S
Utc
¨¨S V
)
¨¨V W
;
¨¨W X
}
≠≠ 
if
ØØ 
(
ØØ 
publish
ØØ 
&&
ØØ 
(
ØØ 
publishedUtc
ØØ (
==
ØØ) +
null
ØØ, 0
||
ØØ1 3
publishedUtc
ØØ4 @
<=
ØØA C
DateTime
ØØD L
.
ØØL M
UtcNow
ØØM S
)
ØØS T
)
ØØT U
{
∞∞ 
await
±± 
_contentManager
±± %
.
±±% &
PublishAsync
±±& 2
(
±±2 3
contentItem
±±3 >
)
±±> ?
;
±±? @
}
≤≤ 
else
≥≥ 
{
¥¥ 
await
µµ 
_contentManager
µµ %
.
µµ% &
SaveDraftAsync
µµ& 4
(
µµ4 5
contentItem
µµ5 @
)
µµ@ A
;
µµA B
}
∂∂ 
if
∏∏ 
(
∏∏ 
publishedUtc
∏∏ 
!=
∏∏ 
null
∏∏  $
)
∏∏$ %
{
ππ 
contentItem
∫∫ 
.
∫∫ 

CreatedUtc
∫∫ &
=
∫∫' (
publishedUtc
∫∫) 5
;
∫∫5 6
}
ªª 
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
driver
ΩΩ 
in
ΩΩ  "
drivers
ΩΩ# *
)
ΩΩ* +
{
ææ 
driver
øø 
.
øø 
Process
øø 
(
øø 
contentItem
øø *
.
øø* +
ContentItemId
øø+ 8
)
øø8 9
;
øø9 :
}
¿¿ 
return
¬¬ 
contentItem
¬¬ 
.
¬¬ 
ContentItemId
¬¬ ,
;
¬¬, -
}
√√ 	
private
≈≈ 
async
≈≈ 
Task
≈≈ 
<
≈≈ 

XRpcStruct
≈≈ %
>
≈≈% &$
MetaWeblogGetPostAsync
≈≈' =
(
≈≈= >
XmlRpcContext
∆∆ 
context
∆∆ !
,
∆∆! "
string
«« 
contentItemId
««  
,
««  !
string
»» 
userName
»» 
,
»» 
string
…… 
password
…… 
,
…… 
IEnumerable
   
<
   
IXmlRpcDriver
   %
>
  % &
drivers
  ' .
)
  . /
{
ÀÀ 	
var
ÃÃ 
user
ÃÃ 
=
ÃÃ 
await
ÃÃ 
ValidateUserAsync
ÃÃ .
(
ÃÃ. /
userName
ÃÃ/ 7
,
ÃÃ7 8
password
ÃÃ9 A
)
ÃÃA B
;
ÃÃB C
var
ÕÕ 
contentItem
ÕÕ 
=
ÕÕ 
await
ÕÕ #
_contentManager
ÕÕ$ 3
.
ÕÕ3 4
GetAsync
ÕÕ4 <
(
ÕÕ< =
contentItemId
ÕÕ= J
,
ÕÕJ K
VersionOptions
ÕÕL Z
.
ÕÕZ [
Latest
ÕÕ[ a
)
ÕÕa b
;
ÕÕb c
if
œœ 
(
œœ 
contentItem
œœ 
==
œœ 
null
œœ #
)
œœ# $
{
–– 
throw
—— 
new
—— 
ArgumentException
—— +
(
——+ ,
)
——, -
;
——- .
}
““ 
await
‘‘ 
CheckAccessAsync
‘‘ "
(
‘‘" #
CommonPermissions
‘‘# 4
.
‘‘4 5
EditContent
‘‘5 @
,
‘‘@ A
user
‘‘B F
,
‘‘F G
contentItem
‘‘H S
)
‘‘S T
;
‘‘T U
var
÷÷ 

postStruct
÷÷ 
=
÷÷ 
await
÷÷ "#
CreateBlogStructAsync
÷÷# 8
(
÷÷8 9
context
÷÷9 @
,
÷÷@ A
contentItem
÷÷B M
)
÷÷M N
;
÷÷N O
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 
driver
ÿÿ 
in
ÿÿ  " 
_metaWeblogDrivers
ÿÿ# 5
)
ÿÿ5 6
{
ŸŸ 
driver
⁄⁄ 
.
⁄⁄ 
	BuildPost
⁄⁄  
(
⁄⁄  !

postStruct
⁄⁄! +
,
⁄⁄+ ,
context
⁄⁄- 4
,
⁄⁄4 5
contentItem
⁄⁄6 A
)
⁄⁄A B
;
⁄⁄B C
}
€€ 
foreach
›› 
(
›› 
var
›› 
driver
›› 
in
››  "
drivers
››# *
)
››* +
{
ﬁﬁ 
driver
ﬂﬂ 
.
ﬂﬂ 
Process
ﬂﬂ 
(
ﬂﬂ 

postStruct
ﬂﬂ )
)
ﬂﬂ) *
;
ﬂﬂ* +
}
‡‡ 
return
‚‚ 

postStruct
‚‚ 
;
‚‚ 
}
„„ 	
private
ÂÂ 
async
ÂÂ 
Task
ÂÂ 
<
ÂÂ 
bool
ÂÂ 
>
ÂÂ  %
MetaWeblogEditPostAsync
ÂÂ! 8
(
ÂÂ8 9
string
ÊÊ 
contentItemId
ÊÊ  
,
ÊÊ  !
string
ÁÁ 
userName
ÁÁ 
,
ÁÁ 
string
ËË 
password
ËË 
,
ËË 

XRpcStruct
ÈÈ 
content
ÈÈ 
,
ÈÈ 
bool
ÍÍ 
publish
ÍÍ 
,
ÍÍ 
IEnumerable
ÎÎ 
<
ÎÎ 
IXmlRpcDriver
ÎÎ %
>
ÎÎ% &
drivers
ÎÎ' .
)
ÎÎ. /
{
ÏÏ 	
var
ÌÌ 
user
ÌÌ 
=
ÌÌ 
await
ÌÌ 
ValidateUserAsync
ÌÌ .
(
ÌÌ. /
userName
ÌÌ/ 7
,
ÌÌ7 8
password
ÌÌ9 A
)
ÌÌA B
;
ÌÌB C
var
ÔÔ 
contentItem
ÔÔ 
=
ÔÔ 
await
ÔÔ #
_contentManager
ÔÔ$ 3
.
ÔÔ3 4
GetAsync
ÔÔ4 <
(
ÔÔ< =
contentItemId
ÔÔ= J
,
ÔÔJ K
VersionOptions
ÔÔL Z
.
ÔÔZ [
DraftRequired
ÔÔ[ h
)
ÔÔh i
;
ÔÔi j
if
ÒÒ 
(
ÒÒ 
contentItem
ÒÒ 
==
ÒÒ 
null
ÒÒ #
)
ÒÒ# $
{
ÚÚ 
throw
ÛÛ 
new
ÛÛ 
	Exception
ÛÛ #
(
ÛÛ# $
S
ÛÛ$ %
[
ÛÛ% &
$str
ÛÛ& u
]
ÛÛu v
)
ÛÛv w
;
ÛÛw x
}
ÙÙ 
await
ˆˆ 
CheckAccessAsync
ˆˆ "
(
ˆˆ" #
publish
ˆˆ# *
?
ˆˆ+ ,
CommonPermissions
ˆˆ- >
.
ˆˆ> ?
PublishContent
ˆˆ? M
:
ˆˆN O
CommonPermissions
ˆˆP a
.
ˆˆa b
EditContent
ˆˆb m
,
ˆˆm n
user
ˆˆo s
,
ˆˆs t
contentItemˆˆu Ä
)ˆˆÄ Å
;ˆˆÅ Ç
foreach
¯¯ 
(
¯¯ 
var
¯¯ 
driver
¯¯ 
in
¯¯  " 
_metaWeblogDrivers
¯¯# 5
)
¯¯5 6
{
˘˘ 
driver
˙˙ 
.
˙˙ 
EditPost
˙˙ 
(
˙˙  
content
˙˙  '
,
˙˙' (
contentItem
˙˙) 4
)
˙˙4 5
;
˙˙5 6
}
˚˚ 
var
˛˛ 
publishedUtc
˛˛ 
=
˛˛ 
content
˛˛ &
.
˛˛& '
Optional
˛˛' /
<
˛˛/ 0
DateTime
˛˛0 8
?
˛˛8 9
>
˛˛9 :
(
˛˛: ;
$str
˛˛; M
)
˛˛M N
;
˛˛N O
if
ˇˇ 
(
ˇˇ 
publishedUtc
ˇˇ 
==
ˇˇ 
null
ˇˇ  $
)
ˇˇ$ %
{
ÄÄ 
publishedUtc
ÇÇ 
=
ÇÇ 
content
ÇÇ &
.
ÇÇ& '
Optional
ÇÇ' /
<
ÇÇ/ 0
DateTime
ÇÇ0 8
?
ÇÇ8 9
>
ÇÇ9 :
(
ÇÇ: ;
$str
ÇÇ; H
)
ÇÇH I
;
ÇÇI J
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
publishedUtc
áá 
=
áá 
new
áá "
DateTime
áá# +
(
áá+ ,
publishedUtc
áá, 8
.
áá8 9
Value
áá9 >
.
áá> ?
Ticks
áá? D
,
ááD E
DateTimeKind
ááF R
.
ááR S
Utc
ááS V
)
ááV W
;
ááW X
}
àà 
if
ää 
(
ää 
publish
ää 
&&
ää 
(
ää 
publishedUtc
ää (
==
ää) +
null
ää, 0
||
ää1 3
publishedUtc
ää4 @
<=
ääA C
DateTime
ääD L
.
ääL M
UtcNow
ääM S
)
ääS T
)
ääT U
{
ãã 
await
åå 
_contentManager
åå %
.
åå% &
PublishAsync
åå& 2
(
åå2 3
contentItem
åå3 >
)
åå> ?
;
åå? @
}
çç 
else
éé 
{
èè 
await
êê 
_contentManager
êê %
.
êê% &
SaveDraftAsync
êê& 4
(
êê4 5
contentItem
êê5 @
)
êê@ A
;
êêA B
}
ëë 
if
ìì 
(
ìì 
publishedUtc
ìì 
!=
ìì 
null
ìì  $
)
ìì$ %
{
îî 
contentItem
ïï 
.
ïï 

CreatedUtc
ïï &
=
ïï' (
publishedUtc
ïï) 5
;
ïï5 6
}
ññ 
foreach
òò 
(
òò 
var
òò 
driver
òò 
in
òò  "
drivers
òò# *
)
òò* +
{
ôô 
driver
öö 
.
öö 
Process
öö 
(
öö 
contentItem
öö *
.
öö* +
Id
öö+ -
)
öö- .
;
öö. /
}
õõ 
return
ùù 
true
ùù 
;
ùù 
}
ûû 	
private
†† 
async
†† 
Task
†† 
<
†† 
bool
†† 
>
††  '
MetaWeblogDeletePostAsync
††! :
(
††: ;
string
°° 
contentItemId
°°  
,
°°  !
string
¢¢ 
userName
¢¢ 
,
¢¢ 
string
££ 
password
££ 
,
££ 
IEnumerable
§§ 
<
§§ 
IXmlRpcDriver
§§ %
>
§§% &
drivers
§§' .
)
§§. /
{
•• 	
var
¶¶ 
user
¶¶ 
=
¶¶ 
await
¶¶ 
ValidateUserAsync
¶¶ .
(
¶¶. /
userName
¶¶/ 7
,
¶¶7 8
password
¶¶9 A
)
¶¶A B
;
¶¶B C
var
ßß 
contentItem
ßß 
=
ßß 
await
ßß #
_contentManager
ßß$ 3
.
ßß3 4
GetAsync
ßß4 <
(
ßß< =
contentItemId
ßß= J
,
ßßJ K
VersionOptions
ßßL Z
.
ßßZ [
Latest
ßß[ a
)
ßßa b
;
ßßb c
if
®® 
(
®® 
contentItem
®® 
==
®® 
null
®® #
)
®®# $
{
©© 
throw
™™ 
new
™™ 
ArgumentException
™™ +
(
™™+ ,
)
™™, -
;
™™- .
}
´´ 
if
≠≠ 
(
≠≠ 
!
≠≠ 
await
≠≠ #
_authorizationService
≠≠ ,
.
≠≠, -
AuthorizeAsync
≠≠- ;
(
≠≠; <
user
≠≠< @
,
≠≠@ A
CommonPermissions
≠≠B S
.
≠≠S T
DeleteContent
≠≠T a
,
≠≠a b
contentItem
≠≠c n
)
≠≠n o
)
≠≠o p
{
ÆÆ 
throw
ØØ 
new
ØØ '
InvalidOperationException
ØØ 3
(
ØØ3 4
S
ØØ4 5
[
ØØ5 6
$str
ØØ6 ]
]
ØØ] ^
.
ØØ^ _
Value
ØØ_ d
)
ØØd e
;
ØØe f
}
∞∞ 
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
driver
≤≤ 
in
≤≤  "
drivers
≤≤# *
)
≤≤* +
{
≥≥ 
driver
¥¥ 
.
¥¥ 
Process
¥¥ 
(
¥¥ 
contentItem
¥¥ *
.
¥¥* +
ContentItemId
¥¥+ 8
)
¥¥8 9
;
¥¥9 :
}
µµ 
await
∑∑ 
_contentManager
∑∑ !
.
∑∑! "
RemoveAsync
∑∑" -
(
∑∑- .
contentItem
∑∑. 9
)
∑∑9 :
;
∑∑: ;
return
∏∏ 
true
∏∏ 
;
∏∏ 
}
ππ 	
private
ªª 
async
ªª 
Task
ªª 
<
ªª 
ClaimsPrincipal
ªª *
>
ªª* +
ValidateUserAsync
ªª, =
(
ªª= >
string
ªª> D
userName
ªªE M
,
ªªM N
string
ªªO U
password
ªªV ^
)
ªª^ _
{
ºº 	
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
await
ΩΩ  
_membershipService
ΩΩ )
.
ΩΩ) * 
CheckPasswordAsync
ΩΩ* <
(
ΩΩ< =
userName
ΩΩ= E
,
ΩΩE F
password
ΩΩG O
)
ΩΩO P
)
ΩΩP Q
{
ææ 
throw
øø 
new
øø '
InvalidOperationException
øø 3
(
øø3 4
S
øø4 5
[
øø5 6
$str
øø6 q
]
øøq r
.
øør s
Value
øøs x
)
øøx y
;
øøy z
}
¿¿ 
var
¬¬ 
	storeUser
¬¬ 
=
¬¬ 
await
¬¬ ! 
_membershipService
¬¬" 4
.
¬¬4 5
GetUserAsync
¬¬5 A
(
¬¬A B
userName
¬¬B J
)
¬¬J K
;
¬¬K L
if
ƒƒ 
(
ƒƒ 
	storeUser
ƒƒ 
==
ƒƒ 
null
ƒƒ !
)
ƒƒ! "
{
≈≈ 
return
∆∆ 
null
∆∆ 
;
∆∆ 
}
«« 
return
…… 
await
……  
_membershipService
…… +
.
……+ ,#
CreateClaimsPrincipal
……, A
(
……A B
	storeUser
……B K
)
……K L
;
……L M
}
   	
private
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 

XRpcStruct
ÃÃ %
>
ÃÃ% &#
CreateBlogStructAsync
ÃÃ' <
(
ÃÃ< =
XmlRpcContext
ÃÃ= J
context
ÃÃK R
,
ÃÃR S
ContentItem
ÃÃT _
contentItem
ÃÃ` k
)
ÃÃk l
{
ÕÕ 	
var
ŒŒ 
metadata
ŒŒ 
=
ŒŒ 
await
ŒŒ  
_contentManager
ŒŒ! 0
.
ŒŒ0 1!
PopulateAspectAsync
ŒŒ1 D
<
ŒŒD E!
ContentItemMetadata
ŒŒE X
>
ŒŒX Y
(
ŒŒY Z
contentItem
ŒŒZ e
)
ŒŒe f
;
ŒŒf g
var
–– 
url
–– 
=
–– 
context
–– 
.
–– 
Url
–– !
.
––! "
Action
––" (
(
––( )
metadata
—— 
.
——  
DisplayRouteValues
—— +
[
——+ ,
$str
——, 4
]
——4 5
.
——5 6
ToString
——6 >
(
——> ?
)
——? @
,
——@ A
metadata
““ 
.
““  
DisplayRouteValues
““ +
[
““+ ,
$str
““, 8
]
““8 9
.
““9 :
ToString
““: B
(
““B C
)
““C D
,
““D E
metadata
”” 
.
””  
DisplayRouteValues
”” +
,
””+ ,
context
‘‘ 
.
‘‘ 
HttpContext
‘‘ #
.
‘‘# $
Request
‘‘$ +
.
‘‘+ ,
Scheme
‘‘, 2
)
‘‘2 3
;
‘‘3 4
if
÷÷ 
(
÷÷ 
contentItem
÷÷ 
.
÷÷ 
HasDraft
÷÷ $
(
÷÷$ %
)
÷÷% &
)
÷÷& '
{
◊◊ 
url
ÿÿ 
=
ÿÿ 
context
ÿÿ 
.
ÿÿ 
Url
ÿÿ !
.
ÿÿ! "
Action
ÿÿ" (
(
ÿÿ( )
$str
ÿÿ) 2
,
ÿÿ2 3
$str
ÿÿ4 :
,
ÿÿ: ;
new
ÿÿ< ?
{
ÿÿ@ A
area
ÿÿB F
=
ÿÿG H
$str
ÿÿI _
,
ÿÿ_ `
contentItemId
ÿÿa n
=
ÿÿo p
contentItem
ÿÿq |
.
ÿÿ| }
ContentItemIdÿÿ} ä
}ÿÿã å
)ÿÿå ç
;ÿÿç é
}
ŸŸ 
var
€€ 

blogStruct
€€ 
=
€€ 
new
€€  

XRpcStruct
€€! +
(
€€+ ,
)
€€, -
.
‹‹ 
Set
‹‹ 
(
‹‹ 
$str
‹‹ 
,
‹‹ 
contentItem
‹‹ *
.
‹‹* +
ContentItemId
‹‹+ 8
)
‹‹8 9
.
›› 
Set
›› 
(
›› 
$str
›› 
,
›› 
url
››  
)
››  !
.
ﬁﬁ 
Set
ﬁﬁ 
(
ﬁﬁ 
$str
ﬁﬁ  
,
ﬁﬁ  !
url
ﬁﬁ" %
)
ﬁﬁ% &
;
ﬁﬁ& '
if
‡‡ 
(
‡‡ 
contentItem
‡‡ 
.
‡‡ 
PublishedUtc
‡‡ (
!=
‡‡) +
null
‡‡, 0
)
‡‡0 1
{
·· 

blogStruct
‚‚ 
.
‚‚ 
Set
‚‚ 
(
‚‚ 
$str
‚‚ ,
,
‚‚, -
contentItem
‚‚. 9
.
‚‚9 :
PublishedUtc
‚‚: F
)
‚‚F G
;
‚‚G H

blogStruct
„„ 
.
„„ 
Set
„„ 
(
„„ 
$str
„„ 1
,
„„1 2
contentItem
„„3 >
.
„„> ?
PublishedUtc
„„? K
)
„„K L
;
„„L M
}
‰‰ 
foreach
ÊÊ 
(
ÊÊ 
var
ÊÊ 
driver
ÊÊ 
in
ÊÊ  " 
_metaWeblogDrivers
ÊÊ# 5
)
ÊÊ5 6
{
ÁÁ 
driver
ËË 
.
ËË 
	BuildPost
ËË  
(
ËË  !

blogStruct
ËË! +
,
ËË+ ,
context
ËË- 4
,
ËË4 5
contentItem
ËË6 A
)
ËËA B
;
ËËB C
}
ÈÈ 
return
ÎÎ 

blogStruct
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
private
ÓÓ 
async
ÓÓ 
Task
ÓÓ 
CheckAccessAsync
ÓÓ +
(
ÓÓ+ ,

Permission
ÓÓ, 6

permission
ÓÓ7 A
,
ÓÓA B
ClaimsPrincipal
ÓÓC R
user
ÓÓS W
,
ÓÓW X
ContentItem
ÓÓY d
contentItem
ÓÓe p
)
ÓÓp q
{
ÔÔ 	
if
 
(
 
!
 
await
 #
_authorizationService
 ,
.
, -
AuthorizeAsync
- ;
(
; <
user
< @
,
@ A

permission
B L
,
L M
contentItem
N Y
)
Y Z
)
Z [
{
ÒÒ 
throw
ÚÚ 
new
ÚÚ '
InvalidOperationException
ÚÚ 3
(
ÚÚ3 4
S
ÚÚ4 5
[
ÚÚ5 6
$str
ÚÚ6 ]
]
ÚÚ] ^
.
ÚÚ^ _
Value
ÚÚ_ d
)
ÚÚd e
;
ÚÚe f
}
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
IEnumerable
ˆˆ 
<
ˆˆ #
ContentTypeDefinition
ˆˆ 1
>
ˆˆ1 2&
GetContainedContentTypes
ˆˆ3 K
(
ˆˆK L
ContentItem
ˆˆL W
contentItem
ˆˆX c
)
ˆˆc d
{
˜˜ 	
var
¯¯ #
contentTypeDefinition
¯¯ %
=
¯¯& ''
_contentDefinitionManager
¯¯( A
.
¯¯A B
GetTypeDefinition
¯¯B S
(
¯¯S T
contentItem
¯¯T _
.
¯¯_ `
ContentType
¯¯` k
)
¯¯k l
;
¯¯l m
var
˘˘ '
contentTypePartDefinition
˘˘ )
=
˘˘* +#
contentTypeDefinition
˘˘, A
.
˘˘A B
Parts
˘˘B G
.
˘˘G H
FirstOrDefault
˘˘H V
(
˘˘V W
x
˘˘W X
=>
˘˘Y [
String
˘˘\ b
.
˘˘b c
Equals
˘˘c i
(
˘˘i j
x
˘˘j k
.
˘˘k l
PartDefinition
˘˘l z
.
˘˘z {
Name
˘˘{ 
,˘˘ Ä
$str˘˘Å ã
)˘˘ã å
)˘˘å ç
;˘˘ç é
var
˙˙ 
settings
˙˙ 
=
˙˙ '
contentTypePartDefinition
˙˙ 4
.
˙˙4 5
GetSettings
˙˙5 @
<
˙˙@ A
ListPartSettings
˙˙A Q
>
˙˙Q R
(
˙˙R S
)
˙˙S T
;
˙˙T U
var
˚˚ 
contentTypes
˚˚ 
=
˚˚ 
settings
˚˚ '
.
˚˚' (#
ContainedContentTypes
˚˚( =
??
˚˚> @

Enumerable
˚˚A K
.
˚˚K L
Empty
˚˚L Q
<
˚˚Q R
string
˚˚R X
>
˚˚X Y
(
˚˚Y Z
)
˚˚Z [
;
˚˚[ \
return
¸¸ 
contentTypes
¸¸ 
.
¸¸  
Select
¸¸  &
(
¸¸& '
contentType
¸¸' 2
=>
¸¸3 5'
_contentDefinitionManager
¸¸6 O
.
¸¸O P
GetTypeDefinition
¸¸P a
(
¸¸a b
contentType
¸¸b m
)
¸¸m n
)
¸¸n o
;
¸¸o p
}
˝˝ 	
}
˛˛ 
}ˇˇ “
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\RemotePublishing\Startup.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
RemotePublishing ,
{ 
[ 
RequireFeatures 
( 
$str 3
)3 4
]4 5
public 

class #
RemotePublishingStartup (
:) *
StartupBase+ 6
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
< 
IXmlRpcHandler -
,- .
MetaWeblogHandler/ @
>@ A
(A B
)B C
;C D
services 
. 
AddContentPart #
<# $
ListPart$ ,
>, -
(- .
). /
. 
UseDisplayDriver !
<! " 
ListMetaWeblogDriver" 6
>6 7
(7 8
)8 9
;9 :
} 	
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
routes 
. "
MapAreaControllerRoute )
() *
name 
: 
$str 
, 
areaName 
: 
$str -
,- .
pattern 
: 
$str @
,@ A
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- ?
,? @
actionA G
=H I
$strJ O
}P Q
) 
; 
} 	
}   
}!! …¢
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Services\ContainerService.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Services $
{ 
public 

class 
ContainerService !
:" #
IContainerService$ 5
{ 
private 
readonly 
YesSql 
.  
ISession  (
_session) 1
;1 2
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
ContainerService 
(  
YesSql 
. 
ISession 
session #
,# $
IContentManager 
contentManager *
,* + 
IHttpContextAccessor  
httpContextAccessor! 4
)4 5
{ 	
_session 
= 
session 
; 
_contentManager 
= 
contentManager ,
;, - 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
}   	
public"" 
async"" 
Task"" 
<"" 
int"" 
>"" #
GetNextOrderNumberAsync"" 6
(""6 7
string""7 =
contentItemId""> K
)""K L
{## 	
var$$ 
index$$ 
=$$ 
await$$ 
_session$$ &
.$$& '

QueryIndex$$' 1
<$$1 2
ContainedPartIndex$$2 D
>$$D E
($$E F
x$$F G
=>$$H J
x$$K L
.$$L M
ListContentItemId$$M ^
==$$_ a
contentItemId$$b o
)$$o p
.%% 
OrderByDescending%% "
(%%" #
x%%# $
=>%%% '
x%%( )
.%%) *
Order%%* /
)%%/ 0
.&& 
FirstOrDefaultAsync&& $
(&&$ %
)&&% &
;&&& '
if(( 
((( 
index(( 
!=(( 
null(( 
)(( 
{)) 
return** 
index** 
.** 
Order** "
+**# $
$num**% &
;**& '
}++ 
else,, 
{-- 
return.. 
$num.. 
;.. 
}// 
}00 	
public22 
async22 
Task22 (
UpdateContentItemOrdersAsync22 6
(226 7
IEnumerable227 B
<22B C
ContentItem22C N
>22N O
contentItems22P \
,22\ ]
int22^ a
orderOfFirstItem22b r
)22r s
{33 	
var44 
i44 
=44 
$num44 
;44 
foreach55 
(55 
var55 
contentItem55 $
in55% '
contentItems55( 4
)554 5
{66 
var77 
containedPart77 !
=77" #
contentItem77$ /
.77/ 0
As770 2
<772 3
ContainedPart773 @
>77@ A
(77A B
)77B C
;77C D
if88 
(88 
containedPart88 !
!=88" $
null88% )
&&88* ,
containedPart88- :
.88: ;
Order88; @
!=88A C
orderOfFirstItem88D T
+88U V
i88W X
)88X Y
{99 
containedPart:: !
.::! "
Order::" '
=::( )
orderOfFirstItem::* :
+::; <
i::= >
;::> ?
containedPart;; !
.;;! "
Apply;;" '
(;;' (
);;( )
;;;) *
if>> 
(>> 
!>> 
contentItem>> $
.>>$ %
IsPublished>>% 0
(>>0 1
)>>1 2
)>>2 3
{?? 
var@@ 
publishedItem@@ )
=@@* +
await@@, 1
_contentManager@@2 A
.@@A B
GetAsync@@B J
(@@J K
contentItem@@K V
.@@V W
ContentItemId@@W d
,@@d e
VersionOptions@@f t
.@@t u
	Published@@u ~
)@@~ 
;	@@ Ä
ifAA 
(AA 
publishedItemAA )
!=AA* ,
nullAA- 1
)AA1 2
{BB 
publishedItemCC )
.CC) *
AlterCC* /
<CC/ 0
ContainedPartCC0 =
>CC= >
(CC> ?
xCC? @
=>CCA C
xCCD E
.CCE F
OrderCCF K
=CCL M
orderOfFirstItemCCN ^
+CC_ `
iCCa b
)CCb c
;CCc d
awaitDD !
_contentManagerDD" 1
.DD1 2
UpdateAsyncDD2 =
(DD= >
publishedItemDD> K
)DDK L
;DDL M
}EE 
}FF 
awaitHH 
_contentManagerHH )
.HH) *
UpdateAsyncHH* 5
(HH5 6
contentItemHH6 A
)HHA B
;HHB C
}II 
iKK 
++KK 
;KK 
}LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
SetInitialOrderOO )
(OO) *
stringOO* 0
contentTypeOO1 <
)OO< =
{PP 	
varRR %
contanerContentItemsQueryRR )
=RR* +
_sessionRR, 4
.RR4 5

QueryIndexRR5 ?
<RR? @
ContentItemIndexRR@ P
>RRP Q
(RRQ R
xRRR S
=>RRT V
xRRW X
.RRX Y
ContentTypeRRY d
==RRe g
contentTypeRRh s
&&RRt v
(RRw x
xRRx y
.RRy z
	Published	RRz É
||
RRÑ Ü
x
RRá à
.
RRà â
Latest
RRâ è
)
RRè ê
)
RRê ë
;
RRë í
varSS !
containerContentItemsSS %
=SS& '
awaitSS( -%
contanerContentItemsQuerySS. G
.SSG H
	ListAsyncSSH Q
(SSQ R
)SSR S
;SSS T
ifUU 
(UU 
!UU !
containerContentItemsUU &
.UU& '
AnyUU' *
(UU* +
)UU+ ,
)UU, -
{VV 
returnWW 
;WW 
}XX 
var[[ #
containerContentItemIds[[ '
=[[( )!
containerContentItems[[* ?
.[[? @
Select[[@ F
([[F G
x[[G H
=>[[I K
x[[L M
.[[M N
ContentItemId[[N [
)[[[ \
.[[\ ]
Distinct[[] e
([[e f
)[[f g
;[[g h
var]] 
containedItemsQuery]] #
=]]$ %
_session]]& .
.]]. /
Query]]/ 4
<]]4 5
ContentItem]]5 @
>]]@ A
(]]A B
)]]B C
.^^ 
With^^ 
<^^ 
ContainedPartIndex^^ (
>^^( )
(^^) *
x^^* +
=>^^, .
x^^/ 0
.^^0 1
ListContentItemId^^1 B
.^^B C
IsIn^^C G
(^^G H#
containerContentItemIds^^H _
)^^_ `
)^^` a
.__ 
With__ 
<__ 
ContentItemIndex__ &
>__& '
(__' (
ci__( *
=>__+ -
ci__. 0
.__0 1
Latest__1 7
||__8 :
ci__; =
.__= >
	Published__> G
)__G H
.`` 
OrderByDescending`` "
(``" #
x``# $
=>``% '
x``( )
.``) *

CreatedUtc``* 4
)``4 5
;``5 6
varbb 
contentItemGroupsbb !
=bb" #
(bb$ %
awaitbb% *
containedItemsQuerybb+ >
.bb> ?
	ListAsyncbb? H
(bbH I
)bbI J
)bbJ K
.bbK L
ToLookupbbL T
(bbT U
lbbU V
=>bbW Y
lbbZ [
.bb[ \
Asbb\ ^
<bb^ _
ContainedPartbb_ l
>bbl m
(bbm n
)bbn o
?bbo p
.bbp q
ListContentItemId	bbq Ç
)
bbÇ É
;
bbÉ Ñ
foreachdd 
(dd 
vardd 
contentItemGroupdd )
indd* ,
contentItemGroupsdd- >
)dd> ?
{ee 
varff 
iff 
=ff 
$numff 
;ff 
foreachgg 
(gg 
vargg 
contentItemgg (
ingg) +
contentItemGroupgg, <
)gg< =
{hh 
varii 
containedPartii %
=ii& '
contentItemii( 3
.ii3 4
Asii4 6
<ii6 7
ContainedPartii7 D
>iiD E
(iiE F
)iiF G
;iiG H
ifjj 
(jj 
containedPartjj %
!=jj& (
nulljj) -
)jj- .
{kk 
ifll 
(ll 
contentItemll '
.ll' (
	Publishedll( 1
&&ll2 4
contentItemll5 @
.ll@ A
LatestllA G
)llG H
{mm 
containedPartnn )
.nn) *
Ordernn* /
=nn0 1
inn2 3
;nn3 4
containedPartoo )
.oo) *
Applyoo* /
(oo/ 0
)oo0 1
;oo1 2
}pp 
elseqq 
ifqq 
(qq  !
contentItemqq! ,
.qq, -
Latestqq- 3
&&qq4 6
!qq7 8
contentItemqq8 C
.qqC D
	PublishedqqD M
)qqM N
{rr 
containedParttt )
.tt) *
Ordertt* /
=tt0 1
itt2 3
;tt3 4
containedPartuu )
.uu) *
Applyuu* /
(uu/ 0
)uu0 1
;uu1 2
varxx 
publishedItemxx  -
=xx. /
contentItemGroupxx0 @
.xx@ A
FirstOrDefaultxxA O
(xxO P
pxxP Q
=>xxR T
pxxU V
.xxV W
	PublishedxxW `
==xxa c
truexxd h
&&xxi k
pxxl m
.xxm n
ContentItemIdxxn {
==xx| ~
contentItem	xx ä
.
xxä ã
ContentItemId
xxã ò
)
xxò ô
;
xxô ö
varyy "
publishedContainedPartyy  6
=yy7 8
publishedItemyy9 F
?yyF G
.yyG H
AsyyH J
<yyJ K
ContainedPartyyK X
>yyX Y
(yyY Z
)yyZ [
;yy[ \
ifzz 
(zz  "
publishedContainedPartzz  6
!=zz7 9
nullzz: >
)zz> ?
{{{ "
publishedContainedPart||  6
.||6 7
Order||7 <
=||= >
i||? @
;||@ A"
publishedContainedPart}}  6
.}}6 7
Apply}}7 <
(}}< =
)}}= >
;}}> ?
}~~ 
} 
else
ÄÄ 
if
ÄÄ 
(
ÄÄ  !
contentItem
ÄÄ! ,
.
ÄÄ, -
	Published
ÄÄ- 6
&&
ÄÄ7 9
!
ÄÄ: ;
contentItem
ÄÄ; F
.
ÄÄF G
Latest
ÄÄG M
)
ÄÄM N
{
ÅÅ 
var
ÉÉ 

latestItem
ÉÉ  *
=
ÉÉ+ ,
contentItemGroup
ÉÉ- =
.
ÉÉ= >
FirstOrDefault
ÉÉ> L
(
ÉÉL M
l
ÉÉM N
=>
ÉÉO Q
l
ÉÉR S
.
ÉÉS T
Latest
ÉÉT Z
==
ÉÉ[ ]
true
ÉÉ^ b
&&
ÉÉc e
l
ÉÉf g
.
ÉÉg h
ContentItemId
ÉÉh u
==
ÉÉv x
contentItemÉÉy Ñ
.ÉÉÑ Ö
ContentItemIdÉÉÖ í
)ÉÉí ì
;ÉÉì î
if
ÑÑ 
(
ÑÑ  

latestItem
ÑÑ  *
==
ÑÑ+ -
null
ÑÑ. 2
)
ÑÑ2 3
{
ÖÖ 
containedPart
áá  -
.
áá- .
Order
áá. 3
=
áá4 5
i
áá6 7
;
áá7 8
containedPart
àà  -
.
àà- .
Apply
àà. 3
(
àà3 4
)
àà4 5
;
àà5 6
}
ââ 
else
ää  
{
ãã 
continue
çç  (
;
çç( )
}
éé 
}
èè 
_session
ëë  
.
ëë  !
Save
ëë! %
(
ëë% &
contentItem
ëë& 1
)
ëë1 2
;
ëë2 3
}
íí 
i
îî 
++
îî 
;
îî 
}
ïï 
}
ññ 
}
óó 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
IEnumerable
ôô %
<
ôô% &
ContentItem
ôô& 1
>
ôô1 2
>
ôô2 3&
QueryContainedItemsAsync
ôô4 L
(
ôôL M
string
öö 
contentItemId
öö  
,
öö  !
bool
õõ 
enableOrdering
õõ 
,
õõ  
	PagerSlim
úú 
pager
úú 
,
úú "
ContainedItemOptions
ùù  "
containedItemOptions
ùù! 5
)
ùù5 6
{
ûû 	
if
üü 
(
üü "
containedItemOptions
üü $
==
üü% '
null
üü( ,
)
üü, -
{
†† 
throw
°° 
new
°° #
ArgumentNullException
°° /
(
°°/ 0
nameof
°°0 6
(
°°6 7"
containedItemOptions
°°7 K
)
°°K L
)
°°L M
;
°°M N
}
¢¢ 
IQuery
§§ 
<
§§ 
ContentItem
§§ 
>
§§ 
query
§§  %
=
§§& '
null
§§( ,
;
§§, -
if
•• 
(
•• 
pager
•• 
.
•• 
Before
•• 
!=
•• 
null
••  $
)
••$ %
{
¶¶ 
if
ßß 
(
ßß 
enableOrdering
ßß "
)
ßß" #
{
®® 
var
©© 
beforeValue
©© #
=
©©$ %
int
©©& )
.
©©) *
Parse
©©* /
(
©©/ 0
pager
©©0 5
.
©©5 6
Before
©©6 <
)
©©< =
;
©©= >
query
™™ 
=
™™ 
_session
™™ $
.
™™$ %
Query
™™% *
<
™™* +
ContentItem
™™+ 6
>
™™6 7
(
™™7 8
)
™™8 9
.
´´ 
With
´´ 
(
´´ 3
%CreateOrderedContainedPartIndexFilter
´´ C
(
´´C D
beforeValue
´´D O
,
´´O P
null
´´Q U
,
´´U V
contentItemId
´´W d
)
´´d e
)
´´e f
.
¨¨ 
OrderByDescending
¨¨ *
(
¨¨* +
x
¨¨+ ,
=>
¨¨- /
x
¨¨0 1
.
¨¨1 2
Order
¨¨2 7
)
¨¨7 8
;
¨¨8 9
}
≠≠ 
else
ÆÆ 
{
ØØ 
var
∞∞ 
beforeValue
∞∞ #
=
∞∞$ %
new
∞∞& )
DateTime
∞∞* 2
(
∞∞2 3
long
∞∞3 7
.
∞∞7 8
Parse
∞∞8 =
(
∞∞= >
pager
∞∞> C
.
∞∞C D
Before
∞∞D J
)
∞∞J K
)
∞∞K L
;
∞∞L M
query
±± 
=
±± 
_session
±± $
.
±±$ %
Query
±±% *
<
±±* +
ContentItem
±±+ 6
>
±±6 7
(
±±7 8
)
±±8 9
.
≤≤ 
With
≤≤ 
<
≤≤  
ContainedPartIndex
≤≤ 0
>
≤≤0 1
(
≤≤1 2
x
≤≤2 3
=>
≤≤4 6
x
≤≤7 8
.
≤≤8 9
ListContentItemId
≤≤9 J
==
≤≤K M
contentItemId
≤≤N [
)
≤≤[ \
;
≤≤\ ]+
ApplyPagingContentIndexFilter
¥¥ 1
(
¥¥1 2
beforeValue
¥¥2 =
,
¥¥= >
null
¥¥? C
,
¥¥C D
true
¥¥E I
,
¥¥I J
query
¥¥K P
)
¥¥P Q
;
¥¥Q R
}
µµ -
ApplyContainedItemOptionsFilter
∑∑ /
(
∑∑/ 0"
containedItemOptions
∑∑0 D
,
∑∑D E
query
∑∑F K
)
∑∑K L
;
∑∑L M
query
ªª 
.
ªª 
Take
ªª 
(
ªª 
pager
ªª  
.
ªª  !
PageSize
ªª! )
+
ªª* +
$num
ªª, -
)
ªª- .
;
ªª. /
var
ΩΩ 
containedItems
ΩΩ "
=
ΩΩ# $
await
ΩΩ% *
query
ΩΩ+ 0
.
ΩΩ0 1
	ListAsync
ΩΩ1 :
(
ΩΩ: ;
)
ΩΩ; <
;
ΩΩ< =
if
øø 
(
øø 
!
øø 
containedItems
øø #
.
øø# $
Any
øø$ '
(
øø' (
)
øø( )
)
øø) *
{
¿¿ 
return
¡¡ 
containedItems
¡¡ )
;
¡¡) *
}
¬¬ 
containedItems
ƒƒ 
=
ƒƒ  
containedItems
ƒƒ! /
.
ƒƒ/ 0
Reverse
ƒƒ0 7
(
ƒƒ7 8
)
ƒƒ8 9
;
ƒƒ9 :
pager
«« 
.
«« 
Before
«« 
=
«« 
null
«« #
;
««# $
if
»» 
(
»» 
enableOrdering
»» "
)
»»" #
{
…… 
pager
   
.
   
After
   
=
    !
containedItems
  " 0
.
  0 1
Last
  1 5
(
  5 6
)
  6 7
.
  7 8
As
  8 :
<
  : ;
ContainedPart
  ; H
>
  H I
(
  I J
)
  J K
.
  K L
Order
  L Q
.
  Q R
ToString
  R Z
(
  Z [
)
  [ \
;
  \ ]
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
pager
ŒŒ 
.
ŒŒ 
After
ŒŒ 
=
ŒŒ  !
containedItems
ŒŒ" 0
.
ŒŒ0 1
Last
ŒŒ1 5
(
ŒŒ5 6
)
ŒŒ6 7
.
ŒŒ7 8

CreatedUtc
ŒŒ8 B
.
ŒŒB C
Value
ŒŒC H
.
ŒŒH I
Ticks
ŒŒI N
.
ŒŒN O
ToString
ŒŒO W
(
ŒŒW X
)
ŒŒX Y
;
ŒŒY Z
}
œœ 
if
–– 
(
–– 
containedItems
–– "
.
––" #
Count
––# (
(
––( )
)
––) *
==
––+ -
pager
––. 3
.
––3 4
PageSize
––4 <
+
––= >
$num
––? @
)
––@ A
{
—— 
containedItems
““ "
=
““# $
containedItems
““% 3
.
““3 4
Skip
““4 8
(
““8 9
$num
““9 :
)
““: ;
;
““; <
if
”” 
(
”” 
enableOrdering
”” &
)
””& '
{
‘‘ 
pager
’’ 
.
’’ 
Before
’’ $
=
’’% &
containedItems
’’' 5
.
’’5 6
First
’’6 ;
(
’’; <
)
’’< =
.
’’= >
As
’’> @
<
’’@ A
ContainedPart
’’A N
>
’’N O
(
’’O P
)
’’P Q
.
’’Q R
Order
’’R W
.
’’W X
ToString
’’X `
(
’’` a
)
’’a b
;
’’b c
}
÷÷ 
else
◊◊ 
{
ÿÿ 
pager
ŸŸ 
.
ŸŸ 
Before
ŸŸ $
=
ŸŸ% &
containedItems
ŸŸ' 5
.
ŸŸ5 6
First
ŸŸ6 ;
(
ŸŸ; <
)
ŸŸ< =
.
ŸŸ= >

CreatedUtc
ŸŸ> H
.
ŸŸH I
Value
ŸŸI N
.
ŸŸN O
Ticks
ŸŸO T
.
ŸŸT U
ToString
ŸŸU ]
(
ŸŸ] ^
)
ŸŸ^ _
;
ŸŸ_ `
}
⁄⁄ 
}
€€ 
return
›› 
containedItems
›› %
;
››% &
}
ﬁﬁ 
else
ﬂﬂ 
if
ﬂﬂ 
(
ﬂﬂ 
pager
ﬂﬂ 
.
ﬂﬂ 
After
ﬂﬂ  
!=
ﬂﬂ! #
null
ﬂﬂ$ (
)
ﬂﬂ( )
{
‡‡ 
if
·· 
(
·· 
enableOrdering
·· "
)
··" #
{
‚‚ 
var
„„ 

afterValue
„„ "
=
„„# $
int
„„% (
.
„„( )
Parse
„„) .
(
„„. /
pager
„„/ 4
.
„„4 5
After
„„5 :
)
„„: ;
;
„„; <
query
‰‰ 
=
‰‰ 
_session
‰‰ $
.
‰‰$ %
Query
‰‰% *
<
‰‰* +
ContentItem
‰‰+ 6
>
‰‰6 7
(
‰‰7 8
)
‰‰8 9
.
ÂÂ 
With
ÂÂ 
(
ÂÂ 3
%CreateOrderedContainedPartIndexFilter
ÂÂ C
(
ÂÂC D
null
ÂÂD H
,
ÂÂH I

afterValue
ÂÂJ T
,
ÂÂT U
contentItemId
ÂÂV c
)
ÂÂc d
)
ÂÂd e
.
ÊÊ 
OrderBy
ÊÊ  
(
ÊÊ  !
x
ÊÊ! "
=>
ÊÊ# %
x
ÊÊ& '
.
ÊÊ' (
Order
ÊÊ( -
)
ÊÊ- .
;
ÊÊ. /
}
ÁÁ 
else
ËË 
{
ÈÈ 
var
ÍÍ 

afterValue
ÍÍ "
=
ÍÍ# $
new
ÍÍ% (
DateTime
ÍÍ) 1
(
ÍÍ1 2
long
ÍÍ2 6
.
ÍÍ6 7
Parse
ÍÍ7 <
(
ÍÍ< =
pager
ÍÍ= B
.
ÍÍB C
After
ÍÍC H
)
ÍÍH I
)
ÍÍI J
;
ÍÍJ K
query
ÎÎ 
=
ÎÎ 
_session
ÎÎ $
.
ÎÎ$ %
Query
ÎÎ% *
<
ÎÎ* +
ContentItem
ÎÎ+ 6
>
ÎÎ6 7
(
ÎÎ7 8
)
ÎÎ8 9
.
ÏÏ 
With
ÏÏ 
(
ÏÏ 3
%CreateOrderedContainedPartIndexFilter
ÏÏ C
(
ÏÏC D
null
ÏÏD H
,
ÏÏH I
null
ÏÏJ N
,
ÏÏN O
contentItemId
ÏÏP ]
)
ÏÏ] ^
)
ÏÏ^ _
;
ÏÏ_ `+
ApplyPagingContentIndexFilter
ÓÓ 1
(
ÓÓ1 2
null
ÓÓ2 6
,
ÓÓ6 7

afterValue
ÓÓ8 B
,
ÓÓB C
false
ÓÓD I
,
ÓÓI J
query
ÓÓK P
)
ÓÓP Q
;
ÓÓQ R
}
ÔÔ -
ApplyContainedItemOptionsFilter
ÒÒ /
(
ÒÒ/ 0"
containedItemOptions
ÒÒ0 D
,
ÒÒD E
query
ÒÒF K
)
ÒÒK L
;
ÒÒL M
query
ÛÛ 
.
ÛÛ 
Take
ÛÛ 
(
ÛÛ 
pager
ÛÛ  
.
ÛÛ  !
PageSize
ÛÛ! )
+
ÛÛ* +
$num
ÛÛ, -
)
ÛÛ- .
;
ÛÛ. /
var
ıı 
containedItems
ıı "
=
ıı# $
await
ıı% *
query
ıı+ 0
.
ıı0 1
	ListAsync
ıı1 :
(
ıı: ;
)
ıı; <
;
ıı< =
if
˜˜ 
(
˜˜ 
!
˜˜ 
containedItems
˜˜ #
.
˜˜# $
Any
˜˜$ '
(
˜˜' (
)
˜˜( )
)
˜˜) *
{
¯¯ 
return
˘˘ 
containedItems
˘˘ )
;
˘˘) *
}
˙˙ 
if
˝˝ 
(
˝˝ 
enableOrdering
˝˝ "
)
˝˝" #
{
˛˛ 
pager
ˇˇ 
.
ˇˇ 
Before
ˇˇ  
=
ˇˇ! "
containedItems
ˇˇ# 1
.
ˇˇ1 2
First
ˇˇ2 7
(
ˇˇ7 8
)
ˇˇ8 9
.
ˇˇ9 :
As
ˇˇ: <
<
ˇˇ< =
ContainedPart
ˇˇ= J
>
ˇˇJ K
(
ˇˇK L
)
ˇˇL M
.
ˇˇM N
Order
ˇˇN S
.
ˇˇS T
ToString
ˇˇT \
(
ˇˇ\ ]
)
ˇˇ] ^
;
ˇˇ^ _
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
pager
ÉÉ 
.
ÉÉ 
Before
ÉÉ  
=
ÉÉ! "
containedItems
ÉÉ# 1
.
ÉÉ1 2
First
ÉÉ2 7
(
ÉÉ7 8
)
ÉÉ8 9
.
ÉÉ9 :

CreatedUtc
ÉÉ: D
.
ÉÉD E
Value
ÉÉE J
.
ÉÉJ K
Ticks
ÉÉK P
.
ÉÉP Q
ToString
ÉÉQ Y
(
ÉÉY Z
)
ÉÉZ [
;
ÉÉ[ \
}
ÑÑ 
pager
ÖÖ 
.
ÖÖ 
After
ÖÖ 
=
ÖÖ 
null
ÖÖ "
;
ÖÖ" #
if
áá 
(
áá 
containedItems
áá "
.
áá" #
Count
áá# (
(
áá( )
)
áá) *
==
áá+ -
pager
áá. 3
.
áá3 4
PageSize
áá4 <
+
áá= >
$num
áá? @
)
áá@ A
{
àà 
containedItems
ââ "
=
ââ# $
containedItems
ââ% 3
.
ââ3 4
Take
ââ4 8
(
ââ8 9
pager
ââ9 >
.
ââ> ?
PageSize
ââ? G
)
ââG H
;
ââH I
if
ää 
(
ää 
enableOrdering
ää &
)
ää& '
{
ãã 
pager
åå 
.
åå 
After
åå #
=
åå$ %
containedItems
åå& 4
.
åå4 5
Last
åå5 9
(
åå9 :
)
åå: ;
.
åå; <
As
åå< >
<
åå> ?
ContainedPart
åå? L
>
ååL M
(
ååM N
)
ååN O
.
ååO P
Order
ååP U
.
ååU V
ToString
ååV ^
(
åå^ _
)
åå_ `
;
åå` a
}
çç 
else
éé 
{
èè 
pager
êê 
.
êê 
After
êê #
=
êê$ %
containedItems
êê& 4
.
êê4 5
Last
êê5 9
(
êê9 :
)
êê: ;
.
êê; <

CreatedUtc
êê< F
.
êêF G
Value
êêG L
.
êêL M
Ticks
êêM R
.
êêR S
ToString
êêS [
(
êê[ \
)
êê\ ]
;
êê] ^
}
ëë 
}
íí 
return
îî 
containedItems
îî %
;
îî% &
}
ïï 
else
ññ 
{
óó 
if
òò 
(
òò 
enableOrdering
òò "
)
òò" #
{
ôô 
query
öö 
=
öö 
_session
öö $
.
öö$ %
Query
öö% *
<
öö* +
ContentItem
öö+ 6
>
öö6 7
(
öö7 8
)
öö8 9
.
õõ 
With
õõ 
(
õõ 3
%CreateOrderedContainedPartIndexFilter
õõ C
(
õõC D
null
õõD H
,
õõH I
null
õõJ N
,
õõN O
contentItemId
õõP ]
)
õõ] ^
)
õõ^ _
.
úú 
OrderBy
úú  
(
úú  !
x
úú! "
=>
úú# %
x
úú& '
.
úú' (
Order
úú( -
)
úú- .
;
úú. /
}
ùù 
else
ûû 
{
üü 
query
†† 
=
†† 
_session
†† $
.
††$ %
Query
††% *
<
††* +
ContentItem
††+ 6
>
††6 7
(
††7 8
)
††8 9
.
°° 
With
°° 
<
°°  
ContainedPartIndex
°° 0
>
°°0 1
(
°°1 2
x
°°2 3
=>
°°4 6
x
°°7 8
.
°°8 9
ListContentItemId
°°9 J
==
°°K M
contentItemId
°°N [
)
°°[ \
;
°°\ ]+
ApplyPagingContentIndexFilter
££ 1
(
££1 2
null
££2 6
,
££6 7
null
££8 <
,
££< =
false
££> C
,
££C D
query
££E J
)
££J K
;
££K L
}
§§ -
ApplyContainedItemOptionsFilter
¶¶ /
(
¶¶/ 0"
containedItemOptions
¶¶0 D
,
¶¶D E
query
¶¶F K
)
¶¶K L
;
¶¶L M
query
®® 
.
®® 
Take
®® 
(
®® 
pager
®®  
.
®®  !
PageSize
®®! )
+
®®* +
$num
®®, -
)
®®- .
;
®®. /
var
™™ 
containedItems
™™ "
=
™™# $
await
™™% *
query
™™+ 0
.
™™0 1
	ListAsync
™™1 :
(
™™: ;
)
™™; <
;
™™< =
if
¨¨ 
(
¨¨ 
!
¨¨ 
containedItems
¨¨ #
.
¨¨# $
Any
¨¨$ '
(
¨¨' (
)
¨¨( )
)
¨¨) *
{
≠≠ 
return
ÆÆ 
containedItems
ÆÆ )
;
ÆÆ) *
}
ØØ 
pager
±± 
.
±± 
Before
±± 
=
±± 
null
±± #
;
±±# $
pager
≤≤ 
.
≤≤ 
After
≤≤ 
=
≤≤ 
null
≤≤ "
;
≤≤" #
if
¥¥ 
(
¥¥ 
containedItems
¥¥ "
.
¥¥" #
Count
¥¥# (
(
¥¥( )
)
¥¥) *
==
¥¥+ -
pager
¥¥. 3
.
¥¥3 4
PageSize
¥¥4 <
+
¥¥= >
$num
¥¥? @
)
¥¥@ A
{
µµ 
containedItems
∂∂ "
=
∂∂# $
containedItems
∂∂% 3
.
∂∂3 4
Take
∂∂4 8
(
∂∂8 9
pager
∂∂9 >
.
∂∂> ?
PageSize
∂∂? G
)
∂∂G H
;
∂∂H I
if
∑∑ 
(
∑∑ 
enableOrdering
∑∑ &
)
∑∑& '
{
∏∏ 
pager
ππ 
.
ππ 
After
ππ #
=
ππ$ %
containedItems
ππ& 4
.
ππ4 5
Last
ππ5 9
(
ππ9 :
)
ππ: ;
.
ππ; <
As
ππ< >
<
ππ> ?
ContainedPart
ππ? L
>
ππL M
(
ππM N
)
ππN O
.
ππO P
Order
ππP U
.
ππU V
ToString
ππV ^
(
ππ^ _
)
ππ_ `
;
ππ` a
}
∫∫ 
else
ªª 
{
ºº 
pager
ΩΩ 
.
ΩΩ 
After
ΩΩ #
=
ΩΩ$ %
containedItems
ΩΩ& 4
.
ΩΩ4 5
Last
ΩΩ5 9
(
ΩΩ9 :
)
ΩΩ: ;
.
ΩΩ; <

CreatedUtc
ΩΩ< F
.
ΩΩF G
Value
ΩΩG L
.
ΩΩL M
Ticks
ΩΩM R
.
ΩΩR S
ToString
ΩΩS [
(
ΩΩ[ \
)
ΩΩ\ ]
;
ΩΩ] ^
}
ææ 
}
øø 
return
¡¡ 
containedItems
¡¡ %
;
¡¡% &
}
¬¬ 
}
√√ 	
private
≈≈ 
static
≈≈ 
void
≈≈ +
ApplyPagingContentIndexFilter
≈≈ 9
(
≈≈9 :
DateTime
≈≈: B
?
≈≈B C
before
≈≈D J
,
≈≈J K
DateTime
≈≈L T
?
≈≈T U
after
≈≈V [
,
≈≈[ \
bool
≈≈] a

orderByAsc
≈≈b l
,
≈≈l m
IQuery
≈≈n t
<
≈≈t u
ContentItem≈≈u Ä
>≈≈Ä Å
query≈≈Ç á
)≈≈á à
{
∆∆ 	
var
«« 

indexQuery
«« 
=
«« 
query
«« "
.
««" #
With
««# '
<
««' (
ContentItemIndex
««( 8
>
««8 9
(
««9 :
)
««: ;
;
««; <
if
…… 
(
…… 
before
…… 
!=
…… 
null
…… 
)
…… 
{
   

indexQuery
ÀÀ 
.
ÀÀ 
Where
ÀÀ  
(
ÀÀ  !
i
ÀÀ! "
=>
ÀÀ# %
i
ÀÀ& '
.
ÀÀ' (

CreatedUtc
ÀÀ( 2
>
ÀÀ3 4
before
ÀÀ5 ;
)
ÀÀ; <
;
ÀÀ< =
}
ÃÃ 
if
ŒŒ 
(
ŒŒ 
after
ŒŒ 
!=
ŒŒ 
null
ŒŒ 
)
ŒŒ 
{
œœ 

indexQuery
–– 
.
–– 
Where
––  
(
––  !
i
––! "
=>
––# %
i
––& '
.
––' (

CreatedUtc
––( 2
<
––3 4
after
––5 :
)
––: ;
;
––; <
}
—— 
if
”” 
(
”” 

orderByAsc
”” 
)
”” 
{
‘‘ 

indexQuery
’’ 
.
’’ 
OrderBy
’’ "
(
’’" #
i
’’# $
=>
’’% '
i
’’( )
.
’’) *

CreatedUtc
’’* 4
)
’’4 5
;
’’5 6
}
÷÷ 
else
◊◊ 
{
ÿÿ 

indexQuery
ŸŸ 
.
ŸŸ 
OrderByDescending
ŸŸ ,
(
ŸŸ, -
i
ŸŸ- .
=>
ŸŸ/ 1
i
ŸŸ2 3
.
ŸŸ3 4

CreatedUtc
ŸŸ4 >
)
ŸŸ> ?
;
ŸŸ? @
}
⁄⁄ 
}
€€ 	
private
›› 
void
›› -
ApplyContainedItemOptionsFilter
›› 4
(
››4 5"
ContainedItemOptions
››5 I"
containedItemOptions
››J ^
,
››^ _
IQuery
››` f
<
››f g
ContentItem
››g r
>
››r s
query
››t y
)
››y z
{
ﬁﬁ 	
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
string
ﬂﬂ 
.
ﬂﬂ 
IsNullOrEmpty
ﬂﬂ %
(
ﬂﬂ% &"
containedItemOptions
ﬂﬂ& :
.
ﬂﬂ: ;
DisplayText
ﬂﬂ; F
)
ﬂﬂF G
)
ﬂﬂG H
{
‡‡ 
query
·· 
.
·· 
With
·· 
<
·· 
ContentItemIndex
·· +
>
··+ ,
(
··, -
i
··- .
=>
··/ 1
i
··2 3
.
··3 4
DisplayText
··4 ?
.
··? @
Contains
··@ H
(
··H I"
containedItemOptions
··I ]
.
··] ^
DisplayText
··^ i
)
··i j
)
··j k
;
··k l
}
‚‚ 
switch
‰‰ 
(
‰‰ "
containedItemOptions
‰‰ (
.
‰‰( )
Status
‰‰) /
)
‰‰/ 0
{
ÂÂ 
case
ÊÊ 
ContentsStatus
ÊÊ #
.
ÊÊ# $
	Published
ÊÊ$ -
:
ÊÊ- .
query
ÁÁ 
.
ÁÁ 
With
ÁÁ 
<
ÁÁ 
ContentItemIndex
ÁÁ /
>
ÁÁ/ 0
(
ÁÁ0 1
i
ÁÁ1 2
=>
ÁÁ3 5
i
ÁÁ6 7
.
ÁÁ7 8
	Published
ÁÁ8 A
)
ÁÁA B
;
ÁÁB C
break
ËË 
;
ËË 
case
ÈÈ 
ContentsStatus
ÈÈ #
.
ÈÈ# $
Latest
ÈÈ$ *
:
ÈÈ* +
query
ÍÍ 
.
ÍÍ 
With
ÍÍ 
<
ÍÍ 
ContentItemIndex
ÍÍ /
>
ÍÍ/ 0
(
ÍÍ0 1
i
ÍÍ1 2
=>
ÍÍ3 5
i
ÍÍ6 7
.
ÍÍ7 8
Latest
ÍÍ8 >
)
ÍÍ> ?
;
ÍÍ? @
break
ÎÎ 
;
ÎÎ 
case
ÏÏ 
ContentsStatus
ÏÏ #
.
ÏÏ# $
Draft
ÏÏ$ )
:
ÏÏ) *
query
ÌÌ 
.
ÌÌ 
With
ÌÌ 
<
ÌÌ 
ContentItemIndex
ÌÌ /
>
ÌÌ/ 0
(
ÌÌ0 1
i
ÌÌ1 2
=>
ÌÌ3 5
!
ÌÌ6 7
i
ÌÌ7 8
.
ÌÌ8 9
	Published
ÌÌ9 B
&&
ÌÌC E
i
ÌÌF G
.
ÌÌG H
Latest
ÌÌH N
)
ÌÌN O
;
ÌÌO P
break
ÓÓ 
;
ÓÓ 
case
ÔÔ 
ContentsStatus
ÔÔ #
.
ÔÔ# $
Owner
ÔÔ$ )
:
ÔÔ) *
var
 
currentUserName
 '
=
( )"
_httpContextAccessor
* >
.
> ?
HttpContext
? J
?
J K
.
K L
User
L P
?
P Q
.
Q R
FindFirstValue
R `
(
` a

ClaimTypes
a k
.
k l
NameIdentifier
l z
)
z {
;
{ |
if
ÚÚ 
(
ÚÚ 
currentUserName
ÚÚ '
!=
ÚÚ( *
null
ÚÚ+ /
)
ÚÚ/ 0
{
ÛÛ 
query
ÙÙ 
.
ÙÙ 
With
ÙÙ "
<
ÙÙ" #
ContentItemIndex
ÙÙ# 3
>
ÙÙ3 4
(
ÙÙ4 5
i
ÙÙ5 6
=>
ÙÙ7 9
i
ÙÙ: ;
.
ÙÙ; <
Owner
ÙÙ< A
==
ÙÙB D
currentUserName
ÙÙE T
)
ÙÙT U
;
ÙÙU V
}
ıı 
break
˜˜ 
;
˜˜ 
default
¯¯ 
:
¯¯ 
throw
˘˘ 
new
˘˘ #
NotSupportedException
˘˘ 3
(
˘˘3 4
$str
˘˘4 L
)
˘˘L M
;
˘˘M N
}
˙˙ 
}
˚˚ 	
private
˝˝ 
static
˝˝ 

Expression
˝˝ !
<
˝˝! "
Func
˝˝" &
<
˝˝& ' 
ContainedPartIndex
˝˝' 9
,
˝˝9 :
bool
˝˝; ?
>
˝˝? @
>
˝˝@ A3
%CreateOrderedContainedPartIndexFilter
˝˝B g
(
˝˝g h
int
˝˝h k
?
˝˝k l
before
˝˝m s
,
˝˝s t
int
˝˝u x
?
˝˝x y
after
˝˝z 
,˝˝ Ä
string˝˝Å á
contentItemId˝˝à ï
)˝˝ï ñ
{
˛˛ 	
if
ˇˇ 
(
ˇˇ 
before
ˇˇ 
!=
ˇˇ 
null
ˇˇ 
)
ˇˇ 
{
ÄÄ 
return
ÅÅ 
x
ÅÅ 
=>
ÅÅ 
x
ÅÅ 
.
ÅÅ 
Order
ÅÅ #
<
ÅÅ$ %
before
ÅÅ& ,
&&
ÅÅ- /
x
ÅÅ0 1
.
ÅÅ1 2
ListContentItemId
ÅÅ2 C
==
ÅÅD F
contentItemId
ÅÅG T
;
ÅÅT U
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
after
ÑÑ 
!=
ÑÑ 
null
ÑÑ 
)
ÑÑ 
{
ÖÖ 
return
ÜÜ 
x
ÜÜ 
=>
ÜÜ 
x
ÜÜ 
.
ÜÜ 
Order
ÜÜ #
>
ÜÜ$ %
after
ÜÜ& +
&&
ÜÜ, .
x
ÜÜ/ 0
.
ÜÜ0 1
ListContentItemId
ÜÜ1 B
==
ÜÜC E
contentItemId
ÜÜF S
;
ÜÜS T
}
áá 
return
ââ 
x
ââ 
=>
ââ 
x
ââ 
.
ââ 
ListContentItemId
ââ +
==
ââ, .
contentItemId
ââ/ <
;
ââ< =
}
ää 	
}
ãã 
}åå ¿
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Services\IContainerService.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Services $
{		 
public

 

	interface

 
IContainerService

 &
{ 
Task 
< 
IEnumerable 
< 
ContentItem $
>$ %
>% &$
QueryContainedItemsAsync' ?
(? @
string@ F
contentItemIdG T
,T U
boolV Z
enableOrdering[ i
,i j
	PagerSlimk t
pageru z
,z {!
ContainedItemOptions	| ê"
containedItemOptions
ë •
)
• ¶
;
¶ ß
Task (
UpdateContentItemOrdersAsync )
() *
IEnumerable* 5
<5 6
ContentItem6 A
>A B
contentItemsC O
,O P
intQ T
orderOfFirstItemU e
)e f
;f g
Task 
< 
int 
> #
GetNextOrderNumberAsync )
() *
string* 0
contentItemId1 >
)> ?
;? @
Task 
SetInitialOrder 
( 
string # 
containerContentType$ 8
)8 9
;9 :
}   
}!! ¿
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Services\ListPartContentsAdminListFilter.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Services $
{ 
public 

class +
ListPartContentsAdminListFilter 0
:1 2$
IContentsAdminListFilter3 K
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public +
ListPartContentsAdminListFilter .
(. /%
IContentDefinitionManager/ H$
contentDefinitionManagerI a
)a b
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
async 
Task 
FilterAsync %
(% &#
ContentOptionsViewModel& =
model> C
,C D
IQueryE K
<K L
ContentItemL W
>W X
queryY ^
,^ _
IUpdateModel` l
updaterm t
)t u
{ 	
var 
	viewModel 
= 
new 0
$ListPartContentsAdminFilterViewModel  D
(D E
)E F
;F G
if 
( 
await 
updater 
. 
TryUpdateModelAsync 1
(1 2
	viewModel2 ;
,; <
nameof= C
(C D
ListPartD L
)L M
)M N
)N O
{ 
if   
(   
	viewModel   
.    
ShowListContentTypes   2
)  2 3
{!! 
var"" 
listableTypes"" %
=""& '%
_contentDefinitionManager""( A
.## 
ListTypeDefinitions## ,
(##, -
)##- .
.$$ 
Where$$ 
($$ 
x$$  
=>$$! #
x%% 
.%% 
Parts%% #
.%%# $
Any%%$ '
(%%' (
p%%( )
=>%%* ,
p&&  !
.&&! "
PartDefinition&&" 0
.&&0 1
Name&&1 5
==&&6 8
nameof&&9 ?
(&&? @
ListPart&&@ H
)&&H I
)&&I J
)&&J K
.'' 
Select'' 
(''  
x''  !
=>''" $
x''% &
.''& '
Name''' +
)''+ ,
;'', -
query)) 
.)) 
With)) 
<)) 
ContentItemIndex)) /
>))/ 0
())0 1
x))1 2
=>))3 5
x))6 7
.))7 8
ContentType))8 C
.))C D
IsIn))D H
())H I
listableTypes))I V
)))V W
)))W X
;))X Y
}** 
else-- 
if-- 
(-- 
	viewModel-- "
.--" #
ListContentItemId--# 4
!=--5 7
null--8 <
)--< =
{.. 
query// 
.// 
With// 
<// 
ContainedPartIndex// 1
>//1 2
(//2 3
x//3 4
=>//5 7
x//8 9
.//9 :
ListContentItemId//: K
==//L N
	viewModel//O X
.//X Y
ListContentItemId//Y j
)//j k
;//k l
}00 
}11 
}22 	
}33 
}44 Ë>
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Settings\ListPartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 
Settings $
{ 
public 

class )
ListPartSettingsDisplayDriver .
:/ 02
&ContentTypePartDefinitionDisplayDriver1 W
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContainerService *
_containerService+ <
;< =
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public )
ListPartSettingsDisplayDriver ,
(, -%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContainerService 
containerService .
,. /
IStringLocalizer 
< )
ListPartSettingsDisplayDriver :
>: ;
	localizer< E
)E F
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_containerService 
= 
containerService  0
;0 1
S 
= 
	localizer 
; 
} 	
public   
override   
IDisplayResult   &
Edit  ' +
(  + ,%
ContentTypePartDefinition  , E%
contentTypePartDefinition  F _
,  _ `
IUpdateModel  a m
updater  n u
)  u v
{!! 	
if"" 
("" 
!"" 
String"" 
."" 
Equals"" 
("" 
nameof"" %
(""% &
ListPart""& .
)"". /
,""/ 0%
contentTypePartDefinition""1 J
.""J K
PartDefinition""K Y
.""Y Z
Name""Z ^
)""^ _
)""_ `
{## 
return$$ 
null$$ 
;$$ 
}%% 
return'' 

Initialize'' 
<'' %
ListPartSettingsViewModel'' 7
>''7 8
(''8 9
$str''9 P
,''P Q
model''R W
=>''X Z
{(( 
model)) 
.)) 
ListPartSettings)) &
=))' (%
contentTypePartDefinition))) B
.))B C
GetSettings))C N
<))N O
ListPartSettings))O _
>))_ `
())` a
)))a b
;))b c
model** 
.** 
PageSize** 
=**  
model**! &
.**& '
ListPartSettings**' 7
.**7 8
PageSize**8 @
;**@ A
model++ 
.++ 
EnableOrdering++ $
=++% &
model++' ,
.++, -
ListPartSettings++- =
.++= >
EnableOrdering++> L
;++L M
model,, 
.,, !
ContainedContentTypes,, +
=,,, -
model,,. 3
.,,3 4
ListPartSettings,,4 D
.,,D E!
ContainedContentTypes,,E Z
;,,Z [
model-- 
.-- 
ContentTypes-- "
=--# $
new--% (
NameValueCollection--) <
(--< =
)--= >
;--> ?
foreach// 
(// 
var// !
contentTypeDefinition// 2
in//3 5%
_contentDefinitionManager//6 O
.//O P
ListTypeDefinitions//P c
(//c d
)//d e
)//e f
{00 
model11 
.11 
ContentTypes11 &
.11& '
Add11' *
(11* +!
contentTypeDefinition11+ @
.11@ A
Name11A E
,11E F!
contentTypeDefinition11G \
.11\ ]
DisplayName11] h
)11h i
;11i j
}22 
}33 
)33 
.33 
Location33 
(33 
$str33 !
)33! "
;33" #
}44 	
public66 
override66 
async66 
Task66 "
<66" #
IDisplayResult66# 1
>661 2
UpdateAsync663 >
(66> ?%
ContentTypePartDefinition66? X%
contentTypePartDefinition66Y r
,66r s(
UpdateTypePartEditorContext	66t è
context
66ê ó
)
66ó ò
{77 	
if88 
(88 
!88 
String88 
.88 
Equals88 
(88 
nameof88 %
(88% &
ListPart88& .
)88. /
,88/ 0%
contentTypePartDefinition881 J
.88J K
PartDefinition88K Y
.88Y Z
Name88Z ^
)88^ _
)88_ `
{99 
return:: 
null:: 
;:: 
};; 
var<< 
settings<< 
=<< %
contentTypePartDefinition<< 4
.<<4 5
GetSettings<<5 @
<<<@ A
ListPartSettings<<A Q
><<Q R
(<<R S
)<<S T
;<<T U
var>> 
model>> 
=>> 
new>> %
ListPartSettingsViewModel>> 5
(>>5 6
)>>6 7
;>>7 8
await@@ 
context@@ 
.@@ 
Updater@@ !
.@@! "
TryUpdateModelAsync@@" 5
(@@5 6
model@@6 ;
,@@; <
Prefix@@= C
,@@C D
m@@E F
=>@@G I
m@@J K
.@@K L!
ContainedContentTypes@@L a
,@@a b
m@@c d
=>@@e g
m@@h i
.@@i j
PageSize@@j r
,@@r s
m@@t u
=>@@v x
m@@y z
.@@z {
EnableOrdering	@@{ â
)
@@â ä
;
@@ä ã
ifBB 
(BB 
modelBB 
.BB !
ContainedContentTypesBB +
==BB, .
nullBB/ 3
||BB4 6
modelBB7 <
.BB< =!
ContainedContentTypesBB= R
.BBR S
LengthBBS Y
==BBZ \
$numBB] ^
)BB^ _
{CC 
contextDD 
.DD 
UpdaterDD 
.DD  

ModelStateDD  *
.DD* +
AddModelErrorDD+ 8
(DD8 9
nameofDD9 ?
(DD? @
modelDD@ E
.DDE F!
ContainedContentTypesDDF [
)DD[ \
,DD\ ]
SDD^ _
[DD_ `
$str	DD` ç
]
DDç é
)
DDé è
;
DDè ê
}EE 
elseFF 
{GG 
contextHH 
.HH 
BuilderHH 
.HH  
WithSettingsHH  ,
(HH, -
newHH- 0
ListPartSettingsHH1 A
{II 
PageSizeJJ 
=JJ 
modelJJ $
.JJ$ %
PageSizeJJ% -
,JJ- .
EnableOrderingKK "
=KK# $
modelKK% *
.KK* +
EnableOrderingKK+ 9
,KK9 :!
ContainedContentTypesLL )
=LL* +
modelLL, 1
.LL1 2!
ContainedContentTypesLL2 G
}MM 
)MM 
;MM 
ifPP 
(PP 
settingsPP 
.PP 
EnableOrderingPP +
!=PP, .
modelPP/ 4
.PP4 5
EnableOrderingPP5 C
&&PPD F
modelPPG L
.PPL M
EnableOrderingPPM [
==PP\ ^
truePP_ c
)PPc d
{QQ 
awaitRR 
_containerServiceRR +
.RR+ ,
SetInitialOrderRR, ;
(RR; <%
contentTypePartDefinitionRR< U
.RRU V!
ContentTypeDefinitionRRV k
.RRk l
NameRRl p
)RRp q
;RRq r
}SS 
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
}YY éO
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Startup.cs
	namespace$$ 	
OrchardCore$$
 
.$$ 
Lists$$ 
{%% 
public&& 

class&& 
Startup&& 
:&& 
StartupBase&& &
{'' 
private(( 
readonly(( 
AdminOptions(( %
_adminOptions((& 3
;((3 4
static** 
Startup** 
(** 
)** 
{++ 	
TemplateContext,, 
.,, &
GlobalMemberAccessStrategy,, 6
.,,6 7
Register,,7 ?
<,,? @
ListPartViewModel,,@ Q
>,,Q R
(,,R S
),,S T
;,,T U
}-- 	
public// 
Startup// 
(// 
IOptions// 
<//  
AdminOptions//  ,
>//, -
adminOptions//. :
)//: ;
{00 	
_adminOptions11 
=11 
adminOptions11 (
.11( )
Value11) .
;11. /
}22 	
public44 
override44 
void44 
ConfigureServices44 .
(44. /
IServiceCollection44/ A
services44B J
)44J K
{55 	
services66 
.66 
AddSingleton66 !
<66! "
IIndexProvider66" 0
,660 1&
ContainedPartIndexProvider662 L
>66L M
(66M N
)66N O
;66O P
services77 
.77 
	AddScoped77 
<77 !
IContentDisplayDriver77 4
,774 5&
ContainedPartDisplayDriver776 P
>77P Q
(77Q R
)77R S
;77S T
services88 
.88 
	AddScoped88 
<88 
IContentHandler88 .
,88. / 
ContainedPartHandler880 D
>88D E
(88E F
)88F G
;88G H
services99 
.99 
AddContentPart99 #
<99# $
ContainedPart99$ 1
>991 2
(992 3
)993 4
;994 5
services:: 
.:: 
	AddScoped:: 
<:: $
IContentsAdminListFilter:: 7
,::7 8+
ListPartContentsAdminListFilter::9 X
>::X Y
(::Y Z
)::Z [
;::[ \
services;; 
.;; 
	AddScoped;; 
<;; 
IDisplayDriver;; -
<;;- .#
ContentOptionsViewModel;;. E
>;;E F
,;;F G2
&ListPartContentsAdminListDisplayDriver;;H n
>;;n o
(;;o p
);;p q
;;;q r
services>> 
.>> 
AddContentPart>> #
<>># $
ListPart>>$ ,
>>>, -
(>>- .
)>>. /
.?? 
UseDisplayDriver?? !
<??! "!
ListPartDisplayDriver??" 7
>??7 8
(??8 9
)??9 :
.@@ 

AddHandler@@ 
<@@ 
ListPartHandler@@ +
>@@+ ,
(@@, -
)@@- .
;@@. /
servicesBB 
.BB 
	AddScopedBB 
<BB 3
'IContentTypePartDefinitionDisplayDriverBB F
,BBF G)
ListPartSettingsDisplayDriverBBH e
>BBe f
(BBf g
)BBg h
;BBh i
servicesCC 
.CC 
	AddScopedCC 
<CC 
IDataMigrationCC -
,CC- .

MigrationsCC/ 9
>CC9 :
(CC: ;
)CC; <
;CC< =
servicesDD 
.DD 
	AddScopedDD 
<DD $
IContentItemIndexHandlerDD 7
,DD7 8,
 ContainedPartContentIndexHandlerDD9 Y
>DDY Z
(DDZ [
)DD[ \
;DD\ ]
servicesEE 
.EE 
	AddScopedEE 
<EE 
IContainerServiceEE 0
,EE0 1
ContainerServiceEE2 B
>EEB C
(EEC D
)EED E
;EEE F
servicesHH 
.HH 
AddLiquidFilterHH $
<HH$ %
ListCountFilterHH% 4
>HH4 5
(HH5 6
$strHH6 B
)HHB C
;HHC D
servicesII 
.II 
AddLiquidFilterII $
<II$ %
ListItemsFilterII% 4
>II4 5
(II5 6
$strII6 B
)IIB C
;IIC D
servicesJJ 
.JJ 
AddLiquidFilterJJ $
<JJ$ %
ContainerFilterJJ% 4
>JJ4 5
(JJ5 6
$strJJ6 A
)JJA B
;JJB C
}KK 	
publicMM 
overrideMM 
voidMM 
	ConfigureMM &
(MM& '
IApplicationBuilderMM' :
appMM; >
,MM> ?!
IEndpointRouteBuilderMM@ U
routesMMV \
,MM\ ]
IServiceProviderMM^ n
serviceProviderMMo ~
)MM~ 
{NN 	
routesOO 
.OO "
MapAreaControllerRouteOO )
(OO) *
namePP 
:PP 
$strPP !
,PP! "
areaNameQQ 
:QQ 
$strQQ -
,QQ- .
patternRR 
:RR 
_adminOptionsRR &
.RR& '
AdminUrlPrefixRR' 5
+RR6 7
$strRR8 U
,RRU V
defaultsSS 
:SS 
newSS 
{SS 

controllerSS  *
=SS+ ,
$strSS- 4
,SS4 5
actionSS6 <
=SS= >
$strSS? X
}SSY Z
)TT 
;TT 
}UU 	
}VV 
[XX 
RequireFeaturesXX 
(XX 
$strXX ,
)XX, -
]XX- .
publicYY 

classYY 
AdminMenuStartupYY !
:YY" #
StartupBaseYY$ /
{ZZ 
public[[ 
override[[ 
void[[ 
ConfigureServices[[ .
([[. /
IServiceCollection[[/ A
services[[B J
)[[J K
{\\ 	
services]] 
.]] 
AddSingleton]] !
<]]! "%
IAdminNodeProviderFactory]]" ;
>]]; <
(]]< =
new]]= @$
AdminNodeProviderFactory]]A Y
<]]Y Z
ListsAdminNode]]Z h
>]]h i
(]]i j
)]]j k
)]]k l
;]]l m
services^^ 
.^^ 
	AddScoped^^ 
<^^ '
IAdminNodeNavigationBuilder^^ :
,^^: ;+
ListsAdminNodeNavigationBuilder^^< [
>^^[ \
(^^\ ]
)^^] ^
;^^^ _
services__ 
.__ 
	AddScoped__ 
<__ 
IDisplayDriver__ -
<__- .
MenuItem__. 6
>__6 7
,__7 8 
ListsAdminNodeDriver__9 M
>__M N
(__N O
)__O P
;__P Q
}`` 	
}aa 
[cc 
RequireFeaturescc 
(cc 
$strcc 6
)cc6 7
]cc7 8
publicdd 

classdd &
ContentLocalizationStartupdd +
:dd, -
StartupBasedd. 9
{ee 
publicff 
overrideff 
voidff 
ConfigureServicesff .
(ff. /
IServiceCollectionff/ A
servicesffB J
)ffJ K
{gg 	
serviceshh 
.hh 
	AddScopedhh 
<hh +
IContentLocalizationPartHandlerhh >
,hh> ?,
 ContainedPartLocalizationHandlerhh@ `
>hh` a
(hha b
)hhb c
;hhc d
servicesii 
.ii 
	AddScopedii 
<ii +
IContentLocalizationPartHandlerii >
,ii> ?'
ListPartLocalizationHandlerii@ [
>ii[ \
(ii\ ]
)ii] ^
;ii^ _
servicesjj 
.jj 
AddContentPartjj #
<jj# $
LocalizationPartjj$ 4
>jj4 5
(jj5 6
)jj6 7
.kk 

AddHandlerkk 
<kk ,
 LocalizationContainedPartHandlerkk <
>kk< =
(kk= >
)kk> ?
;kk? @
}ll 	
}mm 
[oo 
RequireFeaturesoo 
(oo 
$stroo (
)oo( )
]oo) *
publicpp 

classpp 
FeedsStartuppp 
:pp 
StartupBasepp  +
{qq 
publicrr 
overriderr 
voidrr 
ConfigureServicesrr .
(rr. /
IServiceCollectionrr/ A
servicesrrB J
)rrJ K
{ss 	
servicesuu 
.uu 
	AddScopeduu 
<uu 
IFeedQueryProvideruu 1
,uu1 2
ListFeedQueryuu3 @
>uu@ A
(uuA B
)uuB C
;uuC D
servicesww 
.ww 
AddContentPartww #
<ww# $
ListPartww$ ,
>ww, -
(ww- .
)ww. /
.xx 
UseDisplayDriverxx !
<xx! "%
ListPartFeedDisplayDriverxx" ;
>xx; <
(xx< =
)xx= >
.yy 

AddHandleryy 
<yy 
ListPartFeedHandleryy /
>yy/ 0
(yy0 1
)yy1 2
;yy2 3
}zz 	
public{{ 
override{{ 
void{{ 
	Configure{{ &
({{& '
IApplicationBuilder{{' :
app{{; >
,{{> ?!
IEndpointRouteBuilder{{@ U
routes{{V \
,{{\ ]
IServiceProvider{{^ n
serviceProvider{{o ~
){{~ 
{|| 	
routes}} 
.}} "
MapAreaControllerRoute}} )
(}}) *
name~~ 
:~~ 
$str~~  
,~~  !
areaName 
: 
$str -
,- .
pattern
ÄÄ 
:
ÄÄ 
$str
ÄÄ =
,
ÄÄ= >
defaults
ÅÅ 
:
ÅÅ 
new
ÅÅ 
{
ÅÅ 

controller
ÅÅ  *
=
ÅÅ+ ,
$str
ÅÅ- 3
,
ÅÅ3 4
action
ÅÅ5 ;
=
ÅÅ< =
$str
ÅÅ> E
,
ÅÅE F
format
ÅÅG M
=
ÅÅN O
$str
ÅÅP U
}
ÅÅV W
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
}
ÑÑ 
}ÖÖ ˘
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\EditContainedPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

ViewModels &
{ 
public 

class &
EditContainedPartViewModel +
{ 
public 
string 
ContainerId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ContentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
EnableOrdering "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 ˙
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartContentsAdminFilterViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

ViewModels &
{ 
public 

class 0
$ListPartContentsAdminFilterViewModel 5
{ 
public 
bool  
ShowListContentTypes (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
ListContentItemId '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ≥
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartFilterViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

ViewModels &
{ 
public 

class #
ListPartFilterViewModel (
{ 
public 
string 
DisplayText !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ContentsStatus 
Status $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
ContentsStatus5 C
.C D
LatestD J
;J K
}		 
}

 Ù	
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

ViewModels &
{ 
public 

class %
ListPartSettingsViewModel *
{ 
public 
ListPartSettings 
ListPartSettings  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public		 
NameValueCollection		 "
ContentTypes		# /
{		0 1
get		2 5
;		5 6
set		7 :
;		: ;
}		< =
public

 
string

 
[

 
]

 !
ContainedContentTypes

 -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
EnableOrdering "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} û
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Lists 
. 

ViewModels &
{ 
public		 

class		 
ListPartViewModel		 "
{

 
public #
ListPartFilterViewModel &#
ListPartFilterViewModel' >
{? @
getA D
;D E
setF I
;I J
}K L
public 
ListPart 
ListPart  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IEnumerable 
< 
ContentItem &
>& '
ContentItems( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
IEnumerable 
< !
ContentTypeDefinition 0
>0 1+
ContainedContentTypeDefinitions2 Q
{R S
getT W
;W X
setY \
;\ ]
}^ _
public #
BuildPartDisplayContext &
Context' .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
EnableOrdering "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 