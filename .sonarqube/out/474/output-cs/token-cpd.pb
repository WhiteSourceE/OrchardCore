ÒK
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Controllers '
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
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
AdminController 
( 
IContentManager 
contentManager *
,* +%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A
IShapeFactory 
shapeFactory &
,& ' 
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{   	
_contentManager!! 
=!! 
contentManager!! ,
;!!, -%
_contentDefinitionManager"" %
=""& '$
contentDefinitionManager""( @
;""@ A&
_contentItemDisplayManager## &
=##' (%
contentItemDisplayManager##) B
;##B C
_shapeFactory$$ 
=$$ 
shapeFactory$$ (
;$$( ) 
_updateModelAccessor%%  
=%%! "
updateModelAccessor%%# 6
;%%6 7
}&& 	
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
BuildEditor(() 4
(((4 5
string((5 ;
id((< >
,((> ?
string((@ F
prefix((G M
,((M N
string((O U
prefixesName((V b
,((b c
string((d j
contentTypesName((k {
,(({ |
string	((} É
targetId
((Ñ å
,
((å ç
bool
((é í
flowmetadata
((ì ü
,
((ü †
string
((° ß
parentContentType
((® π
,
((π ∫
string
((ª ¡
partName
((¬  
)
((  À
{)) 	
if** 
(** 
String** 
.** 
IsNullOrWhiteSpace** )
(**) *
id*** ,
)**, -
)**- .
{++ 
return,, 
NotFound,, 
(,,  
),,  !
;,,! "
}-- 
var// 
contentItem// 
=// 
await// #
_contentManager//$ 3
.//3 4
NewAsync//4 <
(//< =
id//= ?
)//? @
;//@ A
string22 
cardCollectionType22 %
=22& '
null22( ,
;22, -
int33 
colSize33 
=33 
$num33 
;33 
IEnumerable44 
<44 !
ContentTypeDefinition44 -
>44- .!
containedContentTypes44/ D
=44E F
null44G K
;44K L
if66 
(66 
flowmetadata66 
)66 
{77 
var88 
metadata88 
=88 
new88 "
FlowMetadata88# /
(88/ 0
)880 1
;881 2
contentItem99 
.99 
Weld99  
(99  !
metadata99! )
)99) *
;99* +
colSize:: 
=:: 
(:: 
int:: 
):: 
Math:: #
.::# $
Round::$ )
(::) *
(::* +
double::+ 1
)::1 2
metadata::2 :
.::: ;
Size::; ?
/::@ A
$num::B G
*::H I
$num::J L
)::L M
;::M N!
containedContentTypes;; %
=;;& '$
GetContainedContentTypes;;( @
(;;@ A
parentContentType;;A R
,;;R S
partName;;T \
);;\ ]
;;;] ^
cardCollectionType== "
===# $
nameof==% +
(==+ ,
FlowPart==, 4
)==4 5
;==5 6
}>> 
else?? 
{@@ 
cardCollectionTypeAA "
=AA# $
nameofAA% +
(AA+ ,
BagPartAA, 3
)AA3 4
;AA4 5
}BB 
dynamicEE 
contentCardEE 
=EE  !
awaitEE" '
_shapeFactoryEE( 5
.EE5 6
NewEE6 9
.EE9 :
ContentCardEE: E
(EEE F
UpdaterGG 
:GG  
_updateModelAccessorGG -
.GG- .
ModelUpdaterGG. :
,GG: ;
CollectionShapeTypeII #
:II# $
cardCollectionTypeII% 7
,II7 8
ContentItemJJ 
:JJ 
contentItemJJ (
,JJ( )
BuildEditorKK 
:KK 
trueKK !
,KK! "
ParentContentTypeLL !
:LL! "
parentContentTypeLL# 4
,LL4 5
CollectionPartNameMM "
:MM" #
partNameMM$ ,
,MM, -!
ContainedContentTypesNN %
:NN% &!
containedContentTypesNN' <
,NN< =
TargetIdPP 
:PP 
targetIdPP "
,PP" #
InlineQQ 
:QQ 
trueQQ 
,QQ 
CanMoveRR 
:RR 
trueRR 
,RR 
	CanDeleteSS 
:SS 
trueSS 
,SS  
HtmlFieldPrefixVV 
:VV  
prefixVV! '
,VV' (

PrefixesIdWW 
:WW 
prefixesNameWW (
.WW( )
ReplaceWW) 0
(WW0 1
$charWW1 4
,WW4 5
$charWW6 9
)WW9 :
,WW: ;
PrefixesNameXX 
:XX 
prefixesNameXX *
,XX* +
ContentTypesIdZZ 
:ZZ 
contentTypesNameZZ  0
.ZZ0 1
ReplaceZZ1 8
(ZZ8 9
$charZZ9 <
,ZZ< =
$charZZ> A
)ZZA B
,ZZB C
ContentTypesName[[  
:[[  !
contentTypesName[[" 2
)\\ 
;\\ 
if^^ 
(^^ 
flowmetadata^^ 
)^^ 
{__ 
contentCard`` 
.`` 

ColumnSize`` &
=``' (
colSize``) 0
;``0 1
}aa 
varcc 
modelcc 
=cc 
newcc  
BuildEditorViewModelcc 0
{dd 
EditorShapeee 
=ee 
contentCardee )
}ff 
;ff 
returngg 
Viewgg 
(gg 
$strgg !
,gg! "
modelgg# (
)gg( )
;gg) *
}hh 	
privatejj 
IEnumerablejj 
<jj !
ContentTypeDefinitionjj 1
>jj1 2$
GetContainedContentTypesjj3 K
(jjK L
stringjjL R
contentTypejjS ^
,jj^ _
stringjj` f
partNamejjg o
)jjo p
{kk 	
varll 
settingsll 
=ll %
_contentDefinitionManagerll 4
.ll4 5
GetTypeDefinitionll5 F
(llF G
contentTypellG R
)llR S
?llS T
.llT U
PartsllU Z
.llZ [
SingleOrDefaultll[ j
(llj k
xllk l
=>llm o
xllp q
.llq r
Namellr v
==llw y
partName	llz Ç
)
llÇ É
?
llÉ Ñ
.
llÑ Ö
GetSettings
llÖ ê
<
llê ë
FlowPartSettings
llë °
>
ll° ¢
(
ll¢ £
)
ll£ §
;
ll§ •
ifnn 
(nn 
settingsnn 
==nn 
nullnn  
||nn! #
settingsnn$ ,
.nn, -!
ContainedContentTypesnn- B
==nnC E
nullnnF J
||nnK M
!nnN O
settingsnnO W
.nnW X!
ContainedContentTypesnnX m
.nnm n
Anynnn q
(nnq r
)nnr s
)nns t
{oo 
returnpp %
_contentDefinitionManagerpp 0
.pp0 1
ListTypeDefinitionspp1 D
(ppD E
)ppE F
.ppF G
WhereppG L
(ppL M
tppM N
=>ppO Q
tppR S
.ppS T
GetSettingsppT _
<pp_ `
ContentTypeSettingspp` s
>pps t
(ppt u
)ppu v
.ppv w

Stereotype	ppw Å
==
ppÇ Ñ
$str
ppÖ ç
)
ppç é
;
ppé è
}qq 
returnss 
settingsss 
.ss !
ContainedContentTypesss 1
.tt 
Selecttt 
(tt 
contentTypett #
=>tt$ &%
_contentDefinitionManagertt' @
.tt@ A
GetTypeDefinitionttA R
(ttR S
contentTypettS ^
)tt^ _
)tt_ `
.uu 
Whereuu 
(uu 
tuu 
=>uu 
tuu 
!=uu  
nulluu! %
&&uu& (
tuu) *
.uu* +
GetSettingsuu+ 6
<uu6 7
ContentTypeSettingsuu7 J
>uuJ K
(uuK L
)uuL M
.uuM N

StereotypeuuN X
==uuY [
$struu\ d
)uud e
;uue f
}vv 	
}ww 
}xx úE
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Drivers\BagPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Drivers #
{ 
public 

class  
BagPartDisplayDriver %
:& '$
ContentPartDisplayDriver( @
<@ A
BagPartA H
>H I
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public  
BagPartDisplayDriver #
(# $
IContentManager 
contentManager *
,* +%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IServiceProvider 
serviceProvider ,
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_contentManager 
= 
contentManager ,
;, -
_serviceProvider   
=   
serviceProvider   .
;  . /
}!! 	
public## 
override## 
IDisplayResult## &
Display##' .
(##. /
BagPart##/ 6
bagPart##7 >
,##> ?#
BuildPartDisplayContext##@ W
context##X _
)##_ `
{$$ 	
var%% 
hasItems%% 
=%% 
bagPart%% "
.%%" #
ContentItems%%# /
.%%/ 0
Any%%0 3
(%%3 4
)%%4 5
;%%5 6
return'' 

Initialize'' 
<'' 
BagPartViewModel'' .
>''. /
(''/ 0
hasItems''0 8
?''9 :
$str''; D
:''E F
$str''G V
,''V W
m''X Y
=>''Z \
{(( 
m)) 
.)) 
BagPart)) 
=)) 
bagPart)) #
;))# $
m** 
.** #
BuildPartDisplayContext** )
=*** +
context**, 3
;**3 4
m++ 
.++ 
Settings++ 
=++ 
context++ $
.++$ %
TypePartDefinition++% 7
.++7 8
GetSettings++8 C
<++C D
BagPartSettings++D S
>++S T
(++T U
)++U V
;++V W
},, 
),, 
.-- 
Location-- 
(-- 
$str-- 
,-- 
$str--  +
)--+ ,
... 
Location.. 
(.. 
$str.. 
,..  
$str..! ,
).., -
;..- .
}// 	
public11 
override11 
IDisplayResult11 &
Edit11' +
(11+ ,
BagPart11, 3
bagPart114 ;
,11; <"
BuildPartEditorContext11= S
context11T [
)11[ \
{22 	
return33 

Initialize33 
<33  
BagPartEditViewModel33 2
>332 3
(333 4
$str334 B
,33B C
m33D E
=>33F H
{44 
m55 
.55 
BagPart55 
=55 
bagPart55 #
;55# $
m66 
.66 
Updater66 
=66 
context66 #
.66# $
Updater66$ +
;66+ ,
m77 
.77 +
ContainedContentTypeDefinitions77 1
=772 3$
GetContainedContentTypes774 L
(77L M
context77M T
.77T U
TypePartDefinition77U g
)77g h
;77h i
}88 
)88 
;88 
}99 	
public;; 
override;; 
async;; 
Task;; "
<;;" #
IDisplayResult;;# 1
>;;1 2
UpdateAsync;;3 >
(;;> ?
BagPart;;? F
part;;G K
,;;K L#
UpdatePartEditorContext;;M d
context;;e l
);;l m
{<< 	
var== %
contentItemDisplayManager== )
===* +
_serviceProvider==, <
.==< =
GetRequiredService=== O
<==O P&
IContentItemDisplayManager==P j
>==j k
(==k l
)==l m
;==m n
var>> 
model>> 
=>> 
new>>  
BagPartEditViewModel>> 0
{>>1 2
BagPart>>3 :
=>>; <
part>>= A
}>>B C
;>>C D
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
)@@C D
;@@D E
varBB 
contentItemsBB 
=BB 
newBB "
ListBB# '
<BB' (
ContentItemBB( 3
>BB3 4
(BB4 5
)BB5 6
;BB6 7
forDD 
(DD 
varDD 
iDD 
=DD 
$numDD 
;DD 
iDD 
<DD 
modelDD  %
.DD% &
PrefixesDD& .
.DD. /
LengthDD/ 5
;DD5 6
iDD7 8
++DD8 :
)DD: ;
{EE 
varFF 
contentItemFF 
=FF  !
awaitFF" '
_contentManagerFF( 7
.FF7 8
NewAsyncFF8 @
(FF@ A
modelFFA F
.FFF G
ContentTypesFFG S
[FFS T
iFFT U
]FFU V
)FFV W
;FFW X
varGG 
existingContentItemGG '
=GG( )
partGG* .
.GG. /
ContentItemsGG/ ;
.GG; <
FirstOrDefaultGG< J
(GGJ K
xGGK L
=>GGM O
StringGGP V
.GGV W
EqualsGGW ]
(GG] ^
xGG^ _
.GG_ `
ContentItemIdGG` m
,GGm n
modelGGo t
.GGt u
PrefixesGGu }
[GG} ~
iGG~ 
]	GG Ä
,
GGÄ Å
StringComparison
GGÇ í
.
GGí ì
OrdinalIgnoreCase
GGì §
)
GG§ •
)
GG• ¶
;
GG¶ ß
ifKK 
(KK 
existingContentItemKK '
!=KK( *
nullKK+ /
)KK/ 0
{LL 
contentItemMM 
.MM  
ContentItemIdMM  -
=MM. /
modelMM0 5
.MM5 6
PrefixesMM6 >
[MM> ?
iMM? @
]MM@ A
;MMA B
contentItemNN 
.NN  
MergeNN  %
(NN% &
existingContentItemNN& 9
)NN9 :
;NN: ;
}OO 
varQQ 
widgetModelQQ 
=QQ  !
awaitQQ" '%
contentItemDisplayManagerQQ( A
.QQA B
UpdateEditorAsyncQQB S
(QQS T
contentItemQQT _
,QQ_ `
contextQQa h
.QQh i
UpdaterQQi p
,QQp q
contextQQr y
.QQy z
IsNewQQz 
,	QQ Ä
htmlFieldPrefix
QQÅ ê
:
QQê ë
model
QQí ó
.
QQó ò
Prefixes
QQò †
[
QQ† °
i
QQ° ¢
]
QQ¢ £
)
QQ£ §
;
QQ§ •
contentItemsSS 
.SS 
AddSS  
(SS  !
contentItemSS! ,
)SS, -
;SS- .
}TT 
partVV 
.VV 
ContentItemsVV 
=VV 
contentItemsVV  ,
;VV, -
returnXX 
EditXX 
(XX 
partXX 
,XX 
contextXX %
)XX% &
;XX& '
}YY 	
private[[ 
IEnumerable[[ 
<[[ !
ContentTypeDefinition[[ 1
>[[1 2$
GetContainedContentTypes[[3 K
([[K L%
ContentTypePartDefinition[[L e
typePartDefinition[[f x
)[[x y
{\\ 	
var]] 
settings]] 
=]] 
typePartDefinition]] -
.]]- .
GetSettings]]. 9
<]]9 :
BagPartSettings]]: I
>]]I J
(]]J K
)]]K L
;]]L M
return__ 
settings__ 
.__ !
ContainedContentTypes__ 1
.`` 
Select`` 
(`` 
contentType`` #
=>``$ &%
_contentDefinitionManager``' @
.``@ A
GetTypeDefinition``A R
(``R S
contentType``S ^
)``^ _
)``_ `
.aa 
Whereaa 
(aa 
contentTypeaa "
=>aa# %
contentTypeaa& 1
!=aa2 4
nullaa5 9
)aa9 :
;aa: ;
}bb 	
}cc 
}dd ñ
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Drivers\FlowMetadataDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Drivers #
{		 
public

 

class

 %
FlowMetadataDisplayDriver

 *
:

+ , 
ContentDisplayDriver

- A
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,
ContentItem, 7
model8 =
,= >
IUpdateModel? K
updaterL S
)S T
{ 	
var 
flowMetadata 
= 
model $
.$ %
As% '
<' (
FlowMetadata( 4
>4 5
(5 6
)6 7
;7 8
if 
( 
flowMetadata 
== 
null  $
)$ %
{ 
return 
null 
; 
} 
return 

Initialize 
< 
FlowMetadata *
>* +
(+ ,
$str, ?
,? @
mA B
=>C E
{ 
m 
. 
	Alignment 
= 
flowMetadata *
.* +
	Alignment+ 4
;4 5
m 
. 
Size 
= 
flowMetadata %
.% &
Size& *
;* +
} 
) 
. 
Location 
( 
$str  
)  !
;! "
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?
ContentItem? J
contentItemK V
,V W
IUpdateModelX d
updatere l
)l m
{ 	
var 
flowMetadata 
= 
contentItem *
.* +
As+ -
<- .
FlowMetadata. :
>: ;
(; <
)< =
;= >
if   
(   
flowMetadata   
==   
null    $
)  $ %
{!! 
return"" 
null"" 
;"" 
}## 
await%% 
contentItem%% 
.%% 

AlterAsync%% (
<%%( )
FlowMetadata%%) 5
>%%5 6
(%%6 7
model%%7 <
=>%%= ?
updater%%@ G
.%%G H
TryUpdateModelAsync%%H [
(%%[ \
model%%\ a
,%%a b
Prefix%%c i
)%%i j
)%%j k
;%%k l
return'' 
Edit'' 
('' 
contentItem'' #
,''# $
updater''% ,
)'', -
;''- .
}(( 	
})) 
}** –K
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Drivers\FlowPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Drivers #
{ 
public 

class !
FlowPartDisplayDriver &
:' ($
ContentPartDisplayDriver) A
<A B
FlowPartB J
>J K
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
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public !
FlowPartDisplayDriver $
($ %%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IContentManager 
contentManager *
,* +
IServiceProvider 
serviceProvider ,
) 
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_contentManager   
=   
contentManager   ,
;  , -
_serviceProvider!! 
=!! 
serviceProvider!! .
;!!. /
}"" 	
public$$ 
override$$ 
IDisplayResult$$ &
Display$$' .
($$. /
FlowPart$$/ 7
flowPart$$8 @
,$$@ A#
BuildPartDisplayContext$$B Y
context$$Z a
)$$a b
{%% 	
var&& 
hasItems&& 
=&& 
flowPart&& #
.&&# $
Widgets&&$ +
.&&+ ,
Any&&, /
(&&/ 0
)&&0 1
;&&1 2
return(( 

Initialize(( 
<(( 
FlowPartViewModel(( /
>((/ 0
(((0 1
hasItems((1 9
?((: ;
$str((< F
:((G H
$str((I Y
,((Y Z
m(([ \
=>((] _
{)) 
m** 
.** 
FlowPart** 
=** 
flowPart** %
;**% &
m++ 
.++ #
BuildPartDisplayContext++ )
=++* +
context++, 3
;++3 4
},, 
),, 
.-- 
Location-- 
(-- 
$str-- 
,-- 
$str--  +
)--+ ,
;--, -
}.. 	
public00 
override00 
IDisplayResult00 &
Edit00' +
(00+ ,
FlowPart00, 4
flowPart005 =
,00= >"
BuildPartEditorContext00? U
context00V ]
)00] ^
{11 	
return22 

Initialize22 
<22 !
FlowPartEditViewModel22 3
>223 4
(224 5
$str225 D
,22D E
m22F G
=>22H J
{33 
m44 
.44 
FlowPart44 
=44 
flowPart44 %
;44% &
m55 
.55 
Updater55 
=55 
context55 #
.55# $
Updater55$ +
;55+ ,
m66 
.66 +
ContainedContentTypeDefinitions66 1
=662 3$
GetContainedContentTypes664 L
(66L M
context66M T
.66T U
TypePartDefinition66U g
)66g h
;66h i
}77 
)77 
;77 
}88 	
public:: 
override:: 
async:: 
Task:: "
<::" #
IDisplayResult::# 1
>::1 2
UpdateAsync::3 >
(::> ?
FlowPart::? G
part::H L
,::L M#
UpdatePartEditorContext::N e
context::f m
)::m n
{;; 	
var<< %
contentItemDisplayManager<< )
=<<* +
_serviceProvider<<, <
.<<< =
GetRequiredService<<= O
<<<O P&
IContentItemDisplayManager<<P j
><<j k
(<<k l
)<<l m
;<<m n
var>> 
model>> 
=>> 
new>> !
FlowPartEditViewModel>> 1
{>>2 3
FlowPart>>4 <
=>>= >
part>>? C
}>>D E
;>>E F
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
)@@C D
;@@D E
varBB 
contentItemsBB 
=BB 
newBB "
ListBB# '
<BB' (
ContentItemBB( 3
>BB3 4
(BB4 5
)BB5 6
;BB6 7
forDD 
(DD 
varDD 
iDD 
=DD 
$numDD 
;DD 
iDD 
<DD 
modelDD  %
.DD% &
PrefixesDD& .
.DD. /
LengthDD/ 5
;DD5 6
iDD7 8
++DD8 :
)DD: ;
{EE 
varFF 
contentItemFF 
=FF  !
awaitFF" '
_contentManagerFF( 7
.FF7 8
NewAsyncFF8 @
(FF@ A
modelFFA F
.FFF G
ContentTypesFFG S
[FFS T
iFFT U
]FFU V
)FFV W
;FFW X
varGG 
existingContentItemGG '
=GG( )
partGG* .
.GG. /
WidgetsGG/ 6
.GG6 7
FirstOrDefaultGG7 E
(GGE F
xGGF G
=>GGH J
StringGGK Q
.GGQ R
EqualsGGR X
(GGX Y
xGGY Z
.GGZ [
ContentItemIdGG[ h
,GGh i
modelGGj o
.GGo p
PrefixesGGp x
[GGx y
iGGy z
]GGz {
,GG{ |
StringComparison	GG} ç
.
GGç é
OrdinalIgnoreCase
GGé ü
)
GGü †
)
GG† °
;
GG° ¢
ifKK 
(KK 
existingContentItemKK '
!=KK( *
nullKK+ /
)KK/ 0
{LL 
contentItemMM 
.MM  
ContentItemIdMM  -
=MM. /
modelMM0 5
.MM5 6
PrefixesMM6 >
[MM> ?
iMM? @
]MM@ A
;MMA B
contentItemNN 
.NN  
MergeNN  %
(NN% &
existingContentItemNN& 9
)NN9 :
;NN: ;
}OO 
contentItemQQ 
.QQ 
WeldQQ  
(QQ  !
newQQ! $
FlowMetadataQQ% 1
(QQ1 2
)QQ2 3
)QQ3 4
;QQ4 5
varSS 
widgetModelSS 
=SS  !
awaitSS" '%
contentItemDisplayManagerSS( A
.SSA B
UpdateEditorAsyncSSB S
(SSS T
contentItemSST _
,SS_ `
contextSSa h
.SSh i
UpdaterSSi p
,SSp q
contextSSr y
.SSy z
IsNewSSz 
,	SS Ä
htmlFieldPrefix
SSÅ ê
:
SSê ë
model
SSí ó
.
SSó ò
Prefixes
SSò †
[
SS† °
i
SS° ¢
]
SS¢ £
)
SS£ §
;
SS§ •
contentItemsUU 
.UU 
AddUU  
(UU  !
contentItemUU! ,
)UU, -
;UU- .
}VV 
partXX 
.XX 
WidgetsXX 
=XX 
contentItemsXX '
;XX' (
returnZZ 
EditZZ 
(ZZ 
partZZ 
,ZZ 
contextZZ %
)ZZ% &
;ZZ& '
}[[ 	
private]] 
IEnumerable]] 
<]] !
ContentTypeDefinition]] 1
>]]1 2$
GetContainedContentTypes]]3 K
(]]K L%
ContentTypePartDefinition]]L e
typePartDefinition]]f x
)]]x y
{^^ 	
var__ 
settings__ 
=__ 
typePartDefinition__ -
.__- .
GetSettings__. 9
<__9 :
FlowPartSettings__: J
>__J K
(__K L
)__L M
;__M N
ifaa 
(aa 
settingsaa 
.aa !
ContainedContentTypesaa .
==aa/ 1
nullaa2 6
||aa7 9
!aa: ;
settingsaa; C
.aaC D!
ContainedContentTypesaaD Y
.aaY Z
AnyaaZ ]
(aa] ^
)aa^ _
)aa_ `
{bb 
returncc %
_contentDefinitionManagercc 0
.cc0 1
ListTypeDefinitionscc1 D
(ccD E
)ccE F
.ccF G
WhereccG L
(ccL M
tccM N
=>ccO Q
tccR S
.ccS T
GetSettingsccT _
<cc_ `
ContentTypeSettingscc` s
>ccs t
(cct u
)ccu v
.ccv w

Stereotype	ccw Å
==
ccÇ Ñ
$str
ccÖ ç
)
ccç é
;
ccé è
}dd 
returnff 
settingsff 
.ff !
ContainedContentTypesff 1
.gg 
Selectgg 
(gg 
contentTypegg #
=>gg$ &%
_contentDefinitionManagergg' @
.gg@ A
GetTypeDefinitionggA R
(ggR S
contentTypeggS ^
)gg^ _
)gg_ `
.hh 
Wherehh 
(hh 
thh 
=>hh 
thh 
!=hh  
nullhh! %
&&hh& (
thh) *
.hh* +
GetSettingshh+ 6
<hh6 7
ContentTypeSettingshh7 J
>hhJ K
(hhK L
)hhL M
.hhM N

StereotypehhN X
==hhY [
$strhh\ d
)hhd e
;hhe f
}ii 	
}jj 
}kk ú
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\GraphQL\BagPartQueryObjectType.cs
	namespace		 	
OrchardCore		
 
.		 
Flows		 
.		 
GraphQL		 #
{

 
public 

class "
BagPartQueryObjectType '
:( )
ObjectGraphType* 9
<9 :
BagPart: A
>A B
{ 
public "
BagPartQueryObjectType %
(% &
IStringLocalizer& 6
<6 7"
BagPartQueryObjectType7 M
>M N
SO P
)P Q
{ 	
Name 
= 
$str 
; 
Description 
= 
S 
[ 
$str h
]h i
;i j
Field 
< 
ListGraphType 
<   
ContentItemInterface  4
>4 5
,5 6
IEnumerable7 B
<B C
ContentItemC N
>N O
>O P
(P Q
)Q R
. 
Name 
( 
$str $
)$ %
. 
Description 
( 
$str 0
)0 1
. 
PagingArguments  
(  !
)! "
. 
Resolve 
( 
x 
=> 
x 
.  
Page  $
($ %
x% &
.& '
Source' -
.- .
ContentItems. :
): ;
); <
;< =
} 	
} 
} ä

éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\GraphQL\FlowAlignmentEnum.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
GraphQL #
{ 
public 

class 
FlowAlignmentEnum "
:# $ 
EnumerationGraphType% 9
{ 
public 
FlowAlignmentEnum  
(  !
)! "
{ 	
Name		 
=		 
$str		 "
;		" #
Description 
= 
$str 1
;1 2
AddValue 
( 
$str 
, 
$str .
,. /
$num0 1
)1 2
;2 3
AddValue 
( 
$str 
, 
$str 2
,2 3
$num4 5
)5 6
;6 7
AddValue 
( 
$str 
, 
$str 0
,0 1
$num2 3
)3 4
;4 5
AddValue 
( 
$str 
, 
$str  4
,4 5
$num6 7
)7 8
;8 9
} 	
} 
} ¯
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\GraphQL\FlowMetadataContentTypeBuilder.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
GraphQL #
{		 
public

 

class

 *
FlowMetadataContentTypeBuilder

 /
:

0 1
IContentTypeBuilder

2 E
{ 
public 
void 
Build 
( 
	FieldType #
contentQuery$ 0
,0 1!
ContentTypeDefinition2 G!
contentTypeDefinitionH ]
,] ^
ContentItemType_ n
contentItemTypeo ~
)~ 
{ 	
var 
settings 
= !
contentTypeDefinition 0
.0 1
GetSettings1 <
<< =
ContentTypeSettings= P
>P Q
(Q R
)R S
;S T
if 
( 
settings 
. 

Stereotype #
!=$ &
$str' /
)/ 0
return1 7
;7 8
contentItemType 
. 
Field !
<! "'
FlowMetadataQueryObjectType" =
>= >
(> ?
$str 
, 
resolve 
: 
context  
=>! #
context$ +
.+ ,
Source, 2
.2 3
As3 5
<5 6
FlowMetadata6 B
>B C
(C D
)D E
) 
; 
} 	
} 
} ö
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\GraphQL\FlowMetadataQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
GraphQL #
{ 
public 

class '
FlowMetadataQueryObjectType ,
:- .
ObjectGraphType/ >
<> ?
FlowMetadata? K
>K L
{ 
public '
FlowMetadataQueryObjectType *
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
 !
;

! "
Field 
( 
x 
=> 
x 
. 
Size 
, 
nullable '
:' (
true) -
)- .
;. /
Field 
< 
FlowAlignmentEnum #
># $
($ %
$str% 0
)0 1
;1 2
} 	
} 
} ¨

îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\GraphQL\FlowPartQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
GraphQL #
{ 
public 

class #
FlowPartQueryObjectType (
:) *
ObjectGraphType+ :
<: ;
FlowPart; C
>C D
{		 
public

 #
FlowPartQueryObjectType

 &
(

& '
IStringLocalizer

' 7
<

7 8#
FlowPartQueryObjectType

8 O
>

O P
S

Q R
)

R S
{ 	
Name 
= 
$str 
; 
Description 
= 
S 
[ 
$str i
]i j
;j k
Field 
< 
ListGraphType 
<   
ContentItemInterface  4
>4 5
>5 6
(6 7
$str 
, 
$str 
, 
resolve 
: 
context  
=>! #
context$ +
.+ ,
Source, 2
.2 3
Widgets3 :
): ;
;; <
} 	
} 
} ∆
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
GraphQL #
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
<' (
BagPart( /
,/ 0"
BagPartQueryObjectType1 G
>G H
(H I
)I J
;J K
services 
. 
AddObjectGraphType '
<' (
FlowPart( 0
,0 1#
FlowPartQueryObjectType2 I
>I J
(J K
)K L
;L M
services 
. 
AddObjectGraphType '
<' (
FlowMetadata( 4
,4 5'
FlowMetadataQueryObjectType6 Q
>Q R
(R S
)S T
;T U
services 
. 
	AddScoped 
< 
IContentTypeBuilder 2
,2 3*
FlowMetadataContentTypeBuilder4 R
>R S
(S T
)T U
;U V
} 	
} 
} Ω
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Handlers\BagPartHandler.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Handlers $
{ 
public		 

class		 
BagPartHandler		 
:		  !
ContentPartHandler		" 4
<		4 5
BagPart		5 <
>		< =
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
,W X
BagPartY `
parta e
)e f
{ 	
return 
context 
. 
ForAsync #
<# $'
ContainedContentItemsAspect$ ?
>? @
(@ A
aspectA G
=>H J
{ 
aspect 
. 
	Accessors  
.  !
Add! $
($ %
(% &
jObject& -
)- .
=>/ 1
{ 
var 
jContent  
=! "
part# '
.' (
Content( /
as0 2
JObject3 :
;: ;
return 
jObject "
[" #
jContent# +
.+ ,
Path, 0
]0 1
[1 2
$str2 @
]@ A
asB D
JArrayE K
;K L
} 
) 
; 
return 
Task 
. 
CompletedTask )
;) *
} 
) 
; 
} 	
} 
} Í
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Indexing\BagPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Indexing $
{		 
public

 

class

 
BagPartIndexHandler

 $
:

% &#
ContentPartIndexHandler

' >
<

> ?
BagPart

? F
>

F G
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public 
BagPartIndexHandler "
(" #
IServiceProvider# 3
serviceProvider4 C
)C D
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
async 
Task "
BuildIndexAsync# 2
(2 3
BagPart3 :
bagPart; B
,B C!
BuildPartIndexContextD Y
contextZ a
)a b
{ 	
var 
options 
= 
context !
.! "
Settings" *
.* +
	ToOptions+ 4
(4 5
)5 6
;6 7
if 
( 
options 
==  
DocumentIndexOptions /
./ 0
None0 4
)4 5
{ 
return 
; 
} 
if 
( 
bagPart 
. 
ContentItems $
.$ %
Count% *
!=+ -
$num. /
)/ 0
{ 
var $
contentItemIndexHandlers ,
=- .
_serviceProvider/ ?
.? @
GetServices@ K
<K L$
IContentItemIndexHandlerL d
>d e
(e f
)f g
;g h
foreach   
(   
var   #
contentItemIndexHandler   4
in  5 7$
contentItemIndexHandlers  8 P
)  P Q
{!! 
foreach"" 
("" 
var""  
contentItem""! ,
in""- /
bagPart""0 7
.""7 8
ContentItems""8 D
)""D E
{## 
var$$ 
keys$$  
=$$! "
new$$# &
List$$' +
<$$+ ,
string$$, 2
>$$2 3
($$3 4
)$$4 5
;$$5 6
keys%% 
.%% 
Add%%  
(%%  !
contentItem%%! ,
.%%, -
ContentType%%- 8
)%%8 9
;%%9 :
foreach&& 
(&&  !
var&&! $
key&&% (
in&&) +
context&&, 3
.&&3 4
Keys&&4 8
)&&8 9
{'' 
keys((  
.((  !
Add((! $
((($ %
$"((% '
{((' (
key((( +
}((+ ,
.((, -
{((- .
contentItem((. 9
.((9 :
ContentType((: E
}((E F
"((F G
)((G H
;((H I
})) 
var++ 
buildIndexContext++ -
=++. /
new++0 3
BuildIndexContext++4 E
(++E F
context++F M
.++M N
DocumentIndex++N [
,++[ \
contentItem++] h
,++h i
keys++j n
)++n o
;++o p
await-- #
contentItemIndexHandler-- 5
.--5 6
BuildIndexAsync--6 E
(--E F
buildIndexContext--F W
)--W X
;--X Y
}.. 
}// 
}00 
}11 	
}22 
}33 ≠	
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Manifest.cs
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
$str b
,b c
Dependencies 
= 
new 
[ 
] 
{ 
$str 0
}1 2
,2 3
Category 
= 
$str 
) 
] ä
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Migrations.cs
	namespace 	
OrchardCore
 
. 
Flows 
{ 
public 

class 

Migrations 
: 
DataMigration +
{		 
private

 %
IContentDefinitionManager

 )%
_contentDefinitionManager

* C
;

C D
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: D
,D E
builderF M
=>N P
builderQ X
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str	! ã
)
ã å
)
å ç
;
ç é%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: C
,C D
builderE L
=>M O
builderP W
. 

Attachable 
( 
) 
. 
Reusable 
( 
) 
. 
WithDescription  
(  !
$str	! Ä
)
Ä Å
)
Å Ç
;
Ç É
return 
$num 
; 
} 	
public!! 
int!! 
UpdateFrom1!! 
(!! 
)!!  
{"" 	%
_contentDefinitionManager## %
.##% &
AlterPartDefinition##& 9
(##9 :
$str##: C
,##C D
builder##E L
=>##M O
builder##P W
.$$ 

Attachable$$ 
($$ 
)$$ 
.%% 
Reusable%% 
(%% 
)%% 
.&& 
WithDescription&&  
(&&  !
$str	&&! Ä
)
&&Ä Å
)
&&Å Ç
;
&&Ç É
return(( 
$num(( 
;(( 
})) 	
public-- 
int-- 
UpdateFrom2-- 
(-- 
)--  
{.. 	%
_contentDefinitionManager// %
.//% &
MigratePartSettings//& 9
<//9 :
BagPart//: A
,//A B
BagPartSettings//C R
>//R S
(//S T
)//T U
;//U V
return11 
$num11 
;11 
}22 	
}33 
}44 µ
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Models\BagPart.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Models "
{ 
public 

class 
BagPart 
: 
ContentPart &
{ 
[		 	
	BindNever			 
]		 
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
  
ContentItems

! -
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
: ;
=

< =
new

> A
List

B F
<

F G
ContentItem

G R
>

R S
(

S T
)

T U
;

U V
} 
} Ü
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Models\BagPartSettings.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Models "
{ 
public 

class 
BagPartSettings  
{ 
public 
string 
[ 
] !
ContainedContentTypes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
Array> C
.C D
EmptyD I
<I J
stringJ P
>P Q
(Q R
)R S
;S T
public 
string 
DisplayType !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 ø
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Models\FlowMetadata.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Models "
{ 
public 

enum 
FlowAlignment 
{ 
Left 
, 
Center 
, 
Right		 
,		 
Justify

 
} 
public 

class 
FlowMetadata 
: 
ContentPart  +
{ 
public 
FlowAlignment 
	Alignment &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
FlowAlignment7 D
.D E
JustifyE L
;L M
public 
int 
Size 
{ 
get 
; 
set "
;" #
}$ %
=& '
$num( +
;+ ,
} 
} ≤
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Models\FlowPart.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Models "
{ 
public 

class 
FlowPart 
: 
ContentPart '
{ 
[		 	
	BindNever			 
]		 
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
  
Widgets

! (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
=

7 8
new

9 <
List

= A
<

A B
ContentItem

B M
>

M N
(

N O
)

O P
;

P Q
} 
} È
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Models\FlowPartSettings.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Models "
{ 
public 

class 
FlowPartSettings !
{ 
public 
string 
[ 
] !
ContainedContentTypes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
Array> C
.C D
EmptyD I
<I J
stringJ P
>P Q
(Q R
)R S
;S T
} 
}		 ·2
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Settings\BagPartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Settings $
{ 
public 

class (
BagPartSettingsDisplayDriver -
:. /2
&ContentTypePartDefinitionDisplayDriver0 V
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public (
BagPartSettingsDisplayDriver +
(+ ,%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IStringLocalizer 
< (
BagPartSettingsDisplayDriver 9
>9 :
	localizer; D
)D E
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
BagPart& -
)- .
,. /%
contentTypePartDefinition0 I
.I J
PartDefinitionJ X
.X Y
NameY ]
)] ^
)^ _
{ 
return   
null   
;   
}!! 
return## 

Initialize## 
<## $
BagPartSettingsViewModel## 6
>##6 7
(##7 8
$str##8 N
,##N O
model##P U
=>##V X
{$$ 
model%% 
.%% 
BagPartSettings%% %
=%%& '%
contentTypePartDefinition%%( A
.%%A B
GetSettings%%B M
<%%M N
BagPartSettings%%N ]
>%%] ^
(%%^ _
)%%_ `
;%%` a
model&& 
.&& !
ContainedContentTypes&& +
=&&, -
model&&. 3
.&&3 4
BagPartSettings&&4 C
.&&C D!
ContainedContentTypes&&D Y
;&&Y Z
model'' 
.'' 
DisplayType'' !
=''" #
model''$ )
.'') *
BagPartSettings''* 9
.''9 :
DisplayType'': E
;''E F
model(( 
.(( 
ContentTypes(( "
=((# $
new((% (
NameValueCollection(() <
(((< =
)((= >
;((> ?
foreach** 
(** 
var** !
contentTypeDefinition** 2
in**3 5%
_contentDefinitionManager**6 O
.**O P
ListTypeDefinitions**P c
(**c d
)**d e
)**e f
{++ 
model,, 
.,, 
ContentTypes,, &
.,,& '
Add,,' *
(,,* +!
contentTypeDefinition,,+ @
.,,@ A
Name,,A E
,,,E F!
contentTypeDefinition,,G \
.,,\ ]
DisplayName,,] h
),,h i
;,,i j
}-- 
}.. 
).. 
... 
Location.. 
(.. 
$str.. !
)..! "
;.." #
}// 	
public11 
override11 
async11 
Task11 "
<11" #
IDisplayResult11# 1
>111 2
UpdateAsync113 >
(11> ?%
ContentTypePartDefinition11? X%
contentTypePartDefinition11Y r
,11r s(
UpdateTypePartEditorContext	11t è
context
11ê ó
)
11ó ò
{22 	
if33 
(33 
!33 
String33 
.33 
Equals33 
(33 
nameof33 %
(33% &
BagPart33& -
)33- .
,33. /%
contentTypePartDefinition330 I
.33I J
PartDefinition33J X
.33X Y
Name33Y ]
)33] ^
)33^ _
{44 
return55 
null55 
;55 
}66 
var88 
model88 
=88 
new88 $
BagPartSettingsViewModel88 4
(884 5
)885 6
;886 7
await:: 
context:: 
.:: 
Updater:: !
.::! "
TryUpdateModelAsync::" 5
(::5 6
model::6 ;
,::; <
Prefix::= C
,::C D
m::E F
=>::G I
m::J K
.::K L!
ContainedContentTypes::L a
,::a b
m::c d
=>::e g
m::h i
.::i j
DisplayType::j u
)::u v
;::v w
if<< 
(<< 
model<< 
.<< !
ContainedContentTypes<< +
==<<, .
null<</ 3
||<<4 6
model<<7 <
.<<< =!
ContainedContentTypes<<= R
.<<R S
Length<<S Y
==<<Z \
$num<<] ^
)<<^ _
{== 
context>> 
.>> 
Updater>> 
.>>  

ModelState>>  *
.>>* +
AddModelError>>+ 8
(>>8 9
nameof>>9 ?
(>>? @
model>>@ E
.>>E F!
ContainedContentTypes>>F [
)>>[ \
,>>\ ]
S>>^ _
[>>_ `
$str	>>` ç
]
>>ç é
)
>>é è
;
>>è ê
}?? 
else@@ 
{AA 
contextBB 
.BB 
BuilderBB 
.BB  
WithSettingsBB  ,
(BB, -
newBB- 0
BagPartSettingsBB1 @
{CC !
ContainedContentTypesDD )
=DD* +
modelDD, 1
.DD1 2!
ContainedContentTypesDD2 G
,DDG H
DisplayTypeEE 
=EE  !
modelEE" '
.EE' (
DisplayTypeEE( 3
}FF 
)FF 
;FF 
}GG 
returnII 
EditII 
(II %
contentTypePartDefinitionII 1
,II1 2
contextII3 :
.II: ;
UpdaterII; B
)IIB C
;IIC D
}JJ 	
}KK 
}LL •,
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Settings\FlowPartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 
Settings $
{ 
public 

class )
FlowPartSettingsDisplayDriver .
:/ 02
&ContentTypePartDefinitionDisplayDriver1 W
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public )
FlowPartSettingsDisplayDriver ,
(, -%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IStringLocalizer 
< )
FlowPartSettingsDisplayDriver :
>: ;
	localizer< E
)E F
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if   
(   
!   
String   
.   
Equals   
(   
nameof   %
(  % &
FlowPart  & .
)  . /
,  / 0%
contentTypePartDefinition  1 J
.  J K
PartDefinition  K Y
.  Y Z
Name  Z ^
)  ^ _
)  _ `
{!! 
return"" 
null"" 
;"" 
}## 
return%% 

Initialize%% 
<%% %
FlowPartSettingsViewModel%% 7
>%%7 8
(%%8 9
$str%%9 P
,%%P Q
model%%R W
=>%%X Z
{&& 
model'' 
.'' 
FlowPartSettings'' &
=''' (%
contentTypePartDefinition'') B
.''B C
GetSettings''C N
<''N O
FlowPartSettings''O _
>''_ `
(''` a
)''a b
;''b c
model(( 
.(( !
ContainedContentTypes(( +
=((, -
model((. 3
.((3 4
FlowPartSettings((4 D
.((D E!
ContainedContentTypes((E Z
;((Z [
model)) 
.)) 
ContentTypes)) "
=))# $
new))% (
NameValueCollection))) <
())< =
)))= >
;))> ?
foreach++ 
(++ 
var++ !
contentTypeDefinition++ 2
in++3 5%
_contentDefinitionManager++6 O
.++O P
ListTypeDefinitions++P c
(++c d
)++d e
.++e f
Where++f k
(++k l
t++l m
=>++n p
t++q r
.++r s
GetSettings++s ~
<++~  
ContentTypeSettings	++ í
>
++í ì
(
++ì î
)
++î ï
.
++ï ñ

Stereotype
++ñ †
==
++° £
$str
++§ ¨
)
++¨ ≠
)
++≠ Æ
{,, 
model-- 
.-- 
ContentTypes-- &
.--& '
Add--' *
(--* +!
contentTypeDefinition--+ @
.--@ A
Name--A E
,--E F!
contentTypeDefinition--G \
.--\ ]
DisplayName--] h
)--h i
;--i j
}.. 
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
(22> ?%
ContentTypePartDefinition22? X%
contentTypePartDefinition22Y r
,22r s(
UpdateTypePartEditorContext	22t è
context
22ê ó
)
22ó ò
{33 	
if44 
(44 
!44 
String44 
.44 
Equals44 
(44 
nameof44 %
(44% &
FlowPart44& .
)44. /
,44/ 0%
contentTypePartDefinition441 J
.44J K
PartDefinition44K Y
.44Y Z
Name44Z ^
)44^ _
)44_ `
{55 
return66 
null66 
;66 
}77 
var99 
model99 
=99 
new99 %
FlowPartSettingsViewModel99 5
(995 6
)996 7
;997 8
await;; 
context;; 
.;; 
Updater;; !
.;;! "
TryUpdateModelAsync;;" 5
(;;5 6
model;;6 ;
,;;; <
Prefix;;= C
,;;C D
m;;E F
=>;;G I
m;;J K
.;;K L!
ContainedContentTypes;;L a
);;a b
;;;b c
context== 
.== 
Builder== 
.== 
WithSettings== (
(==( )
new==) ,
FlowPartSettings==- =
{>> !
ContainedContentTypes?? %
=??& '
model??( -
.??- .!
ContainedContentTypes??. C
}@@ 
)@@ 
;@@ 
returnBB 
EditBB 
(BB %
contentTypePartDefinitionBB 1
,BB1 2
contextBB3 :
.BB: ;
UpdaterBB; B
)BBB C
;BBC D
}CC 	
}DD 
}EE „(
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\Startup.cs
	namespace 	
OrchardCore
 
. 
Flows 
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
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
BagPartViewModel@ P
>P Q
(Q R
)R S
;S T
TemplateContext   
.   &
GlobalMemberAccessStrategy   6
.  6 7
Register  7 ?
<  ? @
FlowPartViewModel  @ Q
>  Q R
(  R S
)  S T
;  T U
TemplateContext!! 
.!! &
GlobalMemberAccessStrategy!! 6
.!!6 7
Register!!7 ?
<!!? @
FlowMetadata!!@ L
>!!L M
(!!M N
)!!N O
;!!O P
TemplateContext"" 
."" &
GlobalMemberAccessStrategy"" 6
.""6 7
Register""7 ?
<""? @
FlowPart""@ H
>""H I
(""I J
)""J K
;""K L
}## 	
public%% 
Startup%% 
(%% 
IOptions%% 
<%%  
AdminOptions%%  ,
>%%, -
adminOptions%%. :
)%%: ;
{&& 	
_adminOptions'' 
='' 
adminOptions'' (
.''( )
Value'') .
;''. /
}(( 	
public** 
override** 
void** 
ConfigureServices** .
(**. /
IServiceCollection**/ A
services**B J
)**J K
{++ 	
services-- 
.-- 
AddContentPart-- #
<--# $
FlowPart--$ ,
>--, -
(--- .
)--. /
... 
UseDisplayDriver.. !
<..! "!
FlowPartDisplayDriver.." 7
>..7 8
(..8 9
)..9 :
;..: ;
services// 
.// 
	AddScoped// 
<// 3
'IContentTypePartDefinitionDisplayDriver// F
,//F G)
FlowPartSettingsDisplayDriver//H e
>//e f
(//f g
)//g h
;//h i
services11 
.11 
	AddScoped11 
<11 !
IContentDisplayDriver11 4
,114 5%
FlowMetadataDisplayDriver116 O
>11O P
(11P Q
)11Q R
;11R S
services44 
.44 
AddContentPart44 #
<44# $
BagPart44$ +
>44+ ,
(44, -
)44- .
.55 
UseDisplayDriver55 !
<55! " 
BagPartDisplayDriver55" 6
>556 7
(557 8
)558 9
.66 

AddHandler66 
<66 
BagPartHandler66 *
>66* +
(66+ ,
)66, -
;66- .
services77 
.77 
	AddScoped77 
<77 3
'IContentTypePartDefinitionDisplayDriver77 F
,77F G(
BagPartSettingsDisplayDriver77H d
>77d e
(77e f
)77f g
;77g h
services88 
.88 
	AddScoped88 
<88 $
IContentPartIndexHandler88 7
,887 8
BagPartIndexHandler889 L
>88L M
(88M N
)88N O
;88O P
services:: 
.:: 
AddContentPart:: #
<::# $
FlowMetadata::$ 0
>::0 1
(::1 2
)::2 3
;::3 4
services<< 
.<< 
	AddScoped<< 
<<< 
IDataMigration<< -
,<<- .

Migrations<</ 9
><<9 :
(<<: ;
)<<; <
;<<< =
}== 	
public?? 
override?? 
void?? 
	Configure?? &
(??& '
IApplicationBuilder??' :
app??; >
,??> ?!
IEndpointRouteBuilder??@ U
routes??V \
,??\ ]
IServiceProvider??^ n
serviceProvider??o ~
)??~ 
{@@ 	
routesAA 
.AA "
MapAreaControllerRouteAA )
(AA) *
nameBB 
:BB 
$strBB )
,BB) *
areaNameCC 
:CC 
$strCC -
,CC- .
patternDD 
:DD 
_adminOptionsDD &
.DD& '
AdminUrlPrefixDD' 5
+DD6 7
$strDD8 L
,DDL M
defaultsEE 
:EE 
newEE 
{EE 

controllerEE  *
=EE+ ,
typeofEE- 3
(EE3 4
AdminControllerEE4 C
)EEC D
.EED E
ControllerNameEEE S
(EES T
)EET U
,EEU V
actionEEW ]
=EE^ _
nameofEE` f
(EEf g
AdminControllerEEg v
.EEv w
BuildEditor	EEw Ç
)
EEÇ É
}
EEÑ Ö
)FF 
;FF 
}GG 	
}HH 
}II ¢
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\BagPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{		 
public

 

class

  
BagPartEditViewModel

 %
{ 
public 
string 
[ 
] 
Prefixes  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
Array1 6
.6 7
Empty7 <
<< =
string= C
>C D
(D E
)E F
;F G
public 
string 
[ 
] 
ContentTypes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
Array5 :
.: ;
Empty; @
<@ A
stringA G
>G H
(H I
)I J
;J K
[ 	
	BindNever	 
] 
public 
BagPart 
BagPart 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
	BindNever	 
] 
public 
IUpdateModel 
Updater #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
	BindNever	 
] 
public 
IEnumerable 
< !
ContentTypeDefinition 0
>0 1+
ContainedContentTypeDefinitions2 Q
{R S
getT W
;W X
setY \
;\ ]
}^ _
} 
} ˘	
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\BagPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{ 
public 

class $
BagPartSettingsViewModel )
{ 
public		 
BagPartSettings		 
BagPartSettings		 .
{		/ 0
get		1 4
;		4 5
set		6 9
;		9 :
}		; <
public

 
NameValueCollection

 "
ContentTypes

# /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
public 
string 
DisplayType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
[ 
] !
ContainedContentTypes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
Array> C
.C D
EmptyD I
<I J
stringJ P
>P Q
(Q R
)R S
;S T
} 
} å

êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\BagPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{ 
public 

class 
BagPartViewModel !
{		 
public

 
BagPart

 
BagPart

 
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
public 
IEnumerable 
< 
ContentItem &
>& '
ContentItems( 4
=>5 7
BagPart8 ?
.? @
ContentItems@ L
;L M
public #
BuildPartDisplayContext &#
BuildPartDisplayContext' >
{? @
getA D
;D E
setF I
;I J
}K L
public 
BagPartSettings 
Settings '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
DisplayType !
=>" $
Settings% -
?- .
.. /
DisplayType/ :
;: ;
} 
} Ø
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\BuildEditorViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{ 
public 

class  
BuildEditorViewModel %
{ 
public 
dynamic 
EditorShape "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ¶
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\FlowPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{		 
public

 

class

 !
FlowPartEditViewModel

 &
{ 
public 
string 
[ 
] 
Prefixes  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
Array1 6
.6 7
Empty7 <
<< =
string= C
>C D
(D E
)E F
;F G
public 
string 
[ 
] 
ContentTypes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
Array5 :
.: ;
Empty; @
<@ A
stringA G
>G H
(H I
)I J
;J K
[ 	
	BindNever	 
] 
public 
FlowPart 
FlowPart  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
	BindNever	 
] 
public 
IUpdateModel 
Updater #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
	BindNever	 
] 
public 
IEnumerable 
< !
ContentTypeDefinition 0
>0 1+
ContainedContentTypeDefinitions2 Q
{R S
getT W
;W X
setY \
;\ ]
}^ _
} 
} ﬁ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\FlowPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{ 
public 

class %
FlowPartSettingsViewModel *
{ 
public		 
FlowPartSettings		 
FlowPartSettings		  0
{		1 2
get		3 6
;		6 7
set		8 ;
;		; <
}		= >
public

 
NameValueCollection

 "
ContentTypes

# /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
public 
string 
[ 
] !
ContainedContentTypes -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
Array> C
.C D
EmptyD I
<I J
stringJ P
>P Q
(Q R
)R S
;S T
} 
} „
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Flows\ViewModels\FlowPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Flows 
. 

ViewModels &
{ 
public 

class 
FlowPartViewModel "
{ 
public 
FlowPart 
FlowPart  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 #
BuildPartDisplayContext		 &#
BuildPartDisplayContext		' >
{		? @
get		A D
;		D E
set		F I
;		I J
}		K L
}

 
} 