óå
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Controllers\PreviewController.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %
Controllers% 0
{ 
public 

class 
PreviewController "
:# $

Controller% /
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly "
IContentManagerSession /"
_contentManagerSession0 F
;F G
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
public 
PreviewController  
(  !
IContentManager 
contentManager *
,* +&
IContentItemDisplayManager &%
contentItemDisplayManager' @
,@ A"
IContentManagerSession "!
contentManagerSession# 8
,8 9!
IAuthorizationService ! 
authorizationService" 6
,6 7
IClock   
clock   
,    
IUpdateModelAccessor!!  
updateModelAccessor!!! 4
)!!4 5
{"" 	!
_authorizationService## !
=##" # 
authorizationService##$ 8
;##8 9
_clock$$ 
=$$ 
clock$$ 
;$$ &
_contentItemDisplayManager%% &
=%%' (%
contentItemDisplayManager%%) B
;%%B C
_contentManager&& 
=&& 
contentManager&& ,
;&&, -"
_contentManagerSession'' "
=''# $!
contentManagerSession''% :
;'': ; 
_updateModelAccessor((  
=((! "
updateModelAccessor((# 6
;((6 7
})) 	
public++ 
IActionResult++ 
Index++ "
(++" #
)++# $
{,, 	
return-- 
View-- 
(-- 
)-- 
;-- 
}.. 	
[00 	
HttpPost00	 
]00 
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
Render11) /
(11/ 0
)110 1
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
,33@ A
CommonPermissions33B S
.33S T
PreviewContent33T b
)33b c
)33c d
{44 
return55 
this55 
.55 
ChallengeOrForbid55 -
(55- .
)55. /
;55/ 0
}66 
HttpContext99 
.99 
Features99  
.99  !
Set99! $
(99$ %
new99% (!
ContentPreviewFeature99) >
(99> ?
)99? @
)99@ A
;99A B
var;; 
contentItemType;; 
=;;  !
Request;;" )
.;;) *
Form;;* .
[;;. /
$str;;/ @
];;@ A
;;;A B
var<< 
contentItem<< 
=<< 
await<< #
_contentManager<<$ 3
.<<3 4
NewAsync<<4 <
(<<< =
contentItemType<<= L
)<<L M
;<<M N
varBB 
contentItemIdBB 
=BB 
RequestBB  '
.BB' (
FormBB( ,
[BB, -
$strBB- C
]BBC D
;BBD E
varCC  
contentItemVersionIdCC $
=CC% &
RequestCC' .
.CC. /
FormCC/ 3
[CC3 4
$strCC4 Q
]CCQ R
;CCR S
contentItemHH 
.HH 
IdHH 
=HH 
-HH 
$numHH 
;HH  
contentItemII 
.II 
ContentItemIdII %
=II& '
contentItemIdII( 5
;II5 6
contentItemJJ 
.JJ  
ContentItemVersionIdJJ ,
=JJ- . 
contentItemVersionIdJJ/ C
;JJC D
contentItemKK 
.KK 

CreatedUtcKK "
=KK# $
_clockKK% +
.KK+ ,
UtcNowKK, 2
;KK2 3
contentItemLL 
.LL 
ModifiedUtcLL #
=LL$ %
_clockLL& ,
.LL, -
UtcNowLL- 3
;LL3 4
contentItemMM 
.MM 
PublishedUtcMM $
=MM% &
_clockMM' -
.MM- .
UtcNowMM. 4
;MM4 5
contentItemNN 
.NN 
	PublishedNN !
=NN" #
trueNN$ (
;NN( )
varQQ 
modelQQ 
=QQ 
awaitQQ &
_contentItemDisplayManagerQQ 8
.QQ8 9
UpdateEditorAsyncQQ9 J
(QQJ K
contentItemQQK V
,QQV W 
_updateModelAccessorQQX l
.QQl m
ModelUpdaterQQm y
,QQy z
trueQQ{ 
)	QQ Ä
;
QQÄ Å
ifSS 
(SS 
!SS 

ModelStateSS 
.SS 
IsValidSS #
)SS# $
{TT 
varUU 
errorsUU 
=UU 
newUU  
ListUU! %
<UU% &
stringUU& ,
>UU, -
(UU- .
)UU. /
;UU/ 0
foreachVV 
(VV 
varVV 

modelStateVV '
inVV( *
ValidationHelpersVV+ <
.VV< =
GetModelStateListVV= N
(VVN O
ViewDataVVO W
,VVW X
falseVVY ^
)VV^ _
)VV_ `
{WW 
forXX 
(XX 
varXX 
iXX 
=XX  
$numXX! "
;XX" #
iXX$ %
<XX& '

modelStateXX( 2
.XX2 3
ErrorsXX3 9
.XX9 :
CountXX: ?
;XX? @
iXXA B
++XXB D
)XXD E
{YY 
varZZ 

modelErrorZZ &
=ZZ' (

modelStateZZ) 3
.ZZ3 4
ErrorsZZ4 :
[ZZ: ;
iZZ; <
]ZZ< =
;ZZ= >
var[[ 
	errorText[[ %
=[[& '
ValidationHelpers[[( 9
.[[9 :)
GetModelErrorMessageOrDefault[[: W
([[W X

modelError[[X b
)[[b c
;[[c d
errors\\ 
.\\ 
Add\\ "
(\\" #
	errorText\\# ,
)\\, -
;\\- .
}]] 
}^^ 
return`` 

StatusCode`` !
(``! "
$num``" %
,``% &
new``' *
{``+ ,
errors``- 3
=``4 5
errors``6 <
}``= >
)``> ?
;``? @
}aa 
varcc 
previewAspectcc 
=cc 
awaitcc  %
_contentManagercc& 5
.cc5 6
PopulateAspectAsynccc6 I
(ccI J
contentItemccJ U
,ccU V
newccW Z
PreviewAspectcc[ h
(cch i
)cci j
)ccj k
;cck l
ifee 
(ee 
!ee 
Stringee 
.ee 
IsNullOrEmptyee %
(ee% &
previewAspectee& 3
.ee3 4

PreviewUrlee4 >
)ee> ?
)ee? @
{ff "
_contentManagerSessionhh &
.hh& '
Storehh' ,
(hh, -
contentItemhh- 8
)hh8 9
;hh9 :
ifjj 
(jj 
!jj 
previewAspectjj "
.jj" #

PreviewUrljj# -
.jj- .

StartsWithjj. 8
(jj8 9
$charjj9 <
)jj< =
)jj= >
{kk 
previewAspectll !
.ll! "

PreviewUrlll" ,
=ll- .
$strll/ 2
+ll3 4
previewAspectll5 B
.llB C

PreviewUrlllC M
;llM N
}mm 
Requestoo 
.oo 
HttpContextoo #
.oo# $
Itemsoo$ )
[oo) *
$stroo* 7
]oo7 8
=oo9 :
previewAspectoo; H
.ooH I

PreviewUrlooI S
;ooS T
returnqq 
Okqq 
(qq 
)qq 
;qq 
}rr 
modeltt 
=tt 
awaittt &
_contentItemDisplayManagertt 4
.tt4 5
BuildDisplayAsynctt5 F
(ttF G
contentItemttG R
,ttR S 
_updateModelAccessorttT h
.tth i
ModelUpdatertti u
,ttu v
$strttw 
)	tt Ä
;
ttÄ Å
returnvv 
Viewvv 
(vv 
modelvv 
)vv 
;vv 
}ww 	
}xx 
internalzz 
staticzz 
classzz 
ValidationHelperszz +
{{{ 
public|| 
static|| 
string|| )
GetModelErrorMessageOrDefault|| :
(||: ;

ModelError||; E

modelError||F P
)||P Q
{}} 	
Debug~~ 
.~~ 
Assert~~ 
(~~ 

modelError~~ #
!=~~$ &
null~~' +
)~~+ ,
;~~, -
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
string
ÄÄ 
.
ÄÄ 
IsNullOrEmpty
ÄÄ %
(
ÄÄ% &

modelError
ÄÄ& 0
.
ÄÄ0 1
ErrorMessage
ÄÄ1 =
)
ÄÄ= >
)
ÄÄ> ?
{
ÅÅ 
return
ÇÇ 

modelError
ÇÇ !
.
ÇÇ! "
ErrorMessage
ÇÇ" .
;
ÇÇ. /
}
ÉÉ 
return
ÜÜ 
string
ÜÜ 
.
ÜÜ 
Empty
ÜÜ 
;
ÜÜ  
}
áá 	
public
ââ 
static
ââ 
string
ââ +
GetModelErrorMessageOrDefault
ââ :
(
ââ: ;

ModelError
ää 

modelError
ää !
,
ää! "
ModelStateEntry
ãã 
containingEntry
ãã +
,
ãã+ ,
ModelExplorer
åå 
modelExplorer
åå '
)
åå' (
{
çç 	
Debug
éé 
.
éé 
Assert
éé 
(
éé 

modelError
éé #
!=
éé$ &
null
éé' +
)
éé+ ,
;
éé, -
Debug
èè 
.
èè 
Assert
èè 
(
èè 
containingEntry
èè (
!=
èè) +
null
èè, 0
)
èè0 1
;
èè1 2
Debug
êê 
.
êê 
Assert
êê 
(
êê 
modelExplorer
êê &
!=
êê' )
null
êê* .
)
êê. /
;
êê/ 0
if
íí 
(
íí 
!
íí 
string
íí 
.
íí 
IsNullOrEmpty
íí %
(
íí% &

modelError
íí& 0
.
íí0 1
ErrorMessage
íí1 =
)
íí= >
)
íí> ?
{
ìì 
return
îî 

modelError
îî !
.
îî! "
ErrorMessage
îî" .
;
îî. /
}
ïï 
var
òò 
attemptedValue
òò 
=
òò  
containingEntry
òò! 0
.
òò0 1
AttemptedValue
òò1 ?
??
òò@ B
$str
òòC I
;
òòI J
return
ôô 
modelExplorer
ôô  
.
ôô  !
Metadata
ôô! )
.
ôô) *)
ModelBindingMessageProvider
ôô* E
.
ôôE F$
ValueIsInvalidAccessor
ôôF \
(
ôô\ ]
attemptedValue
ôô] k
)
ôôk l
;
ôôl m
}
öö 	
public
ùù 
static
ùù 
IList
ùù 
<
ùù 
ModelStateEntry
ùù +
>
ùù+ ,
GetModelStateList
ùù- >
(
ùù> ? 
ViewDataDictionary
ûû 
viewData
ûû '
,
ûû' (
bool
üü #
excludePropertyErrors
üü &
)
üü& '
{
†† 	
if
°° 
(
°° #
excludePropertyErrors
°° %
)
°°% &
{
¢¢ 
viewData
££ 
.
££ 

ModelState
££ #
.
££# $
TryGetValue
££$ /
(
££/ 0
viewData
££0 8
.
££8 9
TemplateInfo
££9 E
.
££E F
HtmlFieldPrefix
££F U
,
££U V
out
££W Z
var
££[ ^
ms
££_ a
)
££a b
;
££b c
if
•• 
(
•• 
ms
•• 
!=
•• 
null
•• 
)
•• 
{
¶¶ 
return
ßß 
new
ßß 
[
ßß 
]
ßß  
{
ßß! "
ms
ßß# %
}
ßß& '
;
ßß' (
}
®® 
}
©© 
else
™™ 
if
™™ 
(
™™ 
viewData
™™ 
.
™™ 

ModelState
™™ (
.
™™( )
Count
™™) .
>
™™/ 0
$num
™™1 2
)
™™2 3
{
´´ 
var
¨¨ 
metadata
¨¨ 
=
¨¨ 
viewData
¨¨ '
.
¨¨' (
ModelMetadata
¨¨( 5
;
¨¨5 6
var
≠≠ "
modelStateDictionary
≠≠ (
=
≠≠) *
viewData
≠≠+ 3
.
≠≠3 4

ModelState
≠≠4 >
;
≠≠> ?
var
ÆÆ 
entries
ÆÆ 
=
ÆÆ 
new
ÆÆ !
List
ÆÆ" &
<
ÆÆ& '
ModelStateEntry
ÆÆ' 6
>
ÆÆ6 7
(
ÆÆ7 8
)
ÆÆ8 9
;
ÆÆ9 :
Visit
ØØ 
(
ØØ "
modelStateDictionary
ØØ *
.
ØØ* +
Root
ØØ+ /
,
ØØ/ 0
metadata
ØØ1 9
,
ØØ9 :
entries
ØØ; B
)
ØØB C
;
ØØC D
if
±± 
(
±± 
entries
±± 
.
±± 
Count
±± !
<
±±" #"
modelStateDictionary
±±$ 8
.
±±8 9
Count
±±9 >
)
±±> ?
{
≤≤ 
foreach
¥¥ 
(
¥¥ 
var
¥¥  
entry
¥¥! &
in
¥¥' )"
modelStateDictionary
¥¥* >
)
¥¥> ?
{
µµ 
if
∂∂ 
(
∂∂ 
!
∂∂ 
entries
∂∂ $
.
∂∂$ %
Contains
∂∂% -
(
∂∂- .
entry
∂∂. 3
.
∂∂3 4
Value
∂∂4 9
)
∂∂9 :
)
∂∂: ;
{
∑∑ 
entries
∏∏ #
.
∏∏# $
Add
∏∏$ '
(
∏∏' (
entry
∏∏( -
.
∏∏- .
Value
∏∏. 3
)
∏∏3 4
;
∏∏4 5
}
ππ 
}
∫∫ 
}
ªª 
return
ΩΩ 
entries
ΩΩ 
;
ΩΩ 
}
ææ 
return
¿¿ 
Array
¿¿ 
.
¿¿ 
Empty
¿¿ 
<
¿¿ 
ModelStateEntry
¿¿ .
>
¿¿. /
(
¿¿/ 0
)
¿¿0 1
;
¿¿1 2
}
¡¡ 	
private
√√ 
static
√√ 
void
√√ 
Visit
√√ !
(
√√! "
ModelStateEntry
ƒƒ 
modelStateEntry
ƒƒ +
,
ƒƒ+ ,
ModelMetadata
≈≈ 
metadata
≈≈ "
,
≈≈" #
List
∆∆ 
<
∆∆ 
ModelStateEntry
∆∆  
>
∆∆  !&
orderedModelStateEntries
∆∆" :
)
∆∆: ;
{
«« 	
if
»» 
(
»» 
metadata
»» 
.
»» 
ElementMetadata
»» (
!=
»») +
null
»», 0
&&
»»1 3
modelStateEntry
»»4 C
.
»»C D
Children
»»D L
!=
»»M O
null
»»P T
)
»»T U
{
…… 
foreach
   
(
   
var
   

indexEntry
   '
in
  ( *
modelStateEntry
  + :
.
  : ;
Children
  ; C
)
  C D
{
ÀÀ 
Visit
ÃÃ 
(
ÃÃ 

indexEntry
ÃÃ $
,
ÃÃ$ %
metadata
ÃÃ& .
.
ÃÃ. /
ElementMetadata
ÃÃ/ >
,
ÃÃ> ?&
orderedModelStateEntries
ÃÃ@ X
)
ÃÃX Y
;
ÃÃY Z
}
ÕÕ 
}
ŒŒ 
else
œœ 
{
–– 
for
—— 
(
—— 
var
—— 
i
—— 
=
—— 
$num
—— 
;
—— 
i
——  !
<
——" #
metadata
——$ ,
.
——, -

Properties
——- 7
.
——7 8
Count
——8 =
;
——= >
i
——? @
++
——@ B
)
——B C
{
““ 
var
”” 
propertyMetadata
”” (
=
””) *
metadata
””+ 3
.
””3 4

Properties
””4 >
[
””> ?
i
””? @
]
””@ A
;
””A B
var
‘‘ %
propertyModelStateEntry
‘‘ /
=
‘‘0 1
modelStateEntry
‘‘2 A
.
‘‘A B&
GetModelStateForProperty
‘‘B Z
(
‘‘Z [
propertyMetadata
‘‘[ k
.
‘‘k l
PropertyName
‘‘l x
)
‘‘x y
;
‘‘y z
if
’’ 
(
’’ %
propertyModelStateEntry
’’ /
!=
’’0 2
null
’’3 7
)
’’7 8
{
÷÷ 
Visit
◊◊ 
(
◊◊ %
propertyModelStateEntry
◊◊ 5
,
◊◊5 6
propertyMetadata
◊◊7 G
,
◊◊G H&
orderedModelStateEntries
◊◊I a
)
◊◊a b
;
◊◊b c
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 
if
‹‹ 
(
‹‹ 
!
‹‹ 
modelStateEntry
‹‹  
.
‹‹  !
IsContainerNode
‹‹! 0
)
‹‹0 1
{
›› &
orderedModelStateEntries
ﬁﬁ (
.
ﬁﬁ( )
Add
ﬁﬁ) ,
(
ﬁﬁ, -
modelStateEntry
ﬁﬁ- <
)
ﬁﬁ< =
;
ﬁﬁ= >
}
ﬂﬂ 
}
‡‡ 	
}
·· 
}‚‚ Ñ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Drivers\ContentPreviewDriver.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %
Drivers% ,
{ 
public		 

class		  
ContentPreviewDriver		 %
:		& ' 
ContentDisplayDriver		( <
{

 
public 
override 
IDisplayResult &
Edit' +
(+ ,
ContentItem, 7
contentItem8 C
,C D
IUpdateModelE Q
updaterR Y
)Y Z
{ 	
return 
Shape 
( 
$str 0
,0 1
new2 5 
ContentItemViewModel6 J
(J K
contentItemK V
)V W
)W X
.X Y
LocationY a
(a b
$strb q
)q r
;r s
} 	
} 
} ä&
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Handlers\PreviewPartHandler.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %
Handlers% -
{ 
public 

class 
PreviewPartHandler #
:$ %
ContentPartHandler& 8
<8 9
PreviewPart9 D
>D E
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 
PreviewPartHandler !
(! ""
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9%
IContentDefinitionManager %$
contentDefinitionManager& >
)> ?
{ 	"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
private 
string 

GetPattern !
(! "
PreviewPart" -
part. 2
)2 3
{ 	
var   !
contentTypeDefinition   %
=  & '%
_contentDefinitionManager  ( A
.  A B
GetTypeDefinition  B S
(  S T
part  T X
.  X Y
ContentItem  Y d
.  d e
ContentType  e p
)  p q
;  q r
var!! %
contentTypePartDefinition!! )
=!!* +!
contentTypeDefinition!!, A
.!!A B
Parts!!B G
.!!G H
FirstOrDefault!!H V
(!!V W
x!!W X
=>!!Y [
String!!\ b
.!!b c
Equals!!c i
(!!i j
x!!j k
.!!k l
PartDefinition!!l z
.!!z {
Name!!{ 
,	!! Ä
$str
!!Å é
)
!!é è
)
!!è ê
;
!!ê ë
var"" 
pattern"" 
="" %
contentTypePartDefinition"" 3
.""3 4
GetSettings""4 ?
<""? @
PreviewPartSettings""@ S
>""S T
(""T U
)""U V
.""V W
Pattern""W ^
;""^ _
return$$ 
pattern$$ 
;$$ 
}%% 	
public'' 
override'' 
async'' 
Task'' "%
GetContentItemAspectAsync''# <
(''< =$
ContentItemAspectContext''= U
context''V ]
,''] ^
PreviewPart''_ j
part''k o
)''o p
{(( 	
var)) 
pattern)) 
=)) 

GetPattern)) $
())$ %
part))% )
)))) *
;))* +
if++ 
(++ 
!++ 
String++ 
.++ 
IsNullOrEmpty++ %
(++% &
pattern++& -
)++- .
)++. /
{,, 
await-- 
context-- 
.-- 
ForAsync-- &
<--& '
PreviewAspect--' 4
>--4 5
(--5 6
async--6 ;
previewAspect--< I
=>--J L
{.. 
var// 
model// 
=// 
new//  # 
PreviewPartViewModel//$ 8
(//8 9
)//9 :
{00 
PreviewPart11 #
=11$ %
part11& *
,11* +
ContentItem22 #
=22$ %
part22& *
.22* +
ContentItem22+ 6
}33 
;33 
previewAspect55 !
.55! "

PreviewUrl55" ,
=55- .
await55/ 4"
_liquidTemplateManager555 K
.55K L
RenderAsync55L W
(55W X
pattern55X _
,55_ `
NullEncoder55a l
.55l m
Default55m t
,55t u
model55v {
,55{ |
scope66 
=>66  
scope66! &
.66& '
SetValue66' /
(66/ 0
$str660 =
,66= >
model66? D
.66D E
ContentItem66E P
)66P Q
)66Q R
;66R S
previewAspect88 !
.88! "

PreviewUrl88" ,
=88- .
previewAspect88/ <
.88< =

PreviewUrl88= G
.88G H
Replace88H O
(88O P
$str88P T
,88T U
String88V \
.88\ ]
Empty88] b
)88b c
.88c d
Replace88d k
(88k l
$str88l p
,88p q
String88r x
.88x y
Empty88y ~
)88~ 
;	88 Ä
}99 
)99 
;99 
}:: 
return<< 
;<< 
}== 	
}>> 
}?? “
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Manifest.cs
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
$str `
,` a
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 1
}		2 3
,		3 4
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
] »

àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Migrations.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
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
$str: G
,G H
builderI P
=>Q S
builderT [
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str	! Á
)
Á Ë
)
Ë È
;
È Í
return 
$num 
; 
} 	
} 
} Ø
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Models\PreviewPart.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %
Models% +
{ 
public		 

class		 
PreviewPart		 
:		 
ContentPart		 *
{

 
} 
} ≤
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Models\PreviewPartSettings.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %
Models% +
{ 
public 

class 
PreviewPartSettings $
{ 
public 
string 
Pattern 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 ¿
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\PreviewStartupFilter.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
{ 
public		 

class		  
PreviewStartupFilter		 %
:		& '
IStartupFilter		( 6
{

 
public  
PreviewStartupFilter #
(# $
IHostEnvironment$ 4
hostEnvironment5 D
)D E
{ 	
} 	
public 
Action 
< 
IApplicationBuilder )
>) *
	Configure+ 4
(4 5
Action5 ;
<; <
IApplicationBuilder< O
>O P
nextQ U
)U V
{ 	
return 
app 
=> 
{ 
app 
. 
Use 
( 
async 
( 
context &
,& '
next( ,
), -
=>. 0
{ 
await 
next 
( 
)  
;  !
if 
( 
! 
context  
.  !
Items! &
.& '
TryGetValue' 2
(2 3
$str3 @
,@ A
outB E
varF I
previewPathObjectJ [
)[ \
||] _
previewPathObject` q
==r t
nullu y
)y z
{ 
return 
; 
} 
var 
previewPath #
=$ %
previewPathObject& 7
.7 8
ToString8 @
(@ A
)A B
;B C
if 
( 
! 
String 
.  
IsNullOrWhiteSpace  2
(2 3
previewPath3 >
)> ?
&&@ B
previewPathC N
.N O

StartsWithO Y
(Y Z
$charZ ]
)] ^
)^ _
{ 
var   
originalPath   (
=  ) *
context  + 2
.  2 3
Request  3 :
.  : ;
Path  ; ?
;  ? @
var!! 
originalQueryString!! /
=!!0 1
context!!2 9
.!!9 :
Request!!: A
.!!A B
QueryString!!B M
;!!M N
context## 
.##  
Request##  '
.##' (
Path##( ,
=##- .
previewPath##/ :
;##: ;
context$$ 
.$$  
Items$$  %
.$$% &
Remove$$& ,
($$, -
$str$$- :
)$$: ;
;$$; <
context&& 
.&&  
SetEndpoint&&  +
(&&+ ,
endpoint&&, 4
:&&4 5
null&&6 :
)&&: ;
;&&; <
context'' 
.''  
Request''  '
.''' (
RouteValues''( 3
.''3 4
Clear''4 9
(''9 :
)'': ;
;''; <
try)) 
{** 
await++ !
next++" &
(++& '
)++' (
;++( )
},, 
finally-- 
{.. 
context// #
.//# $
Request//$ +
.//+ ,
QueryString//, 7
=//8 9
originalQueryString//: M
;//M N
context00 #
.00# $
Request00$ +
.00+ ,
Path00, 0
=001 2
originalPath003 ?
;00? @
}11 
}22 
}33 
)33 
;33 
next55 
(55 
app55 
)55 
;55 
}66 
;66 
}77 	
}88 
}99 ñ	
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
{ 
public 

class 
ResourceManifest !
:" #%
IResourceManifestProvider$ =
{ 
public 
void 
BuildManifests "
(" #$
IResourceManifestBuilder# ;
builder< C
)C D
{ 	
var		 
manifest		 
=		 
builder		 "
.		" #
Add		# &
(		& '
)		' (
;		( )
manifest 
. 
DefineScript 
( 
$str 3
)3 4
. 
SetDependencies  
(  !
$str! (
)( )
. 
SetUrl 
( 
$str Y
,Y Z
$str	[ ò
)
ò ô
. 

SetVersion 
( 
$str #
)# $
;$ %
} 	
} 
} Æ,
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Settings\PreviewPartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %
Settings% -
{ 
public 

class ,
 PreviewPartSettingsDisplayDriver 1
:2 32
&ContentTypePartDefinitionDisplayDriver4 Z
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
public ,
 PreviewPartSettingsDisplayDriver /
(/ 0"
ILiquidTemplateManager0 F
templateManagerG V
,V W
IStringLocalizerX h
<h i-
 PreviewPartSettingsDisplayDriver	i â
>
â ä
	localizer
ã î
)
î ï
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
(% &
PreviewPart& 1
)1 2
,2 3%
contentTypePartDefinition4 M
.M N
PartDefinitionN \
.\ ]
Name] a
)a b
)b c
{ 
return 
null 
; 
} 
return   

Initialize   
<   (
PreviewPartSettingsViewModel   :
>  : ;
(  ; <
$str  < V
,  V W
model  X ]
=>  ^ `
{!! 
var"" 
settings"" 
="" %
contentTypePartDefinition"" 8
.""8 9
GetSettings""9 D
<""D E
PreviewPartSettings""E X
>""X Y
(""Y Z
)""Z [
;""[ \
model$$ 
.$$ 
Pattern$$ 
=$$ 
settings$$  (
.$$( )
Pattern$$) 0
;$$0 1
model%% 
.%% 
PreviewPartSettings%% )
=%%* +
settings%%, 4
;%%4 5
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
ContentTypePartDefinition))? X%
contentTypePartDefinition))Y r
,))r s(
UpdateTypePartEditorContext	))t è
context
))ê ó
)
))ó ò
{** 	
if++ 
(++ 
!++ 
String++ 
.++ 
Equals++ 
(++ 
nameof++ %
(++% &
PreviewPart++& 1
)++1 2
,++2 3%
contentTypePartDefinition++4 M
.++M N
PartDefinition++N \
.++\ ]
Name++] a
)++a b
)++b c
{,, 
return-- 
null-- 
;-- 
}.. 
var00 
model00 
=00 
new00 (
PreviewPartSettingsViewModel00 8
(008 9
)009 :
;00: ;
await22 
context22 
.22 
Updater22 !
.22! "
TryUpdateModelAsync22" 5
(225 6
model226 ;
,22; <
Prefix22= C
,22C D
m33 
=>33 
m33 
.33 
Pattern33 
)44 
;44 
if66 
(66 
!66 
string66 
.66 
IsNullOrEmpty66 %
(66% &
model66& +
.66+ ,
Pattern66, 3
)663 4
&&665 7
!668 9
_templateManager669 I
.66I J
Validate66J R
(66R S
model66S X
.66X Y
Pattern66Y `
,66` a
out66b e
var66f i
errors66j p
)66p q
)66q r
{77 
context88 
.88 
Updater88 
.88  

ModelState88  *
.88* +
AddModelError88+ 8
(888 9
nameof889 ?
(88? @
model88@ E
.88E F
Pattern88F M
)88M N
,88N O
S88P Q
[88Q R
$str	88R ì
,
88ì î
string
88ï õ
.
88õ ú
Join
88ú †
(
88† °
$str
88° §
,
88§ •
errors
88¶ ¨
)
88¨ ≠
]
88≠ Æ
)
88Æ Ø
;
88Ø ∞
}99 
else:: 
{;; 
context<< 
.<< 
Builder<< 
.<<  
WithSettings<<  ,
(<<, -
new<<- 0
PreviewPartSettings<<1 D
{== 
Pattern>> 
=>> 
model>> #
.>># $
Pattern>>$ +
}?? 
)?? 
;?? 
}@@ 
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
}EE Õ
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\Startup.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
{ 
public 

class 
Startup 
: 
Modules "
." #
StartupBase# .
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
< %
IResourceManifestProvider 8
,8 9
ResourceManifest: J
>J K
(K L
)L M
;M N
services 
. 
	AddScoped 
< !
IContentDisplayDriver 4
,4 5 
ContentPreviewDriver6 J
>J K
(K L
)L M
;M N
services 
. 
AddContentPart #
<# $
PreviewPart$ /
>/ 0
(0 1
)1 2
. 

AddHandler 
< 
PreviewPartHandler .
>. /
(/ 0
)0 1
;1 2
services 
. 
	AddScoped 
< 
IDataMigration -
,- .

Migrations/ 9
>9 :
(: ;
); <
;< =
services 
. 
	AddScoped 
< 3
'IContentTypePartDefinitionDisplayDriver F
,F G,
 PreviewPartSettingsDisplayDriverH h
>h i
(i j
)j k
;k l
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor& 7
.7 8
	Singleton8 A
<A B
IStartupFilterB P
,P Q 
PreviewStartupFilterR f
>f g
(g h
)h i
)i j
;j k
} 	
}   
}!! Ä
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\ViewModels\PreviewPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %

ViewModels% /
{ 
public 

class (
PreviewPartSettingsViewModel -
{ 
public 
string 
Pattern 
{ 
get  #
;# $
set% (
;( )
}* +
public 
PreviewPartSettings "
PreviewPartSettings# 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}		 
}

 Ó
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ContentPreview\ViewModels\PreviewPartViewModel.cs
	namespace 	
OrchardCore
 
. 
ContentPreview $
.$ %

ViewModels% /
{ 
public 

class  
PreviewPartViewModel %
{ 
public		 
string		 
Pattern		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 
PreviewPart 
PreviewPart &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} 