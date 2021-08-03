�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\Properties\AssemblyInfo.cs
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
]7 8�#
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\Razor\ResourceCdnHelperExtensions.cs
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
;	 �
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
}++ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ResourceDictionary.cs
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
.	 �
Name
� �
}
� �
' and '
� �
{
� �
resource
� �
.
� �
Name
� �
}
� �
'
� �
"
� �
)
� �
;
� �
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
}11 ԗ
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ResourceManager.cs
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
RequireSettings	t �
>
� �
(
� �
)
� �
;
� �
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
�� 
void
��  
RegisterFootScript
�� &
(
��& '
IHtmlContent
��' 3
script
��4 :
)
��: ;
{
�� 	
if
�� 
(
�� 
_footScripts
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
_footScripts
�� 
=
�� 
new
�� "
List
��# '
<
��' (
IHtmlContent
��( 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
_footScripts
�� 
.
�� 
Add
�� 
(
�� 
script
�� #
)
��# $
;
��$ %
}
�� 	
public
�� 
void
�� 
RegisterStyle
�� !
(
��! "
IHtmlContent
��" .
style
��/ 4
)
��4 5
{
�� 	
if
�� 
(
�� 
_styles
�� 
==
�� 
null
�� 
)
��  
{
�� 
_styles
�� 
=
�� 
new
�� 
List
�� "
<
��" #
IHtmlContent
��# /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
_styles
�� 
.
�� 
Add
�� 
(
�� 
style
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
NotRequired
�� 
(
��  
string
��  &
resourceType
��' 3
,
��3 4
string
��5 ;
resourceName
��< H
)
��H I
{
�� 	
if
�� 
(
�� 
resourceType
�� 
==
�� 
null
��  $
)
��$ %
{
�� (
ThrowArgumentNullException
�� *
(
��* +
nameof
��+ 1
(
��1 2
resourceType
��2 >
)
��> ?
)
��? @
;
��@ A
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
resourceName
�� 
==
�� 
null
��  $
)
��$ %
{
�� (
ThrowArgumentNullException
�� *
(
��* +
nameof
��+ 1
(
��1 2
resourceName
��2 >
)
��> ?
)
��? @
;
��@ A
return
�� 
;
�� 
}
�� 
var
�� 
key
�� 
=
�� 
new
�� 
ResourceTypeName
�� *
(
��* +
resourceType
��+ 7
,
��7 8
resourceName
��9 E
)
��E F
;
��F G
_builtResources
�� 
[
�� 
resourceType
�� (
]
��( )
=
��* +
null
��, 0
;
��0 1
	_required
�� 
.
�� 
Remove
�� 
(
�� 
key
��  
)
��  !
;
��! "
}
�� 	
public
��  
ResourceDefinition
�� !
FindResource
��" .
(
��. /
RequireSettings
��/ >
settings
��? G
)
��G H
{
�� 	
return
�� 
FindResource
�� 
(
��  
settings
��  (
,
��( )
true
��* .
)
��. /
;
��/ 0
}
�� 	
private
��  
ResourceDefinition
�� "
FindResource
��# /
(
��/ 0
RequireSettings
��0 ?
settings
��@ H
,
��H I
bool
��J N&
resolveInlineDefinitions
��O g
)
��g h
{
�� 	
var
�� 
name
�� 
=
�� 
settings
�� 
.
��  
Name
��  $
??
��% '
$str
��( *
;
��* +
var
�� 
type
�� 
=
�� 
settings
�� 
.
��  
Type
��  $
;
��$ %
var
�� 
stream
�� 
=
�� 
ResourceManifests
�� *
.
��* +

SelectMany
��+ 5
(
��5 6
x
��6 7
=>
��8 :
x
��; <
.
��< =
GetResources
��= I
(
��I J
type
��J N
)
��N O
)
��O P
;
��P Q
var
�� 
resource
�� 
=
�� "
FindMatchingResource
�� /
(
��/ 0
stream
��0 6
,
��6 7
settings
��8 @
,
��@ A
name
��B F
)
��F G
;
��G H
if
�� 
(
�� 
resource
�� 
==
�� 
null
��  
&&
��! #
_dynamicManifest
��$ 4
!=
��5 7
null
��8 <
)
��< =
{
�� 
stream
�� 
=
�� 
_dynamicManifest
�� )
.
��) *
GetResources
��* 6
(
��6 7
type
��7 ;
)
��; <
;
��< =
resource
�� 
=
�� "
FindMatchingResource
�� /
(
��/ 0
stream
��0 6
,
��6 7
settings
��8 @
,
��@ A
name
��B F
)
��F G
;
��G H
}
�� 
if
�� 
(
�� &
resolveInlineDefinitions
�� (
&&
��) +
resource
��, 4
==
��5 7
null
��8 <
)
��< =
{
�� 
if
�� 
(
�� &
ResolveInlineDefinitions
�� ,
(
��, -
settings
��- 5
.
��5 6
Type
��6 :
)
��: ;
)
��; <
{
�� 
resource
�� 
=
�� 
FindResource
�� +
(
��+ ,
settings
��, 4
,
��4 5
false
��6 ;
)
��; <
;
��< =
}
�� 
}
�� 
return
�� 
resource
�� 
;
�� 
}
�� 	
private
��  
ResourceDefinition
�� ""
FindMatchingResource
��# 7
(
��7 8
IEnumerable
�� 
<
�� 
KeyValuePair
�� $
<
��$ %
string
��% +
,
��+ ,
IList
��- 2
<
��2 3 
ResourceDefinition
��3 E
>
��E F
>
��F G
>
��G H
stream
��I O
,
��O P
RequireSettings
�� 
settings
�� $
,
��$ %
string
�� 
name
�� 
)
�� 
{
�� 	
Version
�� 
lower
�� 
=
�� 
null
��  
;
��  !
Version
�� 
upper
�� 
=
�� 
null
��  
;
��  !
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
settings
��& .
.
��. /
Version
��/ 6
)
��6 7
)
��7 8
{
�� 
lower
�� 
=
�� "
GetLowerBoundVersion
�� ,
(
��, -
settings
��- 5
.
��5 6
Version
��6 =
)
��= >
;
��> ?
upper
�� 
=
�� "
GetUpperBoundVersion
�� ,
(
��, -
settings
��- 5
.
��5 6
Version
��6 =
)
��= >
;
��> ?
}
��  
ResourceDefinition
�� 
resource
�� '
=
��( )
null
��* .
;
��. /
foreach
�� 
(
�� 
var
�� 
r
�� 
in
�� 
stream
�� $
)
��$ %
{
�� 
if
�� 
(
�� 
String
�� 
.
�� 
Equals
�� !
(
��! "
r
��" #
.
��# $
Key
��$ '
,
��' (
name
��) -
,
��- .
StringComparison
��/ ?
.
��? @
OrdinalIgnoreCase
��@ Q
)
��Q R
)
��R S
{
�� 
foreach
�� 
(
�� 
var
��   
resourceDefinition
��! 3
in
��4 6
r
��7 8
.
��8 9
Value
��9 >
)
��> ?
{
�� 
var
�� 
version
�� #
=
��$ % 
resourceDefinition
��& 8
.
��8 9
Version
��9 @
!=
��A C
null
��D H
?
�� 
new
�� !
Version
��" )
(
��) * 
resourceDefinition
��* <
.
��< =
Version
��= D
)
��D E
:
�� 
null
�� "
;
��" #
if
�� 
(
�� 
lower
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
��  
lower
��  %
>
��& '
version
��( /
||
��0 2
version
��3 :
>=
��; =
upper
��> C
)
��C D
{
�� 
continue
��  (
;
��( )
}
�� 
}
�� 
if
�� 
(
�� 
resource
�� $
==
��% '
null
��( ,
||
�� 
(
��   
resourceDefinition
��  2
.
��2 3
Version
��3 :
!=
��; =
null
��> B
&&
��C E
new
��F I
Version
��J Q
(
��Q R
resource
��R Z
.
��Z [
Version
��[ b
)
��b c
<
��d e
version
��f m
)
��m n
)
��n o
{
�� 
resource
�� $
=
��% & 
resourceDefinition
��' 9
;
��9 :
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
resource
�� 
;
�� 
}
�� 	
private
�� 
Version
�� "
GetUpperBoundVersion
�� ,
(
��, -
string
��- 3
minimumVersion
��4 B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 
Version
�� 
.
�� 
TryParse
�� !
(
��! "
minimumVersion
��" 0
,
��0 1
out
��2 5
var
��6 9
version
��: A
)
��A B
)
��B C
{
�� 
if
�� 
(
�� 
Int32
�� 
.
�� 
TryParse
�� "
(
��" #
minimumVersion
��# 1
,
��1 2
out
��3 6
var
��7 :
major
��; @
)
��@ A
)
��A B
{
�� 
return
�� 
new
�� 
Version
�� &
(
��& '
major
��' ,
+
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
}
�� 
}
�� 
if
�� 
(
�� 
version
�� 
.
�� 
Build
�� 
!=
��  
-
��! "
$num
��" #
)
��# $
{
�� 
return
�� 
new
�� 
Version
�� "
(
��" #
version
��# *
.
��* +
Major
��+ 0
,
��0 1
version
��2 9
.
��9 :
Minor
��: ?
,
��? @
version
��A H
.
��H I
Build
��I N
+
��O P
$num
��Q R
)
��R S
;
��S T
}
�� 
if
�� 
(
�� 
version
�� 
.
�� 
Minor
�� 
!=
��  
-
��! "
$num
��" #
)
��# $
{
�� 
return
�� 
new
�� 
Version
�� "
(
��" #
version
��# *
.
��* +
Major
��+ 0
,
��0 1
version
��2 9
.
��9 :
Minor
��: ?
+
��@ A
$num
��B C
,
��C D
$num
��E F
)
��F G
;
��G H
}
�� 
return
�� 
version
�� 
;
�� 
}
�� 	
private
�� 
Version
�� "
GetLowerBoundVersion
�� ,
(
��, -
string
��- 3
minimumVersion
��4 B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 
Version
�� 
.
�� 
TryParse
�� !
(
��! "
minimumVersion
��" 0
,
��0 1
out
��2 5
var
��6 9
version
��: A
)
��A B
)
��B C
{
�� 
if
�� 
(
�� 
Int32
�� 
.
�� 
TryParse
�� "
(
��" #
minimumVersion
��# 1
,
��1 2
out
��3 6
var
��7 :
major
��; @
)
��@ A
)
��A B
{
�� 
return
�� 
new
�� 
Version
�� &
(
��& '
major
��' ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
}
�� 
}
�� 
return
�� 
version
�� 
;
�� 
}
�� 	
private
�� 
bool
�� &
ResolveInlineDefinitions
�� -
(
��- .
string
��. 4
resourceType
��5 A
)
��A B
{
�� 	
var
�� 
anyWereDefined
�� 
=
��  
false
��! &
;
��& '
foreach
�� 
(
�� 
var
�� 
settings
�� !
in
��" $&
ResolveRequiredResources
��% =
(
��= >
resourceType
��> J
)
��J K
)
��K L
{
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
InlineDefinition
�� -
==
��. 0
null
��1 5
)
��5 6
{
�� 
continue
�� 
;
�� 
}
�� 
var
�� 
resource
�� 
=
�� 
FindResource
�� +
(
��+ ,
settings
��, 4
,
��4 5
false
��6 ;
)
��; <
;
��< =
if
�� 
(
�� 
resource
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
resource
�� 
=
�� 
InlineManifest
�� -
.
��- .
DefineResource
��. <
(
��< =
resourceType
��= I
,
��I J
settings
��K S
.
��S T
Name
��T X
)
��X Y
.
��Y Z
SetBasePath
��Z e
(
��e f
settings
��f n
.
��n o
BasePath
��o w
)
��w x
;
��x y
anyWereDefined
�� "
=
��# $
true
��% )
;
��) *
}
�� 
settings
�� 
.
�� 
InlineDefinition
�� )
(
��) *
resource
��* 2
)
��2 3
;
��3 4
settings
�� 
.
�� 
InlineDefinition
�� )
=
��* +
null
��, 0
;
��0 1
}
�� 
return
�� 
anyWereDefined
�� !
;
��! "
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
RequireSettings
�� +
>
��+ ,&
ResolveRequiredResources
��- E
(
��E F
string
��F L
resourceType
��M Y
)
��Y Z
{
�� 	
foreach
�� 
(
�� 
var
�� 
(
�� 
key
�� 
,
�� 
value
�� $
)
��$ %
in
��& (
	_required
��) 2
)
��2 3
{
�� 
if
�� 
(
�� 
key
�� 
.
�� 
Type
�� 
==
�� 
resourceType
��  ,
)
��, -
{
�� 
yield
�� 
return
��  
value
��! &
;
��& '
}
�� 
}
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
	LinkEntry
�� $
>
��$ % 
GetRegisteredLinks
��& 8
(
��8 9
)
��9 :
=>
��; ="
DoGetRegisteredLinks
��> R
(
��R S
)
��S T
;
��T U
private
�� 
List
�� 
<
�� 
	LinkEntry
�� 
>
�� "
DoGetRegisteredLinks
��  4
(
��4 5
)
��5 6
{
�� 	
return
�� 
_links
�� 
??
�� 
	EmptyList
�� &
<
��& '
	LinkEntry
��' 0
>
��0 1
.
��1 2
Instance
��2 :
;
��: ;
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
	MetaEntry
�� $
>
��$ % 
GetRegisteredMetas
��& 8
(
��8 9
)
��9 :
=>
��; ="
DoGetRegisteredMetas
��> R
(
��R S
)
��S T
;
��T U
private
�� 

Dictionary
�� 
<
�� 
string
�� !
,
��! "
	MetaEntry
��# ,
>
��, -
.
��- .
ValueCollection
��. ="
DoGetRegisteredMetas
��> R
(
��R S
)
��S T
{
�� 	
return
�� 
_metas
�� 
?
�� 
.
�� 
Values
�� !
??
��" $"
EmptyValueCollection
��% 9
<
��9 :
	MetaEntry
��: C
>
��C D
.
��D E
Instance
��E M
;
��M N
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IHtmlContent
�� '
>
��' (&
GetRegisteredHeadScripts
��) A
(
��A B
)
��B C
=>
��D F(
DoGetRegisteredHeadScripts
��G a
(
��a b
)
��b c
;
��c d
public
�� 
List
�� 
<
�� 
IHtmlContent
��  
>
��  !(
DoGetRegisteredHeadScripts
��" <
(
��< =
)
��= >
{
�� 	
return
�� 
_headScripts
�� 
??
��  "
	EmptyList
��# ,
<
��, -
IHtmlContent
��- 9
>
��9 :
.
��: ;
Instance
��; C
;
��C D
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IHtmlContent
�� '
>
��' (&
GetRegisteredFootScripts
��) A
(
��A B
)
��B C
=>
��D F(
DoGetRegisteredFootScripts
��G a
(
��a b
)
��b c
;
��c d
public
�� 
List
�� 
<
�� 
IHtmlContent
��  
>
��  !(
DoGetRegisteredFootScripts
��" <
(
��< =
)
��= >
{
�� 	
return
�� 
_footScripts
�� 
??
��  "
	EmptyList
��# ,
<
��, -
IHtmlContent
��- 9
>
��9 :
.
��: ;
Instance
��; C
;
��C D
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IHtmlContent
�� '
>
��' (!
GetRegisteredStyles
��) <
(
��< =
)
��= >
=>
��? A#
DoGetRegisteredStyles
��B W
(
��W X
)
��X Y
;
��Y Z
public
�� 
List
�� 
<
�� 
IHtmlContent
��  
>
��  !#
DoGetRegisteredStyles
��" 7
(
��7 8
)
��8 9
{
�� 	
return
�� 
_styles
�� 
??
�� 
	EmptyList
�� '
<
��' (
IHtmlContent
��( 4
>
��4 5
.
��5 6
Instance
��6 >
;
��> ?
}
�� 	
public
�� 
IEnumerable
�� 
<
�� %
ResourceRequiredContext
�� 2
>
��2 3"
GetRequiredResources
��4 H
(
��H I
string
��I O
resourceType
��P \
)
��\ ]
=>
�� $
DoGetRequiredResources
�� %
(
��% &
resourceType
��& 2
)
��2 3
;
��3 4
private
�� %
ResourceRequiredContext
�� '
[
��' (
]
��( )$
DoGetRequiredResources
��* @
(
��@ A
string
��A G
resourceType
��H T
)
��T U
{
�� 	
if
�� 
(
�� 
_builtResources
�� 
.
��  
TryGetValue
��  +
(
��+ ,
resourceType
��, 8
,
��8 9
out
��: =
var
��> A
requiredResources
��B S
)
��S T
&&
��U W
requiredResources
��X i
!=
��j l
null
��m q
)
��q r
{
�� 
return
�� 
requiredResources
�� (
;
��( )
}
�� 
var
�� 
allResources
�� 
=
�� 
new
�� " 
ResourceDictionary
��# 5
(
��5 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
var
�� 
settings
�� !
in
��" $&
ResolveRequiredResources
��% =
(
��= >
resourceType
��> J
)
��J K
)
��K L
{
�� 
var
�� 
resource
�� 
=
�� 
FindResource
�� +
(
��+ ,
settings
��, 4
)
��4 5
;
��5 6
if
�� 
(
�� 
resource
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 7
(
��7 8
$"
��8 :1
#Could not find a resource of type '
��: ]
{
��] ^
settings
��^ f
.
��f g
Type
��g k
}
��k l
	' named '
��l u
{
��u v
settings
��v ~
.
��~ 
Name�� �
}��� � 
' with version '��� �
{��� �
settings��� �
.��� �
Version��� �
??��� �
$str��� �
}��� �
'.��� �
"��� �
)��� �
;��� �
}
��  
ExpandDependencies
�� "
(
��" #
resource
��# +
,
��+ ,
settings
��- 5
,
��5 6
allResources
��7 C
)
��C D
;
��D E
}
�� 
requiredResources
�� 
=
�� 
new
��  #%
ResourceRequiredContext
��$ ;
[
��; <
allResources
��< H
.
��H I
Count
��I N
]
��N O
;
��O P
int
�� 
i
�� 
,
�� 
first
�� 
=
�� 
$num
�� 
,
�� 
byDependency
�� *
=
��+ ,
allResources
��- 9
.
��9 :

FirstCount
��: D
,
��D E
last
��F J
=
��K L
allResources
��M Y
.
��Y Z
Count
��Z _
-
��` a
allResources
��b n
.
��n o
	LastCount
��o x
;
��x y
foreach
�� 
(
�� 
DictionaryEntry
�� $
entry
��% *
in
��+ -
allResources
��. :
)
��: ;
{
�� 
var
�� 
settings
�� 
=
�� 
(
��  
RequireSettings
��  /
)
��/ 0
entry
��0 5
.
��5 6
Value
��6 ;
;
��; <
if
�� 
(
�� 
settings
�� 
.
�� 
Position
�� %
==
��& (
ResourcePosition
��) 9
.
��9 :
First
��: ?
)
��? @
{
�� 
i
�� 
=
�� 
first
�� 
++
�� 
;
��  
}
�� 
else
�� 
if
�� 
(
�� 
settings
�� !
.
��! "
Position
��" *
==
��+ -
ResourcePosition
��. >
.
��> ?
Last
��? C
)
��C D
{
�� 
i
�� 
=
�� 
last
�� 
++
�� 
;
�� 
}
�� 
else
�� 
{
�� 
i
�� 
=
�� 
byDependency
�� $
++
��$ &
;
��& '
}
�� 
requiredResources
�� !
[
��! "
i
��" #
]
��# $
=
��% &
new
��' *%
ResourceRequiredContext
��+ B
{
�� 
Settings
�� 
=
�� 
settings
�� '
,
��' (
Resource
�� 
=
�� 
(
��   
ResourceDefinition
��  2
)
��2 3
entry
��3 8
.
��8 9
Key
��9 <
,
��< =!
FileVersionProvider
�� '
=
��( )"
_fileVersionProvider
��* >
}
�� 
;
�� 
}
�� 
return
�� 
_builtResources
�� "
[
��" #
resourceType
��# /
]
��/ 0
=
��1 2
requiredResources
��3 D
;
��D E
}
�� 	
	protected
�� 
virtual
�� 
void
��  
ExpandDependencies
�� 1
(
��1 2 
ResourceDefinition
�� 
resource
�� '
,
��' (
RequireSettings
�� 
settings
�� $
,
��$ % 
ResourceDictionary
�� 
allResources
�� +
)
��+ ,
{
�� 	
if
�� 
(
�� 
resource
�� 
==
�� 
null
��  
)
��  !
{
�� 
return
�� 
;
�� 
}
�� 
allResources
�� 
.
�� "
AddExpandingResource
�� -
(
��- .
resource
��. 6
,
��6 7
settings
��8 @
)
��@ A
;
��A B
List
�� 
<
�� 
string
�� 
>
�� 
dependencies
�� %
=
��& '
null
��( ,
;
��, -
if
�� 
(
�� 
resource
�� 
.
�� 
Dependencies
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
dependencies
�� 
=
�� 
new
�� "
List
��# '
<
��' (
string
��( .
>
��. /
(
��/ 0
resource
��0 8
.
��8 9
Dependencies
��9 E
)
��E F
;
��F G
if
�� 
(
�� 
settings
�� 
.
�� 
Dependencies
�� )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
dependencies
��  
.
��  !
AddRange
��! )
(
��) *
settings
��* 2
.
��2 3
Dependencies
��3 ?
)
��? @
;
��@ A
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
Dependencies
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
dependencies
�� 
=
�� 
new
�� "
List
��# '
<
��' (
string
��( .
>
��. /
(
��/ 0
settings
��0 8
.
��8 9
Dependencies
��9 E
)
��E F
;
��F G
}
�� 
var
��  
dependencySettings
�� "
=
��# $
(
��% &
(
��& '
(
��' (
RequireSettings
��( 7
)
��7 8
allResources
��8 D
[
��D E
resource
��E M
]
��M N
)
��N O
?
�� 
.
�� 
NewAndCombine
�� #
(
��# $
settings
��$ ,
)
��, -
??
�� 
new
�� 
RequireSettings
�� &
(
��& '
_options
��' /
)
��/ 0
{
�� 
Name
�� 
=
�� 
resource
�� #
.
��# $
Name
��$ (
,
��( )
Type
�� 
=
�� 
resource
�� #
.
��# $
Type
��$ (
,
��( )
Position
�� 
=
�� 
resource
�� '
.
��' (
Position
��( 0
}
�� 
.
�� 
Combine
�� 
(
�� 
settings
�� %
)
��% &
)
��& '
.
�� 
CombinePosition
�� $
(
��$ %
settings
��% -
)
��- .
;
�� 
if
�� 
(
�� 
dependencies
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
var
�� 
tempSettings
��  
=
��! "
new
��# &
RequireSettings
��' 6
(
��6 7
)
��7 8
;
��8 9
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
dependencies
��$ 0
.
��0 1
Count
��1 6
;
��6 7
i
��8 9
++
��9 ;
)
��; <
{
�� 
var
�� 
d
�� 
=
�� 
dependencies
�� (
[
��( )
i
��) *
]
��* +
;
��+ ,
var
�� 
idx
�� 
=
�� 
d
�� 
.
��  
IndexOf
��  '
(
��' (
$char
��( +
)
��+ ,
;
��, -
var
�� 
name
�� 
=
�� 
d
��  
;
��  !
string
�� 
version
�� "
=
��# $
null
��% )
;
��) *
if
�� 
(
�� 
idx
�� 
!=
�� 
-
��  
$num
��  !
)
��! "
{
�� 
name
�� 
=
�� 
d
��  
.
��  !
	Substring
��! *
(
��* +
$num
��+ ,
,
��, -
idx
��. 1
)
��1 2
;
��2 3
version
�� 
=
��  !
d
��" #
[
��# $
(
��$ %
idx
��% (
+
��) *
$num
��+ ,
)
��, -
..
��- /
]
��/ 0
;
��0 1
}
�� 
tempSettings
��  
.
��  !
Type
��! %
=
��& '
resource
��( 0
.
��0 1
Type
��1 5
;
��5 6
tempSettings
��  
.
��  !
Name
��! %
=
��& '
name
��( ,
;
��, -
tempSettings
��  
.
��  !
Version
��! (
=
��) *
version
��+ 2
;
��2 3
var
�� 

dependency
�� "
=
��# $
FindResource
��% 1
(
��1 2
tempSettings
��2 >
)
��> ?
;
��? @
if
�� 
(
�� 

dependency
�� "
==
��# %
null
��& *
)
��* +
{
�� 
continue
��  
;
��  !
}
��  
ExpandDependencies
�� &
(
��& '

dependency
��' 1
,
��1 2 
dependencySettings
��3 E
,
��E F
allResources
��G S
)
��S T
;
��T U
}
�� 
}
�� 
settings
�� 
.
�� *
UpdatePositionFromDependency
�� 1
(
��1 2 
dependencySettings
��2 D
)
��D E
;
��E F
allResources
�� 
.
�� !
AddExpandedResource
�� ,
(
��, -
resource
��- 5
,
��5 6 
dependencySettings
��7 I
)
��I J
;
��J K
}
�� 	
public
�� 
void
�� 
RegisterLink
��  
(
��  !
	LinkEntry
��! *
link
��+ /
)
��/ 0
{
�� 	
if
�� 
(
�� 
_links
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_links
�� 
=
�� 
new
�� 
List
�� !
<
��! "
	LinkEntry
��" +
>
��+ ,
(
��, -
)
��- .
;
��. /
}
�� 
var
�� 
href
�� 
=
�� 
link
�� 
.
�� 
Href
��  
;
��  !
if
�� 
(
�� 
href
�� 
!=
�� 
null
�� 
&&
�� 
href
��  $
.
��$ %

StartsWith
��% /
(
��/ 0
$str
��0 4
,
��4 5
StringComparison
��6 F
.
��F G
Ordinal
��G N
)
��N O
)
��O P
{
�� 
link
�� 
.
�� 
Href
�� 
=
�� 
_options
�� $
.
��$ %
ContentBasePath
��% 4
+
��5 6
href
��7 ;
.
��; <
	Substring
��< E
(
��E F
$num
��F G
)
��G H
;
��H I
}
�� 
if
�� 
(
�� 
link
�� 
.
�� 
AppendVersion
�� "
)
��" #
{
�� 
link
�� 
.
�� 
Href
�� 
=
�� "
_fileVersionProvider
�� 0
.
��0 1"
AddFileVersionToPath
��1 E
(
��E F
_options
��F N
.
��N O
ContentBasePath
��O ^
,
��^ _
link
��` d
.
��d e
Href
��e i
)
��i j
;
��j k
}
�� 
_links
�� 
.
�� 
Add
�� 
(
�� 
link
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
RegisterMeta
��  
(
��  !
	MetaEntry
��! *
meta
��+ /
)
��/ 0
{
�� 	
if
�� 
(
�� 
meta
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
_metas
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_metas
�� 
=
�� 
new
�� 

Dictionary
�� '
<
��' (
string
��( .
,
��. /
	MetaEntry
��0 9
>
��9 :
(
��: ;
)
��; <
;
��< =
}
�� 
var
�� 
index
�� 
=
�� 
meta
�� 
.
�� 
Name
�� !
??
��" $
meta
��% )
.
��) *
Property
��* 2
??
��3 5
meta
��6 :
.
��: ;
	HttpEquiv
��; D
??
��E G
$str
��H Q
;
��Q R
_metas
�� 
[
�� 
index
�� 
]
�� 
=
�� 
meta
��  
;
��  !
}
�� 	
public
�� 
void
�� 

AppendMeta
�� 
(
�� 
	MetaEntry
�� (
meta
��) -
,
��- .
string
��/ 5
contentSeparator
��6 F
)
��F G
{
�� 	
if
�� 
(
�� 
meta
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
index
�� 
=
�� 
meta
�� 
.
�� 
Name
�� !
??
��" $
meta
��% )
.
��) *
Property
��* 2
??
��3 5
meta
��6 :
.
��: ;
	HttpEquiv
��; D
;
��D E
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
index
��% *
)
��* +
)
��+ ,
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
_metas
�� 
==
�� 
null
�� 
)
�� 
{
�� 
_metas
�� 
=
�� 
new
�� 

Dictionary
�� '
<
��' (
string
��( .
,
��. /
	MetaEntry
��0 9
>
��9 :
(
��: ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
_metas
�� 
.
�� 
TryGetValue
�� "
(
��" #
index
��# (
,
��( )
out
��* -
var
��. 1
existingMeta
��2 >
)
��> ?
)
��? @
{
�� 
meta
�� 
=
�� 
	MetaEntry
��  
.
��  !
Combine
��! (
(
��( )
existingMeta
��) 5
,
��5 6
meta
��7 ;
,
��; <
contentSeparator
��= M
)
��M N
;
��N O
}
�� 
_metas
�� 
[
�� 
index
�� 
]
�� 
=
�� 
meta
��  
;
��  !
}
�� 	
public
�� 
void
�� 

RenderMeta
�� 
(
�� !
IHtmlContentBuilder
�� 2
builder
��3 :
)
��: ;
{
�� 	
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
meta
�� 
in
��  "
DoGetRegisteredMetas
��! 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
meta
��# '
.
��' (
GetTag
��( .
(
��. /
)
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
void
�� 
RenderHeadLink
�� "
(
��" #!
IHtmlContentBuilder
��# 6
builder
��7 >
)
��> ?
{
�� 	
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
var
�� 
registeredLinks
�� 
=
��  !"
DoGetRegisteredLinks
��" 6
(
��6 7
)
��7 8
;
��8 9
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
registeredLinks
��  /
.
��/ 0
Count
��0 5
;
��5 6
i
��7 8
++
��8 :
)
��: ;
{
�� 
var
�� 
link
�� 
=
�� 
registeredLinks
�� *
[
��* +
i
��+ ,
]
��, -
;
��- .
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
link
��# '
.
��' (
GetTag
��( .
(
��. /
)
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
void
�� 
RenderStylesheet
�� $
(
��$ %!
IHtmlContentBuilder
��% 8
builder
��9 @
)
��@ A
{
�� 	
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
var
�� 
styleSheets
�� 
=
�� $
DoGetRequiredResources
�� 4
(
��4 5
$str
��5 A
)
��A B
;
��B C
foreach
�� 
(
�� 
var
�� 
context
��  
in
��! #
styleSheets
��$ /
)
��/ 0
{
�� 
if
�� 
(
�� 
context
�� 
.
�� 
Settings
�� $
.
��$ %
Location
��% -
==
��. 0
ResourceLocation
��1 A
.
��A B
Inline
��B H
)
��H I
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
context
��# *
.
��* +
GetHtmlContent
��+ 9
(
��9 :
_options
��: B
.
��B C
ContentBasePath
��C R
)
��R S
)
��S T
;
��T U
}
�� 
var
�� 
registeredStyles
��  
=
��! "#
DoGetRegisteredStyles
��# 8
(
��8 9
)
��9 :
;
��: ;
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
registeredStyles
��  0
.
��0 1
Count
��1 6
;
��6 7
i
��8 9
++
��9 ;
)
��; <
{
�� 
var
�� 
context
�� 
=
�� 
registeredStyles
�� .
[
��. /
i
��/ 0
]
��0 1
;
��1 2
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
context
��# *
)
��* +
;
��+ ,
}
�� 
}
�� 	
public
�� 
void
�� 
RenderHeadScript
�� $
(
��$ %!
IHtmlContentBuilder
��% 8
builder
��9 @
)
��@ A
{
�� 	
var
�� 
headScripts
�� 
=
�� $
DoGetRequiredResources
�� 4
(
��4 5
$str
��5 =
)
��= >
;
��> ?
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
context
��  
in
��! #
headScripts
��$ /
)
��/ 0
{
�� 
if
�� 
(
�� 
context
�� 
.
�� 
Settings
�� $
.
��$ %
Location
��% -
!=
��. 0
ResourceLocation
��1 A
.
��A B
Head
��B F
)
��F G
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
context
��# *
.
��* +
GetHtmlContent
��+ 9
(
��9 :
_options
��: B
.
��B C
ContentBasePath
��C R
)
��R S
)
��S T
;
��T U
}
�� 
var
�� #
registeredHeadScripts
�� %
=
��& '(
DoGetRegisteredHeadScripts
��( B
(
��B C
)
��C D
;
��D E
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� #
registeredHeadScripts
��  5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
{
�� 
var
�� 
context
�� 
=
�� #
registeredHeadScripts
�� 3
[
��3 4
i
��4 5
]
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
context
��# *
)
��* +
;
��+ ,
}
�� 
}
�� 	
public
�� 
void
�� 
RenderFootScript
�� $
(
��$ %!
IHtmlContentBuilder
��% 8
builder
��9 @
)
��@ A
{
�� 	
var
�� 
footScripts
�� 
=
�� $
DoGetRequiredResources
�� 4
(
��4 5
$str
��5 =
)
��= >
;
��> ?
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
context
��  
in
��! #
footScripts
��$ /
)
��/ 0
{
�� 
if
�� 
(
�� 
context
�� 
.
�� 
Settings
�� $
.
��$ %
Location
��% -
!=
��. 0
ResourceLocation
��1 A
.
��A B
Foot
��B F
)
��F G
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
context
��# *
.
��* +
GetHtmlContent
��+ 9
(
��9 :
_options
��: B
.
��B C
ContentBasePath
��C R
)
��R S
)
��S T
;
��T U
}
�� 
var
�� #
registeredFootScripts
�� %
=
��& '(
DoGetRegisteredFootScripts
��( B
(
��B C
)
��C D
;
��D E
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� #
registeredFootScripts
��  5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
{
�� 
var
�� 
context
�� 
=
�� #
registeredFootScripts
�� 3
[
��3 4
i
��4 5
]
��5 6
;
��6 7
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
System
��' -
.
��- .
Environment
��. 9
.
��9 :
NewLine
��: A
)
��A B
;
��B C
}
�� 
first
�� 
=
�� 
false
�� 
;
�� 
builder
�� 
.
�� 

AppendHtml
�� "
(
��" #
context
��# *
)
��* +
;
��+ ,
}
�� 
}
�� 	
public
�� 
void
�� 
RenderLocalScript
�� %
(
��% &
RequireSettings
��& 5
settings
��6 >
,
��> ?!
IHtmlContentBuilder
��@ S
builder
��T [
)
��[ \
{
�� 	
var
�� 
localScripts
�� 
=
�� $
DoGetRequiredResources
�� 5
(
��5 6
$str
��6 >
)
��> ?
;
��? @
_localScripts
�� 
??=
�� 
new
�� !
HashSet
��" )
<
��) *
string
��* 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
context
��  
in
��! #
localScripts
��$ 0
)
��0 1
{
�� 
if
�� 
(
�� 
(
�� 
context
�� 
.
�� 
Settings
�� %
.
��% &
Location
��& .
==
��/ 1
ResourceLocation
��2 B
.
��B C
Unspecified
��C N
||
��O Q
context
��R Y
.
��Y Z
Settings
��Z b
.
��b c
Location
��c k
==
��l n
ResourceLocation
��o 
.�� �
Inline��� �
)��� �
&&��� �
(
�� 
_localScripts
�� "
.
��" #
Add
��# &
(
��& '
context
��' .
.
��. /
Settings
��/ 7
.
��7 8
Name
��8 <
)
��< =
||
��> @
context
��A H
.
��H I
Settings
��I Q
.
��Q R
Name
��R V
==
��W Y
settings
��Z b
.
��b c
Name
��c g
)
��g h
)
��h i
{
�� 
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
��  

AppendHtml
��  *
(
��* +
System
��+ 1
.
��1 2
Environment
��2 =
.
��= >
NewLine
��> E
)
��E F
;
��F G
}
�� 
first
�� 
=
�� 
false
�� !
;
��! "
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
context
��' .
.
��. /
GetHtmlContent
��/ =
(
��= >
_options
��> F
.
��F G
ContentBasePath
��G V
)
��V W
)
��W X
;
��X Y
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
RenderLocalStyle
�� $
(
��$ %
RequireSettings
��% 4
settings
��5 =
,
��= >!
IHtmlContentBuilder
��? R
builder
��S Z
)
��Z [
{
�� 	
var
�� 
localStyles
�� 
=
�� $
DoGetRequiredResources
�� 4
(
��4 5
$str
��5 A
)
��A B
;
��B C
_localStyles
�� 
??=
�� 
new
��  
HashSet
��! (
<
��( )
string
��) /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
var
�� 
first
�� 
=
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
context
��  
in
��! #
localStyles
��$ /
)
��/ 0
{
�� 
if
�� 
(
�� 
context
�� 
.
�� 
Settings
�� $
.
��$ %
Location
��% -
==
��. 0
ResourceLocation
��1 A
.
��A B
Inline
��B H
&&
��I K
(
�� 
_localStyles
�� !
.
��! "
Add
��" %
(
��% &
context
��& -
.
��- .
Settings
��. 6
.
��6 7
Name
��7 ;
)
��; <
||
��= ?
context
��@ G
.
��G H
Settings
��H P
.
��P Q
Name
��Q U
==
��V X
settings
��Y a
.
��a b
Name
��b f
)
��f g
)
��g h
{
�� 
if
�� 
(
�� 
!
�� 
first
�� 
)
�� 
{
�� 
builder
�� 
.
��  

AppendHtml
��  *
(
��* +
System
��+ 1
.
��1 2
Environment
��2 =
.
��= >
NewLine
��> E
)
��E F
;
��F G
}
�� 
first
�� 
=
�� 
false
�� !
;
��! "
builder
�� 
.
�� 

AppendHtml
�� &
(
��& '
context
��' .
.
��. /
GetHtmlContent
��/ =
(
��= >
_options
��> F
.
��F G
ContentBasePath
��G V
)
��V W
)
��W X
;
��X Y
}
�� 
}
�� 
}
�� 	
private
�� 
readonly
�� 
struct
�� 
ResourceTypeName
��  0
:
��1 2

IEquatable
��3 =
<
��= >
ResourceTypeName
��> N
>
��N O
{
�� 	
public
�� 
readonly
�� 
string
�� "
Type
��# '
;
��' (
public
�� 
readonly
�� 
string
�� "
Name
��# '
;
��' (
public
�� 
ResourceTypeName
�� #
(
��# $
string
��$ *
resourceType
��+ 7
,
��7 8
string
��9 ?
resourceName
��@ L
)
��L M
{
�� 
Type
�� 
=
�� 
resourceType
�� #
;
��# $
Name
�� 
=
�� 
resourceName
�� #
;
��# $
}
�� 
public
�� 
bool
�� 
Equals
�� 
(
�� 
ResourceTypeName
�� /
other
��0 5
)
��5 6
{
�� 
return
�� 
Type
�� 
==
�� 
other
�� $
.
��$ %
Type
��% )
&&
��* ,
Name
��- 1
==
��2 4
other
��5 :
.
��: ;
Name
��; ?
;
��? @
}
�� 
public
�� 
override
�� 
int
�� 
GetHashCode
��  +
(
��+ ,
)
��, -
{
�� 
return
�� 
HashCode
�� 
.
��  
Combine
��  '
(
��' (
Type
��( ,
,
��, -
Name
��. 2
)
��2 3
;
��3 4
}
�� 
public
�� 
override
�� 
string
�� "
ToString
��# +
(
��+ ,
)
��, -
=>
��. 0
$str
��1 4
+
��5 6
Type
��7 ;
+
��< =
$str
��> B
+
��C D
Name
��E I
+
��J K
$str
��L O
;
��O P
}
�� 	
private
�� 
string
�� 
GetResourceKey
�� %
(
��% &
string
��& ,
releasePath
��- 8
,
��8 9
string
��: @
	debugPath
��A J
)
��J K
{
�� 	
if
�� 
(
�� 
_options
�� 
.
�� 
	DebugMode
�� "
&&
��# %
!
��& '
String
��' -
.
��- . 
IsNullOrWhiteSpace
��. @
(
��@ A
	debugPath
��A J
)
��J K
)
��K L
{
�� 
return
�� 
	debugPath
��  
;
��  !
}
�� 
else
�� 
{
�� 
return
�� 
releasePath
�� "
;
��" #
}
�� 
}
�� 	
private
�� 
static
�� 
class
�� 
	EmptyList
�� &
<
��& '
T
��' (
>
��( )
{
�� 	
public
�� 
static
�� 
readonly
�� "
List
��# '
<
��' (
T
��( )
>
��) *
Instance
��+ 3
=
��4 5
new
��6 9
List
��: >
<
��> ?
T
��? @
>
��@ A
(
��A B
)
��B C
;
��C D
}
�� 	
private
�� 
static
�� 
class
�� "
EmptyValueCollection
�� 1
<
��1 2
T
��2 3
>
��3 4
{
�� 	
public
�� 
static
�� 
readonly
�� "

Dictionary
��# -
<
��- .
string
��. 4
,
��4 5
T
��6 7
>
��7 8
.
��8 9
ValueCollection
��9 H
Instance
��I Q
=
��R S
new
��T W

Dictionary
��X b
<
��b c
string
��c i
,
��i j
T
��k l
>
��l m
.
��m n
ValueCollection
��n }
(
��} ~
new��~ �

Dictionary��� �
<��� �
string��� �
,��� �
T��� �
>��� �
(��� �
)��� �
)��� �
;��� �
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% &

NoInlining
��& 0
)
��0 1
]
��1 2
private
�� 
static
�� 
void
�� (
ThrowArgumentNullException
�� 6
(
��6 7
string
��7 =
	paramName
��> G
)
��G H
{
�� 	(
ThrowArgumentNullException
�� &
<
��& '
object
��' -
>
��- .
(
��. /
	paramName
��/ 8
)
��8 9
;
��9 :
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% &

NoInlining
��& 0
)
��0 1
]
��1 2
private
�� 
static
�� 
T
�� (
ThrowArgumentNullException
�� 3
<
��3 4
T
��4 5
>
��5 6
(
��6 7
string
��7 =
	paramName
��> G
)
��G H
{
�� 	
throw
�� 
new
�� #
ArgumentNullException
�� +
(
��+ ,
	paramName
��, 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ResourceManifestBuilder.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\ServiceCollectionExtensions.cs
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
} �-
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\LinkTagHelper.cs
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
}RR �$
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\MetaTagHelper.cs
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
$str	(( �
,
((� �
StringComparison
((� �
.
((� �
OrdinalIgnoreCase
((� �
)
((� �
)
((� �
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
}55 �*
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\ResourcesTagHelper.cs
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
}UU ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\ScriptTagHelper.cs
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
�� 
(
�� 
var
�� 
	attribute
�� &
in
��' )
output
��* 0
.
��0 1

Attributes
��1 ;
)
��; <
{
�� 
setting
�� 
.
�� 
SetAttribute
�� (
(
��( )
	attribute
��) 2
.
��2 3
Name
��3 7
,
��7 8
	attribute
��9 B
.
��B C
Value
��C H
.
��H I
ToString
��I Q
(
��Q R
)
��R S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� *
.
��* +
Unspecified
��+ 6
||
��7 9
At
��: <
==
��= ?
ResourceLocation
��@ P
.
��P Q
Inline
��Q W
)
��W X
{
�� 
_resourceManager
�� $
.
��$ %
RenderLocalScript
��% 6
(
��6 7
setting
��7 >
,
��> ?
output
��@ F
.
��F G
Content
��G N
)
��N O
;
��O P
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� *
(
��* +
Name
��+ /
)
��/ 0
&&
��1 3
String
��4 :
.
��: ;
IsNullOrEmpty
��; H
(
��H I
Src
��I L
)
��L M
)
��M N
{
�� 
var
�� 
setting
�� 
=
�� 
_resourceManager
�� .
.
��. /
RegisterResource
��/ ?
(
��? @
$str
��@ H
,
��H I
Name
��J N
)
��N O
;
��O P
if
�� 
(
�� 
At
�� 
!=
�� 
ResourceLocation
�� *
.
��* +
Unspecified
��+ 6
)
��6 7
{
�� 
setting
�� 
.
�� 

AtLocation
�� &
(
��& '
At
��' )
)
��) *
;
��* +
}
�� 
if
�� 
(
�� 
UseCdn
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
setting
�� 
.
�� 
UseCdn
�� "
(
��" #
UseCdn
��# )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	Condition
��* 3
)
��3 4
)
��4 5
{
�� 
setting
�� 
.
�� 
UseCondition
�� (
(
��( )
	Condition
��) 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
Debug
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
setting
�� 
.
�� 
UseDebugMode
�� (
(
��( )
Debug
��) .
.
��. /
Value
��/ 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Culture
��* 1
)
��1 2
)
��2 3
{
�� 
setting
�� 
.
�� 

UseCulture
�� &
(
��& '
Culture
��' .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
AppendVersion
�� !
.
��! "
HasValue
��" *
)
��* +
{
�� 
setting
�� 
.
�� !
ShouldAppendVersion
�� /
(
��/ 0
AppendVersion
��0 =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Version
��* 1
)
��1 2
)
��2 3
{
�� 
setting
�� 
.
�� 

UseVersion
�� &
(
��& '
Version
��' .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	DependsOn
��* 3
)
��3 4
)
��4 5
{
�� 
setting
�� 
.
�� 
SetDependencies
�� +
(
��+ ,
	DependsOn
��, 5
.
��5 6
Split
��6 ;
(
��; <
new
��< ?
[
��? @
]
��@ A
{
��B C
$char
��D G
,
��G H
$char
��I L
}
��M N
,
��N O 
StringSplitOptions
��P b
.
��b c 
RemoveEmptyEntries
��c u
)
��u v
)
��v w
;
��w x
}
�� 
if
�� 
(
�� 
At
�� 
!=
�� 
ResourceLocation
�� *
.
��* +
Unspecified
��+ 6
)
��6 7
{
�� 
var
�� 
childContent
�� $
=
��% &
await
��' ,
output
��- 3
.
��3 4"
GetChildContentAsync
��4 H
(
��H I
)
��I J
;
��J K
if
�� 
(
�� 
!
�� 
childContent
�� %
.
��% &!
IsEmptyOrWhiteSpace
��& 9
)
��9 :
{
�� 
_resourceManager
�� (
.
��( )
InlineManifest
��) 7
.
��7 8
DefineScript
��8 D
(
��D E
Name
��E I
)
��I J
.
�� 
SetInnerContent
�� ,
(
��, -
childContent
��- 9
.
��9 :

GetContent
��: D
(
��D E
)
��E F
)
��F G
;
��G H
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� .
.
��. /
Inline
��/ 5
)
��5 6
{
�� 
_resourceManager
�� (
.
��( )
RenderLocalScript
��) :
(
��: ;
setting
��; B
,
��B C
output
��D J
.
��J K
Content
��K R
)
��R S
;
��S T
}
�� 
}
�� 
else
�� 
{
�� 
_resourceManager
�� $
.
��$ %
RenderLocalScript
��% 6
(
��6 7
setting
��7 >
,
��> ?
output
��@ F
.
��F G
Content
��G N
)
��N O
;
��O P
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� *
(
��* +
Name
��+ /
)
��/ 0
&&
��1 3
!
��4 5
String
��5 ;
.
��; <
IsNullOrEmpty
��< I
(
��I J
Src
��J M
)
��M N
)
��N O
{
�� 
var
�� 

definition
�� 
=
��  
_resourceManager
��! 1
.
��1 2
InlineManifest
��2 @
.
��@ A
DefineScript
��A M
(
��M N
Name
��N R
)
��R S
;
��S T

definition
�� 
.
�� 
SetUrl
�� !
(
��! "
Src
��" %
,
��% &
DebugSrc
��' /
)
��/ 0
;
��0 1
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Version
��* 1
)
��1 2
)
��2 3
{
�� 

definition
�� 
.
�� 

SetVersion
�� )
(
��) *
Version
��* 1
)
��1 2
;
��2 3
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
CdnSrc
��* 0
)
��0 1
)
��1 2
{
�� 

definition
�� 
.
�� 
SetCdn
�� %
(
��% &
CdnSrc
��& ,
,
��, -
DebugCdnSrc
��. 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Culture
��* 1
)
��1 2
)
��2 3
{
�� 

definition
�� 
.
�� 
SetCultures
�� *
(
��* +
Culture
��+ 2
.
��2 3
Split
��3 8
(
��8 9
new
��9 <
[
��< =
]
��= >
{
��? @
$char
��A D
,
��D E
$char
��F I
}
��J K
,
��K L 
StringSplitOptions
��M _
.
��_ ` 
RemoveEmptyEntries
��` r
)
��r s
)
��s t
;
��t u
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	DependsOn
��* 3
)
��3 4
)
��4 5
{
�� 

definition
�� 
.
�� 
SetDependencies
�� .
(
��. /
	DependsOn
��/ 8
.
��8 9
Split
��9 >
(
��> ?
new
��? B
[
��B C
]
��C D
{
��E F
$char
��G J
,
��J K
$char
��L O
}
��P Q
,
��Q R 
StringSplitOptions
��S e
.
��e f 
RemoveEmptyEntries
��f x
)
��x y
)
��y z
;
��z {
}
�� 
if
�� 
(
�� 
AppendVersion
�� !
.
��! "
HasValue
��" *
)
��* +
{
�� 

definition
�� 
.
�� !
ShouldAppendVersion
�� 2
(
��2 3
AppendVersion
��3 @
)
��@ A
;
��A B
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Version
��* 1
)
��1 2
)
��2 3
{
�� 

definition
�� 
.
�� 

SetVersion
�� )
(
��) *
Version
��* 1
)
��1 2
;
��2 3
}
�� 
if
�� 
(
�� 
At
�� 
!=
�� 
ResourceLocation
�� *
.
��* +
Unspecified
��+ 6
)
��6 7
{
�� 
var
�� 
setting
�� 
=
��  !
_resourceManager
��" 2
.
��2 3
RegisterResource
��3 C
(
��C D
$str
��D L
,
��L M
Name
��N R
)
��R S
;
��S T
setting
�� 
.
�� 

AtLocation
�� &
(
��& '
At
��' )
)
��) *
;
��* +
if
�� 
(
�� 
UseCdn
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
setting
�� 
.
��  
UseCdn
��  &
(
��& '
UseCdn
��' -
.
��- .
Value
��. 3
)
��3 4
;
��4 5
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
	Condition
��. 7
)
��7 8
)
��8 9
{
�� 
setting
�� 
.
��  
UseCondition
��  ,
(
��, -
	Condition
��- 6
)
��6 7
;
��7 8
}
�� 
if
�� 
(
�� 
Debug
�� 
!=
��  
null
��! %
)
��% &
{
�� 
setting
�� 
.
��  
UseDebugMode
��  ,
(
��, -
Debug
��- 2
.
��2 3
Value
��3 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
Culture
��. 5
)
��5 6
)
��6 7
{
�� 
setting
�� 
.
��  

UseCulture
��  *
(
��* +
Culture
��+ 2
)
��2 3
;
��3 4
}
�� 
foreach
�� 
(
�� 
var
��  
	attribute
��! *
in
��+ -
output
��. 4
.
��4 5

Attributes
��5 ?
)
��? @
{
�� 
setting
�� 
.
��  
SetAttribute
��  ,
(
��, -
	attribute
��- 6
.
��6 7
Name
��7 ;
,
��; <
	attribute
��= F
.
��F G
Value
��G L
.
��L M
ToString
��M U
(
��U V
)
��V W
)
��W X
;
��X Y
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� .
.
��. /
Inline
��/ 5
)
��5 6
{
�� 
_resourceManager
�� (
.
��( )
RenderLocalScript
��) :
(
��: ;
setting
��; B
,
��B C
output
��D J
.
��J K
Content
��K R
)
��R S
;
��S T
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Name
��* .
)
��. /
&&
��0 2
String
��3 9
.
��9 :
IsNullOrEmpty
��: G
(
��G H
Src
��H K
)
��K L
)
��L M
{
�� 
var
�� 
childContent
��  
=
��! "
await
��# (
output
��) /
.
��/ 0"
GetChildContentAsync
��0 D
(
��D E
)
��E F
;
��F G
var
�� 
builder
�� 
=
�� 
new
�� !

TagBuilder
��" ,
(
��, -
$str
��- 5
)
��5 6
;
��6 7
builder
�� 
.
�� 
	InnerHtml
�� !
.
��! "

AppendHtml
��" ,
(
��, -
childContent
��- 9
)
��9 :
;
��: ;
builder
�� 
.
�� 
TagRenderMode
�� %
=
��& '
TagRenderMode
��( 5
.
��5 6
Normal
��6 <
;
��< =
foreach
�� 
(
�� 
var
�� 
	attribute
�� &
in
��' )
output
��* 0
.
��0 1

Attributes
��1 ;
)
��; <
{
�� 
builder
�� 
.
�� 

Attributes
�� &
.
��& '
Add
��' *
(
��* +
	attribute
��+ 4
.
��4 5
Name
��5 9
,
��9 :
	attribute
��; D
.
��D E
Value
��E J
.
��J K
ToString
��K S
(
��S T
)
��T U
)
��U V
;
��V W
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� *
.
��* +
Head
��+ /
)
��/ 0
{
�� 
_resourceManager
�� $
.
��$ % 
RegisterHeadScript
��% 7
(
��7 8
builder
��8 ?
)
��? @
;
��@ A
}
�� 
else
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� /
.
��/ 0
Inline
��0 6
)
��6 7
{
�� 
output
�� 
.
�� 
Content
�� "
.
��" #
SetHtmlContent
��# 1
(
��1 2
builder
��2 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
_resourceManager
�� $
.
��$ % 
RegisterFootScript
��% 7
(
��7 8
builder
��8 ?
)
��? @
;
��@ A
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ResourceManagement\TagHelpers\StyleTagHelper.cs
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
�� 
setting
�� 
.
�� 
UseCondition
�� (
(
��( )
	Condition
��) 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
Debug
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
setting
�� 
.
�� 
UseDebugMode
�� (
(
��( )
Debug
��) .
.
��. /
Value
��/ 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Culture
��* 1
)
��1 2
)
��2 3
{
�� 
setting
�� 
.
�� 

UseCulture
�� &
(
��& '
Culture
��' .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
AppendVersion
�� !
.
��! "
HasValue
��" *
==
��+ -
true
��. 2
)
��2 3
{
�� 
setting
�� 
.
�� !
ShouldAppendVersion
�� /
(
��/ 0
AppendVersion
��0 =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Version
��* 1
)
��1 2
)
��2 3
{
�� 
setting
�� 
.
�� 

UseVersion
�� &
(
��& '
Version
��' .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	DependsOn
��* 3
)
��3 4
)
��4 5
{
�� 
setting
�� 
.
�� 
SetDependencies
�� +
(
��+ ,
	DependsOn
��, 5
.
��5 6
Split
��6 ;
(
��; <
new
��< ?
[
��? @
]
��@ A
{
��B C
$char
��D G
,
��G H
$char
��I L
}
��M N
,
��N O 
StringSplitOptions
��P b
.
��b c 
RemoveEmptyEntries
��c u
)
��u v
)
��v w
;
��w x
}
�� 
var
�� 
childContent
��  
=
��! "
await
��# (
output
��) /
.
��/ 0"
GetChildContentAsync
��0 D
(
��D E
)
��E F
;
��F G
if
�� 
(
�� 
!
�� 
childContent
�� !
.
��! "!
IsEmptyOrWhiteSpace
��" 5
)
��5 6
{
�� 
_resourceManager
�� $
.
��$ %
InlineManifest
��% 3
.
��3 4
DefineStyle
��4 ?
(
��? @
Name
��@ D
)
��D E
.
�� 
SetInnerContent
�� (
(
��( )
childContent
��) 5
.
��5 6

GetContent
��6 @
(
��@ A
)
��A B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� *
.
��* +
Inline
��+ 1
)
��1 2
{
�� 
_resourceManager
�� $
.
��$ %
RenderLocalStyle
��% 5
(
��5 6
setting
��6 =
,
��= >
output
��? E
.
��E F
Content
��F M
)
��M N
;
��N O
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� *
(
��* +
Name
��+ /
)
��/ 0
&&
��1 3
!
��4 5
String
��5 ;
.
��; <
IsNullOrEmpty
��< I
(
��I J
Src
��J M
)
��M N
)
��N O
{
�� 
var
�� 

definition
�� 
=
��  
_resourceManager
��! 1
.
��1 2
InlineManifest
��2 @
.
��@ A
DefineStyle
��A L
(
��L M
Name
��M Q
)
��Q R
;
��R S

definition
�� 
.
�� 
SetUrl
�� !
(
��! "
Src
��" %
,
��% &
DebugSrc
��' /
)
��/ 0
;
��0 1
foreach
�� 
(
�� 
var
�� 
	attribute
�� &
in
��' )
output
��* 0
.
��0 1

Attributes
��1 ;
)
��; <
{
�� 

definition
�� 
.
�� 
SetAttribute
�� +
(
��+ ,
	attribute
��, 5
.
��5 6
Name
��6 :
,
��: ;
	attribute
��< E
.
��E F
Value
��F K
.
��K L
ToString
��L T
(
��T U
)
��U V
)
��V W
;
��W X
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Version
��* 1
)
��1 2
)
��2 3
{
�� 

definition
�� 
.
�� 

SetVersion
�� )
(
��) *
Version
��* 1
)
��1 2
;
��2 3
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
CdnSrc
��* 0
)
��0 1
)
��1 2
{
�� 

definition
�� 
.
�� 
SetCdn
�� %
(
��% &
CdnSrc
��& ,
,
��, -
DebugCdnSrc
��. 9
)
��9 :
;
��: ;
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Culture
��* 1
)
��1 2
)
��2 3
{
�� 

definition
�� 
.
�� 
SetCultures
�� *
(
��* +
Culture
��+ 2
.
��2 3
Split
��3 8
(
��8 9
$char
��9 <
,
��< = 
StringSplitOptions
��> P
.
��P Q 
RemoveEmptyEntries
��Q c
)
��c d
)
��d e
;
��e f
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	DependsOn
��* 3
)
��3 4
)
��4 5
{
�� 

definition
�� 
.
�� 
SetDependencies
�� .
(
��. /
	DependsOn
��/ 8
.
��8 9
Split
��9 >
(
��> ?
$char
��? B
,
��B C 
StringSplitOptions
��D V
.
��V W 
RemoveEmptyEntries
��W i
)
��i j
)
��j k
;
��k l
}
�� 
var
�� 
setting
�� 
=
�� 
_resourceManager
�� .
.
��. /
RegisterResource
��/ ?
(
��? @
$str
��@ L
,
��L M
Name
��N R
)
��R S
;
��S T
if
�� 
(
�� 
UseCdn
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
setting
�� 
.
�� 
UseCdn
�� "
(
��" #
UseCdn
��# )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	Condition
��* 3
)
��3 4
)
��4 5
{
�� 
setting
�� 
.
�� 
UseCondition
�� (
(
��( )
	Condition
��) 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
Debug
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
setting
�� 
.
�� 
UseDebugMode
�� (
(
��( )
Debug
��) .
.
��. /
Value
��/ 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
!
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Culture
��* 1
)
��1 2
)
��2 3
{
�� 
setting
�� 
.
�� 

UseCulture
�� &
(
��& '
Culture
��' .
)
��. /
;
��/ 0
}
�� 
if
�� 
(
�� 
At
�� 
!=
�� 
ResourceLocation
�� *
.
��* +
Unspecified
��+ 6
)
��6 7
{
�� 
setting
�� 
.
�� 

AtLocation
�� &
(
��& '
At
��' )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
setting
�� 
.
�� 

AtLocation
�� &
(
��& '
ResourceLocation
��' 7
.
��7 8
Head
��8 <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� *
.
��* +
Inline
��+ 1
)
��1 2
{
�� 
_resourceManager
�� $
.
��$ %
RenderLocalStyle
��% 5
(
��5 6
setting
��6 =
,
��= >
output
��? E
.
��E F
Content
��F M
)
��M N
;
��N O
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
String
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
Name
��* .
)
��. /
&&
��0 2
String
��3 9
.
��9 :
IsNullOrEmpty
��: G
(
��G H
Src
��H K
)
��K L
)
��L M
{
�� 
var
�� 
childContent
��  
=
��! "
await
��# (
output
��) /
.
��/ 0"
GetChildContentAsync
��0 D
(
��D E
)
��E F
;
��F G
var
�� 
builder
�� 
=
�� 
new
�� !

TagBuilder
��" ,
(
��, -
$str
��- 4
)
��4 5
;
��5 6
builder
�� 
.
�� 
	InnerHtml
�� !
.
��! "

AppendHtml
��" ,
(
��, -
childContent
��- 9
)
��9 :
;
��: ;
builder
�� 
.
�� 
TagRenderMode
�� %
=
��& '
TagRenderMode
��( 5
.
��5 6
Normal
��6 <
;
��< =
foreach
�� 
(
�� 
var
�� 
	attribute
�� &
in
��' )
output
��* 0
.
��0 1

Attributes
��1 ;
)
��; <
{
�� 
builder
�� 
.
�� 

Attributes
�� &
.
��& '
Add
��' *
(
��* +
	attribute
��+ 4
.
��4 5
Name
��5 9
,
��9 :
	attribute
��; D
.
��D E
Value
��E J
.
��J K
ToString
��K S
(
��S T
)
��T U
)
��U V
;
��V W
}
�� 
if
�� 
(
�� 
!
�� 
builder
�� 
.
�� 

Attributes
�� '
.
��' (
ContainsKey
��( 3
(
��3 4
$str
��4 :
)
��: ;
)
��; <
{
�� 
builder
�� 
.
�� 

Attributes
�� &
.
��& '
Add
��' *
(
��* +
$str
��+ 1
,
��1 2
$str
��3 =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
At
�� 
==
�� 
ResourceLocation
�� *
.
��* +
Inline
��+ 1
)
��1 2
{
�� 
output
�� 
.
�� 
Content
�� "
.
��" #
SetHtmlContent
��# 1
(
��1 2
builder
��2 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
_resourceManager
�� $
.
��$ %
RegisterStyle
��% 2
(
��2 3
builder
��3 :
)
��: ;
;
��; <
}
�� 
}
�� 
}
�� 	
}
�� 
}�� 