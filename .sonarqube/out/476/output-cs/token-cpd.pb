êL
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Drivers\HtmlBodyPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Drivers "
{ 
public 

class %
HtmlBodyPartDisplayDriver *
:+ ,$
ContentPartDisplayDriver- E
<E F
HtmlBodyPartF R
>R S
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly !
IHtmlSanitizerService .!
_htmlSanitizerService/ D
;D E
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private 
readonly 
IShortcodeService *
_shortcodeService+ <
;< =
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public %
HtmlBodyPartDisplayDriver (
(( )"
ILiquidTemplateManager) ?!
liquidTemplateManager@ U
,U V!
IHtmlSanitizerService ! 
htmlSanitizerService" 6
,6 7
HtmlEncoder 
htmlEncoder #
,# $
IShortcodeService 
shortcodeService .
,. /
IStringLocalizer   
<   %
HtmlBodyPartDisplayDriver   6
>  6 7
	localizer  8 A
)  A B
{!! 	"
_liquidTemplateManager"" "
=""# $!
liquidTemplateManager""% :
;"": ;!
_htmlSanitizerService## !
=##" # 
htmlSanitizerService##$ 8
;##8 9
_htmlEncoder$$ 
=$$ 
htmlEncoder$$ &
;$$& '
_shortcodeService%% 
=%% 
shortcodeService%%  0
;%%0 1
S&& 
=&& 
	localizer&& 
;&& 
}'' 	
public)) 
override)) 
IDisplayResult)) &
Display))' .
()). /
HtmlBodyPart))/ ;
HtmlBodyPart))< H
,))H I#
BuildPartDisplayContext))J a
context))b i
)))i j
{** 	
return++ 

Initialize++ 
<++ !
HtmlBodyPartViewModel++ 3
>++3 4
(++4 5
GetDisplayShapeType++5 H
(++H I
context++I P
)++P Q
,++Q R
m++S T
=>++U W
BuildViewModelAsync++X k
(++k l
m++l m
,++m n
HtmlBodyPart++o {
,++{ |
context	++} Ñ
)
++Ñ Ö
)
++Ö Ü
.,, 
Location,, 
(,, 
$str,, "
,,," #
$str,,$ /
),,/ 0
.-- 
Location-- 
(-- 
$str-- #
,--# $
$str--% 1
)--1 2
... 
Location.. 
(.. 
$str.. '
,..' (
$str..) 5
)..5 6
;// 
}00 	
public22 
override22 
IDisplayResult22 &
Edit22' +
(22+ ,
HtmlBodyPart22, 8
HtmlBodyPart229 E
,22E F"
BuildPartEditorContext22G ]
context22^ e
)22e f
{33 	
return44 

Initialize44 
<44 !
HtmlBodyPartViewModel44 3
>443 4
(444 5
GetEditorShapeType445 G
(44G H
context44H O
)44O P
,44P Q
model44R W
=>44X Z
{55 
model66 
.66 
Html66 
=66 
HtmlBodyPart66 )
.66) *
Html66* .
;66. /
model77 
.77 
ContentItem77 !
=77" #
HtmlBodyPart77$ 0
.770 1
ContentItem771 <
;77< =
model88 
.88 
HtmlBodyPart88 "
=88# $
HtmlBodyPart88% 1
;881 2
model99 
.99 
TypePartDefinition99 (
=99) *
context99+ 2
.992 3
TypePartDefinition993 E
;99E F
}:: 
):: 
;:: 
};; 	
public== 
override== 
async== 
Task== "
<==" #
IDisplayResult==# 1
>==1 2
UpdateAsync==3 >
(==> ?
HtmlBodyPart==? K
model==L Q
,==Q R
IUpdateModel==S _
updater==` g
,==g h$
UpdatePartEditorContext	==i Ä
context
==Å à
)
==à â
{>> 	
var?? 
	viewModel?? 
=?? 
new?? !
HtmlBodyPartViewModel??  5
(??5 6
)??6 7
;??7 8
varAA 
settingsAA 
=AA 
contextAA "
.AA" #
TypePartDefinitionAA# 5
.AA5 6
GetSettingsAA6 A
<AAA B 
HtmlBodyPartSettingsAAB V
>AAV W
(AAW X
)AAX Y
;AAY Z
ifCC 
(CC 
awaitCC 
updaterCC 
.CC 
TryUpdateModelAsyncCC 1
(CC1 2
	viewModelCC2 ;
,CC; <
PrefixCC= C
,CCC D
tCCE F
=>CCG I
tCCJ K
.CCK L
HtmlCCL P
)CCP Q
)CCQ R
{DD 
ifEE 
(EE 
!EE 
stringEE 
.EE 
IsNullOrEmptyEE )
(EE) *
	viewModelEE* 3
.EE3 4
HtmlEE4 8
)EE8 9
&&EE: <
!EE= >"
_liquidTemplateManagerEE> T
.EET U
ValidateEEU ]
(EE] ^
	viewModelEE^ g
.EEg h
HtmlEEh l
,EEl m
outEEn q
varEEr u
errorsEEv |
)EE| }
)EE} ~
{FF 
varGG 
partNameGG  
=GG! "
contextGG# *
.GG* +
TypePartDefinitionGG+ =
.GG= >
DisplayNameGG> I
(GGI J
)GGJ K
;GGK L
updaterHH 
.HH 

ModelStateHH &
.HH& '
AddModelErrorHH' 4
(HH4 5
PrefixHH5 ;
,HH; <
nameofHH= C
(HHC D
	viewModelHHD M
.HHM N
HtmlHHN R
)HHR S
,HHS T
SHHU V
[HHV W
$str	HHW î
,
HHî ï
partName
HHñ û
,
HHû ü
string
HH† ¶
.
HH¶ ß
Join
HHß ´
(
HH´ ¨
$str
HH¨ Ø
,
HHØ ∞
errors
HH± ∑
)
HH∑ ∏
]
HH∏ π
)
HHπ ∫
;
HH∫ ª
}II 
elseJJ 
{KK 
modelLL 
.LL 
HtmlLL 
=LL  
settingsLL! )
.LL) *
SanitizeHtmlLL* 6
?LL7 8!
_htmlSanitizerServiceLL9 N
.LLN O
SanitizeLLO W
(LLW X
	viewModelLLX a
.LLa b
HtmlLLb f
)LLf g
:LLh i
	viewModelLLj s
.LLs t
HtmlLLt x
;LLx y
}MM 
}NN 
returnPP 
EditPP 
(PP 
modelPP 
,PP 
contextPP &
)PP& '
;PP' (
}QQ 	
privateSS 
asyncSS 
	ValueTaskSS 
BuildViewModelAsyncSS  3
(SS3 4!
HtmlBodyPartViewModelSS4 I
modelSSJ O
,SSO P
HtmlBodyPartSSQ ]
htmlBodyPartSS^ j
,SSj k$
BuildPartDisplayContext	SSl É
context
SSÑ ã
)
SSã å
{TT 	
modelUU 
.UU 
HtmlUU 
=UU 
htmlBodyPartUU %
.UU% &
HtmlUU& *
;UU* +
modelVV 
.VV 
HtmlBodyPartVV 
=VV  
htmlBodyPartVV! -
;VV- .
modelWW 
.WW 
ContentItemWW 
=WW 
htmlBodyPartWW  ,
.WW, -
ContentItemWW- 8
;WW8 9
varXX 
settingsXX 
=XX 
contextXX "
.XX" #
TypePartDefinitionXX# 5
.XX5 6
GetSettingsXX6 A
<XXA B 
HtmlBodyPartSettingsXXB V
>XXV W
(XXW X
)XXX Y
;XXY Z
ifZZ 
(ZZ 
!ZZ 
settingsZZ 
.ZZ 
SanitizeHtmlZZ &
)ZZ& '
{[[ 
model\\ 
.\\ 
Html\\ 
=\\ 
await\\ ""
_liquidTemplateManager\\# 9
.\\9 :
RenderAsync\\: E
(\\E F
htmlBodyPart\\F R
.\\R S
Html\\S W
,\\W X
_htmlEncoder\\Y e
,\\e f
model\\g l
,\\l m
scope]] 
=>]] 
scope]] "
.]]" #
SetValue]]# +
(]]+ ,
$str]], 9
,]]9 :
model]]; @
.]]@ A
ContentItem]]A L
)]]L M
)]]M N
;]]N O
}^^ 
model`` 
.`` 
Html`` 
=`` 
await`` 
_shortcodeService`` 0
.``0 1
ProcessAsync``1 =
(``= >
model``> C
.``C D
Html``D H
,``H I
newaa 
Contextaa 
{bb 
[cc 
$strcc "
]cc" #
=cc$ %
htmlBodyPartcc& 2
.cc2 3
ContentItemcc3 >
,cc> ?
[dd 
$strdd )
]dd) *
=dd+ ,
contextdd- 4
.dd4 5
TypePartDefinitiondd5 G
}ee 
)ee 
;ee 
}ff 	
}gg 
}hh Ò,
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\GraphQL\HtmlBodyQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
GraphQL "
{ 
public 

class #
HtmlBodyQueryObjectType (
:) *
ObjectGraphType+ :
<: ;
HtmlBodyPart; G
>G H
{ 
public #
HtmlBodyQueryObjectType &
(& '
IStringLocalizer' 7
<7 8#
HtmlBodyQueryObjectType8 O
>O P
SQ R
)R S
{ 	
Name 
= 
$str !
;! "
Description 
= 
S 
[ 
$str 5
]5 6
;6 7
Field 
< 
StringGraphType !
>! "
(" #
)# $
. 
Name 
( 
$str 
) 
. 
Description 
( 
S 
[ 
$str 1
]1 2
)2 3
. 
ResolveLockedAsync #
(# $

RenderHtml$ .
). /
;/ 0
} 	
private 
static 
async 
Task !
<! "
object" (
>( )

RenderHtml* 4
(4 5
ResolveFieldContext5 H
<H I
HtmlBodyPartI U
>U V
ctxW Z
)Z [
{   	
var!! 
serviceProvider!! 
=!!  !
ctx!!" %
.!!% &"
ResolveServiceProvider!!& <
(!!< =
)!!= >
;!!> ?
var"" 
shortcodeService""  
=""! "
serviceProvider""# 2
.""2 3
GetRequiredService""3 E
<""E F
IShortcodeService""F W
>""W X
(""X Y
)""Y Z
;""Z [
var## $
contentDefinitionManager## (
=##) *
serviceProvider##+ :
.##: ;
GetRequiredService##; M
<##M N%
IContentDefinitionManager##N g
>##g h
(##h i
)##i j
;##j k
var%% !
contentTypeDefinition%% %
=%%& '$
contentDefinitionManager%%( @
.%%@ A
GetTypeDefinition%%A R
(%%R S
ctx%%S V
.%%V W
Source%%W ]
.%%] ^
ContentItem%%^ i
.%%i j
ContentType%%j u
)%%u v
;%%v w
var&& %
contentTypePartDefinition&& )
=&&* +!
contentTypeDefinition&&, A
.&&A B
Parts&&B G
.&&G H
FirstOrDefault&&H V
(&&V W
x&&W X
=>&&Y [
string&&\ b
.&&b c
Equals&&c i
(&&i j
x&&j k
.&&k l
PartDefinition&&l z
.&&z {
Name&&{ 
,	&& Ä
$str
&&Å è
)
&&è ê
)
&&ê ë
;
&&ë í
var'' 
settings'' 
='' %
contentTypePartDefinition'' 4
.''4 5
GetSettings''5 @
<''@ A 
HtmlBodyPartSettings''A U
>''U V
(''V W
)''W X
;''X Y
var)) 
html)) 
=)) 
ctx)) 
.)) 
Source)) !
.))! "
Html))" &
;))& '
if++ 
(++ 
!++ 
settings++ 
.++ 
SanitizeHtml++ &
)++& '
{,, 
var-- 
model-- 
=-- 
new-- !
HtmlBodyPartViewModel--  5
(--5 6
)--6 7
{.. 
Html// 
=// 
ctx// 
.// 
Source// %
.//% &
Html//& *
,//* +
HtmlBodyPart00  
=00! "
ctx00# &
.00& '
Source00' -
,00- .
ContentItem11 
=11  !
ctx11" %
.11% &
Source11& ,
.11, -
ContentItem11- 8
}22 
;22 
var33 !
liquidTemplateManager33 )
=33* +
serviceProvider33, ;
.33; <
GetRequiredService33< N
<33N O"
ILiquidTemplateManager33O e
>33e f
(33f g
)33g h
;33h i
var44 
htmlEncoder44 
=44  !
serviceProvider44" 1
.441 2

GetService442 <
<44< =
HtmlEncoder44= H
>44H I
(44I J
)44J K
;44K L
html66 
=66 
await66 !
liquidTemplateManager66 2
.662 3
RenderAsync663 >
(66> ?
html66? C
,66C D
htmlEncoder66E P
,66P Q
model66R W
,66W X
scope77 
=>77 
scope77 "
.77" #
SetValue77# +
(77+ ,
$str77, 9
,779 :
model77; @
.77@ A
ContentItem77A L
)77L M
)77M N
;77N O
}88 
return:: 
await:: 
shortcodeService:: )
.::) *
ProcessAsync::* 6
(::6 7
html::7 ;
,::; <
new;; 
Context;; 
{<< 
[== 
$str== "
]==" #
===$ %
ctx==& )
.==) *
Source==* 0
.==0 1
ContentItem==1 <
,==< =
[>> 
$str>> )
]>>) *
=>>+ ,%
contentTypePartDefinition>>- F
}?? 
)?? 
;?? 
}@@ 	
}AA 
}BB ´
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\GraphQL\Startup.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
GraphQL "
{ 
[ 
RequireFeatures 
( 
$str /
)/ 0
]0 1
public		 

class		 
Startup		 
:		 
StartupBase		 &
{

 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddObjectGraphType '
<' (
HtmlBodyPart( 4
,4 5#
HtmlBodyQueryObjectType6 M
>M N
(N O
)O P
;P Q
} 	
} 
} Ô*
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Handlers\HtmlBodyPartHandler.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Handlers #
{ 
public 

class 
HtmlBodyPartHandler $
:% &
ContentPartHandler' 9
<9 :
HtmlBodyPart: F
>F G
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
IShortcodeService *
_shortcodeService+ <
;< =
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 
HtmlBodyPartHandler "
(" #%
IContentDefinitionManager# <$
contentDefinitionManager= U
,U V
IShortcodeService 
shortcodeService .
,. /"
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9
HtmlEncoder 
htmlEncoder #
)# $
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_shortcodeService 
= 
shortcodeService  0
;0 1"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;
_htmlEncoder   
=   
htmlEncoder   &
;  & '
}!! 	
public## 
override## 
Task## %
GetContentItemAspectAsync## 6
(##6 7$
ContentItemAspectContext##7 O
context##P W
,##W X
HtmlBodyPart##Y e
part##f j
)##j k
{$$ 	
return%% 
context%% 
.%% 
ForAsync%% #
<%%# $

BodyAspect%%$ .
>%%. /
(%%/ 0
async%%0 5

bodyAspect%%6 @
=>%%A C
{&& 
try'' 
{(( 
var)) !
contentTypeDefinition)) -
=)). /%
_contentDefinitionManager))0 I
.))I J
GetTypeDefinition))J [
())[ \
part))\ `
.))` a
ContentItem))a l
.))l m
ContentType))m x
)))x y
;))y z
var** %
contentTypePartDefinition** 1
=**2 3!
contentTypeDefinition**4 I
.**I J
Parts**J O
.**O P
FirstOrDefault**P ^
(**^ _
x**_ `
=>**a c
string**d j
.**j k
Equals**k q
(**q r
x**r s
.**s t
PartDefinition	**t Ç
.
**Ç É
Name
**É á
,
**á à
$str
**â ó
)
**ó ò
)
**ò ô
;
**ô ö
var++ 
settings++  
=++! "%
contentTypePartDefinition++# <
.++< =
GetSettings++= H
<++H I 
HtmlBodyPartSettings++I ]
>++] ^
(++^ _
)++_ `
;++` a
var-- 
html-- 
=-- 
part-- #
.--# $
Html--$ (
;--( )
if// 
(// 
!// 
settings// !
.//! "
SanitizeHtml//" .
)//. /
{00 
var11 
model11 !
=11" #
new11$ '!
HtmlBodyPartViewModel11( =
(11= >
)11> ?
{22 
Html33  
=33! "
part33# '
.33' (
Html33( ,
,33, -
HtmlBodyPart44 (
=44) *
part44+ /
,44/ 0
ContentItem55 '
=55( )
part55* .
.55. /
ContentItem55/ :
}66 
;66 
html88 
=88 
await88 $"
_liquidTemplateManager88% ;
.88; <
RenderAsync88< G
(88G H
html88H L
,88L M
_htmlEncoder88N Z
,88Z [
model88\ a
,88a b
scope99 !
=>99" $
scope99% *
.99* +
SetValue99+ 3
(993 4
$str994 A
,99A B
model99C H
.99H I
ContentItem99I T
)99T U
)99U V
;99V W
}:: 
html<< 
=<< 
await<<  
_shortcodeService<<! 2
.<<2 3
ProcessAsync<<3 ?
(<<? @
html<<@ D
,<<D E
new== 
Context== #
{>> 
[?? 
$str?? *
]??* +
=??, -
part??. 2
.??2 3
ContentItem??3 >
,??> ?
[@@ 
$str@@ 1
]@@1 2
=@@3 4%
contentTypePartDefinition@@5 N
}AA 
)AA 
;AA 

bodyAspectCC 
.CC 
BodyCC #
=CC$ %
newCC& )

HtmlStringCC* 4
(CC4 5
htmlCC5 9
)CC9 :
;CC: ;
}DD 
catchEE 
{FF 

bodyAspectGG 
.GG 
BodyGG #
=GG$ %

HtmlStringGG& 0
.GG0 1
EmptyGG1 6
;GG6 7
}HH 
}II 
)II 
;II 
}JJ 	
}KK 
}LL ç
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Indexing\HtmlBodyPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Indexing #
{ 
public 

class $
HtmlBodyPartIndexHandler )
:* +#
ContentPartIndexHandler, C
<C D
HtmlBodyPartD P
>P Q
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
HtmlBodyPart		- 9
part		: >
,		> ?!
BuildPartIndexContext		@ U
context		V ]
)		] ^
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
.3 4
Html4 8
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
} Ë
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str N
,N O
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
] ⁄
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Media\MediaShapes.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Media  
{ 
public 

class 
MediaShapes 
: 
IShapeTableProvider 2
{ 
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder		 
.		 
Describe		 
(		 
$str		 0
)		0 1
.

 
OnDisplaying

 
(

 

displaying

 (
=>

) +
{ 
var 
editor 
=  

displaying! +
.+ ,
Shape, 1
;1 2
if 
( 
editor 
. 
Metadata '
.' (
Type( ,
==- /
$str0 L
)L M
{ 
editor 
. 
Metadata '
.' (
Wrappers( 0
.0 1
Add1 4
(4 5
$str5 R
)R S
;S T
} 
if 
( 
editor 
. 
Metadata '
.' (
Type( ,
==- /
$str0 N
)N O
{ 
editor 
. 
Metadata '
.' (
Wrappers( 0
.0 1
Add1 4
(4 5
$str5 R
)R S
;S T
} 
} 
) 
; 
} 	
} 
} ô
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Media\Startup.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Media  
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
} ˚E
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Migrations.cs
	namespace 	
OrchardCore
 
. 
Html 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 

Migrations 
( %
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
ISession 
session 
, 
ILogger 
< 

Migrations 
> 
logger  &
)& '
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_session 
= 
session 
; 
_logger 
= 
logger 
; 
} 	
public   
int   
Create   
(   
)   
{!! 	%
_contentDefinitionManager"" %
.""% &
AlterPartDefinition""& 9
(""9 :
$str"": H
,""H I
builder""J Q
=>""R T
builder""U \
.## 

Attachable## 
(## 
)## 
.$$ 
WithDescription$$  
($$  !
$str$$! O
)$$O P
)$$P Q
;$$Q R
return'' 
$num'' 
;'' 
}(( 	
public++ 
int++ 
UpdateFrom1++ 
(++ 
)++  
{,, 	
return-- 
$num-- 
;-- 
}.. 	
public11 
int11 
UpdateFrom211 
(11 
)11  
{22 	
return33 
$num33 
;33 
}44 	
public77 
async77 
Task77 
<77 
int77 
>77 
UpdateFrom377 *
(77* +
)77+ ,
{88 	
foreach:: 
(:: 
var:: 
contentType:: $
in::% '%
_contentDefinitionManager::( A
.::A B
LoadTypeDefinitions::B U
(::U V
)::V W
)::W X
{;; 
if<< 
(<< 
contentType<< 
.<<  
Parts<<  %
.<<% &
Any<<& )
(<<) *
x<<* +
=><<, .
x<</ 0
.<<0 1
PartDefinition<<1 ?
.<<? @
Name<<@ D
==<<E G
$str<<H R
)<<R S
)<<S T
{== %
_contentDefinitionManager>> -
.>>- .
AlterTypeDefinition>>. A
(>>A B
contentType>>B M
.>>M N
Name>>N R
,>>R S
x>>T U
=>>>V X
x>>Y Z
.>>Z [

RemovePart>>[ e
(>>e f
$str>>f p
)>>p q
.>>q r
WithPart>>r z
(>>z {
$str	>>{ â
)
>>â ä
)
>>ä ã
;
>>ã å
}?? 
}@@ %
_contentDefinitionManagerBB %
.BB% & 
DeletePartDefinitionBB& :
(BB: ;
$strBB; E
)BBE F
;BBF G
varGG 
lastDocumentIdGG 
=GG  
$numGG! "
;GG" #
forII 
(II 
;II 
;II 
)II 
{JJ 
varKK 
contentItemVersionsKK '
=KK( )
awaitKK* /
_sessionKK0 8
.KK8 9
QueryKK9 >
<KK> ?
ContentItemKK? J
,KKJ K
ContentItemIndexKKL \
>KK\ ]
(KK] ^
xKK^ _
=>KK` b
xKKc d
.KKd e

DocumentIdKKe o
>KKp q
lastDocumentId	KKr Ä
)
KKÄ Å
.
KKÅ Ç
Take
KKÇ Ü
(
KKÜ á
$num
KKá â
)
KKâ ä
.
KKä ã
	ListAsync
KKã î
(
KKî ï
)
KKï ñ
;
KKñ ó
ifMM 
(MM 
!MM 
contentItemVersionsMM (
.MM( )
AnyMM) ,
(MM, -
)MM- .
)MM. /
{NN 
breakPP 
;PP 
}QQ 
foreachSS 
(SS 
varSS 
contentItemVersionSS /
inSS0 2
contentItemVersionsSS3 F
)SSF G
{TT 
ifUU 
(UU 

UpdateBodyUU "
(UU" #
contentItemVersionUU# 5
.UU5 6
ContentUU6 =
)UU= >
)UU> ?
{VV 
_sessionWW  
.WW  !
SaveWW! %
(WW% &
contentItemVersionWW& 8
)WW8 9
;WW9 :
_loggerXX 
.XX  
LogInformationXX  .
(XX. /
$strXX/ w
,XXw x
contentItemVersion	XXy ã
.
XXã å"
ContentItemVersionId
XXå †
)
XX† °
;
XX° ¢
}YY 
lastDocumentId[[ "
=[[# $
contentItemVersion[[% 7
.[[7 8
Id[[8 :
;[[: ;
}\\ 
await^^ 
_session^^ 
.^^ 
CommitAsync^^ *
(^^* +
)^^+ ,
;^^, -
}__ 
boolaa 

UpdateBodyaa 
(aa 
JTokenaa "
contentaa# *
)aa* +
{bb 
varcc 
changedcc 
=cc 
falsecc #
;cc# $
ifee 
(ee 
contentee 
.ee 
Typeee  
==ee! #

JTokenTypeee$ .
.ee. /
Objectee/ 5
)ee5 6
{ff 
vargg 
bodygg 
=gg 
contentgg &
[gg& '
$strgg' 1
]gg1 2
?gg2 3
[gg3 4
$strgg4 :
]gg: ;
?gg; <
.gg< =
Valuegg= B
<ggB C
stringggC I
>ggI J
(ggJ K
)ggK L
;ggL M
ifii 
(ii 
!ii 
Stringii 
.ii  
IsNullOrWhiteSpaceii  2
(ii2 3
bodyii3 7
)ii7 8
)ii8 9
{jj 
contentkk 
[kk  
$strkk  .
]kk. /
=kk0 1
newkk2 5
JObjectkk6 =
(kk= >
newkk> A
	JPropertykkB K
(kkK L
$strkkL R
,kkR S
bodykkT X
)kkX Y
)kkY Z
;kkZ [
changedll 
=ll  !
truell" &
;ll& '
}mm 
}nn 
foreachpp 
(pp 
varpp 
tokenpp "
inpp# %
contentpp& -
)pp- .
{qq 
changedrr 
=rr 

UpdateBodyrr (
(rr( )
tokenrr) .
)rr. /
||rr0 2
changedrr3 :
;rr: ;
}ss 
returnuu 
changeduu 
;uu 
}vv 
returnxx 
$numxx 
;xx 
}yy 	
public|| 
int|| 
UpdateFrom4|| 
(|| 
)||  
{}} 	
foreach 
( 
var 
contentType $
in% '%
_contentDefinitionManager( A
.A B
LoadTypeDefinitionsB U
(U V
)V W
)W X
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
contentType
ÅÅ 
.
ÅÅ  
Parts
ÅÅ  %
.
ÅÅ% &
Any
ÅÅ& )
(
ÅÅ) *
x
ÅÅ* +
=>
ÅÅ, .
x
ÅÅ/ 0
.
ÅÅ0 1
PartDefinition
ÅÅ1 ?
.
ÅÅ? @
Name
ÅÅ@ D
==
ÅÅE G
$str
ÅÅH V
)
ÅÅV W
)
ÅÅW X
{
ÇÇ '
_contentDefinitionManager
ÉÉ -
.
ÉÉ- .!
AlterTypeDefinition
ÉÉ. A
(
ÉÉA B
contentType
ÉÉB M
.
ÉÉM N
Name
ÉÉN R
,
ÉÉR S
x
ÉÉT U
=>
ÉÉV X
x
ÉÉY Z
.
ÉÉZ [
WithPart
ÉÉ[ c
(
ÉÉc d
$str
ÉÉd r
,
ÉÉr s
part
ÉÉt x
=>
ÉÉy {
{
ÑÑ 
part
ÖÖ 
.
ÖÖ 
MergeSettings
ÖÖ *
<
ÖÖ* +"
HtmlBodyPartSettings
ÖÖ+ ?
>
ÖÖ? @
(
ÖÖ@ A
x
ÖÖA B
=>
ÖÖC E
x
ÖÖF G
.
ÖÖG H
SanitizeHtml
ÖÖH T
=
ÖÖU V
false
ÖÖW \
)
ÖÖ\ ]
;
ÖÖ] ^
}
ÜÜ 
)
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 
return
ää 
$num
ää 
;
ää 
}
ãã 	
}
åå 
}çç µ
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Models\HtmlBodyPart.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Models !
{ 
public 

class 
HtmlBodyPart 
: 
ContentPart  +
{ 
public 
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
} 
}		 €
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Properties\AssemblyInfo.cs
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
$str		 -
)		- .
]		. /
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
]7 8ÿ
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\RemotePublishing\HtmlBodyMetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
RemotePublishing +
{ 
public		 

class		 $
HtmlBodyMetaWeblogDriver		 )
:		* +
MetaWeblogDriver		, <
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
<) *
HtmlBodyPart* 6
>6 7
(7 8
)8 9
;9 :
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
.1 2
Html2 6
)6 7
;7 8
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
< 
HtmlBodyPart +
>+ ,
(, -
)- .
!=/ 1
null2 6
)6 7
{ 
contentItem 
. 
Alter !
<! "
HtmlBodyPart" .
>. /
(/ 0
x0 1
=>2 4
x5 6
.6 7
Html7 ;
=< =
	rpcStruct> G
.G H
OptionalH P
<P Q
stringQ W
>W X
(X Y
$strY f
)f g
)g h
;h i
} 
} 	
} 
}  
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\RemotePublishing\Startup.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
RemotePublishing +
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
,0 1$
HtmlBodyMetaWeblogDriver2 J
>J K
(K L
)L M
;M N
} 	
} 
} ø
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Settings\HtmlBodyPartSettings.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Settings #
{ 
public 

class  
HtmlBodyPartSettings %
{ 
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
SanitizeHtml  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
true1 5
;5 6
} 
} ú
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Settings\HtmlBodyPartSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Html

 
.

 
Settings

 #
{ 
public 

class -
!HtmlBodyPartSettingsDisplayDriver 2
:3 42
&ContentTypePartDefinitionDisplayDriver5 [
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
(% &
HtmlBodyPart& 2
)2 3
,3 4%
contentTypePartDefinition5 N
.N O
PartDefinitionO ]
.] ^
Name^ b
)b c
)c d
{ 
return 
null 
; 
} 
return 

Initialize 
< )
HtmlBodyPartSettingsViewModel ;
>; <
(< =
$str= X
,X Y
modelZ _
=>` b
{ 
var 
settings 
= %
contentTypePartDefinition 8
.8 9
GetSettings9 D
<D E 
HtmlBodyPartSettingsE Y
>Y Z
(Z [
)[ \
;\ ]
model 
. 
SanitizeHtml "
=# $
settings% -
.- .
SanitizeHtml. :
;: ;
} 
) 
. 
Location 
( 
$str "
)" #
;# $
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
(  % &
HtmlBodyPart  & 2
)  2 3
,  3 4%
contentTypePartDefinition  5 N
.  N O
PartDefinition  O ]
.  ] ^
Name  ^ b
)  b c
)  c d
{!! 
return"" 
null"" 
;"" 
}## 
var%% 
model%% 
=%% 
new%% )
HtmlBodyPartSettingsViewModel%% 9
(%%9 :
)%%: ;
;%%; <
var&& 
settings&& 
=&& 
new&&  
HtmlBodyPartSettings&& 3
(&&3 4
)&&4 5
;&&5 6
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
}22 ä
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Settings\HtmlBodyPartTrumbowygEditorSettings.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Settings #
{ 
public 

class /
#HtmlBodyPartTrumbowygEditorSettings 4
{ 
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
InsertMediaWithUrl &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
AllowCustomScripts &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
}		 ¬,
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Settings\HtmlBodyPartTrumbowygEditorSettingsDriver.cs
	namespace 	
OrchardCore
 
. 
Html 
. 
Settings #
{ 
public 

class 5
)HtmlBodyPartTrumbowygEditorSettingsDriver :
:; <2
&ContentTypePartDefinitionDisplayDriver= c
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 5
)HtmlBodyPartTrumbowygEditorSettingsDriver 8
(8 9
IStringLocalizer9 I
<I J5
)HtmlBodyPartTrumbowygEditorSettingsDriverJ s
>s t
	localizeru ~
)~ 
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
HtmlBodyPart& 2
)2 3
,3 4%
contentTypePartDefinition5 N
.N O
PartDefinitionO ]
.] ^
Name^ b
,b c
StringComparisond t
.t u
Ordinalu |
)| }
)} ~
{ 
return 
null 
; 
} 
return 

Initialize 
< &
TrumbowygSettingsViewModel 8
>8 9
(9 :
$str: ^
,^ _
model` e
=>f h
{ 
var   
settings   
=   %
contentTypePartDefinition   8
.  8 9
GetSettings  9 D
<  D E/
#HtmlBodyPartTrumbowygEditorSettings  E h
>  h i
(  i j
)  j k
;  k l
model"" 
."" 
Options"" 
="" 
settings""  (
.""( )
Options"") 0
;""0 1
model## 
.## 
InsertMediaWithUrl## (
=##) *
settings##+ 3
.##3 4
InsertMediaWithUrl##4 F
;##F G
}$$ 
)$$ 
.%% 
Location%% 
(%% 
$str%% 
)%% 
;%%  
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?%
ContentTypePartDefinition((? X%
contentTypePartDefinition((Y r
,((r s(
UpdateTypePartEditorContext	((t è
context
((ê ó
)
((ó ò
{)) 	
if** 
(** 
!** 
String** 
.** 
Equals** 
(** 
nameof** %
(**% &
HtmlBodyPart**& 2
)**2 3
,**3 4%
contentTypePartDefinition**5 N
.**N O
PartDefinition**O ]
.**] ^
Name**^ b
,**b c
StringComparison**d t
.**t u
Ordinal**u |
)**| }
)**} ~
{++ 
return,, 
null,, 
;,, 
}-- 
if// 
(// %
contentTypePartDefinition// )
.//) *
Editor//* 0
(//0 1
)//1 2
==//3 5
$str//6 A
)//A B
{00 
var11 
model11 
=11 
new11 &
TrumbowygSettingsViewModel11  :
(11: ;
)11; <
;11< =
var22 
settings22 
=22 
new22 "/
#HtmlBodyPartTrumbowygEditorSettings22# F
(22F G
)22G H
;22H I
await44 
context44 
.44 
Updater44 %
.44% &
TryUpdateModelAsync44& 9
(449 :
model44: ?
,44? @
Prefix44A G
)44G H
;44H I
if66 
(66 
!66 
model66 
.66 
Options66 "
.66" #
IsJson66# )
(66) *
)66* +
)66+ ,
{77 
context88 
.88 
Updater88 #
.88# $

ModelState88$ .
.88. /
AddModelError88/ <
(88< =
Prefix88= C
+88D E
$str88F I
+88J K
nameof88L R
(88R S&
TrumbowygSettingsViewModel88S m
.88m n
Options88n u
)88u v
,88v w
S88x y
[88y z
$str	88z ´
]
88´ ¨
)
88¨ ≠
;
88≠ Æ
}99 
else:: 
{;; 
settings<< 
.<< 
InsertMediaWithUrl<< /
=<<0 1
model<<2 7
.<<7 8
InsertMediaWithUrl<<8 J
;<<J K
settings== 
.== 
Options== $
===% &
model==' ,
.==, -
Options==- 4
;==4 5
context>> 
.>> 
Builder>> #
.>># $
WithSettings>>$ 0
(>>0 1
settings>>1 9
)>>9 :
;>>: ;
}?? 
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
}EE „
{D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\Startup.cs
	namespace 	
OrchardCore
 
. 
Html 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @!
HtmlBodyPartViewModel@ U
>U V
(V W
)W X
;X Y
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddContentPart #
<# $
HtmlBodyPart$ 0
>0 1
(1 2
)2 3
. 
UseDisplayDriver !
<! "%
HtmlBodyPartDisplayDriver" ;
>; <
(< =
)= >
. 

AddHandler 
< 
HtmlBodyPartHandler /
>/ 0
(0 1
)1 2
;2 3
services   
.   
	AddScoped   
<   3
'IContentTypePartDefinitionDisplayDriver   F
,  F G-
!HtmlBodyPartSettingsDisplayDriver  H i
>  i j
(  j k
)  k l
;  l m
services!! 
.!! 
	AddScoped!! 
<!! 3
'IContentTypePartDefinitionDisplayDriver!! F
,!!F G5
)HtmlBodyPartTrumbowygEditorSettingsDriver!!H q
>!!q r
(!!r s
)!!s t
;!!t u
services"" 
."" 
	AddScoped"" 
<"" 
IDataMigration"" -
,""- .

Migrations""/ 9
>""9 :
("": ;
)""; <
;""< =
services## 
.## 
	AddScoped## 
<## $
IContentPartIndexHandler## 7
,##7 8$
HtmlBodyPartIndexHandler##9 Q
>##Q R
(##R S
)##S T
;##T U
}$$ 	
}%% 
}&& Ω
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\ViewModels\HtmlBodyPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Html 
. 

ViewModels %
{ 
public 

class )
HtmlBodyPartSettingsViewModel .
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
} …	
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\ViewModels\HtmlBodyPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Html 
. 

ViewModels %
{ 
public 

class !
HtmlBodyPartViewModel &
{		 
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
' (
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
	BindNever	 
] 
public 
HtmlBodyPart 
HtmlBodyPart (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
[ 	
	BindNever	 
] 
public %
ContentTypePartDefinition (
TypePartDefinition) ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
} ÿ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Html\ViewModels\TrumbowygSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Html 
. 

ViewModels %
{ 
public 

class &
TrumbowygSettingsViewModel +
{ 
public 
string 
Options 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
InsertMediaWithUrl &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} 