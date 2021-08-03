¶"
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\IResourceManager.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

	interface 
IResourceManager %
{ 
ResourceManifest 
InlineManifest '
{( )
get* -
;- .
}/ 0
ResourceDefinition 
FindResource '
(' (
RequireSettings( 7
settings8 @
)@ A
;A B
void 
NotRequired 
( 
string 
resourceType  ,
,, -
string. 4
resourceName5 A
)A B
;B C
RequireSettings 
RegisterUrl #
(# $
string$ *
resourceType+ 7
,7 8
string9 ?
resourcePath@ L
,L M
stringN T
resourceDebugPathU f
)f g
;g h
RequireSettings 
RegisterResource (
(( )
string) /
resourceType0 <
,< =
string> D
resourceNameE Q
)Q R
;R S
void$$ 
RegisterHeadScript$$ 
($$  
IHtmlContent$$  ,
script$$- 3
)$$3 4
;$$4 5
void** 
RegisterFootScript** 
(**  
IHtmlContent**  ,
script**- 3
)**3 4
;**4 5
void00 
RegisterStyle00 
(00 
IHtmlContent00 '
style00( -
)00- .
;00. /
void55 
RegisterLink55 
(55 
	LinkEntry55 #
link55$ (
)55( )
;55) *
void:: 
RegisterMeta:: 
(:: 
	MetaEntry:: #
meta::$ (
)::( )
;::) *
void?? 

AppendMeta?? 
(?? 
	MetaEntry?? !
meta??" &
,??& '
string??( .
contentSeparator??/ ?
)??? @
;??@ A
IEnumerableDD 
<DD #
ResourceRequiredContextDD +
>DD+ , 
GetRequiredResourcesDD- A
(DDA B
stringDDB H
resourceTypeDDI U
)DDU V
;DDV W
IEnumerableII 
<II 
	LinkEntryII 
>II 
GetRegisteredLinksII 1
(II1 2
)II2 3
;II3 4
IEnumerableNN 
<NN 
	MetaEntryNN 
>NN 
GetRegisteredMetasNN 1
(NN1 2
)NN2 3
;NN3 4
IEnumerableSS 
<SS 
IHtmlContentSS  
>SS  !$
GetRegisteredHeadScriptsSS" :
(SS: ;
)SS; <
;SS< =
IEnumerableXX 
<XX 
IHtmlContentXX  
>XX  !$
GetRegisteredFootScriptsXX" :
(XX: ;
)XX; <
;XX< =
IEnumerable]] 
<]] 
IHtmlContent]]  
>]]  !
GetRegisteredStyles]]" 5
(]]5 6
)]]6 7
;]]7 8
voidbb 

RenderMetabb 
(bb 
IHtmlContentBuilderbb +
builderbb, 3
)bb3 4
;bb4 5
voidgg 
RenderHeadLinkgg 
(gg 
IHtmlContentBuildergg /
buildergg0 7
)gg7 8
;gg8 9
voidll 
RenderStylesheetll 
(ll 
IHtmlContentBuilderll 1
builderll2 9
)ll9 :
;ll: ;
voidqq 
RenderHeadScriptqq 
(qq 
IHtmlContentBuilderqq 1
builderqq2 9
)qq9 :
;qq: ;
voidvv 
RenderFootScriptvv 
(vv 
IHtmlContentBuildervv 1
buildervv2 9
)vv9 :
;vv: ;
void{{ 
RenderLocalScript{{ 
({{ 
RequireSettings{{ .
settings{{/ 7
,{{7 8
IHtmlContentBuilder{{9 L
builder{{M T
){{T U
;{{U V
void
ÄÄ 
RenderLocalStyle
ÄÄ 
(
ÄÄ 
RequireSettings
ÄÄ -
settings
ÄÄ. 6
,
ÄÄ6 7!
IHtmlContentBuilder
ÄÄ8 K
builder
ÄÄL S
)
ÄÄS T
;
ÄÄT U
}
ÅÅ 
}ÇÇ Ù
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\IResourceManifestBuilder.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

	interface $
IResourceManifestBuilder -
{ 
ResourceManifest 
Add 
( 
) 
; 
ResourceManifest 
Add 
( 
ResourceManifest -
manifest. 6
)6 7
;7 8
} 
}		 †
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\IResourceManifestProvider.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

	interface %
IResourceManifestProvider .
{ 
void 
BuildManifests 
( $
IResourceManifestBuilder 4
builder5 <
)< =
;= >
} 
} ◊
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\IResourceManifestState.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

	interface "
IResourceManifestState +
{ 
IEnumerable 
< 
ResourceManifest $
>$ %
ResourceManifests& 7
{8 9
get: =
;= >
set? B
;B C
}D E
} 
public

 

class

 !
ResourceManifestState

 &
:

' ("
IResourceManifestState

) ?
{ 
public 
IEnumerable 
< 
ResourceManifest +
>+ ,
ResourceManifests- >
{? @
getA D
;D E
setF I
;I J
}K L
} 
} Û+
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\LinkEntry.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
	LinkEntry 
{ 
private 
readonly 

TagBuilder #
_builder$ ,
=- .
new/ 2

TagBuilder3 =
(= >
$str> D
)D E
;E F
public

 
string

 
	Condition

 
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
public 
	LinkEntry 
( 
) 
{ 	
_builder 
. 
TagRenderMode "
=# $
TagRenderMode% 2
.2 3
SelfClosing3 >
;> ?
} 	
public 
string 
Rel 
{ 	
get 
{ 
string 
value 
; 
_builder 
. 

Attributes #
.# $
TryGetValue$ /
(/ 0
$str0 5
,5 6
out7 :
value; @
)@ A
;A B
return 
value 
; 
} 
set 
{ 
SetAttribute 
( 
$str $
,$ %
value& +
)+ ,
;, -
}. /
} 	
public 
string 
Type 
{ 	
get 
{ 
string   
value   
;   
_builder!! 
.!! 

Attributes!! #
.!!# $
TryGetValue!!$ /
(!!/ 0
$str!!0 6
,!!6 7
out!!8 ;
value!!< A
)!!A B
;!!B C
return"" 
value"" 
;"" 
}## 
set$$ 
{$$ 
SetAttribute$$ 
($$ 
$str$$ %
,$$% &
value$$' ,
)$$, -
;$$- .
}$$/ 0
}%% 	
public'' 
string'' 
Title'' 
{(( 	
get)) 
{** 
string++ 
value++ 
;++ 
_builder,, 
.,, 

Attributes,, #
.,,# $
TryGetValue,,$ /
(,,/ 0
$str,,0 7
,,,7 8
out,,9 <
value,,= B
),,B C
;,,C D
return-- 
value-- 
;-- 
}.. 
set// 
{// 
SetAttribute// 
(// 
$str// &
,//& '
value//( -
)//- .
;//. /
}//0 1
}00 	
public22 
string22 
Href22 
{33 	
get44 
{55 
string66 
value66 
;66 
_builder77 
.77 

Attributes77 #
.77# $
TryGetValue77$ /
(77/ 0
$str770 6
,776 7
out778 ;
value77< A
)77A B
;77B C
return88 
value88 
;88 
}99 
set:: 
{:: 
SetAttribute:: 
(:: 
$str:: %
,::% &
value::' ,
)::, -
;::- .
}::/ 0
};; 	
public== 
bool== 
AppendVersion== !
{==" #
get==$ '
;==' (
set==) ,
;==, -
}==. /
public?? 
IHtmlContent?? 
GetTag?? "
(??" #
)??# $
{@@ 	
ifAA 
(AA 
!AA 
stringAA 
.AA 
IsNullOrEmptyAA %
(AA% &
	ConditionAA& /
)AA/ 0
)AA0 1
{BB 
varCC 
htmlBuilderCC 
=CC  !
newCC" %
HtmlContentBuilderCC& 8
(CC8 9
)CC9 :
;CC: ;
htmlBuilderDD 
.DD 

AppendHtmlDD &
(DD& '
$strDD' 1
+DD2 3
	ConditionDD4 =
+DD> ?
$strDD@ D
)DDD E
;DDE F
htmlBuilderEE 
.EE 

AppendHtmlEE &
(EE& '
_builderEE' /
)EE/ 0
;EE0 1
htmlBuilderFF 
.FF 

AppendHtmlFF &
(FF& '
$strFF' 5
)FF5 6
;FF6 7
returnHH 
htmlBuilderHH "
;HH" #
}II 
returnKK 
_builderKK 
;KK 
}LL 	
publicNN 
	LinkEntryNN 
AddAttributeNN %
(NN% &
stringNN& ,
nameNN- 1
,NN1 2
stringNN3 9
valueNN: ?
)NN? @
{OO 	
_builderPP 
.PP 
MergeAttributePP #
(PP# $
namePP$ (
,PP( )
valuePP* /
)PP/ 0
;PP0 1
returnQQ 
thisQQ 
;QQ 
}RR 	
publicTT 
	LinkEntryTT 
SetAttributeTT %
(TT% &
stringTT& ,
nameTT- 1
,TT1 2
stringTT3 9
valueTT: ?
)TT? @
{UU 	
_builderVV 
.VV 
MergeAttributeVV #
(VV# $
nameVV$ (
,VV( )
valueVV* /
,VV/ 0
trueVV1 5
)VV5 6
;VV6 7
returnWW 
thisWW 
;WW 
}XX 	
}YY 
}ZZ ÌI
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\MetaEntry.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
	MetaEntry 
{		 
private

 
readonly

 

TagBuilder

 #
_builder

$ ,
=

- .
new

/ 2

TagBuilder

3 =
(

= >
$str

> D
)

D E
;

E F
public 
	MetaEntry 
( 
) 
{ 	
_builder 
. 
TagRenderMode "
=# $
TagRenderMode% 2
.2 3
SelfClosing3 >
;> ?
} 	
public 
	MetaEntry 
( 
string 
name  $
=% &
null' +
,+ ,
string- 3
property4 <
== >
null? C
,C D
stringE K
contentL S
=T U
nullV Z
,Z [
string\ b
	httpEquivc l
=m n
nullo s
,s t
stringu {
charset	| É
=
Ñ Ö
null
Ü ä
)
ä ã
:
å ç
this
é í
(
í ì
)
ì î
{ 	
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
name& *
)* +
)+ ,
{ 
Name 
= 
name 
; 
} 
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
property& .
). /
)/ 0
{ 
Property 
= 
property #
;# $
} 
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
content& -
)- .
). /
{ 
Content 
= 
content !
;! "
}   
if"" 
("" 
!"" 
String"" 
."" 
IsNullOrEmpty"" %
(""% &
	httpEquiv""& /
)""/ 0
)""0 1
{## 
	HttpEquiv$$ 
=$$ 
	httpEquiv$$ %
;$$% &
}%% 
if'' 
('' 
!'' 
String'' 
.'' 
IsNullOrEmpty'' %
(''% &
charset''& -
)''- .
)''. /
{(( 
Charset)) 
=)) 
charset)) !
;))! "
}** 
}++ 	
public-- 
static-- 
	MetaEntry-- 
Combine--  '
(--' (
	MetaEntry--( 1
meta1--2 7
,--7 8
	MetaEntry--9 B
meta2--C H
,--H I
string--J P
contentSeparator--Q a
)--a b
{.. 	
var// 
newMeta// 
=// 
new// 
	MetaEntry// '
(//' (
)//( )
;//) *
Merge00 
(00 
newMeta00 
.00 
_builder00 "
.00" #

Attributes00# -
,00- .
meta100/ 4
.004 5
_builder005 =
.00= >

Attributes00> H
,00H I
meta200J O
.00O P
_builder00P X
.00X Y

Attributes00Y c
)00c d
;00d e
if11 
(11 
!11 
String11 
.11 
IsNullOrEmpty11 %
(11% &
meta111& +
.11+ ,
Content11, 3
)113 4
&&115 7
!118 9
String119 ?
.11? @
IsNullOrEmpty11@ M
(11M N
meta211N S
.11S T
Content11T [
)11[ \
)11\ ]
{22 
newMeta33 
.33 
Content33 
=33  !
meta133" '
.33' (
Content33( /
+330 1
contentSeparator332 B
+33C D
meta233E J
.33J K
Content33K R
;33R S
}44 
return66 
newMeta66 
;66 
}77 	
private99 
static99 
void99 
Merge99 !
(99! "
IDictionary99" -
<99- .
string99. 4
,994 5
string996 <
>99< =
d199> @
,99@ A
params99B H
IDictionary99I T
<99T U
string99U [
,99[ \
string99] c
>99c d
[99d e
]99e f
sources99g n
)99n o
{:: 	
foreach;; 
(;; 
var;; 
d;; 
in;; 
sources;; %
);;% &
{<< 
foreach== 
(== 
var== 
pair== !
in==" $
d==% &
)==& '
{>> 
d1?? 
[?? 
pair?? 
.?? 
Key?? 
]??  
=??! "
pair??# '
.??' (
Value??( -
;??- .
}@@ 
}AA 
}BB 	
publicDD 
	MetaEntryDD 
AddAttributeDD %
(DD% &
stringDD& ,
nameDD- 1
,DD1 2
stringDD3 9
valueDD: ?
)DD? @
{EE 	
_builderFF 
.FF 
MergeAttributeFF #
(FF# $
nameFF$ (
,FF( )
valueFF* /
)FF/ 0
;FF0 1
returnGG 
thisGG 
;GG 
}HH 	
publicJJ 
	MetaEntryJJ 
SetAttributeJJ %
(JJ% &
stringJJ& ,
nameJJ- 1
,JJ1 2
stringJJ3 9
valueJJ: ?
)JJ? @
{KK 	
_builderLL 
.LL 
MergeAttributeLL #
(LL# $
nameLL$ (
,LL( )
valueLL* /
,LL/ 0
trueLL1 5
)LL5 6
;LL6 7
returnMM 
thisMM 
;MM 
}NN 	
publicPP 
stringPP 
NamePP 
{QQ 	
getRR 
{SS 
_builderTT 
.TT 

AttributesTT #
.TT# $
TryGetValueTT$ /
(TT/ 0
$strTT0 6
,TT6 7
outTT8 ;
varTT< ?
valueTT@ E
)TTE F
;TTF G
returnUU 
valueUU 
;UU 
}VV 
setWW 
{WW 
SetAttributeWW 
(WW 
$strWW %
,WW% &
valueWW' ,
)WW, -
;WW- .
}WW/ 0
}XX 	
publicZZ 
stringZZ 
PropertyZZ 
{[[ 	
get\\ 
{]] 
_builder^^ 
.^^ 

Attributes^^ #
.^^# $
TryGetValue^^$ /
(^^/ 0
$str^^0 :
,^^: ;
out^^< ?
var^^@ C
value^^D I
)^^I J
;^^J K
return__ 
value__ 
;__ 
}`` 
setaa 
{aa 
SetAttributeaa 
(aa 
$straa )
,aa) *
valueaa+ 0
)aa0 1
;aa1 2
}aa3 4
}bb 	
publicdd 
stringdd 
Contentdd 
{ee 	
getff 
{gg 
stringhh 
valuehh 
;hh 
_builderii 
.ii 

Attributesii #
.ii# $
TryGetValueii$ /
(ii/ 0
$strii0 9
,ii9 :
outii; >
valueii? D
)iiD E
;iiE F
returnjj 
valuejj 
;jj 
}kk 
setll 
{ll 
SetAttributell 
(ll 
$strll (
,ll( )
valuell* /
)ll/ 0
;ll0 1
}ll2 3
}mm 	
publicoo 
stringoo 
	HttpEquivoo 
{pp 	
getqq 
{rr 
_builderss 
.ss 

Attributesss #
.ss# $
TryGetValuess$ /
(ss/ 0
$strss0 <
,ss< =
outss> A
varssB E
valuessF K
)ssK L
;ssL M
returntt 
valuett 
;tt 
}uu 
setvv 
{vv 
SetAttributevv 
(vv 
$strvv +
,vv+ ,
valuevv- 2
)vv2 3
;vv3 4
}vv5 6
}ww 	
publicyy 
stringyy 
Charsetyy 
{zz 	
get{{ 
{|| 
_builder}} 
.}} 

Attributes}} #
.}}# $
TryGetValue}}$ /
(}}/ 0
$str}}0 9
,}}9 :
out}}; >
var}}? B
value}}C H
)}}H I
;}}I J
return~~ 
value~~ 
;~~ 
} 
set
ÄÄ 
{
ÄÄ 
SetAttribute
ÄÄ 
(
ÄÄ 
$str
ÄÄ (
,
ÄÄ( )
value
ÄÄ* /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÄÄ2 3
}
ÅÅ 	
public
ÉÉ 
IHtmlContent
ÉÉ 
GetTag
ÉÉ "
(
ÉÉ" #
)
ÉÉ# $
{
ÑÑ 	
return
ÖÖ 
_builder
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
}
áá 
}àà Ó
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\Properties\AssemblyInfo.cs
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
$str		 H
)		H I
]		I J
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
]7 8’∑
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\RequireSettings.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
RequireSettings  
{		 
private

 

Dictionary

 
<

 
string

 !
,

! "
string

# )
>

) *
_attributes

+ 6
;

6 7
public 
string 
BasePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
	DebugMode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
CdnMode 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

CdnBaseUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ResourceLocation 
Location  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
	Condition 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
? 
AppendVersion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
string 
> 
Dependencies (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Action 
< 
ResourceDefinition (
>( )
InlineDefinition* :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
ResourcePosition 
Position  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

Dictionary 
< 
string  
,  !
string" (
>( )

Attributes* 4
{ 	
get 
=> 
_attributes 
?? !
(" #
_attributes# .
=/ 0
new1 4

Dictionary5 ?
<? @
string@ F
,F G
stringH N
>N O
(O P
)P Q
)Q R
;R S
private 
set 
{ 
_attributes %
=& '
value( -
;- .
}/ 0
} 	
public!! 
RequireSettings!! 
(!! 
)!!  
{"" 	
}## 	
public%% 
RequireSettings%% 
(%% %
ResourceManagementOptions%% 8
options%%9 @
)%%@ A
{&& 	
CdnMode'' 
='' 
options'' 
.'' 
UseCdn'' $
;''$ %
	DebugMode(( 
=(( 
options(( 
.((  
	DebugMode((  )
;(() *
Culture)) 
=)) 
options)) 
.)) 
Culture)) %
;))% &

CdnBaseUrl** 
=** 
options**  
.**  !

CdnBaseUrl**! +
;**+ ,
AppendVersion++ 
=++ 
options++ #
.++# $
AppendVersion++$ 1
;++1 2
},, 	
public.. 
bool.. 
HasAttributes.. !
{// 	
get00 
{00 
return00 
_attributes00 $
!=00% '
null00( ,
&&00- /
_attributes000 ;
.00; <
Any00< ?
(00? @
a00@ A
=>00B D
a00E F
.00F G
Value00G L
!=00M O
null00P T
)00T U
;00U V
}00W X
}11 	
[66 	

MethodImpl66	 
(66 
MethodImplOptions66 %
.66% &
AggressiveInlining66& 8
)668 9
]669 :
public77 
RequireSettings77 
AtHead77 %
(77% &
)77& '
{88 	
return99 

AtLocation99 
(99 
ResourceLocation99 .
.99. /
Head99/ 3
)993 4
;994 5
}:: 	
[@@ 	

MethodImpl@@	 
(@@ 
MethodImplOptions@@ %
.@@% &
AggressiveInlining@@& 8
)@@8 9
]@@9 :
publicAA 
RequireSettingsAA 
AtFootAA %
(AA% &
)AA& '
{BB 	
returnCC 

AtLocationCC 
(CC 
ResourceLocationCC .
.CC. /
FootCC/ 3
)CC3 4
;CC4 5
}DD 	
[JJ 	

MethodImplJJ	 
(JJ 
MethodImplOptionsJJ %
.JJ% &
AggressiveInliningJJ& 8
)JJ8 9
]JJ9 :
publicKK 
RequireSettingsKK 

AtLocationKK )
(KK) *
ResourceLocationKK* :
locationKK; C
)KKC D
{LL 	
LocationNN 
=NN 
(NN 
ResourceLocationNN (
)NN( )
MathNN) -
.NN- .
MaxNN. 1
(NN1 2
(NN2 3
intNN3 6
)NN6 7
LocationNN7 ?
,NN? @
(NNA B
intNNB E
)NNE F
locationNNF N
)NNN O
;NNO P
returnOO 
thisOO 
;OO 
}PP 	
[RR 	

MethodImplRR	 
(RR 
MethodImplOptionsRR %
.RR% &
AggressiveInliningRR& 8
)RR8 9
]RR9 :
publicSS 
RequireSettingsSS 

UseCultureSS )
(SS) *
stringSS* 0
cultureNameSS1 <
)SS< =
{TT 	
ifUU 
(UU 
!UU 
StringUU 
.UU 
IsNullOrEmptyUU %
(UU% &
cultureNameUU& 1
)UU1 2
)UU2 3
{VV 
CultureWW 
=WW 
cultureNameWW %
;WW% &
}XX 
returnYY 
thisYY 
;YY 
}ZZ 	
[\\ 	

MethodImpl\\	 
(\\ 
MethodImplOptions\\ %
.\\% &
AggressiveInlining\\& 8
)\\8 9
]\\9 :
public]] 
RequireSettings]] 
UseDebugMode]] +
(]]+ ,
)]], -
{^^ 	
return__ 
UseDebugMode__ 
(__  
true__  $
)__$ %
;__% &
}`` 	
[bb 	

MethodImplbb	 
(bb 
MethodImplOptionsbb %
.bb% &
AggressiveInliningbb& 8
)bb8 9
]bb9 :
publiccc 
RequireSettingscc 
UseDebugModecc +
(cc+ ,
boolcc, 0
	debugModecc1 :
)cc: ;
{dd 	
	DebugModeee 
|=ee 
	debugModeee "
;ee" #
returnff 
thisff 
;ff 
}gg 	
[ii 	

MethodImplii	 
(ii 
MethodImplOptionsii %
.ii% &
AggressiveInliningii& 8
)ii8 9
]ii9 :
publicjj 
RequireSettingsjj 
UseCdnjj %
(jj% &
)jj& '
{kk 	
returnll 
UseCdnll 
(ll 
truell 
)ll 
;ll  
}mm 	
[oo 	

MethodImploo	 
(oo 
MethodImplOptionsoo %
.oo% &
AggressiveInliningoo& 8
)oo8 9
]oo9 :
publicpp 
RequireSettingspp 
UseCdnpp %
(pp% &
boolpp& *
cdnpp+ .
)pp. /
{qq 	
CdnModerr 
|=rr 
cdnrr 
;rr 
returnss 
thisss 
;ss 
}tt 	
[vv 	

MethodImplvv	 
(vv 
MethodImplOptionsvv %
.vv% &
AggressiveInliningvv& 8
)vv8 9
]vv9 :
publicww 
RequireSettingsww 
UseCdnBaseUrlww ,
(ww, -
stringww- 3

cdnBaseUrlww4 >
)ww> ?
{xx 	

CdnBaseUrlyy 
=yy 

cdnBaseUrlyy #
;yy# $
returnzz 
thiszz 
;zz 
}{{ 	
[}} 	

MethodImpl}}	 
(}} 
MethodImplOptions}} %
.}}% &
AggressiveInlining}}& 8
)}}8 9
]}}9 :
public~~ 
RequireSettings~~ 
WithBasePath~~ +
(~~+ ,
string~~, 2
basePath~~3 ;
)~~; <
{ 	
BasePath
ÄÄ 
=
ÄÄ 
basePath
ÄÄ 
;
ÄÄ  
return
ÅÅ 
this
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
[
ÑÑ 	

MethodImpl
ÑÑ	 
(
ÑÑ 
MethodImplOptions
ÑÑ %
.
ÑÑ% & 
AggressiveInlining
ÑÑ& 8
)
ÑÑ8 9
]
ÑÑ9 :
public
ÖÖ 
RequireSettings
ÖÖ 
UseCondition
ÖÖ +
(
ÖÖ+ ,
string
ÖÖ, 2
	condition
ÖÖ3 <
)
ÖÖ< =
{
ÜÜ 	
	Condition
áá 
??=
áá 
	condition
áá #
;
áá# $
return
àà 
this
àà 
;
àà 
}
ââ 	
[
ãã 	

MethodImpl
ãã	 
(
ãã 
MethodImplOptions
ãã %
.
ãã% & 
AggressiveInlining
ãã& 8
)
ãã8 9
]
ãã9 :
public
åå 
RequireSettings
åå 

UseVersion
åå )
(
åå) *
string
åå* 0
version
åå1 8
)
åå8 9
{
çç 	
if
éé 
(
éé 
!
éé 
String
éé 
.
éé 
IsNullOrEmpty
éé %
(
éé% &
version
éé& -
)
éé- .
)
éé. /
{
èè 
Version
êê 
=
êê 
version
êê !
;
êê! "
}
ëë 
return
íí 
this
íí 
;
íí 
}
ìì 	
[
ïï 	

MethodImpl
ïï	 
(
ïï 
MethodImplOptions
ïï %
.
ïï% & 
AggressiveInlining
ïï& 8
)
ïï8 9
]
ïï9 :
public
ññ 
RequireSettings
ññ !
ShouldAppendVersion
ññ 2
(
ññ2 3
bool
ññ3 7
?
ññ7 8
appendVersion
ññ9 F
)
ññF G
{
óó 	
AppendVersion
òò 
=
òò 
appendVersion
òò )
;
òò) *
return
ôô 
this
ôô 
;
ôô 
}
öö 	
[
úú 	

MethodImpl
úú	 
(
úú 
MethodImplOptions
úú %
.
úú% & 
AggressiveInlining
úú& 8
)
úú8 9
]
úú9 :
public
ùù 
RequireSettings
ùù 
SetDependencies
ùù .
(
ùù. /
params
ùù/ 5
string
ùù6 <
[
ùù< =
]
ùù= >
dependencies
ùù? K
)
ùùK L
{
ûû 	
if
üü 
(
üü 
Dependencies
üü 
==
üü 
null
üü  $
)
üü$ %
{
†† 
Dependencies
°° 
=
°° 
new
°° "
List
°°# '
<
°°' (
string
°°( .
>
°°. /
(
°°/ 0
)
°°0 1
;
°°1 2
}
¢¢ 
Dependencies
§§ 
.
§§ 
AddRange
§§ !
(
§§! "
dependencies
§§" .
)
§§. /
;
§§/ 0
return
¶¶ 
this
¶¶ 
;
¶¶ 
}
ßß 	
public
©© 
RequireSettings
©© 
Define
©© %
(
©©% &
Action
©©& ,
<
©©, - 
ResourceDefinition
©©- ?
>
©©? @ 
resourceDefinition
©©A S
)
©©S T
{
™™ 	
if
´´ 
(
´´  
resourceDefinition
´´ "
!=
´´# %
null
´´& *
)
´´* +
{
¨¨ 
var
≠≠ 
previous
≠≠ 
=
≠≠ 
InlineDefinition
≠≠ /
;
≠≠/ 0
if
ÆÆ 
(
ÆÆ 
previous
ÆÆ 
!=
ÆÆ 
null
ÆÆ  $
)
ÆÆ$ %
{
ØØ 
InlineDefinition
∞∞ $
=
∞∞% &
r
∞∞' (
=>
∞∞) +
{
±± 
previous
≤≤  
(
≤≤  !
r
≤≤! "
)
≤≤" #
;
≤≤# $ 
resourceDefinition
≥≥ *
(
≥≥* +
r
≥≥+ ,
)
≥≥, -
;
≥≥- .
}
¥¥ 
;
¥¥ 
}
µµ 
else
∂∂ 
{
∑∑ 
InlineDefinition
∏∏ $
=
∏∏% & 
resourceDefinition
∏∏' 9
;
∏∏9 :
}
ππ 
}
∫∫ 
return
ªª 
this
ªª 
;
ªª 
}
ºº 	
public
ææ 
RequireSettings
ææ 
SetAttribute
ææ +
(
ææ+ ,
string
ææ, 2
name
ææ3 7
,
ææ7 8
string
ææ9 ?
value
ææ@ E
)
ææE F
{
øø 	
if
¿¿ 
(
¿¿ 
_attributes
¿¿ 
==
¿¿ 
null
¿¿ #
)
¿¿# $
{
¡¡ 
_attributes
¬¬ 
=
¬¬ 
new
¬¬ !

Dictionary
¬¬" ,
<
¬¬, -
string
¬¬- 3
,
¬¬3 4
string
¬¬5 ;
>
¬¬; <
(
¬¬< =
)
¬¬= >
;
¬¬> ?
}
√√ 
_attributes
ƒƒ 
[
ƒƒ 
name
ƒƒ 
]
ƒƒ 
=
ƒƒ 
value
ƒƒ  %
;
ƒƒ% &
return
≈≈ 
this
≈≈ 
;
≈≈ 
}
∆∆ 	
private
»» 

Dictionary
»» 
<
»» 
string
»» !
,
»»! "
string
»»# )
>
»») *
MergeAttributes
»»+ :
(
»»: ;
RequireSettings
»»; J
other
»»K P
)
»»P Q
{
…… 	
if
ÃÃ 
(
ÃÃ 
_attributes
ÃÃ 
==
ÃÃ 
null
ÃÃ #
)
ÃÃ# $
{
ÕÕ 
return
ŒŒ 
other
ŒŒ 
.
ŒŒ 
_attributes
ŒŒ (
==
ŒŒ) +
null
ŒŒ, 0
?
ŒŒ1 2
null
ŒŒ3 7
:
ŒŒ8 9
new
ŒŒ: =

Dictionary
ŒŒ> H
<
ŒŒH I
string
ŒŒI O
,
ŒŒO P
string
ŒŒQ W
>
ŒŒW X
(
ŒŒX Y
other
ŒŒY ^
.
ŒŒ^ _
_attributes
ŒŒ_ j
)
ŒŒj k
;
ŒŒk l
}
œœ 
if
–– 
(
–– 
other
–– 
.
–– 
_attributes
–– !
==
––" $
null
––% )
)
––) *
{
—— 
return
““ 
new
““ 

Dictionary
““ %
<
““% &
string
““& ,
,
““, -
string
““. 4
>
““4 5
(
““5 6
_attributes
““6 A
)
““A B
;
““B C
}
”” 
var
‘‘ 
mergedAttributes
‘‘  
=
‘‘! "
new
‘‘# &

Dictionary
‘‘' 1
<
‘‘1 2
string
‘‘2 8
,
‘‘8 9
string
‘‘: @
>
‘‘@ A
(
‘‘A B
_attributes
‘‘B M
)
‘‘M N
;
‘‘N O
foreach
’’ 
(
’’ 
var
’’ 
pair
’’ 
in
’’  
other
’’! &
.
’’& '
_attributes
’’' 2
)
’’2 3
{
÷÷ 
mergedAttributes
◊◊  
[
◊◊  !
pair
◊◊! %
.
◊◊% &
Key
◊◊& )
]
◊◊) *
=
◊◊+ ,
pair
◊◊- 1
.
◊◊1 2
Value
◊◊2 7
;
◊◊7 8
}
ÿÿ 
return
ŸŸ 
mergedAttributes
ŸŸ #
;
ŸŸ# $
}
⁄⁄ 	
public
‹‹ 
RequireSettings
‹‹ )
UpdatePositionFromDependent
‹‹ :
(
‹‹: ;
RequireSettings
‹‹; J
	dependent
‹‹K T
)
‹‹T U
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
	dependent
ﬁﬁ 
.
ﬁﬁ 
Position
ﬁﬁ "
==
ﬁﬁ# %
ResourcePosition
ﬁﬁ& 6
.
ﬁﬁ6 7
First
ﬁﬁ7 <
&&
ﬁﬁ= ?
Position
ﬁﬁ@ H
==
ﬁﬁI K
ResourcePosition
ﬁﬁL \
.
ﬁﬁ\ ]
Last
ﬁﬁ] a
)
ﬁﬁa b
{
ﬂﬂ 
throw
‡‡ 
new
‡‡ '
InvalidOperationException
‡‡ 3
(
‡‡3 4
$"
‡‡4 63
%Invalid dependency position of type '
‡‡6 [
{
‡‡[ \
	dependent
‡‡\ e
.
‡‡e f
Type
‡‡f j
}
‡‡j k
' for resource '
‡‡k {
{
‡‡{ |
	dependent‡‡| Ö
.‡‡Ö Ü
Name‡‡Ü ä
}‡‡ä ã!
' positioned at '‡‡ã ú
{‡‡ú ù
	dependent‡‡ù ¶
.‡‡¶ ß
Position‡‡ß Ø
}‡‡Ø ∞ 
' depending on '‡‡∞ ¿
{‡‡¿ ¡
Name‡‡¡ ≈
}‡‡≈ ∆!
' positioned at '‡‡∆ ◊
{‡‡◊ ÿ
Position‡‡ÿ ‡
}‡‡‡ ·
'‡‡· ‚
"‡‡‚ „
)‡‡„ ‰
;‡‡‰ Â
}
·· 
if
‰‰ 
(
‰‰ 
	dependent
‰‰ 
.
‰‰ 
Position
‰‰ "
==
‰‰# %
ResourcePosition
‰‰& 6
.
‰‰6 7
First
‰‰7 <
&&
‰‰= ?
Position
‰‰@ H
==
‰‰I K
ResourcePosition
‰‰L \
.
‰‰\ ]
ByDependency
‰‰] i
)
‰‰i j
{
ÂÂ 
Position
ÊÊ 
=
ÊÊ 
ResourcePosition
ÊÊ +
.
ÊÊ+ ,
First
ÊÊ, 1
;
ÊÊ1 2
}
ÁÁ 
return
ÈÈ 
this
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
public
ÏÏ 
RequireSettings
ÏÏ *
UpdatePositionFromDependency
ÏÏ ;
(
ÏÏ; <
RequireSettings
ÏÏ< K

dependency
ÏÏL V
)
ÏÏV W
{
ÌÌ 	
if
ÔÔ 
(
ÔÔ 
Position
ÔÔ 
==
ÔÔ 
ResourcePosition
ÔÔ ,
.
ÔÔ, -
ByDependency
ÔÔ- 9
&&
ÔÔ: <

dependency
ÔÔ= G
.
ÔÔG H
Position
ÔÔH P
==
ÔÔQ S
ResourcePosition
ÔÔT d
.
ÔÔd e
Last
ÔÔe i
)
ÔÔi j
{
 
Position
ÒÒ 
=
ÒÒ 
ResourcePosition
ÒÒ +
.
ÒÒ+ ,
Last
ÒÒ, 0
;
ÒÒ0 1
}
ÚÚ 
return
ÙÙ 
this
ÙÙ 
;
ÙÙ 
}
ıı 	
public
˜˜ 
RequireSettings
˜˜ 
CombinePosition
˜˜ .
(
˜˜. /
RequireSettings
˜˜/ >
	dependent
˜˜? H
)
˜˜H I
{
¯¯ 	)
UpdatePositionFromDependent
˘˘ '
(
˘˘' (
	dependent
˘˘( 1
)
˘˘1 2
;
˘˘2 3
	dependent
˙˙ 
.
˙˙ *
UpdatePositionFromDependency
˙˙ 2
(
˙˙2 3
this
˙˙3 7
)
˙˙7 8
;
˙˙8 9
return
¸¸ 
this
¸¸ 
;
¸¸ 
}
˝˝ 	
public
ˇˇ 
RequireSettings
ˇˇ 
NewAndCombine
ˇˇ ,
(
ˇˇ, -
RequireSettings
ˇˇ- <
other
ˇˇ= B
)
ˇˇB C
{
ÄÄ 	
return
ÅÅ 
new
ÅÅ 
RequireSettings
ÅÅ &
{
ÇÇ 
Name
ÉÉ 
=
ÉÉ 
Name
ÉÉ 
,
ÉÉ 
Type
ÑÑ 
=
ÑÑ 
Type
ÑÑ 
,
ÑÑ 
Position
ÖÖ 
=
ÖÖ 
Position
ÖÖ #
}
ÜÜ 
.
áá 
Combine
áá 
(
áá 
other
áá 
)
áá 
;
àà 
}
ââ 	
public
ãã 
RequireSettings
ãã 
Combine
ãã &
(
ãã& '
RequireSettings
ãã' 6
other
ãã7 <
)
ãã< =
{
åå 	

AtLocation
çç 
(
çç 
Location
çç 
)
çç  
.
çç  !

AtLocation
çç! +
(
çç+ ,
other
çç, 1
.
çç1 2
Location
çç2 :
)
çç: ;
.
éé 
WithBasePath
éé 
(
éé 
BasePath
éé "
)
éé" #
.
éé# $
WithBasePath
éé$ 0
(
éé0 1
other
éé1 6
.
éé6 7
BasePath
éé7 ?
)
éé? @
.
èè 
UseCdn
èè 
(
èè 
CdnMode
èè 
)
èè 
.
èè 
UseCdn
èè #
(
èè# $
other
èè$ )
.
èè) *
CdnMode
èè* 1
)
èè1 2
.
êê 
UseCdnBaseUrl
êê 
(
êê 

CdnBaseUrl
êê %
)
êê% &
.
êê& '
UseCdnBaseUrl
êê' 4
(
êê4 5
other
êê5 :
.
êê: ;

CdnBaseUrl
êê; E
)
êêE F
.
ëë 
UseDebugMode
ëë 
(
ëë 
	DebugMode
ëë #
)
ëë# $
.
ëë$ %
UseDebugMode
ëë% 1
(
ëë1 2
other
ëë2 7
.
ëë7 8
	DebugMode
ëë8 A
)
ëëA B
.
íí 

UseCulture
íí 
(
íí 
Culture
íí 
)
íí  
.
íí  !

UseCulture
íí! +
(
íí+ ,
other
íí, 1
.
íí1 2
Culture
íí2 9
)
íí9 :
.
ìì 
UseCondition
ìì 
(
ìì 
	Condition
ìì #
)
ìì# $
.
ìì$ %
UseCondition
ìì% 1
(
ìì1 2
other
ìì2 7
.
ìì7 8
	Condition
ìì8 A
)
ììA B
.
îî 

UseVersion
îî 
(
îî 
Version
îî 
)
îî  
.
îî  !

UseVersion
îî! +
(
îî+ ,
other
îî, 1
.
îî1 2
Version
îî2 9
)
îî9 :
.
ïï !
ShouldAppendVersion
ïï  
(
ïï  !
AppendVersion
ïï! .
)
ïï. /
.
ïï/ 0!
ShouldAppendVersion
ïï0 C
(
ïïC D
other
ïïD I
.
ïïI J
AppendVersion
ïïJ W
)
ïïW X
.
ññ 
Define
ññ 
(
ññ 
InlineDefinition
ññ $
)
ññ$ %
.
ññ% &
Define
ññ& ,
(
ññ, -
other
ññ- 2
.
ññ2 3
InlineDefinition
ññ3 C
)
ññC D
;
óó 
_attributes
ôô 
=
ôô 
MergeAttributes
ôô )
(
ôô) *
other
ôô* /
)
ôô/ 0
;
ôô0 1
return
öö 
this
öö 
;
öö 
}
õõ 	
}
úú 
}ùù ∫Í
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceDefinition.cs
	namespace		 	
OrchardCore		
 
.		 
ResourceManagement		 (
{

 
public 

class 
ResourceDefinition #
{ 
private 
string 
	_basePath  
;  !
public 
ResourceDefinition !
(! "
ResourceManifest" 2
manifest3 ;
,; <
string= C
typeD H
,H I
stringJ P
nameQ U
)U V
{ 	
Manifest 
= 
manifest 
;  
Type 
= 
type 
; 
Name 
= 
name 
; 
} 	
private 
static 
string 
Coalesce &
(& '
params' -
string. 4
[4 5
]5 6
strings7 >
)> ?
{ 	
foreach 
( 
var 
str 
in 
strings  '
)' (
{ 
if 
( 
! 
String 
. 
IsNullOrEmpty )
() *
str* -
)- .
). /
{ 
return 
str 
; 
} 
} 
return 
null 
; 
}   	
public"" 
ResourceManifest"" 
Manifest""  (
{"") *
get""+ .
;"". /
private""0 7
set""8 ;
;""; <
}""= >
public$$ 
string$$ 
Name$$ 
{$$ 
get$$  
;$$  !
private$$" )
set$$* -
;$$- .
}$$/ 0
public%% 
string%% 
Type%% 
{%% 
get%%  
;%%  !
private%%" )
set%%* -
;%%- .
}%%/ 0
public&& 
string&& 
Version&& 
{&& 
get&&  #
;&&# $
private&&% ,
set&&- 0
;&&0 1
}&&2 3
public'' 
bool'' 
?'' 
AppendVersion'' "
{''# $
get''% (
;''( )
private''* 1
set''2 5
;''5 6
}''7 8
public(( 
string(( 
Url(( 
{(( 
get(( 
;((  
private((! (
set(() ,
;((, -
}((. /
public)) 
string)) 
UrlDebug)) 
{))  
get))! $
;))$ %
private))& -
set)). 1
;))1 2
}))3 4
public** 
string** 
UrlCdn** 
{** 
get** "
;**" #
private**$ +
set**, /
;**/ 0
}**1 2
public++ 
string++ 
UrlCdnDebug++ !
{++" #
get++$ '
;++' (
private++) 0
set++1 4
;++4 5
}++6 7
public,, 
string,, 
CdnDebugIntegrity,, '
{,,( )
get,,* -
;,,- .
private,,/ 6
set,,7 :
;,,: ;
},,< =
public-- 
string-- 
CdnIntegrity-- "
{--# $
get--% (
;--( )
private--* 1
set--2 5
;--5 6
}--7 8
public.. 
string.. 
[.. 
].. 
Cultures..  
{..! "
get..# &
;..& '
private..( /
set..0 3
;..3 4
}..5 6
public// 
bool// 
CdnSupportsSsl// "
{//# $
get//% (
;//( )
private//* 1
set//2 5
;//5 6
}//7 8
public00 
List00 
<00 
string00 
>00 
Dependencies00 (
{00) *
get00+ .
;00. /
private000 7
set008 ;
;00; <
}00= >
public11 
AttributeDictionary11 "

Attributes11# -
{11. /
get110 3
;113 4
private115 <
set11= @
;11@ A
}11B C
public22 
string22 
InnerContent22 "
{22# $
get22% (
;22( )
private22* 1
set222 5
;225 6
}227 8
public33 
ResourcePosition33 
Position33  (
{33) *
get33+ .
;33. /
private330 7
set338 ;
;33; <
}33= >
public55 
ResourceDefinition55 !
SetAttribute55" .
(55. /
string55/ 5
name556 :
,55: ;
string55< B
value55C H
)55H I
{66 	
if77 
(77 

Attributes77 
==77 
null77 "
)77" #
{88 

Attributes99 
=99 
new99  
AttributeDictionary99! 4
(994 5
)995 6
;996 7
}:: 

Attributes<< 
[<< 
name<< 
]<< 
=<< 
value<< $
;<<$ %
return== 
this== 
;== 
}>> 	
public@@ 
ResourceDefinition@@ !
SetBasePath@@" -
(@@- .
string@@. 4
basePath@@5 =
)@@= >
{AA 	
	_basePathBB 
=BB 
basePathBB  
;BB  !
returnCC 
thisCC 
;CC 
}DD 	
publicFF 
ResourceDefinitionFF !
SetUrlFF" (
(FF( )
stringFF) /
urlFF0 3
)FF3 4
{GG 	
returnHH 
SetUrlHH 
(HH 
urlHH 
,HH 
nullHH #
)HH# $
;HH$ %
}II 	
publicKK 
ResourceDefinitionKK !
SetUrlKK" (
(KK( )
stringKK) /
urlKK0 3
,KK3 4
stringKK5 ;
urlDebugKK< D
)KKD E
{LL 	
ifMM 
(MM 
StringMM 
.MM 
IsNullOrEmptyMM $
(MM$ %
urlMM% (
)MM( )
)MM) *
{NN &
ThrowArgumentNullExceptionOO *
(OO* +
nameofOO+ 1
(OO1 2
urlOO2 5
)OO5 6
)OO6 7
;OO7 8
}PP 
UrlQQ 
=QQ 
urlQQ 
;QQ 
ifRR 
(RR 
urlDebugRR 
!=RR 
nullRR  
)RR  !
{SS 
UrlDebugTT 
=TT 
urlDebugTT #
;TT# $
}UU 
returnVV 
thisVV 
;VV 
}WW 	
publicYY 
ResourceDefinitionYY !
SetCdnYY" (
(YY( )
stringYY) /
cdnUrlYY0 6
)YY6 7
{ZZ 	
return[[ 
SetCdn[[ 
([[ 
cdnUrl[[  
,[[  !
null[[" &
,[[& '
null[[( ,
)[[, -
;[[- .
}\\ 	
public^^ 
ResourceDefinition^^ !
SetCdn^^" (
(^^( )
string^^) /
cdnUrl^^0 6
,^^6 7
string^^8 >
cdnUrlDebug^^? J
)^^J K
{__ 	
return`` 
SetCdn`` 
(`` 
cdnUrl``  
,``  !
cdnUrlDebug``" -
,``- .
null``/ 3
)``3 4
;``4 5
}aa 	
publiccc 
ResourceDefinitioncc !
SetCdnIntegritycc" 1
(cc1 2
stringcc2 8
cdnIntegritycc9 E
)ccE F
{dd 	
returnee 
SetCdnIntegrityee "
(ee" #
cdnIntegrityee# /
,ee/ 0
nullee1 5
)ee5 6
;ee6 7
}ff 	
publichh 
ResourceDefinitionhh !
SetCdnIntegrityhh" 1
(hh1 2
stringhh2 8
cdnIntegrityhh9 E
,hhE F
stringhhG M
cdnDebugIntegrityhhN _
)hh_ `
{ii 	
ifjj 
(jj 
Stringjj 
.jj 
IsNullOrEmptyjj $
(jj$ %
cdnIntegrityjj% 1
)jj1 2
)jj2 3
{kk &
ThrowArgumentNullExceptionll *
(ll* +
nameofll+ 1
(ll1 2
cdnIntegrityll2 >
)ll> ?
)ll? @
;ll@ A
}mm 
CdnIntegritynn 
=nn 
cdnIntegritynn '
;nn' (
ifoo 
(oo 
cdnDebugIntegrityoo !
!=oo" $
nulloo% )
)oo) *
{pp 
CdnDebugIntegrityqq !
=qq" #
cdnDebugIntegrityqq$ 5
;qq5 6
}rr 
returnss 
thisss 
;ss 
}tt 	
publicvv 
ResourceDefinitionvv !
SetCdnvv" (
(vv( )
stringvv) /
cdnUrlvv0 6
,vv6 7
stringvv8 >
cdnUrlDebugvv? J
,vvJ K
boolvvL P
?vvP Q
cdnSupportsSslvvR `
)vv` a
{ww 	
ifxx 
(xx 
Stringxx 
.xx 
IsNullOrEmptyxx $
(xx$ %
cdnUrlxx% +
)xx+ ,
)xx, -
{yy &
ThrowArgumentNullExceptionzz *
(zz* +
nameofzz+ 1
(zz1 2
cdnUrlzz2 8
)zz8 9
)zz9 :
;zz: ;
}{{ 
UrlCdn|| 
=|| 
cdnUrl|| 
;|| 
if}} 
(}} 
cdnUrlDebug}} 
!=}} 
null}} #
)}}# $
{~~ 
UrlCdnDebug 
= 
cdnUrlDebug )
;) *
}
ÄÄ 
if
ÅÅ 
(
ÅÅ 
cdnSupportsSsl
ÅÅ 
.
ÅÅ 
HasValue
ÅÅ '
)
ÅÅ' (
{
ÇÇ 
CdnSupportsSsl
ÉÉ 
=
ÉÉ  
cdnSupportsSsl
ÉÉ! /
.
ÉÉ/ 0
Value
ÉÉ0 5
;
ÉÉ5 6
}
ÑÑ 
return
ÖÖ 
this
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
public
åå  
ResourceDefinition
åå !

SetVersion
åå" ,
(
åå, -
string
åå- 3
version
åå4 ;
)
åå; <
{
çç 	
Version
éé 
=
éé 
version
éé 
;
éé 
return
èè 
this
èè 
;
èè 
}
êê 	
public
ññ  
ResourceDefinition
ññ !!
ShouldAppendVersion
ññ" 5
(
ññ5 6
bool
ññ6 :
?
ññ: ;
appendVersion
ññ< I
)
ññI J
{
óó 	
AppendVersion
òò 
=
òò 
appendVersion
òò )
;
òò) *
return
ôô 
this
ôô 
;
ôô 
}
öö 	
public
úú  
ResourceDefinition
úú !
SetCultures
úú" -
(
úú- .
params
úú. 4
string
úú5 ;
[
úú; <
]
úú< =
cultures
úú> F
)
úúF G
{
ùù 	
Cultures
ûû 
=
ûû 
cultures
ûû 
;
ûû  
return
üü 
this
üü 
;
üü 
}
†† 	
public
¢¢  
ResourceDefinition
¢¢ !
SetDependencies
¢¢" 1
(
¢¢1 2
params
¢¢2 8
string
¢¢9 ?
[
¢¢? @
]
¢¢@ A
dependencies
¢¢B N
)
¢¢N O
{
££ 	
if
§§ 
(
§§ 
Dependencies
§§ 
==
§§ 
null
§§  $
)
§§$ %
{
•• 
Dependencies
¶¶ 
=
¶¶ 
new
¶¶ "
List
¶¶# '
<
¶¶' (
string
¶¶( .
>
¶¶. /
(
¶¶/ 0
)
¶¶0 1
;
¶¶1 2
}
ßß 
Dependencies
©© 
.
©© 
AddRange
©© !
(
©©! "
dependencies
©©" .
)
©©. /
;
©©/ 0
return
´´ 
this
´´ 
;
´´ 
}
¨¨ 	
public
ÆÆ  
ResourceDefinition
ÆÆ !
SetInnerContent
ÆÆ" 1
(
ÆÆ1 2
string
ÆÆ2 8
innerContent
ÆÆ9 E
)
ÆÆE F
{
ØØ 	
InnerContent
∞∞ 
=
∞∞ 
innerContent
∞∞ '
;
∞∞' (
return
≤≤ 
this
≤≤ 
;
≤≤ 
}
≥≥ 	
public
∏∏  
ResourceDefinition
∏∏ !
SetPosition
∏∏" -
(
∏∏- .
ResourcePosition
∏∏. >
position
∏∏? G
)
∏∏G H
{
ππ 	
Position
∫∫ 
=
∫∫ 
position
∫∫ 
;
∫∫  
return
ºº 
this
ºº 
;
ºº 
}
ΩΩ 	
public
øø 

TagBuilder
øø 
GetTagBuilder
øø '
(
øø' (
RequireSettings
øø( 7
settings
øø8 @
,
øø@ A
string
¿¿ 
applicationPath
¿¿ "
,
¿¿" #"
IFileVersionProvider
¡¡  !
fileVersionProvider
¡¡! 4
)
¡¡4 5
{
¬¬ 	
string
√√ 
url
√√ 
,
√√ #
filePathAttributeName
√√ -
=
√√. /
null
√√0 4
;
√√4 5
if
≈≈ 
(
≈≈ 
settings
≈≈ 
.
≈≈ 
	DebugMode
≈≈ "
)
≈≈" #
{
∆∆ 
url
«« 
=
«« 
settings
«« 
.
«« 
CdnMode
«« &
?
»» 
Coalesce
»» 
(
»» 
UrlCdnDebug
»» *
,
»»* +
UrlDebug
»», 4
,
»»4 5
UrlCdn
»»6 <
,
»»< =
Url
»»> A
)
»»A B
:
…… 
Coalesce
…… 
(
…… 
UrlDebug
…… '
,
……' (
Url
……) ,
,
……, -
UrlCdnDebug
……. 9
,
……9 :
UrlCdn
……; A
)
……A B
;
……B C
}
   
else
ÀÀ 
{
ÃÃ 
url
ÕÕ 
=
ÕÕ 
settings
ÕÕ 
.
ÕÕ 
CdnMode
ÕÕ &
?
ŒŒ 
Coalesce
ŒŒ 
(
ŒŒ 
UrlCdn
ŒŒ %
,
ŒŒ% &
Url
ŒŒ' *
,
ŒŒ* +
UrlCdnDebug
ŒŒ, 7
,
ŒŒ7 8
UrlDebug
ŒŒ9 A
)
ŒŒA B
:
œœ 
Coalesce
œœ 
(
œœ 
Url
œœ "
,
œœ" #
UrlDebug
œœ$ ,
,
œœ, -
UrlCdn
œœ. 4
,
œœ4 5
UrlCdnDebug
œœ6 A
)
œœA B
;
œœB C
}
–– 
if
““ 
(
““ 
String
““ 
.
““ 
IsNullOrEmpty
““ $
(
““$ %
url
““% (
)
““( )
)
““) *
{
”” 
url
‘‘ 
=
‘‘ 
null
‘‘ 
;
‘‘ 
}
’’ 
if
÷÷ 
(
÷÷ 
!
÷÷ 
String
÷÷ 
.
÷÷ 
IsNullOrEmpty
÷÷ %
(
÷÷% &
settings
÷÷& .
.
÷÷. /
Culture
÷÷/ 6
)
÷÷6 7
)
÷÷7 8
{
◊◊ 
var
ÿÿ 
nearestCulture
ÿÿ "
=
ÿÿ# $ 
FindNearestCulture
ÿÿ% 7
(
ÿÿ7 8
settings
ÿÿ8 @
.
ÿÿ@ A
Culture
ÿÿA H
)
ÿÿH I
;
ÿÿI J
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
String
ŸŸ 
.
ŸŸ 
IsNullOrEmpty
ŸŸ )
(
ŸŸ) *
nearestCulture
ŸŸ* 8
)
ŸŸ8 9
)
ŸŸ9 :
{
⁄⁄ 
url
€€ 
=
€€ 
Path
€€ 
.
€€ 
ChangeExtension
€€ .
(
€€. /
url
€€/ 2
,
€€2 3
nearestCulture
€€4 B
+
€€C D
Path
€€E I
.
€€I J
GetExtension
€€J V
(
€€V W
url
€€W Z
)
€€Z [
)
€€[ \
;
€€\ ]
}
‹‹ 
}
›› 
if
ﬂﬂ 
(
ﬂﬂ 
url
ﬂﬂ 
!=
ﬂﬂ 
null
ﬂﬂ 
&&
ﬂﬂ 
url
ﬂﬂ "
.
ﬂﬂ" #

StartsWith
ﬂﬂ# -
(
ﬂﬂ- .
$str
ﬂﬂ. 2
,
ﬂﬂ2 3
StringComparison
ﬂﬂ4 D
.
ﬂﬂD E
Ordinal
ﬂﬂE L
)
ﬂﬂL M
)
ﬂﬂM N
{
‡‡ 
if
·· 
(
·· 
!
·· 
String
·· 
.
·· 
IsNullOrEmpty
·· )
(
··) *
	_basePath
··* 3
)
··3 4
)
··4 5
{
‚‚ 
url
„„ 
=
„„ 
	_basePath
„„ #
+
„„$ %
url
„„& )
.
„„) *
	Substring
„„* 3
(
„„3 4
$num
„„4 5
)
„„5 6
;
„„6 7
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
url
ÁÁ 
=
ÁÁ 
applicationPath
ÁÁ )
+
ÁÁ* +
url
ÁÁ, /
.
ÁÁ/ 0
	Substring
ÁÁ0 9
(
ÁÁ9 :
$num
ÁÁ: ;
)
ÁÁ; <
;
ÁÁ< =
}
ËË 
}
ÈÈ 
if
ÏÏ 
(
ÏÏ 
url
ÏÏ 
!=
ÏÏ 
null
ÏÏ 
&&
ÏÏ 
(
ÏÏ  
(
ÏÏ  !
settings
ÏÏ! )
.
ÏÏ) *
AppendVersion
ÏÏ* 7
.
ÏÏ7 8
HasValue
ÏÏ8 @
&&
ÏÏA C
settings
ÏÏD L
.
ÏÏL M
AppendVersion
ÏÏM Z
==
ÏÏ[ ]
true
ÏÏ^ b
)
ÏÏb c
||
ÏÏd f
(
ÌÌ 
!
ÌÌ 
settings
ÌÌ 
.
ÌÌ 
AppendVersion
ÌÌ (
.
ÌÌ( )
HasValue
ÌÌ) 1
&&
ÌÌ2 4
AppendVersion
ÌÌ5 B
==
ÌÌC E
true
ÌÌF J
)
ÌÌJ K
)
ÌÌK L
)
ÌÌL M
{
ÓÓ 
url
ÔÔ 
=
ÔÔ !
fileVersionProvider
ÔÔ )
.
ÔÔ) *"
AddFileVersionToPath
ÔÔ* >
(
ÔÔ> ?
applicationPath
ÔÔ? N
,
ÔÔN O
url
ÔÔP S
)
ÔÔS T
;
ÔÔT U
}
 
if
ÛÛ 
(
ÛÛ 
url
ÛÛ 
!=
ÛÛ 
null
ÛÛ 
&&
ÛÛ 
!
ÛÛ  
settings
ÛÛ  (
.
ÛÛ( )
	DebugMode
ÛÛ) 2
&&
ÛÛ3 5
!
ÛÛ6 7
String
ÛÛ7 =
.
ÛÛ= >
IsNullOrEmpty
ÛÛ> K
(
ÛÛK L
settings
ÛÛL T
.
ÛÛT U

CdnBaseUrl
ÛÛU _
)
ÛÛ_ `
&&
ÛÛa c
!
ıı 
url
ıı 
.
ıı 

StartsWith
ıı 
(
ıı  
$str
ıı  *
,
ıı* +
StringComparison
ıı, <
.
ıı< =
OrdinalIgnoreCase
ıı= N
)
ııN O
&&
ııP R
!
ˆˆ 
url
ˆˆ 
.
ˆˆ 

StartsWith
ˆˆ 
(
ˆˆ  
$str
ˆˆ  )
,
ˆˆ) *
StringComparison
ˆˆ+ ;
.
ˆˆ; <
OrdinalIgnoreCase
ˆˆ< M
)
ˆˆM N
&&
ˆˆO Q
!
˜˜ 
url
˜˜ 
.
˜˜ 

StartsWith
˜˜ 
(
˜˜  
$str
˜˜  $
,
˜˜$ %
StringComparison
˜˜& 6
.
˜˜6 7
OrdinalIgnoreCase
˜˜7 H
)
˜˜H I
&&
˜˜J L
!
¯¯ 
url
¯¯ 
.
¯¯ 

StartsWith
¯¯ 
(
¯¯  
$str
¯¯  )
,
¯¯) *
StringComparison
¯¯+ ;
.
¯¯; <
OrdinalIgnoreCase
¯¯< M
)
¯¯M N
)
¯¯N O
{
˘˘ 
url
˙˙ 
=
˙˙ 
settings
˙˙ 
.
˙˙ 

CdnBaseUrl
˙˙ )
+
˙˙* +
url
˙˙, /
;
˙˙/ 0
}
˚˚ 

TagBuilder
˝˝ 

tagBuilder
˝˝ !
;
˝˝! "
switch
˛˛ 
(
˛˛ 
Type
˛˛ 
)
˛˛ 
{
ˇˇ 
case
ÄÄ 
$str
ÄÄ 
:
ÄÄ 

tagBuilder
ÅÅ 
=
ÅÅ  
new
ÅÅ! $

TagBuilder
ÅÅ% /
(
ÅÅ/ 0
$str
ÅÅ0 8
)
ÅÅ8 9
;
ÅÅ9 :#
filePathAttributeName
ÇÇ )
=
ÇÇ* +
$str
ÇÇ, 1
;
ÇÇ1 2
break
ÉÉ 
;
ÉÉ 
case
ÑÑ 
$str
ÑÑ !
:
ÑÑ! "
if
ÖÖ 
(
ÖÖ 
url
ÖÖ 
==
ÖÖ 
null
ÖÖ #
&&
ÖÖ$ &
InnerContent
ÖÖ' 3
!=
ÖÖ4 6
null
ÖÖ7 ;
)
ÖÖ; <
{
ÜÜ 

tagBuilder
àà "
=
àà# $
new
àà% (

TagBuilder
àà) 3
(
àà3 4
$str
àà4 ;
)
àà; <
{
ââ 

Attributes
ää &
=
ää' (
{
ää) *
{
ãã  !
$str
ãã" (
,
ãã( )
$str
ãã* 4
}
ãã5 6
}
åå 
}
çç 
;
çç 
}
éé 
else
èè 
{
êê 

tagBuilder
íí "
=
íí# $
new
íí% (

TagBuilder
íí) 3
(
íí3 4
$str
íí4 :
)
íí: ;
{
ìì 
TagRenderMode
îî )
=
îî* +
TagRenderMode
îî, 9
.
îî9 :
SelfClosing
îî: E
,
îîE F

Attributes
ïï &
=
ïï' (
{
ïï) *
{
ññ  !
$str
ññ" (
,
ññ( )
$str
ññ* 4
}
ññ5 6
,
ññ6 7
{
óó  !
$str
óó" '
,
óó' (
$str
óó) 5
}
óó6 7
}
òò 
}
ôô 
;
ôô #
filePathAttributeName
öö -
=
öö. /
$str
öö0 6
;
öö6 7
}
õõ 
break
úú 
;
úú 
case
ùù 
$str
ùù 
:
ùù 

tagBuilder
ûû 
=
ûû  
new
ûû! $

TagBuilder
ûû% /
(
ûû/ 0
$str
ûû0 6
)
ûû6 7
{
ûû8 9
TagRenderMode
ûû: G
=
ûûH I
TagRenderMode
ûûJ W
.
ûûW X
SelfClosing
ûûX c
}
ûûd e
;
ûûe f#
filePathAttributeName
üü )
=
üü* +
$str
üü, 2
;
üü2 3
break
†† 
;
†† 
default
°° 
:
°° 

tagBuilder
¢¢ 
=
¢¢  
new
¢¢! $

TagBuilder
¢¢% /
(
¢¢/ 0
$str
¢¢0 6
)
¢¢6 7
{
¢¢8 9
TagRenderMode
¢¢: G
=
¢¢H I
TagRenderMode
¢¢J W
.
¢¢W X
SelfClosing
¢¢X c
}
¢¢d e
;
¢¢e f
break
££ 
;
££ 
}
§§ 
if
¶¶ 
(
¶¶ 
!
¶¶ 
String
¶¶ 
.
¶¶ 
IsNullOrEmpty
¶¶ %
(
¶¶% &
CdnIntegrity
¶¶& 2
)
¶¶2 3
&&
¶¶4 6
url
¶¶7 :
!=
¶¶; =
null
¶¶> B
&&
¶¶C E
url
¶¶F I
==
¶¶J L
UrlCdn
¶¶M S
)
¶¶S T
{
ßß 

tagBuilder
®® 
.
®® 

Attributes
®® %
[
®®% &
$str
®®& 1
]
®®1 2
=
®®3 4
CdnIntegrity
®®5 A
;
®®A B

tagBuilder
©© 
.
©© 

Attributes
©© %
[
©©% &
$str
©©& 3
]
©©3 4
=
©©5 6
$str
©©7 B
;
©©B C
}
™™ 
else
´´ 
if
´´ 
(
´´ 
!
´´ 
String
´´ 
.
´´ 
IsNullOrEmpty
´´ *
(
´´* +
CdnDebugIntegrity
´´+ <
)
´´< =
&&
´´> @
url
´´A D
!=
´´E G
null
´´H L
&&
´´M O
url
´´P S
==
´´T V
UrlCdnDebug
´´W b
)
´´b c
{
¨¨ 

tagBuilder
≠≠ 
.
≠≠ 

Attributes
≠≠ %
[
≠≠% &
$str
≠≠& 1
]
≠≠1 2
=
≠≠3 4
CdnDebugIntegrity
≠≠5 F
;
≠≠F G

tagBuilder
ÆÆ 
.
ÆÆ 

Attributes
ÆÆ %
[
ÆÆ% &
$str
ÆÆ& 3
]
ÆÆ3 4
=
ÆÆ5 6
$str
ÆÆ7 B
;
ÆÆB C
}
ØØ 
if
±± 
(
±± 

Attributes
±± 
!=
±± 
null
±± "
)
±±" #
{
≤≤ 

tagBuilder
≥≥ 
.
≥≥ 
MergeAttributes
≥≥ *
(
≥≥* +

Attributes
≥≥+ 5
)
≥≥5 6
;
≥≥6 7
}
¥¥ 
if
∂∂ 
(
∂∂ 
settings
∂∂ 
.
∂∂ 
HasAttributes
∂∂ &
)
∂∂& '
{
∑∑ 

tagBuilder
∏∏ 
.
∏∏ 
MergeAttributes
∏∏ *
(
∏∏* +
settings
∏∏+ 3
.
∏∏3 4

Attributes
∏∏4 >
)
∏∏> ?
;
∏∏? @
}
ππ 
if
ªª 
(
ªª 
!
ªª 
String
ªª 
.
ªª 
IsNullOrEmpty
ªª %
(
ªª% &
url
ªª& )
)
ªª) *
&&
ªª+ -#
filePathAttributeName
ªª. C
!=
ªªD F
null
ªªG K
)
ªªK L
{
ºº 

tagBuilder
ΩΩ 
.
ΩΩ 
MergeAttribute
ΩΩ )
(
ΩΩ) *#
filePathAttributeName
ΩΩ* ?
,
ΩΩ? @
url
ΩΩA D
,
ΩΩD E
true
ΩΩF J
)
ΩΩJ K
;
ΩΩK L
}
ææ 
else
øø 
if
øø 
(
øø 
!
øø 
String
øø 
.
øø 
IsNullOrEmpty
øø *
(
øø* +
InnerContent
øø+ 7
)
øø7 8
)
øø8 9
{
¿¿ 

tagBuilder
¡¡ 
.
¡¡ 
	InnerHtml
¡¡ $
.
¡¡$ %

AppendHtml
¡¡% /
(
¡¡/ 0
InnerContent
¡¡0 <
)
¡¡< =
;
¡¡= >
}
¬¬ 
return
ƒƒ 

tagBuilder
ƒƒ 
;
ƒƒ 
}
≈≈ 	
public
«« 
string
««  
FindNearestCulture
«« (
(
««( )
string
««) /
culture
««0 7
)
««7 8
{
»» 	
if
   
(
   
Cultures
   
==
   
null
    
)
    !
{
ÀÀ 
return
ÃÃ 
null
ÃÃ 
;
ÃÃ 
}
ÕÕ 
var
ŒŒ 
selectedIndex
ŒŒ 
=
ŒŒ 
Array
ŒŒ  %
.
ŒŒ% &
IndexOf
ŒŒ& -
(
ŒŒ- .
Cultures
ŒŒ. 6
,
ŒŒ6 7
culture
ŒŒ8 ?
)
ŒŒ? @
;
ŒŒ@ A
if
œœ 
(
œœ 
selectedIndex
œœ 
!=
œœ  
-
œœ! "
$num
œœ" #
)
œœ# $
{
–– 
return
—— 
Cultures
—— 
[
——  
selectedIndex
——  -
]
——- .
;
——. /
}
““ 
var
‘‘ 
cultureInfo
‘‘ 
=
‘‘ 
new
‘‘ !
CultureInfo
‘‘" -
(
‘‘- .
culture
‘‘. 5
)
‘‘5 6
;
‘‘6 7
if
’’ 
(
’’ 
cultureInfo
’’ 
.
’’ 
Parent
’’ "
.
’’" #
Name
’’# '
!=
’’( *
culture
’’+ 2
)
’’2 3
{
÷÷ 
var
◊◊ 
selectedCulture
◊◊ #
=
◊◊$ % 
FindNearestCulture
◊◊& 8
(
◊◊8 9
cultureInfo
◊◊9 D
.
◊◊D E
Parent
◊◊E K
.
◊◊K L
Name
◊◊L P
)
◊◊P Q
;
◊◊Q R
if
ÿÿ 
(
ÿÿ 
selectedCulture
ÿÿ #
!=
ÿÿ$ &
null
ÿÿ' +
)
ÿÿ+ ,
{
ŸŸ 
return
⁄⁄ 
selectedCulture
⁄⁄ *
;
⁄⁄* +
}
€€ 
}
‹‹ 
return
›› 
null
›› 
;
›› 
}
ﬁﬁ 	
public
‡‡ 
override
‡‡ 
bool
‡‡ 
Equals
‡‡ #
(
‡‡# $
object
‡‡$ *
obj
‡‡+ .
)
‡‡. /
{
·· 	
if
‚‚ 
(
‚‚ 
obj
‚‚ 
==
‚‚ 
null
‚‚ 
||
‚‚ 
obj
‚‚ "
.
‚‚" #
GetType
‚‚# *
(
‚‚* +
)
‚‚+ ,
!=
‚‚- /
GetType
‚‚0 7
(
‚‚7 8
)
‚‚8 9
)
‚‚9 :
{
„„ 
return
‰‰ 
false
‰‰ 
;
‰‰ 
}
ÂÂ 
var
ÁÁ 
that
ÁÁ 
=
ÁÁ 
(
ÁÁ  
ResourceDefinition
ÁÁ *
)
ÁÁ* +
obj
ÁÁ+ .
;
ÁÁ. /
return
ËË 
String
ËË 
.
ËË 
Equals
ËË  
(
ËË  !
that
ËË! %
.
ËË% &
Name
ËË& *
,
ËË* +
Name
ËË, 0
)
ËË0 1
&&
ËË2 4
String
ÈÈ 
.
ÈÈ 
Equals
ÈÈ 
(
ÈÈ 
that
ÈÈ "
.
ÈÈ" #
Type
ÈÈ# '
,
ÈÈ' (
Type
ÈÈ) -
)
ÈÈ- .
&&
ÈÈ/ 1
String
ÍÍ 
.
ÍÍ 
Equals
ÍÍ 
(
ÍÍ 
that
ÍÍ "
.
ÍÍ" #
Version
ÍÍ# *
,
ÍÍ* +
Version
ÍÍ, 3
)
ÍÍ3 4
;
ÍÍ4 5
}
ÎÎ 	
public
ÌÌ 
override
ÌÌ 
int
ÌÌ 
GetHashCode
ÌÌ '
(
ÌÌ' (
)
ÌÌ( )
{
ÓÓ 	
return
ÔÔ 
HashCode
ÔÔ 
.
ÔÔ 
Combine
ÔÔ #
(
ÔÔ# $
Name
ÔÔ$ (
,
ÔÔ( )
Type
ÔÔ* .
)
ÔÔ. /
;
ÔÔ/ 0
}
 	
[
ÚÚ 	

MethodImpl
ÚÚ	 
(
ÚÚ 
MethodImplOptions
ÚÚ %
.
ÚÚ% &

NoInlining
ÚÚ& 0
)
ÚÚ0 1
]
ÚÚ1 2
private
ÛÛ 
static
ÛÛ 
void
ÛÛ (
ThrowArgumentNullException
ÛÛ 6
(
ÛÛ6 7
string
ÛÛ7 =
	paramName
ÛÛ> G
)
ÛÛG H
{
ÙÙ 	
throw
ıı 
new
ıı #
ArgumentNullException
ıı +
(
ıı+ ,
	paramName
ıı, 5
)
ıı5 6
;
ıı6 7
}
ˆˆ 	
}
˜˜ 
}¯¯ Ò
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceLocation.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

enum 
ResourceLocation  
{ 
Unspecified 
, 
Foot 
, 
Head 
, 
Inline 
}		 
}

 ∏
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceManagementOptions.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class %
ResourceManagementOptions *
{ 
public 
bool 
UseCdn 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 

CdnBaseUrl		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public 
bool 
	DebugMode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Culture 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
AppendVersion !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
true2 6
;6 7
public 
string 
ContentBasePath %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
String6 <
.< =
Empty= B
;B C
} 
} ’"
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
ResourceManifest !
{ 
private 
readonly 

Dictionary #
<# $
string$ *
,* +
IDictionary, 7
<7 8
string8 >
,> ?
IList@ E
<E F
ResourceDefinitionF X
>X Y
>Y Z
>Z [

_resources\ f
=g h
newi l

Dictionarym w
<w x
stringx ~
,~ 
IDictionary
Ä ã
<
ã å
string
å í
,
í ì
IList
î ô
<
ô ö 
ResourceDefinition
ö ¨
>
¨ ≠
>
≠ Æ
>
Æ Ø
(
Ø ∞
StringComparer
∞ æ
.
æ ø
OrdinalIgnoreCase
ø –
)
– —
;
— “
public

 
virtual

 
ResourceDefinition

 )
DefineResource

* 8
(

8 9
string

9 ?
resourceType

@ L
,

L M
string

N T
resourceName

U a
)

a b
{ 	
var 

definition 
= 
new  
ResourceDefinition! 3
(3 4
this4 8
,8 9
resourceType: F
,F G
resourceNameH T
)T U
;U V
var 
	resources 
= 
GetResources (
(( )
resourceType) 5
)5 6
;6 7
if 
( 
! 
	resources 
. 
ContainsKey &
(& '
resourceName' 3
)3 4
)4 5
{ 
	resources 
[ 
resourceName &
]& '
=( )
new* -
List. 2
<2 3
ResourceDefinition3 E
>E F
(F G
)G H
;H I
} 
	resources 
[ 
resourceName "
]" #
.# $
Add$ '
(' (

definition( 2
)2 3
;3 4
return 

definition 
; 
} 	
public 
ResourceDefinition !
DefineScript" .
(. /
string/ 5
name6 :
): ;
{ 	
return 
DefineResource !
(! "
$str" *
,* +
name, 0
)0 1
;1 2
} 	
public 
ResourceDefinition !
DefineStyle" -
(- .
string. 4
name5 9
)9 :
{ 	
return 
DefineResource !
(! "
$str" .
,. /
name0 4
)4 5
;5 6
} 	
public!! 
virtual!! 
IDictionary!! "
<!!" #
string!!# )
,!!) *
IList!!+ 0
<!!0 1
ResourceDefinition!!1 C
>!!C D
>!!D E
GetResources!!F R
(!!R S
string!!S Y
resourceType!!Z f
)!!f g
{"" 	
if## 
(## 
!## 

_resources## 
.## 
TryGetValue## '
(##' (
resourceType##( 4
,##4 5
out##6 9
var##: =
	resources##> G
)##G H
)##H I
{$$ 

_resources%% 
[%% 
resourceType%% '
]%%' (
=%%) *
	resources%%+ 4
=%%5 6
new%%7 :

Dictionary%%; E
<%%E F
string%%F L
,%%L M
IList%%N S
<%%S T
ResourceDefinition%%T f
>%%f g
>%%g h
(%%h i
StringComparer%%i w
.%%w x
OrdinalIgnoreCase	%%x â
)
%%â ä
;
%%ä ã
}&& 
return(( 
	resources(( 
;(( 
})) 	
public++ 
string++ 
BasePath++ 
{++  
get++! $
;++$ %
}++& '
=++( )
$str++* ,
;++, -
},, 
}-- –
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourcePosition.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

enum 
ResourcePosition  
{ 
ByDependency 
, 
First 
, 
Last 
} 
}		 ô
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement.Abstractions\ResourceRequiredContext.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class #
ResourceRequiredContext (
{ 
private		 
const		 
string		 
NotIE		 "
=		# $
$str		% *
;		* +
public 
ResourceDefinition !
Resource" *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
RequireSettings 
Settings '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public  
IFileVersionProvider #
FileVersionProvider$ 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
IHtmlContent 
GetHtmlContent *
(* +
string+ 1
appPath2 9
)9 :
{ 	
var 

tagBuilder 
= 
Resource %
.% &
GetTagBuilder& 3
(3 4
Settings4 <
,< =
appPath> E
,E F
FileVersionProviderG Z
)Z [
;[ \
if 
( 
String 
. 
IsNullOrEmpty $
($ %
Settings% -
.- .
	Condition. 7
)7 8
)8 9
{ 
return 

tagBuilder !
;! "
} 
var 
builder 
= 
new 
HtmlContentBuilder 0
(0 1
)1 2
;2 3
if 
( 
Settings 
. 
	Condition "
==# %
NotIE& +
)+ ,
{ 
builder 
. 

AppendHtml "
(" #
$str# -
+. /
Settings0 8
.8 9
	Condition9 B
+C D
$strE L
)L M
;M N
} 
else 
{ 
builder   
.   

AppendHtml   "
(  " #
$str  # -
+  . /
Settings  0 8
.  8 9
	Condition  9 B
+  C D
$str  E I
)  I J
;  J K
}!! 
builder## 
.## 

AppendHtml## 
(## 

tagBuilder## )
)##) *
;##* +
if%% 
(%% 
!%% 
string%% 
.%% 
IsNullOrEmpty%% %
(%%% &
Settings%%& .
.%%. /
	Condition%%/ 8
)%%8 9
)%%9 :
{&& 
if'' 
('' 
Settings'' 
.'' 
	Condition'' &
==''' )
NotIE''* /
)''/ 0
{(( 
builder)) 
.)) 

AppendHtml)) &
())& '
$str))' 9
)))9 :
;)): ;
}** 
else++ 
{,, 
builder-- 
.-- 

AppendHtml-- &
(--& '
$str--' 5
)--5 6
;--6 7
}.. 
}// 
return11 
builder11 
;11 
}22 	
}33 
}44 