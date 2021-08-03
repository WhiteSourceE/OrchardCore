∫ 
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Drivers\AliasPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Drivers #
{ 
public 

class "
AliasPartDisplayDriver '
:( )$
ContentPartDisplayDriver* B
<B C
	AliasPartC L
>L M
{ 
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public "
AliasPartDisplayDriver %
(% &
ISession 
session 
, 
IStringLocalizer 
< "
AliasPartDisplayDriver 3
>3 4
	localizer5 >
) 	
{ 	
_session 
= 
session 
; 
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
	AliasPart, 5
	aliasPart6 ?
,? @"
BuildPartEditorContextA W
contextX _
)_ `
{ 	
return   

Initialize   
<   
AliasPartViewModel   0
>  0 1
(  1 2
GetEditorShapeType  2 D
(  D E
context  E L
)  L M
,  M N
m  O P
=>  Q S
BuildViewModel  T b
(  b c
m  c d
,  d e
	aliasPart  f o
,  o p
context  q x
.  x y
TypePartDefinition	  y ã
.
  ã å
GetSettings
  å ó
<
  ó ò
AliasPartSettings
  ò ©
>
  © ™
(
  ™ ´
)
  ´ ¨
)
  ¨ ≠
)
  ≠ Æ
;
  Æ Ø
}!! 	
public## 
override## 
async## 
Task## "
<##" #
IDisplayResult### 1
>##1 2
UpdateAsync##3 >
(##> ?
	AliasPart##? H
model##I N
,##N O
IUpdateModel##P \
updater##] d
,##d e#
UpdatePartEditorContext##f }
context	##~ Ö
)
##Ö Ü
{$$ 	
await%% 
updater%% 
.%% 
TryUpdateModelAsync%% -
(%%- .
model%%. 3
,%%3 4
Prefix%%5 ;
,%%; <
t%%= >
=>%%? A
t%%B C
.%%C D
Alias%%D I
)%%I J
;%%J K
await'' 
foreach'' 
('' 
var'' 
item'' #
in''$ &
model''' ,
.'', -
ValidateAsync''- :
('': ;
S''; <
,''< =
_session''> F
)''F G
)''G H
{(( 
updater)) 
.)) 

ModelState)) "
.))" # 
BindValidationResult))# 7
())7 8
Prefix))8 >
,))> ?
item))@ D
)))D E
;))E F
}** 
return,, 
Edit,, 
(,, 
model,, 
,,, 
context,, &
),,& '
;,,' (
}-- 	
private// 
void// 
BuildViewModel// #
(//# $
AliasPartViewModel//$ 6
model//7 <
,//< =
	AliasPart//> G
part//H L
,//L M
AliasPartSettings//N _
settings//` h
)//h i
{00 	
model11 
.11 
Alias11 
=11 
part11 
.11 
Alias11 $
;11$ %
model22 
.22 
	AliasPart22 
=22 
part22 "
;22" #
model33 
.33 
ContentItem33 
=33 
part33  $
.33$ %
ContentItem33% 0
;330 1
model44 
.44 
Settings44 
=44 
settings44 %
;44% &
}55 	
}77 
}88 ˆ
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\GraphQL\AliasInputObjectType.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
GraphQL #
{ 
public 

class  
AliasInputObjectType %
:& '%
WhereInputObjectGraphType( A
<A B
	AliasPartB K
>K L
{		 
public

  
AliasInputObjectType

 #
(

# $
IStringLocalizer

$ 4
<

4 5 
AliasInputObjectType

5 I
>

I J
S

K L
)

L M
{ 	
Name 
= 
$str #
;# $
Description 
= 
S 
[ 
$str @
]@ A
;A B!
AddScalarFilterFields !
<! "
StringGraphType" 1
>1 2
(2 3
$str3 :
,: ;
S< =
[= >
$str> ]
]] ^
)^ _
;_ `
} 	
} 
} Ó	
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\GraphQL\AliasPartIndexAliasProvider.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
GraphQL #
{ 
public 

class '
AliasPartIndexAliasProvider ,
:- .
IIndexAliasProvider/ B
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
$str #
,# $
Index 
= 
$str (
,( )
	IndexType 
= 
typeof "
(" #
AliasPartIndex# 1
)1 2
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
} ”
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\GraphQL\AliasQueryObjectType.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
GraphQL #
{ 
public 

class  
AliasQueryObjectType %
:& '
ObjectGraphType( 7
<7 8
	AliasPart8 A
>A B
{ 
public		  
AliasQueryObjectType		 #
(		# $
IStringLocalizer		$ 4
<		4 5 
AliasQueryObjectType		5 I
>		I J
S		K L
)		L M
{

 	
Name 
= 
$str 
; 
Description 
= 
S 
[ 
$str C
]C D
;D E
Field 
( 
$str 
, 
x 
=> 
x  !
.! "
Alias" '
,' (
true) -
)- .
;. /
} 	
} 
} £
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\GraphQL\Startup.cs
	namespace		 	
OrchardCore		
 
.		 
Alias		 
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
. 
AddObjectGraphType '
<' (
	AliasPart( 1
,1 2 
AliasQueryObjectType3 G
>G H
(H I
)I J
;J K
services 
. #
AddInputObjectGraphType ,
<, -
	AliasPart- 6
,6 7 
AliasInputObjectType8 L
>L M
(M N
)N O
;O P
services 
. 
AddTransient !
<! "
IIndexAliasProvider" 5
,5 6'
AliasPartIndexAliasProvider7 R
>R S
(S T
)T U
;U V
services 
. .
"AddWhereInputIndexPropertyProvider 7
<7 8
AliasPartIndex8 F
>F G
(G H
)H I
;I J
} 	
} 
} ‘l
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Handlers\AliasPartHandler.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Handlers $
{ 
public 

class 
AliasPartHandler !
:" #
ContentPartHandler$ 6
<6 7
	AliasPart7 @
>@ A
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
	ITagCache "
	_tagCache# ,
;, -
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
AliasPartHandler 
(  %
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?
	ITagCache 
tagCache 
, "
ILiquidTemplateManager "!
liquidTemplateManager# 8
,8 9
ISession 
session 
, 
IStringLocalizer 
< 
AliasPartHandler -
>- .
stringLocalizer/ >
)> ?
{   	%
_contentDefinitionManager!! %
=!!& '$
contentDefinitionManager!!( @
;!!@ A
	_tagCache"" 
="" 
tagCache""  
;""  !"
_liquidTemplateManager## "
=### $!
liquidTemplateManager##% :
;##: ;
_session$$ 
=$$ 
session$$ 
;$$ 
S%% 
=%% 
stringLocalizer%% 
;%%  
}&& 	
public(( 
override(( 
async(( 
Task(( "
ValidatingAsync((# 2
(((2 3"
ValidateContentContext((3 I
context((J Q
,((Q R
	AliasPart((S \
part((] a
)((a b
{)) 	
if++ 
(++ 
String++ 
.++ 
IsNullOrWhiteSpace++ )
(++) *
part++* .
.++. /
Alias++/ 4
)++4 5
)++5 6
{,, 
return-- 
;-- 
}.. 
await00 
foreach00 
(00 
var00 
item00 #
in00$ &
part00' +
.00+ ,
ValidateAsync00, 9
(009 :
S00: ;
,00; <
_session00= E
)00E F
)00F G
{11 
context22 
.22 
Fail22 
(22 
item22 !
)22! "
;22" #
}33 
}44 	
public66 
async66 
override66 
Task66 "
UpdatedAsync66# /
(66/ 0 
UpdateContentContext660 D
context66E L
,66L M
	AliasPart66N W
part66X \
)66\ ]
{77 	
if99 
(99 
!99 
String99 
.99 
IsNullOrEmpty99 %
(99% &
part99& *
.99* +
Alias99+ 0
)990 1
)991 2
{:: 
return;; 
;;; 
}<< 
var>> 
pattern>> 
=>> 

GetPattern>> $
(>>$ %
part>>% )
)>>) *
;>>* +
if@@ 
(@@ 
!@@ 
String@@ 
.@@ 
IsNullOrEmpty@@ %
(@@% &
pattern@@& -
)@@- .
)@@. /
{AA 
varBB 
modelBB 
=BB 
newBB 
AliasPartViewModelBB  2
(BB2 3
)BB3 4
{CC 
AliasDD 
=DD 
partDD  
.DD  !
AliasDD! &
,DD& '
	AliasPartEE 
=EE 
partEE  $
,EE$ %
ContentItemFF 
=FF  !
partFF" &
.FF& '
ContentItemFF' 2
}GG 
;GG 
partII 
.II 
AliasII 
=II 
awaitII ""
_liquidTemplateManagerII# 9
.II9 :
RenderAsyncII: E
(IIE F
patternIIF M
,IIM N
NullEncoderIIO Z
.IIZ [
DefaultII[ b
,IIb c
modelIId i
,IIi j
scopeJJ 
=>JJ 
scopeJJ "
.JJ" #
SetValueJJ# +
(JJ+ ,
nameofJJ, 2
(JJ2 3
ContentItemJJ3 >
)JJ> ?
,JJ? @
modelJJA F
.JJF G
ContentItemJJG R
)JJR S
)JJS T
;JJT U
partLL 
.LL 
AliasLL 
=LL 
partLL !
.LL! "
AliasLL" '
.LL' (
ReplaceLL( /
(LL/ 0
$strLL0 4
,LL4 5
StringLL6 <
.LL< =
EmptyLL= B
)LLB C
.LLC D
ReplaceLLD K
(LLK L
$strLLL P
,LLP Q
StringLLR X
.LLX Y
EmptyLLY ^
)LL^ _
;LL_ `
ifNN 
(NN 
partNN 
.NN 
AliasNN 
?NN 
.NN  
LengthNN  &
>NN' (
	AliasPartNN) 2
.NN2 3
MaxAliasLengthNN3 A
)NNA B
{OO 
partPP 
.PP 
AliasPP 
=PP  
partPP! %
.PP% &
AliasPP& +
.PP+ ,
	SubstringPP, 5
(PP5 6
$numPP6 7
,PP7 8
	AliasPartPP9 B
.PPB C
MaxAliasLengthPPC Q
)PPQ R
;PPR S
}QQ 
ifSS 
(SS 
!SS 
awaitSS 
partSS 
.SS  
IsAliasUniqueAsyncSS  2
(SS2 3
_sessionSS3 ;
,SS; <
partSS= A
.SSA B
AliasSSB G
)SSG H
)SSH I
{TT 
partUU 
.UU 
AliasUU 
=UU  
awaitUU! &$
GenerateUniqueAliasAsyncUU' ?
(UU? @
partUU@ D
.UUD E
AliasUUE J
,UUJ K
partUUL P
)UUP Q
;UUQ R
}VV 
partXX 
.XX 
ApplyXX 
(XX 
)XX 
;XX 
}YY 
}ZZ 	
public\\ 
override\\ 
Task\\ 
PublishedAsync\\ +
(\\+ ,!
PublishContentContext\\, A
context\\B I
,\\I J
	AliasPart\\K T
instance\\U ]
)\\] ^
{]] 	
return^^ 
	_tagCache^^ 
.^^ 
RemoveTagAsync^^ +
(^^+ ,
$"^^, .
alias:^^. 4
{^^4 5
instance^^5 =
.^^= >
Alias^^> C
}^^C D
"^^D E
)^^E F
;^^F G
}__ 	
publicaa 
overrideaa 
Taskaa 
RemovedAsyncaa )
(aa) * 
RemoveContentContextaa* >
contextaa? F
,aaF G
	AliasPartaaH Q
instanceaaR Z
)aaZ [
{bb 	
ifcc 
(cc 
contextcc 
.cc 
NoActiveVersionLeftcc +
)cc+ ,
{dd 
returnee 
	_tagCacheee  
.ee  !
RemoveTagAsyncee! /
(ee/ 0
$"ee0 2
alias:ee2 8
{ee8 9
instanceee9 A
.eeA B
AliaseeB G
}eeG H
"eeH I
)eeI J
;eeJ K
}ff 
returnhh 
Taskhh 
.hh 
CompletedTaskhh %
;hh% &
}ii 	
publickk 
overridekk 
Taskkk 
UnpublishedAsynckk -
(kk- .!
PublishContentContextkk. C
contextkkD K
,kkK L
	AliasPartkkM V
instancekkW _
)kk_ `
{ll 	
returnmm 
	_tagCachemm 
.mm 
RemoveTagAsyncmm +
(mm+ ,
$"mm, .
alias:mm. 4
{mm4 5
instancemm5 =
.mm= >
Aliasmm> C
}mmC D
"mmD E
)mmE F
;mmF G
}nn 	
publicpp 
overridepp 
asyncpp 
Taskpp "
CloningAsyncpp# /
(pp/ 0
CloneContentContextpp0 C
contextppD K
,ppK L
	AliasPartppM V
partppW [
)pp[ \
{qq 	
varrr 

clonedPartrr 
=rr 
contextrr $
.rr$ %
CloneContentItemrr% 5
.rr5 6
Asrr6 8
<rr8 9
	AliasPartrr9 B
>rrB C
(rrC D
)rrD E
;rrE F

clonedPartss 
.ss 
Aliasss 
=ss 
awaitss $$
GenerateUniqueAliasAsyncss% =
(ss= >
partss> B
.ssB C
AliasssC H
,ssH I

clonedPartssJ T
)ssT U
;ssU V

clonedPartuu 
.uu 
Applyuu 
(uu 
)uu 
;uu 
}vv 	
private{{ 
string{{ 

GetPattern{{ !
({{! "
	AliasPart{{" +
part{{, 0
){{0 1
{|| 	
var}} !
contentTypeDefinition}} %
=}}& '%
_contentDefinitionManager}}( A
.}}A B
GetTypeDefinition}}B S
(}}S T
part}}T X
.}}X Y
ContentItem}}Y d
.}}d e
ContentType}}e p
)}}p q
;}}q r
var~~ %
contentTypePartDefinition~~ )
=~~* +!
contentTypeDefinition~~, A
.~~A B
Parts~~B G
.~~G H
FirstOrDefault~~H V
(~~V W
x~~W X
=>~~Y [
String~~\ b
.~~b c
Equals~~c i
(~~i j
x~~j k
.~~k l
PartDefinition~~l z
.~~z {
Name~~{ 
,	~~ Ä
nameof
~~Å á
(
~~á à
	AliasPart
~~à ë
)
~~ë í
)
~~í ì
)
~~ì î
;
~~î ï
var 
pattern 
= %
contentTypePartDefinition 3
.3 4
GetSettings4 ?
<? @
AliasPartSettings@ Q
>Q R
(R S
)S T
.T U
PatternU \
;\ ]
return
ÅÅ 
pattern
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
async
ÑÑ 
Task
ÑÑ 
<
ÑÑ 
string
ÑÑ !
>
ÑÑ! "&
GenerateUniqueAliasAsync
ÑÑ# ;
(
ÑÑ; <
string
ÑÑ< B
alias
ÑÑC H
,
ÑÑH I
	AliasPart
ÑÑJ S
context
ÑÑT [
)
ÑÑ[ \
{
ÖÖ 	
var
ÜÜ 
version
ÜÜ 
=
ÜÜ 
$num
ÜÜ 
;
ÜÜ 
var
áá 
unversionedAlias
áá  
=
áá! "
alias
áá# (
;
áá( )
var
ââ &
versionSeparatorPosition
ââ (
=
ââ) *
alias
ââ+ 0
.
ââ0 1
LastIndexOf
ââ1 <
(
ââ< =
$char
ââ= @
)
ââ@ A
;
ââA B
if
ää 
(
ää &
versionSeparatorPosition
ää (
>
ää) *
-
ää+ ,
$num
ää, -
)
ää- .
{
ãã 
Int32
åå 
.
åå 
TryParse
åå 
(
åå 
alias
åå $
.
åå$ %
	Substring
åå% .
(
åå. /&
versionSeparatorPosition
åå/ G
)
ååG H
.
ååH I
	TrimStart
ååI R
(
ååR S
$char
ååS V
)
ååV W
,
ååW X
out
ååY \
version
åå] d
)
ååd e
;
ååe f
unversionedAlias
çç  
=
çç! "
alias
çç# (
.
çç( )
	Substring
çç) 2
(
çç2 3
$num
çç3 4
,
çç4 5&
versionSeparatorPosition
çç6 N
)
ççN O
;
ççO P
}
éé 
while
êê 
(
êê 
true
êê 
)
êê 
{
ëë 
var
ìì &
quantityCharactersToTrim
ìì ,
=
ìì- .
unversionedAlias
ìì/ ?
.
ìì? @
Length
ìì@ F
+
ììG H
$num
ììI J
+
ììK L
version
ììM T
.
ììT U
ToString
ììU ]
(
ìì] ^
)
ìì^ _
.
ìì_ `
Length
ìì` f
-
ììg h
	AliasPart
ììi r
.
ììr s
MaxAliasLengthììs Å
;ììÅ Ç
if
îî 
(
îî &
quantityCharactersToTrim
îî ,
>
îî- .
$num
îî/ 0
)
îî0 1
{
ïï 
unversionedAlias
ññ $
=
ññ% &
unversionedAlias
ññ' 7
.
ññ7 8
	Substring
ññ8 A
(
ññA B
$num
ññB C
,
ññC D
unversionedAlias
ññE U
.
ññU V
Length
ññV \
-
ññ] ^&
quantityCharactersToTrim
ññ_ w
)
ññw x
;
ññx y
}
óó 
var
ôô 
versionedAlias
ôô "
=
ôô# $
$"
ôô% '
{
ôô' (
unversionedAlias
ôô( 8
}
ôô8 9
-
ôô9 :
{
ôô: ;
version
ôô; B
++
ôôB D
}
ôôD E
"
ôôE F
;
ôôF G
if
öö 
(
öö 
await
öö 
context
öö !
.
öö! " 
IsAliasUniqueAsync
öö" 4
(
öö4 5
_session
öö5 =
,
öö= >
versionedAlias
öö? M
)
ööM N
)
ööN O
{
õõ 
return
úú 
versionedAlias
úú )
;
úú) *
}
ùù 
}
ûû 
}
üü 	
}
†† 
}°° ç8
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Indexes\AliasPartIndex.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Indexes #
{ 
public 

class 
AliasPartIndex 
:  !
MapIndex" *
{ 
public 
string 
ContentItemId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Alias 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Latest 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
	Published 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class "
AliasPartIndexProvider '
:( )
ContentHandlerBase* <
,< =
IIndexProvider> L
,L M 
IScopedIndexProviderN b
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
HashSet  
<  !
string! '
>' (
_partRemoved) 5
=6 7
new8 ;
HashSet< C
<C D
stringD J
>J K
(K L
)L M
;M N
private %
IContentDefinitionManager )%
_contentDefinitionManager* C
;C D
public "
AliasPartIndexProvider %
(% &
IServiceProvider& 6
serviceProvider7 F
)F G
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
}   	
public"" 
override"" 
Task"" 
UpdatedAsync"" )
("") * 
UpdateContentContext""* >
context""? F
)""F G
{## 	
var$$ 
part$$ 
=$$ 
context$$ 
.$$ 
ContentItem$$ *
.$$* +
As$$+ -
<$$- .
	AliasPart$$. 7
>$$7 8
($$8 9
)$$9 :
;$$: ;
if(( 
((( 
part(( 
!=(( 
null(( 
)(( 
{)) %
_contentDefinitionManager++ )
??=++* -
_serviceProvider++. >
.++> ?
GetRequiredService++? Q
<++Q R%
IContentDefinitionManager++R k
>++k l
(++l m
)++m n
;++n o
var.. !
contentTypeDefinition.. )
=..* +%
_contentDefinitionManager.., E
...E F
GetTypeDefinition..F W
(..W X
context..X _
..._ `
ContentItem..` k
...k l
ContentType..l w
)..w x
;..x y
if// 
(// 
!// !
contentTypeDefinition// *
.//* +
Parts//+ 0
.//0 1
Any//1 4
(//4 5
ctpd//5 9
=>//: <
ctpd//= A
.//A B
Name//B F
==//G I
nameof//J P
(//P Q
	AliasPart//Q Z
)//Z [
)//[ \
)//\ ]
{00 
context11 
.11 
ContentItem11 '
.11' (
Remove11( .
<11. /
	AliasPart11/ 8
>118 9
(119 :
)11: ;
;11; <
_partRemoved22  
.22  !
Add22! $
(22$ %
context22% ,
.22, -
ContentItem22- 8
.228 9
ContentItemId229 F
)22F G
;22G H
}33 
}44 
return66 
Task66 
.66 
CompletedTask66 %
;66% &
}77 	
public99 
string99 
CollectionName99 $
{99% &
get99' *
;99* +
set99, /
;99/ 0
}991 2
public:: 
Type:: 
ForType:: 
(:: 
):: 
=>::  
typeof::! '
(::' (
ContentItem::( 3
)::3 4
;::4 5
public;; 
void;; 
Describe;; 
(;; 
IDescriptor;; (
context;;) 0
);;0 1
=>;;2 4
Describe;;5 =
(;;= >
(;;> ?
DescribeContext;;? N
<;;N O
ContentItem;;O Z
>;;Z [
);;[ \
context;;\ c
);;c d
;;;d e
public== 
void== 
Describe== 
(== 
DescribeContext== ,
<==, -
ContentItem==- 8
>==8 9
context==: A
)==A B
{>> 	
context?? 
.?? 
For?? 
<?? 
AliasPartIndex?? &
>??& '
(??' (
)??( )
.@@ 
When@@ 
(@@ 
contentItem@@ !
=>@@" $
contentItem@@% 0
.@@0 1
Has@@1 4
<@@4 5
	AliasPart@@5 >
>@@> ?
(@@? @
)@@@ A
||@@B D
_partRemoved@@E Q
.@@Q R
Contains@@R Z
(@@Z [
contentItem@@[ f
.@@f g
ContentItemId@@g t
)@@t u
)@@u v
.AA 
MapAA 
(AA 
contentItemAA  
=>AA! #
{BB 
ifDD 
(DD 
!DD 
contentItemDD $
.DD$ %
	PublishedDD% .
&&DD/ 1
!DD2 3
contentItemDD3 >
.DD> ?
LatestDD? E
)DDE F
{EE 
returnFF 
nullFF #
;FF# $
}GG 
varII 
partII 
=II 
contentItemII *
.II* +
AsII+ -
<II- .
	AliasPartII. 7
>II7 8
(II8 9
)II9 :
;II: ;
ifJJ 
(JJ 
partJJ 
==JJ 
nullJJ  $
||JJ% '
StringJJ( .
.JJ. /
IsNullOrEmptyJJ/ <
(JJ< =
partJJ= A
.JJA B
AliasJJB G
)JJG H
)JJH I
{KK 
returnLL 
nullLL #
;LL# $
}MM 
returnOO 
newOO 
AliasPartIndexOO -
{PP 
AliasQQ 
=QQ 
partQQ  $
.QQ$ %
AliasQQ% *
.QQ* +
ToLowerInvariantQQ+ ;
(QQ; <
)QQ< =
,QQ= >
ContentItemIdRR %
=RR& '
contentItemRR( 3
.RR3 4
ContentItemIdRR4 A
,RRA B
LatestSS 
=SS  
contentItemSS! ,
.SS, -
LatestSS- 3
,SS3 4
	PublishedTT !
=TT" #
contentItemTT$ /
.TT/ 0
	PublishedTT0 9
}UU 
;UU 
}VV 
)VV 
;VV 
}WW 	
}XX 
}YY ü
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Indexing\AliasPartIndexHandler.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Indexing $
{ 
public 

class !
AliasPartIndexHandler &
:' (#
ContentPartIndexHandler) @
<@ A
	AliasPartA J
>J K
{ 
public		 
override		 
Task		 
BuildIndexAsync		 ,
(		, -
	AliasPart		- 6
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
=  
DocumentIndexOptions .
.. /
Store/ 4
;4 5
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
,- .
part/ 3
.3 4
Alias4 9
,9 :
options; B
)B C
;C D
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ª
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Liquid\ContentAliasLiquidTemplateEventHandler.cs
	namespace		 	
OrchardCore		
 
.		 
Alias		 
.		 
Liquid		 "
{

 
public 

class 2
&ContentAliasLiquidTemplateEventHandler 7
:8 9'
ILiquidTemplateEventHandler: U
{ 
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly 
ISession !
_session" *
;* +
public 2
&ContentAliasLiquidTemplateEventHandler 5
(5 6
IContentManager6 E
contentManagerF T
,T U
ISessionV ^
session_ f
)f g
{ 	
_contentManager 
= 
contentManager ,
;, -
_session 
= 
session 
; 
} 	
public 
Task 
RenderingAsync "
(" #
TemplateContext# 2
context3 :
): ;
{ 	
context 
.  
MemberAccessStrategy (
.( )
Register) 1
<1 2!
LiquidContentAccessor2 G
,G H"
LiquidPropertyAccessorI _
>_ `
(` a
$stra h
,h i
objj m
=>n p
{ 
return 
new "
LiquidPropertyAccessor 1
(1 2
async2 7
alias8 =
=>> @
{ 
var 
contentItem #
=$ %
await& +
_session, 4
.4 5
Query5 :
<: ;
ContentItem; F
,F G
AliasPartIndexH V
>V W
(W X
xX Y
=>Z \
x 
. 
	Published #
&&$ &
x' (
.( )
Alias) .
==/ 1
alias2 7
.7 8
ToLowerInvariant8 H
(H I
)I J
)J K
. 
FirstOrDefaultAsync ,
(, -
)- .
;. /
if   
(   
contentItem   #
==  $ &
null  ' +
)  + ,
{!! 
return"" 
NilValue"" '
.""' (
Instance""( 0
;""0 1
}## 
contentItem%% 
=%%  !
await%%" '
_contentManager%%( 7
.%%7 8
	LoadAsync%%8 A
(%%A B
contentItem%%B M
)%%M N
;%%N O
return'' 

FluidValue'' %
.''% &
Create''& ,
('', -
contentItem''- 8
)''8 9
;''9 :
}(( 
)(( 
;(( 
})) 
))) 
;)) 
return++ 
Task++ 
.++ 
CompletedTask++ %
;++% &
},, 	
}-- 
}.. »
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Manifest.cs
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
$str ]
,] ^
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 5
}		6 7
,		7 8
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
] è,
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Migrations.cs
	namespace 	
OrchardCore
 
. 
Alias 
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
(9 :
nameof: @
(@ A
	AliasPartA J
)J K
,K L
builderM T
=>U W
builderX _
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! ]
)] ^
)^ _
;_ `
SchemaBuilder 
. 
CreateMapIndexTable -
<- .
AliasPartIndex. <
>< =
(= >
table> C
=>D F
tableG L
. 
Column 
< 
string 
> 
(  
$str  '
,' (
col) ,
=>- /
col0 3
.3 4

WithLength4 >
(> ?
	AliasPart? H
.H I
MaxAliasLengthI W
)W X
)X Y
. 
Column 
< 
string 
> 
(  
$str  /
,/ 0
c1 2
=>3 5
c6 7
.7 8

WithLength8 B
(B C
$numC E
)E F
)F G
. 
Column 
< 
bool 
> 
( 
$str &
,& '
c( )
=>* ,
c- .
.. /
WithDefault/ :
(: ;
false; @
)@ A
)A B
.   
Column   
<   
bool   
>   
(   
$str   )
,  ) *
c  + ,
=>  - /
c  0 1
.  1 2
WithDefault  2 =
(  = >
true  > B
)  B C
)  C D
)!! 
;!! 
SchemaBuilder## 
.## 
AlterIndexTable## )
<##) *
AliasPartIndex##* 8
>##8 9
(##9 :
table##: ?
=>##@ B
table##C H
.$$ 
CreateIndex$$ 
($$ 
$str$$ <
,$$< =
$str%%  
,%%  !
$str&& 
,&& 
$str'' #
,''# $
$str(( 
,((  
$str)) 
))) 
)** 
;** 
return-- 
$num-- 
;-- 
}.. 	
public11 
int11 
UpdateFrom111 
(11 
)11  
{22 	
SchemaBuilder33 
.33 
AlterIndexTable33 )
<33) *
AliasPartIndex33* 8
>338 9
(339 :
table33: ?
=>33@ B
table33C H
.44 
	AddColumn44 
<44 
bool44 
>44  
(44  !
$str44! )
,44) *
c44+ ,
=>44- /
c440 1
.441 2
WithDefault442 =
(44= >
false44> C
)44C D
)44D E
)55 
;55 
SchemaBuilder77 
.77 
AlterIndexTable77 )
<77) *
AliasPartIndex77* 8
>778 9
(779 :
table77: ?
=>77@ B
table77C H
.88 
	AddColumn88 
<88 
bool88 
>88  
(88  !
$str88! ,
,88, -
c88. /
=>880 2
c883 4
.884 5
WithDefault885 @
(88@ A
true88A E
)88E F
)88F G
)99 
;99 
return;; 
$num;; 
;;; 
}<< 	
public?? 
int?? 
UpdateFrom2?? 
(?? 
)??  
{@@ 	
SchemaBuilderBB 
.BB 
AlterIndexTableBB )
<BB) *
AliasPartIndexBB* 8
>BB8 9
(BB9 :
tableBB: ?
=>BB@ B
tableBBC H
.JJ 
CreateIndexJJ 
(JJ 
$strJJ <
,JJ< =
$strKK  
,KK  !
$strLL 
)LL 
)MM 
;MM 
returnOO 
$numOO 
;OO 
}PP 	
publicSS 
intSS 
UpdateFrom3SS 
(SS 
)SS  
{TT 	
SchemaBuilderWW 
.WW 
AlterIndexTableWW )
<WW) *
AliasPartIndexWW* 8
>WW8 9
(WW9 :
tableWW: ?
=>WW@ B
tableWWC H
.XX 
CreateIndexXX 
(XX 
$strXX J
,XXJ K
$strYY  
,YY  !
$strZZ #
,ZZ# $
$str[[ 
,[[  
$str\\ 
)\\ 
)]] 
;]] 
return__ 
$num__ 
;__ 
}`` 	
}aa 
}bb ∂
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Models\AliasPart.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Models "
{ 
public 

class 
	AliasPart 
: 
ContentPart (
{ 
public

 
const

 
int

 
MaxAliasLength

 '
=

( )
$num

* -
;

- .
public 
string 
Alias 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Models\AliasPartExtensions.cs
	namespace		 	
OrchardCore		
 
.		 
Alias		 
.		 
Models		 "
{

 
public 

static 
class 
AliasPartExtensions +
{ 
public 
static 
async 
IAsyncEnumerable ,
<, -
ValidationResult- =
>= >
ValidateAsync? L
(L M
thisM Q
	AliasPartR [
part\ `
,` a
IStringLocalizerb r
Ss t
,t u
ISessionv ~
session	 Ü
)
Ü á
{ 	
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
part+ /
./ 0
Alias0 5
)5 6
)6 7
{ 
if 
( 
part 
. 
Alias 
. 
Length %
>& '
	AliasPart( 1
.1 2
MaxAliasLength2 @
)@ A
{ 
yield 
return  
new! $
ValidationResult% 5
(5 6
S6 7
[7 8
$str8 }
,} ~
	AliasPart	 à
.
à â
MaxAliasLength
â ó
]
ó ò
,
ò ô
new
ö ù
string
û §
[
§ •
]
• ¶
{
ß ®
nameof
© Ø
(
Ø ∞
part
∞ ¥
.
¥ µ
Alias
µ ∫
)
∫ ª
}
º Ω
)
Ω æ
;
æ ø
} 
if 
( 
! 
await 
IsAliasUniqueAsync -
(- .
part. 2
,2 3
session4 ;
,; <
part= A
.A B
AliasB G
)G H
)H I
{ 
yield 
return  
new! $
ValidationResult% 5
(5 6
S6 7
[7 8
$str8 W
]W X
,X Y
newZ ]
[] ^
]^ _
{` a
nameofb h
(h i
parti m
.m n
Aliasn s
)s t
}u v
)v w
;w x
} 
} 
} 	
public 
static 
async 
Task  
<  !
bool! %
>% &
IsAliasUniqueAsync' 9
(9 :
this: >
	AliasPart? H
contextI P
,P Q
ISessionR Z
session[ b
,b c
stringd j
aliask p
)p q
{ 	
return 
( 
await 
session !
.! "

QueryIndex" ,
<, -
AliasPartIndex- ;
>; <
(< =
o= >
=>? A
oB C
.C D
AliasD I
==J L
aliasM R
&&S U
oV W
.W X
ContentItemIdX e
!=f h
contexti p
.p q
ContentItemq |
.| }
ContentItemId	} ä
)
ä ã
.
ã å

CountAsync
å ñ
(
ñ ó
)
ó ò
)
ò ô
==
ö ú
$num
ù û
;
û ü
}   	
}"" 
}## ‹
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Properties\AssemblyInfo.cs
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
]7 8ö
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Razor\AliasPartRazorHelperExtensions.cs
public		 
static		 
class		 *
AliasPartRazorHelperExtensions		 2
{

 
public 

static 
async 
Task 
< 
string #
># $(
GetContentItemIdByAliasAsync% A
(A B
thisB F
IOrchardHelperG U
orchardHelperV c
,c d
stringe k
aliasl q
)q r
{ 
if 

( 
String 
. 
IsNullOrEmpty  
(  !
alias! &
)& '
)' (
{ 	
return 
null 
; 
} 	
if 

( 
alias 
. 

StartsWith 
( 
$str %
,% &
StringComparison' 7
.7 8
OrdinalIgnoreCase8 I
)I J
)J K
{ 	
alias 
= 
alias 
. 
	Substring #
(# $
$num$ %
)% &
;& '
} 	
var 
session 
= 
orchardHelper #
.# $
HttpContext$ /
./ 0
RequestServices0 ?
.? @

GetService@ J
<J K
ISessionK S
>S T
(T U
)U V
;V W
var   
aliasPartIndex   
=   
await   "(
AliasPartContentHandleHelper  # ?
.  ? @
QueryAliasIndex  @ O
(  O P
session  P W
,  W X
alias  Y ^
)  ^ _
;  _ `
return"" 
aliasPartIndex"" 
?"" 
."" 
ContentItemId"" ,
;"", -
}## 
public-- 

static-- 
async-- 
Task-- 
<-- 
ContentItem-- (
>--( )&
GetContentItemByAliasAsync--* D
(--D E
this--E I
IOrchardHelper--J X
orchardHelper--Y f
,--f g
string--h n
alias--o t
,--t u
bool--v z
latest	--{ Å
=
--Ç É
false
--Ñ â
)
--â ä
{.. 
var// 
contentItemId// 
=// 
await// !
orchardHelper//" /
./// 0(
GetContentItemIdByAliasAsync//0 L
(//L M
alias//M R
)//R S
;//S T
var00 
contentManager00 
=00 
orchardHelper00 *
.00* +
HttpContext00+ 6
.006 7
RequestServices007 F
.00F G

GetService00G Q
<00Q R
IContentManager00R a
>00a b
(00b c
)00c d
;00d e
return22 
await22 
contentManager22 #
.22# $
GetAsync22$ ,
(22, -
contentItemId22- :
,22: ;
latest22< B
?22C D
VersionOptions22E S
.22S T
Latest22T Z
:22[ \
VersionOptions22] k
.22k l
	Published22l u
)22u v
;22v w
}33 
}44 Ò
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Services\AliasPartContentHandleProvider.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Services $
{ 
public		 

class		 *
AliasPartContentHandleProvider		 /
:		0 1"
IContentHandleProvider		2 H
{

 
private 
readonly 
ISession !
_session" *
;* +
public *
AliasPartContentHandleProvider -
(- .
ISession. 6
session7 >
)> ?
{ 	
_session 
= 
session 
; 
} 	
public 
int 
Order 
=> 
$num 
;  
public 
async 
Task 
< 
string  
>  !!
GetContentItemIdAsync" 7
(7 8
string8 >
handle? E
)E F
{ 	
if 
( 
handle 
. 

StartsWith !
(! "
$str" *
,* +
StringComparison, <
.< =
OrdinalIgnoreCase= N
)N O
)O P
{ 
handle 
= 
handle 
.  
	Substring  )
() *
$num* +
)+ ,
;, -
var 
aliasPartIndex "
=# $
await% *(
AliasPartContentHandleHelper+ G
.G H
QueryAliasIndexH W
(W X
_sessionX `
,` a
handleb h
)h i
;i j
return 
aliasPartIndex %
?% &
.& '
ContentItemId' 4
;4 5
} 
return 
null 
; 
} 	
}   
internal"" 
class"" (
AliasPartContentHandleHelper"" /
{## 
internal$$ 
static$$ 
async$$ 
Task$$ "
<$$" #
ContentItem$$# .
>$$. /
QueryAliasIndex$$0 ?
($$? @
ISession$$@ H
session$$I P
,$$P Q
string$$R X
alias$$Y ^
)$$^ _
=>$$` b
await%% 
session%% 
.%% 
Query%% 
<%%  
ContentItem%%  +
,%%+ ,
AliasPartIndex%%- ;
>%%; <
(%%< =
x%%= >
=>%%? A
x%%B C
.%%C D
Alias%%D I
==%%J L
alias%%M R
.%%R S
ToLowerInvariant%%S c
(%%c d
)%%d e
)%%e f
.%%f g
FirstOrDefaultAsync%%g z
(%%z {
)%%{ |
;%%| }
}&& 
}'' ˝	
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Settings\AliasPartSettings.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Settings $
{ 
public 

enum 
AliasPartOptions  
{ 
Editable 
, 
GeneratedDisabled 
}		 
public 

class 
AliasPartSettings "
{ 
[ 	
DefaultValue	 
( 
$str E
)E F
]F G
public 
string 
Pattern 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. ]
;] ^
[ 	
DefaultValue	 
( 
AliasPartOptions &
.& '
Editable' /
)/ 0
]0 1
public 
AliasPartOptions 
Options  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
AliasPartOptions8 H
.H I
EditableI Q
;Q R
} 
} ù/
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Settings\AliasPartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Settings $
{ 
public 

class *
AliasPartSettingsDisplayDriver /
:0 12
&ContentTypePartDefinitionDisplayDriver2 X
{ 
private 
readonly "
ILiquidTemplateManager /
_templateManager0 @
;@ A
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public *
AliasPartSettingsDisplayDriver -
(- ."
ILiquidTemplateManager. D
templateManagerE T
,T U
IStringLocalizerV f
<f g+
AliasPartSettingsDisplayDriver	g Ö
>
Ö Ü
	localizer
á ê
)
ê ë
{ 	
_templateManager 
= 
templateManager .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
	AliasPart& /
)/ 0
,0 1%
contentTypePartDefinition2 K
.K L
PartDefinitionL Z
.Z [
Name[ _
)_ `
)` a
{ 
return 
null 
; 
} 
return 

Initialize 
< &
AliasPartSettingsViewModel 8
>8 9
(9 :
$str: R
,R S
modelT Y
=>Z \
{   
var!! 
settings!! 
=!! %
contentTypePartDefinition!! 8
.!!8 9
GetSettings!!9 D
<!!D E
AliasPartSettings!!E V
>!!V W
(!!W X
)!!X Y
;!!Y Z
model## 
.## 
Pattern## 
=## 
settings##  (
.##( )
Pattern##) 0
;##0 1
model$$ 
.$$ 
Options$$ 
=$$ 
settings$$  (
.$$( )
Options$$) 0
;$$0 1
model%% 
.%% 
AliasPartSettings%% '
=%%( )
settings%%* 2
;%%2 3
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
(++% &
	AliasPart++& /
)++/ 0
,++0 1%
contentTypePartDefinition++2 K
.++K L
PartDefinition++L Z
.++Z [
Name++[ _
)++_ `
)++` a
{,, 
return-- 
null-- 
;-- 
}.. 
var00 
model00 
=00 
new00 &
AliasPartSettingsViewModel00 6
(006 7
)007 8
;008 9
if22 
(22 
await22 
context22 
.22 
Updater22 %
.22% &
TryUpdateModelAsync22& 9
(229 :
model22: ?
,22? @
Prefix22A G
,22G H
m22I J
=>22K M
m22N O
.22O P
Pattern22P W
,22W X
m22Y Z
=>22[ ]
m22^ _
.22_ `
Options22` g
)22g h
)22h i
{33 
if44 
(44 
!44 
string44 
.44 
IsNullOrEmpty44 )
(44) *
model44* /
.44/ 0
Pattern440 7
)447 8
&&449 ;
!44< =
_templateManager44= M
.44M N
Validate44N V
(44V W
model44W \
.44\ ]
Pattern44] d
,44d e
out44f i
var44j m
errors44n t
)44t u
)44u v
{55 
context66 
.66 
Updater66 #
.66# $

ModelState66$ .
.66. /
AddModelError66/ <
(66< =
nameof66= C
(66C D
model66D I
.66I J
Pattern66J Q
)66Q R
,66R S
S66T U
[66U V
$str	66V ó
,
66ó ò
string
66ô ü
.
66ü †
Join
66† §
(
66§ •
$str
66• ®
,
66® ©
errors
66™ ∞
)
66∞ ±
]
66± ≤
)
66≤ ≥
;
66≥ ¥
}77 
else88 
{99 
context:: 
.:: 
Builder:: #
.::# $
WithSettings::$ 0
(::0 1
new::1 4
AliasPartSettings::5 F
{::G H
Pattern::I P
=::Q R
model::S X
.::X Y
Pattern::Y `
,::` a
Options::b i
=::j k
model::l q
.::q r
Options::r y
}::z {
)::{ |
;::| }
};; 
}<< 
return>> 
Edit>> 
(>> %
contentTypePartDefinition>> 1
,>>1 2
context>>3 :
.>>: ;
Updater>>; B
)>>B C
;>>C D
}?? 	
}@@ 
}AA º
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Settings\AliasPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 
Settings $
{ 
public 

class &
AliasPartSettingsViewModel +
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
AliasPartOptions 
Options  '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[		 	
	BindNever			 
]		 
public

 
AliasPartSettings

  
AliasPartSettings

! 2
{

3 4
get

5 8
;

8 9
set

: =
;

= >
}

? @
} 
} †
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\Startup.cs
	namespace 	
OrchardCore
 
. 
Alias 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
AliasPartViewModel@ R
>R S
(S T
)T U
;U V
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{   	
services!! 
.!! 
	AddScoped!! 
<!! "
AliasPartIndexProvider!! 5
>!!5 6
(!!6 7
)!!7 8
;!!8 9
services"" 
."" 
	AddScoped"" 
<""  
IScopedIndexProvider"" 3
>""3 4
(""4 5
sp""5 7
=>""8 :
sp""; =
.""= >
GetRequiredService""> P
<""P Q"
AliasPartIndexProvider""Q g
>""g h
(""h i
)""i j
)""j k
;""k l
services## 
.## 
	AddScoped## 
<## 
IContentHandler## .
>##. /
(##/ 0
sp##0 2
=>##3 5
sp##6 8
.##8 9
GetRequiredService##9 K
<##K L"
AliasPartIndexProvider##L b
>##b c
(##c d
)##d e
)##e f
;##f g
services%% 
.%% 
	AddScoped%% 
<%% 
IDataMigration%% -
,%%- .

Migrations%%/ 9
>%%9 :
(%%: ;
)%%; <
;%%< =
services&& 
.&& 
	AddScoped&& 
<&& "
IContentHandleProvider&& 5
,&&5 6*
AliasPartContentHandleProvider&&7 U
>&&U V
(&&V W
)&&W X
;&&X Y
services)) 
.)) 
AddContentPart)) #
<))# $
	AliasPart))$ -
>))- .
()). /
)))/ 0
.** 
UseDisplayDriver** !
<**! ""
AliasPartDisplayDriver**" 8
>**8 9
(**9 :
)**: ;
.++ 

AddHandler++ 
<++ 
AliasPartHandler++ ,
>++, -
(++- .
)++. /
;++/ 0
services-- 
.-- 
	AddScoped-- 
<-- $
IContentPartIndexHandler-- 7
,--7 8!
AliasPartIndexHandler--9 N
>--N O
(--O P
)--P Q
;--Q R
services.. 
... 
	AddScoped.. 
<.. 3
'IContentTypePartDefinitionDisplayDriver.. F
,..F G*
AliasPartSettingsDisplayDriver..H f
>..f g
(..g h
)..h i
;..i j
services00 
.00 
	AddScoped00 
<00 '
ILiquidTemplateEventHandler00 :
,00: ;2
&ContentAliasLiquidTemplateEventHandler00< b
>00b c
(00c d
)00d e
;00e f
}11 	
}22 
}33 Æ	
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Alias\ViewModels\AliasPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Alias 
. 

ViewModels &
{ 
public 

class 
AliasPartViewModel #
{		 
public

 
string

 
Alias

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
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
public 
	AliasPart 
	AliasPart "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
	BindNever	 
] 
public 
AliasPartSettings  
Settings! )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 