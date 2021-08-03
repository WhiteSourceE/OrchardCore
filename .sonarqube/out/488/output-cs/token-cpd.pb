Ù1
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Drivers\TitlePartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
Drivers #
{ 
public 

class "
TitlePartDisplayDriver '
:( )$
ContentPartDisplayDriver* B
<B C
	TitlePartC L
>L M
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
TitlePartDisplayDriver %
(% &
IStringLocalizer& 6
<6 7"
TitlePartDisplayDriver7 M
>M N
	localizerO X
)X Y
{ 	
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Display' .
(. /
	TitlePart/ 8
	titlePart9 B
,B C#
BuildPartDisplayContextD [
context\ c
)c d
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
TitlePartSettingsB S
>S T
(T U
)U V
;V W
if 
( 
! 
settings 
. 
RenderTitle %
||& (
string) /
./ 0
IsNullOrWhiteSpace0 B
(B C
	titlePartC L
.L M
TitleM R
)R S
)S T
{ 
return 
null 
; 
} 
return 

Initialize 
< 
TitlePartViewModel 0
>0 1
(1 2
GetDisplayShapeType2 E
(E F
contextF M
)M N
,N O
modelP U
=>V X
{   
model!! 
.!! 
Title!! 
=!! 
	titlePart!! '
.!!' (
ContentItem!!( 3
.!!3 4
DisplayText!!4 ?
;!!? @
model"" 
."" 
	TitlePart"" 
=""  !
	titlePart""" +
;""+ ,
model## 
.## 
ContentItem## !
=##" #
	titlePart##$ -
.##- .
ContentItem##. 9
;##9 :
}$$ 
)$$ 
.%% 
Location%% 
(%% 
$str%% 
,%% 
$str%%  *
)%%* +
.&& 
Location&& 
(&& 
$str&& 
,&&  
$str&&! +
)&&+ ,
.'' 
Location'' 
('' 
$str'' #
,''# $
$str''% /
)''/ 0
;''0 1
})) 	
public++ 
override++ 
IDisplayResult++ &
Edit++' +
(+++ ,
	TitlePart++, 5
	titlePart++6 ?
,++? @"
BuildPartEditorContext++A W
context++X _
)++_ `
{,, 	
return-- 

Initialize-- 
<-- 
TitlePartViewModel-- 0
>--0 1
(--1 2
GetEditorShapeType--2 D
(--D E
context--E L
)--L M
,--M N
model--O T
=>--U W
{.. 
model// 
.// 
Title// 
=// 
	titlePart// '
.//' (
ContentItem//( 3
.//3 4
DisplayText//4 ?
;//? @
model00 
.00 
	TitlePart00 
=00  !
	titlePart00" +
;00+ ,
model11 
.11 
ContentItem11 !
=11" #
	titlePart11$ -
.11- .
ContentItem11. 9
;119 :
model22 
.22 
Settings22 
=22  
context22! (
.22( )
TypePartDefinition22) ;
.22; <
GetSettings22< G
<22G H
TitlePartSettings22H Y
>22Y Z
(22Z [
)22[ \
;22\ ]
}33 
)33 
;33 
}44 	
public66 
override66 
async66 
Task66 "
<66" #
IDisplayResult66# 1
>661 2
UpdateAsync663 >
(66> ?
	TitlePart66? H
model66I N
,66N O
IUpdateModel66P \
updater66] d
,66d e#
UpdatePartEditorContext66f }
context	66~ Ö
)
66Ö Ü
{77 	
if88 
(88 
await88 
updater88 
.88 
TryUpdateModelAsync88 1
(881 2
model882 7
,887 8
Prefix889 ?
,88? @
t88A B
=>88C E
t88F G
.88G H
Title88H M
)88M N
)88N O
{99 
var:: 
settings:: 
=:: 
context:: &
.::& '
TypePartDefinition::' 9
.::9 :
GetSettings::: E
<::E F
TitlePartSettings::F W
>::W X
(::X Y
)::Y Z
;::Z [
if;; 
(;; 
settings;; 
.;; 
Options;; $
==;;% '
TitlePartOptions;;( 8
.;;8 9
EditableRequired;;9 I
&&;;J L
string;;M S
.;;S T
IsNullOrWhiteSpace;;T f
(;;f g
model;;g l
.;;l m
Title;;m r
);;r s
);;s t
{<< 
updater== 
.== 

ModelState== &
.==& '
AddModelError==' 4
(==4 5
Prefix==5 ;
,==; <
nameof=== C
(==C D
model==D I
.==I J
Title==J O
)==O P
,==P Q
S==R S
[==S T
$str==T t
]==t u
)==u v
;==v w
}>> 
else?? 
{@@ 
modelAA 
.AA 
ContentItemAA %
.AA% &
DisplayTextAA& 1
=AA2 3
modelAA4 9
.AA9 :
TitleAA: ?
;AA? @
}BB 
}CC 
returnEE 
EditEE 
(EE 
modelEE 
,EE 
contextEE &
)EE& '
;EE' (
}FF 	
}GG 
}HH ⁄)
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Handlers\TitlePartHandler.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
Handlers $
{ 
public 

class 
TitlePartHandler !
:" #
ContentPartHandler$ 6
<6 7
	TitlePart7 @
>@ A
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
TitlePartHandler 
(  "
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
} 	
public 
override 
async 
Task "
UpdatedAsync# /
(/ 0 
UpdateContentContext0 D
contextE L
,L M
	TitlePartN W
partX \
)\ ]
{ 	
var 
settings 
= 
GetSettings &
(& '
part' +
)+ ,
;, -
if 
( 
settings 
. 
Options  
==! #
TitlePartOptions$ 4
.4 5
Editable5 =
&&> @
!A B
StringB H
.H I
IsNullOrWhiteSpaceI [
([ \
part\ `
.` a
ContentItema l
.l m
DisplayTextm x
)x y
)y z
{   
return!! 
;!! 
}"" 
if$$ 
($$ 
!$$ 
String$$ 
.$$ 
IsNullOrEmpty$$ %
($$% &
settings$$& .
.$$. /
Pattern$$/ 6
)$$6 7
)$$7 8
{%% 
var&& 
model&& 
=&& 
new&& 
TitlePartViewModel&&  2
(&&2 3
)&&3 4
{'' 
Title(( 
=(( 
part((  
.((  !
Title((! &
,((& '
	TitlePart)) 
=)) 
part))  $
,))$ %
ContentItem** 
=**  !
part**" &
.**& '
ContentItem**' 2
}++ 
;++ 
var-- 
title-- 
=-- 
await-- !"
_liquidTemplateManager--" 8
.--8 9
RenderAsync--9 D
(--D E
settings--E M
.--M N
Pattern--N U
,--U V
NullEncoder--W b
.--b c
Default--c j
,--j k
model--l q
,--q r
scope.. 
=>.. 
scope.. "
..." #
SetValue..# +
(..+ ,
$str.., 9
,..9 :
model..; @
...@ A
ContentItem..A L
)..L M
)..M N
;..N O
title00 
=00 
title00 
.00 
Replace00 %
(00% &
$str00& *
,00* +
String00, 2
.002 3
Empty003 8
)008 9
.009 :
Replace00: A
(00A B
$str00B F
,00F G
String00H N
.00N O
Empty00O T
)00T U
;00U V
part22 
.22 
Title22 
=22 
title22 "
;22" #
part33 
.33 
ContentItem33  
.33  !
DisplayText33! ,
=33- .
title33/ 4
;334 5
part44 
.44 
Apply44 
(44 
)44 
;44 
}55 
}66 	
private88 
TitlePartSettings88 !
GetSettings88" -
(88- .
	TitlePart88. 7
part888 <
)88< =
{99 	
var:: !
contentTypeDefinition:: %
=::& '%
_contentDefinitionManager::( A
.::A B
GetTypeDefinition::B S
(::S T
part::T X
.::X Y
ContentItem::Y d
.::d e
ContentType::e p
)::p q
;::q r
var;; %
contentTypePartDefinition;; )
=;;* +!
contentTypeDefinition;;, A
.;;A B
Parts;;B G
.;;G H
FirstOrDefault;;H V
(;;V W
x;;W X
=>;;Y [
String;;\ b
.;;b c
Equals;;c i
(;;i j
x;;j k
.;;k l
PartDefinition;;l z
.;;z {
Name;;{ 
,	;; Ä
nameof
;;Å á
(
;;á à
	TitlePart
;;à ë
)
;;ë í
)
;;í ì
)
;;ì î
;
;;î ï
return<< %
contentTypePartDefinition<< ,
.<<, -
GetSettings<<- 8
<<<8 9
TitlePartSettings<<9 J
><<J K
(<<K L
)<<L M
;<<M N
}== 	
}>> 
}?? Æ
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Indexing\TitlePartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
Indexing $
{ 
public 

class !
TitlePartIndexHandler &
:' (#
ContentPartIndexHandler) @
<@ A
	TitlePartA J
>J K
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
	TitlePart		- 6
part		7 ;
,		; <!
BuildPartIndexContext		= R
context		S Z
)		Z [
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
.& '
Analyze' .
; 
foreach 
( 
var 
key 
in 
context  '
.' (
Keys( ,
), -
{ 
context 
. 
DocumentIndex %
.% &
Set& )
() *
key* -
,- .
part/ 3
.3 4
Title4 9
,9 :
options; B
)B C
;C D
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} »
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Manifest.cs
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
,2 3
Description 
= 
$str J
,J K
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
] ˘-
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Migrations.cs
	namespace 	
OrchardCore
 
. 
Title 
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
public 

Migrations 
( %
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
ISession 
session 
, 
ILogger 
< 

Migrations 
> 
logger  &
)& '
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
_session 
= 
session 
; 
_logger 
= 
logger 
; 
} 	
public 
int 
Create 
( 
) 
{   	%
_contentDefinitionManager!! %
.!!% &
AlterPartDefinition!!& 9
(!!9 :
$str!!: E
,!!E F
builder!!G N
=>!!O Q
builder!!R Y
."" 

Attachable"" 
("" 
)"" 
.## 
WithDescription##  
(##  !
$str##! J
)##J K
.$$ 
WithDefaultPosition$$ $
($$$ %
$str$$% (
)$$( )
)%% 
;%% 
return(( 
$num(( 
;(( 
})) 	
public,, 
async,, 
Task,, 
<,, 
int,, 
>,, 
UpdateFrom1,, *
(,,* +
),,+ ,
{-- 	
var11 
lastDocumentId11 
=11  
$num11! "
;11" #
for33 
(33 
;33 
;33 
)33 
{44 
var55 
contentItemVersions55 '
=55( )
await55* /
_session550 8
.558 9
Query559 >
<55> ?
ContentItem55? J
,55J K
ContentItemIndex55L \
>55\ ]
(55] ^
x55^ _
=>55` b
x55c d
.55d e

DocumentId55e o
>55p q
lastDocumentId	55r Ä
)
55Ä Å
.
55Å Ç
Take
55Ç Ü
(
55Ü á
$num
55á â
)
55â ä
.
55ä ã
	ListAsync
55ã î
(
55î ï
)
55ï ñ
;
55ñ ó
if77 
(77 
!77 
contentItemVersions77 (
.77( )
Any77) ,
(77, -
)77- .
)77. /
{88 
break:: 
;:: 
};; 
foreach== 
(== 
var== 
contentItemVersion== /
in==0 2
contentItemVersions==3 F
)==F G
{>> 
if?? 
(?? 
String?? 
.?? 
IsNullOrEmpty?? ,
(??, -
contentItemVersion??- ?
.??? @
DisplayText??@ K
)??K L
&&@@ 
UpdateTitle@@ &
(@@& '
contentItemVersion@@' 9
.@@9 :
Content@@: A
)@@A B
)@@B C
{AA 
_sessionBB  
.BB  !
SaveBB! %
(BB% &
contentItemVersionBB& 8
)BB8 9
;BB9 :
_loggerCC 
.CC  
LogInformationCC  .
(CC. /
$strCC/ t
,CCt u
contentItemVersion	CCv à
.
CCà â"
ContentItemVersionId
CCâ ù
)
CCù û
;
CCû ü
}DD 
lastDocumentIdFF "
=FF# $
contentItemVersionFF% 7
.FF7 8
IdFF8 :
;FF: ;
}GG 
awaitII 
_sessionII 
.II 
CommitAsyncII *
(II* +
)II+ ,
;II, -
}JJ 
boolLL 
UpdateTitleLL 
(LL 
JTokenLL #
contentLL$ +
)LL+ ,
{MM 
varNN 
changedNN 
=NN 
falseNN #
;NN# $
ifPP 
(PP 
contentPP 
.PP 
TypePP  
==PP! #

JTokenTypePP$ .
.PP. /
ObjectPP/ 5
)PP5 6
{QQ 
varRR 
titleRR 
=RR 
contentRR  '
[RR' (
$strRR( 3
]RR3 4
?RR4 5
[RR5 6
$strRR6 =
]RR= >
?RR> ?
.RR? @
ValueRR@ E
<RRE F
stringRRF L
>RRL M
(RRM N
)RRN O
;RRO P
ifTT 
(TT 
!TT 
StringTT 
.TT  
IsNullOrWhiteSpaceTT  2
(TT2 3
titleTT3 8
)TT8 9
)TT9 :
{UU 
contentVV 
[VV  
$strVV  -
]VV- .
=VV/ 0
titleVV1 6
;VV6 7
changedWW 
=WW  !
trueWW" &
;WW& '
}XX 
}YY 
foreach[[ 
([[ 
var[[ 
token[[ "
in[[# %
content[[& -
)[[- .
{\\ 
changed]] 
=]] 
UpdateTitle]] )
(]]) *
token]]* /
)]]/ 0
||]]1 3
changed]]4 ;
;]]; <
}^^ 
return`` 
changed`` 
;`` 
}aa 
returncc 
$numcc 
;cc 
}dd 	
}ee 
}ff ≤
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Models\TitlePart.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
Models "
{ 
public 

class 
	TitlePart 
: 
ContentPart (
{ 
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 Ô
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Models\TitlePartSettings.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
Models "
{ 
public 

enum 
TitlePartOptions  
{ 
Editable 
, 
GeneratedDisabled 
, 
GeneratedHidden		 
,		 
EditableRequired

 
} 
public 

class 
TitlePartSettings "
{ 
[ 	
DefaultValue	 
( 
TitlePartOptions &
.& '
Editable' /
)/ 0
]0 1
public 
TitlePartOptions 
Options  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
TitlePartOptions8 H
.H I
EditableI Q
;Q R
public 
string 
Pattern 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
DefaultValue	 
( 
true 
) 
] 
public 
bool 
RenderTitle 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
true0 4
;4 5
} 
}   ‹
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Properties\AssemblyInfo.cs
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
$str		 .
)		. /
]		/ 0
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
]7 8…
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\RemotePublishing\Startup.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
RemotePublishing ,
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
,0 1!
TitleMetaWeblogDriver2 G
>G H
(H I
)I J
;J K
} 	
} 
} ‰
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\RemotePublishing\TitleMetaWeblogDriver.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
RemotePublishing ,
{		 
public

 

class

 !
TitleMetaWeblogDriver

 &
:

' (
MetaWeblogDriver

) 9
{ 
private 
readonly 
HtmlEncoder $
_encoder% -
;- .
public !
TitleMetaWeblogDriver $
($ %
HtmlEncoder% 0
encoder1 8
)8 9
{ 	
_encoder 
= 
encoder 
; 
} 	
public 
override 
void 
	BuildPost &
(& '

XRpcStruct' 1
	rpcStruct2 ;
,; <
XmlRpcContext= J
contextK R
,R S
ContentItemT _
contentItem` k
)k l
{ 	
var 
	titlePart 
= 
contentItem '
.' (
As( *
<* +
	TitlePart+ 4
>4 5
(5 6
)6 7
;7 8
if 
( 
	titlePart 
== 
null !
)! "
{ 
return 
; 
} 
	rpcStruct 
. 
Set 
( 
$str !
,! "
_encoder# +
.+ ,
Encode, 2
(2 3
	titlePart3 <
.< =
Title= B
)B C
)C D
;D E
} 	
public 
override 
void 
EditPost %
(% &

XRpcStruct& 0
	rpcStruct1 :
,: ;
ContentItem< G
contentItemH S
)S T
{ 	
contentItem   
.   
DisplayText   #
=  $ %
	rpcStruct  & /
.  / 0
Optional  0 8
<  8 9
string  9 ?
>  ? @
(  @ A
$str  A H
)  H I
;  I J
}!! 	
}"" 
}## ›1
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Settings\TitlePartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Title 
. 
Settings $
{ 
public 

class *
TitlePartSettingsDisplayDriver /
:0 12
&ContentTypePartDefinitionDisplayDriver2 X
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
public *
TitlePartSettingsDisplayDriver -
(- ."
ILiquidTemplateManager. D
templateManagerE T
,T U
IStringLocalizerV f
<f g+
TitlePartSettingsDisplayDriver	g Ö
>
Ö Ü
	localizer
á ê
)
ê ë
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
(% &
	TitlePart& /
)/ 0
,0 1%
contentTypePartDefinition2 K
.K L
PartDefinitionL Z
.Z [
Name[ _
)_ `
)` a
{ 
return 
null 
; 
} 
return   

Initialize   
<   &
TitlePartSettingsViewModel   8
>  8 9
(  9 :
$str  : R
,  R S
model  T Y
=>  Z \
{!! 
var"" 
settings"" 
="" %
contentTypePartDefinition"" 8
.""8 9
GetSettings""9 D
<""D E
TitlePartSettings""E V
>""V W
(""W X
)""X Y
;""Y Z
model$$ 
.$$ 
Options$$ 
=$$ 
settings$$  (
.$$( )
Options$$) 0
;$$0 1
model%% 
.%% 
Pattern%% 
=%% 
settings%%  (
.%%( )
Pattern%%) 0
;%%0 1
model&& 
.&& 
RenderTitle&& !
=&&" #
settings&&$ ,
.&&, -
RenderTitle&&- 8
;&&8 9
model'' 
.'' 
TitlePartSettings'' '
=''( )
settings''* 2
;''2 3
}(( 
)(( 
.(( 
Location(( 
((( 
$str(( !
)((! "
;((" #
})) 	
public++ 
override++ 
async++ 
Task++ "
<++" #
IDisplayResult++# 1
>++1 2
UpdateAsync++3 >
(++> ?%
ContentTypePartDefinition++? X%
contentTypePartDefinition++Y r
,++r s(
UpdateTypePartEditorContext	++t è
context
++ê ó
)
++ó ò
{,, 	
if-- 
(-- 
!-- 
String-- 
.-- 
Equals-- 
(-- 
nameof-- %
(--% &
	TitlePart--& /
)--/ 0
,--0 1%
contentTypePartDefinition--2 K
.--K L
PartDefinition--L Z
.--Z [
Name--[ _
)--_ `
)--` a
{.. 
return// 
null// 
;// 
}00 
var22 
model22 
=22 
new22 &
TitlePartSettingsViewModel22 6
(226 7
)227 8
;228 9
await44 
context44 
.44 
Updater44 !
.44! "
TryUpdateModelAsync44" 5
(445 6
model446 ;
,44; <
Prefix44= C
,44C D
m55 
=>55 
m55 
.55 
Pattern55 
,55 
m66 
=>66 
m66 
.66 
Options66 
,66 
m77 
=>77 
m77 
.77 
RenderTitle77 "
)77" #
;77# $
if99 
(99 
!99 
string99 
.99 
IsNullOrEmpty99 %
(99% &
model99& +
.99+ ,
Pattern99, 3
)993 4
&&995 7
!998 9
_templateManager999 I
.99I J
Validate99J R
(99R S
model99S X
.99X Y
Pattern99Y `
,99` a
out99b e
var99f i
errors99j p
)99p q
)99q r
{:: 
context;; 
.;; 
Updater;; 
.;;  

ModelState;;  *
.;;* +
AddModelError;;+ 8
(;;8 9
nameof;;9 ?
(;;? @
model;;@ E
.;;E F
Pattern;;F M
);;M N
,;;N O
S;;P Q
[;;Q R
$str	;;R ì
,
;;ì î
string
;;ï õ
.
;;õ ú
Join
;;ú †
(
;;† °
$str
;;° §
,
;;§ •
errors
;;¶ ¨
)
;;¨ ≠
]
;;≠ Æ
)
;;Æ Ø
;
;;Ø ∞
}<< 
else== 
{>> 
context?? 
.?? 
Builder?? 
.??  
WithSettings??  ,
(??, -
new??- 0
TitlePartSettings??1 B
{??C D
Pattern??E L
=??M N
model??O T
.??T U
Pattern??U \
,??\ ]
Options??^ e
=??f g
model??h m
.??m n
Options??n u
,??u v
RenderTitle	??w Ç
=
??É Ñ
model
??Ö ä
.
??ä ã
RenderTitle
??ã ñ
}
??ó ò
)
??ò ô
;
??ô ö
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
}EE Ω
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\Startup.cs
	namespace 	
OrchardCore
 
. 
Title 
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
<? @
TitlePartViewModel@ R
>R S
(S T
)T U
;U V
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @&
TitlePartSettingsViewModel@ Z
>Z [
([ \
)\ ]
;] ^
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
services 
. 
AddContentPart #
<# $
	TitlePart$ -
>- .
(. /
)/ 0
. 
UseDisplayDriver !
<! ""
TitlePartDisplayDriver" 8
>8 9
(9 :
): ;
. 

AddHandler 
< 
TitlePartHandler ,
>, -
(- .
). /
;/ 0
services!! 
.!! 
	AddScoped!! 
<!! $
IContentPartIndexHandler!! 7
,!!7 8!
TitlePartIndexHandler!!9 N
>!!N O
(!!O P
)!!P Q
;!!Q R
services"" 
."" 
	AddScoped"" 
<"" 3
'IContentTypePartDefinitionDisplayDriver"" F
,""F G*
TitlePartSettingsDisplayDriver""H f
>""f g
(""g h
)""h i
;""i j
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
IDataMigration$$ -
,$$- .

Migrations$$/ 9
>$$9 :
($$: ;
)$$; <
;$$< =
}%% 	
}&& 
}'' ›
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\ViewModels\TitlePartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Title 
. 

ViewModels &
{ 
public 

class &
TitlePartSettingsViewModel +
{ 
public 
TitlePartOptions 
Options  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
string		 
Pattern		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
bool

 
RenderTitle
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
, -
[ 	
	BindNever	 
] 
public 
TitlePartSettings  
TitlePartSettings! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} Æ	
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Title\ViewModels\TitlePartViewModel.cs
	namespace 	
OrchardCore
 
. 
Title 
. 

ViewModels &
{ 
public 

class 
TitlePartViewModel #
{ 
public		 
string		 
Title		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
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
public 
	TitlePart 
	TitlePart "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
	BindNever	 
] 
public 
TitlePartSettings  
Settings! )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 