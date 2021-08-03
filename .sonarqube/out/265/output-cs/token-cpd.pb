á
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\Properties\AssemblyInfo.cs
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
$str		 ;
)		; <
]		< =
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
]7 8¦#
›D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\Razor\ResourceCdnHelperExtensions.cs
public 
static 
class '
ResourceCdnHelperExtensions /
{		 
public 

static 
string 
ResourceUrl $
($ %
this% )
IOrchardHelper* 8
orchardHelper9 F
,F G
stringH N
resourcePathO [
,[ \
bool] a
?a b
appendVersionc p
=q r
nulls w
)w x
{ 
var 
options 
= 
orchardHelper #
.# $
HttpContext$ /
./ 0
RequestServices0 ?
.? @
GetRequiredService@ R
<R S
IOptionsS [
<[ \%
ResourceManagementOptions\ u
>u v
>v w
(w x
)x y
.y z
Valuez 
;	 €
var 
fileVersionProvider 
=  !
orchardHelper" /
./ 0
HttpContext0 ;
.; <
RequestServices< K
.K L
GetRequiredServiceL ^
<^ _ 
IFileVersionProvider_ s
>s t
(t u
)u v
;v w
if 

( 
resourcePath 
. 

StartsWith #
(# $
$str$ (
,( )
StringComparison* :
.: ;
Ordinal; B
)B C
)C D
{ 	
resourcePath 
= 
orchardHelper (
.( )
HttpContext) 4
.4 5
Request5 <
.< =
PathBase= E
.E F
AddF I
(I J
resourcePathJ V
.V W
	SubstringW `
(` a
$numa b
)b c
)c d
.d e
Valuee j
;j k
} 	
if 

( 
resourcePath 
!= 
null  
&&! #
($ %
(% &
appendVersion& 3
.3 4
HasValue4 <
&&= ?
appendVersion@ M
==N P
trueQ U
)U V
||W Y
( 
! 
appendVersion 
.  
HasValue  (
&&) +
options, 3
.3 4
AppendVersion4 A
==B D
trueE I
)I J
)J K
)K L
{ 	
resourcePath 
= 
fileVersionProvider .
.. / 
AddFileVersionToPath/ C
(C D
orchardHelperD Q
.Q R
HttpContextR ]
.] ^
Request^ e
.e f
PathBasef n
,n o
resourcePathp |
)| }
;} ~
} 	
if 

( 
! 
options 
. 
	DebugMode 
&& !
!" #
String# )
.) *
IsNullOrEmpty* 7
(7 8
options8 ?
.? @

CdnBaseUrl@ J
)J K
&&L N
!!! 
resourcePath!! 
.!! 

StartsWith!! $
(!!$ %
$str!!% /
,!!/ 0
StringComparison!!1 A
.!!A B
OrdinalIgnoreCase!!B S
)!!S T
&&!!U W
!"" 
resourcePath"" 
."" 

StartsWith"" $
(""$ %
$str""% .
,"". /
StringComparison""0 @
.""@ A
OrdinalIgnoreCase""A R
)""R S
&&""T V
!## 
resourcePath## 
.## 

StartsWith## $
(##$ %
$str##% )
,##) *
StringComparison##+ ;
.##; <
OrdinalIgnoreCase##< M
)##M N
&&##O Q
!$$ 
resourcePath$$ 
.$$ 

StartsWith$$ $
($$$ %
$str$$% .
,$$. /
StringComparison$$0 @
.$$@ A
OrdinalIgnoreCase$$A R
)$$R S
)$$S T
{%% 	
resourcePath&& 
=&& 
options&& "
.&&" #

CdnBaseUrl&&# -
+&&. /
resourcePath&&0 <
;&&< =
}'' 	
return)) 
resourcePath)) 
;)) 
}** 
}++ ½
ŒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ResourceDictionary.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class 
ResourceDictionary #
:$ %
OrderedDictionary& 7
{		 
private

 
readonly

 
Stack

 
<

 
ResourceDefinition

 1
>

1 2

_expanding

3 =
=

> ?
new

@ C
Stack

D I
<

I J
ResourceDefinition

J \
>

\ ]
(

] ^
)

^ _
;

_ `
public 
int 

FirstCount 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
int 
	LastCount 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
void  
AddExpandingResource (
(( )
ResourceDefinition) ;
resource< D
,D E
RequireSettingsF U
settingsV ^
)^ _
{ 	
if 
( 

_expanding 
. 
Contains #
(# $
resource$ ,
), -
)- .
{ 
throw 
new %
InvalidOperationException 3
(3 4
$"4 6)
Circular dependency of type '6 S
{S T
settingsT \
.\ ]
Type] a
}a b 
' detected between 'b v
{v w
settingsw 
.	 €
Name
€ „
}
„ …
' and '
… Œ
{
Œ 
resource
 •
.
• –
Name
– š
}
š ›
'
› œ
"
œ 
)
 
;
 Ÿ
} 

_expanding 
. 
Push 
( 
resource $
)$ %
;% &
} 	
public 
void 
AddExpandedResource '
(' (
ResourceDefinition( :
resource; C
,C D
RequireSettingsE T
settingsU ]
)] ^
{ 	

_expanding 
. 
Pop 
( 
) 
; 
if 
( 
settings 
. 
Position !
!=" $
ResourcePosition% 5
.5 6
ByDependency6 B
)B C
{ 
var 
existing 
= 
(  
RequireSettings  /
)/ 0
this0 4
[4 5
resource5 =
]= >
;> ?
if   
(   
existing   
==   
null    $
||  % '
existing  ( 0
.  0 1
Position  1 9
==  : <
ResourcePosition  = M
.  M N
ByDependency  N Z
)  Z [
{!! 
if"" 
("" 
settings""  
.""  !
Position""! )
==""* ,
ResourcePosition""- =
.""= >
First""> C
)""C D
{## 

FirstCount$$ "
++$$" $
;$$$ %
}%% 
if'' 
('' 
settings''  
.''  !
Position''! )
==''* ,
ResourcePosition''- =
.''= >
Last''> B
)''B C
{(( 
	LastCount)) !
++))! #
;))# $
}** 
}++ 
},, 
this.. 
[.. 
resource.. 
].. 
=.. 
settings.. %
;..% &
}// 	
}00 
}11 Ô—
‰D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ResourceManager.cs
	namespace

 	
OrchardCore


 
.

 
ResourceManagement

 (
{ 
public 

class 
ResourceManager  
:! "
IResourceManager# 3
{ 
private 
readonly 

Dictionary #
<# $
ResourceTypeName$ 4
,4 5
RequireSettings6 E
>E F
	_requiredG P
=Q R
newS V

DictionaryW a
<a b
ResourceTypeNameb r
,r s
RequireSettings	t ƒ
>
ƒ „
(
„ …
)
… †
;
† ‡
private 
readonly 

Dictionary #
<# $
string$ *
,* +#
ResourceRequiredContext, C
[C D
]D E
>E F
_builtResourcesG V
;V W
private 
readonly 
IEnumerable $
<$ %%
IResourceManifestProvider% >
>> ?

_providers@ J
;J K
private 
readonly  
IFileVersionProvider - 
_fileVersionProvider. B
;B C
private 
ResourceManifest  
_dynamicManifest! 1
;1 2
private 
List 
< 
	LinkEntry 
> 
_links  &
;& '
private 

Dictionary 
< 
string !
,! "
	MetaEntry# ,
>, -
_metas. 4
;4 5
private 
List 
< 
IHtmlContent !
>! "
_headScripts# /
;/ 0
private 
List 
< 
IHtmlContent !
>! "
_footScripts# /
;/ 0
private 
List 
< 
IHtmlContent !
>! "
_styles# *
;* +
private 
HashSet 
< 
string 
> 
_localScripts  -
;- .
private 
HashSet 
< 
string 
> 
_localStyles  ,
;, -
private 
readonly "
IResourceManifestState /"
_resourceManifestState0 F
;F G
private 
readonly %
ResourceManagementOptions 2
_options3 ;
;; <
public 
ResourceManager 
( 
IEnumerable   
<   %
IResourceManifestProvider   1
>  1 2
resourceProviders  3 D
,  D E"
IResourceManifestState!! "!
resourceManifestState!!# 8
,!!8 9
IOptions"" 
<"" %
ResourceManagementOptions"" .
>"". /
options""0 7
,""7 8 
IFileVersionProvider##  
fileVersionProvider##! 4
)##4 5
{$$ 	"
_resourceManifestState%% "
=%%# $!
resourceManifestState%%% :
;%%: ;
_options&& 
=&& 
options&& 
.&& 
Value&& $
;&&$ %

_providers'' 
='' 
resourceProviders'' *
;''* + 
_fileVersionProvider((  
=((! "
fileVersionProvider((# 6
;((6 7
_builtResources** 
=** 
new** !

Dictionary**" ,
<**, -
string**- 3
,**3 4#
ResourceRequiredContext**5 L
[**L M
]**M N
>**N O
(**O P
StringComparer**P ^
.**^ _
OrdinalIgnoreCase**_ p
)**p q
;**q r
}++ 	
public-- 
IEnumerable-- 
<-- 
ResourceManifest-- +
>--+ ,
ResourceManifests--- >
{.. 	
get// 
{00 
if11 
(11 "
_resourceManifestState11 *
.11* +
ResourceManifests11+ <
==11= ?
null11@ D
)11D E
{22 
var33 
builder33 
=33  !
new33" %#
ResourceManifestBuilder33& =
(33= >
)33> ?
;33? @
foreach44 
(44 
var44  
provider44! )
in44* ,

_providers44- 7
)447 8
{55 
provider66  
.66  !
BuildManifests66! /
(66/ 0
builder660 7
)667 8
;668 9
}77 "
_resourceManifestState88 *
.88* +
ResourceManifests88+ <
=88= >
builder88? F
.88F G
ResourceManifests88G X
;88X Y
}99 
return:: "
_resourceManifestState:: -
.::- .
ResourceManifests::. ?
;::? @
};; 
}<< 	
public>> 
ResourceManifest>> 
InlineManifest>>  .
=>>>/ 1
_dynamicManifest>>2 B
??=>>C F
new>>G J
ResourceManifest>>K [
(>>[ \
)>>\ ]
;>>] ^
public@@ 
RequireSettings@@ 
RegisterResource@@ /
(@@/ 0
string@@0 6
resourceType@@7 C
,@@C D
string@@E K
resourceName@@L X
)@@X Y
{AA 	
ifBB 
(BB 
resourceTypeBB 
==BB 
nullBB  $
)BB$ %
{CC 
returnDD &
ThrowArgumentNullExceptionDD 1
<DD1 2
RequireSettingsDD2 A
>DDA B
(DDB C
nameofDDC I
(DDI J
resourceTypeDDJ V
)DDV W
)DDW X
;DDX Y
}EE 
ifGG 
(GG 
resourceNameGG 
==GG 
nullGG  $
)GG$ %
{HH 
returnII &
ThrowArgumentNullExceptionII 1
<II1 2
RequireSettingsII2 A
>IIA B
(IIB C
nameofIIC I
(III J
resourceNameIIJ V
)IIV W
)IIW X
;IIX Y
}JJ 
varLL 
keyLL 
=LL 
newLL 
ResourceTypeNameLL *
(LL* +
resourceTypeLL+ 7
,LL7 8
resourceNameLL9 E
)LLE F
;LLF G
ifMM 
(MM 
!MM 
	_requiredMM 
.MM 
TryGetValueMM &
(MM& '
keyMM' *
,MM* +
outMM, /
varMM0 3
settingsMM4 <
)MM< =
)MM= >
{NN 
settingsOO 
=OO 
newOO 
RequireSettingsOO .
(OO. /
_optionsOO/ 7
)OO7 8
{PP 
TypeQQ 
=QQ 
resourceTypeQQ '
,QQ' (
NameRR 
=RR 
resourceNameRR '
}SS 
;SS 
	_requiredTT 
[TT 
keyTT 
]TT 
=TT  
settingsTT! )
;TT) *
}UU 
_builtResourcesVV 
[VV 
resourceTypeVV (
]VV( )
=VV* +
nullVV, 0
;VV0 1
returnWW 
settingsWW 
;WW 
}XX 	
publicZZ 
RequireSettingsZZ 
RegisterUrlZZ *
(ZZ* +
stringZZ+ 1
resourceTypeZZ2 >
,ZZ> ?
stringZZ@ F
resourcePathZZG S
,ZZS T
stringZZU [
resourceDebugPathZZ\ m
)ZZm n
{[[ 	
if\\ 
(\\ 
resourceType\\ 
==\\ 
null\\  $
)\\$ %
{]] 
return^^ &
ThrowArgumentNullException^^ 1
<^^1 2
RequireSettings^^2 A
>^^A B
(^^B C
nameof^^C I
(^^I J
resourceType^^J V
)^^V W
)^^W X
;^^X Y
}__ 
ifaa 
(aa 
resourcePathaa 
==aa 
nullaa  $
)aa$ %
{bb 
returncc &
ThrowArgumentNullExceptioncc 1
<cc1 2
RequireSettingscc2 A
>ccA B
(ccB C
nameofccC I
(ccI J
resourcePathccJ V
)ccV W
)ccW X
;ccX Y
}dd 
ifhh 
(hh 
resourcePathhh 
.hh 

StartsWithhh '
(hh' (
$strhh( ,
,hh, -
StringComparisonhh. >
.hh> ?
Ordinalhh? F
)hhF G
)hhG H
{ii 
resourcePathjj 
=jj 
_optionsjj '
.jj' (
ContentBasePathjj( 7
+jj8 9
resourcePathjj: F
.jjF G
	SubstringjjG P
(jjP Q
$numjjQ R
)jjR S
;jjS T
}kk 
ifmm 
(mm 
resourceDebugPathmm !
!=mm" $
nullmm% )
&&mm* ,
resourceDebugPathmm- >
.mm> ?

StartsWithmm? I
(mmI J
$strmmJ N
,mmN O
StringComparisonmmP `
.mm` a
Ordinalmma h
)mmh i
)mmi j
{nn 
resourceDebugPathoo !
=oo" #
_optionsoo$ ,
.oo, -
ContentBasePathoo- <
+oo= >
resourceDebugPathoo? P
.ooP Q
	SubstringooQ Z
(ooZ [
$numoo[ \
)oo\ ]
;oo] ^
}pp 
returnrr 
RegisterResourcerr #
(rr# $
resourceTypess 
,ss 
GetResourceKeytt 
(tt 
resourcePathtt +
,tt+ ,
resourceDebugPathtt- >
)tt> ?
)tt? @
.tt@ A
DefinettA G
(ttG H
dttH I
=>ttJ L
dttM N
.ttN O
SetUrlttO U
(ttU V
resourcePathttV b
,ttb c
resourceDebugPathttd u
)ttu v
)ttv w
;ttw x
}uu 	
publicww 
voidww 
RegisterHeadScriptww &
(ww& '
IHtmlContentww' 3
scriptww4 :
)ww: ;
{xx 	
ifyy 
(yy 
_headScriptsyy 
==yy 
nullyy  $
)yy$ %
{zz 
_headScripts{{ 
={{ 
new{{ "
List{{# '
<{{' (
IHtmlContent{{( 4
>{{4 5
({{5 6
){{6 7
;{{7 8
}|| 
_headScripts~~ 
.~~ 
Add~~ 
(~~ 
script~~ #
)~~# $
;~~$ %
} 	
public
 
void
  
RegisterFootScript
 &
(
& '
IHtmlContent
' 3
script
4 :
)
: ;
{
‚‚ 	
if
ƒƒ 
(
ƒƒ 
_footScripts
ƒƒ 
==
ƒƒ 
null
ƒƒ  $
)
ƒƒ$ %
{
„„ 
_footScripts
…… 
=
…… 
new
…… "
List
……# '
<
……' (
IHtmlContent
……( 4
>
……4 5
(
……5 6
)
……6 7
;
……7 8
}
†† 
_footScripts
ˆˆ 
.
ˆˆ 
Add
ˆˆ 
(
ˆˆ 
script
ˆˆ #
)
ˆˆ# $
;
ˆˆ$ %
}
‰‰ 	
public
‹‹ 
void
‹‹ 
RegisterStyle
‹‹ !
(
‹‹! "
IHtmlContent
‹‹" .
style
‹‹/ 4
)
‹‹4 5
{
ŒŒ 	
if
 
(
 
_styles
 
==
 
null
 
)
  
{
 
_styles
 
=
 
new
 
List
 "
<
" #
IHtmlContent
# /
>
/ 0
(
0 1
)
1 2
;
2 3
}
 
_styles
’’ 
.
’’ 
Add
’’ 
(
’’ 
style
’’ 
)
’’ 
;
’’ 
}
““ 	
public
•• 
void
•• 
NotRequired
•• 
(
••  
string
••  &
resourceType
••' 3
,
••3 4
string
••5 ;
resourceName
••< H
)
••H I
{
–– 	
if
—— 
(
—— 
resourceType
—— 
==
—— 
null
——  $
)
——$ %
{
˜˜ (
ThrowArgumentNullException
™™ *
(
™™* +
nameof
™™+ 1
(
™™1 2
resourceType
™™2 >
)
™™> ?
)
™™? @
;
™™@ A
return
šš 
;
šš 
}
›› 
if
 
(
 
resourceName
 
==
 
null
  $
)
$ %
{
 (
ThrowArgumentNullException
ŸŸ *
(
ŸŸ* +
nameof
ŸŸ+ 1
(
ŸŸ1 2
resourceName
ŸŸ2 >
)
ŸŸ> ?
)
ŸŸ? @
;
ŸŸ@ A
return
   
;
   
}
¡¡ 
var
££ 
key
££ 
=
££ 
new
££ 
ResourceTypeName
££ *
(
££* +
resourceType
££+ 7
,
££7 8
resourceName
££9 E
)
££E F
;
££F G
_builtResources
¤¤ 
[
¤¤ 
resourceType
¤¤ (
]
¤¤( )
=
¤¤* +
null
¤¤, 0
;
¤¤0 1
	_required
¥¥ 
.
¥¥ 
Remove
¥¥ 
(
¥¥ 
key
¥¥  
)
¥¥  !
;
¥¥! "
}
¦¦ 	
public
¨¨  
ResourceDefinition
¨¨ !
FindResource
¨¨" .
(
¨¨. /
RequireSettings
¨¨/ >
settings
¨¨? G
)
¨¨G H
{
©© 	
return
ªª 
FindResource
ªª 
(
ªª  
settings
ªª  (
,
ªª( )
true
ªª* .
)
ªª. /
;
ªª/ 0
}
«« 	
private
­­  
ResourceDefinition
­­ "
FindResource
­­# /
(
­­/ 0
RequireSettings
­­0 ?
settings
­­@ H
,
­­H I
bool
­­J N&
resolveInlineDefinitions
­­O g
)
­­g h
{
®® 	
var
´´ 
name
´´ 
=
´´ 
settings
´´ 
.
´´  
Name
´´  $
??
´´% '
$str
´´( *
;
´´* +
var
µµ 
type
µµ 
=
µµ 
settings
µµ 
.
µµ  
Type
µµ  $
;
µµ$ %
var
·· 
stream
·· 
=
·· 
ResourceManifests
·· *
.
··* +

SelectMany
··+ 5
(
··5 6
x
··6 7
=>
··8 :
x
··; <
.
··< =
GetResources
··= I
(
··I J
type
··J N
)
··N O
)
··O P
;
··P Q
var
¸¸ 
resource
¸¸ 
=
¸¸ "
FindMatchingResource
¸¸ /
(
¸¸/ 0
stream
¸¸0 6
,
¸¸6 7
settings
¸¸8 @
,
¸¸@ A
name
¸¸B F
)
¸¸F G
;
¸¸G H
if
ºº 
(
ºº 
resource
ºº 
==
ºº 
null
ºº  
&&
ºº! #
_dynamicManifest
ºº$ 4
!=
ºº5 7
null
ºº8 <
)
ºº< =
{
»» 
stream
¼¼ 
=
¼¼ 
_dynamicManifest
¼¼ )
.
¼¼) *
GetResources
¼¼* 6
(
¼¼6 7
type
¼¼7 ;
)
¼¼; <
;
¼¼< =
resource
½½ 
=
½½ "
FindMatchingResource
½½ /
(
½½/ 0
stream
½½0 6
,
½½6 7
settings
½½8 @
,
½½@ A
name
½½B F
)
½½F G
;
½½G H
}
¾¾ 
if
ÀÀ 
(
ÀÀ &
resolveInlineDefinitions
ÀÀ (
&&
ÀÀ) +
resource
ÀÀ, 4
==
ÀÀ5 7
null
ÀÀ8 <
)
ÀÀ< =
{
ÁÁ 
if
ÄÄ 
(
ÄÄ &
ResolveInlineDefinitions
ÄÄ ,
(
ÄÄ, -
settings
ÄÄ- 5
.
ÄÄ5 6
Type
ÄÄ6 :
)
ÄÄ: ;
)
ÄÄ; <
{
ÅÅ 
resource
ÇÇ 
=
ÇÇ 
FindResource
ÇÇ +
(
ÇÇ+ ,
settings
ÇÇ, 4
,
ÇÇ4 5
false
ÇÇ6 ;
)
ÇÇ; <
;
ÇÇ< =
}
ÈÈ 
}
ÉÉ 
return
ËË 
resource
ËË 
;
ËË 
}
ÌÌ 	
private
ÎÎ  
ResourceDefinition
ÎÎ ""
FindMatchingResource
ÎÎ# 7
(
ÎÎ7 8
IEnumerable
ÏÏ 
<
ÏÏ 
KeyValuePair
ÏÏ $
<
ÏÏ$ %
string
ÏÏ% +
,
ÏÏ+ ,
IList
ÏÏ- 2
<
ÏÏ2 3 
ResourceDefinition
ÏÏ3 E
>
ÏÏE F
>
ÏÏF G
>
ÏÏG H
stream
ÏÏI O
,
ÏÏO P
RequireSettings
ĞĞ 
settings
ĞĞ $
,
ĞĞ$ %
string
ÑÑ 
name
ÑÑ 
)
ÑÑ 
{
ÒÒ 	
Version
ÓÓ 
lower
ÓÓ 
=
ÓÓ 
null
ÓÓ  
;
ÓÓ  !
Version
ÔÔ 
upper
ÔÔ 
=
ÔÔ 
null
ÔÔ  
;
ÔÔ  !
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
String
ÕÕ 
.
ÕÕ 
IsNullOrEmpty
ÕÕ %
(
ÕÕ% &
settings
ÕÕ& .
.
ÕÕ. /
Version
ÕÕ/ 6
)
ÕÕ6 7
)
ÕÕ7 8
{
ÖÖ 
lower
ØØ 
=
ØØ "
GetLowerBoundVersion
ØØ ,
(
ØØ, -
settings
ØØ- 5
.
ØØ5 6
Version
ØØ6 =
)
ØØ= >
;
ØØ> ?
upper
ÙÙ 
=
ÙÙ "
GetUpperBoundVersion
ÙÙ ,
(
ÙÙ, -
settings
ÙÙ- 5
.
ÙÙ5 6
Version
ÙÙ6 =
)
ÙÙ= >
;
ÙÙ> ?
}
ÚÚ  
ResourceDefinition
ÜÜ 
resource
ÜÜ '
=
ÜÜ( )
null
ÜÜ* .
;
ÜÜ. /
foreach
İİ 
(
İİ 
var
İİ 
r
İİ 
in
İİ 
stream
İİ $
)
İİ$ %
{
ŞŞ 
if
ßß 
(
ßß 
String
ßß 
.
ßß 
Equals
ßß !
(
ßß! "
r
ßß" #
.
ßß# $
Key
ßß$ '
,
ßß' (
name
ßß) -
,
ßß- .
StringComparison
ßß/ ?
.
ßß? @
OrdinalIgnoreCase
ßß@ Q
)
ßßQ R
)
ßßR S
{
àà 
foreach
áá 
(
áá 
var
áá   
resourceDefinition
áá! 3
in
áá4 6
r
áá7 8
.
áá8 9
Value
áá9 >
)
áá> ?
{
ââ 
var
ãã 
version
ãã #
=
ãã$ % 
resourceDefinition
ãã& 8
.
ãã8 9
Version
ãã9 @
!=
ããA C
null
ããD H
?
ää 
new
ää !
Version
ää" )
(
ää) * 
resourceDefinition
ää* <
.
ää< =
Version
ää= D
)
ääD E
:
åå 
null
åå "
;
åå" #
if
çç 
(
çç 
lower
çç !
!=
çç" $
null
çç% )
)
çç) *
{
èè 
if
éé 
(
éé  
lower
éé  %
>
éé& '
version
éé( /
||
éé0 2
version
éé3 :
>=
éé; =
upper
éé> C
)
ééC D
{
êê 
continue
ëë  (
;
ëë( )
}
ìì 
}
íí 
if
ğğ 
(
ğğ 
resource
ğğ $
==
ğğ% '
null
ğğ( ,
||
ññ 
(
ññ   
resourceDefinition
ññ  2
.
ññ2 3
Version
ññ3 :
!=
ññ; =
null
ññ> B
&&
ññC E
new
ññF I
Version
ññJ Q
(
ññQ R
resource
ññR Z
.
ññZ [
Version
ññ[ b
)
ññb c
<
ññd e
version
ññf m
)
ññm n
)
ññn o
{
òò 
resource
óó $
=
óó% & 
resourceDefinition
óó' 9
;
óó9 :
}
ôô 
}
õõ 
}
öö 
}
÷÷ 
return
ùù 
resource
ùù 
;
ùù 
}
úú 	
private
€€ 
Version
€€ "
GetUpperBoundVersion
€€ ,
(
€€, -
string
€€- 3
minimumVersion
€€4 B
)
€€B C
{
 	
if
‚‚ 
(
‚‚ 
!
‚‚ 
Version
‚‚ 
.
‚‚ 
TryParse
‚‚ !
(
‚‚! "
minimumVersion
‚‚" 0
,
‚‚0 1
out
‚‚2 5
var
‚‚6 9
version
‚‚: A
)
‚‚A B
)
‚‚B C
{
ƒƒ 
if
…… 
(
…… 
Int32
…… 
.
…… 
TryParse
…… "
(
……" #
minimumVersion
……# 1
,
……1 2
out
……3 6
var
……7 :
major
……; @
)
……@ A
)
……A B
{
†† 
return
‡‡ 
new
‡‡ 
Version
‡‡ &
(
‡‡& '
major
‡‡' ,
+
‡‡- .
$num
‡‡/ 0
,
‡‡0 1
$num
‡‡2 3
,
‡‡3 4
$num
‡‡5 6
)
‡‡6 7
;
‡‡7 8
}
ˆˆ 
}
‰‰ 
if
‹‹ 
(
‹‹ 
version
‹‹ 
.
‹‹ 
Build
‹‹ 
!=
‹‹  
-
‹‹! "
$num
‹‹" #
)
‹‹# $
{
ŒŒ 
return
 
new
 
Version
 "
(
" #
version
# *
.
* +
Major
+ 0
,
0 1
version
2 9
.
9 :
Minor
: ?
,
? @
version
A H
.
H I
Build
I N
+
O P
$num
Q R
)
R S
;
S T
}
 
if
 
(
 
version
 
.
 
Minor
 
!=
  
-
! "
$num
" #
)
# $
{
‘‘ 
return
’’ 
new
’’ 
Version
’’ "
(
’’" #
version
’’# *
.
’’* +
Major
’’+ 0
,
’’0 1
version
’’2 9
.
’’9 :
Minor
’’: ?
+
’’@ A
$num
’’B C
,
’’C D
$num
’’E F
)
’’F G
;
’’G H
}
““ 
return
•• 
version
•• 
;
•• 
}
–– 	
private
œœ 
Version
œœ "
GetLowerBoundVersion
œœ ,
(
œœ, -
string
œœ- 3
minimumVersion
œœ4 B
)
œœB C
{
 	
if
 
(
 
!
 
Version
 
.
 
TryParse
 !
(
! "
minimumVersion
" 0
,
0 1
out
2 5
var
6 9
version
: A
)
A B
)
B C
{
ŸŸ 
if
¡¡ 
(
¡¡ 
Int32
¡¡ 
.
¡¡ 
TryParse
¡¡ "
(
¡¡" #
minimumVersion
¡¡# 1
,
¡¡1 2
out
¡¡3 6
var
¡¡7 :
major
¡¡; @
)
¡¡@ A
)
¡¡A B
{
¢¢ 
return
££ 
new
££ 
Version
££ &
(
££& '
major
££' ,
,
££, -
$num
££. /
,
££/ 0
$num
££1 2
)
££2 3
;
££3 4
}
¤¤ 
}
¥¥ 
return
§§ 
version
§§ 
;
§§ 
}
¨¨ 	
private
ªª 
bool
ªª &
ResolveInlineDefinitions
ªª -
(
ªª- .
string
ªª. 4
resourceType
ªª5 A
)
ªªA B
{
«« 	
var
¬¬ 
anyWereDefined
¬¬ 
=
¬¬  
false
¬¬! &
;
¬¬& '
foreach
­­ 
(
­­ 
var
­­ 
settings
­­ !
in
­­" $&
ResolveRequiredResources
­­% =
(
­­= >
resourceType
­­> J
)
­­J K
)
­­K L
{
®® 
if
¯¯ 
(
¯¯ 
settings
¯¯ 
.
¯¯ 
InlineDefinition
¯¯ -
==
¯¯. 0
null
¯¯1 5
)
¯¯5 6
{
°° 
continue
±± 
;
±± 
}
²² 
var
µµ 
resource
µµ 
=
µµ 
FindResource
µµ +
(
µµ+ ,
settings
µµ, 4
,
µµ4 5
false
µµ6 ;
)
µµ; <
;
µµ< =
if
¶¶ 
(
¶¶ 
resource
¶¶ 
==
¶¶ 
null
¶¶  $
)
¶¶$ %
{
·· 
resource
¹¹ 
=
¹¹ 
InlineManifest
¹¹ -
.
¹¹- .
DefineResource
¹¹. <
(
¹¹< =
resourceType
¹¹= I
,
¹¹I J
settings
¹¹K S
.
¹¹S T
Name
¹¹T X
)
¹¹X Y
.
¹¹Y Z
SetBasePath
¹¹Z e
(
¹¹e f
settings
¹¹f n
.
¹¹n o
BasePath
¹¹o w
)
¹¹w x
;
¹¹x y
anyWereDefined
ºº "
=
ºº# $
true
ºº% )
;
ºº) *
}
»» 
settings
¼¼ 
.
¼¼ 
InlineDefinition
¼¼ )
(
¼¼) *
resource
¼¼* 2
)
¼¼2 3
;
¼¼3 4
settings
½½ 
.
½½ 
InlineDefinition
½½ )
=
½½* +
null
½½, 0
;
½½0 1
}
¾¾ 
return
¿¿ 
anyWereDefined
¿¿ !
;
¿¿! "
}
ÀÀ 	
private
ÂÂ 
IEnumerable
ÂÂ 
<
ÂÂ 
RequireSettings
ÂÂ +
>
ÂÂ+ ,&
ResolveRequiredResources
ÂÂ- E
(
ÂÂE F
string
ÂÂF L
resourceType
ÂÂM Y
)
ÂÂY Z
{
ÃÃ 	
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
(
ÄÄ 
key
ÄÄ 
,
ÄÄ 
value
ÄÄ $
)
ÄÄ$ %
in
ÄÄ& (
	_required
ÄÄ) 2
)
ÄÄ2 3
{
ÅÅ 
if
ÆÆ 
(
ÆÆ 
key
ÆÆ 
.
ÆÆ 
Type
ÆÆ 
==
ÆÆ 
resourceType
ÆÆ  ,
)
ÆÆ, -
{
ÇÇ 
yield
ÈÈ 
return
ÈÈ  
value
ÈÈ! &
;
ÈÈ& '
}
ÉÉ 
}
ÊÊ 
}
ËË 	
public
ÍÍ 
IEnumerable
ÍÍ 
<
ÍÍ 
	LinkEntry
ÍÍ $
>
ÍÍ$ % 
GetRegisteredLinks
ÍÍ& 8
(
ÍÍ8 9
)
ÍÍ9 :
=>
ÍÍ; ="
DoGetRegisteredLinks
ÍÍ> R
(
ÍÍR S
)
ÍÍS T
;
ÍÍT U
private
ÏÏ 
List
ÏÏ 
<
ÏÏ 
	LinkEntry
ÏÏ 
>
ÏÏ "
DoGetRegisteredLinks
ÏÏ  4
(
ÏÏ4 5
)
ÏÏ5 6
{
ĞĞ 	
return
ÑÑ 
_links
ÑÑ 
??
ÑÑ 
	EmptyList
ÑÑ &
<
ÑÑ& '
	LinkEntry
ÑÑ' 0
>
ÑÑ0 1
.
ÑÑ1 2
Instance
ÑÑ2 :
;
ÑÑ: ;
}
ÒÒ 	
public
ÔÔ 
IEnumerable
ÔÔ 
<
ÔÔ 
	MetaEntry
ÔÔ $
>
ÔÔ$ % 
GetRegisteredMetas
ÔÔ& 8
(
ÔÔ8 9
)
ÔÔ9 :
=>
ÔÔ; ="
DoGetRegisteredMetas
ÔÔ> R
(
ÔÔR S
)
ÔÔS T
;
ÔÔT U
private
ÖÖ 

Dictionary
ÖÖ 
<
ÖÖ 
string
ÖÖ !
,
ÖÖ! "
	MetaEntry
ÖÖ# ,
>
ÖÖ, -
.
ÖÖ- .
ValueCollection
ÖÖ. ="
DoGetRegisteredMetas
ÖÖ> R
(
ÖÖR S
)
ÖÖS T
{
×× 	
return
ØØ 
_metas
ØØ 
?
ØØ 
.
ØØ 
Values
ØØ !
??
ØØ" $"
EmptyValueCollection
ØØ% 9
<
ØØ9 :
	MetaEntry
ØØ: C
>
ØØC D
.
ØØD E
Instance
ØØE M
;
ØØM N
}
ÙÙ 	
public
ÛÛ 
IEnumerable
ÛÛ 
<
ÛÛ 
IHtmlContent
ÛÛ '
>
ÛÛ' (&
GetRegisteredHeadScripts
ÛÛ) A
(
ÛÛA B
)
ÛÛB C
=>
ÛÛD F(
DoGetRegisteredHeadScripts
ÛÛG a
(
ÛÛa b
)
ÛÛb c
;
ÛÛc d
public
İİ 
List
İİ 
<
İİ 
IHtmlContent
İİ  
>
İİ  !(
DoGetRegisteredHeadScripts
İİ" <
(
İİ< =
)
İİ= >
{
ŞŞ 	
return
ßß 
_headScripts
ßß 
??
ßß  "
	EmptyList
ßß# ,
<
ßß, -
IHtmlContent
ßß- 9
>
ßß9 :
.
ßß: ;
Instance
ßß; C
;
ßßC D
}
àà 	
public
ââ 
IEnumerable
ââ 
<
ââ 
IHtmlContent
ââ '
>
ââ' (&
GetRegisteredFootScripts
ââ) A
(
ââA B
)
ââB C
=>
ââD F(
DoGetRegisteredFootScripts
ââG a
(
ââa b
)
ââb c
;
ââc d
public
ää 
List
ää 
<
ää 
IHtmlContent
ää  
>
ää  !(
DoGetRegisteredFootScripts
ää" <
(
ää< =
)
ää= >
{
åå 	
return
ææ 
_footScripts
ææ 
??
ææ  "
	EmptyList
ææ# ,
<
ææ, -
IHtmlContent
ææ- 9
>
ææ9 :
.
ææ: ;
Instance
ææ; C
;
ææC D
}
çç 	
public
éé 
IEnumerable
éé 
<
éé 
IHtmlContent
éé '
>
éé' (!
GetRegisteredStyles
éé) <
(
éé< =
)
éé= >
=>
éé? A#
DoGetRegisteredStyles
ééB W
(
ééW X
)
ééX Y
;
ééY Z
public
ëë 
List
ëë 
<
ëë 
IHtmlContent
ëë  
>
ëë  !#
DoGetRegisteredStyles
ëë" 7
(
ëë7 8
)
ëë8 9
{
ìì 	
return
íí 
_styles
íí 
??
íí 
	EmptyList
íí '
<
íí' (
IHtmlContent
íí( 4
>
íí4 5
.
íí5 6
Instance
íí6 >
;
íí> ?
}
îî 	
public
ğğ 
IEnumerable
ğğ 
<
ğğ %
ResourceRequiredContext
ğğ 2
>
ğğ2 3"
GetRequiredResources
ğğ4 H
(
ğğH I
string
ğğI O
resourceType
ğğP \
)
ğğ\ ]
=>
ññ $
DoGetRequiredResources
ññ %
(
ññ% &
resourceType
ññ& 2
)
ññ2 3
;
ññ3 4
private
óó %
ResourceRequiredContext
óó '
[
óó' (
]
óó( )$
DoGetRequiredResources
óó* @
(
óó@ A
string
óóA G
resourceType
óóH T
)
óóT U
{
ôô 	
if
õõ 
(
õõ 
_builtResources
õõ 
.
õõ  
TryGetValue
õõ  +
(
õõ+ ,
resourceType
õõ, 8
,
õõ8 9
out
õõ: =
var
õõ> A
requiredResources
õõB S
)
õõS T
&&
õõU W
requiredResources
õõX i
!=
õõj l
null
õõm q
)
õõq r
{
öö 
return
÷÷ 
requiredResources
÷÷ (
;
÷÷( )
}
øø 
var
úú 
allResources
úú 
=
úú 
new
úú " 
ResourceDictionary
úú# 5
(
úú5 6
)
úú6 7
;
úú7 8
foreach
ûû 
(
ûû 
var
ûû 
settings
ûû !
in
ûû" $&
ResolveRequiredResources
ûû% =
(
ûû= >
resourceType
ûû> J
)
ûûJ K
)
ûûK L
{
üü 
var
ıı 
resource
ıı 
=
ıı 
FindResource
ıı +
(
ıı+ ,
settings
ıı, 4
)
ıı4 5
;
ıı5 6
if
şş 
(
şş 
resource
şş 
==
şş 
null
şş  $
)
şş$ %
{
ÿÿ 
throw
€€ 
new
€€ '
InvalidOperationException
€€ 7
(
€€7 8
$"
€€8 :1
#Could not find a resource of type '
€€: ]
{
€€] ^
settings
€€^ f
.
€€f g
Type
€€g k
}
€€k l
	' named '
€€l u
{
€€u v
settings
€€v ~
.
€€~ 
Name€€ ƒ
}€€ƒ „ 
' with version '€€„ ”
{€€” •
settings€€• 
.€€ 
Version€€ ¥
??€€¦ ¨
$str€€© ®
}€€® ¯
'.€€¯ ±
"€€± ²
)€€² ³
;€€³ ´
}
  
ExpandDependencies
ƒƒ "
(
ƒƒ" #
resource
ƒƒ# +
,
ƒƒ+ ,
settings
ƒƒ- 5
,
ƒƒ5 6
allResources
ƒƒ7 C
)
ƒƒC D
;
ƒƒD E
}
„„ 
requiredResources
†† 
=
†† 
new
††  #%
ResourceRequiredContext
††$ ;
[
††; <
allResources
††< H
.
††H I
Count
††I N
]
††N O
;
††O P
int
‡‡ 
i
‡‡ 
,
‡‡ 
first
‡‡ 
=
‡‡ 
$num
‡‡ 
,
‡‡ 
byDependency
‡‡ *
=
‡‡+ ,
allResources
‡‡- 9
.
‡‡9 :

FirstCount
‡‡: D
,
‡‡D E
last
‡‡F J
=
‡‡K L
allResources
‡‡M Y
.
‡‡Y Z
Count
‡‡Z _
-
‡‡` a
allResources
‡‡b n
.
‡‡n o
	LastCount
‡‡o x
;
‡‡x y
foreach
ˆˆ 
(
ˆˆ 
DictionaryEntry
ˆˆ $
entry
ˆˆ% *
in
ˆˆ+ -
allResources
ˆˆ. :
)
ˆˆ: ;
{
‰‰ 
var
ŠŠ 
settings
ŠŠ 
=
ŠŠ 
(
ŠŠ  
RequireSettings
ŠŠ  /
)
ŠŠ/ 0
entry
ŠŠ0 5
.
ŠŠ5 6
Value
ŠŠ6 ;
;
ŠŠ; <
if
‹‹ 
(
‹‹ 
settings
‹‹ 
.
‹‹ 
Position
‹‹ %
==
‹‹& (
ResourcePosition
‹‹) 9
.
‹‹9 :
First
‹‹: ?
)
‹‹? @
{
ŒŒ 
i
 
=
 
first
 
++
 
;
  
}
 
else
 
if
 
(
 
settings
 !
.
! "
Position
" *
==
+ -
ResourcePosition
. >
.
> ?
Last
? C
)
C D
{
 
i
‘‘ 
=
‘‘ 
last
‘‘ 
++
‘‘ 
;
‘‘ 
}
’’ 
else
““ 
{
”” 
i
•• 
=
•• 
byDependency
•• $
++
••$ &
;
••& '
}
–– 
requiredResources
˜˜ !
[
˜˜! "
i
˜˜" #
]
˜˜# $
=
˜˜% &
new
˜˜' *%
ResourceRequiredContext
˜˜+ B
{
™™ 
Settings
šš 
=
šš 
settings
šš '
,
šš' (
Resource
›› 
=
›› 
(
››   
ResourceDefinition
››  2
)
››2 3
entry
››3 8
.
››8 9
Key
››9 <
,
››< =!
FileVersionProvider
œœ '
=
œœ( )"
_fileVersionProvider
œœ* >
}
 
;
 
}
 
return
   
_builtResources
   "
[
  " #
resourceType
  # /
]
  / 0
=
  1 2
requiredResources
  3 D
;
  D E
}
¡¡ 	
	protected
££ 
virtual
££ 
void
££  
ExpandDependencies
££ 1
(
££1 2 
ResourceDefinition
¤¤ 
resource
¤¤ '
,
¤¤' (
RequireSettings
¥¥ 
settings
¥¥ $
,
¥¥$ % 
ResourceDictionary
¦¦ 
allResources
¦¦ +
)
¦¦+ ,
{
§§ 	
if
¨¨ 
(
¨¨ 
resource
¨¨ 
==
¨¨ 
null
¨¨  
)
¨¨  !
{
©© 
return
ªª 
;
ªª 
}
«« 
allResources
­­ 
.
­­ "
AddExpandingResource
­­ -
(
­­- .
resource
­­. 6
,
­­6 7
settings
­­8 @
)
­­@ A
;
­­A B
List
°° 
<
°° 
string
°° 
>
°° 
dependencies
°° %
=
°°& '
null
°°( ,
;
°°, -
if
±± 
(
±± 
resource
±± 
.
±± 
Dependencies
±± %
!=
±±& (
null
±±) -
)
±±- .
{
²² 
dependencies
³³ 
=
³³ 
new
³³ "
List
³³# '
<
³³' (
string
³³( .
>
³³. /
(
³³/ 0
resource
³³0 8
.
³³8 9
Dependencies
³³9 E
)
³³E F
;
³³F G
if
´´ 
(
´´ 
settings
´´ 
.
´´ 
Dependencies
´´ )
!=
´´* ,
null
´´- 1
)
´´1 2
{
µµ 
dependencies
¶¶  
.
¶¶  !
AddRange
¶¶! )
(
¶¶) *
settings
¶¶* 2
.
¶¶2 3
Dependencies
¶¶3 ?
)
¶¶? @
;
¶¶@ A
}
·· 
}
¸¸ 
else
¹¹ 
if
¹¹ 
(
¹¹ 
settings
¹¹ 
.
¹¹ 
Dependencies
¹¹ *
!=
¹¹+ -
null
¹¹. 2
)
¹¹2 3
{
ºº 
dependencies
»» 
=
»» 
new
»» "
List
»»# '
<
»»' (
string
»»( .
>
»». /
(
»»/ 0
settings
»»0 8
.
»»8 9
Dependencies
»»9 E
)
»»E F
;
»»F G
}
¼¼ 
var
ÅÅ  
dependencySettings
ÅÅ "
=
ÅÅ# $
(
ÅÅ% &
(
ÅÅ& '
(
ÅÅ' (
RequireSettings
ÅÅ( 7
)
ÅÅ7 8
allResources
ÅÅ8 D
[
ÅÅD E
resource
ÅÅE M
]
ÅÅM N
)
ÅÅN O
?
ÆÆ 
.
ÆÆ 
NewAndCombine
ÆÆ #
(
ÆÆ# $
settings
ÆÆ$ ,
)
ÆÆ, -
??
ÇÇ 
new
ÇÇ 
RequireSettings
ÇÇ &
(
ÇÇ& '
_options
ÇÇ' /
)
ÇÇ/ 0
{
ÈÈ 
Name
ÉÉ 
=
ÉÉ 
resource
ÉÉ #
.
ÉÉ# $
Name
ÉÉ$ (
,
ÉÉ( )
Type
ÊÊ 
=
ÊÊ 
resource
ÊÊ #
.
ÊÊ# $
Type
ÊÊ$ (
,
ÊÊ( )
Position
ËË 
=
ËË 
resource
ËË '
.
ËË' (
Position
ËË( 0
}
ÌÌ 
.
ÍÍ 
Combine
ÍÍ 
(
ÍÍ 
settings
ÍÍ %
)
ÍÍ% &
)
ÍÍ& '
.
ÎÎ 
CombinePosition
ÎÎ $
(
ÎÎ$ %
settings
ÎÎ% -
)
ÎÎ- .
;
ÏÏ 
if
ÑÑ 
(
ÑÑ 
dependencies
ÑÑ 
!=
ÑÑ 
null
ÑÑ  $
)
ÑÑ$ %
{
ÒÒ 
var
ÔÔ 
tempSettings
ÔÔ  
=
ÔÔ! "
new
ÔÔ# &
RequireSettings
ÔÔ' 6
(
ÔÔ6 7
)
ÔÔ7 8
;
ÔÔ8 9
for
ÖÖ 
(
ÖÖ 
var
ÖÖ 
i
ÖÖ 
=
ÖÖ 
$num
ÖÖ 
;
ÖÖ 
i
ÖÖ  !
<
ÖÖ" #
dependencies
ÖÖ$ 0
.
ÖÖ0 1
Count
ÖÖ1 6
;
ÖÖ6 7
i
ÖÖ8 9
++
ÖÖ9 ;
)
ÖÖ; <
{
×× 
var
ØØ 
d
ØØ 
=
ØØ 
dependencies
ØØ (
[
ØØ( )
i
ØØ) *
]
ØØ* +
;
ØØ+ ,
var
ÙÙ 
idx
ÙÙ 
=
ÙÙ 
d
ÙÙ 
.
ÙÙ  
IndexOf
ÙÙ  '
(
ÙÙ' (
$char
ÙÙ( +
)
ÙÙ+ ,
;
ÙÙ, -
var
ÚÚ 
name
ÚÚ 
=
ÚÚ 
d
ÚÚ  
;
ÚÚ  !
string
ÛÛ 
version
ÛÛ "
=
ÛÛ# $
null
ÛÛ% )
;
ÛÛ) *
if
ÜÜ 
(
ÜÜ 
idx
ÜÜ 
!=
ÜÜ 
-
ÜÜ  
$num
ÜÜ  !
)
ÜÜ! "
{
İİ 
name
ŞŞ 
=
ŞŞ 
d
ŞŞ  
.
ŞŞ  !
	Substring
ŞŞ! *
(
ŞŞ* +
$num
ŞŞ+ ,
,
ŞŞ, -
idx
ŞŞ. 1
)
ŞŞ1 2
;
ŞŞ2 3
version
ßß 
=
ßß  !
d
ßß" #
[
ßß# $
(
ßß$ %
idx
ßß% (
+
ßß) *
$num
ßß+ ,
)
ßß, -
..
ßß- /
]
ßß/ 0
;
ßß0 1
}
àà 
tempSettings
ââ  
.
ââ  !
Type
ââ! %
=
ââ& '
resource
ââ( 0
.
ââ0 1
Type
ââ1 5
;
ââ5 6
tempSettings
ãã  
.
ãã  !
Name
ãã! %
=
ãã& '
name
ãã( ,
;
ãã, -
tempSettings
ää  
.
ää  !
Version
ää! (
=
ää) *
version
ää+ 2
;
ää2 3
var
ææ 

dependency
ææ "
=
ææ# $
FindResource
ææ% 1
(
ææ1 2
tempSettings
ææ2 >
)
ææ> ?
;
ææ? @
if
çç 
(
çç 

dependency
çç "
==
çç# %
null
çç& *
)
çç* +
{
èè 
continue
éé  
;
éé  !
}
êê  
ExpandDependencies
ìì &
(
ìì& '

dependency
ìì' 1
,
ìì1 2 
dependencySettings
ìì3 E
,
ììE F
allResources
ììG S
)
ììS T
;
ììT U
}
íí 
}
îî 
settings
ğğ 
.
ğğ *
UpdatePositionFromDependency
ğğ 1
(
ğğ1 2 
dependencySettings
ğğ2 D
)
ğğD E
;
ğğE F
allResources
ññ 
.
ññ !
AddExpandedResource
ññ ,
(
ññ, -
resource
ññ- 5
,
ññ5 6 
dependencySettings
ññ7 I
)
ññI J
;
ññJ K
}
òò 	
public
ôô 
void
ôô 
RegisterLink
ôô  
(
ôô  !
	LinkEntry
ôô! *
link
ôô+ /
)
ôô/ 0
{
õõ 	
if
öö 
(
öö 
_links
öö 
==
öö 
null
öö 
)
öö 
{
÷÷ 
_links
øø 
=
øø 
new
øø 
List
øø !
<
øø! "
	LinkEntry
øø" +
>
øø+ ,
(
øø, -
)
øø- .
;
øø. /
}
ùù 
var
ûû 
href
ûû 
=
ûû 
link
ûû 
.
ûû 
Href
ûû  
;
ûû  !
if
ıı 
(
ıı 
href
ıı 
!=
ıı 
null
ıı 
&&
ıı 
href
ıı  $
.
ıı$ %

StartsWith
ıı% /
(
ıı/ 0
$str
ıı0 4
,
ıı4 5
StringComparison
ıı6 F
.
ııF G
Ordinal
ııG N
)
ııN O
)
ııO P
{
şş 
link
ÿÿ 
.
ÿÿ 
Href
ÿÿ 
=
ÿÿ 
_options
ÿÿ $
.
ÿÿ$ %
ContentBasePath
ÿÿ% 4
+
ÿÿ5 6
href
ÿÿ7 ;
.
ÿÿ; <
	Substring
ÿÿ< E
(
ÿÿE F
$num
ÿÿF G
)
ÿÿG H
;
ÿÿH I
}
€€ 
if
‚‚ 
(
‚‚ 
link
‚‚ 
.
‚‚ 
AppendVersion
‚‚ "
)
‚‚" #
{
ƒƒ 
link
„„ 
.
„„ 
Href
„„ 
=
„„ "
_fileVersionProvider
„„ 0
.
„„0 1"
AddFileVersionToPath
„„1 E
(
„„E F
_options
„„F N
.
„„N O
ContentBasePath
„„O ^
,
„„^ _
link
„„` d
.
„„d e
Href
„„e i
)
„„i j
;
„„j k
}
…… 
_links
‡‡ 
.
‡‡ 
Add
‡‡ 
(
‡‡ 
link
‡‡ 
)
‡‡ 
;
‡‡ 
}
ˆˆ 	
public
ŠŠ 
void
ŠŠ 
RegisterMeta
ŠŠ  
(
ŠŠ  !
	MetaEntry
ŠŠ! *
meta
ŠŠ+ /
)
ŠŠ/ 0
{
‹‹ 	
if
ŒŒ 
(
ŒŒ 
meta
ŒŒ 
==
ŒŒ 
null
ŒŒ 
)
ŒŒ 
{
 
return
 
;
 
}
 
if
‘‘ 
(
‘‘ 
_metas
‘‘ 
==
‘‘ 
null
‘‘ 
)
‘‘ 
{
’’ 
_metas
““ 
=
““ 
new
““ 

Dictionary
““ '
<
““' (
string
““( .
,
““. /
	MetaEntry
““0 9
>
““9 :
(
““: ;
)
““; <
;
““< =
}
”” 
var
–– 
index
–– 
=
–– 
meta
–– 
.
–– 
Name
–– !
??
––" $
meta
––% )
.
––) *
Property
––* 2
??
––3 5
meta
––6 :
.
––: ;
	HttpEquiv
––; D
??
––E G
$str
––H Q
;
––Q R
_metas
˜˜ 
[
˜˜ 
index
˜˜ 
]
˜˜ 
=
˜˜ 
meta
˜˜  
;
˜˜  !
}
™™ 	
public
›› 
void
›› 

AppendMeta
›› 
(
›› 
	MetaEntry
›› (
meta
››) -
,
››- .
string
››/ 5
contentSeparator
››6 F
)
››F G
{
œœ 	
if
 
(
 
meta
 
==
 
null
 
)
 
{
 
return
ŸŸ 
;
ŸŸ 
}
   
var
¢¢ 
index
¢¢ 
=
¢¢ 
meta
¢¢ 
.
¢¢ 
Name
¢¢ !
??
¢¢" $
meta
¢¢% )
.
¢¢) *
Property
¢¢* 2
??
¢¢3 5
meta
¢¢6 :
.
¢¢: ;
	HttpEquiv
¢¢; D
;
¢¢D E
if
¤¤ 
(
¤¤ 
String
¤¤ 
.
¤¤ 
IsNullOrEmpty
¤¤ $
(
¤¤$ %
index
¤¤% *
)
¤¤* +
)
¤¤+ ,
{
¥¥ 
return
¦¦ 
;
¦¦ 
}
§§ 
if
©© 
(
©© 
_metas
©© 
==
©© 
null
©© 
)
©© 
{
ªª 
_metas
«« 
=
«« 
new
«« 

Dictionary
«« '
<
««' (
string
««( .
,
««. /
	MetaEntry
««0 9
>
««9 :
(
««: ;
)
««; <
;
««< =
}
¬¬ 
if
®® 
(
®® 
_metas
®® 
.
®® 
TryGetValue
®® "
(
®®" #
index
®®# (
,
®®( )
out
®®* -
var
®®. 1
existingMeta
®®2 >
)
®®> ?
)
®®? @
{
¯¯ 
meta
°° 
=
°° 
	MetaEntry
°°  
.
°°  !
Combine
°°! (
(
°°( )
existingMeta
°°) 5
,
°°5 6
meta
°°7 ;
,
°°; <
contentSeparator
°°= M
)
°°M N
;
°°N O
}
±± 
_metas
³³ 
[
³³ 
index
³³ 
]
³³ 
=
³³ 
meta
³³  
;
³³  !
}
´´ 	
public
¶¶ 
void
¶¶ 

RenderMeta
¶¶ 
(
¶¶ !
IHtmlContentBuilder
¶¶ 2
builder
¶¶3 :
)
¶¶: ;
{
·· 	
var
¸¸ 
first
¸¸ 
=
¸¸ 
true
¸¸ 
;
¸¸ 
foreach
ºº 
(
ºº 
var
ºº 
meta
ºº 
in
ºº  "
DoGetRegisteredMetas
ºº! 5
(
ºº5 6
)
ºº6 7
)
ºº7 8
{
»» 
if
¼¼ 
(
¼¼ 
!
¼¼ 
first
¼¼ 
)
¼¼ 
{
½½ 
builder
¾¾ 
.
¾¾ 

AppendHtml
¾¾ &
(
¾¾& '
System
¾¾' -
.
¾¾- .
Environment
¾¾. 9
.
¾¾9 :
NewLine
¾¾: A
)
¾¾A B
;
¾¾B C
}
¿¿ 
first
ÁÁ 
=
ÁÁ 
false
ÁÁ 
;
ÁÁ 
builder
ÃÃ 
.
ÃÃ 

AppendHtml
ÃÃ "
(
ÃÃ" #
meta
ÃÃ# '
.
ÃÃ' (
GetTag
ÃÃ( .
(
ÃÃ. /
)
ÃÃ/ 0
)
ÃÃ0 1
;
ÃÃ1 2
}
ÄÄ 
}
ÅÅ 	
public
ÇÇ 
void
ÇÇ 
RenderHeadLink
ÇÇ "
(
ÇÇ" #!
IHtmlContentBuilder
ÇÇ# 6
builder
ÇÇ7 >
)
ÇÇ> ?
{
ÈÈ 	
var
ÉÉ 
first
ÉÉ 
=
ÉÉ 
true
ÉÉ 
;
ÉÉ 
var
ËË 
registeredLinks
ËË 
=
ËË  !"
DoGetRegisteredLinks
ËË" 6
(
ËË6 7
)
ËË7 8
;
ËË8 9
for
ÌÌ 
(
ÌÌ 
var
ÌÌ 
i
ÌÌ 
=
ÌÌ 
$num
ÌÌ 
;
ÌÌ 
i
ÌÌ 
<
ÌÌ 
registeredLinks
ÌÌ  /
.
ÌÌ/ 0
Count
ÌÌ0 5
;
ÌÌ5 6
i
ÌÌ7 8
++
ÌÌ8 :
)
ÌÌ: ;
{
ÍÍ 
var
ÎÎ 
link
ÎÎ 
=
ÎÎ 
registeredLinks
ÎÎ *
[
ÎÎ* +
i
ÎÎ+ ,
]
ÎÎ, -
;
ÎÎ- .
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
first
ÏÏ 
)
ÏÏ 
{
ĞĞ 
builder
ÑÑ 
.
ÑÑ 

AppendHtml
ÑÑ &
(
ÑÑ& '
System
ÑÑ' -
.
ÑÑ- .
Environment
ÑÑ. 9
.
ÑÑ9 :
NewLine
ÑÑ: A
)
ÑÑA B
;
ÑÑB C
}
ÒÒ 
first
ÔÔ 
=
ÔÔ 
false
ÔÔ 
;
ÔÔ 
builder
ÖÖ 
.
ÖÖ 

AppendHtml
ÖÖ "
(
ÖÖ" #
link
ÖÖ# '
.
ÖÖ' (
GetTag
ÖÖ( .
(
ÖÖ. /
)
ÖÖ/ 0
)
ÖÖ0 1
;
ÖÖ1 2
}
×× 
}
ØØ 	
public
ÚÚ 
void
ÚÚ 
RenderStylesheet
ÚÚ $
(
ÚÚ$ %!
IHtmlContentBuilder
ÚÚ% 8
builder
ÚÚ9 @
)
ÚÚ@ A
{
ÛÛ 	
var
ÜÜ 
first
ÜÜ 
=
ÜÜ 
true
ÜÜ 
;
ÜÜ 
var
ŞŞ 
styleSheets
ŞŞ 
=
ŞŞ $
DoGetRequiredResources
ŞŞ 4
(
ŞŞ4 5
$str
ŞŞ5 A
)
ŞŞA B
;
ŞŞB C
foreach
àà 
(
àà 
var
àà 
context
àà  
in
àà! #
styleSheets
àà$ /
)
àà/ 0
{
áá 
if
ââ 
(
ââ 
context
ââ 
.
ââ 
Settings
ââ $
.
ââ$ %
Location
ââ% -
==
ââ. 0
ResourceLocation
ââ1 A
.
ââA B
Inline
ââB H
)
ââH I
{
ãã 
continue
ää 
;
ää 
}
åå 
if
çç 
(
çç 
!
çç 
first
çç 
)
çç 
{
èè 
builder
éé 
.
éé 

AppendHtml
éé &
(
éé& '
System
éé' -
.
éé- .
Environment
éé. 9
.
éé9 :
NewLine
éé: A
)
ééA B
;
ééB C
}
êê 
first
ìì 
=
ìì 
false
ìì 
;
ìì 
builder
îî 
.
îî 

AppendHtml
îî "
(
îî" #
context
îî# *
.
îî* +
GetHtmlContent
îî+ 9
(
îî9 :
_options
îî: B
.
îîB C
ContentBasePath
îîC R
)
îîR S
)
îîS T
;
îîT U
}
ïï 
var
ññ 
registeredStyles
ññ  
=
ññ! "#
DoGetRegisteredStyles
ññ# 8
(
ññ8 9
)
ññ9 :
;
ññ: ;
for
òò 
(
òò 
var
òò 
i
òò 
=
òò 
$num
òò 
;
òò 
i
òò 
<
òò 
registeredStyles
òò  0
.
òò0 1
Count
òò1 6
;
òò6 7
i
òò8 9
++
òò9 ;
)
òò; <
{
óó 
var
ôô 
context
ôô 
=
ôô 
registeredStyles
ôô .
[
ôô. /
i
ôô/ 0
]
ôô0 1
;
ôô1 2
if
õõ 
(
õõ 
!
õõ 
first
õõ 
)
õõ 
{
öö 
builder
÷÷ 
.
÷÷ 

AppendHtml
÷÷ &
(
÷÷& '
System
÷÷' -
.
÷÷- .
Environment
÷÷. 9
.
÷÷9 :
NewLine
÷÷: A
)
÷÷A B
;
÷÷B C
}
øø 
first
úú 
=
úú 
false
úú 
;
úú 
builder
üü 
.
üü 

AppendHtml
üü "
(
üü" #
context
üü# *
)
üü* +
;
üü+ ,
}
ıı 
}
şş 	
public
€€ 
void
€€ 
RenderHeadScript
€€ $
(
€€$ %!
IHtmlContentBuilder
€€% 8
builder
€€9 @
)
€€@ A
{
 	
var
‚‚ 
headScripts
‚‚ 
=
‚‚ $
DoGetRequiredResources
‚‚ 4
(
‚‚4 5
$str
‚‚5 =
)
‚‚= >
;
‚‚> ?
var
„„ 
first
„„ 
=
„„ 
true
„„ 
;
„„ 
foreach
†† 
(
†† 
var
†† 
context
††  
in
††! #
headScripts
††$ /
)
††/ 0
{
‡‡ 
if
ˆˆ 
(
ˆˆ 
context
ˆˆ 
.
ˆˆ 
Settings
ˆˆ $
.
ˆˆ$ %
Location
ˆˆ% -
!=
ˆˆ. 0
ResourceLocation
ˆˆ1 A
.
ˆˆA B
Head
ˆˆB F
)
ˆˆF G
{
‰‰ 
continue
ŠŠ 
;
ŠŠ 
}
‹‹ 
if
 
(
 
!
 
first
 
)
 
{
 
builder
 
.
 

AppendHtml
 &
(
& '
System
' -
.
- .
Environment
. 9
.
9 :
NewLine
: A
)
A B
;
B C
}
 
first
’’ 
=
’’ 
false
’’ 
;
’’ 
builder
”” 
.
”” 

AppendHtml
”” "
(
””" #
context
””# *
.
””* +
GetHtmlContent
””+ 9
(
””9 :
_options
””: B
.
””B C
ContentBasePath
””C R
)
””R S
)
””S T
;
””T U
}
•• 
var
—— #
registeredHeadScripts
—— %
=
——& '(
DoGetRegisteredHeadScripts
——( B
(
——B C
)
——C D
;
——D E
for
˜˜ 
(
˜˜ 
var
˜˜ 
i
˜˜ 
=
˜˜ 
$num
˜˜ 
;
˜˜ 
i
˜˜ 
<
˜˜ #
registeredHeadScripts
˜˜  5
.
˜˜5 6
Count
˜˜6 ;
;
˜˜; <
i
˜˜= >
++
˜˜> @
)
˜˜@ A
{
™™ 
var
šš 
context
šš 
=
šš #
registeredHeadScripts
šš 3
[
šš3 4
i
šš4 5
]
šš5 6
;
šš6 7
if
›› 
(
›› 
!
›› 
first
›› 
)
›› 
{
œœ 
builder
 
.
 

AppendHtml
 &
(
& '
System
' -
.
- .
Environment
. 9
.
9 :
NewLine
: A
)
A B
;
B C
}
 
first
   
=
   
false
   
;
   
builder
¢¢ 
.
¢¢ 

AppendHtml
¢¢ "
(
¢¢" #
context
¢¢# *
)
¢¢* +
;
¢¢+ ,
}
££ 
}
¤¤ 	
public
¦¦ 
void
¦¦ 
RenderFootScript
¦¦ $
(
¦¦$ %!
IHtmlContentBuilder
¦¦% 8
builder
¦¦9 @
)
¦¦@ A
{
§§ 	
var
¨¨ 
footScripts
¨¨ 
=
¨¨ $
DoGetRequiredResources
¨¨ 4
(
¨¨4 5
$str
¨¨5 =
)
¨¨= >
;
¨¨> ?
var
ªª 
first
ªª 
=
ªª 
true
ªª 
;
ªª 
foreach
«« 
(
«« 
var
«« 
context
««  
in
««! #
footScripts
««$ /
)
««/ 0
{
¬¬ 
if
­­ 
(
­­ 
context
­­ 
.
­­ 
Settings
­­ $
.
­­$ %
Location
­­% -
!=
­­. 0
ResourceLocation
­­1 A
.
­­A B
Foot
­­B F
)
­­F G
{
®® 
continue
¯¯ 
;
¯¯ 
}
°° 
if
²² 
(
²² 
!
²² 
first
²² 
)
²² 
{
³³ 
builder
´´ 
.
´´ 

AppendHtml
´´ &
(
´´& '
System
´´' -
.
´´- .
Environment
´´. 9
.
´´9 :
NewLine
´´: A
)
´´A B
;
´´B C
}
µµ 
first
·· 
=
·· 
false
·· 
;
·· 
builder
¹¹ 
.
¹¹ 

AppendHtml
¹¹ "
(
¹¹" #
context
¹¹# *
.
¹¹* +
GetHtmlContent
¹¹+ 9
(
¹¹9 :
_options
¹¹: B
.
¹¹B C
ContentBasePath
¹¹C R
)
¹¹R S
)
¹¹S T
;
¹¹T U
}
ºº 
var
¼¼ #
registeredFootScripts
¼¼ %
=
¼¼& '(
DoGetRegisteredFootScripts
¼¼( B
(
¼¼B C
)
¼¼C D
;
¼¼D E
for
½½ 
(
½½ 
var
½½ 
i
½½ 
=
½½ 
$num
½½ 
;
½½ 
i
½½ 
<
½½ #
registeredFootScripts
½½  5
.
½½5 6
Count
½½6 ;
;
½½; <
i
½½= >
++
½½> @
)
½½@ A
{
¾¾ 
var
¿¿ 
context
¿¿ 
=
¿¿ #
registeredFootScripts
¿¿ 3
[
¿¿3 4
i
¿¿4 5
]
¿¿5 6
;
¿¿6 7
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
first
ÀÀ 
)
ÀÀ 
{
ÁÁ 
builder
ÂÂ 
.
ÂÂ 

AppendHtml
ÂÂ &
(
ÂÂ& '
System
ÂÂ' -
.
ÂÂ- .
Environment
ÂÂ. 9
.
ÂÂ9 :
NewLine
ÂÂ: A
)
ÂÂA B
;
ÂÂB C
}
ÃÃ 
first
ÅÅ 
=
ÅÅ 
false
ÅÅ 
;
ÅÅ 
builder
ÇÇ 
.
ÇÇ 

AppendHtml
ÇÇ "
(
ÇÇ" #
context
ÇÇ# *
)
ÇÇ* +
;
ÇÇ+ ,
}
ÈÈ 
}
ÉÉ 	
public
ËË 
void
ËË 
RenderLocalScript
ËË %
(
ËË% &
RequireSettings
ËË& 5
settings
ËË6 >
,
ËË> ?!
IHtmlContentBuilder
ËË@ S
builder
ËËT [
)
ËË[ \
{
ÌÌ 	
var
ÍÍ 
localScripts
ÍÍ 
=
ÍÍ $
DoGetRequiredResources
ÍÍ 5
(
ÍÍ5 6
$str
ÍÍ6 >
)
ÍÍ> ?
;
ÍÍ? @
_localScripts
ÎÎ 
??=
ÎÎ 
new
ÎÎ !
HashSet
ÎÎ" )
<
ÎÎ) *
string
ÎÎ* 0
>
ÎÎ0 1
(
ÎÎ1 2
)
ÎÎ2 3
;
ÎÎ3 4
var
ĞĞ 
first
ĞĞ 
=
ĞĞ 
true
ĞĞ 
;
ĞĞ 
foreach
ÒÒ 
(
ÒÒ 
var
ÒÒ 
context
ÒÒ  
in
ÒÒ! #
localScripts
ÒÒ$ 0
)
ÒÒ0 1
{
ÓÓ 
if
ÔÔ 
(
ÔÔ 
(
ÔÔ 
context
ÔÔ 
.
ÔÔ 
Settings
ÔÔ %
.
ÔÔ% &
Location
ÔÔ& .
==
ÔÔ/ 1
ResourceLocation
ÔÔ2 B
.
ÔÔB C
Unspecified
ÔÔC N
||
ÔÔO Q
context
ÔÔR Y
.
ÔÔY Z
Settings
ÔÔZ b
.
ÔÔb c
Location
ÔÔc k
==
ÔÔl n
ResourceLocation
ÔÔo 
.ÔÔ €
InlineÔÔ€ †
)ÔÔ† ‡
&&ÔÔˆ Š
(
ÕÕ 
_localScripts
ÕÕ "
.
ÕÕ" #
Add
ÕÕ# &
(
ÕÕ& '
context
ÕÕ' .
.
ÕÕ. /
Settings
ÕÕ/ 7
.
ÕÕ7 8
Name
ÕÕ8 <
)
ÕÕ< =
||
ÕÕ> @
context
ÕÕA H
.
ÕÕH I
Settings
ÕÕI Q
.
ÕÕQ R
Name
ÕÕR V
==
ÕÕW Y
settings
ÕÕZ b
.
ÕÕb c
Name
ÕÕc g
)
ÕÕg h
)
ÕÕh i
{
ÖÖ 
if
×× 
(
×× 
!
×× 
first
×× 
)
×× 
{
ØØ 
builder
ÙÙ 
.
ÙÙ  

AppendHtml
ÙÙ  *
(
ÙÙ* +
System
ÙÙ+ 1
.
ÙÙ1 2
Environment
ÙÙ2 =
.
ÙÙ= >
NewLine
ÙÙ> E
)
ÙÙE F
;
ÙÙF G
}
ÚÚ 
first
ÜÜ 
=
ÜÜ 
false
ÜÜ !
;
ÜÜ! "
builder
ŞŞ 
.
ŞŞ 

AppendHtml
ŞŞ &
(
ŞŞ& '
context
ŞŞ' .
.
ŞŞ. /
GetHtmlContent
ŞŞ/ =
(
ŞŞ= >
_options
ŞŞ> F
.
ŞŞF G
ContentBasePath
ŞŞG V
)
ŞŞV W
)
ŞŞW X
;
ŞŞX Y
}
ßß 
}
àà 
}
áá 	
public
ãã 
void
ãã 
RenderLocalStyle
ãã $
(
ãã$ %
RequireSettings
ãã% 4
settings
ãã5 =
,
ãã= >!
IHtmlContentBuilder
ãã? R
builder
ããS Z
)
ããZ [
{
ää 	
var
åå 
localStyles
åå 
=
åå $
DoGetRequiredResources
åå 4
(
åå4 5
$str
åå5 A
)
ååA B
;
ååB C
_localStyles
ææ 
??=
ææ 
new
ææ  
HashSet
ææ! (
<
ææ( )
string
ææ) /
>
ææ/ 0
(
ææ0 1
)
ææ1 2
;
ææ2 3
var
èè 
first
èè 
=
èè 
true
èè 
;
èè 
foreach
êê 
(
êê 
var
êê 
context
êê  
in
êê! #
localStyles
êê$ /
)
êê/ 0
{
ëë 
if
ìì 
(
ìì 
context
ìì 
.
ìì 
Settings
ìì $
.
ìì$ %
Location
ìì% -
==
ìì. 0
ResourceLocation
ìì1 A
.
ììA B
Inline
ììB H
&&
ììI K
(
íí 
_localStyles
íí !
.
íí! "
Add
íí" %
(
íí% &
context
íí& -
.
íí- .
Settings
íí. 6
.
íí6 7
Name
íí7 ;
)
íí; <
||
íí= ?
context
íí@ G
.
ííG H
Settings
ííH P
.
ííP Q
Name
ííQ U
==
ííV X
settings
ííY a
.
íía b
Name
ííb f
)
ííf g
)
ííg h
{
îî 
if
ïï 
(
ïï 
!
ïï 
first
ïï 
)
ïï 
{
ğğ 
builder
ññ 
.
ññ  

AppendHtml
ññ  *
(
ññ* +
System
ññ+ 1
.
ññ1 2
Environment
ññ2 =
.
ññ= >
NewLine
ññ> E
)
ññE F
;
ññF G
}
òò 
first
ôô 
=
ôô 
false
ôô !
;
ôô! "
builder
öö 
.
öö 

AppendHtml
öö &
(
öö& '
context
öö' .
.
öö. /
GetHtmlContent
öö/ =
(
öö= >
_options
öö> F
.
ööF G
ContentBasePath
ööG V
)
ööV W
)
ööW X
;
ööX Y
}
÷÷ 
}
øø 
}
ùù 	
private
ûû 
readonly
ûû 
struct
ûû 
ResourceTypeName
ûû  0
:
ûû1 2

IEquatable
ûû3 =
<
ûû= >
ResourceTypeName
ûû> N
>
ûûN O
{
üü 	
public
ıı 
readonly
ıı 
string
ıı "
Type
ıı# '
;
ıı' (
public
şş 
readonly
şş 
string
şş "
Name
şş# '
;
şş' (
public
€€ 
ResourceTypeName
€€ #
(
€€# $
string
€€$ *
resourceType
€€+ 7
,
€€7 8
string
€€9 ?
resourceName
€€@ L
)
€€L M
{
 
Type
‚‚ 
=
‚‚ 
resourceType
‚‚ #
;
‚‚# $
Name
ƒƒ 
=
ƒƒ 
resourceName
ƒƒ #
;
ƒƒ# $
}
„„ 
public
†† 
bool
†† 
Equals
†† 
(
†† 
ResourceTypeName
†† /
other
††0 5
)
††5 6
{
‡‡ 
return
ˆˆ 
Type
ˆˆ 
==
ˆˆ 
other
ˆˆ $
.
ˆˆ$ %
Type
ˆˆ% )
&&
ˆˆ* ,
Name
ˆˆ- 1
==
ˆˆ2 4
other
ˆˆ5 :
.
ˆˆ: ;
Name
ˆˆ; ?
;
ˆˆ? @
}
‰‰ 
public
‹‹ 
override
‹‹ 
int
‹‹ 
GetHashCode
‹‹  +
(
‹‹+ ,
)
‹‹, -
{
ŒŒ 
return
 
HashCode
 
.
  
Combine
  '
(
' (
Type
( ,
,
, -
Name
. 2
)
2 3
;
3 4
}
 
public
 
override
 
string
 "
ToString
# +
(
+ ,
)
, -
=>
. 0
$str
1 4
+
5 6
Type
7 ;
+
< =
$str
> B
+
C D
Name
E I
+
J K
$str
L O
;
O P
}
‘‘ 	
private
““ 
string
““ 
GetResourceKey
““ %
(
““% &
string
““& ,
releasePath
““- 8
,
““8 9
string
““: @
	debugPath
““A J
)
““J K
{
”” 	
if
•• 
(
•• 
_options
•• 
.
•• 
	DebugMode
•• "
&&
••# %
!
••& '
String
••' -
.
••- . 
IsNullOrWhiteSpace
••. @
(
••@ A
	debugPath
••A J
)
••J K
)
••K L
{
–– 
return
—— 
	debugPath
——  
;
——  !
}
˜˜ 
else
™™ 
{
šš 
return
›› 
releasePath
›› "
;
››" #
}
œœ 
}
 	
private
ŸŸ 
static
ŸŸ 
class
ŸŸ 
	EmptyList
ŸŸ &
<
ŸŸ& '
T
ŸŸ' (
>
ŸŸ( )
{
   	
public
¡¡ 
static
¡¡ 
readonly
¡¡ "
List
¡¡# '
<
¡¡' (
T
¡¡( )
>
¡¡) *
Instance
¡¡+ 3
=
¡¡4 5
new
¡¡6 9
List
¡¡: >
<
¡¡> ?
T
¡¡? @
>
¡¡@ A
(
¡¡A B
)
¡¡B C
;
¡¡C D
}
¢¢ 	
private
¤¤ 
static
¤¤ 
class
¤¤ "
EmptyValueCollection
¤¤ 1
<
¤¤1 2
T
¤¤2 3
>
¤¤3 4
{
¥¥ 	
public
¦¦ 
static
¦¦ 
readonly
¦¦ "

Dictionary
¦¦# -
<
¦¦- .
string
¦¦. 4
,
¦¦4 5
T
¦¦6 7
>
¦¦7 8
.
¦¦8 9
ValueCollection
¦¦9 H
Instance
¦¦I Q
=
¦¦R S
new
¦¦T W

Dictionary
¦¦X b
<
¦¦b c
string
¦¦c i
,
¦¦i j
T
¦¦k l
>
¦¦l m
.
¦¦m n
ValueCollection
¦¦n }
(
¦¦} ~
new¦¦~ 

Dictionary¦¦‚ Œ
<¦¦Œ 
string¦¦ “
,¦¦“ ”
T¦¦• –
>¦¦– —
(¦¦— ˜
)¦¦˜ ™
)¦¦™ š
;¦¦š ›
}
§§ 	
[
©© 	

MethodImpl
©©	 
(
©© 
MethodImplOptions
©© %
.
©©% &

NoInlining
©©& 0
)
©©0 1
]
©©1 2
private
ªª 
static
ªª 
void
ªª (
ThrowArgumentNullException
ªª 6
(
ªª6 7
string
ªª7 =
	paramName
ªª> G
)
ªªG H
{
«« 	(
ThrowArgumentNullException
¬¬ &
<
¬¬& '
object
¬¬' -
>
¬¬- .
(
¬¬. /
	paramName
¬¬/ 8
)
¬¬8 9
;
¬¬9 :
}
­­ 	
[
¯¯ 	

MethodImpl
¯¯	 
(
¯¯ 
MethodImplOptions
¯¯ %
.
¯¯% &

NoInlining
¯¯& 0
)
¯¯0 1
]
¯¯1 2
private
°° 
static
°° 
T
°° (
ThrowArgumentNullException
°° 3
<
°°3 4
T
°°4 5
>
°°5 6
(
°°6 7
string
°°7 =
	paramName
°°> G
)
°°G H
{
±± 	
throw
²² 
new
²² #
ArgumentNullException
²² +
(
²²+ ,
	paramName
²², 5
)
²²5 6
;
²²6 7
}
³³ 	
}
´´ 
}µµ á
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ResourceManifestBuilder.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
{ 
public 

class #
ResourceManifestBuilder (
:) *$
IResourceManifestBuilder+ C
{ 
public #
ResourceManifestBuilder &
(& '
)' (
{ 	
ResourceManifests		 
=		 
new		  #
HashSet		$ +
<		+ ,
ResourceManifest		, <
>		< =
(		= >
)		> ?
;		? @
}

 	
internal 
HashSet 
< 
ResourceManifest )
>) *
ResourceManifests+ <
{= >
get? B
;B C
privateD K
setL O
;O P
}Q R
public 
ResourceManifest 
Add  #
(# $
)$ %
{ 	
return 
Add 
( 
new 
ResourceManifest +
(+ ,
), -
)- .
;. /
} 	
public 
ResourceManifest 
Add  #
(# $
ResourceManifest$ 4
manifest5 =
)= >
{ 	
ResourceManifests 
. 
Add !
(! "
manifest" *
)* +
;+ ,
return 
manifest 
; 
} 	
} 
} –	
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ServiceCollectionExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (!
AddResourceManagement) >
(> ?
this? C
IServiceCollectionD V
servicesW _
)_ `
{ 	
services 
. 
TryAddScoped !
<! "
IResourceManager" 2
,2 3
ResourceManager4 C
>C D
(D E
)E F
;F G
services 
. 
TryAddSingleton $
<$ %"
IResourceManifestState% ;
,; <!
ResourceManifestState= R
>R S
(S T
)T U
;U V
return 
services 
; 
} 	
} 
} Ê-
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\LinkTagHelper.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
.( )

TagHelpers) 3
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes )
=* +
SrcAttributeName, <
)< =
]= >
public 

class 
LinkTagHelper 
:  
	TagHelper! *
{ 
private		 
const		 
string		 
SrcAttributeName		 -
=		. /
$str		0 9
;		9 :
private

 
const

 
string

 &
AppendVersionAttributeName

 7
=

8 9
$str

: N
;

N O
public 
string 
Rel 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
HtmlAttributeName	 
( 
SrcAttributeName +
)+ ,
], -
public 
string 
Src 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
HtmlAttributeName	 
( &
AppendVersionAttributeName 5
)5 6
]6 7
public 
bool 
? 
AppendVersion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Condition 
{  !
get" %
;% &
set' *
;* +
}, -
private 
readonly 
IResourceManager )
_resourceManager* :
;: ;
public 
LinkTagHelper 
( 
IResourceManager -
resourceManager. =
)= >
{ 	
_resourceManager 
= 
resourceManager .
;. /
} 	
public!! 
override!! 
void!! 
Process!! $
(!!$ %
TagHelperContext!!% 5
context!!6 =
,!!= >
TagHelperOutput!!? N
output!!O U
)!!U V
{"" 	
var## 
	linkEntry## 
=## 
new## 
	LinkEntry##  )
(##) *
)##* +
;##+ ,
if%% 
(%% 
!%% 
string%% 
.%% 
IsNullOrEmpty%% %
(%%% &
Src%%& )
)%%) *
)%%* +
{&& 
	linkEntry'' 
.'' 
Href'' 
=''  
Src''! $
;''$ %
}(( 
if** 
(** 
!** 
string** 
.** 
IsNullOrEmpty** %
(**% &
Rel**& )
)**) *
)*** +
{++ 
	linkEntry,, 
.,, 
Rel,, 
=,, 
Rel,,  #
;,,# $
}-- 
if// 
(// 
!// 
string// 
.// 
IsNullOrEmpty// %
(//% &
	Condition//& /
)/// 0
)//0 1
{00 
	linkEntry11 
.11 
	Condition11 #
=11$ %
	Condition11& /
;11/ 0
}22 
if44 
(44 
!44 
string44 
.44 
IsNullOrEmpty44 %
(44% &
Title44& +
)44+ ,
)44, -
{55 
	linkEntry66 
.66 
Title66 
=66  !
Title66" '
;66' (
}77 
if99 
(99 
!99 
string99 
.99 
IsNullOrEmpty99 %
(99% &
Type99& *
)99* +
)99+ ,
{:: 
	linkEntry;; 
.;; 
Type;; 
=;;  
Type;;! %
;;;% &
}<< 
if>> 
(>> 
AppendVersion>> 
.>> 
HasValue>> &
)>>& '
{?? 
	linkEntry@@ 
.@@ 
AppendVersion@@ '
=@@( )
AppendVersion@@* 7
.@@7 8
Value@@8 =
;@@= >
}AA 
foreachCC 
(CC 
varCC 
	attributeCC "
inCC# %
outputCC& ,
.CC, -

AttributesCC- 7
)CC7 8
{DD 
ifEE 
(EE 
StringEE 
.EE 
EqualsEE !
(EE! "
	attributeEE" +
.EE+ ,
NameEE, 0
,EE0 1
$strEE2 8
,EE8 9
StringComparisonEE: J
.EEJ K
OrdinalIgnoreCaseEEK \
)EE\ ]
)EE] ^
{FF 
continueGG 
;GG 
}HH 
	linkEntryJJ 
.JJ 
SetAttributeJJ &
(JJ& '
	attributeJJ' 0
.JJ0 1
NameJJ1 5
,JJ5 6
	attributeJJ7 @
.JJ@ A
ValueJJA F
.JJF G
ToStringJJG O
(JJO P
)JJP Q
)JJQ R
;JJR S
}KK 
_resourceManagerMM 
.MM 
RegisterLinkMM )
(MM) *
	linkEntryMM* 3
)MM3 4
;MM4 5
outputOO 
.OO 
TagNameOO 
=OO 
nullOO !
;OO! "
}PP 	
}QQ 
}RR ê$
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\MetaTagHelper.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
.( )

TagHelpers) 3
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes )
=* +
NameAttributeName, =
)= >
]> ?
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes )
=* +!
PropertyAttributeName, A
)A B
]B C
public 

class 
MetaTagHelper 
:  
	TagHelper! *
{		 
private

 
const

 
string

 
NameAttributeName

 .
=

/ 0
$str

1 ;
;

; <
private 
const 
string !
PropertyAttributeName 2
=3 4
$str5 C
;C D
[ 	
HtmlAttributeName	 
( 
NameAttributeName ,
), -
]- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
HtmlAttributeName	 
( !
PropertyAttributeName 0
)0 1
]1 2
public 
string 
Property 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	HttpEquiv 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Charset 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	Separator 
{  !
get" %
;% &
set' *
;* +
}, -
private 
readonly 
IResourceManager )
_resourceManager* :
;: ;
public 
MetaTagHelper 
( 
IResourceManager -
resourceManager. =
)= >
{ 	
_resourceManager 
= 
resourceManager .
;. /
}   	
public"" 
override"" 
void"" 
Process"" $
(""$ %
TagHelperContext""% 5
context""6 =
,""= >
TagHelperOutput""? N
output""O U
)""U V
{## 	
var$$ 
	metaEntry$$ 
=$$ 
new$$ 
	MetaEntry$$  )
($$) *
Name$$* .
,$$. /
Property$$0 8
,$$8 9
Content$$: A
,$$A B
	HttpEquiv$$C L
,$$L M
Charset$$N U
)$$U V
;$$V W
foreach&& 
(&& 
var&& 
	attribute&& "
in&&# %
output&&& ,
.&&, -

Attributes&&- 7
)&&7 8
{'' 
if(( 
((( 
String(( 
.(( 
Equals(( !
(((! "
	attribute((" +
.((+ ,
Name((, 0
,((0 1
$str((2 8
,((8 9
StringComparison((: J
.((J K
OrdinalIgnoreCase((K \
)((\ ]
||((^ `
String((a g
.((g h
Equals((h n
(((n o
	attribute((o x
.((x y
Name((y }
,((} ~
$str	(( ‰
,
((‰ Š
StringComparison
((‹ ›
.
((› œ
OrdinalIgnoreCase
((œ ­
)
((­ ®
)
((® ¯
{)) 
continue** 
;** 
}++ 
	metaEntry-- 
.-- 
SetAttribute-- &
(--& '
	attribute--' 0
.--0 1
Name--1 5
,--5 6
	attribute--7 @
.--@ A
Value--A F
.--F G
ToString--G O
(--O P
)--P Q
)--Q R
;--R S
}.. 
_resourceManager00 
.00 

AppendMeta00 '
(00' (
	metaEntry00( 1
,001 2
	Separator003 <
??00= ?
$str00@ D
)00D E
;00E F
output22 
.22 
TagName22 
=22 
null22 !
;22! "
}33 	
}44 
}55 ¹*
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\ResourcesTagHelper.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
.( )

TagHelpers) 3
{ 
public 

enum 
ResourceType 
{ 
Meta		 
,		 
HeadLink

 
,

 

Stylesheet 
, 

HeadScript 
, 

FootScript 
, 
Header 
, 
Footer 
} 
[ 
HtmlTargetElement 
( 
$str "
," #

Attributes$ .
=/ 0
nameof1 7
(7 8
Type8 <
)< =
)= >
]> ?
public 

class 
ResourcesTagHelper #
:$ %
	TagHelper& /
{ 
public 
ResourceType 
Type  
{! "
get# &
;& '
set( +
;+ ,
}- .
private 
readonly 
IResourceManager )
_resourceManager* :
;: ;
private 
readonly 
ILogger  
_logger! (
;( )
public 
ResourcesTagHelper !
(! "
IResourceManager 
resourceManager ,
,, -
ILogger 
< 
ResourcesTagHelper &
>& '
logger( .
). /
{ 	
_resourceManager 
= 
resourceManager .
;. /
_logger 
= 
logger 
; 
}   	
public"" 
override"" 
void"" 
Process"" $
(""$ %
TagHelperContext""% 5
tagHelperContext""6 F
,""F G
TagHelperOutput""H W
output""X ^
)""^ _
{## 	
try$$ 
{%% 
switch&& 
(&& 
Type&& 
)&& 
{'' 
case(( 
ResourceType(( %
.((% &
Meta((& *
:((* +
_resourceManager)) (
.))( )

RenderMeta))) 3
())3 4
output))4 :
.)): ;
Content)); B
)))B C
;))C D
break** 
;** 
case,, 
ResourceType,, %
.,,% &
HeadLink,,& .
:,,. /
_resourceManager-- (
.--( )
RenderHeadLink--) 7
(--7 8
output--8 >
.--> ?
Content--? F
)--F G
;--G H
break.. 
;.. 
case00 
ResourceType00 %
.00% &

Stylesheet00& 0
:000 1
_resourceManager11 (
.11( )
RenderStylesheet11) 9
(119 :
output11: @
.11@ A
Content11A H
)11H I
;11I J
break22 
;22 
case44 
ResourceType44 %
.44% &

HeadScript44& 0
:440 1
_resourceManager55 (
.55( )
RenderHeadScript55) 9
(559 :
output55: @
.55@ A
Content55A H
)55H I
;55I J
break66 
;66 
case88 
ResourceType88 %
.88% &

FootScript88& 0
:880 1
_resourceManager99 (
.99( )
RenderFootScript99) 9
(999 :
output99: @
.99@ A
Content99A H
)99H I
;99I J
break:: 
;:: 
case<< 
ResourceType<< %
.<<% &
Header<<& ,
:<<, -
_resourceManager== (
.==( )

RenderMeta==) 3
(==3 4
output==4 :
.==: ;
Content==; B
)==B C
;==C D
_resourceManager>> (
.>>( )
RenderHeadLink>>) 7
(>>7 8
output>>8 >
.>>> ?
Content>>? F
)>>F G
;>>G H
_resourceManager?? (
.??( )
RenderStylesheet??) 9
(??9 :
output??: @
.??@ A
Content??A H
)??H I
;??I J
_resourceManager@@ (
.@@( )
RenderHeadScript@@) 9
(@@9 :
output@@: @
.@@@ A
Content@@A H
)@@H I
;@@I J
breakAA 
;AA 
caseCC 
ResourceTypeCC %
.CC% &
FooterCC& ,
:CC, -
_resourceManagerDD (
.DD( )
RenderFootScriptDD) 9
(DD9 :
outputDD: @
.DD@ A
ContentDDA H
)DDH I
;DDI J
breakEE 
;EE 
defaultGG 
:GG 
breakHH 
;HH 
}II 
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL 
_loggerMM 
.MM 
LogErrorMM  
(MM  !
exMM! #
,MM# $
$strMM% Y
,MMY Z
TypeMM[ _
)MM_ `
;MM` a
}NN 
finallyOO 
{PP 
outputQQ 
.QQ 
TagNameQQ 
=QQ  
nullQQ! %
;QQ% &
}RR 
}SS 	
}TT 
}UU İÎ
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\ScriptTagHelper.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
.( )

TagHelpers) 3
{ 
[ 
HtmlTargetElement 
( 
$str 
,  

Attributes! +
=, -
NameAttributeName. ?
)? @
]@ A
[		 
HtmlTargetElement		 
(		 
$str		 
,		  

Attributes		! +
=		, -
SrcAttributeName		. >
)		> ?
]		? @
[

 
HtmlTargetElement

 
(

 
$str

 
,

  

Attributes

! +
=

, -
AtAttributeName

. =
)

= >
]

> ?
public 

class 
ScriptTagHelper  
:! "
	TagHelper# ,
{ 
private 
const 
string 
NameAttributeName .
=/ 0
$str1 ;
;; <
private 
const 
string 
SrcAttributeName -
=. /
$str0 9
;9 :
private 
const 
string 
AtAttributeName ,
=- .
$str/ 3
;3 4
private 
const 
string &
AppendVersionAttributeName 7
=8 9
$str: N
;N O
[ 	
HtmlAttributeName	 
( 
NameAttributeName ,
), -
]- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
HtmlAttributeName	 
( 
SrcAttributeName +
)+ ,
], -
public 
string 
Src 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
HtmlAttributeName	 
( &
AppendVersionAttributeName 5
)5 6
]6 7
public 
bool 
? 
AppendVersion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
CdnSrc 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DebugSrc 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
DebugCdnSrc !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
UseCdn 
{ 
get !
;! "
set# &
;& '
}( )
public   
string   
	Condition   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public!! 
string!! 
Culture!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public"" 
bool"" 
?"" 
Debug"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
public## 
string## 
	DependsOn## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public$$ 
string$$ 
Version$$ 
{$$ 
get$$  #
;$$# $
set$$% (
;$$( )
}$$* +
[&& 	
HtmlAttributeName&&	 
(&& 
AtAttributeName&& *
)&&* +
]&&+ ,
public'' 
ResourceLocation'' 
At''  "
{''# $
get''% (
;''( )
set''* -
;''- .
}''/ 0
private)) 
readonly)) 
IResourceManager)) )
_resourceManager))* :
;)): ;
public++ 
ScriptTagHelper++ 
(++ 
IResourceManager++ /
resourceManager++0 ?
)++? @
{,, 	
_resourceManager-- 
=-- 
resourceManager-- .
;--. /
}.. 	
public00 
override00 
async00 
Task00 "
ProcessAsync00# /
(00/ 0
TagHelperContext000 @
context00A H
,00H I
TagHelperOutput00J Y
output00Z `
)00` a
{11 	
output22 
.22 
SuppressOutput22 !
(22! "
)22" #
;22# $
if44 
(44 
String44 
.44 
IsNullOrEmpty44 $
(44$ %
Name44% )
)44) *
&&44+ -
!44. /
String44/ 5
.445 6
IsNullOrEmpty446 C
(44C D
Src44D G
)44G H
)44H I
{55 
RequireSettings66 
setting66  '
;66' (
if88 
(88 
String88 
.88 
IsNullOrEmpty88 (
(88( )
	DependsOn88) 2
)882 3
)883 4
{99 
setting;; 
=;; 
_resourceManager;; .
.;;. /
RegisterUrl;;/ :
(;;: ;
$str;;; C
,;;C D
Src;;E H
,;;H I
DebugSrc;;J R
);;R S
;;;S T
}<< 
else== 
{>> 
varBB 
nameBB 
=BB 
SrcBB "
.BB" #
ToLowerInvariantBB# 3
(BB3 4
)BB4 5
;BB5 6
varDD 

definitionDD "
=DD# $
_resourceManagerDD% 5
.DD5 6
InlineManifestDD6 D
.DDD E
DefineScriptDDE Q
(DDQ R
nameDDR V
)DDV W
;DDW X

definitionEE 
.EE 
SetUrlEE %
(EE% &
SrcEE& )
,EE) *
DebugSrcEE+ 3
)EE3 4
;EE4 5
ifGG 
(GG 
!GG 
StringGG 
.GG  
IsNullOrEmptyGG  -
(GG- .
VersionGG. 5
)GG5 6
)GG6 7
{HH 

definitionII "
.II" #

SetVersionII# -
(II- .
VersionII. 5
)II5 6
;II6 7
}JJ 
ifLL 
(LL 
!LL 
StringLL 
.LL  
IsNullOrEmptyLL  -
(LL- .
CdnSrcLL. 4
)LL4 5
)LL5 6
{MM 

definitionNN "
.NN" #
SetCdnNN# )
(NN) *
CdnSrcNN* 0
,NN0 1
DebugCdnSrcNN2 =
)NN= >
;NN> ?
}OO 
ifQQ 
(QQ 
!QQ 
StringQQ 
.QQ  
IsNullOrEmptyQQ  -
(QQ- .
CultureQQ. 5
)QQ5 6
)QQ6 7
{RR 

definitionSS "
.SS" #
SetCulturesSS# .
(SS. /
CultureSS/ 6
.SS6 7
SplitSS7 <
(SS< =
newSS= @
[SS@ A
]SSA B
{SSC D
$charSSE H
,SSH I
$charSSJ M
}SSN O
,SSO P
StringSplitOptionsSSQ c
.SSc d
RemoveEmptyEntriesSSd v
)SSv w
)SSw x
;SSx y
}TT 
ifVV 
(VV 
!VV 
StringVV 
.VV  
IsNullOrEmptyVV  -
(VV- .
	DependsOnVV. 7
)VV7 8
)VV8 9
{WW 

definitionXX "
.XX" #
SetDependenciesXX# 2
(XX2 3
	DependsOnXX3 <
.XX< =
SplitXX= B
(XXB C
newXXC F
[XXF G
]XXG H
{XXI J
$charXXK N
,XXN O
$charXXP S
}XXT U
,XXU V
StringSplitOptionsXXW i
.XXi j
RemoveEmptyEntriesXXj |
)XX| }
)XX} ~
;XX~ 
}YY 
if[[ 
([[ 
AppendVersion[[ %
.[[% &
HasValue[[& .
)[[. /
{\\ 

definition]] "
.]]" #
ShouldAppendVersion]]# 6
(]]6 7
AppendVersion]]7 D
)]]D E
;]]E F
}^^ 
if`` 
(`` 
!`` 
String`` 
.``  
IsNullOrEmpty``  -
(``- .
Version``. 5
)``5 6
)``6 7
{aa 

definitionbb "
.bb" #

SetVersionbb# -
(bb- .
Versionbb. 5
)bb5 6
;bb6 7
}cc 
settingee 
=ee 
_resourceManageree .
.ee. /
RegisterResourceee/ ?
(ee? @
$stree@ H
,eeH I
nameeeJ N
)eeN O
;eeO P
}ff 
ifhh 
(hh 
Athh 
!=hh 
ResourceLocationhh *
.hh* +
Unspecifiedhh+ 6
)hh6 7
{ii 
settingjj 
.jj 

AtLocationjj &
(jj& '
Atjj' )
)jj) *
;jj* +
}kk 
ifmm 
(mm 
!mm 
Stringmm 
.mm 
IsNullOrEmptymm )
(mm) *
	Conditionmm* 3
)mm3 4
)mm4 5
{nn 
settingoo 
.oo 
UseConditionoo (
(oo( )
	Conditionoo) 2
)oo2 3
;oo3 4
}pp 
ifrr 
(rr 
Debugrr 
!=rr 
nullrr !
)rr! "
{ss 
settingtt 
.tt 
UseDebugModett (
(tt( )
Debugtt) .
.tt. /
Valuett/ 4
)tt4 5
;tt5 6
}uu 
ifww 
(ww 
!ww 
Stringww 
.ww 
IsNullOrEmptyww )
(ww) *
Cultureww* 1
)ww1 2
)ww2 3
{xx 
settingyy 
.yy 

UseCultureyy &
(yy& '
Cultureyy' .
)yy. /
;yy/ 0
}zz 
if|| 
(|| 
AppendVersion|| !
.||! "
HasValue||" *
)||* +
{}} 
setting~~ 
.~~ 
ShouldAppendVersion~~ /
(~~/ 0
AppendVersion~~0 =
)~~= >
;~~> ?
} 
foreach
 
(
 
var
 
	attribute
 &
in
' )
output
* 0
.
0 1

Attributes
1 ;
)
; <
{
‚‚ 
setting
ƒƒ 
.
ƒƒ 
SetAttribute
ƒƒ (
(
ƒƒ( )
	attribute
ƒƒ) 2
.
ƒƒ2 3
Name
ƒƒ3 7
,
ƒƒ7 8
	attribute
ƒƒ9 B
.
ƒƒB C
Value
ƒƒC H
.
ƒƒH I
ToString
ƒƒI Q
(
ƒƒQ R
)
ƒƒR S
)
ƒƒS T
;
ƒƒT U
}
„„ 
if
†† 
(
†† 
At
†† 
==
†† 
ResourceLocation
†† *
.
††* +
Unspecified
††+ 6
||
††7 9
At
††: <
==
††= ?
ResourceLocation
††@ P
.
††P Q
Inline
††Q W
)
††W X
{
‡‡ 
_resourceManager
ˆˆ $
.
ˆˆ$ %
RenderLocalScript
ˆˆ% 6
(
ˆˆ6 7
setting
ˆˆ7 >
,
ˆˆ> ?
output
ˆˆ@ F
.
ˆˆF G
Content
ˆˆG N
)
ˆˆN O
;
ˆˆO P
}
‰‰ 
}
ŠŠ 
else
‹‹ 
if
‹‹ 
(
‹‹ 
!
‹‹ 
String
‹‹ 
.
‹‹ 
IsNullOrEmpty
‹‹ *
(
‹‹* +
Name
‹‹+ /
)
‹‹/ 0
&&
‹‹1 3
String
‹‹4 :
.
‹‹: ;
IsNullOrEmpty
‹‹; H
(
‹‹H I
Src
‹‹I L
)
‹‹L M
)
‹‹M N
{
ŒŒ 
var
 
setting
 
=
 
_resourceManager
 .
.
. /
RegisterResource
/ ?
(
? @
$str
@ H
,
H I
Name
J N
)
N O
;
O P
if
‘‘ 
(
‘‘ 
At
‘‘ 
!=
‘‘ 
ResourceLocation
‘‘ *
.
‘‘* +
Unspecified
‘‘+ 6
)
‘‘6 7
{
’’ 
setting
““ 
.
““ 

AtLocation
““ &
(
““& '
At
““' )
)
““) *
;
““* +
}
”” 
if
–– 
(
–– 
UseCdn
–– 
!=
–– 
null
–– "
)
––" #
{
—— 
setting
˜˜ 
.
˜˜ 
UseCdn
˜˜ "
(
˜˜" #
UseCdn
˜˜# )
.
˜˜) *
Value
˜˜* /
)
˜˜/ 0
;
˜˜0 1
}
™™ 
if
›› 
(
›› 
!
›› 
String
›› 
.
›› 
IsNullOrEmpty
›› )
(
››) *
	Condition
››* 3
)
››3 4
)
››4 5
{
œœ 
setting
 
.
 
UseCondition
 (
(
( )
	Condition
) 2
)
2 3
;
3 4
}
 
if
   
(
   
Debug
   
!=
   
null
   !
)
  ! "
{
¡¡ 
setting
¢¢ 
.
¢¢ 
UseDebugMode
¢¢ (
(
¢¢( )
Debug
¢¢) .
.
¢¢. /
Value
¢¢/ 4
)
¢¢4 5
;
¢¢5 6
}
££ 
if
¥¥ 
(
¥¥ 
!
¥¥ 
String
¥¥ 
.
¥¥ 
IsNullOrEmpty
¥¥ )
(
¥¥) *
Culture
¥¥* 1
)
¥¥1 2
)
¥¥2 3
{
¦¦ 
setting
§§ 
.
§§ 

UseCulture
§§ &
(
§§& '
Culture
§§' .
)
§§. /
;
§§/ 0
}
¨¨ 
if
ªª 
(
ªª 
AppendVersion
ªª !
.
ªª! "
HasValue
ªª" *
)
ªª* +
{
«« 
setting
¬¬ 
.
¬¬ !
ShouldAppendVersion
¬¬ /
(
¬¬/ 0
AppendVersion
¬¬0 =
)
¬¬= >
;
¬¬> ?
}
­­ 
if
¯¯ 
(
¯¯ 
!
¯¯ 
String
¯¯ 
.
¯¯ 
IsNullOrEmpty
¯¯ )
(
¯¯) *
Version
¯¯* 1
)
¯¯1 2
)
¯¯2 3
{
°° 
setting
±± 
.
±± 

UseVersion
±± &
(
±±& '
Version
±±' .
)
±±. /
;
±±/ 0
}
²² 
if
µµ 
(
µµ 
!
µµ 
String
µµ 
.
µµ 
IsNullOrEmpty
µµ )
(
µµ) *
	DependsOn
µµ* 3
)
µµ3 4
)
µµ4 5
{
¶¶ 
setting
·· 
.
·· 
SetDependencies
·· +
(
··+ ,
	DependsOn
··, 5
.
··5 6
Split
··6 ;
(
··; <
new
··< ?
[
··? @
]
··@ A
{
··B C
$char
··D G
,
··G H
$char
··I L
}
··M N
,
··N O 
StringSplitOptions
··P b
.
··b c 
RemoveEmptyEntries
··c u
)
··u v
)
··v w
;
··w x
}
¸¸ 
if
»» 
(
»» 
At
»» 
!=
»» 
ResourceLocation
»» *
.
»»* +
Unspecified
»»+ 6
)
»»6 7
{
¼¼ 
var
¾¾ 
childContent
¾¾ $
=
¾¾% &
await
¾¾' ,
output
¾¾- 3
.
¾¾3 4"
GetChildContentAsync
¾¾4 H
(
¾¾H I
)
¾¾I J
;
¾¾J K
if
¿¿ 
(
¿¿ 
!
¿¿ 
childContent
¿¿ %
.
¿¿% &!
IsEmptyOrWhiteSpace
¿¿& 9
)
¿¿9 :
{
ÀÀ 
_resourceManager
ÂÂ (
.
ÂÂ( )
InlineManifest
ÂÂ) 7
.
ÂÂ7 8
DefineScript
ÂÂ8 D
(
ÂÂD E
Name
ÂÂE I
)
ÂÂI J
.
ÃÃ 
SetInnerContent
ÃÃ ,
(
ÃÃ, -
childContent
ÃÃ- 9
.
ÃÃ9 :

GetContent
ÃÃ: D
(
ÃÃD E
)
ÃÃE F
)
ÃÃF G
;
ÃÃG H
}
ÄÄ 
if
ÆÆ 
(
ÆÆ 
At
ÆÆ 
==
ÆÆ 
ResourceLocation
ÆÆ .
.
ÆÆ. /
Inline
ÆÆ/ 5
)
ÆÆ5 6
{
ÇÇ 
_resourceManager
ÈÈ (
.
ÈÈ( )
RenderLocalScript
ÈÈ) :
(
ÈÈ: ;
setting
ÈÈ; B
,
ÈÈB C
output
ÈÈD J
.
ÈÈJ K
Content
ÈÈK R
)
ÈÈR S
;
ÈÈS T
}
ÉÉ 
}
ÊÊ 
else
ËË 
{
ÌÌ 
_resourceManager
ÍÍ $
.
ÍÍ$ %
RenderLocalScript
ÍÍ% 6
(
ÍÍ6 7
setting
ÍÍ7 >
,
ÍÍ> ?
output
ÍÍ@ F
.
ÍÍF G
Content
ÍÍG N
)
ÍÍN O
;
ÍÍO P
}
ÎÎ 
}
ÏÏ 
else
ĞĞ 
if
ĞĞ 
(
ĞĞ 
!
ĞĞ 
String
ĞĞ 
.
ĞĞ 
IsNullOrEmpty
ĞĞ *
(
ĞĞ* +
Name
ĞĞ+ /
)
ĞĞ/ 0
&&
ĞĞ1 3
!
ĞĞ4 5
String
ĞĞ5 ;
.
ĞĞ; <
IsNullOrEmpty
ĞĞ< I
(
ĞĞI J
Src
ĞĞJ M
)
ĞĞM N
)
ĞĞN O
{
ÑÑ 
var
ÔÔ 

definition
ÔÔ 
=
ÔÔ  
_resourceManager
ÔÔ! 1
.
ÔÔ1 2
InlineManifest
ÔÔ2 @
.
ÔÔ@ A
DefineScript
ÔÔA M
(
ÔÔM N
Name
ÔÔN R
)
ÔÔR S
;
ÔÔS T

definition
ÕÕ 
.
ÕÕ 
SetUrl
ÕÕ !
(
ÕÕ! "
Src
ÕÕ" %
,
ÕÕ% &
DebugSrc
ÕÕ' /
)
ÕÕ/ 0
;
ÕÕ0 1
if
×× 
(
×× 
!
×× 
String
×× 
.
×× 
IsNullOrEmpty
×× )
(
××) *
Version
××* 1
)
××1 2
)
××2 3
{
ØØ 

definition
ÙÙ 
.
ÙÙ 

SetVersion
ÙÙ )
(
ÙÙ) *
Version
ÙÙ* 1
)
ÙÙ1 2
;
ÙÙ2 3
}
ÚÚ 
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
String
ÜÜ 
.
ÜÜ 
IsNullOrEmpty
ÜÜ )
(
ÜÜ) *
CdnSrc
ÜÜ* 0
)
ÜÜ0 1
)
ÜÜ1 2
{
İİ 

definition
ŞŞ 
.
ŞŞ 
SetCdn
ŞŞ %
(
ŞŞ% &
CdnSrc
ŞŞ& ,
,
ŞŞ, -
DebugCdnSrc
ŞŞ. 9
)
ŞŞ9 :
;
ŞŞ: ;
}
ßß 
if
áá 
(
áá 
!
áá 
String
áá 
.
áá 
IsNullOrEmpty
áá )
(
áá) *
Culture
áá* 1
)
áá1 2
)
áá2 3
{
ââ 

definition
ãã 
.
ãã 
SetCultures
ãã *
(
ãã* +
Culture
ãã+ 2
.
ãã2 3
Split
ãã3 8
(
ãã8 9
new
ãã9 <
[
ãã< =
]
ãã= >
{
ãã? @
$char
ããA D
,
ããD E
$char
ããF I
}
ããJ K
,
ããK L 
StringSplitOptions
ããM _
.
ãã_ ` 
RemoveEmptyEntries
ãã` r
)
ããr s
)
ããs t
;
ããt u
}
ää 
if
ææ 
(
ææ 
!
ææ 
String
ææ 
.
ææ 
IsNullOrEmpty
ææ )
(
ææ) *
	DependsOn
ææ* 3
)
ææ3 4
)
ææ4 5
{
çç 

definition
èè 
.
èè 
SetDependencies
èè .
(
èè. /
	DependsOn
èè/ 8
.
èè8 9
Split
èè9 >
(
èè> ?
new
èè? B
[
èèB C
]
èèC D
{
èèE F
$char
èèG J
,
èèJ K
$char
èèL O
}
èèP Q
,
èèQ R 
StringSplitOptions
èèS e
.
èèe f 
RemoveEmptyEntries
èèf x
)
èèx y
)
èèy z
;
èèz {
}
éé 
if
ëë 
(
ëë 
AppendVersion
ëë !
.
ëë! "
HasValue
ëë" *
)
ëë* +
{
ìì 

definition
íí 
.
íí !
ShouldAppendVersion
íí 2
(
íí2 3
AppendVersion
íí3 @
)
íí@ A
;
ííA B
}
îî 
if
ğğ 
(
ğğ 
!
ğğ 
String
ğğ 
.
ğğ 
IsNullOrEmpty
ğğ )
(
ğğ) *
Version
ğğ* 1
)
ğğ1 2
)
ğğ2 3
{
ññ 

definition
òò 
.
òò 

SetVersion
òò )
(
òò) *
Version
òò* 1
)
òò1 2
;
òò2 3
}
óó 
if
öö 
(
öö 
At
öö 
!=
öö 
ResourceLocation
öö *
.
öö* +
Unspecified
öö+ 6
)
öö6 7
{
÷÷ 
var
øø 
setting
øø 
=
øø  !
_resourceManager
øø" 2
.
øø2 3
RegisterResource
øø3 C
(
øøC D
$str
øøD L
,
øøL M
Name
øøN R
)
øøR S
;
øøS T
setting
úú 
.
úú 

AtLocation
úú &
(
úú& '
At
úú' )
)
úú) *
;
úú* +
if
üü 
(
üü 
UseCdn
üü 
!=
üü !
null
üü" &
)
üü& '
{
ıı 
setting
şş 
.
şş  
UseCdn
şş  &
(
şş& '
UseCdn
şş' -
.
şş- .
Value
şş. 3
)
şş3 4
;
şş4 5
}
ÿÿ 
if
 
(
 
!
 
String
 
.
  
IsNullOrEmpty
  -
(
- .
	Condition
. 7
)
7 8
)
8 9
{
‚‚ 
setting
ƒƒ 
.
ƒƒ  
UseCondition
ƒƒ  ,
(
ƒƒ, -
	Condition
ƒƒ- 6
)
ƒƒ6 7
;
ƒƒ7 8
}
„„ 
if
†† 
(
†† 
Debug
†† 
!=
††  
null
††! %
)
††% &
{
‡‡ 
setting
ˆˆ 
.
ˆˆ  
UseDebugMode
ˆˆ  ,
(
ˆˆ, -
Debug
ˆˆ- 2
.
ˆˆ2 3
Value
ˆˆ3 8
)
ˆˆ8 9
;
ˆˆ9 :
}
‰‰ 
if
‹‹ 
(
‹‹ 
!
‹‹ 
String
‹‹ 
.
‹‹  
IsNullOrEmpty
‹‹  -
(
‹‹- .
Culture
‹‹. 5
)
‹‹5 6
)
‹‹6 7
{
ŒŒ 
setting
 
.
  

UseCulture
  *
(
* +
Culture
+ 2
)
2 3
;
3 4
}
 
foreach
 
(
 
var
  
	attribute
! *
in
+ -
output
. 4
.
4 5

Attributes
5 ?
)
? @
{
‘‘ 
setting
’’ 
.
’’  
SetAttribute
’’  ,
(
’’, -
	attribute
’’- 6
.
’’6 7
Name
’’7 ;
,
’’; <
	attribute
’’= F
.
’’F G
Value
’’G L
.
’’L M
ToString
’’M U
(
’’U V
)
’’V W
)
’’W X
;
’’X Y
}
““ 
if
•• 
(
•• 
At
•• 
==
•• 
ResourceLocation
•• .
.
••. /
Inline
••/ 5
)
••5 6
{
–– 
_resourceManager
—— (
.
——( )
RenderLocalScript
——) :
(
——: ;
setting
——; B
,
——B C
output
——D J
.
——J K
Content
——K R
)
——R S
;
——S T
}
˜˜ 
}
™™ 
}
šš 
else
›› 
if
›› 
(
›› 
String
›› 
.
›› 
IsNullOrEmpty
›› )
(
››) *
Name
››* .
)
››. /
&&
››0 2
String
››3 9
.
››9 :
IsNullOrEmpty
››: G
(
››G H
Src
››H K
)
››K L
)
››L M
{
œœ 
var
ŸŸ 
childContent
ŸŸ  
=
ŸŸ! "
await
ŸŸ# (
output
ŸŸ) /
.
ŸŸ/ 0"
GetChildContentAsync
ŸŸ0 D
(
ŸŸD E
)
ŸŸE F
;
ŸŸF G
var
¡¡ 
builder
¡¡ 
=
¡¡ 
new
¡¡ !

TagBuilder
¡¡" ,
(
¡¡, -
$str
¡¡- 5
)
¡¡5 6
;
¡¡6 7
builder
¢¢ 
.
¢¢ 
	InnerHtml
¢¢ !
.
¢¢! "

AppendHtml
¢¢" ,
(
¢¢, -
childContent
¢¢- 9
)
¢¢9 :
;
¢¢: ;
builder
££ 
.
££ 
TagRenderMode
££ %
=
££& '
TagRenderMode
££( 5
.
££5 6
Normal
££6 <
;
££< =
foreach
¥¥ 
(
¥¥ 
var
¥¥ 
	attribute
¥¥ &
in
¥¥' )
output
¥¥* 0
.
¥¥0 1

Attributes
¥¥1 ;
)
¥¥; <
{
¦¦ 
builder
§§ 
.
§§ 

Attributes
§§ &
.
§§& '
Add
§§' *
(
§§* +
	attribute
§§+ 4
.
§§4 5
Name
§§5 9
,
§§9 :
	attribute
§§; D
.
§§D E
Value
§§E J
.
§§J K
ToString
§§K S
(
§§S T
)
§§T U
)
§§U V
;
§§V W
}
¨¨ 
if
ªª 
(
ªª 
At
ªª 
==
ªª 
ResourceLocation
ªª *
.
ªª* +
Head
ªª+ /
)
ªª/ 0
{
«« 
_resourceManager
¬¬ $
.
¬¬$ % 
RegisterHeadScript
¬¬% 7
(
¬¬7 8
builder
¬¬8 ?
)
¬¬? @
;
¬¬@ A
}
­­ 
else
®® 
if
®® 
(
®® 
At
®® 
==
®® 
ResourceLocation
®® /
.
®®/ 0
Inline
®®0 6
)
®®6 7
{
¯¯ 
output
°° 
.
°° 
Content
°° "
.
°°" #
SetHtmlContent
°°# 1
(
°°1 2
builder
°°2 9
)
°°9 :
;
°°: ;
}
±± 
else
±± 
{
²² 
_resourceManager
³³ $
.
³³$ % 
RegisterFootScript
³³% 7
(
³³7 8
builder
³³8 ?
)
³³? @
;
³³@ A
}
´´ 
}
µµ 
}
¶¶ 	
}
·· 
}¸¸ è³
“D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\StyleTagHelper.cs
	namespace 	
OrchardCore
 
. 
ResourceManagement (
.( )

TagHelpers) 3
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes  *
=+ ,
NameAttributeName- >
)> ?
]? @
[		 
HtmlTargetElement		 
(		 
$str		 
,		 

Attributes		  *
=		+ ,
SrcAttributeName		- =
)		= >
]		> ?
[

 
HtmlTargetElement

 
(

 
$str

 
,

 

Attributes

  *
=

+ ,
AtAttributeName

- <
)

< =
]

= >
public 

class 
StyleTagHelper 
:  !
	TagHelper" +
{ 
private 
const 
string 
NameAttributeName .
=/ 0
$str1 ;
;; <
private 
const 
string 
SrcAttributeName -
=. /
$str0 9
;9 :
private 
const 
string 
AtAttributeName ,
=- .
$str/ 3
;3 4
private 
const 
string &
AppendVersionAttributeName 7
=8 9
$str: N
;N O
[ 	
HtmlAttributeName	 
( 
NameAttributeName ,
), -
]- .
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
HtmlAttributeName	 
( 
SrcAttributeName +
)+ ,
], -
public 
string 
Src 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
HtmlAttributeName	 
( &
AppendVersionAttributeName 5
)5 6
]6 7
public 
bool 
? 
AppendVersion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
CdnSrc 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DebugSrc 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
DebugCdnSrc !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 
UseCdn 
{ 
get !
;! "
set# &
;& '
}( )
public   
string   
	Condition   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public!! 
string!! 
Culture!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public"" 
bool"" 
?"" 
Debug"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
public## 
string## 
	DependsOn## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public$$ 
string$$ 
Version$$ 
{$$ 
get$$  #
;$$# $
set$$% (
;$$( )
}$$* +
[&& 	
HtmlAttributeName&&	 
(&& 
AtAttributeName&& *
)&&* +
]&&+ ,
public'' 
ResourceLocation'' 
At''  "
{''# $
get''% (
;''( )
set''* -
;''- .
}''/ 0
private)) 
readonly)) 
IResourceManager)) )
_resourceManager))* :
;)): ;
public++ 
StyleTagHelper++ 
(++ 
IResourceManager++ .
resourceManager++/ >
)++> ?
{,, 	
_resourceManager-- 
=-- 
resourceManager-- .
;--. /
}.. 	
public00 
override00 
async00 
Task00 "
ProcessAsync00# /
(00/ 0
TagHelperContext000 @
context00A H
,00H I
TagHelperOutput00J Y
output00Z `
)00` a
{11 	
output22 
.22 
SuppressOutput22 !
(22! "
)22" #
;22# $
if44 
(44 
String44 
.44 
IsNullOrEmpty44 $
(44$ %
Name44% )
)44) *
&&44+ -
!44. /
String44/ 5
.445 6
IsNullOrEmpty446 C
(44C D
Src44D G
)44G H
)44H I
{55 
var77 
setting77 
=77 
_resourceManager77 .
.77. /
RegisterUrl77/ :
(77: ;
$str77; G
,77G H
Src77I L
,77L M
DebugSrc77N V
)77V W
;77W X
foreach99 
(99 
var99 
	attribute99 &
in99' )
output99* 0
.990 1

Attributes991 ;
)99; <
{:: 
setting;; 
.;; 
SetAttribute;; (
(;;( )
	attribute;;) 2
.;;2 3
Name;;3 7
,;;7 8
	attribute;;9 B
.;;B C
Value;;C H
.;;H I
ToString;;I Q
(;;Q R
);;R S
);;S T
;;;T U
}<< 
if>> 
(>> 
At>> 
!=>> 
ResourceLocation>> *
.>>* +
Unspecified>>+ 6
)>>6 7
{?? 
setting@@ 
.@@ 

AtLocation@@ &
(@@& '
At@@' )
)@@) *
;@@* +
}AA 
elseBB 
{CC 
settingDD 
.DD 

AtLocationDD &
(DD& '
ResourceLocationDD' 7
.DD7 8
HeadDD8 <
)DD< =
;DD= >
}EE 
ifGG 
(GG 
!GG 
StringGG 
.GG 
IsNullOrEmptyGG )
(GG) *
	ConditionGG* 3
)GG3 4
)GG4 5
{HH 
settingII 
.II 
UseConditionII (
(II( )
	ConditionII) 2
)II2 3
;II3 4
}JJ 
ifLL 
(LL 
AppendVersionLL !
.LL! "
HasValueLL" *
==LL+ -
trueLL. 2
)LL2 3
{MM 
settingNN 
.NN 
ShouldAppendVersionNN /
(NN/ 0
AppendVersionNN0 =
)NN= >
;NN> ?
}OO 
ifQQ 
(QQ 
DebugQQ 
!=QQ 
nullQQ !
)QQ! "
{RR 
settingSS 
.SS 
UseDebugModeSS (
(SS( )
DebugSS) .
.SS. /
ValueSS/ 4
)SS4 5
;SS5 6
}TT 
ifVV 
(VV 
!VV 
StringVV 
.VV 
IsNullOrEmptyVV )
(VV) *
CultureVV* 1
)VV1 2
)VV2 3
{WW 
settingXX 
.XX 

UseCultureXX &
(XX& '
CultureXX' .
)XX. /
;XX/ 0
}YY 
if[[ 
([[ 
![[ 
String[[ 
.[[ 
IsNullOrEmpty[[ )
([[) *
	DependsOn[[* 3
)[[3 4
)[[4 5
{\\ 
setting]] 
.]] 
SetDependencies]] +
(]]+ ,
	DependsOn]], 5
.]]5 6
Split]]6 ;
(]]; <
new]]< ?
[]]? @
]]]@ A
{]]B C
$char]]D G
,]]G H
$char]]I L
}]]M N
,]]N O
StringSplitOptions]]P b
.]]b c
RemoveEmptyEntries]]c u
)]]u v
)]]v w
;]]w x
}^^ 
if`` 
(`` 
At`` 
==`` 
ResourceLocation`` *
.``* +
Inline``+ 1
)``1 2
{aa 
_resourceManagerbb $
.bb$ %
RenderLocalStylebb% 5
(bb5 6
settingbb6 =
,bb= >
outputbb? E
.bbE F
ContentbbF M
)bbM N
;bbN O
}cc 
}ee 
elseff 
ifff 
(ff 
!ff 
Stringff 
.ff 
IsNullOrEmptyff *
(ff* +
Nameff+ /
)ff/ 0
&&ff1 3
Stringff4 :
.ff: ;
IsNullOrEmptyff; H
(ffH I
SrcffI L
)ffL M
)ffM N
{gg 
varjj 
settingjj 
=jj 
_resourceManagerjj .
.jj. /
RegisterResourcejj/ ?
(jj? @
$strjj@ L
,jjL M
NamejjN R
)jjR S
;jjS T
foreachll 
(ll 
varll 
	attributell &
inll' )
outputll* 0
.ll0 1

Attributesll1 ;
)ll; <
{mm 
settingnn 
.nn 
SetAttributenn (
(nn( )
	attributenn) 2
.nn2 3
Namenn3 7
,nn7 8
	attributenn9 B
.nnB C
ValuennC H
.nnH I
ToStringnnI Q
(nnQ R
)nnR S
)nnS T
;nnT U
}oo 
ifqq 
(qq 
Atqq 
!=qq 
ResourceLocationqq *
.qq* +
Unspecifiedqq+ 6
)qq6 7
{rr 
settingss 
.ss 

AtLocationss &
(ss& '
Atss' )
)ss) *
;ss* +
}tt 
elseuu 
{vv 
settingww 
.ww 

AtLocationww &
(ww& '
ResourceLocationww' 7
.ww7 8
Headww8 <
)ww< =
;ww= >
}xx 
ifzz 
(zz 
UseCdnzz 
!=zz 
nullzz "
)zz" #
{{{ 
setting|| 
.|| 
UseCdn|| "
(||" #
UseCdn||# )
.||) *
Value||* /
)||/ 0
;||0 1
}}} 
if 
( 
! 
String 
. 
IsNullOrEmpty )
() *
	Condition* 3
)3 4
)4 5
{
€€ 
setting
 
.
 
UseCondition
 (
(
( )
	Condition
) 2
)
2 3
;
3 4
}
‚‚ 
if
„„ 
(
„„ 
Debug
„„ 
!=
„„ 
null
„„ !
)
„„! "
{
…… 
setting
†† 
.
†† 
UseDebugMode
†† (
(
††( )
Debug
††) .
.
††. /
Value
††/ 4
)
††4 5
;
††5 6
}
‡‡ 
if
‰‰ 
(
‰‰ 
!
‰‰ 
String
‰‰ 
.
‰‰ 
IsNullOrEmpty
‰‰ )
(
‰‰) *
Culture
‰‰* 1
)
‰‰1 2
)
‰‰2 3
{
ŠŠ 
setting
‹‹ 
.
‹‹ 

UseCulture
‹‹ &
(
‹‹& '
Culture
‹‹' .
)
‹‹. /
;
‹‹/ 0
}
ŒŒ 
if
 
(
 
AppendVersion
 !
.
! "
HasValue
" *
==
+ -
true
. 2
)
2 3
{
 
setting
 
.
 !
ShouldAppendVersion
 /
(
/ 0
AppendVersion
0 =
)
= >
;
> ?
}
‘‘ 
if
““ 
(
““ 
!
““ 
String
““ 
.
““ 
IsNullOrEmpty
““ )
(
““) *
Version
““* 1
)
““1 2
)
““2 3
{
”” 
setting
•• 
.
•• 

UseVersion
•• &
(
••& '
Version
••' .
)
••. /
;
••/ 0
}
–– 
if
™™ 
(
™™ 
!
™™ 
String
™™ 
.
™™ 
IsNullOrEmpty
™™ )
(
™™) *
	DependsOn
™™* 3
)
™™3 4
)
™™4 5
{
šš 
setting
›› 
.
›› 
SetDependencies
›› +
(
››+ ,
	DependsOn
››, 5
.
››5 6
Split
››6 ;
(
››; <
new
››< ?
[
››? @
]
››@ A
{
››B C
$char
››D G
,
››G H
$char
››I L
}
››M N
,
››N O 
StringSplitOptions
››P b
.
››b c 
RemoveEmptyEntries
››c u
)
››u v
)
››v w
;
››w x
}
œœ 
var
 
childContent
  
=
! "
await
# (
output
) /
.
/ 0"
GetChildContentAsync
0 D
(
D E
)
E F
;
F G
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
childContent
ŸŸ !
.
ŸŸ! "!
IsEmptyOrWhiteSpace
ŸŸ" 5
)
ŸŸ5 6
{
   
_resourceManager
¢¢ $
.
¢¢$ %
InlineManifest
¢¢% 3
.
¢¢3 4
DefineStyle
¢¢4 ?
(
¢¢? @
Name
¢¢@ D
)
¢¢D E
.
££ 
SetInnerContent
££ (
(
££( )
childContent
££) 5
.
££5 6

GetContent
££6 @
(
££@ A
)
££A B
)
££B C
;
££C D
}
¤¤ 
if
¦¦ 
(
¦¦ 
At
¦¦ 
==
¦¦ 
ResourceLocation
¦¦ *
.
¦¦* +
Inline
¦¦+ 1
)
¦¦1 2
{
§§ 
_resourceManager
¨¨ $
.
¨¨$ %
RenderLocalStyle
¨¨% 5
(
¨¨5 6
setting
¨¨6 =
,
¨¨= >
output
¨¨? E
.
¨¨E F
Content
¨¨F M
)
¨¨M N
;
¨¨N O
}
©© 
}
ªª 
else
«« 
if
«« 
(
«« 
!
«« 
String
«« 
.
«« 
IsNullOrEmpty
«« *
(
««* +
Name
««+ /
)
««/ 0
&&
««1 3
!
««4 5
String
««5 ;
.
««; <
IsNullOrEmpty
««< I
(
««I J
Src
««J M
)
««M N
)
««N O
{
¬¬ 
var
¯¯ 

definition
¯¯ 
=
¯¯  
_resourceManager
¯¯! 1
.
¯¯1 2
InlineManifest
¯¯2 @
.
¯¯@ A
DefineStyle
¯¯A L
(
¯¯L M
Name
¯¯M Q
)
¯¯Q R
;
¯¯R S

definition
°° 
.
°° 
SetUrl
°° !
(
°°! "
Src
°°" %
,
°°% &
DebugSrc
°°' /
)
°°/ 0
;
°°0 1
foreach
²² 
(
²² 
var
²² 
	attribute
²² &
in
²²' )
output
²²* 0
.
²²0 1

Attributes
²²1 ;
)
²²; <
{
³³ 

definition
´´ 
.
´´ 
SetAttribute
´´ +
(
´´+ ,
	attribute
´´, 5
.
´´5 6
Name
´´6 :
,
´´: ;
	attribute
´´< E
.
´´E F
Value
´´F K
.
´´K L
ToString
´´L T
(
´´T U
)
´´U V
)
´´V W
;
´´W X
}
µµ 
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
··) *
Version
··* 1
)
··1 2
)
··2 3
{
¸¸ 

definition
¹¹ 
.
¹¹ 

SetVersion
¹¹ )
(
¹¹) *
Version
¹¹* 1
)
¹¹1 2
;
¹¹2 3
}
ºº 
if
¼¼ 
(
¼¼ 
!
¼¼ 
String
¼¼ 
.
¼¼ 
IsNullOrEmpty
¼¼ )
(
¼¼) *
CdnSrc
¼¼* 0
)
¼¼0 1
)
¼¼1 2
{
½½ 

definition
¾¾ 
.
¾¾ 
SetCdn
¾¾ %
(
¾¾% &
CdnSrc
¾¾& ,
,
¾¾, -
DebugCdnSrc
¾¾. 9
)
¾¾9 :
;
¾¾: ;
}
¿¿ 
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
String
ÁÁ 
.
ÁÁ 
IsNullOrEmpty
ÁÁ )
(
ÁÁ) *
Culture
ÁÁ* 1
)
ÁÁ1 2
)
ÁÁ2 3
{
ÂÂ 

definition
ÃÃ 
.
ÃÃ 
SetCultures
ÃÃ *
(
ÃÃ* +
Culture
ÃÃ+ 2
.
ÃÃ2 3
Split
ÃÃ3 8
(
ÃÃ8 9
$char
ÃÃ9 <
,
ÃÃ< = 
StringSplitOptions
ÃÃ> P
.
ÃÃP Q 
RemoveEmptyEntries
ÃÃQ c
)
ÃÃc d
)
ÃÃd e
;
ÃÃe f
}
ÄÄ 
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
String
ÆÆ 
.
ÆÆ 
IsNullOrEmpty
ÆÆ )
(
ÆÆ) *
	DependsOn
ÆÆ* 3
)
ÆÆ3 4
)
ÆÆ4 5
{
ÇÇ 

definition
ÈÈ 
.
ÈÈ 
SetDependencies
ÈÈ .
(
ÈÈ. /
	DependsOn
ÈÈ/ 8
.
ÈÈ8 9
Split
ÈÈ9 >
(
ÈÈ> ?
$char
ÈÈ? B
,
ÈÈB C 
StringSplitOptions
ÈÈD V
.
ÈÈV W 
RemoveEmptyEntries
ÈÈW i
)
ÈÈi j
)
ÈÈj k
;
ÈÈk l
}
ÉÉ 
var
ÌÌ 
setting
ÌÌ 
=
ÌÌ 
_resourceManager
ÌÌ .
.
ÌÌ. /
RegisterResource
ÌÌ/ ?
(
ÌÌ? @
$str
ÌÌ@ L
,
ÌÌL M
Name
ÌÌN R
)
ÌÌR S
;
ÌÌS T
if
ÎÎ 
(
ÎÎ 
UseCdn
ÎÎ 
!=
ÎÎ 
null
ÎÎ "
)
ÎÎ" #
{
ÏÏ 
setting
ĞĞ 
.
ĞĞ 
UseCdn
ĞĞ "
(
ĞĞ" #
UseCdn
ĞĞ# )
.
ĞĞ) *
Value
ĞĞ* /
)
ĞĞ/ 0
;
ĞĞ0 1
}
ÑÑ 
if
ÓÓ 
(
ÓÓ 
!
ÓÓ 
String
ÓÓ 
.
ÓÓ 
IsNullOrEmpty
ÓÓ )
(
ÓÓ) *
	Condition
ÓÓ* 3
)
ÓÓ3 4
)
ÓÓ4 5
{
ÔÔ 
setting
ÕÕ 
.
ÕÕ 
UseCondition
ÕÕ (
(
ÕÕ( )
	Condition
ÕÕ) 2
)
ÕÕ2 3
;
ÕÕ3 4
}
ÖÖ 
if
ØØ 
(
ØØ 
Debug
ØØ 
!=
ØØ 
null
ØØ !
)
ØØ! "
{
ÙÙ 
setting
ÚÚ 
.
ÚÚ 
UseDebugMode
ÚÚ (
(
ÚÚ( )
Debug
ÚÚ) .
.
ÚÚ. /
Value
ÚÚ/ 4
)
ÚÚ4 5
;
ÚÚ5 6
}
ÛÛ 
if
İİ 
(
İİ 
!
İİ 
String
İİ 
.
İİ 
IsNullOrEmpty
İİ )
(
İİ) *
Culture
İİ* 1
)
İİ1 2
)
İİ2 3
{
ŞŞ 
setting
ßß 
.
ßß 

UseCulture
ßß &
(
ßß& '
Culture
ßß' .
)
ßß. /
;
ßß/ 0
}
àà 
if
ââ 
(
ââ 
At
ââ 
!=
ââ 
ResourceLocation
ââ *
.
ââ* +
Unspecified
ââ+ 6
)
ââ6 7
{
ãã 
setting
ää 
.
ää 

AtLocation
ää &
(
ää& '
At
ää' )
)
ää) *
;
ää* +
}
åå 
else
ææ 
{
çç 
setting
èè 
.
èè 

AtLocation
èè &
(
èè& '
ResourceLocation
èè' 7
.
èè7 8
Head
èè8 <
)
èè< =
;
èè= >
}
éé 
if
ëë 
(
ëë 
At
ëë 
==
ëë 
ResourceLocation
ëë *
.
ëë* +
Inline
ëë+ 1
)
ëë1 2
{
ìì 
_resourceManager
íí $
.
íí$ %
RenderLocalStyle
íí% 5
(
íí5 6
setting
íí6 =
,
íí= >
output
íí? E
.
ííE F
Content
ííF M
)
ííM N
;
ííN O
}
îî 
}
ïï 
else
ğğ 
if
ğğ 
(
ğğ 
String
ğğ 
.
ğğ 
IsNullOrEmpty
ğğ )
(
ğğ) *
Name
ğğ* .
)
ğğ. /
&&
ğğ0 2
String
ğğ3 9
.
ğğ9 :
IsNullOrEmpty
ğğ: G
(
ğğG H
Src
ğğH K
)
ğğK L
)
ğğL M
{
ññ 
var
ôô 
childContent
ôô  
=
ôô! "
await
ôô# (
output
ôô) /
.
ôô/ 0"
GetChildContentAsync
ôô0 D
(
ôôD E
)
ôôE F
;
ôôF G
var
öö 
builder
öö 
=
öö 
new
öö !

TagBuilder
öö" ,
(
öö, -
$str
öö- 4
)
öö4 5
;
öö5 6
builder
÷÷ 
.
÷÷ 
	InnerHtml
÷÷ !
.
÷÷! "

AppendHtml
÷÷" ,
(
÷÷, -
childContent
÷÷- 9
)
÷÷9 :
;
÷÷: ;
builder
øø 
.
øø 
TagRenderMode
øø %
=
øø& '
TagRenderMode
øø( 5
.
øø5 6
Normal
øø6 <
;
øø< =
foreach
úú 
(
úú 
var
úú 
	attribute
úú &
in
úú' )
output
úú* 0
.
úú0 1

Attributes
úú1 ;
)
úú; <
{
ûû 
builder
üü 
.
üü 

Attributes
üü &
.
üü& '
Add
üü' *
(
üü* +
	attribute
üü+ 4
.
üü4 5
Name
üü5 9
,
üü9 :
	attribute
üü; D
.
üüD E
Value
üüE J
.
üüJ K
ToString
üüK S
(
üüS T
)
üüT U
)
üüU V
;
üüV W
}
ıı 
if
€€ 
(
€€ 
!
€€ 
builder
€€ 
.
€€ 

Attributes
€€ '
.
€€' (
ContainsKey
€€( 3
(
€€3 4
$str
€€4 :
)
€€: ;
)
€€; <
{
 
builder
‚‚ 
.
‚‚ 

Attributes
‚‚ &
.
‚‚& '
Add
‚‚' *
(
‚‚* +
$str
‚‚+ 1
,
‚‚1 2
$str
‚‚3 =
)
‚‚= >
;
‚‚> ?
}
ƒƒ 
if
…… 
(
…… 
At
…… 
==
…… 
ResourceLocation
…… *
.
……* +
Inline
……+ 1
)
……1 2
{
†† 
output
‡‡ 
.
‡‡ 
Content
‡‡ "
.
‡‡" #
SetHtmlContent
‡‡# 1
(
‡‡1 2
builder
‡‡2 9
)
‡‡9 :
;
‡‡: ;
}
ˆˆ 
else
‰‰ 
{
ŠŠ 
_resourceManager
‹‹ $
.
‹‹$ %
RegisterStyle
‹‹% 2
(
‹‹2 3
builder
‹‹3 :
)
‹‹: ;
;
‹‹; <
}
ŒŒ 
}
 
}
 	
}
 
} 