‚a
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\ContentCardShapes.cs
	namespace 	
OrchardCore
 
. 
Widgets 
{ 
public 

class 
ContentCardShapes "
:# $
IShapeTableProvider% 8
{ 
private		 
const		 
string		 
ContentCardEdit		 ,
=		- .
$str		/ A
;		A B
private 
const 
string 
ContentCardFrame -
=. /
$str0 C
;C D
private 
const 
string !
ContentCardFieldsEdit 2
=3 4
$str5 N
;N O
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder 
. 
Describe 
( 
ContentCardEdit ,
), -
. 
OnDisplaying 
( 
context %
=>& (
{ 
dynamic 
contentCardEditor -
=. /
context0 7
.7 8
Shape8 =
;= >
string 
collectionType )
=* +
contentCardEditor, =
.= >
CollectionShapeType> Q
;Q R
string 
contentType &
=' (
contentCardEditor) :
.: ;
ContentTypeValue; K
;K L
string 
parentContentType ,
=- .
contentCardEditor/ @
.@ A
ParentContentTypeA R
;R S
string 
	namedPart $
=% &
contentCardEditor' 8
.8 9
CollectionPartName9 K
;K L
if 
( 
contentCardEditor )
.) *
BuildEditor* 5
==6 8
true9 =
)= >
{ 
contentCardEditor!! )
.!!) *
Metadata!!* 2
.!!2 3

Alternates!!3 =
.!!= >
Add!!> A
(!!A B
$"!!B D
{!!D E
ContentCardEdit!!E T
}!!T U
__!!U W
{!!W X
collectionType!!X f
}!!f g
"!!g h
)!!h i
;!!i j
contentCardEditor%% )
.%%) *
Metadata%%* 2
.%%2 3

Alternates%%3 =
.%%= >
Add%%> A
(%%A B
$"%%B D
{%%D E
ContentCardEdit%%E T
}%%T U
__%%U W
{%%W X
contentType%%X c
}%%c d
"%%d e
)%%e f
;%%f g
contentCardEditor** )
.**) *
Metadata*** 2
.**2 3

Alternates**3 =
.**= >
Add**> A
(**A B
$"**B D
{**D E
ContentCardEdit**E T
}**T U
__**U W
{**W X
collectionType**X f
}**f g
__**g i
{**i j
contentType**j u
}**u v
"**v w
)**w x
;**x y
if-- 
(-- 
!-- 
string-- #
.--# $
IsNullOrWhiteSpace--$ 6
(--6 7
parentContentType--7 H
)--H I
)--I J
{.. 
contentCardEditor22 -
.22- .
Metadata22. 6
.226 7

Alternates227 A
.22A B
Add22B E
(22E F
$"22F H
{22H I
ContentCardEdit22I X
}22X Y
__22Y [
{22[ \
parentContentType22\ m
}22m n
__22n p
{22p q
collectionType22q 
}	22 Ä
"
22Ä Å
)
22Å Ç
;
22Ç É
contentCardEditor77 -
.77- .
Metadata77. 6
.776 7

Alternates777 A
.77A B
Add77B E
(77E F
$"77F H
{77H I
ContentCardEdit77I X
}77X Y
__77Y [
{77[ \
parentContentType77\ m
}77m n
__77n p
{77p q
contentType77q |
}77| }
"77} ~
)77~ 
;	77 Ä
contentCardEditor<< -
.<<- .
Metadata<<. 6
.<<6 7

Alternates<<7 A
.<<A B
Add<<B E
(<<E F
$"<<F H
{<<H I
ContentCardEdit<<I X
}<<X Y
__<<Y [
{<<[ \
parentContentType<<\ m
}<<m n
__<<n p
{<<p q
collectionType<<q 
}	<< Ä
__
<<Ä Ç
{
<<Ç É
contentType
<<É é
}
<<é è
"
<<è ê
)
<<ê ë
;
<<ë í
if>> 
(>>  
!>>  !
string>>! '
.>>' (
IsNullOrWhiteSpace>>( :
(>>: ;
	namedPart>>; D
)>>D E
&&>>F H
!>>I J
(>>J K
	namedPart>>K T
.>>T U
Equals>>U [
(>>[ \
collectionType>>\ j
)>>j k
)>>k l
)>>l m
{?? 
contentCardEditorCC  1
.CC1 2
MetadataCC2 :
.CC: ;

AlternatesCC; E
.CCE F
AddCCF I
(CCI J
$"CCJ L
{CCL M
ContentCardEditCCM \
}CC\ ]
__CC] _
{CC_ `
parentContentTypeCC` q
}CCq r
__CCr t
{CCt u
	namedPartCCu ~
}CC~ 
"	CC Ä
)
CCÄ Å
;
CCÅ Ç
contentCardEditorHH  1
.HH1 2
MetadataHH2 :
.HH: ;

AlternatesHH; E
.HHE F
AddHHF I
(HHI J
$"HHJ L
{HHL M
ContentCardEditHHM \
}HH\ ]
__HH] _
{HH_ `
parentContentTypeHH` q
}HHq r
__HHr t
{HHt u
	namedPartHHu ~
}HH~ 
__	HH Å
{
HHÅ Ç
contentType
HHÇ ç
}
HHç é
"
HHé è
)
HHè ê
;
HHê ë
}II 
}JJ 
}KK 
}LL 
)LL 
;LL 
builderNN 
.NN 
DescribeNN 
(NN 
ContentCardFrameNN -
)NN- .
.OO 
OnDisplayingOO 
(OO 
contextOO %
=>OO& (
{PP 
dynamicRR 
contentCardFrameRR ,
=RR- .
contextRR/ 6
.RR6 7
ShapeRR7 <
;RR< =
stringSS 
collectionTypeSS )
=SS* +
contentCardFrameSS, <
.SS< =
ChildContentSS= I
.SSI J
CollectionShapeTypeSSJ ]
;SS] ^
stringTT 
contentTypeTT &
=TT' (
contentCardFrameTT) 9
.TT9 :
ChildContentTT: F
.TTF G
ContentTypeValueTTG W
asTTX Z
stringTT[ a
;TTa b
stringUU 
parentContentTypeUU ,
=UU- .
contentCardFrameUU/ ?
.UU? @
ChildContentUU@ L
.UUL M
ParentContentTypeUUM ^
;UU^ _
stringVV 
	namedPartVV $
=VV% &
contentCardFrameVV' 7
.VV7 8
ChildContentVV8 D
.VVD E
CollectionPartNameVVE W
;VVW X
contentCardFrame[[ $
.[[$ %
Metadata[[% -
.[[- .

Alternates[[. 8
.[[8 9
Add[[9 <
([[< =
$"[[= ?
{[[? @
ContentCardFrame[[@ P
}[[P Q
__[[Q S
{[[S T
collectionType[[T b
}[[b c
"[[c d
)[[d e
;[[e f
contentCardFrame`` $
.``$ %
Metadata``% -
.``- .

Alternates``. 8
.``8 9
Add``9 <
(``< =
$"``= ?
{``? @
ContentCardFrame``@ P
}``P Q
__``Q S
{``S T
contentType``T _
}``_ `
"``` a
)``a b
;``b c
contentCardFrameee $
.ee$ %
Metadataee% -
.ee- .

Alternatesee. 8
.ee8 9
Addee9 <
(ee< =
$"ee= ?
{ee? @
ContentCardFrameee@ P
}eeP Q
__eeQ S
{eeS T
collectionTypeeeT b
}eeb c
__eec e
{eee f
contentTypeeef q
}eeq r
"eer s
)ees t
;eet u
ifgg 
(gg 
!gg 
Stringgg 
.gg  
IsNullOrWhiteSpacegg  2
(gg2 3
parentContentTypegg3 D
)ggD E
)ggE F
{hh 
contentCardFramell (
.ll( )
Metadatall) 1
.ll1 2

Alternatesll2 <
.ll< =
Addll= @
(ll@ A
$"llA C
{llC D
ContentCardFramellD T
}llT U
__llU W
{llW X
parentContentTypellX i
}lli j
__llj l
{lll m
collectionTypellm {
}ll{ |
"ll| }
)ll} ~
;ll~ 
contentCardFrameqq (
.qq( )
Metadataqq) 1
.qq1 2

Alternatesqq2 <
.qq< =
Addqq= @
(qq@ A
$"qqA C
{qqC D
ContentCardFrameqqD T
}qqT U
__qqU W
{qqW X
parentContentTypeqqX i
}qqi j
__qqj l
{qql m
contentTypeqqm x
}qqx y
"qqy z
)qqz {
;qq{ |
contentCardFramevv (
.vv( )
Metadatavv) 1
.vv1 2

Alternatesvv2 <
.vv< =
Addvv= @
(vv@ A
$"vvA C
{vvC D
ContentCardFramevvD T
}vvT U
__vvU W
{vvW X
parentContentTypevvX i
}vvi j
__vvj l
{vvl m
collectionTypevvm {
}vv{ |
__vv| ~
{vv~ 
contentType	vv ä
}
vvä ã
"
vvã å
)
vvå ç
;
vvç é
ifxx 
(xx 
!xx 
Stringxx #
.xx# $
IsNullOrWhiteSpacexx$ 6
(xx6 7
	namedPartxx7 @
)xx@ A
&&xxB D
!xxE F
	namedPartxxF O
.xxO P
EqualsxxP V
(xxV W
collectionTypexxW e
)xxe f
)xxf g
{yy 
contentCardFrame}} ,
.}}, -
Metadata}}- 5
.}}5 6

Alternates}}6 @
.}}@ A
Add}}A D
(}}D E
$"}}E G
{}}G H
ContentCardFrame}}H X
}}}X Y
__}}Y [
{}}[ \
parentContentType}}\ m
}}}m n
__}}n p
{}}p q
	namedPart}}q z
}}}z {
"}}{ |
)}}| }
;}}} ~
contentCardFrame
ÇÇ ,
.
ÇÇ, -
Metadata
ÇÇ- 5
.
ÇÇ5 6

Alternates
ÇÇ6 @
.
ÇÇ@ A
Add
ÇÇA D
(
ÇÇD E
$"
ÇÇE G
{
ÇÇG H
ContentCardFrame
ÇÇH X
}
ÇÇX Y
__
ÇÇY [
{
ÇÇ[ \
parentContentType
ÇÇ\ m
}
ÇÇm n
__
ÇÇn p
{
ÇÇp q
	namedPart
ÇÇq z
}
ÇÇz {
__
ÇÇ{ }
{
ÇÇ} ~
contentTypeÇÇ~ â
}ÇÇâ ä
"ÇÇä ã
)ÇÇã å
;ÇÇå ç
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 
)
ÖÖ 
;
ÖÖ 
builder
áá 
.
áá 
Describe
áá 
(
áá #
ContentCardFieldsEdit
áá 2
)
áá2 3
.
àà 
OnDisplaying
àà 
(
àà 
context
àà $
=>
àà% '
{
ââ 
dynamic
ää %
contentCardEditorFields
ää 2
=
ää3 4
context
ää5 <
.
ää< =
Shape
ää= B
;
ääB C
string
ãã 
collectionType
ãã (
=
ãã) *%
contentCardEditorFields
ãã+ B
.
ããB C
	CardShape
ããC L
.
ããL M!
CollectionShapeType
ããM `
as
ããa c
string
ããd j
;
ããj k%
contentCardEditorFields
åå *
.
åå* +
Metadata
åå+ 3
.
åå3 4

Alternates
åå4 >
.
åå> ?
Add
åå? B
(
ååB C
$"
ååC E
{
ååE F
collectionType
ååF T
}
ååT U
_Fields_Edit
ååU a
"
ååa b
)
ååb c
;
ååc d
}
çç 
)
çç 
;
çç 
}
éé 	
}
èè 
}êê ì,
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 
Controllers )
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
AdminController 
( 
IContentManager 
contentManager *
,* +&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A
IShapeFactory 
shapeFactory &
,& ' 
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{ 	&
_contentItemDisplayManager &
=' (%
contentItemDisplayManager) B
;B C
_contentManager 
= 
contentManager ,
;, -
_shapeFactory 
= 
shapeFactory (
;( ) 
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
} 	
public   
async   
Task   
<   
IActionResult   '
>  ' (
BuildEditor  ) 4
(  4 5
string  5 ;
id  < >
,  > ?
string  @ F
prefix  G M
,  M N
string  O U
prefixesName  V b
,  b c
string  d j
contentTypesName  k {
,  { |
string	  } É
	zonesName
  Ñ ç
,
  ç é
string
  è ï
zone
  ñ ö
,
  ö õ
string
  ú ¢
targetId
  £ ´
,
  ´ ¨
string
  ≠ ≥
parentContentType
  ¥ ≈
,
  ≈ ∆
string
  « Õ
partName
  Œ ÷
)
  ÷ ◊
{!! 	
if"" 
("" 
String"" 
."" 
IsNullOrWhiteSpace"" )
("") *
id""* ,
)"", -
)""- .
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
var'' 
contentItem'' 
='' 
await'' #
_contentManager''$ 3
.''3 4
NewAsync''4 <
(''< =
id''= ?
)''? @
;''@ A
contentItem)) 
.)) 
Weld)) 
()) 
new))  
WidgetMetadata))! /
())/ 0
)))0 1
)))1 2
;))2 3
string++ 
cardCollectionType++ %
=++& '
nameof++( .
(++. /
WidgetsListPart++/ >
)++> ?
;++? @
dynamic.. 
contentCard.. 
=..  !
await.." '
_shapeFactory..( 5
...5 6
New..6 9
...9 :
ContentCard..: E
(..E F
Updater00 
:00  
_updateModelAccessor00 -
.00- .
ModelUpdater00. :
,00: ;
CollectionShapeType22 #
:22# $
cardCollectionType22% 7
,227 8
ContentItem33 
:33 
contentItem33 (
,33( )
BuildEditor44 
:44 
true44 !
,44! "
ParentContentType55 !
:55! "
parentContentType55# 4
,554 5
CollectionPartName66 "
:66" #
partName66$ ,
,66, -
	ZoneValue88 
:88 
zone88 
,88  
TargetId:: 
::: 
targetId:: "
,::" #
Inline;; 
:;; 
true;; 
,;; 
CanMove<< 
:<< 
true<< 
,<< 
	CanDelete== 
:== 
true== 
,==  
HtmlFieldPrefix@@ 
:@@  
prefix@@! '
,@@' (

PrefixesIdAA 
:AA 
prefixesNameAA (
.AA( )
ReplaceAA) 0
(AA0 1
$charAA1 4
,AA4 5
$charAA6 9
)AA9 :
,AA: ;
PrefixesNameBB 
:BB 
prefixesNameBB *
,BB* +
ContentTypesIdDD 
:DD 
contentTypesNameDD  0
.DD0 1
ReplaceDD1 8
(DD8 9
$charDD9 <
,DD< =
$charDD> A
)DDA B
,DDB C
ContentTypesNameEE  
:EE  !
contentTypesNameEE" 2
,EE2 3
ZonesIdGG 
:GG 
	zonesNameGG "
.GG" #
ReplaceGG# *
(GG* +
$charGG+ .
,GG. /
$charGG0 3
)GG3 4
,GG4 5
	ZonesNameHH 
:HH 
	zonesNameHH $
)II 
;II 
varKK 
modelKK 
=KK 
newKK  
BuildEditorViewModelKK 0
{LL 
EditorShapeMM 
=MM 
contentCardMM )
}NN 
;NN 
returnPP 
ViewPP 
(PP 
$strPP !
,PP! "
modelPP# (
)PP( )
;PP) *
}QQ 	
}RR 
}SS ı`
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Drivers\WidgetsListPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 
Drivers %
{ 
public 

class (
WidgetsListPartDisplayDriver -
:. /$
ContentPartDisplayDriver0 H
<H I
WidgetsListPartI X
>X Y
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public (
WidgetsListPartDisplayDriver +
(+ ,
IContentManager 
contentManager *
,* +%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
IServiceProvider 
serviceProvider ,
,, -
ISiteService 
siteService $
)   
{!! 	%
_contentDefinitionManager"" %
=""& '$
contentDefinitionManager""( @
;""@ A
_contentManager## 
=## 
contentManager## ,
;##, -
_serviceProvider$$ 
=$$ 
serviceProvider$$ .
;$$. /
_siteService%% 
=%% 
siteService%% &
;%%& '
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
DisplayAsync((3 ?
(((? @
WidgetsListPart((@ O
part((P T
,((T U#
BuildPartDisplayContext((V m
context((n u
)((u v
{)) 	
if** 
(** 
context** 
.** 
DisplayType** #
!=**$ &
$str**' /
||**0 2
!**3 4
part**4 8
.**8 9
Widgets**9 @
.**@ A
Any**A D
(**D E
)**E F
)**F G
{++ 
return,, 
null,, 
;,, 
}-- 
dynamic// 
layout// 
=// 
context// $
.//$ %
Layout//% +
;//+ ,
dynamic00 
layoutZones00 
=00  !
layout00" (
.00( )
Zones00) .
;00. /
var22 %
contentItemDisplayManager22 )
=22* +
_serviceProvider22, <
.22< =
GetRequiredService22= O
<22O P&
IContentItemDisplayManager22P j
>22j k
(22k l
)22l m
;22m n
foreach44 
(44 
var44 
zone44 
in44  
part44! %
.44% &
Widgets44& -
.44- .
Keys44. 2
)442 3
{55 
foreach66 
(66 
var66 
widget66 #
in66$ &
part66' +
.66+ ,
Widgets66, 3
[663 4
zone664 8
]668 9
)669 :
{77 
var88 
layerMetadata88 %
=88& '
widget88( .
.88. /
As88/ 1
<881 2
WidgetMetadata882 @
>88@ A
(88A B
)88B C
;88C D
if:: 
(:: 
layerMetadata:: %
!=::& (
null::) -
)::- .
{;; 
var<< 
widgetContent<< )
=<<* +
await<<, 1%
contentItemDisplayManager<<2 K
.<<K L
BuildDisplayAsync<<L ]
(<<] ^
widget<<^ d
,<<d e
context<<f m
.<<m n
Updater<<n u
)<<u v
;<<v w
widgetContent>> %
.>>% &
Classes>>& -
.>>- .
Add>>. 1
(>>1 2
$str>>2 :
)>>: ;
;>>; <
widgetContent?? %
.??% &
Classes??& -
.??- .
Add??. 1
(??1 2
$str??2 ;
+??< =
widget??> D
.??D E
ContentItem??E P
.??P Q
ContentType??Q \
.??\ ]
HtmlClassify??] i
(??i j
)??j k
)??k l
;??l m
varAA 
contentZoneAA '
=AA( )
layoutZonesAA* 5
[AA5 6
zoneAA6 :
]AA: ;
;AA; <
contentZoneBB #
.BB# $
AddBB$ '
(BB' (
widgetContentBB( 5
)BB5 6
;BB6 7
}CC 
}DD 
}EE 
returnGG 
nullGG 
;GG 
}HH 	
publicJJ 
overrideJJ 
IDisplayResultJJ &
EditJJ' +
(JJ+ ,
WidgetsListPartJJ, ;

widgetPartJJ< F
,JJF G"
BuildPartEditorContextJJH ^
contextJJ_ f
)JJf g
{KK 	
returnLL 

InitializeLL 
<LL (
WidgetsListPartEditViewModelLL :
>LL: ;
(LL; <
$strLL< R
,LLR S
mLLT U
=>LLV X
{MM 
varNN !
contentTypeDefinitionNN )
=NN* +%
_contentDefinitionManagerNN, E
.NNE F
GetTypeDefinitionNNF W
(NNW X

widgetPartNNX b
.NNb c
ContentItemNNc n
.NNn o
ContentTypeNNo z
)NNz {
;NN{ |
varOO %
contentTypePartDefinitionOO -
=OO. /!
contentTypeDefinitionOO0 E
.OOE F
PartsOOF K
.OOK L
FirstOrDefaultOOL Z
(OOZ [
pOO[ \
=>OO] _
pOO` a
.OOa b
PartDefinitionOOb p
.OOp q
NameOOq u
==OOv x
nameofOOy 
(	OO Ä
WidgetsListPart
OOÄ è
)
OOè ê
)
OOê ë
;
OOë í
varPP 
settingsPP 
=PP %
contentTypePartDefinitionPP 8
.PP8 9
GetSettingsPP9 D
<PPD E#
WidgetsListPartSettingsPPE \
>PP\ ]
(PP] ^
)PP^ _
;PP_ `
mRR 
.RR 
AvailableZonesRR  
=RR! "
settingsRR# +
.RR+ ,
ZonesRR, 1
;RR1 2
mTT 
.TT 
WidgetsListPartTT !
=TT" #

widgetPartTT$ .
;TT. /
mUU 
.UU 
UpdaterUU 
=UU 
contextUU #
.UU# $
UpdaterUU$ +
;UU+ ,
}VV 
)VV 
;VV 
}WW 	
publicYY 
overrideYY 
asyncYY 
TaskYY "
<YY" #
IDisplayResultYY# 1
>YY1 2
UpdateAsyncYY3 >
(YY> ?
WidgetsListPartYY? N
partYYO S
,YYS T#
UpdatePartEditorContextYYU l
contextYYm t
)YYt u
{ZZ 	
var[[ %
contentItemDisplayManager[[ )
=[[* +
_serviceProvider[[, <
.[[< =
GetRequiredService[[= O
<[[O P&
IContentItemDisplayManager[[P j
>[[j k
([[k l
)[[l m
;[[m n
var]] 
model]] 
=]] 
new]] (
WidgetsListPartEditViewModel]] 8
{]]9 :
WidgetsListPart]]; J
=]]K L
part]]M Q
}]]R S
;]]S T
await__ 
context__ 
.__ 
Updater__ !
.__! "
TryUpdateModelAsync__" 5
(__5 6
model__6 ;
,__; <
Prefix__= C
)__C D
;__D E
varaa 
zonedContentItemsaa !
=aa" #
newaa$ '

Dictionaryaa( 2
<aa2 3
stringaa3 9
,aa9 :
Listaa; ?
<aa? @
ContentItemaa@ K
>aaK L
>aaL M
(aaM N
)aaN O
;aaO P
partdd 
.dd 
Contentdd 
.dd 
Widgetsdd  
.dd  !
	RemoveAlldd! *
(dd* +
)dd+ ,
;dd, -
forff 
(ff 
varff 
iff 
=ff 
$numff 
;ff 
iff 
<ff 
modelff  %
.ff% &
Prefixesff& .
.ff. /
Lengthff/ 5
;ff5 6
iff7 8
++ff8 :
)ff: ;
{gg 
varhh 
contentTypehh 
=hh  !
modelhh" '
.hh' (
ContentTypeshh( 4
[hh4 5
ihh5 6
]hh6 7
;hh7 8
varii 
zoneii 
=ii 
modelii  
.ii  !
Zonesii! &
[ii& '
iii' (
]ii( )
;ii) *
varjj 
prefixjj 
=jj 
modeljj "
.jj" #
Prefixesjj# +
[jj+ ,
ijj, -
]jj- .
;jj. /
varll 
contentItemll 
=ll  !
awaitll" '
_contentManagerll( 7
.ll7 8
NewAsyncll8 @
(ll@ A
contentTypellA L
)llL M
;llM N
ifmm 
(mm 
partmm 
.mm 
Widgetsmm  
.mm  !
ContainsKeymm! ,
(mm, -
zonemm- 1
)mm1 2
)mm2 3
{nn 
varoo 
existingContentItemoo +
=oo, -
partoo. 2
.oo2 3
Widgetsoo3 :
[oo: ;
zoneoo; ?
]oo? @
.oo@ A
FirstOrDefaultooA O
(ooO P
xooP Q
=>ooR T
StringooU [
.oo[ \
Equalsoo\ b
(oob c
xooc d
.ood e
ContentItemIdooe r
,oor s
modeloot y
.ooy z
Prefixes	ooz Ç
[
ooÇ É
i
ooÉ Ñ
]
ooÑ Ö
,
ooÖ Ü
StringComparison
ooá ó
.
ooó ò
OrdinalIgnoreCase
ooò ©
)
oo© ™
)
oo™ ´
;
oo´ ¨
ifss 
(ss 
existingContentItemss +
!=ss, .
nullss/ 3
)ss3 4
{tt 
contentItemuu #
.uu# $
ContentItemIduu$ 1
=uu2 3
modeluu4 9
.uu9 :
Prefixesuu: B
[uuB C
iuuC D
]uuD E
;uuE F
contentItemvv #
.vv# $
Mergevv$ )
(vv) *
existingContentItemvv* =
)vv= >
;vv> ?
}ww 
}xx 
contentItemzz 
.zz 
Weldzz  
(zz  !
newzz! $
WidgetMetadatazz% 3
(zz3 4
)zz4 5
)zz5 6
;zz6 7
var|| 
widgetModel|| 
=||  !
await||" '%
contentItemDisplayManager||( A
.||A B
UpdateEditorAsync||B S
(||S T
contentItem||T _
,||_ `
context||a h
.||h i
Updater||i p
,||p q
context||r y
.||y z
IsNew||z 
,	|| Ä
htmlFieldPrefix
||Å ê
:
||ê ë
prefix
||í ò
)
||ò ô
;
||ô ö
if~~ 
(~~ 
!~~ 
zonedContentItems~~ &
.~~& '
ContainsKey~~' 2
(~~2 3
zone~~3 7
)~~7 8
)~~8 9
{ 
zonedContentItems
ÄÄ %
.
ÄÄ% &
Add
ÄÄ& )
(
ÄÄ) *
zone
ÄÄ* .
,
ÄÄ. /
new
ÄÄ0 3
List
ÄÄ4 8
<
ÄÄ8 9
ContentItem
ÄÄ9 D
>
ÄÄD E
(
ÄÄE F
)
ÄÄF G
)
ÄÄG H
;
ÄÄH I
}
ÅÅ 
zonedContentItems
ÉÉ !
[
ÉÉ! "
zone
ÉÉ" &
]
ÉÉ& '
.
ÉÉ' (
Add
ÉÉ( +
(
ÉÉ+ ,
contentItem
ÉÉ, 7
)
ÉÉ7 8
;
ÉÉ8 9
}
ÑÑ 
part
ÜÜ 
.
ÜÜ 
Widgets
ÜÜ 
=
ÜÜ 
zonedContentItems
ÜÜ ,
;
ÜÜ, -
return
àà 
Edit
àà 
(
àà 
part
àà 
,
àà 
context
àà %
)
àà% &
;
àà& '
}
ââ 	
}
ää 
}ãã Ø	
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Manifest.cs
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
$str \
,\ ]
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
$str 
) 
] ≥

ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Migrations.cs
	namespace 	
OrchardCore
 
. 
Widgets 
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
$str: K
,K L
builderM T
=>U W
builderX _
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! g
)g h
) 
; 
return 
$num 
; 
} 	
} 
} ‡
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Models\WidgetMetadata.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 
Models $
{ 
public 

class 
WidgetMetadata 
:  !
ContentPart" -
{ 
public 
bool 
RenderTitle 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 ¡
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Models\WidgetsListPart.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 
Models $
{ 
public 

class 
WidgetsListPart  
:! "
ContentPart# .
{ 
public		 

Dictionary		 
<		 
string		  
,		  !
List		" &
<		& '
ContentItem		' 2
>		2 3
>		3 4
Widgets		5 <
{		= >
get		? B
;		B C
set		D G
;		G H
}		I J
=		K L
new		M P

Dictionary		Q [
<		[ \
string		\ b
,		b c
List		d h
<		h i
ContentItem		i t
>		t u
>		u v
(		v w
)		w x
;		x y
}

 
} Ô
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Settings\WidgetsListPartSettings.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 
Settings &
{ 
public 

class #
WidgetsListPartSettings (
{ 
public 
string 
[ 
] 
Zones 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
Array. 3
.3 4
Empty4 9
<9 :
string: @
>@ A
(A B
)B C
;C D
} 
}		 Ã"
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Settings\WidgetsListPartSettingsDisplayDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Widgets		 
.		 
Settings		 &
{

 
public 

class 0
$WidgetsListPartSettingsDisplayDriver 5
:6 72
&ContentTypePartDefinitionDisplayDriver8 ^
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
WidgetsListPart& 5
)5 6
,6 7%
contentTypePartDefinition8 Q
.Q R
PartDefinitionR `
.` a
Namea e
)e f
)f g
{ 
return 
null 
; 
} 
return 

Initialize 
< ,
 WidgetsListPartSettingsViewModel >
>> ?
(? @
$str@ Z
,Z [
model\ a
=>b d
{ 
var 
settings 
= %
contentTypePartDefinition 8
.8 9
GetSettings9 D
<D E#
WidgetsListPartSettingsE \
>\ ]
(] ^
)^ _
;_ `
model 
. 
Zones 
= 
String $
.$ %
Join% )
() *
$str* .
,. /
settings0 8
.8 9
Zones9 >
)> ?
;? @
model 
. #
WidgetsListPartSettings -
=. /
settings0 8
;8 9
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
(% &
WidgetsListPart& 5
)5 6
,6 7%
contentTypePartDefinition8 Q
.Q R
PartDefinitionR `
.` a
Namea e
)e f
)f g
{   
return!! 
null!! 
;!! 
}"" 
var$$ 
model$$ 
=$$ 
new$$ ,
 WidgetsListPartSettingsViewModel$$ <
($$< =
)$$= >
;$$> ?
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
,&&G H
m&&I J
=>&&K M
m&&N O
.&&O P
Zones&&P U
)&&U V
)&&V W
{'' 
context(( 
.(( 
Builder(( 
.((  
WithSettings((  ,
(((, -
new((- 0#
WidgetsListPartSettings((1 H
{((I J
Zones((K P
=((Q R
(((S T
model((T Y
.((Y Z
Zones((Z _
??((` b
$str((c e
)((e f
.((f g
Split((g l
(((l m
new((m p
[((p q
]((q r
{((s t
$char((u x
,((x y
$char((z }
}((~ 
,	(( Ä 
StringSplitOptions
((Å ì
.
((ì î 
RemoveEmptyEntries
((î ¶
)
((¶ ß
}
((® ©
)
((© ™
;
((™ ´
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
}.. ¸
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Settings\WidgetsListPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 
Settings &
{ 
public 

class ,
 WidgetsListPartSettingsViewModel 1
{ 
public 
string 
Zones 
{ 
get !
;! "
set# &
;& '
}( )
public #
WidgetsListPartSettings &#
WidgetsListPartSettings' >
{? @
getA D
;D E
setF I
;I J
}K L
} 
} ï
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\Startup.cs
	namespace 	
OrchardCore
 
. 
Widgets 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services!! 
.!! 
	AddScoped!! 
<!! 
IShapeTableProvider!! 2
,!!2 3
ContentCardShapes!!4 E
>!!E F
(!!F G
)!!G H
;!!H I
services## 
.## 
AddContentPart## #
<### $
WidgetsListPart##$ 3
>##3 4
(##4 5
)##5 6
.$$ 
UseDisplayDriver$$ !
<$$! "(
WidgetsListPartDisplayDriver$$" >
>$$> ?
($$? @
)$$@ A
;$$A B
services&& 
.&& 
	AddScoped&& 
<&& 3
'IContentTypePartDefinitionDisplayDriver&& F
,&&F G0
$WidgetsListPartSettingsDisplayDriver&&H l
>&&l m
(&&m n
)&&n o
;&&o p
services'' 
.'' 
AddContentPart'' #
<''# $
WidgetMetadata''$ 2
>''2 3
(''3 4
)''4 5
;''5 6
services(( 
.(( 
	AddScoped(( 
<(( 
IDataMigration(( -
,((- .

Migrations((/ 9
>((9 :
(((: ;
)((; <
;((< =
})) 	
public++ 
override++ 
void++ 
	Configure++ &
(++& '
IApplicationBuilder++' :
app++; >
,++> ?!
IEndpointRouteBuilder++@ U
routes++V \
,++\ ]
IServiceProvider++^ n
serviceProvider++o ~
)++~ 
{,, 	
routes-- 
.-- "
MapAreaControllerRoute-- )
(--) *
name.. 
:.. 
$str.. +
,..+ ,
areaName// 
:// 
$str// /
,/// 0
pattern00 
:00 
_adminOptions00 &
.00& '
AdminUrlPrefix00' 5
+006 7
$str008 N
,00N O
defaults11 
:11 
new11 
{11 

controller11  *
=11+ ,
typeof11- 3
(113 4
AdminController114 C
)11C D
.11D E
ControllerName11E S
(11S T
)11T U
,11U V
action11W ]
=11^ _
nameof11` f
(11f g
AdminController11g v
.11v w
BuildEditor	11w Ç
)
11Ç É
}
11Ñ Ö
)22 
;22 
}33 	
}44 
}55 ≥
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\ViewModels\BuildEditorViewModel.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 

ViewModels (
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
} †
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Widgets\ViewModels\WidgetsListPartEditViewModel.cs
	namespace 	
OrchardCore
 
. 
Widgets 
. 

ViewModels (
{ 
public 

class (
WidgetsListPartEditViewModel -
{		 
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
 
AvailableZones

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
=

5 6
Array

7 <
.

< =
Empty

= B
<

B C
string

C I
>

I J
(

J K
)

K L
;

L M
public 
string 
[ 
] 
Zones 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
Array. 3
.3 4
Empty4 9
<9 :
string: @
>@ A
(A B
)B C
;C D
public 
string 
[ 
] 
Prefixes  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
Array1 6
.6 7
Empty7 <
<< =
string= C
>C D
(D E
)E F
;F G
public 
string 
[ 
] 
ContentTypes $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
Array5 :
.: ;
Empty; @
<@ A
stringA G
>G H
(H I
)I J
;J K
public 
WidgetsListPart 
WidgetsListPart .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
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
} 
} 