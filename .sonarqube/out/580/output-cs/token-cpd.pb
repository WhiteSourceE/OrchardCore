˙P
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Drivers\MarkdownBodyPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Drivers &
{ 
public 

class )
MarkdownBodyPartDisplayDriver .
:/ 0$
ContentPartDisplayDriver1 I
<I J
MarkdownBodyPartJ Z
>Z [
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private 
readonly !
IHtmlSanitizerService .!
_htmlSanitizerService/ D
;D E
private 
readonly 
IShortcodeService *
_shortcodeService+ <
;< =
private 
readonly 
IMarkdownService )
_markdownService* :
;: ;
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public )
MarkdownBodyPartDisplayDriver ,
(, -"
ILiquidTemplateManager- C!
liquidTemplateManagerD Y
,Y Z
HtmlEncoder 
htmlEncoder #
,# $!
IHtmlSanitizerService   ! 
htmlSanitizerService  " 6
,  6 7
IShortcodeService!! 
shortcodeService!! .
,!!. /
IMarkdownService"" 
markdownService"" ,
,"", -
IStringLocalizer## 
<## )
MarkdownBodyPartDisplayDriver## :
>##: ;
	localizer##< E
)##E F
{$$ 	"
_liquidTemplateManager%% "
=%%# $!
liquidTemplateManager%%% :
;%%: ;
_htmlEncoder&& 
=&& 
htmlEncoder&& &
;&&& '!
_htmlSanitizerService'' !
=''" # 
htmlSanitizerService''$ 8
;''8 9
_shortcodeService(( 
=(( 
shortcodeService((  0
;((0 1
_markdownService)) 
=)) 
markdownService)) .
;)). /
S** 
=** 
	localizer** 
;** 
}++ 	
public-- 
override-- 
IDisplayResult-- &
Display--' .
(--. /
MarkdownBodyPart--/ ?
markdownBodyPart--@ P
,--P Q#
BuildPartDisplayContext--R i
context--j q
)--q r
{.. 	
return// 

Initialize// 
<// %
MarkdownBodyPartViewModel// 7
>//7 8
(//8 9
GetDisplayShapeType//9 L
(//L M
context//M T
)//T U
,//U V
m//W X
=>//Y [
BuildViewModel//\ j
(//j k
m//k l
,//l m
markdownBodyPart//n ~
,//~ 
context
//Ä á
)
//á à
)
//à â
.00 
Location00 
(00 
$str00 "
,00" #
$str00$ 0
)000 1
.11 
Location11 
(11 
$str11 #
,11# $
$str11% 1
)111 2
.22 
Location22 
(22 
$str22 '
,22' (
$str22) 5
)225 6
;33 
}44 	
public66 
override66 
IDisplayResult66 &
Edit66' +
(66+ ,
MarkdownBodyPart66, <
markdownBodyPart66= M
,66M N"
BuildPartEditorContext66O e
context66f m
)66m n
{77 	
return88 

Initialize88 
<88 %
MarkdownBodyPartViewModel88 7
>887 8
(888 9
GetEditorShapeType889 K
(88K L
context88L S
)88S T
,88T U
model88V [
=>88\ ^
{99 
model:: 
.:: 
Markdown:: 
=::  
markdownBodyPart::! 1
.::1 2
Markdown::2 :
;::: ;
model;; 
.;; 
ContentItem;; !
=;;" #
markdownBodyPart;;$ 4
.;;4 5
ContentItem;;5 @
;;;@ A
model<< 
.<< 
MarkdownBodyPart<< &
=<<' (
markdownBodyPart<<) 9
;<<9 :
model== 
.== 
TypePartDefinition== (
===) *
context==+ 2
.==2 3
TypePartDefinition==3 E
;==E F
}>> 
)>> 
;>> 
}?? 	
publicAA 
overrideAA 
asyncAA 
TaskAA "
<AA" #
IDisplayResultAA# 1
>AA1 2
UpdateAsyncAA3 >
(AA> ?
MarkdownBodyPartAA? O
modelAAP U
,AAU V
IUpdateModelAAW c
updaterAAd k
,AAk l$
UpdatePartEditorContext	AAm Ñ
context
AAÖ å
)
AAå ç
{BB 	
varCC 
	viewModelCC 
=CC 
newCC %
MarkdownBodyPartViewModelCC  9
(CC9 :
)CC: ;
;CC; <
ifEE 
(EE 
awaitEE 
contextEE 
.EE 
UpdaterEE %
.EE% &
TryUpdateModelAsyncEE& 9
(EE9 :
	viewModelEE: C
,EEC D
PrefixEEE K
,EEK L
vmEEM O
=>EEP R
vmEES U
.EEU V
MarkdownEEV ^
)EE^ _
)EE_ `
{FF 
ifGG 
(GG 
!GG 
stringGG 
.GG 
IsNullOrEmptyGG )
(GG) *
	viewModelGG* 3
.GG3 4
MarkdownGG4 <
)GG< =
&&GG> @
!GGA B"
_liquidTemplateManagerGGB X
.GGX Y
ValidateGGY a
(GGa b
	viewModelGGb k
.GGk l
MarkdownGGl t
,GGt u
outGGv y
varGGz }
errors	GG~ Ñ
)
GGÑ Ö
)
GGÖ Ü
{HH 
varII 
partNameII  
=II! "
contextII# *
.II* +
TypePartDefinitionII+ =
.II= >
DisplayNameII> I
(III J
)IIJ K
;IIK L
updaterJJ 
.JJ 

ModelStateJJ &
.JJ& '
AddModelErrorJJ' 4
(JJ4 5
PrefixJJ5 ;
,JJ; <
nameofJJ= C
(JJC D
	viewModelJJD M
.JJM N
MarkdownJJN V
)JJV W
,JJW X
SJJY Z
[JJZ [
$str	JJ[ ò
,
JJò ô
partName
JJö ¢
,
JJ¢ £
string
JJ§ ™
.
JJ™ ´
Join
JJ´ Ø
(
JJØ ∞
$str
JJ∞ ≥
,
JJ≥ ¥
errors
JJµ ª
)
JJª º
]
JJº Ω
)
JJΩ æ
;
JJæ ø
}KK 
elseLL 
{MM 
modelNN 
.NN 
MarkdownNN "
=NN# $
	viewModelNN% .
.NN. /
MarkdownNN/ 7
;NN7 8
}OO 
}PP 
returnRR 
EditRR 
(RR 
modelRR 
,RR 
contextRR &
)RR& '
;RR' (
}SS 	
privateUU 
asyncUU 
	ValueTaskUU 
BuildViewModelUU  .
(UU. /%
MarkdownBodyPartViewModelUU/ H
modelUUI N
,UUN O
MarkdownBodyPartUUP `
markdownBodyPartUUa q
,UUq r$
BuildPartDisplayContext	UUs ä
context
UUã í
)
UUí ì
{VV 	
modelWW 
.WW 
MarkdownWW 
=WW 
markdownBodyPartWW -
.WW- .
MarkdownWW. 6
;WW6 7
modelXX 
.XX 
MarkdownBodyPartXX "
=XX# $
markdownBodyPartXX% 5
;XX5 6
modelYY 
.YY 
ContentItemYY 
=YY 
markdownBodyPartYY  0
.YY0 1
ContentItemYY1 <
;YY< =
model]] 
.]] 
Html]] 
=]] 
_markdownService]] )
.]]) *
ToHtml]]* 0
(]]0 1
model]]1 6
.]]6 7
Markdown]]7 ?
??]]@ B
$str]]C E
)]]E F
;]]F G
var__ 
settings__ 
=__ 
context__ "
.__" #
TypePartDefinition__# 5
.__5 6
GetSettings__6 A
<__A B$
MarkdownBodyPartSettings__B Z
>__Z [
(__[ \
)__\ ]
;__] ^
ifbb 
(bb 
!bb 
settingsbb 
.bb 
SanitizeHtmlbb &
)bb& '
{cc 
modeldd 
.dd 
Htmldd 
=dd 
awaitdd ""
_liquidTemplateManagerdd# 9
.dd9 :
RenderAsyncdd: E
(ddE F
modelddF K
.ddK L
HtmlddL P
,ddP Q
_htmlEncoderddR ^
,dd^ _
modeldd` e
,dde f
scopeee 
=>ee 
scopeee "
.ee" #
SetValueee# +
(ee+ ,
$stree, 9
,ee9 :
modelee; @
.ee@ A
ContentItemeeA L
)eeL M
)eeM N
;eeN O
}ff 
modelhh 
.hh 
Htmlhh 
=hh 
awaithh 
_shortcodeServicehh 0
.hh0 1
ProcessAsynchh1 =
(hh= >
modelhh> C
.hhC D
HtmlhhD H
,hhH I
newii 
Contextii 
{jj 
[kk 
$strkk "
]kk" #
=kk$ %
markdownBodyPartkk& 6
.kk6 7
ContentItemkk7 B
,kkB C
[ll 
$strll )
]ll) *
=ll+ ,
contextll- 4
.ll4 5
TypePartDefinitionll5 G
}mm 
)mm 
;mm 
ifoo 
(oo 
settingsoo 
.oo 
SanitizeHtmloo %
)oo% &
{pp 
modelqq 
.qq 
Htmlqq 
=qq !
_htmlSanitizerServiceqq 2
.qq2 3
Sanitizeqq3 ;
(qq; <
modelqq< A
.qqA B
HtmlqqB F
??qqG I
$strqqJ L
)qqL M
;qqM N
}rr 
}ss 	
}tt 
}uu öL
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Drivers\MarkdownFieldDriver.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Drivers &
{ 
public 

class &
MarkdownFieldDisplayDriver +
:, -%
ContentFieldDisplayDriver. G
<G H
MarkdownFieldH U
>U V
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private 
readonly !
IHtmlSanitizerService .!
_htmlSanitizerService/ D
;D E
private 
readonly 
IShortcodeService *
_shortcodeService+ <
;< =
private 
readonly 
IMarkdownService )
_markdownService* :
;: ;
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public &
MarkdownFieldDisplayDriver )
() *"
ILiquidTemplateManager* @!
liquidTemplateManagerA V
,V W
HtmlEncoder 
htmlEncoder #
,# $!
IHtmlSanitizerService   ! 
htmlSanitizerService  " 6
,  6 7
IShortcodeService!! 
shortcodeService!! .
,!!. /
IMarkdownService"" 
markdownService"" ,
,"", -
IStringLocalizer## 
<## &
MarkdownFieldDisplayDriver## 7
>##7 8
	localizer##9 B
)##B C
{$$ 	"
_liquidTemplateManager%% "
=%%# $!
liquidTemplateManager%%% :
;%%: ;
_htmlEncoder&& 
=&& 
htmlEncoder&& &
;&&& '!
_htmlSanitizerService'' !
=''" # 
htmlSanitizerService''$ 8
;''8 9
_shortcodeService(( 
=(( 
shortcodeService((  0
;((0 1
_markdownService)) 
=)) 
markdownService)) .
;)). /
S** 
=** 
	localizer** 
;** 
}++ 	
public-- 
override-- 
IDisplayResult-- &
Display--' .
(--. /
MarkdownField--/ <
field--= B
,--B C$
BuildFieldDisplayContext--D \
context--] d
)--d e
{.. 	
return// 

Initialize// 
<// "
MarkdownFieldViewModel// 4
>//4 5
(//5 6
GetDisplayShapeType//6 I
(//I J
context//J Q
)//Q R
,//R S
async//T Y
model//Z _
=>//` b
{00 
var22 
settings22 
=22 
context22 &
.22& '
PartFieldDefinition22' :
.22: ;
GetSettings22; F
<22F G!
MarkdownFieldSettings22G \
>22\ ]
(22] ^
)22^ _
;22_ `
model33 
.33 
Markdown33 
=33  
field33! &
.33& '
Markdown33' /
;33/ 0
model44 
.44 
Field44 
=44 
field44 #
;44# $
model55 
.55 
Part55 
=55 
context55 $
.55$ %
ContentPart55% 0
;550 1
model66 
.66 
PartFieldDefinition66 )
=66* +
context66, 3
.663 4
PartFieldDefinition664 G
;66G H
model:: 
.:: 
Html:: 
=:: 
_markdownService:: -
.::- .
ToHtml::. 4
(::4 5
model::5 :
.::: ;
Markdown::; C
??::D F
$str::G I
)::I J
;::J K
if== 
(== 
!== 
settings== 
.== 
SanitizeHtml== *
)==* +
{>> 
model?? 
.?? 
Markdown?? "
=??# $
await??% *"
_liquidTemplateManager??+ A
.??A B
RenderAsync??B M
(??M N
model??N S
.??S T
Html??T X
,??X Y
_htmlEncoder??Z f
,??f g
model??h m
,??m n
scope@@ 
=>@@  
scope@@! &
.@@& '
SetValue@@' /
(@@/ 0
$str@@0 =
,@@= >
field@@? D
.@@D E
ContentItem@@E P
)@@P Q
)@@Q R
;@@R S
}AA 
modelCC 
.CC 
HtmlCC 
=CC 
awaitCC "
_shortcodeServiceCC# 4
.CC4 5
ProcessAsyncCC5 A
(CCA B
modelCCB G
.CCG H
HtmlCCH L
,CCL M
newDD 
ContextDD 
{EE 
[FF 
$strFF &
]FF& '
=FF( )
fieldFF* /
.FF/ 0
ContentItemFF0 ;
,FF; <
[GG 
$strGG .
]GG. /
=GG0 1
contextGG2 9
.GG9 :
PartFieldDefinitionGG: M
}HH 
)HH 
;HH 
ifJJ 
(JJ 
settingsJJ 
.JJ 
SanitizeHtmlJJ )
)JJ) *
{KK 
modelLL 
.LL 
HtmlLL 
=LL  !
_htmlSanitizerServiceLL! 6
.LL6 7
SanitizeLL7 ?
(LL? @
modelLL@ E
.LLE F
HtmlLLF J
??LLK M
$strLLN P
)LLP Q
;LLQ R
}MM 
}NN 
)NN 
.OO 
LocationOO 
(OO 
$strOO 
,OO 
$strOO  )
)OO) *
.PP 
LocationPP 
(PP 
$strPP 
,PP  
$strPP! *
)PP* +
;PP+ ,
}QQ 	
publicSS 
overrideSS 
IDisplayResultSS &
EditSS' +
(SS+ ,
MarkdownFieldSS, 9
fieldSS: ?
,SS? @#
BuildFieldEditorContextSSA X
contextSSY `
)SS` a
{TT 	
returnUU 

InitializeUU 
<UU &
EditMarkdownFieldViewModelUU 8
>UU8 9
(UU9 :
GetEditorShapeTypeUU: L
(UUL M
contextUUM T
)UUT U
,UUU V
modelUUW \
=>UU] _
{VV 
modelWW 
.WW 
MarkdownWW 
=WW  
fieldWW! &
.WW& '
MarkdownWW' /
;WW/ 0
modelXX 
.XX 
FieldXX 
=XX 
fieldXX #
;XX# $
modelYY 
.YY 
PartYY 
=YY 
contextYY $
.YY$ %
ContentPartYY% 0
;YY0 1
modelZZ 
.ZZ 
PartFieldDefinitionZZ )
=ZZ* +
contextZZ, 3
.ZZ3 4
PartFieldDefinitionZZ4 G
;ZZG H
}[[ 
)[[ 
;[[ 
}\\ 	
public^^ 
override^^ 
async^^ 
Task^^ "
<^^" #
IDisplayResult^^# 1
>^^1 2
UpdateAsync^^3 >
(^^> ?
MarkdownField^^? L
field^^M R
,^^R S
IUpdateModel^^T `
updater^^a h
,^^h i%
UpdateFieldEditorContext	^^j Ç
context
^^É ä
)
^^ä ã
{__ 	
var`` 
	viewModel`` 
=`` 
new`` &
EditMarkdownFieldViewModel``  :
(``: ;
)``; <
;``< =
ifbb 
(bb 
awaitbb 
updaterbb 
.bb 
TryUpdateModelAsyncbb 1
(bb1 2
	viewModelbb2 ;
,bb; <
Prefixbb= C
,bbC D
vmbbE G
=>bbH J
vmbbK M
.bbM N
MarkdownbbN V
)bbV W
)bbW X
{cc 
ifdd 
(dd 
!dd 
stringdd 
.dd 
IsNullOrEmptydd )
(dd) *
	viewModeldd* 3
.dd3 4
Markdowndd4 <
)dd< =
&&dd> @
!ddA B"
_liquidTemplateManagerddB X
.ddX Y
ValidateddY a
(dda b
	viewModelddb k
.ddk l
Markdownddl t
,ddt u
outddv y
varddz }
errors	dd~ Ñ
)
ddÑ Ö
)
ddÖ Ü
{ee 
varff 
	fieldNameff !
=ff" #
contextff$ +
.ff+ ,
PartFieldDefinitionff, ?
.ff? @
DisplayNameff@ K
(ffK L
)ffL M
;ffM N
updatergg 
.gg 

ModelStategg &
.gg& '
AddModelErrorgg' 4
(gg4 5
Prefixgg5 ;
,gg; <
nameofgg= C
(ggC D
	viewModelggD M
.ggM N
MarkdownggN V
)ggV W
,ggW X
SggY Z
[ggZ [
$str	gg[ û
,
ggû ü
	fieldName
gg† ©
,
gg© ™
string
gg´ ±
.
gg± ≤
Join
gg≤ ∂
(
gg∂ ∑
$str
gg∑ ∫
,
gg∫ ª
errors
ggº ¬
)
gg¬ √
]
gg√ ƒ
)
ggƒ ≈
;
gg≈ ∆
}hh 
elseii 
{jj 
fieldkk 
.kk 
Markdownkk "
=kk# $
	viewModelkk% .
.kk. /
Markdownkk/ 7
;kk7 8
}ll 
}mm 
returnoo 
Editoo 
(oo 
fieldoo 
,oo 
contextoo &
)oo& '
;oo' (
}pp 	
}qq 
}rr ƒ
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Fields\MarkdownField.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Fields %
{ 
public 

class 
MarkdownField 
:  
ContentField! -
{ 
public 
string 
Markdown 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 •
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Filters\Markdownify.cs
	namespace		 	
OrchardCore		
 
.		 
Markdown		 
.		 
Filters		 &
{

 
public 

class 
Markdownify 
: 
ILiquidFilter ,
{ 
public 
	ValueTask 
< 

FluidValue #
># $
ProcessAsync% 1
(1 2

FluidValue2 <
input= B
,B C
FilterArgumentsD S
	argumentsT ]
,] ^
TemplateContext_ n
ctxo r
)r s
{ 	
if 
( 
! 
ctx 
. 
AmbientValues "
." #
TryGetValue# .
(. /
$str/ 9
,9 :
out; >
var? B
servicesC K
)K L
)L M
{ 
throw 
new 
ArgumentException +
(+ ,
$str, [
)[ \
;\ ]
} 
var 
markdownService 
=  !
(" #
(# $
IServiceProvider$ 4
)4 5
services5 =
)= >
.> ?
GetRequiredService? Q
<Q R
IMarkdownServiceR b
>b c
(c d
)d e
;e f
return 
new 
	ValueTask  
<  !

FluidValue! +
>+ ,
(, -
new- 0
StringValue1 <
(< =
markdownService= L
.L M
ToHtmlM S
(S T
inputT Y
.Y Z
ToStringValueZ g
(g h
)h i
)i j
)j k
)k l
;l m
} 	
} 
} ’;
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\GraphQL\MarkdownBodyQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
GraphQL &
{ 
public 

class '
MarkdownBodyQueryObjectType ,
:- .
ObjectGraphType/ >
<> ?
MarkdownBodyPart? O
>O P
{ 
public '
MarkdownBodyQueryObjectType *
(* +
IStringLocalizer+ ;
<; <'
MarkdownBodyQueryObjectType< W
>W X
SY Z
)Z [
{ 	
Name 
= 
nameof 
( 
MarkdownBodyPart *
)* +
;+ ,
Description 
= 
S 
[ 
$str v
]v w
;w x
Field 
( 
$str 
, 
x 
=>  "
x# $
.$ %
Markdown% -
,- .
nullable/ 7
:7 8
true9 =
)= >
. 
Description 
( 
S 
[ 
$str 3
]3 4
)4 5
;5 6
Field 
< 
StringGraphType !
>! "
(" #
)# $
. 
Name 
( 
$str 
) 
. 
Description 
( 
S 
[ 
$str P
]P Q
)Q R
.   
ResolveLockedAsync   #
(  # $
ToHtml  $ *
)  * +
;  + ,
}!! 	
private## 
static## 
async## 
Task## !
<##! "
object##" (
>##( )
ToHtml##* 0
(##0 1
ResolveFieldContext##1 D
<##D E
MarkdownBodyPart##E U
>##U V
ctx##W Z
)##Z [
{$$ 	
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% $
(%%$ %
ctx%%% (
.%%( )
Source%%) /
.%%/ 0
Markdown%%0 8
)%%8 9
)%%9 :
{&& 
return'' 
ctx'' 
.'' 
Source'' !
.''! "
Markdown''" *
;''* +
}(( 
var** 
serviceProvider** 
=**  !
ctx**" %
.**% &"
ResolveServiceProvider**& <
(**< =
)**= >
;**> ?
var++ 
markdownService++ 
=++  !
serviceProvider++" 1
.++1 2
GetRequiredService++2 D
<++D E
IMarkdownService++E U
>++U V
(++V W
)++W X
;++X Y
var,, 
shortcodeService,,  
=,,! "
serviceProvider,,# 2
.,,2 3
GetRequiredService,,3 E
<,,E F
IShortcodeService,,F W
>,,W X
(,,X Y
),,Y Z
;,,Z [
var-- $
contentDefinitionManager-- (
=--) *
serviceProvider--+ :
.--: ;
GetRequiredService--; M
<--M N%
IContentDefinitionManager--N g
>--g h
(--h i
)--i j
;--j k
var// !
contentTypeDefinition// %
=//& '$
contentDefinitionManager//( @
.//@ A
GetTypeDefinition//A R
(//R S
ctx//S V
.//V W
Source//W ]
.//] ^
ContentItem//^ i
.//i j
ContentType//j u
)//u v
;//v w
var00 %
contentTypePartDefinition00 )
=00* +!
contentTypeDefinition00, A
.00A B
Parts00B G
.00G H
FirstOrDefault00H V
(00V W
x00W X
=>00Y [
string00\ b
.00b c
Equals00c i
(00i j
x00j k
.00k l
PartDefinition00l z
.00z {
Name00{ 
,	00 Ä
$str
00Å ì
)
00ì î
)
00î ï
;
00ï ñ
var11 
settings11 
=11 %
contentTypePartDefinition11 4
.114 5
GetSettings115 @
<11@ A$
MarkdownBodyPartSettings11A Y
>11Y Z
(11Z [
)11[ \
;11\ ]
var55 
html55 
=55 
markdownService55 &
.55& '
ToHtml55' -
(55- .
ctx55. 1
.551 2
Source552 8
.558 9
Markdown559 A
)55A B
;55B C
if88 
(88 
!88 
settings88 
.88 
SanitizeHtml88 &
)88& '
{99 
var:: !
liquidTemplateManager:: )
=::* +
serviceProvider::, ;
.::; <

GetService::< F
<::F G"
ILiquidTemplateManager::G ]
>::] ^
(::^ _
)::_ `
;::` a
var;; 
htmlEncoder;; 
=;;  !
serviceProvider;;" 1
.;;1 2

GetService;;2 <
<;;< =
HtmlEncoder;;= H
>;;H I
(;;I J
);;J K
;;;K L
var<< 
model<< 
=<< 
new<< %
MarkdownBodyPartViewModel<<  9
(<<9 :
)<<: ;
{== 
Markdown>> 
=>> 
ctx>> "
.>>" #
Source>># )
.>>) *
Markdown>>* 2
,>>2 3
Html?? 
=?? 
html?? 
,??  
MarkdownBodyPart@@ $
=@@% &
ctx@@' *
.@@* +
Source@@+ 1
,@@1 2
ContentItemAA 
=AA  !
ctxAA" %
.AA% &
SourceAA& ,
.AA, -
ContentItemAA- 8
}BB 
;BB 
htmlDD 
=DD 
awaitDD !
liquidTemplateManagerDD 2
.DD2 3
RenderAsyncDD3 >
(DD> ?
htmlDD? C
,DDC D
htmlEncoderDDE P
,DDP Q
modelDDR W
,DDW X
scopeEE 
=>EE 
scopeEE "
.EE" #
SetValueEE# +
(EE+ ,
$strEE, 9
,EE9 :
modelEE; @
.EE@ A
ContentItemEEA L
)EEL M
)EEM N
;EEN O
}FF 
htmlHH 
=HH 
awaitHH 
shortcodeServiceHH )
.HH) *
ProcessAsyncHH* 6
(HH6 7
htmlHH7 ;
,HH; <
newII 
ContextII 
{JJ 
[KK 
$strKK "
]KK" #
=KK$ %
ctxKK& )
.KK) *
SourceKK* 0
.KK0 1
ContentItemKK1 <
,KK< =
[LL 
$strLL *
]LL* +
=LL, -%
contentTypePartDefinitionLL. G
}MM 
)MM 
;MM 
ifOO 
(OO 
settingsOO 
.OO 
SanitizeHtmlOO %
)OO% &
{PP 
varQQ  
htmlSanitizerServiceQQ (
=QQ) *
serviceProviderQQ+ :
.QQ: ;
GetRequiredServiceQQ; M
<QQM N!
IHtmlSanitizerServiceQQN c
>QQc d
(QQd e
)QQe f
;QQf g
htmlRR 
=RR  
htmlSanitizerServiceRR +
.RR+ ,
SanitizeRR, 4
(RR4 5
htmlRR5 9
)RR9 :
;RR: ;
}SS 
returnUU 
htmlUU 
;UU 
}VV 	
}WW 
}XX ÛF
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\GraphQL\MarkdownFieldQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
GraphQL &
{ 
public 

class (
MarkdownFieldQueryObjectType -
:. /
ObjectGraphType0 ?
<? @
MarkdownField@ M
>M N
{ 
public (
MarkdownFieldQueryObjectType +
(+ ,
IStringLocalizer, <
<< =(
MarkdownFieldQueryObjectType= Y
>Y Z
S[ \
)\ ]
{ 	
Name 
= 
nameof 
( 
MarkdownField '
)' (
;( )
Description 
= 
S 
[ 
$str v
]v w
;w x
Field 
( 
$str 
, 
x 
=>  "
x# $
.$ %
Markdown% -
,- .
nullable/ 7
:7 8
true9 =
)= >
. 
Description 
( 
S 
[ 
$str 3
]3 4
)4 5
;5 6
Field 
< 
StringGraphType !
>! "
(" #
)# $
.   
Name   
(   
$str   
)   
.!! 
Description!! 
(!! 
S!! 
[!! 
$str!! P
]!!P Q
)!!Q R
."" 
ResolveLockedAsync"" #
(""# $
ToHtml""$ *
)""* +
;""+ ,
}## 	
private%% 
static%% 
async%% 
Task%% !
<%%! "
object%%" (
>%%( )
ToHtml%%* 0
(%%0 1
ResolveFieldContext%%1 D
<%%D E
MarkdownField%%E R
>%%R S
ctx%%T W
)%%W X
{&& 	
if'' 
('' 
string'' 
.'' 
IsNullOrEmpty'' $
(''$ %
ctx''% (
.''( )
Source'') /
.''/ 0
Markdown''0 8
)''8 9
)''9 :
{(( 
return)) 
ctx)) 
.)) 
Source)) !
.))! "
Markdown))" *
;))* +
}** 
var,, 
serviceProvider,, 
=,,  !
ctx,," %
.,,% &"
ResolveServiceProvider,,& <
(,,< =
),,= >
;,,> ?
var-- 
markdownService-- 
=--  !
serviceProvider--" 1
.--1 2
GetRequiredService--2 D
<--D E
IMarkdownService--E U
>--U V
(--V W
)--W X
;--X Y
var.. 
shortcodeService..  
=..! "
serviceProvider..# 2
...2 3
GetRequiredService..3 E
<..E F
IShortcodeService..F W
>..W X
(..X Y
)..Y Z
;..Z [
var00 $
contentDefinitionManager00 (
=00) *
serviceProvider00+ :
.00: ;
GetRequiredService00; M
<00M N%
IContentDefinitionManager00N g
>00g h
(00h i
)00i j
;00j k
var22 
jObject22 
=22 
ctx22 
.22 
Source22 $
.22$ %
Content22% ,
as22- /
JObject220 7
;227 8
var44 
jsonPath44 
=44 
jObject44 "
.44" #
Path44# '
;44' (
var55 
paths55 
=55 
jsonPath55  
.55  !
Split55! &
(55& '
$char55' *
)55* +
;55+ ,
var66 
partName66 
=66 
paths66  
[66  !
$num66! "
]66" #
;66# $
var77 
	fieldName77 
=77 
paths77 !
[77! "
$num77" #
]77# $
;77$ %
var88 !
contentTypeDefinition88 %
=88& '$
contentDefinitionManager88( @
.88@ A
GetTypeDefinition88A R
(88R S
ctx88S V
.88V W
Source88W ]
.88] ^
ContentItem88^ i
.88i j
ContentType88j u
)88u v
;88v w
var99 !
contentPartDefinition99 %
=99& '!
contentTypeDefinition99( =
.99= >
Parts99> C
.99C D
FirstOrDefault99D R
(99R S
x99S T
=>99U W
string99X ^
.99^ _
Equals99_ e
(99e f
x99f g
.99g h
Name99h l
,99l m
partName99n v
)99v w
)99w x
;99x y
var:: %
contentPartFieldDefintion:: )
=::* +!
contentPartDefinition::, A
.::A B
PartDefinition::B P
.::P Q
Fields::Q W
.::W X
FirstOrDefault::X f
(::f g
x::g h
=>::i k
string::l r
.::r s
Equals::s y
(::y z
x::z {
.::{ |
Name	::| Ä
,
::Ä Å
	fieldName
::Ç ã
)
::ã å
)
::å ç
;
::ç é
var<< 
settings<< 
=<< %
contentPartFieldDefintion<< 4
.<<4 5
GetSettings<<5 @
<<<@ A!
MarkdownFieldSettings<<A V
><<V W
(<<W X
)<<X Y
;<<Y Z
var@@ 
html@@ 
=@@ 
markdownService@@ &
.@@& '
ToHtml@@' -
(@@- .
ctx@@. 1
.@@1 2
Source@@2 8
.@@8 9
Markdown@@9 A
)@@A B
;@@B C
ifCC 
(CC 
!CC 
settingsCC 
.CC 
SanitizeHtmlCC &
)CC& '
{DD 
varEE !
liquidTemplateManagerEE )
=EE* +
serviceProviderEE, ;
.EE; <

GetServiceEE< F
<EEF G"
ILiquidTemplateManagerEEG ]
>EE] ^
(EE^ _
)EE_ `
;EE` a
varFF 
htmlEncoderFF 
=FF  !
serviceProviderFF" 1
.FF1 2

GetServiceFF2 <
<FF< =
HtmlEncoderFF= H
>FFH I
(FFI J
)FFJ K
;FFK L
varHH 
modelHH 
=HH 
newHH "
MarkdownFieldViewModelHH  6
(HH6 7
)HH7 8
{II 
MarkdownJJ 
=JJ 
ctxJJ "
.JJ" #
SourceJJ# )
.JJ) *
MarkdownJJ* 2
,JJ2 3
HtmlKK 
=KK 
htmlKK 
,KK  
FieldLL 
=LL 
ctxLL 
.LL  
SourceLL  &
,LL& '
PartMM 
=MM 
ctxMM 
.MM 
SourceMM %
.MM% &
ContentItemMM& 1
.MM1 2
GetMM2 5
<MM5 6
ContentPartMM6 A
>MMA B
(MMB C
partNameMMC K
)MMK L
,MML M
PartFieldDefinitionNN '
=NN( )%
contentPartFieldDefintionNN* C
}OO 
;OO 
htmlQQ 
=QQ 
awaitQQ !
liquidTemplateManagerQQ 2
.QQ2 3
RenderAsyncQQ3 >
(QQ> ?
htmlQQ? C
,QQC D
htmlEncoderQQE P
,QQP Q
modelQQR W
,QQW X
scopeRR 
=>RR 
scopeRR "
.RR" #
SetValueRR# +
(RR+ ,
$strRR, 9
,RR9 :
ctxRR; >
.RR> ?
SourceRR? E
.RRE F
ContentItemRRF Q
)RRQ R
)RRR S
;RRS T
}SS 
htmlUU 
=UU 
awaitUU 
shortcodeServiceUU )
.UU) *
ProcessAsyncUU* 6
(UU6 7
htmlUU7 ;
,UU; <
newVV 
ContextVV 
{WW 
[XX 
$strXX "
]XX" #
=XX$ %
ctxXX& )
.XX) *
SourceXX* 0
.XX0 1
ContentItemXX1 <
,XX< =
[YY 
$strYY *
]YY* +
=YY, -%
contentPartFieldDefintionYY. G
}ZZ 
)ZZ 
;ZZ 
if\\ 
(\\ 
settings\\ 
.\\ 
SanitizeHtml\\ %
)\\% &
{]] 
var^^  
htmlSanitizerService^^ (
=^^) *
serviceProvider^^+ :
.^^: ;
GetRequiredService^^; M
<^^M N!
IHtmlSanitizerService^^N c
>^^c d
(^^d e
)^^e f
;^^f g
html__ 
=__  
htmlSanitizerService__ +
.__+ ,
Sanitize__, 4
(__4 5
html__5 9
)__9 :
;__: ;
}`` 
returnbb 
htmlbb 
;bb 
}cc 	
}dd 
}ee ü	
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
GraphQL &
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
<' (
MarkdownBodyPart( 8
,8 9'
MarkdownBodyQueryObjectType: U
>U V
(V W
)W X
;X Y
services 
. 
AddObjectGraphType '
<' (
MarkdownField( 5
,5 6(
MarkdownFieldQueryObjectType7 S
>S T
(T U
)U V
;V W
} 	
} 
} «3
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Handlers\MarkdownBodyPartHandler.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Handlers '
{ 
public 

class #
MarkdownBodyPartHandler (
:) *
ContentPartHandler+ =
<= >
MarkdownBodyPart> N
>N O
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IShortcodeService *
_shortcodeService+ <
;< =
private 
readonly 
IMarkdownService )
_markdownService* :
;: ;
private 
readonly !
IHtmlSanitizerService .!
_htmlSanitizerService/ D
;D E
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public #
MarkdownBodyPartHandler &
(& '%
IContentDefinitionManager' @$
contentDefinitionManagerA Y
,Y Z
IShortcodeService 
shortcodeService .
,. /
IMarkdownService 
markdownService ,
,, -!
IHtmlSanitizerService   ! 
htmlSanitizerService  " 6
,  6 7"
ILiquidTemplateManager!! "!
liquidTemplateManager!!# 8
,!!8 9
HtmlEncoder"" 
htmlEncoder"" #
)""# $
{## 	%
_contentDefinitionManager$$ %
=$$& '$
contentDefinitionManager$$( @
;$$@ A
_shortcodeService%% 
=%% 
shortcodeService%%  0
;%%0 1
_markdownService&& 
=&& 
markdownService&& .
;&&. /!
_htmlSanitizerService'' !
=''" # 
htmlSanitizerService''$ 8
;''8 9"
_liquidTemplateManager(( "
=((# $!
liquidTemplateManager((% :
;((: ;
_htmlEncoder)) 
=)) 
htmlEncoder)) &
;))& '
}** 	
public,, 
override,, 
Task,, %
GetContentItemAspectAsync,, 6
(,,6 7$
ContentItemAspectContext,,7 O
context,,P W
,,,W X
MarkdownBodyPart,,Y i
part,,j n
),,n o
{-- 	
return.. 
context.. 
... 
ForAsync.. #
<..# $

BodyAspect..$ .
>... /
(../ 0
async..0 5

bodyAspect..6 @
=>..A C
{// 
try00 
{11 
var22 !
contentTypeDefinition22 -
=22. /%
_contentDefinitionManager220 I
.22I J
GetTypeDefinition22J [
(22[ \
part22\ `
.22` a
ContentItem22a l
.22l m
ContentType22m x
)22x y
;22y z
var33 %
contentTypePartDefinition33 1
=332 3!
contentTypeDefinition334 I
.33I J
Parts33J O
.33O P
FirstOrDefault33P ^
(33^ _
x33_ `
=>33a c
String33d j
.33j k
Equals33k q
(33q r
x33r s
.33s t
PartDefinition	33t Ç
.
33Ç É
Name
33É á
,
33á à
$str
33â õ
)
33õ ú
)
33ú ù
;
33ù û
var44 
settings44  
=44! "%
contentTypePartDefinition44# <
.44< =
GetSettings44= H
<44H I$
MarkdownBodyPartSettings44I a
>44a b
(44b c
)44c d
;44d e
var88 
html88 
=88 
_markdownService88 /
.88/ 0
ToHtml880 6
(886 7
part887 ;
.88; <
Markdown88< D
)88D E
;88E F
if;; 
(;; 
!;; 
settings;; !
.;;! "
SanitizeHtml;;" .
);;. /
{<< 
var== 
model== !
===" #
new==$ '%
MarkdownBodyPartViewModel==( A
(==A B
)==B C
{>> 
Markdown?? $
=??% &
part??' +
.??+ ,
Markdown??, 4
,??4 5
Html@@  
=@@! "
html@@# '
,@@' (
MarkdownBodyPartAA ,
=AA- .
partAA/ 3
,AA3 4
ContentItemBB '
=BB( )
partBB* .
.BB. /
ContentItemBB/ :
}CC 
;CC 
htmlEE 
=EE 
awaitEE $"
_liquidTemplateManagerEE% ;
.EE; <
RenderAsyncEE< G
(EEG H
htmlEEH L
,EEL M
_htmlEncoderEEN Z
,EEZ [
modelEE\ a
,EEa b
scopeFF !
=>FF" $
scopeFF% *
.FF* +
SetValueFF+ 3
(FF3 4
$strFF4 A
,FFA B
modelFFC H
.FFH I
ContentItemFFI T
)FFT U
)FFU V
;FFV W
}GG 
htmlII 
=II 
awaitII  
_shortcodeServiceII! 2
.II2 3
ProcessAsyncII3 ?
(II? @
htmlII@ D
,IID E
newJJ 
ContextJJ #
{KK 
[LL 
$strLL *
]LL* +
=LL, -
partLL. 2
.LL2 3
ContentItemLL3 >
,LL> ?
[MM 
$strMM 1
]MM1 2
=MM3 4%
contentTypePartDefinitionMM5 N
}NN 
)NN 
;NN 
ifPP 
(PP 
settingsPP  
.PP  !
SanitizeHtmlPP! -
)PP- .
{QQ 
htmlRR 
=RR !
_htmlSanitizerServiceRR 4
.RR4 5
SanitizeRR5 =
(RR= >
htmlRR> B
)RRB C
;RRC D
}SS 

bodyAspectUU 
.UU 
BodyUU #
=UU$ %
newUU& )

HtmlStringUU* 4
(UU4 5
htmlUU5 9
)UU9 :
;UU: ;
}VV 
catchWW 
{XX 

bodyAspectYY 
.YY 
BodyYY #
=YY$ %

HtmlStringYY& 0
.YY0 1
EmptyYY1 6
;YY6 7
}ZZ 
}[[ 
)[[ 
;[[ 
}\\ 	
}]] 
}^^ ©
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Indexing\MarkdownBodyPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Indexing '
{ 
public 

class (
MarkdownBodyPartIndexHandler -
:. /#
ContentPartIndexHandler0 G
<G H
MarkdownBodyPartH X
>X Y
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
MarkdownBodyPart		- =
part		> B
,		B C!
BuildPartIndexContext		D Y
context		Z a
)		a b
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
|  
DocumentIndexOptions &
.& '
Sanitize' /
|  
DocumentIndexOptions &
.& '
Analyze' .
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
.3 4
Markdown4 <
,< =
options> E
)E F
;F G
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ˆ
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Indexing\MarkdownFieldIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Indexing '
{ 
public 

class %
MarkdownFieldIndexHandler *
:+ ,$
ContentFieldIndexHandler- E
<E F
MarkdownFieldF S
>S T
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
MarkdownField		- :
field		; @
,		@ A"
BuildFieldIndexContext		B X
context		Y `
)		` a
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
;6 7
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
field/ 4
.4 5
Markdown5 =
,= >
options? F
)F G
;G H
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ì
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Manifest.cs
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
,2 3
Description 
= 
$str W
,W X
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 5
,		5 6
$str		7 O
}		P Q
,		Q R
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
] Î
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Media\MediaShapes.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Media $
{ 
public 

class 
MediaShapes 
: 
IShapeTableProvider 2
{ 
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{		 	
builder

 
.

 
Describe

 
(

 
$str

 4
)

4 5
. 
OnDisplaying 
( 

displaying (
=>) +
{ 
IShape 
editor !
=" #

displaying$ .
.. /
Shape/ 4
;4 5
if 
( 
editor 
. 
Metadata '
.' (
Type( ,
==- /
$str0 P
)P Q
{ 
editor 
. 
Metadata '
.' (
Wrappers( 0
.0 1
Add1 4
(4 5
$str5 V
)V W
;W X
} 
} 
) 
; 
builder 
. 
Describe 
( 
$str 1
)1 2
. 
OnDisplaying 
( 

displaying (
=>) +
{ 
IShape 
editor !
=" #

displaying$ .
.. /
Shape/ 4
;4 5
if 
( 
editor 
. 
Metadata '
.' (
Type( ,
==- /
$str0 M
)M N
{ 
editor 
. 
Metadata '
.' (
Wrappers( 0
.0 1
Add1 4
(4 5
$str5 V
)V W
;W X
} 
} 
) 
; 
} 	
}   
}!! °
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Media\Startup.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Media $
{ 
[ 
RequireFeatures 
( 
$str (
)( )
]) *
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
. 
	AddScoped 
< 
IShapeTableProvider 2
,2 3
MediaShapes4 ?
>? @
(@ A
)A B
;B C
} 	
} 
} ≥*
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Migrations.cs
	namespace 	
OrchardCore
 
. 
Markdown 
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
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
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
$str: L
,L M
builderN U
=>V X
builderY `
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! \
)\ ]
)] ^
;^ _
return 
$num 
; 
} 	
public 
int 
UpdateFrom1 
( 
)  
{   	%
_contentDefinitionManager!! %
.!!% & 
MigrateFieldSettings!!& :
<!!: ;
MarkdownField!!; H
,!!H I!
MarkdownFieldSettings!!J _
>!!_ `
(!!` a
)!!a b
;!!b c
return"" 
$num"" 
;"" 
}## 	
public&& 
int&& 
UpdateFrom2&& 
(&& 
)&&  
{'' 	
foreach)) 
()) 
var)) 
contentType)) $
in))% '%
_contentDefinitionManager))( A
.))A B
LoadTypeDefinitions))B U
())U V
)))V W
)))W X
{** 
if++ 
(++ 
contentType++ 
.++  
Parts++  %
.++% &
Any++& )
(++) *
x++* +
=>++, .
x++/ 0
.++0 1
PartDefinition++1 ?
.++? @
Name++@ D
==++E G
$str++H Z
)++Z [
)++[ \
{,, %
_contentDefinitionManager-- -
.--- .
AlterTypeDefinition--. A
(--A B
contentType--B M
.--M N
Name--N R
,--R S
x--T U
=>--V X
x--Y Z
.--Z [
WithPart--[ c
(--c d
$str--d v
,--v w
part--x |
=>--} 
{.. 
part// 
.// 
MergeSettings// *
<//* +$
MarkdownBodyPartSettings//+ C
>//C D
(//D E
x//E F
=>//G I
x//J K
.//K L
SanitizeHtml//L X
=//Y Z
false//[ `
)//` a
;//a b
}00 
)00 
)00 
;00 
}11 
}22 
return44 
$num44 
;44 
}55 	
public88 
int88 
UpdateFrom388 
(88 
)88  
{99 	
var;; 
partDefinitions;; 
=;;  !%
_contentDefinitionManager;;" ;
.;;; <
LoadPartDefinitions;;< O
(;;O P
);;P Q
;;;Q R
foreach<< 
(<< 
var<< 
partDefinition<< '
in<<( *
partDefinitions<<+ :
)<<: ;
{== 
if>> 
(>> 
partDefinition>> "
.>>" #
Fields>># )
.>>) *
Any>>* -
(>>- .
x>>. /
=>>>0 2
x>>3 4
.>>4 5
FieldDefinition>>5 D
.>>D E
Name>>E I
==>>J L
$str>>M \
)>>\ ]
)>>] ^
{?? %
_contentDefinitionManager@@ -
.@@- .
AlterPartDefinition@@. A
(@@A B
partDefinition@@B P
.@@P Q
Name@@Q U
,@@U V
partBuilder@@W b
=>@@c e
{AA 
foreachBB 
(BB  !
varBB! $
fieldDefinitionBB% 4
inBB5 7
partDefinitionBB8 F
.BBF G
FieldsBBG M
.BBM N
WhereBBN S
(BBS T
xBBT U
=>BBV X
xBBY Z
.BBZ [
FieldDefinitionBB[ j
.BBj k
NameBBk o
==BBp r
$str	BBs Ç
)
BBÇ É
)
BBÉ Ñ
{CC 
partBuilderDD '
.DD' (
	WithFieldDD( 1
(DD1 2
fieldDefinitionDD2 A
.DDA B
NameDDB F
,DDF G
fieldBuilderDDH T
=>DDU W
{EE 
fieldBuilderFF  ,
.FF, -
MergeSettingsFF- :
<FF: ;!
MarkdownFieldSettingsFF; P
>FFP Q
(FFQ R
sFFR S
=>FFT V
sFFW X
.FFX Y
SanitizeHtmlFFY e
=FFf g
falseFFh m
)FFm n
;FFn o
}GG 
)GG 
;GG 
}HH 
}II 
)II 
;II 
}JJ 
}KK 
returnMM 
$numMM 
;MM 
}NN 	
}OO 
}PP …
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Models\MarkdownBodyPart.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Models %
{ 
public 

class 
MarkdownBodyPart !
:" #
ContentPart$ /
{ 
public 
string 
Markdown 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 ﬂ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Properties\AssemblyInfo.cs
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
$str		 1
)		1 2
]		2 3
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
]7 8¢
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Razor\MarkdownHelperExtensions.cs
public 
static 
class (
ContentRazorHelperExtensions 0
{ 
public 

static 
async 
Task 
< 
IHtmlContent )
>) *
MarkdownToHtmlAsync+ >
(> ?
this? C
IOrchardHelperD R
orchardHelperS `
,` a
stringb h
markdowni q
,q r
bools w
sanitize	x Ä
=
Å Ç
true
É á
)
á à
{ 
var 
shortcodeService 
= 
orchardHelper ,
., -
HttpContext- 8
.8 9
RequestServices9 H
.H I
GetRequiredServiceI [
<[ \
IShortcodeService\ m
>m n
(n o
)o p
;p q
var 
markdownService 
= 
orchardHelper +
.+ ,
HttpContext, 7
.7 8
RequestServices8 G
.G H
GetRequiredServiceH Z
<Z [
IMarkdownService[ k
>k l
(l m
)m n
;n o
markdown 
= 
markdownService "
." #
ToHtml# )
() *
markdown* 2
??3 5
$str6 8
)8 9
;9 :
if 

( 
! 
sanitize 
) 
{ 	
var   !
liquidTemplateManager   %
=  & '
orchardHelper  ( 5
.  5 6
HttpContext  6 A
.  A B
RequestServices  B Q
.  Q R
GetRequiredService  R d
<  d e"
ILiquidTemplateManager  e {
>  { |
(  | }
)  } ~
;  ~ 
var!! 
htmlEncoder!! 
=!! 
orchardHelper!! +
.!!+ ,
HttpContext!!, 7
.!!7 8
RequestServices!!8 G
.!!G H
GetRequiredService!!H Z
<!!Z [
HtmlEncoder!![ f
>!!f g
(!!g h
)!!h i
;!!i j
markdown## 
=## 
await## !
liquidTemplateManager## 2
.##2 3
RenderAsync##3 >
(##> ?
markdown##? G
,##G H
htmlEncoder##I T
)##T U
;##U V
}$$ 	
markdown(( 
=(( 
await(( 
shortcodeService(( )
.(() *
ProcessAsync((* 6
(((6 7
markdown((7 ?
)((? @
;((@ A
if** 

(** 
sanitize** 
)** 
{++ 	
var,, 
	sanitizer,, 
=,, 
orchardHelper,, )
.,,) *
HttpContext,,* 5
.,,5 6
RequestServices,,6 E
.,,E F
GetRequiredService,,F X
<,,X Y!
IHtmlSanitizerService,,Y n
>,,n o
(,,o p
),,p q
;,,q r
markdown-- 
=-- 
	sanitizer--  
.--  !
Sanitize--! )
(--) *
markdown--* 2
)--2 3
;--3 4
}.. 	
return00 
new00 

HtmlString00 
(00 
markdown00 &
)00& '
;00' (
}11 
}22 ¸
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\RemotePublishing\MarkdownBodyMetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
RemotePublishing /
{ 
public		 

class		 (
MarkdownBodyMetaWeblogDriver		 -
:		. /
MetaWeblogDriver		0 @
{

 
public 
override 
void 
	BuildPost &
(& '

XRpcStruct' 1
	rpcStruct2 ;
,; <
XmlRpcContext= J
contextK R
,R S
ContentItemT _
contentItem` k
)k l
{ 	
var 
bodyPart 
= 
contentItem &
.& '
As' )
<) *
MarkdownBodyPart* :
>: ;
(; <
)< =
;= >
if 
( 
bodyPart 
== 
null  
)  !
{ 
return 
; 
} 
	rpcStruct 
. 
Set 
( 
$str '
,' (
bodyPart) 1
.1 2
Markdown2 :
): ;
;; <
} 	
public 
override 
void 
EditPost %
(% &

XRpcStruct& 0
	rpcStruct1 :
,: ;
ContentItem< G
contentItemH S
)S T
{ 	
if 
( 
contentItem 
. 
As 
< 
MarkdownBodyPart /
>/ 0
(0 1
)1 2
!=3 5
null6 :
): ;
{ 
contentItem 
. 
Alter !
<! "
MarkdownBodyPart" 2
>2 3
(3 4
x4 5
=>6 8
x9 :
.: ;
Markdown; C
=D E
	rpcStructF O
.O P
OptionalP X
<X Y
stringY _
>_ `
(` a
$stra n
)n o
)o p
;p q
} 
} 	
} 
} ∆
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\RemotePublishing\Startup.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
RemotePublishing /
{ 
[ 
RequireFeatures 
( 
$str 3
)3 4
]4 5
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
. 
	AddScoped 
< 
IMetaWeblogDriver 0
,0 1(
MarkdownBodyMetaWeblogDriver2 N
>N O
(O P
)P Q
;Q R
} 	
} 
} ¥
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Services\DefaultMarkdownService.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Services '
{ 
public 

class "
DefaultMarkdownService '
:( )
IMarkdownService* :
{ 
private 
readonly 
MarkdownPipeline )
_markdownPipeline* ;
;; <
public

 "
DefaultMarkdownService

 %
(

% &
IOptions

& .
<

. /#
MarkdownPipelineOptions

/ F
>

F G
options

H O
)

O P
{ 	
var 
builder 
= 
new #
MarkdownPipelineBuilder 5
(5 6
)6 7
;7 8
foreach 
( 
var 
action 
in  "
options# *
.* +
Value+ 0
.0 1
	Configure1 :
): ;
{ 
action 
? 
. 
Invoke 
( 
builder &
)& '
;' (
} 
_markdownPipeline 
= 
builder  '
.' (
Build( -
(- .
). /
;/ 0
} 	
public 
string 
ToHtml 
( 
string #
markdown$ ,
), -
{ 	
return 
Markdig 
. 
Markdown #
.# $
ToHtml$ *
(* +
markdown+ 3
,3 4
_markdownPipeline5 F
)F G
;G H
} 	
} 
} €
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Services\MarkdownPipelineOptions.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Services '
{ 
public 

class #
MarkdownPipelineOptions (
{ 
public		 
List		 
<		 
Action		 
<		 #
MarkdownPipelineBuilder		 2
>		2 3
>		3 4
	Configure		5 >
{		? @
get		A D
;		D E
}		F G
=		H I
new		J M
List		N R
<		R S
Action		S Y
<		Y Z#
MarkdownPipelineBuilder		Z q
>		q r
>		r s
(		s t
)		t u
;		u v
}

 
} ®	
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Services\MarkdownPipelineOptionsExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class -
!MarkdownPipelineOptionsExtensions 9
{ 
public 
static 
void %
ConfigureMarkdownPipeline 4
(4 5
this5 9
IServiceCollection: L
servicesM U
,U V
ActionW ]
<] ^#
MarkdownPipelineBuilder^ u
>u v
actionw }
)} ~
{ 	
services 
. 
	Configure 
< #
MarkdownPipelineOptions 6
>6 7
(7 8
o8 9
=>: <
{ 
o 
. 
	Configure 
. 
Add 
(  
action  &
)& '
;' (
} 
) 
; 
} 	
} 
} œ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Settings\MarkdownBodyPartSettings.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Settings '
{ 
public 

class $
MarkdownBodyPartSettings )
{ 
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
true1 5
;5 6
}		 
}

 ƒ
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Settings\MarkdownBodyPartSettingsDisplayDriver.cs
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
Markdown
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
class 1
%MarkdownBodyPartSettingsDisplayDriver 6
:7 82
&ContentTypePartDefinitionDisplayDriver9 _
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
(% &
MarkdownBodyPart& 6
)6 7
,7 8%
contentTypePartDefinition9 R
.R S
PartDefinitionS a
.a b
Nameb f
)f g
)g h
{ 
return 
null 
; 
} 
return 

Initialize 
< -
!MarkdownBodyPartSettingsViewModel ?
>? @
(@ A
$strA `
,` a
modelb g
=>h j
{ 
var 
settings  
=! "%
contentTypePartDefinition# <
.< =
GetSettings= H
<H I$
MarkdownBodyPartSettingsI a
>a b
(b c
)c d
;d e
model 
. 
SanitizeHtml &
=' (
settings) 1
.1 2
SanitizeHtml2 >
;> ?
} 
) 
. 
Location 
( 
$str &
)& '
;' (
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?%
ContentTypePartDefinition? X%
contentTypePartDefinitionY r
,r s(
UpdateTypePartEditorContext	t è
context
ê ó
)
ó ò
{ 	
if   
(   
!   
String   
.   
Equals   
(   
nameof   %
(  % &
MarkdownBodyPart  & 6
)  6 7
,  7 8%
contentTypePartDefinition  9 R
.  R S
PartDefinition  S a
.  a b
Name  b f
)  f g
)  g h
{!! 
return"" 
null"" 
;"" 
}## 
var%% 
model%% 
=%% 
new%% -
!MarkdownBodyPartSettingsViewModel%% =
(%%= >
)%%> ?
;%%? @
var&& 
settings&& 
=&& 
new&& $
MarkdownBodyPartSettings&& 7
(&&7 8
)&&8 9
;&&9 :
if(( 
((( 
await(( 
context(( 
.(( 
Updater(( %
.((% &
TryUpdateModelAsync((& 9
(((9 :
model((: ?
,((? @
Prefix((A G
)((G H
)((H I
{)) 
settings** 
.** 
SanitizeHtml** %
=**& '
model**( -
.**- .
SanitizeHtml**. :
;**: ;
context,, 
.,, 
Builder,, 
.,,  
WithSettings,,  ,
(,,, -
settings,,- 5
),,5 6
;,,6 7
}-- 
return// 
Edit// 
(// %
contentTypePartDefinition// 1
,//1 2
context//3 :
.//: ;
Updater//; B
)//B C
;//C D
}00 	
}11 
}22 ·
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Settings\MarkdownFieldSettings.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Settings '
{ 
public 

class !
MarkdownFieldSettings &
{ 
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
true1 5
;5 6
public		 
string		 
Hint		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
}

 
} Á
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Settings\MarkdownFieldSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 
Settings '
{		 
public

 

class

 '
MarkdownFieldSettingsDriver

 ,
:

- .3
'ContentPartFieldDefinitionDisplayDriver

/ V
<

V W
MarkdownField

W d
>

d e
{ 
public 
override 
IDisplayResult &
Edit' +
(+ ,&
ContentPartFieldDefinition, F
partFieldDefinitionG Z
)Z [
{ 	
return 

Initialize 
< *
MarkdownFieldSettingsViewModel <
>< =
(= >
$str> Z
,Z [
model\ a
=>b d
{ 
var 
settings 
= 
partFieldDefinition 2
.2 3
GetSettings3 >
<> ?!
MarkdownFieldSettings? T
>T U
(U V
)V W
;W X
model 
. 
SanitizeHtml "
=# $
settings% -
.- .
SanitizeHtml. :
;: ;
model 
. 
Hint 
= 
settings %
.% &
Hint& *
;* +
} 
) 
. 
Location 
( 
$str $
)$ %
;% &
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
ContentPartFieldDefinition? Y
partFieldDefinitionZ m
,m n)
UpdatePartFieldEditorContext	o ã
context
å ì
)
ì î
{ 	
var 
model 
= 
new *
MarkdownFieldSettingsViewModel :
(: ;
); <
;< =
var 
settings 
= 
new !
MarkdownFieldSettings 4
(4 5
)5 6
;6 7
if 
( 
await 
context 
. 
Updater %
.% &
TryUpdateModelAsync& 9
(9 :
model: ?
,? @
PrefixA G
)G H
)H I
{ 
settings 
. 
SanitizeHtml %
=& '
model( -
.- .
SanitizeHtml. :
;: ;
settings   
.   
Hint   
=   
model    %
.  % &
Hint  & *
;  * +
context"" 
."" 
Builder"" 
.""  
WithSettings""  ,
("", -
settings""- 5
)""5 6
;""6 7
}## 
return%% 
Edit%% 
(%% 
partFieldDefinition%% +
)%%+ ,
;%%, -
}&& 	
}'' 
}(( ≤%
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\Startup.cs
	namespace 	
OrchardCore
 
. 
Markdown 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
static 
readonly 
string  &%
DefaultMarkdownExtensions' @
=A B
$strC T
;T U
private 
readonly 
IShellConfiguration ,
_shellConfiguration- @
;@ A
static 
Startup 
( 
) 
{   	
TemplateContext!! 
.!! &
GlobalMemberAccessStrategy!! 6
.!!6 7
Register!!7 ?
<!!? @%
MarkdownBodyPartViewModel!!@ Y
>!!Y Z
(!!Z [
)!![ \
;!!\ ]
TemplateContext"" 
."" &
GlobalMemberAccessStrategy"" 6
.""6 7
Register""7 ?
<""? @"
MarkdownFieldViewModel""@ V
>""V W
(""W X
)""X Y
;""Y Z
}## 	
public%% 
Startup%% 
(%% 
IShellConfiguration%% *
shellConfiguration%%+ =
)%%= >
{&& 	
_shellConfiguration'' 
=''  !
shellConfiguration''" 4
;''4 5
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
<--# $
MarkdownBodyPart--$ 4
>--4 5
(--5 6
)--6 7
... 
UseDisplayDriver.. !
<..! ")
MarkdownBodyPartDisplayDriver.." ?
>..? @
(..@ A
)..A B
.// 

AddHandler// 
<// #
MarkdownBodyPartHandler// 3
>//3 4
(//4 5
)//5 6
;//6 7
services11 
.11 
	AddScoped11 
<11 3
'IContentTypePartDefinitionDisplayDriver11 F
,11F G1
%MarkdownBodyPartSettingsDisplayDriver11H m
>11m n
(11n o
)11o p
;11p q
services22 
.22 
	AddScoped22 
<22 
IDataMigration22 -
,22- .

Migrations22/ 9
>229 :
(22: ;
)22; <
;22< =
services33 
.33 
	AddScoped33 
<33 $
IContentPartIndexHandler33 7
,337 8(
MarkdownBodyPartIndexHandler339 U
>33U V
(33V W
)33W X
;33X Y
services66 
.66 
AddContentField66 $
<66$ %
MarkdownField66% 2
>662 3
(663 4
)664 5
.77 
UseDisplayDriver77 !
<77! "&
MarkdownFieldDisplayDriver77" <
>77< =
(77= >
)77> ?
;77? @
services99 
.99 
	AddScoped99 
<99 4
(IContentPartFieldDefinitionDisplayDriver99 G
,99G H'
MarkdownFieldSettingsDriver99I d
>99d e
(99e f
)99f g
;99g h
services:: 
.:: 
	AddScoped:: 
<:: %
IContentFieldIndexHandler:: 8
,::8 9%
MarkdownFieldIndexHandler::: S
>::S T
(::T U
)::U V
;::V W
services<< 
.<< 
AddLiquidFilter<< $
<<<$ %
Markdownify<<% 0
><<0 1
(<<1 2
$str<<2 ?
)<<? @
;<<@ A
services>> 
.>> 

AddOptions>> 
<>>  #
MarkdownPipelineOptions>>  7
>>>7 8
(>>8 9
)>>9 :
;>>: ;
services?? 
.?? %
ConfigureMarkdownPipeline?? .
(??. /
(??/ 0
pipeline??0 8
)??8 9
=>??: <
{@@ 
varAA 

extensionsAA 
=AA  
_shellConfigurationAA! 4
.AA4 5
GetValueAA5 =
(AA= >
$strAA> _
,AA_ `%
DefaultMarkdownExtensionsAAa z
)AAz {
;AA{ |
pipelineBB 
.BB 
	ConfigureBB "
(BB" #

extensionsBB# -
)BB- .
;BB. /
}CC 
)CC 
;CC 
servicesEE 
.EE 
	AddScopedEE 
<EE 
IMarkdownServiceEE /
,EE/ 0"
DefaultMarkdownServiceEE1 G
>EEG H
(EEH I
)EEI J
;EEJ K
}FF 	
}GG 
}HH µ
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\ViewModels\EditMarkdownFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 

ViewModels )
{ 
public 

class &
EditMarkdownFieldViewModel +
{ 
public		 
string		 
Markdown		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
MarkdownField

 
Field

 "
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
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} Õ
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\ViewModels\MarkdownBodyPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 

ViewModels )
{ 
public 

class -
!MarkdownBodyPartSettingsViewModel 2
{ 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ˝

úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\ViewModels\MarkdownBodyPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 

ViewModels )
{ 
public 

class %
MarkdownBodyPartViewModel *
{		 
public

 
string

 
Markdown
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
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 
MarkdownBodyPart 
MarkdownBodyPart  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
[ 	
	BindNever	 
] 
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
} ﬂ
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\ViewModels\MarkdownFieldSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 

ViewModels )
{ 
public 

class *
MarkdownFieldSettingsViewModel /
{ 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Hint 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ≈	
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Markdown\ViewModels\MarkdownFieldViewModel.cs
	namespace 	
OrchardCore
 
. 
Markdown 
. 

ViewModels )
{ 
public 

class "
MarkdownFieldViewModel '
{ 
public		 
string		 
Markdown		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Html
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
public 
MarkdownField 
Field "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
ContentPart 
Part 
{  !
get" %
;% &
set' *
;* +
}, -
public &
ContentPartFieldDefinition )
PartFieldDefinition* =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} 