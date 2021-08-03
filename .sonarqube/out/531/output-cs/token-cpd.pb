�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNode.cs
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
} �3
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNodeDriver.cs
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
OrdinalIgnoreCase	@@v �
)
@@� �
)
@@� �
)
@@� �
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
}FF �_
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNodeNavigationBuilder.cs
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
IAdminNodeNavigationBuilder	,,i �
>
,,� �
treeNodeBuilders
,,� �
)
,,� �
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
listTypeMenu	>>v �
=>
>>� �
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
GetType	UU| �
(
UU� �
)
UU� �
.
UU� �
Name
UU� �
)
UU� �
;
UU� �
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
AdminRouteValues	dd} �
)
dd� �
;
dd� �
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
�� 
Select
�� 
(
�� 
c
�� 
=>
�� 
$str
�� *
+
��+ ,
c
��- .
)
��. /
.
�� 
ToList
�� 
<
�� 
string
�� 
>
�� 
(
��  
)
��  !
??
�� 
new
�� 
List
�� 
<
�� 
string
�� "
>
��" #
(
��# $
)
��$ %
;
��% &
}
�� 	
}
�� 
}�� �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\AdminNodes\ListsAdminNodeViewModel.cs
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
} �8
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Controllers\OrderController.cs
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
PagerSlimParameters	q �!
pagerSlimParameters
� �
,
� �
int
� �
pageSize
� �
)
� �
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
}XX �.
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Controllers\RemotePublishingController.cs
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
}FF �3
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Drivers\ContainedPartDisplayDriver.cs
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
ContentType	++} �
==
++� �
model
++� �
.
++� �
ContentType
++� �
)
++� �
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
ContentType	JJ} �
==
JJ� �
model
JJ� �
.
JJ� �
ContentType
JJ� �
)
JJ� �
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
}XX �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Drivers\ListPartContentsAdminListDisplayDriver.cs
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
}** �N
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Drivers\ListPartDisplayDriver.cs
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
}gg �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListFeedEditViewModel.cs
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
} �U
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListFeedQuery.cs
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
)	DD �
)
DD� �
)
DD� �
;
DD� �
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
request	II} �
.
II� �
Scheme
II� �
)
II� �
;
II� �
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
??	QQ~ �
String
QQ� �
.
QQ� �
Empty
QQ� �
)
QQ� �
)
QQ� �
)
QQ� �
;
QQ� �
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
request	VV} �
.
VV� �
Scheme
VV� �
)
VV� �
;
VV� �
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
}oo �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListFeedQueryViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListPartFeedDisplayDriver.cs
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
},, �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Feeds\ListPartFeedHandler.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ContainedInputObjectType.cs
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
$str	F �
]
� �
)
� �
;
� �
} 	
} 
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ContainedPartIndexAliasProvider.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ContainedQueryObjectType.cs
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
} �1
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\ListQueryObjectType.cs
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
$str	%%i �
,
%%� �
x
%%� �
=>
%%� �3
%LoadPublishedContentItemsForListAsync
%%� �
(
%%� �
x
%%� �
,
%%� �
session
%%� �
)
%%� �
)
%%� �
;
%%� �
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
contentItemIds	--z �
,
--� �
ISession
--� �
session
--� �
)
--� �
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
}== �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\GraphQL\Startup.cs
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
} �!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ContainedPartHandler.cs
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
PartDefinition	##t �
.
##� �
Name
##� �
,
##� �
$str
##� �
)
##� �
)
##� �
;
##� �
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
}// �4
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ContainedPartLocalizationHandler.cs
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
ContentItemId	t �
==
� �
containedPart
� �
.
� �
ListContentItemId
� �
)
� �
.
� �!
FirstOrDefaultAsync
� �
(
� �
)
� �
;
� �
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
LocalizationSet	} �
==
� �
list
� �
.
� �
LocalizationSet
� �
&&
� �
i
� �
.
� �
Culture
� �
==
� �
context
� �
.
� �
Culture
� �
)
� �
.
� �!
FirstOrDefaultAsync
� �
(
� �
)
� �
;
� �
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
ContentItemId	;;t �
==
;;� �
containedPart
;;� �
.
;;� �
ListContentItemId
;;� �
)
;;� �
.
;;� �!
FirstOrDefaultAsync
;;� �
(
;;� �
)
;;� �
;
;;� �
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
LocalizationSet	<<} �
==
<<� �
list
<<� �
.
<<� �
LocalizationSet
<<� �
&&
<<� �
i
<<� �
.
<<� �
Culture
<<� �
==
<<� �
instance
<<� �
.
<<� �
Culture
<<� �
)
<<� �
.
<<� �!
FirstOrDefaultAsync
<<� �
(
<<� �
)
<<� �
;
<<� �
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
}FF �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ListPartHandler.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Handlers\ListPartLocalizationHandler.cs
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
}00 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Helpers\ListOrchardHelperExtensions.cs
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

Expression	x �
<
� �
Func
� �
<
� �
ContentItemIndex
� �
,
� �
bool
� �
>
� �
>
� �
itemPredicate
� �
=
� �
null
� �
)
� �
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
listContentItemId	##u �
,
##� �

Expression
##� �
<
##� �
Func
##� �
<
##� �
ContentItemIndex
##� �
,
##� �
bool
##� �
>
##� �
>
##� �
itemPredicate
##� �
=
##� �
null
##� �
)
##� �
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
})) �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Helpers\ListQueryHelpers.cs
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
ContentItemIndex	} �
,
� �
bool
� �
>
� �
>
� �
itemPredicate
� �
=
� �
null
� �
)
� �
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

Expression	} �
<
� �
Func
� �
<
� �
ContentItemIndex
� �
,
� �
bool
� �
>
� �
>
� �
itemPredicate
� �
=
� �
null
� �
)
� �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Indexes\ContainedPartContentIndexHandler.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Indexes\ContainedPartIndex.cs
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
}## �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Liquid\ContainerFilter.cs
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
},, �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Liquid\ListCountFilter.cs
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
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Liquid\ListItemsFilter.cs
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
}(( �	
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
] �
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
}99 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ContainedItemOptions.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ContainedPart.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ListPart.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Models\ListPartSettings.cs
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
}		 �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\RemotePublishing\ListMetaWeblogDriver.cs
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
} ՜
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\RemotePublishing\MetaWeblogHandler.cs
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
�� 
.
�� 
Drivers
�� #
)
��# $
;
��$ %
context
�� 
.
�� 
RpcMethodResponse
�� )
=
��* +
new
��, / 
XRpcMethodResponse
��0 B
(
��B C
)
��C D
.
��D E
Add
��E H
(
��H I
result
��I O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
context
�� 
.
�� 
RpcMethodCall
�� %
.
��% &

MethodName
��& 0
==
��1 3
$str
��4 H
)
��H I
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "'
MetaWeblogDeletePostAsync
��# <
(
��< =
Convert
�� 
.
�� 
ToString
�� $
(
��$ %
context
��% ,
.
��, -
RpcMethodCall
��- :
.
��: ;
Params
��; A
[
��A B
$num
��B C
]
��C D
.
��D E
Value
��E J
)
��J K
,
��K L
Convert
�� 
.
�� 
ToString
�� $
(
��$ %
context
��% ,
.
��, -
RpcMethodCall
��- :
.
��: ;
Params
��; A
[
��A B
$num
��B C
]
��C D
.
��D E
Value
��E J
)
��J K
,
��K L
Convert
�� 
.
�� 
ToString
�� $
(
��$ %
context
��% ,
.
��, -
RpcMethodCall
��- :
.
��: ;
Params
��; A
[
��A B
$num
��B C
]
��C D
.
��D E
Value
��E J
)
��J K
,
��K L
context
�� 
.
�� 
Drivers
�� #
)
��# $
;
��$ %
context
�� 
.
�� 
RpcMethodResponse
�� )
=
��* +
new
��, / 
XRpcMethodResponse
��0 B
(
��B C
)
��C D
.
��D E
Add
��E H
(
��H I
result
��I O
)
��O P
;
��P Q
}
�� 
if
�� 
(
�� 
context
�� 
.
�� 
RpcMethodCall
�� %
.
��% &

MethodName
��& 0
==
��1 3
$str
��4 O
)
��O P
{
�� 
var
�� 
result
�� 
=
�� 
await
�� "+
MetaWeblogNewMediaObjectAsync
��# @
(
��@ A
Convert
�� 
.
�� 
ToString
�� $
(
��$ %
context
��% ,
.
��, -
RpcMethodCall
��- :
.
��: ;
Params
��; A
[
��A B
$num
��B C
]
��C D
.
��D E
Value
��E J
)
��J K
,
��K L
Convert
�� 
.
�� 
ToString
�� $
(
��$ %
context
��% ,
.
��, -
RpcMethodCall
��- :
.
��: ;
Params
��; A
[
��A B
$num
��B C
]
��C D
.
��D E
Value
��E J
)
��J K
,
��K L
(
�� 

XRpcStruct
�� 
)
��  
context
��  '
.
��' (
RpcMethodCall
��( 5
.
��5 6
Params
��6 <
[
��< =
$num
��= >
]
��> ?
.
��? @
Value
��@ E
)
��E F
;
��F G
context
�� 
.
�� 
RpcMethodResponse
�� )
=
��* +
new
��, / 
XRpcMethodResponse
��0 B
(
��B C
)
��C D
.
��D E
Add
��E H
(
��H I
result
��I O
)
��O P
;
��P Q
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 

XRpcStruct
�� %
>
��% &+
MetaWeblogNewMediaObjectAsync
��' D
(
��D E
string
��E K
userName
��L T
,
��T U
string
��V \
password
��] e
,
��e f

XRpcStruct
��g q
file
��r v
)
��v w
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
var
�� 
name
�� 
=
�� 
file
�� 
.
�� 
Optional
�� $
<
��$ %
string
��% +
>
��+ ,
(
��, -
$str
��- 3
)
��3 4
;
��4 5
var
�� 
bits
�� 
=
�� 
file
�� 
.
�� 
Optional
�� $
<
��$ %
byte
��% )
[
��) *
]
��* +
>
��+ ,
(
��, -
$str
��- 3
)
��3 4
;
��4 5
var
�� 
directoryName
�� 
=
�� 
Path
��  $
.
��$ %
GetDirectoryName
��% 5
(
��5 6
name
��6 :
)
��: ;
;
��; <
var
�� 
filePath
�� 
=
�� 
_mediaFileStore
�� *
.
��* +
Combine
��+ 2
(
��2 3
directoryName
��3 @
,
��@ A
Path
��B F
.
��F G
GetFileName
��G R
(
��R S
name
��S W
)
��W X
)
��X Y
;
��Y Z
Stream
�� 
stream
�� 
=
�� 
null
��  
;
��  !
try
�� 
{
�� 
stream
�� 
=
�� 
new
�� 
MemoryStream
�� )
(
��) *
bits
��* .
)
��. /
;
��/ 0
filePath
�� 
=
�� 
await
��  
_mediaFileStore
��! 0
.
��0 1'
CreateFileFromStreamAsync
��1 J
(
��J K
filePath
��K S
,
��S T
stream
��U [
)
��[ \
;
��\ ]
}
�� 
finally
�� 
{
�� 
stream
�� 
?
�� 
.
�� 
Dispose
�� 
(
��  
)
��  !
;
��! "
}
�� 
var
�� 
	publicUrl
�� 
=
�� 
_mediaFileStore
�� +
.
��+ , 
MapPathToPublicUrl
��, >
(
��> ?
filePath
��? G
)
��G H
;
��H I
return
�� 
new
�� 

XRpcStruct
�� !
(
��! "
)
��" #
.
�� 
Set
�� 
(
�� 
$str
�� 
,
�� 
	publicUrl
�� &
)
��& '
.
�� 
Set
�� 
(
�� 
$str
�� 
,
�� 
	publicUrl
�� %
)
��% &
.
�� 
Set
�� 
(
�� 
$str
�� 
,
�� 
file
�� !
.
��! "
Optional
��" *
<
��* +
string
��+ 1
>
��1 2
(
��2 3
$str
��3 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
	XRpcArray
�� $
>
��$ %)
MetaWeblogGetUserBlogsAsync
��& A
(
��A B
XmlRpcContext
��B O
context
��P W
,
��W X
string
��Y _
userName
��` h
,
��h i
string
��j p
password
��q y
)
��y z
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
	XRpcArray
�� 
array
�� 
=
�� 
new
�� !
	XRpcArray
��" +
(
��+ ,
)
��, -
;
��- .
foreach
�� 
(
�� 
var
�� 
type
�� 
in
��  '
_contentDefinitionManager
��! :
.
��: ;!
ListTypeDefinitions
��; N
(
��N O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
!
�� 
type
�� 
.
�� 
Parts
�� 
.
��  
Any
��  #
(
��# $
x
��$ %
=>
��& (
x
��) *
.
��* +
Name
��+ /
==
��0 2
nameof
��3 9
(
��9 :
ListPart
��: B
)
��B C
)
��C D
)
��D E
{
�� 
continue
�� 
;
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
list
�� !
in
��" $
await
��% *
_session
��+ 3
.
��3 4
Query
��4 9
<
��9 :
ContentItem
��: E
,
��E F
ContentItemIndex
��G W
>
��W X
(
��X Y
x
��Y Z
=>
��[ ]
x
��^ _
.
��_ `
ContentType
��` k
==
��l n
type
��o s
.
��s t
Name
��t x
)
��x y
.
��y z
	ListAsync��z �
(��� �
)��� �
)��� �
{
�� 
if
�� 
(
�� 
await
�� #
_authorizationService
�� 3
.
��3 4
AuthorizeAsync
��4 B
(
��B C
user
��C G
,
��G H
CommonPermissions
��I Z
.
��Z [
EditContent
��[ f
,
��f g
list
��h l
)
��l m
)
��m n
{
�� 
var
�� 
metadata
�� $
=
��% &
await
��' ,
_contentManager
��- <
.
��< =!
PopulateAspectAsync
��= P
<
��P Q!
ContentItemMetadata
��Q d
>
��d e
(
��e f
list
��f j
)
��j k
;
��k l
var
��  
displayRouteValues
�� .
=
��/ 0
metadata
��1 9
.
��9 : 
DisplayRouteValues
��: L
;
��L M
array
�� 
.
�� 
Add
�� !
(
��! "
new
��" %

XRpcStruct
��& 0
(
��0 1
)
��1 2
.
��& '
Set
��' *
(
��* +
$str
��+ 0
,
��0 1
context
��2 9
.
��9 :
Url
��: =
.
��= >
Action
��> D
(
��D E 
displayRouteValues
��E W
[
��W X
$str
��X `
]
��` a
.
��a b
ToString
��b j
(
��j k
)
��k l
,
��l m!
displayRouteValues��n �
[��� �
$str��� �
]��� �
.��� �
ToString��� �
(��� �
)��� �
,��� �"
displayRouteValues��� �
,��� �
context��� �
.��� �
HttpContext��� �
.��� �
Request��� �
.��� �
Scheme��� �
)��� �
)��� �
.
��& '
Set
��' *
(
��* +
$str
��+ 3
,
��3 4
list
��5 9
.
��9 :
ContentItemId
��: G
)
��G H
.
��& '
Set
��' *
(
��* +
$str
��+ 5
,
��5 6
list
��7 ;
.
��; <
DisplayText
��< G
)
��G H
)
��H I
;
��I J
}
�� 
}
�� 
}
�� 
return
�� 
array
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
	XRpcArray
�� $
>
��$ %&
MetaWeblogGetRecentPosts
��& >
(
��> ?
XmlRpcContext
�� 
context
�� !
,
��! "
string
�� 
contentItemId
��  
,
��  !
string
�� 
userName
�� 
,
�� 
string
�� 
password
�� 
,
�� 
int
�� 
numberOfPosts
�� 
,
�� 
IEnumerable
�� 
<
�� 
IXmlRpcDriver
�� %
>
��% &
drivers
��' .
)
��. /
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
await
�� 
CheckAccessAsync
�� "
(
��" #
CommonPermissions
��# 4
.
��4 5
EditContent
��5 @
,
��@ A
user
��B F
,
��F G
null
��H L
)
��L M
;
��M N
var
�� 
list
�� 
=
�� 
await
�� 
_contentManager
�� ,
.
��, -
GetAsync
��- 5
(
��5 6
contentItemId
��6 C
)
��C D
;
��D E
if
�� 
(
�� 
list
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 R
+
��S T
contentItemId
��U b
)
��b c
;
��c d
}
�� 
var
�� 
array
�� 
=
�� 
new
�� 
	XRpcArray
�� %
(
��% &
)
��& '
;
��' (
var
�� 
contentItems
�� 
=
�� 
await
�� $
_session
��% -
.
��- .
Query
��. 3
<
��3 4
ContentItem
��4 ?
>
��? @
(
��@ A
)
��A B
.
�� 
With
�� 
<
��  
ContainedPartIndex
�� (
>
��( )
(
��) *
x
��* +
=>
��, .
x
��/ 0
.
��0 1
ListContentItemId
��1 B
==
��C E
contentItemId
��F S
)
��S T
.
�� 
With
�� 
<
�� 
ContentItemIndex
�� &
>
��& '
(
��' (
x
��( )
=>
��* ,
x
��- .
.
��. /
Latest
��/ 5
)
��5 6
.
�� 
OrderByDescending
�� "
(
��" #
x
��# $
=>
��% '
x
��( )
.
��) *

CreatedUtc
��* 4
)
��4 5
.
�� 
Take
�� 
(
�� 
numberOfPosts
�� #
)
��# $
.
�� 
	ListAsync
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
contentItem
�� $
in
��% '
contentItems
��( 4
)
��4 5
{
�� 
var
�� 

postStruct
�� 
=
��  
await
��! &#
CreateBlogStructAsync
��' <
(
��< =
context
��= D
,
��D E
contentItem
��F Q
)
��Q R
;
��R S
foreach
�� 
(
�� 
var
�� 
driver
�� #
in
��$ &
drivers
��' .
)
��. /
{
�� 
driver
�� 
.
�� 
Process
�� "
(
��" #

postStruct
��# -
)
��- .
;
��. /
}
�� 
array
�� 
.
�� 
Add
�� 
(
�� 

postStruct
�� $
)
��$ %
;
��% &
}
�� 
return
�� 
array
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
string
�� !
>
��! "$
MetaWeblogNewPostAsync
��# 9
(
��9 :
string
�� 
contentItemId
��  
,
��  !
string
�� 
userName
�� 
,
�� 
string
�� 
password
�� 
,
�� 

XRpcStruct
�� 
content
�� 
,
�� 
bool
�� 
publish
�� 
,
�� 
IEnumerable
�� 
<
�� 
IXmlRpcDriver
�� %
>
��% &
drivers
��' .
)
��. /
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
await
�� 
CheckAccessAsync
�� "
(
��" #
publish
��# *
?
��+ ,
CommonPermissions
��- >
.
��> ?
PublishContent
��? M
:
��N O
CommonPermissions
��P a
.
��a b
EditContent
��b m
,
��m n
user
��o s
,
��s t
null
��u y
)
��y z
;
��z {
var
�� 
list
�� 
=
�� 
await
�� 
_contentManager
�� ,
.
��, -
GetAsync
��- 5
(
��5 6
contentItemId
��6 C
)
��C D
;
��D E
if
�� 
(
�� 
list
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 R
+
��S T
contentItemId
��U b
)
��b c
;
��c d
}
�� 
var
�� 
postType
�� 
=
�� &
GetContainedContentTypes
�� 3
(
��3 4
list
��4 8
)
��8 9
.
��9 :
FirstOrDefault
��: H
(
��H I
)
��I J
;
��J K
var
�� 
contentItem
�� 
=
�� 
await
�� #
_contentManager
��$ 3
.
��3 4
NewAsync
��4 <
(
��< =
postType
��= E
.
��E F
Name
��F J
)
��J K
;
��K L
contentItem
�� 
.
�� 
Owner
�� 
=
�� 
user
��  $
.
��$ %
FindFirstValue
��% 3
(
��3 4

ClaimTypes
��4 >
.
��> ?
NameIdentifier
��? M
)
��M N
;
��N O
contentItem
�� 
.
�� 
Alter
�� 
<
�� 
ContainedPart
�� +
>
��+ ,
(
��, -
x
��- .
=>
��/ 1
x
��2 3
.
��3 4
ListContentItemId
��4 E
=
��F G
list
��H L
.
��L M
ContentItemId
��M Z
)
��Z [
;
��[ \
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  " 
_metaWeblogDrivers
��# 5
)
��5 6
{
�� 
driver
�� 
.
�� 
EditPost
�� 
(
��  
content
��  '
,
��' (
contentItem
��) 4
)
��4 5
;
��5 6
}
�� 
await
�� 
_contentManager
�� !
.
��! "
CreateAsync
��" -
(
��- .
contentItem
��. 9
,
��9 :
VersionOptions
��; I
.
��I J
Draft
��J O
)
��O P
;
��P Q
var
�� 
publishedUtc
�� 
=
�� 
content
�� &
.
��& '
Optional
��' /
<
��/ 0
DateTime
��0 8
?
��8 9
>
��9 :
(
��: ;
$str
��; M
)
��M N
;
��N O
if
�� 
(
�� 
publishedUtc
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
publishedUtc
�� 
=
�� 
content
�� &
.
��& '
Optional
��' /
<
��/ 0
DateTime
��0 8
?
��8 9
>
��9 :
(
��: ;
$str
��; H
)
��H I
;
��I J
}
�� 
else
�� 
{
�� 
publishedUtc
�� 
=
�� 
new
�� "
DateTime
��# +
(
��+ ,
publishedUtc
��, 8
.
��8 9
Value
��9 >
.
��> ?
Ticks
��? D
,
��D E
DateTimeKind
��F R
.
��R S
Utc
��S V
)
��V W
;
��W X
}
�� 
if
�� 
(
�� 
publish
�� 
&&
�� 
(
�� 
publishedUtc
�� (
==
��) +
null
��, 0
||
��1 3
publishedUtc
��4 @
<=
��A C
DateTime
��D L
.
��L M
UtcNow
��M S
)
��S T
)
��T U
{
�� 
await
�� 
_contentManager
�� %
.
��% &
PublishAsync
��& 2
(
��2 3
contentItem
��3 >
)
��> ?
;
��? @
}
�� 
else
�� 
{
�� 
await
�� 
_contentManager
�� %
.
��% &
SaveDraftAsync
��& 4
(
��4 5
contentItem
��5 @
)
��@ A
;
��A B
}
�� 
if
�� 
(
�� 
publishedUtc
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
contentItem
�� 
.
�� 

CreatedUtc
�� &
=
��' (
publishedUtc
��) 5
;
��5 6
}
�� 
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  "
drivers
��# *
)
��* +
{
�� 
driver
�� 
.
�� 
Process
�� 
(
�� 
contentItem
�� *
.
��* +
ContentItemId
��+ 8
)
��8 9
;
��9 :
}
�� 
return
�� 
contentItem
�� 
.
�� 
ContentItemId
�� ,
;
��, -
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 

XRpcStruct
�� %
>
��% &$
MetaWeblogGetPostAsync
��' =
(
��= >
XmlRpcContext
�� 
context
�� !
,
��! "
string
�� 
contentItemId
��  
,
��  !
string
�� 
userName
�� 
,
�� 
string
�� 
password
�� 
,
�� 
IEnumerable
�� 
<
�� 
IXmlRpcDriver
�� %
>
��% &
drivers
��' .
)
��. /
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
var
�� 
contentItem
�� 
=
�� 
await
�� #
_contentManager
��$ 3
.
��3 4
GetAsync
��4 <
(
��< =
contentItemId
��= J
,
��J K
VersionOptions
��L Z
.
��Z [
Latest
��[ a
)
��a b
;
��b c
if
�� 
(
�� 
contentItem
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
await
�� 
CheckAccessAsync
�� "
(
��" #
CommonPermissions
��# 4
.
��4 5
EditContent
��5 @
,
��@ A
user
��B F
,
��F G
contentItem
��H S
)
��S T
;
��T U
var
�� 

postStruct
�� 
=
�� 
await
�� "#
CreateBlogStructAsync
��# 8
(
��8 9
context
��9 @
,
��@ A
contentItem
��B M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  " 
_metaWeblogDrivers
��# 5
)
��5 6
{
�� 
driver
�� 
.
�� 
	BuildPost
��  
(
��  !

postStruct
��! +
,
��+ ,
context
��- 4
,
��4 5
contentItem
��6 A
)
��A B
;
��B C
}
�� 
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  "
drivers
��# *
)
��* +
{
�� 
driver
�� 
.
�� 
Process
�� 
(
�� 

postStruct
�� )
)
��) *
;
��* +
}
�� 
return
�� 

postStruct
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  %
MetaWeblogEditPostAsync
��! 8
(
��8 9
string
�� 
contentItemId
��  
,
��  !
string
�� 
userName
�� 
,
�� 
string
�� 
password
�� 
,
�� 

XRpcStruct
�� 
content
�� 
,
�� 
bool
�� 
publish
�� 
,
�� 
IEnumerable
�� 
<
�� 
IXmlRpcDriver
�� %
>
��% &
drivers
��' .
)
��. /
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
var
�� 
contentItem
�� 
=
�� 
await
�� #
_contentManager
��$ 3
.
��3 4
GetAsync
��4 <
(
��< =
contentItemId
��= J
,
��J K
VersionOptions
��L Z
.
��Z [
DraftRequired
��[ h
)
��h i
;
��i j
if
�� 
(
�� 
contentItem
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� 
	Exception
�� #
(
��# $
S
��$ %
[
��% &
$str
��& u
]
��u v
)
��v w
;
��w x
}
�� 
await
�� 
CheckAccessAsync
�� "
(
��" #
publish
��# *
?
��+ ,
CommonPermissions
��- >
.
��> ?
PublishContent
��? M
:
��N O
CommonPermissions
��P a
.
��a b
EditContent
��b m
,
��m n
user
��o s
,
��s t
contentItem��u �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  " 
_metaWeblogDrivers
��# 5
)
��5 6
{
�� 
driver
�� 
.
�� 
EditPost
�� 
(
��  
content
��  '
,
��' (
contentItem
��) 4
)
��4 5
;
��5 6
}
�� 
var
�� 
publishedUtc
�� 
=
�� 
content
�� &
.
��& '
Optional
��' /
<
��/ 0
DateTime
��0 8
?
��8 9
>
��9 :
(
��: ;
$str
��; M
)
��M N
;
��N O
if
�� 
(
�� 
publishedUtc
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
publishedUtc
�� 
=
�� 
content
�� &
.
��& '
Optional
��' /
<
��/ 0
DateTime
��0 8
?
��8 9
>
��9 :
(
��: ;
$str
��; H
)
��H I
;
��I J
}
�� 
else
�� 
{
�� 
publishedUtc
�� 
=
�� 
new
�� "
DateTime
��# +
(
��+ ,
publishedUtc
��, 8
.
��8 9
Value
��9 >
.
��> ?
Ticks
��? D
,
��D E
DateTimeKind
��F R
.
��R S
Utc
��S V
)
��V W
;
��W X
}
�� 
if
�� 
(
�� 
publish
�� 
&&
�� 
(
�� 
publishedUtc
�� (
==
��) +
null
��, 0
||
��1 3
publishedUtc
��4 @
<=
��A C
DateTime
��D L
.
��L M
UtcNow
��M S
)
��S T
)
��T U
{
�� 
await
�� 
_contentManager
�� %
.
��% &
PublishAsync
��& 2
(
��2 3
contentItem
��3 >
)
��> ?
;
��? @
}
�� 
else
�� 
{
�� 
await
�� 
_contentManager
�� %
.
��% &
SaveDraftAsync
��& 4
(
��4 5
contentItem
��5 @
)
��@ A
;
��A B
}
�� 
if
�� 
(
�� 
publishedUtc
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
contentItem
�� 
.
�� 

CreatedUtc
�� &
=
��' (
publishedUtc
��) 5
;
��5 6
}
�� 
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  "
drivers
��# *
)
��* +
{
�� 
driver
�� 
.
�� 
Process
�� 
(
�� 
contentItem
�� *
.
��* +
Id
��+ -
)
��- .
;
��. /
}
�� 
return
�� 
true
�� 
;
�� 
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
MetaWeblogDeletePostAsync
��! :
(
��: ;
string
�� 
contentItemId
��  
,
��  !
string
�� 
userName
�� 
,
�� 
string
�� 
password
�� 
,
�� 
IEnumerable
�� 
<
�� 
IXmlRpcDriver
�� %
>
��% &
drivers
��' .
)
��. /
{
�� 	
var
�� 
user
�� 
=
�� 
await
�� 
ValidateUserAsync
�� .
(
��. /
userName
��/ 7
,
��7 8
password
��9 A
)
��A B
;
��B C
var
�� 
contentItem
�� 
=
�� 
await
�� #
_contentManager
��$ 3
.
��3 4
GetAsync
��4 <
(
��< =
contentItemId
��= J
,
��J K
VersionOptions
��L Z
.
��Z [
Latest
��[ a
)
��a b
;
��b c
if
�� 
(
�� 
contentItem
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
user
��< @
,
��@ A
CommonPermissions
��B S
.
��S T
DeleteContent
��T a
,
��a b
contentItem
��c n
)
��n o
)
��o p
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
S
��4 5
[
��5 6
$str
��6 ]
]
��] ^
.
��^ _
Value
��_ d
)
��d e
;
��e f
}
�� 
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  "
drivers
��# *
)
��* +
{
�� 
driver
�� 
.
�� 
Process
�� 
(
�� 
contentItem
�� *
.
��* +
ContentItemId
��+ 8
)
��8 9
;
��9 :
}
�� 
await
�� 
_contentManager
�� !
.
��! "
RemoveAsync
��" -
(
��- .
contentItem
��. 9
)
��9 :
;
��: ;
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
ClaimsPrincipal
�� *
>
��* +
ValidateUserAsync
��, =
(
��= >
string
��> D
userName
��E M
,
��M N
string
��O U
password
��V ^
)
��^ _
{
�� 	
if
�� 
(
�� 
!
�� 
await
��  
_membershipService
�� )
.
��) * 
CheckPasswordAsync
��* <
(
��< =
userName
��= E
,
��E F
password
��G O
)
��O P
)
��P Q
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
S
��4 5
[
��5 6
$str
��6 q
]
��q r
.
��r s
Value
��s x
)
��x y
;
��y z
}
�� 
var
�� 
	storeUser
�� 
=
�� 
await
�� ! 
_membershipService
��" 4
.
��4 5
GetUserAsync
��5 A
(
��A B
userName
��B J
)
��J K
;
��K L
if
�� 
(
�� 
	storeUser
�� 
==
�� 
null
�� !
)
��! "
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
await
��  
_membershipService
�� +
.
��+ ,#
CreateClaimsPrincipal
��, A
(
��A B
	storeUser
��B K
)
��K L
;
��L M
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 

XRpcStruct
�� %
>
��% &#
CreateBlogStructAsync
��' <
(
��< =
XmlRpcContext
��= J
context
��K R
,
��R S
ContentItem
��T _
contentItem
��` k
)
��k l
{
�� 	
var
�� 
metadata
�� 
=
�� 
await
��  
_contentManager
��! 0
.
��0 1!
PopulateAspectAsync
��1 D
<
��D E!
ContentItemMetadata
��E X
>
��X Y
(
��Y Z
contentItem
��Z e
)
��e f
;
��f g
var
�� 
url
�� 
=
�� 
context
�� 
.
�� 
Url
�� !
.
��! "
Action
��" (
(
��( )
metadata
�� 
.
��  
DisplayRouteValues
�� +
[
��+ ,
$str
��, 4
]
��4 5
.
��5 6
ToString
��6 >
(
��> ?
)
��? @
,
��@ A
metadata
�� 
.
��  
DisplayRouteValues
�� +
[
��+ ,
$str
��, 8
]
��8 9
.
��9 :
ToString
��: B
(
��B C
)
��C D
,
��D E
metadata
�� 
.
��  
DisplayRouteValues
�� +
,
��+ ,
context
�� 
.
�� 
HttpContext
�� #
.
��# $
Request
��$ +
.
��+ ,
Scheme
��, 2
)
��2 3
;
��3 4
if
�� 
(
�� 
contentItem
�� 
.
�� 
HasDraft
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
url
�� 
=
�� 
context
�� 
.
�� 
Url
�� !
.
��! "
Action
��" (
(
��( )
$str
��) 2
,
��2 3
$str
��4 :
,
��: ;
new
��< ?
{
��@ A
area
��B F
=
��G H
$str
��I _
,
��_ `
contentItemId
��a n
=
��o p
contentItem
��q |
.
��| }
ContentItemId��} �
}��� �
)��� �
;��� �
}
�� 
var
�� 

blogStruct
�� 
=
�� 
new
��  

XRpcStruct
��! +
(
��+ ,
)
��, -
.
�� 
Set
�� 
(
�� 
$str
�� 
,
�� 
contentItem
�� *
.
��* +
ContentItemId
��+ 8
)
��8 9
.
�� 
Set
�� 
(
�� 
$str
�� 
,
�� 
url
��  
)
��  !
.
�� 
Set
�� 
(
�� 
$str
��  
,
��  !
url
��" %
)
��% &
;
��& '
if
�� 
(
�� 
contentItem
�� 
.
�� 
PublishedUtc
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 

blogStruct
�� 
.
�� 
Set
�� 
(
�� 
$str
�� ,
,
��, -
contentItem
��. 9
.
��9 :
PublishedUtc
��: F
)
��F G
;
��G H

blogStruct
�� 
.
�� 
Set
�� 
(
�� 
$str
�� 1
,
��1 2
contentItem
��3 >
.
��> ?
PublishedUtc
��? K
)
��K L
;
��L M
}
�� 
foreach
�� 
(
�� 
var
�� 
driver
�� 
in
��  " 
_metaWeblogDrivers
��# 5
)
��5 6
{
�� 
driver
�� 
.
�� 
	BuildPost
��  
(
��  !

blogStruct
��! +
,
��+ ,
context
��- 4
,
��4 5
contentItem
��6 A
)
��A B
;
��B C
}
�� 
return
�� 

blogStruct
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
CheckAccessAsync
�� +
(
��+ ,

Permission
��, 6

permission
��7 A
,
��A B
ClaimsPrincipal
��C R
user
��S W
,
��W X
ContentItem
��Y d
contentItem
��e p
)
��p q
{
�� 	
if
�� 
(
�� 
!
�� 
await
�� #
_authorizationService
�� ,
.
��, -
AuthorizeAsync
��- ;
(
��; <
user
��< @
,
��@ A

permission
��B L
,
��L M
contentItem
��N Y
)
��Y Z
)
��Z [
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
S
��4 5
[
��5 6
$str
��6 ]
]
��] ^
.
��^ _
Value
��_ d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
IEnumerable
�� 
<
�� #
ContentTypeDefinition
�� 1
>
��1 2&
GetContainedContentTypes
��3 K
(
��K L
ContentItem
��L W
contentItem
��X c
)
��c d
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
��S T
contentItem
��T _
.
��_ `
ContentType
��` k
)
��k l
;
��l m
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
,�� �
$str��� �
)��� �
)��� �
;��� �
var
�� 
settings
�� 
=
�� '
contentTypePartDefinition
�� 4
.
��4 5
GetSettings
��5 @
<
��@ A
ListPartSettings
��A Q
>
��Q R
(
��R S
)
��S T
;
��T U
var
�� 
contentTypes
�� 
=
�� 
settings
�� '
.
��' (#
ContainedContentTypes
��( =
??
��> @

Enumerable
��A K
.
��K L
Empty
��L Q
<
��Q R
string
��R X
>
��X Y
(
��Y Z
)
��Z [
;
��[ \
return
�� 
contentTypes
�� 
.
��  
Select
��  &
(
��& '
contentType
��' 2
=>
��3 5'
_contentDefinitionManager
��6 O
.
��O P
GetTypeDefinition
��P a
(
��a b
contentType
��b m
)
��m n
)
��n o
;
��o p
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\RemotePublishing\Startup.cs
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
}!! ɢ
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Services\ContainerService.cs
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
;	@@ �
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
	Published	RRz �
||
RR� �
x
RR� �
.
RR� �
Latest
RR� �
)
RR� �
)
RR� �
;
RR� �
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
ListContentItemId	bbq �
)
bb� �
;
bb� �
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
contentItem	xx �
.
xx� �
ContentItemId
xx� �
)
xx� �
;
xx� �
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
�� 
if
�� 
(
��  !
contentItem
��! ,
.
��, -
	Published
��- 6
&&
��7 9
!
��: ;
contentItem
��; F
.
��F G
Latest
��G M
)
��M N
{
�� 
var
�� 

latestItem
��  *
=
��+ ,
contentItemGroup
��- =
.
��= >
FirstOrDefault
��> L
(
��L M
l
��M N
=>
��O Q
l
��R S
.
��S T
Latest
��T Z
==
��[ ]
true
��^ b
&&
��c e
l
��f g
.
��g h
ContentItemId
��h u
==
��v x
contentItem��y �
.��� �
ContentItemId��� �
)��� �
;��� �
if
�� 
(
��  

latestItem
��  *
==
��+ -
null
��. 2
)
��2 3
{
�� 
containedPart
��  -
.
��- .
Order
��. 3
=
��4 5
i
��6 7
;
��7 8
containedPart
��  -
.
��- .
Apply
��. 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
else
��  
{
�� 
continue
��  (
;
��( )
}
�� 
}
�� 
_session
��  
.
��  !
Save
��! %
(
��% &
contentItem
��& 1
)
��1 2
;
��2 3
}
�� 
i
�� 
++
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
IEnumerable
�� %
<
��% &
ContentItem
��& 1
>
��1 2
>
��2 3&
QueryContainedItemsAsync
��4 L
(
��L M
string
�� 
contentItemId
��  
,
��  !
bool
�� 
enableOrdering
�� 
,
��  
	PagerSlim
�� 
pager
�� 
,
�� "
ContainedItemOptions
��  "
containedItemOptions
��! 5
)
��5 6
{
�� 	
if
�� 
(
�� "
containedItemOptions
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7"
containedItemOptions
��7 K
)
��K L
)
��L M
;
��M N
}
�� 
IQuery
�� 
<
�� 
ContentItem
�� 
>
�� 
query
��  %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
pager
�� 
.
�� 
Before
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
if
�� 
(
�� 
enableOrdering
�� "
)
��" #
{
�� 
var
�� 
beforeValue
�� #
=
��$ %
int
��& )
.
��) *
Parse
��* /
(
��/ 0
pager
��0 5
.
��5 6
Before
��6 <
)
��< =
;
��= >
query
�� 
=
�� 
_session
�� $
.
��$ %
Query
��% *
<
��* +
ContentItem
��+ 6
>
��6 7
(
��7 8
)
��8 9
.
�� 
With
�� 
(
�� 3
%CreateOrderedContainedPartIndexFilter
�� C
(
��C D
beforeValue
��D O
,
��O P
null
��Q U
,
��U V
contentItemId
��W d
)
��d e
)
��e f
.
�� 
OrderByDescending
�� *
(
��* +
x
��+ ,
=>
��- /
x
��0 1
.
��1 2
Order
��2 7
)
��7 8
;
��8 9
}
�� 
else
�� 
{
�� 
var
�� 
beforeValue
�� #
=
��$ %
new
��& )
DateTime
��* 2
(
��2 3
long
��3 7
.
��7 8
Parse
��8 =
(
��= >
pager
��> C
.
��C D
Before
��D J
)
��J K
)
��K L
;
��L M
query
�� 
=
�� 
_session
�� $
.
��$ %
Query
��% *
<
��* +
ContentItem
��+ 6
>
��6 7
(
��7 8
)
��8 9
.
�� 
With
�� 
<
��  
ContainedPartIndex
�� 0
>
��0 1
(
��1 2
x
��2 3
=>
��4 6
x
��7 8
.
��8 9
ListContentItemId
��9 J
==
��K M
contentItemId
��N [
)
��[ \
;
��\ ]+
ApplyPagingContentIndexFilter
�� 1
(
��1 2
beforeValue
��2 =
,
��= >
null
��? C
,
��C D
true
��E I
,
��I J
query
��K P
)
��P Q
;
��Q R
}
�� -
ApplyContainedItemOptionsFilter
�� /
(
��/ 0"
containedItemOptions
��0 D
,
��D E
query
��F K
)
��K L
;
��L M
query
�� 
.
�� 
Take
�� 
(
�� 
pager
��  
.
��  !
PageSize
��! )
+
��* +
$num
��, -
)
��- .
;
��. /
var
�� 
containedItems
�� "
=
��# $
await
��% *
query
��+ 0
.
��0 1
	ListAsync
��1 :
(
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
!
�� 
containedItems
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
{
�� 
return
�� 
containedItems
�� )
;
��) *
}
�� 
containedItems
�� 
=
��  
containedItems
��! /
.
��/ 0
Reverse
��0 7
(
��7 8
)
��8 9
;
��9 :
pager
�� 
.
�� 
Before
�� 
=
�� 
null
�� #
;
��# $
if
�� 
(
�� 
enableOrdering
�� "
)
��" #
{
�� 
pager
�� 
.
�� 
After
�� 
=
��  !
containedItems
��" 0
.
��0 1
Last
��1 5
(
��5 6
)
��6 7
.
��7 8
As
��8 :
<
��: ;
ContainedPart
��; H
>
��H I
(
��I J
)
��J K
.
��K L
Order
��L Q
.
��Q R
ToString
��R Z
(
��Z [
)
��[ \
;
��\ ]
}
�� 
else
�� 
{
�� 
pager
�� 
.
�� 
After
�� 
=
��  !
containedItems
��" 0
.
��0 1
Last
��1 5
(
��5 6
)
��6 7
.
��7 8

CreatedUtc
��8 B
.
��B C
Value
��C H
.
��H I
Ticks
��I N
.
��N O
ToString
��O W
(
��W X
)
��X Y
;
��Y Z
}
�� 
if
�� 
(
�� 
containedItems
�� "
.
��" #
Count
��# (
(
��( )
)
��) *
==
��+ -
pager
��. 3
.
��3 4
PageSize
��4 <
+
��= >
$num
��? @
)
��@ A
{
�� 
containedItems
�� "
=
��# $
containedItems
��% 3
.
��3 4
Skip
��4 8
(
��8 9
$num
��9 :
)
��: ;
;
��; <
if
�� 
(
�� 
enableOrdering
�� &
)
��& '
{
�� 
pager
�� 
.
�� 
Before
�� $
=
��% &
containedItems
��' 5
.
��5 6
First
��6 ;
(
��; <
)
��< =
.
��= >
As
��> @
<
��@ A
ContainedPart
��A N
>
��N O
(
��O P
)
��P Q
.
��Q R
Order
��R W
.
��W X
ToString
��X `
(
��` a
)
��a b
;
��b c
}
�� 
else
�� 
{
�� 
pager
�� 
.
�� 
Before
�� $
=
��% &
containedItems
��' 5
.
��5 6
First
��6 ;
(
��; <
)
��< =
.
��= >

CreatedUtc
��> H
.
��H I
Value
��I N
.
��N O
Ticks
��O T
.
��T U
ToString
��U ]
(
��] ^
)
��^ _
;
��_ `
}
�� 
}
�� 
return
�� 
containedItems
�� %
;
��% &
}
�� 
else
�� 
if
�� 
(
�� 
pager
�� 
.
�� 
After
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
if
�� 
(
�� 
enableOrdering
�� "
)
��" #
{
�� 
var
�� 

afterValue
�� "
=
��# $
int
��% (
.
��( )
Parse
��) .
(
��. /
pager
��/ 4
.
��4 5
After
��5 :
)
��: ;
;
��; <
query
�� 
=
�� 
_session
�� $
.
��$ %
Query
��% *
<
��* +
ContentItem
��+ 6
>
��6 7
(
��7 8
)
��8 9
.
�� 
With
�� 
(
�� 3
%CreateOrderedContainedPartIndexFilter
�� C
(
��C D
null
��D H
,
��H I

afterValue
��J T
,
��T U
contentItemId
��V c
)
��c d
)
��d e
.
�� 
OrderBy
��  
(
��  !
x
��! "
=>
��# %
x
��& '
.
��' (
Order
��( -
)
��- .
;
��. /
}
�� 
else
�� 
{
�� 
var
�� 

afterValue
�� "
=
��# $
new
��% (
DateTime
��) 1
(
��1 2
long
��2 6
.
��6 7
Parse
��7 <
(
��< =
pager
��= B
.
��B C
After
��C H
)
��H I
)
��I J
;
��J K
query
�� 
=
�� 
_session
�� $
.
��$ %
Query
��% *
<
��* +
ContentItem
��+ 6
>
��6 7
(
��7 8
)
��8 9
.
�� 
With
�� 
(
�� 3
%CreateOrderedContainedPartIndexFilter
�� C
(
��C D
null
��D H
,
��H I
null
��J N
,
��N O
contentItemId
��P ]
)
��] ^
)
��^ _
;
��_ `+
ApplyPagingContentIndexFilter
�� 1
(
��1 2
null
��2 6
,
��6 7

afterValue
��8 B
,
��B C
false
��D I
,
��I J
query
��K P
)
��P Q
;
��Q R
}
�� -
ApplyContainedItemOptionsFilter
�� /
(
��/ 0"
containedItemOptions
��0 D
,
��D E
query
��F K
)
��K L
;
��L M
query
�� 
.
�� 
Take
�� 
(
�� 
pager
��  
.
��  !
PageSize
��! )
+
��* +
$num
��, -
)
��- .
;
��. /
var
�� 
containedItems
�� "
=
��# $
await
��% *
query
��+ 0
.
��0 1
	ListAsync
��1 :
(
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
!
�� 
containedItems
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
{
�� 
return
�� 
containedItems
�� )
;
��) *
}
�� 
if
�� 
(
�� 
enableOrdering
�� "
)
��" #
{
�� 
pager
�� 
.
�� 
Before
��  
=
��! "
containedItems
��# 1
.
��1 2
First
��2 7
(
��7 8
)
��8 9
.
��9 :
As
��: <
<
��< =
ContainedPart
��= J
>
��J K
(
��K L
)
��L M
.
��M N
Order
��N S
.
��S T
ToString
��T \
(
��\ ]
)
��] ^
;
��^ _
}
�� 
else
�� 
{
�� 
pager
�� 
.
�� 
Before
��  
=
��! "
containedItems
��# 1
.
��1 2
First
��2 7
(
��7 8
)
��8 9
.
��9 :

CreatedUtc
��: D
.
��D E
Value
��E J
.
��J K
Ticks
��K P
.
��P Q
ToString
��Q Y
(
��Y Z
)
��Z [
;
��[ \
}
�� 
pager
�� 
.
�� 
After
�� 
=
�� 
null
�� "
;
��" #
if
�� 
(
�� 
containedItems
�� "
.
��" #
Count
��# (
(
��( )
)
��) *
==
��+ -
pager
��. 3
.
��3 4
PageSize
��4 <
+
��= >
$num
��? @
)
��@ A
{
�� 
containedItems
�� "
=
��# $
containedItems
��% 3
.
��3 4
Take
��4 8
(
��8 9
pager
��9 >
.
��> ?
PageSize
��? G
)
��G H
;
��H I
if
�� 
(
�� 
enableOrdering
�� &
)
��& '
{
�� 
pager
�� 
.
�� 
After
�� #
=
��$ %
containedItems
��& 4
.
��4 5
Last
��5 9
(
��9 :
)
��: ;
.
��; <
As
��< >
<
��> ?
ContainedPart
��? L
>
��L M
(
��M N
)
��N O
.
��O P
Order
��P U
.
��U V
ToString
��V ^
(
��^ _
)
��_ `
;
��` a
}
�� 
else
�� 
{
�� 
pager
�� 
.
�� 
After
�� #
=
��$ %
containedItems
��& 4
.
��4 5
Last
��5 9
(
��9 :
)
��: ;
.
��; <

CreatedUtc
��< F
.
��F G
Value
��G L
.
��L M
Ticks
��M R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 
return
�� 
containedItems
�� %
;
��% &
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
enableOrdering
�� "
)
��" #
{
�� 
query
�� 
=
�� 
_session
�� $
.
��$ %
Query
��% *
<
��* +
ContentItem
��+ 6
>
��6 7
(
��7 8
)
��8 9
.
�� 
With
�� 
(
�� 3
%CreateOrderedContainedPartIndexFilter
�� C
(
��C D
null
��D H
,
��H I
null
��J N
,
��N O
contentItemId
��P ]
)
��] ^
)
��^ _
.
�� 
OrderBy
��  
(
��  !
x
��! "
=>
��# %
x
��& '
.
��' (
Order
��( -
)
��- .
;
��. /
}
�� 
else
�� 
{
�� 
query
�� 
=
�� 
_session
�� $
.
��$ %
Query
��% *
<
��* +
ContentItem
��+ 6
>
��6 7
(
��7 8
)
��8 9
.
�� 
With
�� 
<
��  
ContainedPartIndex
�� 0
>
��0 1
(
��1 2
x
��2 3
=>
��4 6
x
��7 8
.
��8 9
ListContentItemId
��9 J
==
��K M
contentItemId
��N [
)
��[ \
;
��\ ]+
ApplyPagingContentIndexFilter
�� 1
(
��1 2
null
��2 6
,
��6 7
null
��8 <
,
��< =
false
��> C
,
��C D
query
��E J
)
��J K
;
��K L
}
�� -
ApplyContainedItemOptionsFilter
�� /
(
��/ 0"
containedItemOptions
��0 D
,
��D E
query
��F K
)
��K L
;
��L M
query
�� 
.
�� 
Take
�� 
(
�� 
pager
��  
.
��  !
PageSize
��! )
+
��* +
$num
��, -
)
��- .
;
��. /
var
�� 
containedItems
�� "
=
��# $
await
��% *
query
��+ 0
.
��0 1
	ListAsync
��1 :
(
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
!
�� 
containedItems
�� #
.
��# $
Any
��$ '
(
��' (
)
��( )
)
��) *
{
�� 
return
�� 
containedItems
�� )
;
��) *
}
�� 
pager
�� 
.
�� 
Before
�� 
=
�� 
null
�� #
;
��# $
pager
�� 
.
�� 
After
�� 
=
�� 
null
�� "
;
��" #
if
�� 
(
�� 
containedItems
�� "
.
��" #
Count
��# (
(
��( )
)
��) *
==
��+ -
pager
��. 3
.
��3 4
PageSize
��4 <
+
��= >
$num
��? @
)
��@ A
{
�� 
containedItems
�� "
=
��# $
containedItems
��% 3
.
��3 4
Take
��4 8
(
��8 9
pager
��9 >
.
��> ?
PageSize
��? G
)
��G H
;
��H I
if
�� 
(
�� 
enableOrdering
�� &
)
��& '
{
�� 
pager
�� 
.
�� 
After
�� #
=
��$ %
containedItems
��& 4
.
��4 5
Last
��5 9
(
��9 :
)
��: ;
.
��; <
As
��< >
<
��> ?
ContainedPart
��? L
>
��L M
(
��M N
)
��N O
.
��O P
Order
��P U
.
��U V
ToString
��V ^
(
��^ _
)
��_ `
;
��` a
}
�� 
else
�� 
{
�� 
pager
�� 
.
�� 
After
�� #
=
��$ %
containedItems
��& 4
.
��4 5
Last
��5 9
(
��9 :
)
��: ;
.
��; <

CreatedUtc
��< F
.
��F G
Value
��G L
.
��L M
Ticks
��M R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 
return
�� 
containedItems
�� %
;
��% &
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� +
ApplyPagingContentIndexFilter
�� 9
(
��9 :
DateTime
��: B
?
��B C
before
��D J
,
��J K
DateTime
��L T
?
��T U
after
��V [
,
��[ \
bool
��] a

orderByAsc
��b l
,
��l m
IQuery
��n t
<
��t u
ContentItem��u �
>��� �
query��� �
)��� �
{
�� 	
var
�� 

indexQuery
�� 
=
�� 
query
�� "
.
��" #
With
��# '
<
��' (
ContentItemIndex
��( 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
if
�� 
(
�� 
before
�� 
!=
�� 
null
�� 
)
�� 
{
�� 

indexQuery
�� 
.
�� 
Where
��  
(
��  !
i
��! "
=>
��# %
i
��& '
.
��' (

CreatedUtc
��( 2
>
��3 4
before
��5 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
after
�� 
!=
�� 
null
�� 
)
�� 
{
�� 

indexQuery
�� 
.
�� 
Where
��  
(
��  !
i
��! "
=>
��# %
i
��& '
.
��' (

CreatedUtc
��( 2
<
��3 4
after
��5 :
)
��: ;
;
��; <
}
�� 
if
�� 
(
�� 

orderByAsc
�� 
)
�� 
{
�� 

indexQuery
�� 
.
�� 
OrderBy
�� "
(
��" #
i
��# $
=>
��% '
i
��( )
.
��) *

CreatedUtc
��* 4
)
��4 5
;
��5 6
}
�� 
else
�� 
{
�� 

indexQuery
�� 
.
�� 
OrderByDescending
�� ,
(
��, -
i
��- .
=>
��/ 1
i
��2 3
.
��3 4

CreatedUtc
��4 >
)
��> ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� -
ApplyContainedItemOptionsFilter
�� 4
(
��4 5"
ContainedItemOptions
��5 I"
containedItemOptions
��J ^
,
��^ _
IQuery
��` f
<
��f g
ContentItem
��g r
>
��r s
query
��t y
)
��y z
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &"
containedItemOptions
��& :
.
��: ;
DisplayText
��; F
)
��F G
)
��G H
{
�� 
query
�� 
.
�� 
With
�� 
<
�� 
ContentItemIndex
�� +
>
��+ ,
(
��, -
i
��- .
=>
��/ 1
i
��2 3
.
��3 4
DisplayText
��4 ?
.
��? @
Contains
��@ H
(
��H I"
containedItemOptions
��I ]
.
��] ^
DisplayText
��^ i
)
��i j
)
��j k
;
��k l
}
�� 
switch
�� 
(
�� "
containedItemOptions
�� (
.
��( )
Status
��) /
)
��/ 0
{
�� 
case
�� 
ContentsStatus
�� #
.
��# $
	Published
��$ -
:
��- .
query
�� 
.
�� 
With
�� 
<
�� 
ContentItemIndex
�� /
>
��/ 0
(
��0 1
i
��1 2
=>
��3 5
i
��6 7
.
��7 8
	Published
��8 A
)
��A B
;
��B C
break
�� 
;
�� 
case
�� 
ContentsStatus
�� #
.
��# $
Latest
��$ *
:
��* +
query
�� 
.
�� 
With
�� 
<
�� 
ContentItemIndex
�� /
>
��/ 0
(
��0 1
i
��1 2
=>
��3 5
i
��6 7
.
��7 8
Latest
��8 >
)
��> ?
;
��? @
break
�� 
;
�� 
case
�� 
ContentsStatus
�� #
.
��# $
Draft
��$ )
:
��) *
query
�� 
.
�� 
With
�� 
<
�� 
ContentItemIndex
�� /
>
��/ 0
(
��0 1
i
��1 2
=>
��3 5
!
��6 7
i
��7 8
.
��8 9
	Published
��9 B
&&
��C E
i
��F G
.
��G H
Latest
��H N
)
��N O
;
��O P
break
�� 
;
�� 
case
�� 
ContentsStatus
�� #
.
��# $
Owner
��$ )
:
��) *
var
�� 
currentUserName
�� '
=
��( )"
_httpContextAccessor
��* >
.
��> ?
HttpContext
��? J
?
��J K
.
��K L
User
��L P
?
��P Q
.
��Q R
FindFirstValue
��R `
(
��` a

ClaimTypes
��a k
.
��k l
NameIdentifier
��l z
)
��z {
;
��{ |
if
�� 
(
�� 
currentUserName
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
query
�� 
.
�� 
With
�� "
<
��" #
ContentItemIndex
��# 3
>
��3 4
(
��4 5
i
��5 6
=>
��7 9
i
��: ;
.
��; <
Owner
��< A
==
��B D
currentUserName
��E T
)
��T U
;
��U V
}
�� 
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� #
NotSupportedException
�� 3
(
��3 4
$str
��4 L
)
��L M
;
��M N
}
�� 
}
�� 	
private
�� 
static
�� 

Expression
�� !
<
��! "
Func
��" &
<
��& ' 
ContainedPartIndex
��' 9
,
��9 :
bool
��; ?
>
��? @
>
��@ A3
%CreateOrderedContainedPartIndexFilter
��B g
(
��g h
int
��h k
?
��k l
before
��m s
,
��s t
int
��u x
?
��x y
after
��z 
,�� �
string��� �
contentItemId��� �
)��� �
{
�� 	
if
�� 
(
�� 
before
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Order
�� #
<
��$ %
before
��& ,
&&
��- /
x
��0 1
.
��1 2
ListContentItemId
��2 C
==
��D F
contentItemId
��G T
;
��T U
}
�� 
if
�� 
(
�� 
after
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
return
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
Order
�� #
>
��$ %
after
��& +
&&
��, .
x
��/ 0
.
��0 1
ListContentItemId
��1 B
==
��C E
contentItemId
��F S
;
��S T
}
�� 
return
�� 
x
�� 
=>
�� 
x
�� 
.
�� 
ListContentItemId
�� +
==
��, .
contentItemId
��/ <
;
��< =
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Services\IContainerService.cs
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
ContainedItemOptions	| �"
containedItemOptions
� �
)
� �
;
� �
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
}!! �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Services\ListPartContentsAdminListFilter.cs
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
}44 �>
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\Settings\ListPartSettingsDisplayDriver.cs
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
UpdateTypePartEditorContext	66t �
context
66� �
)
66� �
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
EnableOrdering	@@{ �
)
@@� �
;
@@� �
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
$str	DD` �
]
DD� �
)
DD� �
;
DD� �
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
}YY �O
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
�� 
:
�� 
$str
�� =
,
��= >
defaults
�� 
:
�� 
new
�� 
{
�� 

controller
��  *
=
��+ ,
$str
��- 3
,
��3 4
action
��5 ;
=
��< =
$str
��> E
,
��E F
format
��G M
=
��N O
$str
��P U
}
��V W
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\EditContainedPartViewModel.cs
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
}		 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartContentsAdminFilterViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartFilterViewModel.cs
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
 �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartSettingsViewModel.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Lists\ViewModels\ListPartViewModel.cs
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