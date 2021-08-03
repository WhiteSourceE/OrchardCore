®
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Arguments.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{		 
public

 

static

 
class

 
	Arguments

 !
{ 
private 
static  
ConcurrentDictionary +
<+ ,
Type, 0
,0 1
Func2 6
<6 7
object7 =
,= >
NamedEnumerable? N
<N O
objectO U
>U V
>V W
>W X 
_propertiesAccessorsY m
=n o
newp s!
ConcurrentDictionary	t à
<
à â
Type
â ç
,
ç é
Func
è ì
<
ì î
object
î ö
,
ö õ
NamedEnumerable
ú ´
<
´ ¨
object
¨ ≤
>
≤ ≥
>
≥ ¥
>
¥ µ
(
µ ∂
)
∂ ∑
;
∑ ∏
public 
static 
INamedEnumerable &
<& '
T' (
>( )
FromT* /
</ 0
T0 1
>1 2
(2 3
IEnumerable3 >
<> ?
T? @
>@ A
	argumentsB K
,K L
IEnumerableM X
<X Y
stringY _
>_ `
namesa f
)f g
{ 	
return 
new 
NamedEnumerable &
<& '
T' (
>( )
() *
	arguments* 3
,3 4
names5 :
): ;
;; <
} 	
public 
static 
INamedEnumerable &
<& '
object' -
>- .
From/ 3
(3 4
IEnumerable4 ?
<? @
object@ F
>F G
	argumentsH Q
,Q R
IEnumerableS ^
<^ _
string_ e
>e f
namesg l
)l m
{ 	
return 
new 
NamedEnumerable &
<& '
object' -
>- .
(. /
	arguments/ 8
,8 9
names: ?
)? @
;@ A
} 	
public 
static 
INamedEnumerable &
<& '
object' -
>- .
From/ 3
(3 4
IDictionary4 ?
<? @
string@ F
,F G
objectH N
>N O

dictionaryP Z
)Z [
{ 	
return 
From 
( 

dictionary "
." #
Values# )
,) *

dictionary+ 5
.5 6
Keys6 :
): ;
;; <
} 	
public 
static 
INamedEnumerable &
<& '
string' -
>- .
From/ 3
(3 4
IDictionary4 ?
<? @
string@ F
,F G
stringH N
>N O

dictionaryP Z
)Z [
{ 	
return 
new 
NamedEnumerable &
<& '
string' -
>- .
(. /

dictionary/ 9
.9 :
Values: @
,@ A

dictionaryB L
.L M
KeysM Q
)Q R
;R S
}   	
public"" 
static"" 
INamedEnumerable"" &
<""& '
object""' -
>""- .
From""/ 3
(""3 4
object""4 :
propertyObject""; I
)""I J
{## 	
var$$ 
propertiesAccessor$$ "
=$$# $ 
_propertiesAccessors$$% 9
.$$9 :
GetOrAdd$$: B
($$B C
propertyObject$$C Q
.$$Q R
GetType$$R Y
($$Y Z
)$$Z [
,$$[ \
type$$] a
=>$$b d
{%% 
var&& 

properties&& 
=&&  
type&&! %
.&&% &
GetProperties&&& 3
(&&3 4
BindingFlags&&4 @
.&&@ A
Instance&&A I
|&&J K
BindingFlags&&L X
.&&X Y
Public&&Y _
)&&_ `
;&&` a
var'' 
names'' 
='' 

properties'' &
.''& '
Select''' -
(''- .
x''. /
=>''0 2
x''3 4
.''4 5
Name''5 9
)''9 :
.'': ;
ToArray''; B
(''B C
)''C D
;''D E
return)) 
obj)) 
=>)) 
{** 
var,, 
values,, 
=,,  

properties,,! +
.,,+ ,
Select,,, 2
(,,2 3
x,,3 4
=>,,5 7
x,,8 9
.,,9 :
GetValue,,: B
(,,B C
obj,,C F
,,,F G
null,,H L
),,L M
),,M N
.,,N O
ToArray,,O V
(,,V W
),,W X
;,,X Y
return-- 
new-- 
NamedEnumerable-- .
<--. /
object--/ 5
>--5 6
(--6 7
values--7 =
,--= >
names--? D
)--D E
;--E F
}.. 
;.. 
}// 
)// 
;// 
return11 
propertiesAccessor11 %
(11% &
propertyObject11& 4
)114 5
;115 6
}22 	
private44 
class44 
NamedEnumerable44 %
<44% &
T44& '
>44' (
:44) *
INamedEnumerable44+ ;
<44; <
T44< =
>44= >
{55 	
private66 
readonly66 
List66 !
<66! "
T66" #
>66# $

_arguments66% /
;66/ 0
private77 
readonly77 
List77 !
<77! "
string77" (
>77( )
_names77* 0
;770 1
private88 
readonly88 
T88 
[88 
]88  
_positional88! ,
;88, -
private99 
IDictionary99 
<99  
string99  &
,99& '
T99( )
>99) *
_named99+ 1
;991 2
public;; 
NamedEnumerable;; "
(;;" #
IEnumerable;;# .
<;;. /
T;;/ 0
>;;0 1
	arguments;;2 ;
,;;; <
IEnumerable;;= H
<;;H I
string;;I O
>;;O P
names;;Q V
);;V W
{<< 
if== 
(== 
	arguments== 
.== 
Count== #
(==# $
)==$ %
<==& '
names==( -
.==- .
Count==. 3
(==3 4
)==4 5
)==5 6
{>> 
throw?? 
new?? 
ArgumentException?? /
(??/ 0
$str??0 S
)??S T
;??T U
}@@ 

_argumentsBB 
=BB 
	argumentsBB &
.BB& '
ToListBB' -
(BB- .
)BB. /
;BB/ 0
_namesCC 
=CC 
namesCC 
.CC 
ToListCC %
(CC% &
)CC& '
;CC' (
_positionalEE 
=EE 
ArrayEE #
.EE# $
EmptyEE$ )
<EE) *
TEE* +
>EE+ ,
(EE, -
)EE- .
;EE. /
ifGG 
(GG 

_argumentsGG 
.GG 
CountGG $
!=GG% '
_namesGG( .
.GG. /
CountGG/ 4
)GG4 5
{HH 
_positionalII 
=II  !

_argumentsII" ,
.II, -
TakeII- 1
(II1 2

_argumentsII2 <
.II< =
CountII= B
-IIC D
_namesIIE K
.IIK L
CountIIL Q
)IIQ R
.IIR S
ToArrayIIS Z
(IIZ [
)II[ \
;II\ ]
}JJ 
}KK 
IEnumeratorMM 
IEnumerableMM #
.MM# $
GetEnumeratorMM$ 1
(MM1 2
)MM2 3
{NN 
returnOO 

_argumentsOO !
.OO! "
GetEnumeratorOO" /
(OO/ 0
)OO0 1
;OO1 2
}PP 
IEnumeratorRR 
<RR 
TRR 
>RR 
IEnumerableRR &
<RR& '
TRR' (
>RR( )
.RR) *
GetEnumeratorRR* 7
(RR7 8
)RR8 9
{SS 
returnTT 

_argumentsTT !
.TT! "
GetEnumeratorTT" /
(TT/ 0
)TT0 1
;TT1 2
}UU 
IListWW 
<WW 
TWW 
>WW 
INamedEnumerableWW %
<WW% &
TWW& '
>WW' (
.WW( )

PositionalWW) 3
{XX 
getYY 
{YY 
returnYY 
_positionalYY (
;YY( )
}YY* +
}ZZ 
IDictionary\\ 
<\\ 
string\\ 
,\\ 
T\\  !
>\\! "
INamedEnumerable\\# 3
<\\3 4
T\\4 5
>\\5 6
.\\6 7
Named\\7 <
{]] 
get^^ 
{^^ 
return^^ 
_named^^ #
??^^$ &
(^^' (
_named^^( .
=^^/ 0
new^^1 4
Named^^5 :
(^^: ;

_arguments^^; E
,^^E F
_names^^G M
)^^M N
)^^N O
;^^O P
}^^Q R
}__ 
privateaa 
classaa 
Namedaa 
:aa  !
IDictionaryaa" -
<aa- .
stringaa. 4
,aa4 5
Taa6 7
>aa7 8
{bb 
privatecc 
readonlycc  
IListcc! &
<cc& '
Tcc' (
>cc( )

_argumentscc* 4
;cc4 5
privatedd 
readonlydd  
IListdd! &
<dd& '
stringdd' -
>dd- .
_namesdd/ 5
;dd5 6
privateee 
IEnumerableee #
<ee# $
KeyValuePairee$ 0
<ee0 1
stringee1 7
,ee7 8
Tee9 :
>ee: ;
>ee; <
_enumerableee= H
;eeH I
publicgg 
Namedgg 
(gg 
IListgg "
<gg" #
Tgg# $
>gg$ %
	argumentsgg& /
,gg/ 0
IListgg1 6
<gg6 7
stringgg7 =
>gg= >
namesgg? D
)ggD E
{hh 
ifii 
(ii 
	argumentsii !
.ii! "
Countii" '
!=ii( *
namesii+ 0
.ii0 1
Countii1 6
)ii6 7
{jj 

_argumentskk "
=kk# $
	argumentskk% .
.kk. /
Skipkk/ 3
(kk3 4
	argumentskk4 =
.kk= >
Countkk> C
-kkD E
nameskkF K
.kkK L
CountkkL Q
)kkQ R
.kkR S
ToArraykkS Z
(kkZ [
)kk[ \
;kk\ ]
}ll 
elsemm 
{nn 

_argumentsoo "
=oo# $
	argumentsoo% .
;oo. /
}pp 
_namesrr 
=rr 
namesrr "
;rr" #
}ss 
privateuu 
IEnumerableuu #
<uu# $
KeyValuePairuu$ 0
<uu0 1
stringuu1 7
,uu7 8
Tuu9 :
>uu: ;
>uu; <
MakeEnumerableuu= K
(uuK L
)uuL M
{vv 
returnww 
_enumerableww &
??ww' )
(ww* +
_enumerableww+ 6
=ww7 8

_argumentsww9 C
.wwC D
ZipwwD G
(wwG H
_nameswwH N
,wwN O
(wwP Q
argwwQ T
,wwT U
namewwV Z
)wwZ [
=>ww\ ^
newww_ b
KeyValuePairwwc o
<wwo p
stringwwp v
,wwv w
Twwx y
>wwy z
(wwz {
nameww{ 
,	ww Ä
arg
wwÅ Ñ
)
wwÑ Ö
)
wwÖ Ü
)
wwÜ á
;
wwá à
}xx 
IEnumeratorzz 
<zz 
KeyValuePairzz (
<zz( )
stringzz) /
,zz/ 0
Tzz1 2
>zz2 3
>zz3 4
IEnumerablezz5 @
<zz@ A
KeyValuePairzzA M
<zzM N
stringzzN T
,zzT U
TzzV W
>zzW X
>zzX Y
.zzY Z
GetEnumeratorzzZ g
(zzg h
)zzh i
{{{ 
return|| 
MakeEnumerable|| )
(||) *
)||* +
.||+ ,
GetEnumerator||, 9
(||9 :
)||: ;
;||; <
}}} 
IEnumerator 
IEnumerable '
.' (
GetEnumerator( 5
(5 6
)6 7
{
ÄÄ 
return
ÅÅ 
MakeEnumerable
ÅÅ )
(
ÅÅ) *
)
ÅÅ* +
.
ÅÅ+ ,
GetEnumerator
ÅÅ, 9
(
ÅÅ9 :
)
ÅÅ: ;
;
ÅÅ; <
}
ÇÇ 
void
ÑÑ 
ICollection
ÑÑ  
<
ÑÑ  !
KeyValuePair
ÑÑ! -
<
ÑÑ- .
string
ÑÑ. 4
,
ÑÑ4 5
T
ÑÑ6 7
>
ÑÑ7 8
>
ÑÑ8 9
.
ÑÑ9 :
Add
ÑÑ: =
(
ÑÑ= >
KeyValuePair
ÑÑ> J
<
ÑÑJ K
string
ÑÑK Q
,
ÑÑQ R
T
ÑÑS T
>
ÑÑT U
item
ÑÑV Z
)
ÑÑZ [
{
ÖÖ 
throw
ÜÜ 
new
ÜÜ %
NotImplementedException
ÜÜ 5
(
ÜÜ5 6
)
ÜÜ6 7
;
ÜÜ7 8
}
áá 
void
ââ 
ICollection
ââ  
<
ââ  !
KeyValuePair
ââ! -
<
ââ- .
string
ââ. 4
,
ââ4 5
T
ââ6 7
>
ââ7 8
>
ââ8 9
.
ââ9 :
Clear
ââ: ?
(
ââ? @
)
ââ@ A
{
ää 
throw
ãã 
new
ãã %
NotImplementedException
ãã 5
(
ãã5 6
)
ãã6 7
;
ãã7 8
}
åå 
bool
éé 
ICollection
éé  
<
éé  !
KeyValuePair
éé! -
<
éé- .
string
éé. 4
,
éé4 5
T
éé6 7
>
éé7 8
>
éé8 9
.
éé9 :
Contains
éé: B
(
ééB C
KeyValuePair
ééC O
<
ééO P
string
ééP V
,
ééV W
T
ééX Y
>
ééY Z
item
éé[ _
)
éé_ `
{
èè 
return
êê 
MakeEnumerable
êê )
(
êê) *
)
êê* +
.
êê+ ,
Contains
êê, 4
(
êê4 5
item
êê5 9
)
êê9 :
;
êê: ;
}
ëë 
void
ìì 
ICollection
ìì  
<
ìì  !
KeyValuePair
ìì! -
<
ìì- .
string
ìì. 4
,
ìì4 5
T
ìì6 7
>
ìì7 8
>
ìì8 9
.
ìì9 :
CopyTo
ìì: @
(
ìì@ A
KeyValuePair
ììA M
<
ììM N
string
ììN T
,
ììT U
T
ììV W
>
ììW X
[
ììX Y
]
ììY Z
array
ìì[ `
,
ìì` a
int
ììb e

arrayIndex
ììf p
)
ììp q
{
îî 
throw
ïï 
new
ïï %
NotImplementedException
ïï 5
(
ïï5 6
)
ïï6 7
;
ïï7 8
}
ññ 
bool
òò 
ICollection
òò  
<
òò  !
KeyValuePair
òò! -
<
òò- .
string
òò. 4
,
òò4 5
T
òò6 7
>
òò7 8
>
òò8 9
.
òò9 :
Remove
òò: @
(
òò@ A
KeyValuePair
òòA M
<
òòM N
string
òòN T
,
òòT U
T
òòV W
>
òòW X
item
òòY ]
)
òò] ^
{
ôô 
throw
öö 
new
öö %
NotImplementedException
öö 5
(
öö5 6
)
öö6 7
;
öö7 8
}
õõ 
int
ùù 
ICollection
ùù 
<
ùù  
KeyValuePair
ùù  ,
<
ùù, -
string
ùù- 3
,
ùù3 4
T
ùù5 6
>
ùù6 7
>
ùù7 8
.
ùù8 9
Count
ùù9 >
{
ûû 
get
üü 
{
üü 
return
üü  
_names
üü! '
.
üü' (
Count
üü( -
;
üü- .
}
üü/ 0
}
†† 
bool
¢¢ 
ICollection
¢¢  
<
¢¢  !
KeyValuePair
¢¢! -
<
¢¢- .
string
¢¢. 4
,
¢¢4 5
T
¢¢6 7
>
¢¢7 8
>
¢¢8 9
.
¢¢9 :

IsReadOnly
¢¢: D
{
££ 
get
§§ 
{
§§ 
return
§§  
true
§§! %
;
§§% &
}
§§' (
}
•• 
bool
ßß 
IDictionary
ßß  
<
ßß  !
string
ßß! '
,
ßß' (
T
ßß) *
>
ßß* +
.
ßß+ ,
ContainsKey
ßß, 7
(
ßß7 8
string
ßß8 >
key
ßß? B
)
ßßB C
{
®® 
return
©© 
_names
©© !
.
©©! "
Contains
©©" *
(
©©* +
key
©©+ .
)
©©. /
;
©©/ 0
}
™™ 
void
¨¨ 
IDictionary
¨¨  
<
¨¨  !
string
¨¨! '
,
¨¨' (
T
¨¨) *
>
¨¨* +
.
¨¨+ ,
Add
¨¨, /
(
¨¨/ 0
string
¨¨0 6
key
¨¨7 :
,
¨¨: ;
T
¨¨< =
value
¨¨> C
)
¨¨C D
{
≠≠ 
throw
ÆÆ 
new
ÆÆ %
NotImplementedException
ÆÆ 5
(
ÆÆ5 6
)
ÆÆ6 7
;
ÆÆ7 8
}
ØØ 
bool
±± 
IDictionary
±±  
<
±±  !
string
±±! '
,
±±' (
T
±±) *
>
±±* +
.
±±+ ,
Remove
±±, 2
(
±±2 3
string
±±3 9
key
±±: =
)
±±= >
{
≤≤ 
throw
≥≥ 
new
≥≥ %
NotImplementedException
≥≥ 5
(
≥≥5 6
)
≥≥6 7
;
≥≥7 8
}
¥¥ 
bool
∂∂ 
IDictionary
∂∂  
<
∂∂  !
string
∂∂! '
,
∂∂' (
T
∂∂) *
>
∂∂* +
.
∂∂+ ,
TryGetValue
∂∂, 7
(
∂∂7 8
string
∂∂8 >
key
∂∂? B
,
∂∂B C
out
∂∂D G
T
∂∂H I
value
∂∂J O
)
∂∂O P
{
∑∑ 
var
∏∏ 
pair
∏∏ 
=
∏∏ 
MakeEnumerable
∏∏ -
(
∏∏- .
)
∏∏. /
.
∏∏/ 0
FirstOrDefault
∏∏0 >
(
∏∏> ?
kv
∏∏? A
=>
∏∏B D
kv
∏∏E G
.
∏∏G H
Key
∏∏H K
==
∏∏L N
key
∏∏O R
)
∏∏R S
;
∏∏S T
value
ΩΩ 
=
ΩΩ 
pair
ΩΩ  
.
ΩΩ  !
Value
ΩΩ! &
;
ΩΩ& '
return
ææ 
pair
ææ 
.
ææ  
Key
ææ  #
!=
ææ$ &
null
ææ' +
;
ææ+ ,
}
øø 
T
¬¬ 
IDictionary
¬¬ 
<
¬¬ 
string
¬¬ $
,
¬¬$ %
T
¬¬& '
>
¬¬' (
.
¬¬( )
this
¬¬) -
[
¬¬- .
string
¬¬. 4
key
¬¬5 8
]
¬¬8 9
{
√√ 
get
ƒƒ 
{
≈≈ 
if
∆∆ 
(
∆∆ 
(
∆∆ 
(
∆∆ 
IDictionary
∆∆ )
<
∆∆) *
string
∆∆* 0
,
∆∆0 1
T
∆∆2 3
>
∆∆3 4
)
∆∆4 5
this
∆∆5 9
)
∆∆9 :
.
∆∆: ;
TryGetValue
∆∆; F
(
∆∆F G
key
∆∆G J
,
∆∆J K
out
∆∆L O
T
∆∆P Q
result
∆∆R X
)
∆∆X Y
)
∆∆Y Z
{
«« 
return
»» "
result
»»# )
;
»») *
}
…… 
else
   
{
ÀÀ 
return
ÃÃ "
default
ÃÃ# *
(
ÃÃ* +
T
ÃÃ+ ,
)
ÃÃ, -
;
ÃÃ- .
}
ÕÕ 
}
ŒŒ 
set
œœ 
{
œœ 
throw
œœ 
new
œœ  #%
NotImplementedException
œœ$ ;
(
œœ; <
)
œœ< =
;
œœ= >
}
œœ? @
}
–– 
ICollection
““ 
<
““ 
string
““ "
>
““" #
IDictionary
““$ /
<
““/ 0
string
““0 6
,
““6 7
T
““8 9
>
““9 :
.
““: ;
Keys
““; ?
{
”” 
get
‘‘ 
{
’’ 
return
÷÷ 
_names
÷÷ %
;
÷÷% &
}
◊◊ 
}
ÿÿ 
ICollection
⁄⁄ 
<
⁄⁄ 
T
⁄⁄ 
>
⁄⁄ 
IDictionary
⁄⁄ *
<
⁄⁄* +
string
⁄⁄+ 1
,
⁄⁄1 2
T
⁄⁄3 4
>
⁄⁄4 5
.
⁄⁄5 6
Values
⁄⁄6 <
{
€€ 
get
‹‹ 
{
‹‹ 
return
‹‹  

_arguments
‹‹! +
;
‹‹+ ,
}
‹‹- .
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 	
public
·· 
static
·· 
INamedEnumerable
·· &
<
··& '
object
··' -
>
··- .
Empty
··/ 4
=
··5 6
From
··7 ;
(
··; <
Array
··< A
.
··A B
Empty
··B G
<
··G H
object
··H N
>
··N O
(
··O P
)
··P Q
,
··Q R
Array
··S X
.
··X Y
Empty
··Y ^
<
··^ _
string
··_ e
>
··e f
(
··f g
)
··g h
)
··h i
;
··i j
}
‚‚ 
}„„ ø,
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\BaseDisplayManager.cs
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
DisplayManagement

 '
{ 
public 

abstract 
class 
BaseDisplayManager ,
{ 
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
private 
readonly 
IEnumerable $
<$ %#
IShapePlacementProvider% <
>< =
_placementProviders> Q
;Q R
public 
BaseDisplayManager !
(! "
IShapeFactory 
shapeFactory &
,& '
IEnumerable 
< #
IShapePlacementProvider /
>/ 0
placementProviders1 C
) 
{ 	
_shapeFactory 
= 
shapeFactory (
;( )
_placementProviders 
=  !
placementProviders" 4
;4 5
} 	
	protected 
async 
Task 
BindPlacementAsync /
(/ 0
IBuildShapeContext0 B
contextC J
)J K
{ 	
var 
	resolvers 
= 
new 
List  $
<$ %"
IPlacementInfoResolver% ;
>; <
(< =
)= >
;> ?
foreach 
( 
var 
provider !
in" $
_placementProviders% 8
)8 9
{ 
var   
resolver   
=   
await   $
provider  % -
.  - .+
BuildPlacementInfoResolverAsync  . M
(  M N
context  N U
)  U V
;  V W
if"" 
("" 
resolver"" 
!="" 
null""  $
)""$ %
{## 
	resolvers$$ 
.$$ 
Add$$ !
($$! "
resolver$$" *
)$$* +
;$$+ ,
}%% 
}&& 
context(( 
.(( 
FindPlacement(( !
=((" #
((($ %
	shapeType((% .
,((. /
differentiator((0 >
,((> ?
displayType((@ K
,((K L
displayContext((M [
)(([ \
=>((] _
FindPlacementImpl((` q
(((q r
	resolvers((r {
,(({ |
	shapeType	((} Ü
,
((Ü á
differentiator
((à ñ
,
((ñ ó
displayType
((ò £
,
((£ §
context
((• ¨
)
((¨ ≠
;
((≠ Æ
})) 	
private++ 
static++ 
PlacementInfo++ $
FindPlacementImpl++% 6
(++6 7
IList++7 <
<++< ="
IPlacementInfoResolver++= S
>++S T
placementResolvers++U g
,++g h
string++i o
	shapeType++p y
,++y z
string	++{ Å
differentiator
++Ç ê
,
++ê ë
string
++í ò
displayType
++ô §
,
++§ • 
IBuildShapeContext
++¶ ∏
context
++π ¿
)
++¿ ¡
{,, 	
var-- 
delimiterIndex-- 
=--  
	shapeType--! *
.--* +
IndexOf--+ 2
(--2 3
$str--3 7
,--7 8
StringComparison--9 I
.--I J
Ordinal--J Q
)--Q R
;--R S
if// 
(// 
delimiterIndex// 
>//  
$num//! "
)//" #
{00 
	shapeType11 
=11 
	shapeType11 %
.11% &
	Substring11& /
(11/ 0
$num110 1
,111 2
delimiterIndex113 A
)11A B
;11B C
}22 
var44 
placementContext44  
=44! "
new44# &!
ShapePlacementContext44' <
(44< =
	shapeType55 
,55 
displayType66 
,66 
differentiator77 
,77 
context88 
.88 
Shape88 
)99 
;99 
return;; 
placementResolvers;; %
.;;% &
	Aggregate;;& /
<;;/ 0"
IPlacementInfoResolver;;0 F
,;;F G
PlacementInfo;;H U
>;;U V
(;;V W
null;;W [
,;;[ \
(;;] ^
prev;;^ b
,;;b c
resolver;;d l
);;l m
=>;;n p#
PlacementInfoExtensions<< '
.<<' (
Combine<<( /
(<</ 0
prev<<0 4
,<<4 5
resolver<<6 >
.<<> ?
ResolvePlacement<<? O
(<<O P
placementContext<<P `
)<<` a
)<<a b
)== 
;== 
}>> 	
	protected@@ 
	ValueTask@@ 
<@@ 
IShape@@ "
>@@" ##
CreateContentShapeAsync@@$ ;
(@@; <
string@@< B
actualShapeType@@C R
)@@R S
{AA 	
returnBB 
_shapeFactoryBB  
.BB  !
CreateAsyncBB! ,
(BB, -
actualShapeTypeBB- <
,BB< =
(BB> ?
)BB? @
=>BBA C
newCC 
	ValueTaskCC 
<CC 
IShapeCC $
>CC$ %
(CC% &
newCC& )
ZoneHoldingCC* 5
(CC5 6
(CC6 7
)CC7 8
=>CC9 ;
_shapeFactoryCC< I
.CCI J
CreateAsyncCCJ U
(CCU V
$strCCV c
)CCc d
)CCd e
)CCe f
)CCf g
;CCg h
}DD 	
}EE 
}FF ≥Ä
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\DefaultShapeTableManager.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class $
DefaultShapeTableManager )
:* +
IShapeTableManager, >
{ 
private 
static  
ConcurrentDictionary +
<+ ,
string, 2
,2 3"
FeatureShapeDescriptor4 J
>J K
_shapeDescriptorsL ]
=^ _
new` c 
ConcurrentDictionaryd x
<x y
stringy 
,	 Ä$
FeatureShapeDescriptor
Å ó
>
ó ò
(
ò ô
)
ô ö
;
ö õ
private 
static 
readonly 
object  &
	_syncLock' 0
=1 2
new3 6
object7 =
(= >
)> ?
;? @
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IEnumerable $
<$ %
IShapeTableProvider% 8
>8 9
_bindingStrategies: L
;L M
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
private 
readonly 
ILogger  
_logger! (
;( )
public   $
DefaultShapeTableManager   '
(  ' (
IHostEnvironment!! 
hostingEnvironment!! /
,!!/ 0
IEnumerable"" 
<"" 
IShapeTableProvider"" +
>""+ ,
bindingStrategies""- >
,""> ?!
IShellFeaturesManager## ! 
shellFeaturesManager##" 6
,##6 7
IExtensionManager$$ 
extensionManager$$ .
,$$. / 
ITypeFeatureProvider%%  
typeFeatureProvider%%! 4
,%%4 5
IMemoryCache&& 
memoryCache&& $
,&&$ %
ILogger'' 
<'' $
DefaultShapeTableManager'' ,
>'', -
logger''. 4
)''4 5
{(( 	
_hostingEnvironment)) 
=))  !
hostingEnvironment))" 4
;))4 5
_bindingStrategies** 
=**  
bindingStrategies**! 2
;**2 3!
_shellFeaturesManager++ !
=++" # 
shellFeaturesManager++$ 8
;++8 9
_extensionManager,, 
=,, 
extensionManager,,  0
;,,0 1 
_typeFeatureProvider--  
=--! "
typeFeatureProvider--# 6
;--6 7
_memoryCache.. 
=.. 
memoryCache.. &
;..& '
_logger// 
=// 
logger// 
;// 
}00 	
public22 

ShapeTable22 
GetShapeTable22 '
(22' (
string22( .
themeId22/ 6
)226 7
{33 	
var44 
cacheKey44 
=44 
$"44 
ShapeTable:44 (
{44( )
themeId44) 0
}440 1
"441 2
;442 3
if66 
(66 
!66 
_memoryCache66 
.66 
TryGetValue66 )
(66) *
cacheKey66* 2
,662 3
out664 7

ShapeTable668 B

shapeTable66C M
)66M N
)66N O
{77 
if88 
(88 
_logger88 
.88 
	IsEnabled88 %
(88% &
LogLevel88& .
.88. /
Information88/ :
)88: ;
)88; <
{99 
_logger:: 
.:: 
LogInformation:: *
(::* +
$str::+ G
)::G H
;::H I
};; 
HashSet== 
<== 
string== 
>== 
excludedFeatures==  0
;==0 1
lock@@ 
(@@ 
	_syncLock@@ 
)@@  
{AA 
excludedFeaturesBB $
=BB% &
newBB' *
HashSetBB+ 2
<BB2 3
stringBB3 9
>BB9 :
(BB: ;
_shapeDescriptorsBB; L
.BBL M
SelectBBM S
(BBS T
kvBBT V
=>BBW Y
kvBBZ \
.BB\ ]
ValueBB] b
.BBb c
FeatureBBc j
.BBj k
IdBBk m
)BBm n
)BBn o
;BBo p
}CC 
varEE 
shapeDescriptorsEE $
=EE% &
newEE' *

DictionaryEE+ 5
<EE5 6
stringEE6 <
,EE< ="
FeatureShapeDescriptorEE> T
>EET U
(EEU V
)EEV W
;EEW X
foreachGG 
(GG 
varGG 
bindingStrategyGG ,
inGG- /
_bindingStrategiesGG0 B
)GGB C
{HH 
varII 
strategyFeatureII '
=II( ) 
_typeFeatureProviderII* >
.II> ?#
GetFeatureForDependencyII? V
(IIV W
bindingStrategyIIW f
.IIf g
GetTypeIIg n
(IIn o
)IIo p
)IIp q
;IIq r
varKK 
builderKK 
=KK  !
newKK" %
ShapeTableBuilderKK& 7
(KK7 8
strategyFeatureKK8 G
,KKG H
excludedFeaturesKKI Y
)KKY Z
;KKZ [
bindingStrategyLL #
.LL# $
DiscoverLL$ ,
(LL, -
builderLL- 4
)LL4 5
;LL5 6
varMM 
builtAlterationsMM (
=MM) *
builderMM+ 2
.MM2 3
BuildAlterationsMM3 C
(MMC D
)MMD E
;MME F
BuildDescriptorsOO $
(OO$ %
bindingStrategyOO% 4
,OO4 5
builtAlterationsOO6 F
,OOF G
shapeDescriptorsOOH X
)OOX Y
;OOY Z
}PP 
lockSS 
(SS 
	_syncLockSS 
)SS  
{TT 
foreachUU 
(UU 
varUU  
kvUU! #
inUU$ &
shapeDescriptorsUU' 7
)UU7 8
{VV 
_shapeDescriptorsWW )
[WW) *
kvWW* ,
.WW, -
KeyWW- 0
]WW0 1
=WW2 3
kvWW4 6
.WW6 7
ValueWW7 <
;WW< =
}XX 
}YY 
var[[ '
enabledAndOrderedFeatureIds[[ /
=[[0 1!
_shellFeaturesManager[[2 G
.\\ #
GetEnabledFeaturesAsync\\ ,
(\\, -
)\\- .
.]] 

GetAwaiter]] 
(]]  
)]]  !
.^^ 
	GetResult^^ 
(^^ 
)^^  
.__ 
Select__ 
(__ 
f__ 
=>__  
f__! "
.__" #
Id__# %
)__% &
.`` 
ToList`` 
(`` 
)`` 
;`` 
ifcc 
(cc '
enabledAndOrderedFeatureIdscc /
.cc/ 0
Removecc0 6
(cc6 7
_hostingEnvironmentcc7 J
.ccJ K
ApplicationNameccK Z
)ccZ [
)cc[ \
{dd '
enabledAndOrderedFeatureIdsee /
.ee/ 0
Addee0 3
(ee3 4
_hostingEnvironmentee4 G
.eeG H
ApplicationNameeeH W
)eeW X
;eeX Y
}ff 
varhh 
descriptorshh 
=hh  !
_shapeDescriptorshh" 3
.ii 
Whereii 
(ii 
sdii 
=>ii  '
enabledAndOrderedFeatureIdsii! <
.ii< =
Containsii= E
(iiE F
sdiiF H
.iiH I
ValueiiI N
.iiN O
FeatureiiO V
.iiV W
IdiiW Y
)iiY Z
)iiZ [
.jj 
Wherejj 
(jj 
sdjj 
=>jj  $
IsModuleOrRequestedThemejj! 9
(jj9 :
sdjj: <
.jj< =
Valuejj= B
.jjB C
FeaturejjC J
,jjJ K
themeIdjjL S
)jjS T
)jjT U
.kk 
OrderBykk 
(kk 
sdkk 
=>kk  "'
enabledAndOrderedFeatureIdskk# >
.kk> ?
IndexOfkk? F
(kkF G
sdkkG I
.kkI J
ValuekkJ O
.kkO P
FeaturekkP W
.kkW X
IdkkX Z
)kkZ [
)kk[ \
.ll 
GroupByll 
(ll 
sdll 
=>ll  "
sdll# %
.ll% &
Valuell& +
.ll+ ,
	ShapeTypell, 5
,ll5 6
StringComparerll7 E
.llE F
OrdinalIgnoreCasellF W
)llW X
.mm 
Selectmm 
(mm 
groupmm !
=>mm" $
newmm% ( 
ShapeDescriptorIndexmm) =
(nn 
	shapeTypeoo !
:oo! "
groupoo# (
.oo( )
Keyoo) ,
,oo, -
alterationKeyspp &
:pp& '
grouppp( -
.pp- .
Selectpp. 4
(pp4 5
kvpp5 7
=>pp8 :
kvpp; =
.pp= >
Keypp> A
)ppA B
,ppB C
descriptorsqq #
:qq# $
_shapeDescriptorsqq% 6
)rr 
)rr 
.ss 
ToListss 
(ss 
)ss 
;ss 

shapeTableuu 
=uu 
newuu  

ShapeTableuu! +
(vv 
descriptorsww 
:ww  
descriptorsww! ,
.ww, -
ToDictionaryww- 9
(ww9 :
sdww: <
=>ww= ?
sdww@ B
.wwB C
	ShapeTypewwC L
,wwL M
xwwN O
=>wwP R
(wwS T
ShapeDescriptorwwT c
)wwc d
xwwd e
,wwe f
StringComparerwwg u
.wwu v
OrdinalIgnoreCase	wwv á
)
wwá à
,
wwà â
bindingsxx 
:xx 
descriptorsxx )
.xx) *

SelectManyxx* 4
(xx4 5
sdxx5 7
=>xx8 :
sdxx; =
.xx= >
Bindingsxx> F
)xxF G
.xxG H
ToDictionaryxxH T
(xxT U
kvxxU W
=>xxX Z
kvxx[ ]
.xx] ^
Keyxx^ a
,xxa b
kvxxc e
=>xxf h
kvxxi k
.xxk l
Valuexxl q
,xxq r
StringComparer	xxs Å
.
xxÅ Ç
OrdinalIgnoreCase
xxÇ ì
)
xxì î
)yy 
;yy 
if{{ 
({{ 
_logger{{ 
.{{ 
	IsEnabled{{ %
({{% &
LogLevel{{& .
.{{. /
Information{{/ :
){{: ;
){{; <
{|| 
_logger}} 
.}} 
LogInformation}} *
(}}* +
$str}}+ F
)}}F G
;}}G H
}~~ 
_memoryCache
ÄÄ 
.
ÄÄ 
Set
ÄÄ  
(
ÄÄ  !
cacheKey
ÄÄ! )
,
ÄÄ) *

shapeTable
ÄÄ+ 5
,
ÄÄ5 6
new
ÄÄ7 :%
MemoryCacheEntryOptions
ÄÄ; R
{
ÄÄS T
Priority
ÄÄU ]
=
ÄÄ^ _
CacheItemPriority
ÄÄ` q
.
ÄÄq r
NeverRemove
ÄÄr }
}
ÄÄ~ 
)ÄÄ Ä
;ÄÄÄ Å
}
ÅÅ 
return
ÉÉ 

shapeTable
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
BuildDescriptors
ÜÜ %
(
ÜÜ% &!
IShapeTableProvider
ÜÜ& 9
bindingStrategy
ÜÜ: I
,
ÜÜI J
IEnumerable
ÜÜK V
<
ÜÜV W
ShapeAlteration
ÜÜW f
>
ÜÜf g
builtAlterations
ÜÜh x
,
ÜÜx y

DictionaryÜÜz Ñ
<ÜÜÑ Ö
stringÜÜÖ ã
,ÜÜã å&
FeatureShapeDescriptorÜÜç £
>ÜÜ£ § 
shapeDescriptorsÜÜ• µ
)ÜÜµ ∂
{
áá 	
var
àà 
alterationSets
àà 
=
àà  
builtAlterations
àà! 1
.
àà1 2
GroupBy
àà2 9
(
àà9 :
a
àà: ;
=>
àà< >
a
àà? @
.
àà@ A
Feature
ààA H
.
ààH I
Id
ààI K
+
ààL M
a
ààN O
.
ààO P
	ShapeType
ààP Y
)
ààY Z
;
ààZ [
foreach
ää 
(
ää 
var
ää 
alterations
ää $
in
ää% '
alterationSets
ää( 6
)
ää6 7
{
ãã 
var
åå 
firstAlteration
åå #
=
åå$ %
alterations
åå& 1
.
åå1 2
First
åå2 7
(
åå7 8
)
åå8 9
;
åå9 :
var
éé 
key
éé 
=
éé 
bindingStrategy
éé )
.
éé) *
GetType
éé* 1
(
éé1 2
)
éé2 3
.
éé3 4
Name
éé4 8
+
èè 
firstAlteration
èè %
.
èè% &
Feature
èè& -
.
èè- .
Id
èè. 0
+
êê 
firstAlteration
êê %
.
êê% &
	ShapeType
êê& /
.
êê/ 0
ToLower
êê0 7
(
êê7 8
)
êê8 9
;
êê9 :
if
íí 
(
íí 
!
íí 
_shapeDescriptors
íí &
.
íí& '
ContainsKey
íí' 2
(
íí2 3
key
íí3 6
)
íí6 7
)
íí7 8
{
ìì 
var
îî 

descriptor
îî "
=
îî# $
new
îî% ($
FeatureShapeDescriptor
îî) ?
(
ïï 
firstAlteration
ññ '
.
ññ' (
Feature
ññ( /
,
ññ/ 0
firstAlteration
óó '
.
óó' (
	ShapeType
óó( 1
)
òò 
;
òò 
foreach
öö 
(
öö 
var
öö  

alteration
öö! +
in
öö, .
alterations
öö/ :
)
öö: ;
{
õõ 

alteration
úú "
.
úú" #
Alter
úú# (
(
úú( )

descriptor
úú) 3
)
úú3 4
;
úú4 5
}
ùù 
shapeDescriptors
üü $
[
üü$ %
key
üü% (
]
üü( )
=
üü* +

descriptor
üü, 6
;
üü6 7
}
†† 
}
°° 
}
¢¢ 	
private
§§ 
bool
§§ &
IsModuleOrRequestedTheme
§§ -
(
§§- .
IFeatureInfo
§§. :
feature
§§; B
,
§§B C
string
§§D J
themeId
§§K R
)
§§R S
{
•• 	
if
¶¶ 
(
¶¶ 
!
¶¶ 
feature
¶¶ 
.
¶¶ 
	Extension
¶¶ "
.
¶¶" #
IsTheme
¶¶# *
(
¶¶* +
)
¶¶+ ,
)
¶¶, -
{
ßß 
return
®® 
true
®® 
;
®® 
}
©© 
if
´´ 
(
´´ 
string
´´ 
.
´´ 
IsNullOrEmpty
´´ $
(
´´$ %
themeId
´´% ,
)
´´, -
)
´´- .
{
¨¨ 
return
≠≠ 
false
≠≠ 
;
≠≠ 
}
ÆÆ 
return
∞∞ 
feature
∞∞ 
.
∞∞ 
Id
∞∞ 
==
∞∞  
themeId
∞∞! (
||
∞∞) +
IsBaseTheme
∞∞, 7
(
∞∞7 8
feature
∞∞8 ?
.
∞∞? @
Id
∞∞@ B
,
∞∞B C
themeId
∞∞D K
)
∞∞K L
;
∞∞L M
}
±± 	
private
≥≥ 
bool
≥≥ 
IsBaseTheme
≥≥  
(
≥≥  !
string
≥≥! '
themeFeatureId
≥≥( 6
,
≥≥6 7
string
≥≥8 >
themeId
≥≥? F
)
≥≥F G
{
¥¥ 	
return
µµ 
_extensionManager
µµ $
.
∂∂ $
GetFeatureDependencies
∂∂ '
(
∂∂' (
themeId
∂∂( /
)
∂∂/ 0
.
∑∑ 
Any
∑∑ 
(
∑∑ 
f
∑∑ 
=>
∑∑ 
f
∑∑ 
.
∑∑ 
Id
∑∑ 
==
∑∑ !
themeFeatureId
∑∑" 0
)
∑∑0 1
;
∑∑1 2
}
∏∏ 	
}
ππ 
}∫∫ ∞
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\Interfaces.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

	interface 
IShapeTableManager '
{ 

ShapeTable		 
GetShapeTable		  
(		  !
string		! '
themeId		( /
)		/ 0
;		0 1
}

 
public 

	interface 
IShapeTableProvider (
{ 
void 
Discover 
( 
ShapeTableBuilder '
builder( /
)/ 0
;0 1
} 
public 

	interface  
IShapeTableHarvester )
:* +
IShapeTableProvider, ?
{ 
} 
public 

	interface #
IShapeAttributeProvider ,
{ 
} 
public 

static 
class #
ShapeProviderExtensions /
{ 
public 
static 
IServiceCollection (
AddShapeAttributes) ;
<; <
T< =
>= >
(> ?
this? C
IServiceCollectionD V
servicesW _
)_ `
wherea f
Tg h
:i j
classk p
,p q$
IShapeAttributeProvider	r â
{ 	
services   
.   
	AddScoped   
<   
T    
>    !
(  ! "
)  " #
;  # $
services!! 
.!! 
	AddScoped!! 
<!! #
IShapeAttributeProvider!! 6
>!!6 7
(!!7 8
sp!!8 :
=>!!; =
sp!!> @
.!!@ A

GetService!!A K
<!!K L
T!!L M
>!!M N
(!!N O
)!!O P
)!!P Q
;!!Q R
return## 
services## 
;## 
}$$ 	
}%% 
public** 

	interface** #
IShapePlacementProvider** ,
{++ 
Task11 
<11 "
IPlacementInfoResolver11 #
>11# $+
BuildPlacementInfoResolverAsync11% D
(11D E
IBuildShapeContext11E W
context11X _
)11_ `
;11` a
}22 
public77 

	interface77 "
IPlacementInfoResolver77 +
{88 
PlacementInfo>> 
ResolvePlacement>> &
(>>& '!
ShapePlacementContext>>' <
placementContext>>= M
)>>M N
;>>N O
}?? 
}@@ •S
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\PlacementInfo.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class 
PlacementInfo 
{ 
private 
static 
readonly 
char  $
[$ %
]% &

Delimiters' 1
=2 3
{4 5
$char6 9
,9 :
$char; >
,> ?
$char@ C
,C D
$charE H
,H I
$charJ M
}N O
;O P
public		 
string		 
Location		 
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
 
Source

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
	ShapeType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
DefaultPosition %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public  
AlternatesCollection #

Alternates$ .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public  
AlternatesCollection #
Wrappers$ ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool 
IsLayoutZone  
(  !
)! "
{ 	
return 
Location 
. 

StartsWith &
(& '
$char' *
)* +
;+ ,
} 	
public 
string 
[ 
] 
GetZones  
(  !
)! "
{ 	
string 
zones 
; 
var 
location 
= 
Location #
;# $
if   
(   
IsLayoutZone   
(   
)   
)   
{!! 
location"" 
="" 
location"" #
.""# $
	Substring""$ -
(""- .
$num"". /
)""/ 0
;""0 1
}## 
var%% 
firstDelimiter%% 
=%%  
location%%! )
.%%) *

IndexOfAny%%* 4
(%%4 5

Delimiters%%5 ?
)%%? @
;%%@ A
if&& 
(&& 
firstDelimiter&& 
==&& !
-&&" #
$num&&# $
)&&$ %
{'' 
zones(( 
=(( 
location((  
;((  !
})) 
else** 
{++ 
zones,, 
=,, 
location,,  
.,,  !
	Substring,,! *
(,,* +
$num,,+ ,
,,,, -
firstDelimiter,,. <
),,< =
;,,= >
}-- 
return// 
zones// 
.// 
Split// 
(// 
$char// "
)//" #
;//# $
}00 	
public22 
string22 
GetPosition22 !
(22! "
)22" #
{33 	
var44 
contentDelimiter44  
=44! "
Location44# +
.44+ ,
IndexOf44, 3
(443 4
$char444 7
)447 8
;448 9
if55 
(55 
contentDelimiter55  
==55! #
-55$ %
$num55% &
)55& '
{66 
return77 
DefaultPosition77 &
??77' )
$str77* ,
;77, -
}88 
var:: 
secondDelimiter:: 
=::  !
Location::" *
.::* +

IndexOfAny::+ 5
(::5 6

Delimiters::6 @
,::@ A
contentDelimiter::B R
+::S T
$num::U V
)::V W
;::W X
if;; 
(;; 
secondDelimiter;; 
==;;  "
-;;# $
$num;;$ %
);;% &
{<< 
return== 
Location== 
.==  
	Substring==  )
(==) *
contentDelimiter==* :
+==; <
$num=== >
)==> ?
;==? @
}>> 
return@@ 
Location@@ 
.@@ 
	Substring@@ %
(@@% &
contentDelimiter@@& 6
+@@7 8
$num@@9 :
,@@: ;
secondDelimiter@@< K
-@@L M
contentDelimiter@@N ^
-@@_ `
$num@@a b
)@@b c
;@@c d
}AA 	
publicCC 
stringCC 
GetTabCC 
(CC 
)CC 
{DD 	
varEE 
tabDelimiterEE 
=EE 
LocationEE '
.EE' (
IndexOfEE( /
(EE/ 0
$charEE0 3
)EE3 4
;EE4 5
ifFF 
(FF 
tabDelimiterFF 
==FF 
-FF  !
$numFF! "
)FF" #
{GG 
returnHH 
$strHH 
;HH 
}II 
varKK 
nextDelimiterKK 
=KK 
LocationKK  (
.KK( )

IndexOfAnyKK) 3
(KK3 4

DelimitersKK4 >
,KK> ?
tabDelimiterKK@ L
+KKM N
$numKKO P
)KKP Q
;KKQ R
ifLL 
(LL 
nextDelimiterLL 
==LL  
-LL! "
$numLL" #
)LL# $
{MM 
returnNN 
LocationNN 
.NN  
	SubstringNN  )
(NN) *
tabDelimiterNN* 6
+NN7 8
$numNN9 :
)NN: ;
;NN; <
}OO 
returnQQ 
LocationQQ 
.QQ 
	SubstringQQ %
(QQ% &
tabDelimiterQQ& 2
+QQ3 4
$numQQ5 6
,QQ6 7
nextDelimiterQQ8 E
-QQF G
tabDelimiterQQH T
-QQU V
$numQQW X
)QQX Y
;QQY Z
}RR 	
publicXX 
stringXX 
GetGroupXX 
(XX 
)XX  
{YY 	
varZZ 
groupDelimiterZZ 
=ZZ  
LocationZZ! )
.ZZ) *
IndexOfZZ* 1
(ZZ1 2
$charZZ2 5
)ZZ5 6
;ZZ6 7
if[[ 
([[ 
groupDelimiter[[ 
==[[ !
-[[" #
$num[[# $
)[[$ %
{\\ 
return]] 
null]] 
;]] 
}^^ 
var`` 
nextDelimiter`` 
=`` 
Location``  (
.``( )

IndexOfAny``) 3
(``3 4

Delimiters``4 >
,``> ?
groupDelimiter``@ N
+``O P
$num``Q R
)``R S
;``S T
ifaa 
(aa 
nextDelimiteraa 
==aa  
-aa! "
$numaa" #
)aa# $
{bb 
returncc 
Locationcc 
.cc  
	Substringcc  )
(cc) *
groupDelimitercc* 8
+cc9 :
$numcc; <
)cc< =
;cc= >
}dd 
returnff 
Locationff 
.ff 
	Substringff %
(ff% &
groupDelimiterff& 4
+ff5 6
$numff7 8
,ff8 9
nextDelimiterff: G
-ffH I
groupDelimiterffJ X
-ffY Z
$numff[ \
)ff\ ]
;ff] ^
}gg 	
publicmm 
stringmm 
GetCardmm 
(mm 
)mm 
{nn 	
varoo 
cardDelimiteroo 
=oo 
Locationoo  (
.oo( )
IndexOfoo) 0
(oo0 1
$charoo1 4
)oo4 5
;oo5 6
ifpp 
(pp 
cardDelimiterpp 
==pp  
-pp! "
$numpp" #
)pp# $
{qq 
returnrr 
nullrr 
;rr 
}ss 
varuu 
nextDelimiteruu 
=uu 
Locationuu  (
.uu( )

IndexOfAnyuu) 3
(uu3 4

Delimitersuu4 >
,uu> ?
cardDelimiteruu@ M
+uuN O
$numuuP Q
)uuQ R
;uuR S
ifvv 
(vv 
nextDelimitervv 
==vv  
-vv! "
$numvv" #
)vv# $
{ww 
returnxx 
Locationxx 
.xx  
	Substringxx  )
(xx) *
cardDelimiterxx* 7
+xx8 9
$numxx: ;
)xx; <
;xx< =
}yy 
return{{ 
Location{{ 
.{{ 
	Substring{{ %
({{% &
cardDelimiter{{& 3
+{{4 5
$num{{6 7
,{{7 8
nextDelimiter{{9 F
-{{G H
cardDelimiter{{I V
-{{W X
$num{{Y Z
){{Z [
;{{[ \
}|| 	
public
ÇÇ 
string
ÇÇ 
	GetColumn
ÇÇ 
(
ÇÇ  
)
ÇÇ  !
{
ÉÉ 	
var
ÑÑ 
colDelimeter
ÑÑ 
=
ÑÑ 
Location
ÑÑ '
.
ÑÑ' (
IndexOf
ÑÑ( /
(
ÑÑ/ 0
$char
ÑÑ0 3
)
ÑÑ3 4
;
ÑÑ4 5
if
ÖÖ 
(
ÖÖ 
colDelimeter
ÖÖ 
==
ÖÖ 
-
ÖÖ  !
$num
ÖÖ! "
)
ÖÖ" #
{
ÜÜ 
return
áá 
null
áá 
;
áá 
}
àà 
var
ää 
nextDelimiter
ää 
=
ää 
Location
ää  (
.
ää( )

IndexOfAny
ää) 3
(
ää3 4

Delimiters
ää4 >
,
ää> ?
colDelimeter
ää@ L
+
ääM N
$num
ääO P
)
ääP Q
;
ääQ R
if
ãã 
(
ãã 
nextDelimiter
ãã 
==
ãã  
-
ãã! "
$num
ãã" #
)
ãã# $
{
åå 
return
çç 
Location
çç 
.
çç  
	Substring
çç  )
(
çç) *
colDelimeter
çç* 6
+
çç7 8
$num
çç9 :
)
çç: ;
;
çç; <
}
éé 
return
êê 
Location
êê 
.
êê 
	Substring
êê %
(
êê% &
colDelimeter
êê& 2
+
êê3 4
$num
êê5 6
,
êê6 7
nextDelimiter
êê8 E
-
êêF G
colDelimeter
êêH T
-
êêU V
$num
êêW X
)
êêX Y
;
êêY Z
}
ëë 	
}
íí 
}ìì π
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\PlacementInfoExtensions.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

static 
class #
PlacementInfoExtensions /
{ 
public 
static 
PlacementInfo #
Combine$ +
(+ ,
this, 0
PlacementInfo1 >
first? D
,D E
PlacementInfoF S
secondT Z
)Z [
{ 	
if 
( 
first 
== 
null 
) 
{ 
return 
second 
; 
} 
else 
if 
( 
second 
!= 
null #
)# $
{ 
first 
. 

Alternates  
=! "
first# (
.( )

Alternates) 3
.3 4
Combine4 ;
(; <
second< B
.B C

AlternatesC M
)M N
;N O
first 
. 
Wrappers 
=  
first! &
.& '
Wrappers' /
./ 0
Combine0 7
(7 8
second8 >
.> ?
Wrappers? G
)G H
;H I
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
second* 0
.0 1
	ShapeType1 :
): ;
); <
{ 
first 
. 
	ShapeType #
=$ %
second& ,
., -
	ShapeType- 6
;6 7
} 
if 
( 
! 
string 
. 
IsNullOrEmpty )
() *
second* 0
.0 1
Location1 9
)9 :
): ;
{ 
first   
.   
Location   "
=  # $
second  % +
.  + ,
Location  , 4
;  4 5
}!! 
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrEmpty"" )
("") *
second""* 0
.""0 1
DefaultPosition""1 @
)""@ A
)""A B
{## 
first$$ 
.$$ 
DefaultPosition$$ )
=$$* +
second$$, 2
.$$2 3
DefaultPosition$$3 B
;$$B C
}%% 
if&& 
(&& 
!&& 
string&& 
.&& 
IsNullOrEmpty&& )
(&&) *
second&&* 0
.&&0 1
Source&&1 7
)&&7 8
)&&8 9
{'' 
first(( 
.(( 
Source((  
+=((! #
$str(($ '
+((( )
second((* 0
.((0 1
Source((1 7
;((7 8
})) 
}** 
return++ 
first++ 
;++ 
},, 	
public77 
static77  
AlternatesCollection77 *
Combine77+ 2
(772 3
this773 7 
AlternatesCollection778 L
first77M R
,77R S 
AlternatesCollection77T h
second77i o
)77o p
{88 	
if99 
(99 
first99 
==99 
null99 
)99 
{:: 
return;; 
second;; 
;;; 
}<< 
else== 
if== 
(== 
second== 
!=== 
null== #
)==# $
{>> 
first?? 
.?? 
AddRange?? 
(?? 
second?? %
)??% &
;??& '
}@@ 
returnAA 
firstAA 
;AA 
}BB 	
}CC 
}DD ˆ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeAlteration.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class 
ShapeAlteration  
{ 
private		 
readonly		 
IList		 
<		 
Action		 %
<		% &
ShapeDescriptor		& 5
>		5 6
>		6 7
_configurations		8 G
;		G H
public 
ShapeAlteration 
( 
string %
	shapeType& /
,/ 0
IFeatureInfo1 =
feature> E
,E F
IListG L
<L M
ActionM S
<S T
ShapeDescriptorT c
>c d
>d e
configurationsf t
)t u
{ 	
_configurations 
= 
configurations ,
;, -
	ShapeType 
= 
	shapeType !
;! "
Feature 
= 
feature 
; 
} 	
public 
string 
	ShapeType 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
IFeatureInfo 
Feature #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
void 
Alter 
( 
ShapeDescriptor )

descriptor* 4
)4 5
{ 	
foreach 
( 
var 
configuration &
in' )
_configurations* 9
)9 :
{ 
configuration 
( 

descriptor (
)( )
;) *
} 
} 	
} 
} ïá
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeAlterationBuilder.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Descriptors		( 3
{

 
public 

class "
ShapeAlterationBuilder '
{ 
private 
IFeatureInfo 
_feature %
;% &
private 
readonly 
string 

_shapeType  *
;* +
private 
readonly 
string 
_bindingName  ,
;, -
private 
readonly 
IList 
< 
Action %
<% &
ShapeDescriptor& 5
>5 6
>6 7
_configurations8 G
=H I
newJ M
ListN R
<R S
ActionS Y
<Y Z
ShapeDescriptorZ i
>i j
>j k
(k l
)l m
;m n
public "
ShapeAlterationBuilder %
(% &
IFeatureInfo& 2
feature3 :
,: ;
string< B
	shapeTypeC L
)L M
{ 	
_feature 
= 
feature 
; 
_bindingName 
= 
	shapeType $
;$ %
var 
delimiterIndex 
=  
	shapeType! *
.* +
IndexOf+ 2
(2 3
$str3 7
,7 8
StringComparison9 I
.I J
OrdinalJ Q
)Q R
;R S
if 
( 
delimiterIndex 
<  
$num! "
)" #
{ 

_shapeType 
= 
	shapeType &
;& '
} 
else 
{ 

_shapeType 
= 
	shapeType &
.& '
	Substring' 0
(0 1
$num1 2
,2 3
delimiterIndex4 B
)B C
;C D
} 
}   	
public"" "
ShapeAlterationBuilder"" %
From""& *
(""* +
IFeatureInfo""+ 7
feature""8 ?
)""? @
{## 	
_feature$$ 
=$$ 
feature$$ 
;$$ 
return%% 
this%% 
;%% 
}&& 	
public(( "
ShapeAlterationBuilder(( %
	Configure((& /
(((/ 0
Action((0 6
<((6 7
ShapeDescriptor((7 F
>((F G
action((H N
)((N O
{)) 	
_configurations** 
.** 
Add** 
(**  
action**  &
)**& '
;**' (
return++ 
this++ 
;++ 
},, 	
public.. "
ShapeAlterationBuilder.. %
BoundAs..& -
(..- .
string... 4
bindingSource..5 B
,..B C
Func..D H
<..H I
DisplayContext..I W
,..W X
Task..Y ]
<..] ^
IHtmlContent..^ j
>..j k
>..k l
bindingDelegate..m |
)..| }
{// 	
return11 
	Configure11 
(11 

descriptor11 '
=>11( *
{22 
var33 
binding33 
=33 
new33 !
ShapeBinding33" .
{44 
BindingName55 
=55  !
_bindingName55" .
,55. /
BindingSource66 !
=66" #
bindingSource66$ 1
,661 2
}77 
;77 
binding99 
.99 
BindingAsync99 $
=99% &
bindingDelegate99' 6
;996 7

descriptor<< 
.<< 
Bindings<< #
[<<# $
_bindingName<<$ 0
]<<0 1
=<<2 3
binding<<4 ;
;<<; <

descriptor== 
.== 
BindingSources== )
.==) *
Add==* -
(==- .
bindingSource==. ;
)==; <
;==< =
}>> 
)>> 
;>> 
}?? 	
publicDD "
ShapeAlterationBuilderDD %

OnCreatingDD& 0
(DD0 1
ActionDD1 7
<DD7 8 
ShapeCreatingContextDD8 L
>DDL M
actionDDN T
)DDT U
{EE 	
returnFF 

OnCreatingFF 
(FF 
ctxFF !
=>FF" $
{GG 
actionHH 
(HH 
ctxHH 
)HH 
;HH 
returnII 
TaskII 
.II 
CompletedTaskII )
;II) *
}JJ 
)JJ 
;JJ 
}KK 	
publicPP "
ShapeAlterationBuilderPP %

OnCreatingPP& 0
(PP0 1
FuncPP1 5
<PP5 6 
ShapeCreatingContextPP6 J
,PPJ K
TaskPPL P
>PPP Q
actionAsyncPPR ]
)PP] ^
{QQ 	
returnRR 
	ConfigureRR 
(RR 

descriptorRR '
=>RR( *
{SS 
varTT 
existingTT 
=TT 

descriptorTT )
.TT) *
CreatingAsyncTT* 7
??TT8 :

EnumerableTT; E
.TTE F
EmptyTTF K
<TTK L
FuncTTL P
<TTP Q 
ShapeCreatingContextTTQ e
,TTe f
TaskTTg k
>TTk l
>TTl m
(TTm n
)TTn o
;TTo p

descriptorUU 
.UU 
CreatingAsyncUU (
=UU) *
existingUU+ 3
.UU3 4
ConcatUU4 :
(UU: ;
newUU; >
[UU> ?
]UU? @
{UUA B
actionAsyncUUC N
}UUO P
)UUP Q
;UUQ R
}VV 
)VV 
;VV 
}WW 	
public\\ "
ShapeAlterationBuilder\\ %
	OnCreated\\& /
(\\/ 0
Action\\0 6
<\\6 7
ShapeCreatedContext\\7 J
>\\J K
action\\L R
)\\R S
{]] 	
return^^ 
	OnCreated^^ 
(^^ 
ctx^^  
=>^^! #
{__ 
action`` 
(`` 
ctx`` 
)`` 
;`` 
returnaa 
Taskaa 
.aa 
CompletedTaskaa )
;aa) *
}bb 
)bb 
;bb 
}cc 	
publichh "
ShapeAlterationBuilderhh %
	OnCreatedhh& /
(hh/ 0
Funchh0 4
<hh4 5
ShapeCreatedContexthh5 H
,hhH I
TaskhhJ N
>hhN O
actionAsynchhP [
)hh[ \
{ii 	
returnjj 
	Configurejj 
(jj 

descriptorjj '
=>jj( *
{kk 
varll 
existingll 
=ll 

descriptorll )
.ll) *
CreatedAsyncll* 6
??ll7 9

Enumerablell: D
.llD E
EmptyllE J
<llJ K
FuncllK O
<llO P
ShapeCreatedContextllP c
,llc d
Tasklle i
>lli j
>llj k
(llk l
)lll m
;llm n

descriptormm 
.mm 
CreatedAsyncmm '
=mm( )
existingmm* 2
.mm2 3
Concatmm3 9
(mm9 :
newmm: =
[mm= >
]mm> ?
{mm@ A
actionAsyncmmB M
}mmN O
)mmO P
;mmP Q
}nn 
)nn 
;nn 
}oo 	
publictt "
ShapeAlterationBuildertt %
OnDisplayingtt& 2
(tt2 3
Actiontt3 9
<tt9 :
ShapeDisplayContexttt: M
>ttM N
actionttO U
)ttU V
{uu 	
returnvv 
OnDisplayingvv 
(vv  
ctxvv  #
=>vv$ &
{ww 
actionxx 
(xx 
ctxxx 
)xx 
;xx 
returnyy 
Taskyy 
.yy 
CompletedTaskyy )
;yy) *
}zz 
)zz 
;zz 
}{{ 	
public
ÄÄ $
ShapeAlterationBuilder
ÄÄ %
OnDisplaying
ÄÄ& 2
(
ÄÄ2 3
Func
ÄÄ3 7
<
ÄÄ7 8!
ShapeDisplayContext
ÄÄ8 K
,
ÄÄK L
Task
ÄÄM Q
>
ÄÄQ R
actionAsync
ÄÄS ^
)
ÄÄ^ _
{
ÅÅ 	
return
ÇÇ 
	Configure
ÇÇ 
(
ÇÇ 

descriptor
ÇÇ '
=>
ÇÇ( *
{
ÉÉ 
var
ÑÑ 
existing
ÑÑ 
=
ÑÑ 

descriptor
ÑÑ )
.
ÑÑ) *
DisplayingAsync
ÑÑ* 9
??
ÑÑ: <

Enumerable
ÑÑ= G
.
ÑÑG H
Empty
ÑÑH M
<
ÑÑM N
Func
ÑÑN R
<
ÑÑR S!
ShapeDisplayContext
ÑÑS f
,
ÑÑf g
Task
ÑÑh l
>
ÑÑl m
>
ÑÑm n
(
ÑÑn o
)
ÑÑo p
;
ÑÑp q

descriptor
ÖÖ 
.
ÖÖ 
DisplayingAsync
ÖÖ *
=
ÖÖ+ ,
existing
ÖÖ- 5
.
ÖÖ5 6
Concat
ÖÖ6 <
(
ÖÖ< =
new
ÖÖ= @
[
ÖÖ@ A
]
ÖÖA B
{
ÖÖC D
actionAsync
ÖÖE P
}
ÖÖQ R
)
ÖÖR S
;
ÖÖS T
}
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 	
public
åå $
ShapeAlterationBuilder
åå %
OnProcessing
åå& 2
(
åå2 3
Action
åå3 9
<
åå9 :!
ShapeDisplayContext
åå: M
>
ååM N
action
ååO U
)
ååU V
{
çç 	
return
éé 
OnProcessing
éé 
(
éé  
ctx
éé  #
=>
éé$ &
{
èè 
action
êê 
(
êê 
ctx
êê 
)
êê 
;
êê 
return
ëë 
Task
ëë 
.
ëë 
CompletedTask
ëë )
;
ëë) *
}
íí 
)
íí 
;
íí 
}
ìì 	
public
òò $
ShapeAlterationBuilder
òò %
OnProcessing
òò& 2
(
òò2 3
Func
òò3 7
<
òò7 8!
ShapeDisplayContext
òò8 K
,
òòK L
Task
òòM Q
>
òòQ R
actionAsync
òòS ^
)
òò^ _
{
ôô 	
return
öö 
	Configure
öö 
(
öö 

descriptor
öö '
=>
öö( *
{
õõ 
var
úú 
existing
úú 
=
úú 

descriptor
úú )
.
úú) *
ProcessingAsync
úú* 9
??
úú: <

Enumerable
úú= G
.
úúG H
Empty
úúH M
<
úúM N
Func
úúN R
<
úúR S!
ShapeDisplayContext
úúS f
,
úúf g
Task
úúh l
>
úúl m
>
úúm n
(
úún o
)
úúo p
;
úúp q

descriptor
ùù 
.
ùù 
ProcessingAsync
ùù *
=
ùù+ ,
existing
ùù- 5
.
ùù5 6
Concat
ùù6 <
(
ùù< =
new
ùù= @
[
ùù@ A
]
ùùA B
{
ùùC D
actionAsync
ùùE P
}
ùùQ R
)
ùùR S
;
ùùS T
}
ûû 
)
ûû 
;
ûû 
}
üü 	
public
§§ $
ShapeAlterationBuilder
§§ %
OnDisplayed
§§& 1
(
§§1 2
Action
§§2 8
<
§§8 9!
ShapeDisplayContext
§§9 L
>
§§L M
action
§§N T
)
§§T U
{
•• 	
return
¶¶ 
OnDisplayed
¶¶ 
(
¶¶ 
ctx
¶¶ "
=>
¶¶# %
{
ßß 
action
®® 
(
®® 
ctx
®® 
)
®® 
;
®® 
return
©© 
Task
©© 
.
©© 
CompletedTask
©© )
;
©©) *
}
™™ 
)
™™ 
;
™™ 
}
´´ 	
public
∞∞ $
ShapeAlterationBuilder
∞∞ %
OnDisplayed
∞∞& 1
(
∞∞1 2
Func
∞∞2 6
<
∞∞6 7!
ShapeDisplayContext
∞∞7 J
,
∞∞J K
Task
∞∞L P
>
∞∞P Q
actionAsync
∞∞R ]
)
∞∞] ^
{
±± 	
return
≤≤ 
	Configure
≤≤ 
(
≤≤ 

descriptor
≤≤ '
=>
≤≤( *
{
≥≥ 
var
¥¥ 
existing
¥¥ 
=
¥¥ 

descriptor
¥¥ )
.
¥¥) *
DisplayedAsync
¥¥* 8
??
¥¥9 ;

Enumerable
¥¥< F
.
¥¥F G
Empty
¥¥G L
<
¥¥L M
Func
¥¥M Q
<
¥¥Q R!
ShapeDisplayContext
¥¥R e
,
¥¥e f
Task
¥¥g k
>
¥¥k l
>
¥¥l m
(
¥¥m n
)
¥¥n o
;
¥¥o p

descriptor
µµ 
.
µµ 
DisplayedAsync
µµ )
=
µµ* +
existing
µµ, 4
.
µµ4 5
Concat
µµ5 ;
(
µµ; <
new
µµ< ?
[
µµ? @
]
µµ@ A
{
µµB C
actionAsync
µµD O
}
µµP Q
)
µµQ R
;
µµR S
}
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
public
ππ $
ShapeAlterationBuilder
ππ %
	Placement
ππ& /
(
ππ/ 0
Func
ππ0 4
<
ππ4 5#
ShapePlacementContext
ππ5 J
,
ππJ K
PlacementInfo
ππL Y
>
ππY Z
action
ππ[ a
)
ππa b
{
∫∫ 	
return
ªª 
	Configure
ªª 
(
ªª 

descriptor
ªª '
=>
ªª( *
{
ºº 
var
ΩΩ 
next
ΩΩ 
=
ΩΩ 

descriptor
ΩΩ %
.
ΩΩ% &
	Placement
ΩΩ& /
;
ΩΩ/ 0

descriptor
ææ 
.
ææ 
	Placement
ææ $
=
ææ% &
ctx
ææ' *
=>
ææ+ -
action
ææ. 4
(
ææ4 5
ctx
ææ5 8
)
ææ8 9
??
ææ: <
next
ææ= A
(
ææA B
ctx
ææB E
)
ææE F
;
ææF G
}
øø 
)
øø 
;
øø 
}
¿¿ 	
public
¬¬ $
ShapeAlterationBuilder
¬¬ %
	Placement
¬¬& /
(
¬¬/ 0
Func
¬¬0 4
<
¬¬4 5#
ShapePlacementContext
¬¬5 J
,
¬¬J K
bool
¬¬L P
>
¬¬P Q
	predicate
¬¬R [
,
¬¬[ \
PlacementInfo
¬¬] j
location
¬¬k s
)
¬¬s t
{
√√ 	
return
ƒƒ 
	Configure
ƒƒ 
(
ƒƒ 

descriptor
ƒƒ '
=>
ƒƒ( *
{
≈≈ 
var
∆∆ 
next
∆∆ 
=
∆∆ 

descriptor
∆∆ %
.
∆∆% &
	Placement
∆∆& /
;
∆∆/ 0

descriptor
«« 
.
«« 
	Placement
«« $
=
««% &
ctx
««' *
=>
««+ -
	predicate
««. 7
(
««7 8
ctx
««8 ;
)
««; <
?
««= >
location
««? G
:
««H I
next
««J N
(
««N O
ctx
««O R
)
««R S
;
««S T
}
»» 
)
»» 
;
»» 
}
…… 	
public
ÀÀ 
ShapeAlteration
ÀÀ 
Build
ÀÀ $
(
ÀÀ$ %
)
ÀÀ% &
{
ÃÃ 	
return
ÕÕ 
new
ÕÕ 
ShapeAlteration
ÕÕ &
(
ÕÕ& '

_shapeType
ÕÕ' 1
,
ÕÕ1 2
_feature
ÕÕ3 ;
,
ÕÕ; <
_configurations
ÕÕ= L
.
ÕÕL M
ToArray
ÕÕM T
(
ÕÕT U
)
ÕÕU V
)
ÕÕV W
;
ÕÕW X
}
ŒŒ 	
}
œœ 
public
—— 

class
—— #
ShapePlacementContext
—— &
{
““ 
public
”” #
ShapePlacementContext
”” $
(
””$ %
string
””% +
	shapeType
””, 5
,
””5 6
string
””7 =
displayType
””> I
,
””I J
string
””K Q
differentiator
””R `
,
””` a
IShape
””b h
	zoneShape
””i r
)
””r s
{
‘‘ 	
	ShapeType
’’ 
=
’’ 
	shapeType
’’ !
;
’’! "
DisplayType
÷÷ 
=
÷÷ 
displayType
÷÷ %
;
÷÷% &
Differentiator
◊◊ 
=
◊◊ 
differentiator
◊◊ +
;
◊◊+ ,
	ZoneShape
ÿÿ 
=
ÿÿ 
	zoneShape
ÿÿ !
;
ÿÿ! "
}
ŸŸ 	
public
€€ 
IShape
€€ 
	ZoneShape
€€ 
{
€€  !
get
€€" %
;
€€% &
set
€€' *
;
€€* +
}
€€, -
public
‹‹ 
string
‹‹ 
	ShapeType
‹‹ 
{
‹‹  !
get
‹‹" %
;
‹‹% &
set
‹‹' *
;
‹‹* +
}
‹‹, -
public
›› 
string
›› 
DisplayType
›› !
{
››" #
get
››$ '
;
››' (
set
››) ,
;
››, -
}
››. /
public
ﬁﬁ 
string
ﬁﬁ 
Differentiator
ﬁﬁ $
{
ﬁﬁ% &
get
ﬁﬁ' *
;
ﬁﬁ* +
set
ﬁﬁ, /
;
ﬁﬁ/ 0
}
ﬁﬁ1 2
public
‰‰ 
string
‰‰ 
Source
‰‰ 
{
‰‰ 
get
‰‰ "
;
‰‰" #
set
‰‰$ '
;
‰‰' (
}
‰‰) *
}
ÂÂ 
}ÊÊ ≥∞
πD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeAttributeStrategy\ShapeAttributeBindingStrategy.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4"
ShapeAttributeStrategy4 J
{ 
public 

class )
ShapeAttributeBindingStrategy .
:/ 0 
IShapeTableHarvester1 E
{ 
private 
static 
readonly  
ConcurrentDictionary  4
<4 5
string5 ;
,; <
CallSite= E
<E F
FuncF J
<J K
CallSiteK S
,S T
objectU [
,[ \
dynamic] d
>d e
>e f
>f g
_gettersh p
=q r
new  
ConcurrentDictionary $
<$ %
string% +
,+ ,
CallSite- 5
<5 6
Func6 :
<: ;
CallSite; C
,C D
objectE K
,K L
dynamicM T
>T U
>U V
>V W
(W X
)X Y
;Y Z
private 
static 
readonly  
ConcurrentDictionary  4
<4 5

MethodInfo5 ?
,? @
ParameterInfoA N
[N O
]O P
>P Q
_parametersR ]
=^ _
new  
ConcurrentDictionary $
<$ %

MethodInfo% /
,/ 0
ParameterInfo1 >
[> ?
]? @
>@ A
(A B
)B C
;C D
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IEnumerable $
<$ %#
IShapeAttributeProvider% <
>< =
_shapeProviders> M
;M N
public!! )
ShapeAttributeBindingStrategy!! ,
(!!, - 
ITypeFeatureProvider""  
typeFeatureProvider""! 4
,""4 5
IEnumerable## 
<## #
IShapeAttributeProvider## /
>##/ 0
shapeProviders##1 ?
)##? @
{$$ 	 
_typeFeatureProvider%%  
=%%! "
typeFeatureProvider%%# 6
;%%6 7
_shapeProviders&& 
=&& 
shapeProviders&& ,
;&&, -
}'' 	
public)) 
void)) 
Discover)) 
()) 
ShapeTableBuilder)) .
builder))/ 6
)))6 7
{** 	
var++ %
shapeAttributeOccurrences++ )
=++* +
new++, /
List++0 4
<++4 5$
ShapeAttributeOccurrence++5 M
>++M N
(++N O
)++O P
;++P Q
foreach-- 
(-- 
var-- 
shapeProvider-- &
in--' )
_shapeProviders--* 9
)--9 :
{.. 
var// 
serviceType// 
=//  !
shapeProvider//" /
./// 0
GetType//0 7
(//7 8
)//8 9
;//9 :
foreach11 
(11 
var11 
method11 #
in11$ &
serviceType11' 2
.112 3

GetMethods113 =
(11= >
)11> ?
)11? @
{22 
var33 
customAttributes33 (
=33) *
method33+ 1
.331 2
GetCustomAttributes332 E
(33E F
typeof33F L
(33L M
ShapeAttribute33M [
)33[ \
,33\ ]
false33^ c
)33c d
.33d e
OfType33e k
<33k l
ShapeAttribute33l z
>33z {
(33{ |
)33| }
;33} ~
foreach44 
(44 
var44  
customAttribute44! 0
in441 3
customAttributes444 D
)44D E
{55 %
shapeAttributeOccurrences66 1
.661 2
Add662 5
(665 6
new666 9$
ShapeAttributeOccurrence66: R
(66R S
customAttribute66S b
,66b c
method66d j
,66j k
serviceType66l w
)66w x
)66x y
;66y z
}77 
}88 
}99 
foreach;; 
(;; 
var;; 
iter;; 
in;;  %
shapeAttributeOccurrences;;! :
);;: ;
{<< 
var== 

occurrence== 
===  
iter==! %
;==% &
var>> 
	shapeType>> 
=>> 

occurrence>>  *
.>>* +
ShapeAttribute>>+ 9
.>>9 :
	ShapeType>>: C
??>>D F

occurrence>>G Q
.>>Q R

MethodInfo>>R \
.>>\ ]
Name>>] a
;>>a b
builder?? 
.?? 
Describe??  
(??  !
	shapeType??! *
)??* +
.@@ 
From@@ 
(@@  
_typeFeatureProvider@@ .
.@@. /#
GetFeatureForDependency@@/ F
(@@F G

occurrence@@G Q
.@@Q R
ServiceType@@R ]
)@@] ^
)@@^ _
.AA 
BoundAsAA 
(AA 

occurrenceBB "
.BB" #

MethodInfoBB# -
.BB- .
DeclaringTypeBB. ;
.BB; <
FullNameBB< D
+BBE F
$strBBG K
+BBL M

occurrenceBBN X
.BBX Y

MethodInfoBBY c
.BBc d
NameBBd h
,BBh i
CreateDelegateCC &
(CC& '

occurrenceCC' 1
)CC1 2
)CC2 3
;CC3 4
}DD 
}EE 	
[GG 	
DebuggerStepThroughGG	 
]GG 
privateHH 
FuncHH 
<HH 
DisplayContextHH #
,HH# $
TaskHH% )
<HH) *
IHtmlContentHH* 6
>HH6 7
>HH7 8
CreateDelegateHH9 G
(HHG H$
ShapeAttributeOccurrenceII $
attributeOccurrenceII% 8
)II8 9
{JJ 	
returnKK 
contextKK 
=>KK 
{LL 
varMM 
serviceInstanceMM #
=MM$ %
contextMM& -
.MM- .
ServiceProviderMM. =
.MM= >

GetServiceMM> H
(MMH I
attributeOccurrenceMMI \
.MM\ ]
ServiceTypeMM] h
)MMh i
;MMi j
returnOO 
PerformInvokeAsyncOO )
(OO) *
contextOO* 1
,OO1 2
attributeOccurrenceOO3 F
.OOF G

MethodInfoOOG Q
,OOQ R
serviceInstanceOOS b
)OOb c
;OOc d
}PP 
;PP 
}QQ 	
privateSS 
staticSS 
TaskSS 
<SS 
IHtmlContentSS (
>SS( )
PerformInvokeAsyncSS* <
(SS< =
DisplayContextSS= K
displayContextSSL Z
,SSZ [

MethodInfoSS\ f

methodInfoSSg q
,SSq r
objectSSs y
serviceInstance	SSz â
)
SSâ ä
{TT 	
varUU 

parametersUU 
=UU 
_parametersUU (
.UU( )
GetOrAddUU) 1
(UU1 2

methodInfoUU2 <
,UU< =
mUU> ?
=>UU@ B
mUUC D
.UUD E
GetParametersUUE R
(UUR S
)UUS T
)UUT U
;UUU V
varVV 
	argumentsVV 
=VV 

parametersVV &
.VV& '
SelectVV' -
(VV- .
	parameterVV. 7
=>VV8 :
BindParameterVV; H
(VVH I
displayContextVVI W
,VVW X
	parameterVVY b
)VVb c
)VVc d
;VVd e
varYY 
returnValueYY 
=YY 

methodInfoYY (
.YY( )
InvokeYY) /
(YY/ 0
serviceInstanceYY0 ?
,YY? @
	argumentsYYA J
.YYJ K
ToArrayYYK R
(YYR S
)YYS T
)YYT U
;YYU V
if[[ 
([[ 

methodInfo[[ 
.[[ 

ReturnType[[ %
==[[& (
typeof[[) /
([[/ 0
Task[[0 4
<[[4 5
IHtmlContent[[5 A
>[[A B
)[[B C
)[[C D
{\\ 
return]] 
(]] 
Task]] 
<]] 
IHtmlContent]] )
>]]) *
)]]* +
returnValue]]+ 6
;]]6 7
}^^ 
else__ 
if__ 
(__ 

methodInfo__ 
.__  

ReturnType__  *
==__+ -
typeof__. 4
(__4 5
IHtmlContent__5 A
)__A B
)__B C
{`` 
returnaa 
Taskaa 
.aa 

FromResultaa &
(aa& '
(aa' (
IHtmlContentaa( 4
)aa4 5
returnValueaa5 @
)aa@ A
;aaA B
}bb 
elsecc 
ifcc 
(cc 

methodInfocc 
.cc  

ReturnTypecc  *
!=cc+ -
typeofcc. 4
(cc4 5
voidcc5 9
)cc9 :
)cc: ;
{dd 
returnee 
Taskee 
.ee 

FromResultee &
(ee& '
CoerceHtmlContentee' 8
(ee8 9
returnValueee9 D
)eeD E
)eeE F
;eeF G
}ff 
returnhh 
Taskhh 
.hh 

FromResulthh "
<hh" #
IHtmlContenthh# /
>hh/ 0
(hh0 1
nullhh1 5
)hh5 6
;hh6 7
}ii 	
privatekk 
statickk 
IHtmlContentkk #
CoerceHtmlContentkk$ 5
(kk5 6
objectkk6 <
invokekk= C
)kkC D
{ll 	
ifmm 
(mm 
invokemm 
==mm 
nullmm 
)mm 
{nn 
returnoo 

HtmlStringoo !
.oo! "
Emptyoo" '
;oo' (
}pp 
ifrr 
(rr 
invokerr 
isrr 
IHtmlContentrr &
htmlContentrr' 2
)rr2 3
{ss 
returntt 
htmlContenttt "
;tt" #
}uu 
returnww 
newww 

HtmlStringww !
(ww! "
invokeww" (
.ww( )
ToStringww) 1
(ww1 2
)ww2 3
)ww3 4
;ww4 5
}xx 	
privatezz 
staticzz 
objectzz 
BindParameterzz +
(zz+ ,
DisplayContextzz, :
displayContextzz; I
,zzI J
ParameterInfozzK X
	parameterzzY b
)zzb c
{{{ 	
if|| 
(|| 
String|| 
.|| 
Equals|| 
(|| 
	parameter|| '
.||' (
Name||( ,
,||, -
$str||. 5
,||5 6
StringComparison||7 G
.||G H
OrdinalIgnoreCase||H Y
)||Y Z
)||Z [
{}} 
return~~ 
displayContext~~ %
.~~% &
Value~~& +
;~~+ ,
} 
if
ÅÅ 
(
ÅÅ 
String
ÅÅ 
.
ÅÅ 
Equals
ÅÅ 
(
ÅÅ 
	parameter
ÅÅ '
.
ÅÅ' (
Name
ÅÅ( ,
,
ÅÅ, -
$str
ÅÅ. <
,
ÅÅ< =
StringComparison
ÅÅ> N
.
ÅÅN O
OrdinalIgnoreCase
ÅÅO `
)
ÅÅ` a
)
ÅÅa b
{
ÇÇ 
return
ÉÉ 
displayContext
ÉÉ %
.
ÉÉ% &
DisplayAsync
ÉÉ& 2
;
ÉÉ2 3
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 
String
ÜÜ 
.
ÜÜ 
Equals
ÜÜ 
(
ÜÜ 
	parameter
ÜÜ '
.
ÜÜ' (
Name
ÜÜ( ,
,
ÜÜ, -
$str
ÜÜ. 3
,
ÜÜ3 4
StringComparison
ÜÜ5 E
.
ÜÜE F
OrdinalIgnoreCase
ÜÜF W
)
ÜÜW X
)
ÜÜX Y
{
áá 
return
àà 
displayContext
àà %
.
àà% &
ServiceProvider
àà& 5
.
àà5 6

GetService
àà6 @
<
àà@ A
IShapeFactory
ààA N
>
ààN O
(
ààO P
)
ààP Q
;
ààQ R
}
ââ 
if
ãã 
(
ãã 
String
ãã 
.
ãã 
Equals
ãã 
(
ãã 
	parameter
ãã '
.
ãã' (
Name
ãã( ,
,
ãã, -
$str
ãã. <
,
ãã< =
StringComparison
ãã> N
.
ããN O
OrdinalIgnoreCase
ããO `
)
ãã` a
)
ããa b
{
åå 
return
çç 
displayContext
çç %
.
çç% &
ServiceProvider
çç& 5
.
çç5 6

GetService
çç6 @
<
çç@ A
IShapeFactory
ççA N
>
ççN O
(
ççO P
)
ççP Q
;
ççQ R
}
éé 
if
êê 
(
êê 
String
êê 
.
êê 
Equals
êê 
(
êê 
	parameter
êê '
.
êê' (
Name
êê( ,
,
êê, -
$str
êê. 4
,
êê4 5
StringComparison
êê6 F
.
êêF G
OrdinalIgnoreCase
êêG X
)
êêX Y
)
êêY Z
{
ëë 
var
íí !
viewContextAccessor
íí '
=
íí( )
displayContext
íí* 8
.
íí8 9
ServiceProvider
íí9 H
.
ííH I 
GetRequiredService
ííI [
<
íí[ \!
ViewContextAccessor
íí\ o
>
íío p
(
ííp q
)
ííq r
;
íír s
var
ìì 
viewContext
ìì 
=
ìì  !!
viewContextAccessor
ìì" 5
.
ìì5 6
ViewContext
ìì6 A
;
ììA B
return
ïï 
MakeHtmlHelper
ïï %
(
ïï% &
viewContext
ïï& 1
,
ïï1 2
viewContext
ïï3 >
.
ïï> ?
ViewData
ïï? G
)
ïïG H
;
ïïH I
}
ññ 
if
òò 
(
òò 
String
òò 
.
òò 
Equals
òò 
(
òò 
	parameter
òò '
.
òò' (
Name
òò( ,
,
òò, -
$str
òò. >
,
òò> ?
StringComparison
òò@ P
.
òòP Q
OrdinalIgnoreCase
òòQ b
)
òòb c
)
òòc d
{
ôô 
return
öö 
displayContext
öö %
;
öö% &
}
õõ 
if
ùù 
(
ùù 
String
ùù 
.
ùù 
Equals
ùù 
(
ùù 
	parameter
ùù '
.
ùù' (
Name
ùù( ,
,
ùù, -
$str
ùù. 3
,
ùù3 4
StringComparison
ùù5 E
.
ùùE F
OrdinalIgnoreCase
ùùF W
)
ùùW X
&&
ùùY [
typeof
ùù\ b
(
ùùb c

IUrlHelper
ùùc m
)
ùùm n
.
ùùn o
IsAssignableFrom
ùùo 
(ùù Ä
	parameterùùÄ â
.ùùâ ä
ParameterTypeùùä ó
)ùùó ò
)ùùò ô
{
ûû 
var
üü !
viewContextAccessor
üü '
=
üü( )
displayContext
üü* 8
.
üü8 9
ServiceProvider
üü9 H
.
üüH I 
GetRequiredService
üüI [
<
üü[ \!
ViewContextAccessor
üü\ o
>
üüo p
(
üüp q
)
üüq r
;
üür s
var
†† 
viewContext
†† 
=
††  !!
viewContextAccessor
††" 5
.
††5 6
ViewContext
††6 A
;
††A B
var
¢¢ 
urlHelperFactory
¢¢ $
=
¢¢% &
displayContext
¢¢' 5
.
¢¢5 6
ServiceProvider
¢¢6 E
.
¢¢E F

GetService
¢¢F P
<
¢¢P Q
IUrlHelperFactory
¢¢Q b
>
¢¢b c
(
¢¢c d
)
¢¢d e
;
¢¢e f
return
££ 
urlHelperFactory
££ '
.
££' (
GetUrlHelper
££( 4
(
££4 5
viewContext
££5 @
)
££@ A
;
££A B
}
§§ 
if
¶¶ 
(
¶¶ 
String
¶¶ 
.
¶¶ 
Equals
¶¶ 
(
¶¶ 
	parameter
¶¶ '
.
¶¶' (
Name
¶¶( ,
,
¶¶, -
$str
¶¶. 6
,
¶¶6 7
StringComparison
¶¶8 H
.
¶¶H I
OrdinalIgnoreCase
¶¶I Z
)
¶¶Z [
&&
¶¶\ ^
	parameter
¶¶_ h
.
¶¶h i
ParameterType
¶¶i v
==
¶¶w y
typeof¶¶z Ä
(¶¶Ä Å

TextWriter¶¶Å ã
)¶¶ã å
)¶¶å ç
{
ßß 
throw
®® 
new
®® '
InvalidOperationException
®® 3
(
®®3 4
$str®®4 á
)®®á à
;®®à â
}
©© 
if
´´ 
(
´´ 
String
´´ 
.
´´ 
Equals
´´ 
(
´´ 
	parameter
´´ '
.
´´' (
Name
´´( ,
,
´´, -
$str
´´. 6
,
´´6 7
StringComparison
´´8 H
.
´´H I
OrdinalIgnoreCase
´´I Z
)
´´Z [
&&
´´\ ^
	parameter
´´_ h
.
´´h i
ParameterType
´´i v
==
´´w y
typeof´´z Ä
(´´Ä Å
Action´´Å á
<´´á à
object´´à é
>´´é è
)´´è ê
)´´ê ë
{
¨¨ 
throw
≠≠ 
new
≠≠ '
InvalidOperationException
≠≠ 3
(
≠≠3 4
$str≠≠4 á
)≠≠á à
;≠≠à â
}
ÆÆ 
var
∞∞ 
getter
∞∞ 
=
∞∞ 
_getters
∞∞ !
.
∞∞! "
GetOrAdd
∞∞" *
(
∞∞* +
	parameter
∞∞+ 4
.
∞∞4 5
Name
∞∞5 9
,
∞∞9 :
n
∞∞; <
=>
∞∞= ?
CallSite
±± 
<
±± 
Func
±± 
<
±± 
CallSite
±± &
,
±±& '
object
±±( .
,
±±. /
dynamic
±±0 7
>
±±7 8
>
±±8 9
.
±±9 :
Create
±±: @
(
±±@ A
	Microsoft
≤≤ 
.
≤≤ 
CSharp
≤≤  
.
≤≤  !
RuntimeBinder
≤≤! .
.
≤≤. /
Binder
≤≤/ 5
.
≤≤5 6
	GetMember
≤≤6 ?
(
≤≤? @
CSharpBinderFlags
≥≥ !
.
≥≥! "
None
≥≥" &
,
≥≥& '
n
≥≥( )
,
≥≥) *
null
≥≥+ /
,
≥≥/ 0
new
≥≥1 4
[
≥≥4 5
]
≥≥5 6
{
≥≥7 8 
CSharpArgumentInfo
≥≥9 K
.
≥≥K L
Create
≥≥L R
(
≥≥R S%
CSharpArgumentInfoFlags
≥≥S j
.
≥≥j k
None
≥≥k o
,
≥≥o p
null
≥≥q u
)
≥≥u v
}
≥≥w x
)
≥≥x y
)
≥≥y z
)
≥≥z {
;
≥≥{ |
object
µµ 
result
µµ 
=
µµ 
getter
µµ "
.
µµ" #
Target
µµ# )
(
µµ) *
getter
µµ* 0
,
µµ0 1
displayContext
µµ2 @
.
µµ@ A
Value
µµA F
)
µµF G
;
µµG H
if
∑∑ 
(
∑∑ 
result
∑∑ 
==
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
return
ππ 
null
ππ 
;
ππ 
}
∫∫ 
if
ºº 
(
ºº 
	parameter
ºº 
.
ºº 
ParameterType
ºº '
.
ºº' (
IsAssignableFrom
ºº( 8
(
ºº8 9
result
ºº9 ?
.
ºº? @
GetType
ºº@ G
(
ººG H
)
ººH I
)
ººI J
)
ººJ K
{
ΩΩ 
return
ææ 
result
ææ 
;
ææ 
}
øø 
if
¬¬ 
(
¬¬ 
result
¬¬ 
.
¬¬ 
GetType
¬¬ 
(
¬¬ 
)
¬¬  
==
¬¬! #
typeof
¬¬$ *
(
¬¬* +
string
¬¬+ 1
)
¬¬1 2
&&
¬¬3 5
(
¬¬6 7
	parameter
¬¬7 @
.
¬¬@ A
ParameterType
¬¬A N
==
¬¬O Q
typeof
¬¬R X
(
¬¬X Y
DateTime
¬¬Y a
)
¬¬a b
||
¬¬c e
	parameter
¬¬f o
.
¬¬o p
ParameterType
¬¬p }
==¬¬~ Ä
typeof¬¬Å á
(¬¬á à
DateTime¬¬à ê
?¬¬ê ë
)¬¬ë í
)¬¬í ì
)¬¬ì î
{
√√ 
return
ƒƒ 
DateTime
ƒƒ 
.
ƒƒ  
Parse
ƒƒ  %
(
ƒƒ% &
(
ƒƒ& '
string
ƒƒ' -
)
ƒƒ- .
result
ƒƒ. 4
)
ƒƒ4 5
;
ƒƒ5 6
}
≈≈ 
return
«« 
Convert
«« 
.
«« 

ChangeType
«« %
(
««% &
result
««& ,
,
««, -
	parameter
««. 7
.
««7 8
ParameterType
««8 E
)
««E F
;
««F G
}
»» 	
private
   
static
   
IHtmlHelper
   "
MakeHtmlHelper
  # 1
(
  1 2
ViewContext
  2 =
viewContext
  > I
,
  I J 
ViewDataDictionary
  K ]
viewData
  ^ f
)
  f g
{
ÀÀ 	
var
ÃÃ 
	newHelper
ÃÃ 
=
ÃÃ 
viewContext
ÃÃ '
.
ÃÃ' (
HttpContext
ÃÃ( 3
.
ÃÃ3 4
RequestServices
ÃÃ4 C
.
ÃÃC D 
GetRequiredService
ÃÃD V
<
ÃÃV W
IHtmlHelper
ÃÃW b
>
ÃÃb c
(
ÃÃc d
)
ÃÃd e
;
ÃÃe f
var
ŒŒ 
contextable
ŒŒ 
=
ŒŒ 
	newHelper
ŒŒ '
as
ŒŒ( *
IViewContextAware
ŒŒ+ <
;
ŒŒ< =
if
œœ 
(
œœ 
contextable
œœ 
!=
œœ 
null
œœ #
)
œœ# $
{
–– 
var
—— 
newViewContext
—— "
=
——# $
new
——% (
ViewContext
——) 4
(
——4 5
viewContext
——5 @
,
——@ A
viewContext
——B M
.
——M N
View
——N R
,
——R S
viewData
——T \
,
——\ ]
viewContext
——^ i
.
——i j
Writer
——j p
)
——p q
;
——q r
contextable
““ 
.
““ 
Contextualize
““ )
(
““) *
newViewContext
““* 8
)
““8 9
;
““9 :
}
”” 
return
’’ 
	newHelper
’’ 
;
’’ 
}
÷÷ 	
}
◊◊ 
}ÿÿ ∂
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeAttributeStrategy\ShapeAttributeOccurrence.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4"
ShapeAttributeStrategy4 J
{ 
public 

class $
ShapeAttributeOccurrence )
{ 
public $
ShapeAttributeOccurrence '
(' (
ShapeAttribute( 6
shapeAttribute7 E
,E F

MethodInfoG Q

methodInfoR \
,\ ]
Type^ b
serviceTypec n
)n o
{		 	
ShapeAttribute

 
=

 
shapeAttribute

 +
;

+ ,

MethodInfo 
= 

methodInfo #
;# $
ServiceType 
= 
serviceType %
;% &
} 	
public 
ShapeAttribute 
ShapeAttribute ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public 

MethodInfo 

MethodInfo $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public 
Type 
ServiceType 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
} 
} Ω†
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeDescriptor.cs
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
DisplayManagement

 '
.

' (
Descriptors

( 3
{ 
public 

class "
FeatureShapeDescriptor '
:( )
ShapeDescriptor* 9
{ 
public "
FeatureShapeDescriptor %
(% &
IFeatureInfo& 2
feature3 :
,: ;
string< B
	shapeTypeC L
)L M
{ 	
Feature 
= 
feature 
; 
	ShapeType 
= 
	shapeType !
;! "
} 	
public 
IFeatureInfo 
Feature #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
} 
public 

class  
ShapeDescriptorIndex %
:& '
ShapeDescriptor( 7
{ 
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5"
FeatureShapeDescriptor6 L
>L M
_descriptorsN Z
;Z [
private 
readonly 
List 
< "
FeatureShapeDescriptor 4
>4 5#
_alternationDescriptors6 M
;M N
private 
readonly 
List 
< 
string $
>$ %
	_wrappers& /
;/ 0
private 
readonly 
List 
< 
string $
>$ %
_bindingSources& 5
;5 6
private 
readonly 

Dictionary #
<# $
string$ *
,* +
ShapeBinding, 8
>8 9
	_bindings: C
;C D
private 
readonly 
List 
< 
Func "
<" # 
ShapeCreatingContext# 7
,7 8
Task9 =
>= >
>> ?
_creatingAsync@ N
;N O
private 
readonly 
List 
< 
Func "
<" #
ShapeCreatedContext# 6
,6 7
Task8 <
>< =
>= >
_createdAsync? L
;L M
private   
readonly   
List   
<   
Func   "
<  " #
ShapeDisplayContext  # 6
,  6 7
Task  8 <
>  < =
>  = >
_displayingAsync  ? O
;  O P
private!! 
readonly!! 
List!! 
<!! 
Func!! "
<!!" #
ShapeDisplayContext!!# 6
,!!6 7
Task!!8 <
>!!< =
>!!= >
_processingAsync!!? O
;!!O P
private"" 
readonly"" 
List"" 
<"" 
Func"" "
<""" #
ShapeDisplayContext""# 6
,""6 7
Task""8 <
>""< =
>""= >
_displayedAsync""? N
;""N O
public$$  
ShapeDescriptorIndex$$ #
($$# $
string%% 
	shapeType%% 
,%% 
IEnumerable&& 
<&& 
string&& 
>&& 
alterationKeys&&  .
,&&. / 
ConcurrentDictionary''  
<''  !
string''! '
,''' ("
FeatureShapeDescriptor'') ?
>''? @
descriptors''A L
)''L M
{(( 	
	ShapeType)) 
=)) 
	shapeType)) !
;))! "
_descriptors** 
=** 
descriptors** &
;**& '#
_alternationDescriptors-- #
=--$ %
alterationKeys--& 4
... 
Select.. 
(.. 
key.. 
=>.. 
_descriptors.. +
[..+ ,
key.., /
]../ 0
)..0 1
.// 
ToList// 
(// 
)// 
;// 
	_wrappers11 
=11 #
_alternationDescriptors11 /
.22 

SelectMany22 
(22 
sd22 
=>22 !
sd22" $
.22$ %
Wrappers22% -
)22- .
.33 
ToList33 
(33 
)33 
;33 
_bindingSources55 
=55 #
_alternationDescriptors55 5
.66 

SelectMany66 
(66 
sd66 
=>66 !
sd66" $
.66$ %
BindingSources66% 3
)663 4
.77 
ToList77 
(77 
)77 
;77 
	_bindings99 
=99 #
_alternationDescriptors99 /
.:: 

SelectMany:: 
(:: 
sd:: 
=>:: !
sd::" $
.::$ %
Bindings::% -
)::- .
.;; 
GroupBy;; 
(;; 
kv;; 
=>;; 
kv;; !
.;;! "
Key;;" %
,;;% &
StringComparer;;' 5
.;;5 6
OrdinalIgnoreCase;;6 G
);;G H
.<< 
Select<< 
(<< 
kv<< 
=><< 
kv<<  
.<<  !
Last<<! %
(<<% &
)<<& '
)<<' (
.== 
ToDictionary== 
(== 
kv==  
=>==! #
kv==$ &
.==& '
Key==' *
,==* +
kv==, .
=>==/ 1
kv==2 4
.==4 5
Value==5 :
,==: ;
StringComparer==< J
.==J K
OrdinalIgnoreCase==K \
)==\ ]
;==] ^
_creatingAsync?? 
=?? #
_alternationDescriptors?? 4
.@@ 

SelectMany@@ 
(@@ 
sd@@ 
=>@@ !
sd@@" $
.@@$ %
CreatingAsync@@% 2
)@@2 3
.AA 
ToListAA 
(AA 
)AA 
;AA 
_createdAsyncCC 
=CC #
_alternationDescriptorsCC 3
.DD 

SelectManyDD 
(DD 
sdDD 
=>DD !
sdDD" $
.DD$ %
CreatedAsyncDD% 1
)DD1 2
.EE 
ToListEE 
(EE 
)EE 
;EE 
_displayingAsyncGG 
=GG #
_alternationDescriptorsGG 6
.HH 

SelectManyHH 
(HH 
sdHH 
=>HH !
sdHH" $
.HH$ %
DisplayingAsyncHH% 4
)HH4 5
.II 
ToListII 
(II 
)II 
;II 
_processingAsyncKK 
=KK #
_alternationDescriptorsKK 6
.LL 

SelectManyLL 
(LL 
sdLL 
=>LL !
sdLL" $
.LL$ %
ProcessingAsyncLL% 4
)LL4 5
.MM 
ToListMM 
(MM 
)MM 
;MM 
_displayedAsyncOO 
=OO #
_alternationDescriptorsOO 5
.PP 

SelectManyPP 
(PP 
sdPP 
=>PP !
sdPP" $
.PP$ %
DisplayedAsyncPP% 3
)PP3 4
.QQ 
ToListQQ 
(QQ 
)QQ 
;QQ 
}RR 	
publicXX 
overrideXX 
stringXX 
BindingSourceXX ,
=>XX- /
BindingsYY 
.YY 
TryGetValueYY  
(YY  !
	ShapeTypeYY! *
,YY* +
outYY, /
varYY0 3
bindingYY4 ;
)YY; <
?YY= >
bindingYY? F
.YYF G
BindingSourceYYG T
:YYU V
nullYYW [
;YY[ \
public[[ 
override[[ 
Func[[ 
<[[ 
DisplayContext[[ +
,[[+ ,
Task[[- 1
<[[1 2
IHtmlContent[[2 >
>[[> ?
>[[? @
Binding[[A H
=>[[I K
Bindings\\ 
.\\ 
TryGetValue\\  
(\\  !
	ShapeType\\! *
,\\* +
out\\, /
var\\0 3
binding\\4 ;
)\\; <
?\\= >
binding\\? F
.\\F G
BindingAsync\\G S
:\\T U
null\\V Z
;\\Z [
public^^ 
override^^ 
IDictionary^^ #
<^^# $
string^^$ *
,^^* +
ShapeBinding^^, 8
>^^8 9
Bindings^^: B
=>^^C E
	_bindings^^F O
;^^O P
public`` 
override`` 
IEnumerable`` #
<``# $
Func``$ (
<``( ) 
ShapeCreatingContext``) =
,``= >
Task``? C
>``C D
>``D E
CreatingAsync``F S
=>``T V
_creatingAsync``W e
;``e f
publicbb 
overridebb 
IEnumerablebb #
<bb# $
Funcbb$ (
<bb( )
ShapeCreatedContextbb) <
,bb< =
Taskbb> B
>bbB C
>bbC D
CreatedAsyncbbE Q
=>bbR T
_createdAsyncbbU b
;bbb c
publicdd 
overridedd 
IEnumerabledd #
<dd# $
Funcdd$ (
<dd( )
ShapeDisplayContextdd) <
,dd< =
Taskdd> B
>ddB C
>ddC D
DisplayingAsyncddE T
=>ddU W
_displayingAsyncddX h
;ddh i
publicff 
overrideff 
IEnumerableff #
<ff# $
Funcff$ (
<ff( )
ShapeDisplayContextff) <
,ff< =
Taskff> B
>ffB C
>ffC D
ProcessingAsyncffE T
=>ffU W
_processingAsyncffX h
;ffh i
publichh 
overridehh 
IEnumerablehh #
<hh# $
Funchh$ (
<hh( )
ShapeDisplayContexthh) <
,hh< =
Taskhh> B
>hhB C
>hhC D
DisplayedAsynchhE S
=>hhT V
_displayedAsynchhW f
;hhf g
publicjj 
overridejj 
Funcjj 
<jj !
ShapePlacementContextjj 2
,jj2 3
PlacementInfojj4 A
>jjA B
	PlacementjjC L
=>jjM O
CalculatePlacementjjP b
;jjb c
privatell 
PlacementInfoll 
CalculatePlacementll 0
(ll0 1!
ShapePlacementContextll1 F
ctxllG J
)llJ K
{mm 	
PlacementInfonn 
infonn 
=nn  
nullnn! %
;nn% &
foroo 
(oo 
varoo 
ioo 
=oo #
_alternationDescriptorsoo 0
.oo0 1
Countoo1 6
-oo7 8
$numoo9 :
;oo: ;
ioo< =
>=oo> @
$numooA B
;ooB C
iooD E
--ooE G
)ooG H
{pp 
varqq 

descriptorqq 
=qq  #
_alternationDescriptorsqq! 8
[qq8 9
iqq9 :
]qq: ;
;qq; <
inforr 
=rr 

descriptorrr !
.rr! "
	Placementrr" +
(rr+ ,
ctxrr, /
)rr/ 0
;rr0 1
ifss 
(ss 
infoss 
!=ss 
nullss  
)ss  !
{tt 
breakuu 
;uu 
}vv 
}ww 
returnyy 
infoyy 
??yy "
DefaultPlacementActionyy 1
(yy1 2
ctxyy2 5
)yy5 6
;yy6 7
}zz 	
public|| 
override|| 
IList|| 
<|| 
string|| $
>||$ %
Wrappers||& .
=>||/ 1
	_wrappers||2 ;
;||; <
public~~ 
override~~ 
IList~~ 
<~~ 
string~~ $
>~~$ %
BindingSources~~& 4
=>~~5 7
_bindingSources~~8 G
;~~G H
} 
public
ÅÅ 

class
ÅÅ 
ShapeDescriptor
ÅÅ  
{
ÇÇ 
public
ÉÉ 
ShapeDescriptor
ÉÉ 
(
ÉÉ 
)
ÉÉ  
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
(
ÖÖ 
this
ÖÖ 
is
ÖÖ "
ShapeDescriptorIndex
ÖÖ .
)
ÖÖ. /
)
ÖÖ/ 0
{
ÜÜ 
CreatingAsync
áá 
=
áá 

Enumerable
áá  *
.
áá* +
Empty
áá+ 0
<
áá0 1
Func
áá1 5
<
áá5 6"
ShapeCreatingContext
áá6 J
,
ááJ K
Task
ááL P
>
ááP Q
>
ááQ R
(
ááR S
)
ááS T
;
ááT U
CreatedAsync
àà 
=
àà 

Enumerable
àà )
.
àà) *
Empty
àà* /
<
àà/ 0
Func
àà0 4
<
àà4 5!
ShapeCreatedContext
àà5 H
,
ààH I
Task
ààJ N
>
ààN O
>
ààO P
(
ààP Q
)
ààQ R
;
ààR S
DisplayingAsync
ââ 
=
ââ  !

Enumerable
ââ" ,
.
ââ, -
Empty
ââ- 2
<
ââ2 3
Func
ââ3 7
<
ââ7 8!
ShapeDisplayContext
ââ8 K
,
ââK L
Task
ââM Q
>
ââQ R
>
ââR S
(
ââS T
)
ââT U
;
ââU V
ProcessingAsync
ää 
=
ää  !

Enumerable
ää" ,
.
ää, -
Empty
ää- 2
<
ää2 3
Func
ää3 7
<
ää7 8!
ShapeDisplayContext
ää8 K
,
ääK L
Task
ääM Q
>
ääQ R
>
ääR S
(
ääS T
)
ääT U
;
ääU V
DisplayedAsync
ãã 
=
ãã  

Enumerable
ãã! +
.
ãã+ ,
Empty
ãã, 1
<
ãã1 2
Func
ãã2 6
<
ãã6 7!
ShapeDisplayContext
ãã7 J
,
ããJ K
Task
ããL P
>
ããP Q
>
ããQ R
(
ããR S
)
ããS T
;
ããT U
Wrappers
åå 
=
åå 
new
åå 
List
åå #
<
åå# $
string
åå$ *
>
åå* +
(
åå+ ,
)
åå, -
;
åå- .
BindingSources
çç 
=
çç  
new
çç! $
List
çç% )
<
çç) *
string
çç* 0
>
çç0 1
(
çç1 2
)
çç2 3
;
çç3 4
Bindings
éé 
=
éé 
new
éé 

Dictionary
éé )
<
éé) *
string
éé* 0
,
éé0 1
ShapeBinding
éé2 >
>
éé> ?
(
éé? @
StringComparer
éé@ N
.
ééN O
OrdinalIgnoreCase
ééO `
)
éé` a
;
ééa b
}
èè 
	Placement
ëë 
=
ëë $
DefaultPlacementAction
ëë .
;
ëë. /
}
íí 	
	protected
îî 
PlacementInfo
îî $
DefaultPlacementAction
îî  6
(
îî6 7#
ShapePlacementContext
îî7 L
context
îîM T
)
îîT U
{
ïï 	
if
óó 
(
óó 
DefaultPlacement
óó  
==
óó! #
null
óó$ (
)
óó( )
{
òò 
return
ôô 
null
ôô 
;
ôô 
}
öö 
return
úú 
new
úú 
PlacementInfo
úú $
{
ùù 
Location
ûû 
=
ûû 
DefaultPlacement
ûû +
}
üü 
;
üü 
}
†† 	
public
¢¢ 
string
¢¢ 
	ShapeType
¢¢ 
{
¢¢  !
get
¢¢" %
;
¢¢% &
set
¢¢' *
;
¢¢* +
}
¢¢, -
public
®® 
virtual
®® 
string
®® 
BindingSource
®® +
=>
®®, .
Bindings
©© 
.
©© 
TryGetValue
©©  
(
©©  !
	ShapeType
©©! *
,
©©* +
out
©©, /
var
©©0 3
binding
©©4 ;
)
©©; <
?
©©= >
binding
©©? F
.
©©F G
BindingSource
©©G T
:
©©U V
null
©©W [
;
©©[ \
public
´´ 
virtual
´´ 
Func
´´ 
<
´´ 
DisplayContext
´´ *
,
´´* +
Task
´´, 0
<
´´0 1
IHtmlContent
´´1 =
>
´´= >
>
´´> ?
Binding
´´@ G
=>
´´H J
Bindings
¨¨ 
[
¨¨ 
	ShapeType
¨¨ 
]
¨¨ 
.
¨¨  
BindingAsync
¨¨  ,
;
¨¨, -
public
ÆÆ 
virtual
ÆÆ 
IDictionary
ÆÆ "
<
ÆÆ" #
string
ÆÆ# )
,
ÆÆ) *
ShapeBinding
ÆÆ+ 7
>
ÆÆ7 8
Bindings
ÆÆ9 A
{
ÆÆB C
get
ÆÆD G
;
ÆÆG H
set
ÆÆI L
;
ÆÆL M
}
ÆÆN O
public
∞∞ 
virtual
∞∞ 
IEnumerable
∞∞ "
<
∞∞" #
Func
∞∞# '
<
∞∞' ("
ShapeCreatingContext
∞∞( <
,
∞∞< =
Task
∞∞> B
>
∞∞B C
>
∞∞C D
CreatingAsync
∞∞E R
{
∞∞S T
get
∞∞U X
;
∞∞X Y
set
∞∞Z ]
;
∞∞] ^
}
∞∞_ `
public
±± 
virtual
±± 
IEnumerable
±± "
<
±±" #
Func
±±# '
<
±±' (!
ShapeCreatedContext
±±( ;
,
±±; <
Task
±±= A
>
±±A B
>
±±B C
CreatedAsync
±±D P
{
±±Q R
get
±±S V
;
±±V W
set
±±X [
;
±±[ \
}
±±] ^
public
≤≤ 
virtual
≤≤ 
IEnumerable
≤≤ "
<
≤≤" #
Func
≤≤# '
<
≤≤' (!
ShapeDisplayContext
≤≤( ;
,
≤≤; <
Task
≤≤= A
>
≤≤A B
>
≤≤B C
DisplayingAsync
≤≤D S
{
≤≤T U
get
≤≤V Y
;
≤≤Y Z
set
≤≤[ ^
;
≤≤^ _
}
≤≤` a
public
≥≥ 
virtual
≥≥ 
IEnumerable
≥≥ "
<
≥≥" #
Func
≥≥# '
<
≥≥' (!
ShapeDisplayContext
≥≥( ;
,
≥≥; <
Task
≥≥= A
>
≥≥A B
>
≥≥B C
ProcessingAsync
≥≥D S
{
≥≥T U
get
≥≥V Y
;
≥≥Y Z
set
≥≥[ ^
;
≥≥^ _
}
≥≥` a
public
¥¥ 
virtual
¥¥ 
IEnumerable
¥¥ "
<
¥¥" #
Func
¥¥# '
<
¥¥' (!
ShapeDisplayContext
¥¥( ;
,
¥¥; <
Task
¥¥= A
>
¥¥A B
>
¥¥B C
DisplayedAsync
¥¥D R
{
¥¥S T
get
¥¥U X
;
¥¥X Y
set
¥¥Z ]
;
¥¥] ^
}
¥¥_ `
public
∂∂ 
virtual
∂∂ 
Func
∂∂ 
<
∂∂ #
ShapePlacementContext
∂∂ 1
,
∂∂1 2
PlacementInfo
∂∂3 @
>
∂∂@ A
	Placement
∂∂B K
{
∂∂L M
get
∂∂N Q
;
∂∂Q R
set
∂∂S V
;
∂∂V W
}
∂∂X Y
public
∑∑ 
string
∑∑ 
DefaultPlacement
∑∑ &
{
∑∑' (
get
∑∑) ,
;
∑∑, -
set
∑∑. 1
;
∑∑1 2
}
∑∑3 4
public
ππ 
virtual
ππ 
IList
ππ 
<
ππ 
string
ππ #
>
ππ# $
Wrappers
ππ% -
{
ππ. /
get
ππ0 3
;
ππ3 4
set
ππ5 8
;
ππ8 9
}
ππ: ;
public
∫∫ 
virtual
∫∫ 
IList
∫∫ 
<
∫∫ 
string
∫∫ #
>
∫∫# $
BindingSources
∫∫% 3
{
∫∫4 5
get
∫∫6 9
;
∫∫9 :
set
∫∫; >
;
∫∫> ?
}
∫∫@ A
}
ªª 
public
ΩΩ 

class
ΩΩ 
ShapeBinding
ΩΩ 
{
ææ 
public
øø 
string
øø 
BindingName
øø !
{
øø" #
get
øø$ '
;
øø' (
set
øø) ,
;
øø, -
}
øø. /
public
¿¿ 
string
¿¿ 
BindingSource
¿¿ #
{
¿¿$ %
get
¿¿& )
;
¿¿) *
set
¿¿+ .
;
¿¿. /
}
¿¿0 1
public
¡¡ 
virtual
¡¡ 
Func
¡¡ 
<
¡¡ 
DisplayContext
¡¡ *
,
¡¡* +
Task
¡¡, 0
<
¡¡0 1
IHtmlContent
¡¡1 =
>
¡¡= >
>
¡¡> ?
BindingAsync
¡¡@ L
{
¡¡M N
get
¡¡O R
;
¡¡R S
set
¡¡T W
;
¡¡W X
}
¡¡Y Z
}
¬¬ 
}√√ ©
∏D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapePlacementStrategy\IPlacementNodeFilterProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4"
ShapePlacementStrategy4 J
{ 
public 

	interface (
IPlacementNodeFilterProvider 1
{ 
string 
Key 
{ 
get 
; 
} 
bool 
IsMatch 
( !
ShapePlacementContext *
context+ 2
,2 3
JToken4 :

expression; E
)E F
;F G
}		 
}

 Ö*
ªD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapePlacementStrategy\PathPlacementNodeFilterProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4"
ShapePlacementStrategy4 J
{ 
public		 

class		 +
PathPlacementNodeFilterProvider		 0
:		1 2(
IPlacementNodeFilterProvider		3 O
{

 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public +
PathPlacementNodeFilterProvider .
(. / 
IHttpContextAccessor/ C
httpContextAccessorD W
)W X
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
string 
Key 
{ 
get 
{  !
return" (
$str) /
;/ 0
}1 2
}3 4
public 
bool 
IsMatch 
( !
ShapePlacementContext 1
context2 9
,9 :
JToken; A

expressionB L
)L M
{ 	
IEnumerable 
< 
string 
> 
paths  %
;% &
if 
( 

expression 
is 
JArray $
)$ %
{ 
paths 
= 

expression "
." #
Values# )
<) *
string* 0
>0 1
(1 2
)2 3
;3 4
} 
else 
{ 
paths 
= 
new 
string "
[" #
]# $
{% &

expression' 1
.1 2
Value2 7
<7 8
string8 >
>> ?
(? @
)@ A
}B C
;C D
} 
var!! 
requestPath!! 
=!!  
_httpContextAccessor!! 2
.!!2 3
HttpContext!!3 >
.!!> ?
Request!!? F
.!!F G
Path!!G K
.!!K L
Value!!L Q
;!!Q R
return## 
paths## 
.## 
Any## 
(## 
p## 
=>## !
{$$ 
var%% 
normalizedPath%% "
=%%# $
NormalizePath%%% 2
(%%2 3
p%%3 4
)%%4 5
;%%5 6
if'' 
('' 
normalizedPath'' "
.''" #
EndsWith''# +
(''+ ,
$char'', /
)''/ 0
)''0 1
{(( 
var)) 
prefix)) 
=))  
normalizedPath))! /
.))/ 0
	Substring))0 9
())9 :
$num)): ;
,)); <
normalizedPath))= K
.))K L
Length))L R
-))S T
$num))U V
)))V W
;))W X
return** 
requestPath** &
.**& '

StartsWith**' 1
(**1 2
prefix**2 8
,**8 9
StringComparison**: J
.**J K
OrdinalIgnoreCase**K \
)**\ ]
;**] ^
}++ 
normalizedPath-- 
=--  
AppendTrailingSlash--! 4
(--4 5
normalizedPath--5 C
)--C D
;--D E
requestPath.. 
=.. 
AppendTrailingSlash.. 1
(..1 2
requestPath..2 =
)..= >
;..> ?
return// 
requestPath// "
.//" #
Equals//# )
(//) *
normalizedPath//* 8
,//8 9
StringComparison//: J
.//J K
OrdinalIgnoreCase//K \
)//\ ]
;//] ^
}00 
)00 
;00 
}11 	
private33 
string33 
NormalizePath33 $
(33$ %
string33% +
path33, 0
)330 1
{44 	
if55 
(55 
path55 
.55 

StartsWith55 
(55  
$str55  $
,55$ %
StringComparison55& 6
.556 7
Ordinal557 >
)55> ?
)55? @
{66 
return77 
path77 
.77 
	Substring77 %
(77% &
$num77& '
)77' (
;77( )
}88 
else99 
if99 
(99 
!99 
path99 
.99 

StartsWith99 %
(99% &
$char99& )
)99) *
)99* +
{:: 
return;; 
$str;; 
+;; 
path;; !
;;;! "
}<< 
else== 
{>> 
return?? 
path?? 
;?? 
}@@ 
}AA 	
privateCC 
stringCC 
AppendTrailingSlashCC *
(CC* +
stringCC+ 1
pathCC2 6
)CC6 7
{DD 	
returnEE 
pathEE 
.EE 
EndsWithEE  
(EE  !
$charEE! $
)EE$ %
?EE& '
pathEE( ,
:EE- .
pathEE/ 3
+EE4 5
$strEE6 9
;EE9 :
}FF 	
}GG 
}HH †
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapePlacementStrategy\PlacementFile.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4"
ShapePlacementStrategy4 J
{ 
public 

class 
PlacementFile 
:  

Dictionary! +
<+ ,
string, 2
,2 3
PlacementNode4 A
[A B
]B C
>C D
{ 
}		 
public 

class 
PlacementNode 
{ 
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 2
)2 3
]3 4
public 
string 
DisplayType !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 5
)5 6
]6 7
public 
string 
Differentiator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% 1
)1 2
]2 3
public 
string 
[ 
] 

Alternates "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% /
)/ 0
]0 1
public 
string 
[ 
] 
Wrappers  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
PropertyName "
=# $
$str% ,
), -
]- .
public 
string 
	ShapeType 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonExtensionData	 
] 
public   
IDictionary   
<   
string   !
,  ! "
JToken  # )
>  ) *
Filters  + 2
{  3 4
get  5 8
;  8 9
set  : =
;  = >
}  ? @
=  A B
new  C F

Dictionary  G Q
<  Q R
string  R X
,  X Y
JToken  Z `
>  ` a
(  a b
)  b c
;  c d
}!! 
}"" ◊a
πD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapePlacementStrategy\ShapePlacementParsingStrategy.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4"
ShapePlacementStrategy4 J
{ 
public 

class )
ShapePlacementParsingStrategy .
:/ 0 
IShapeTableHarvester1 E
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly 
IEnumerable $
<$ %(
IPlacementNodeFilterProvider% A
>A B)
_placementParseMatchProvidersC `
;` a
public )
ShapePlacementParsingStrategy ,
(, -
IHostEnvironment 
hostingEnvironment /
,/ 0!
IShellFeaturesManager ! 
shellFeaturesManager" 6
,6 7
ILogger 
< )
ShapePlacementParsingStrategy 1
>1 2
logger3 9
,9 :
IEnumerable 
< (
IPlacementNodeFilterProvider 4
>4 5(
placementParseMatchProviders6 R
)R S
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5!
_shellFeaturesManager   !
=  " # 
shellFeaturesManager  $ 8
;  8 9)
_placementParseMatchProviders!! )
=!!* +(
placementParseMatchProviders!!, H
;!!H I
}"" 	
public$$ 
void$$ 
Discover$$ 
($$ 
ShapeTableBuilder$$ .
builder$$/ 6
)$$6 7
{%% 	
var&& 
enabledFeatures&& 
=&&  !!
_shellFeaturesManager&&" 7
.&&7 8#
GetEnabledFeaturesAsync&&8 O
(&&O P
)&&P Q
.&&Q R

GetAwaiter&&R \
(&&\ ]
)&&] ^
.&&^ _
	GetResult&&_ h
(&&h i
)&&i j
.'' 
Where'' 
('' 
Feature'' 
=>'' !
!''" #
builder''# *
.''* +
ExcludedFeatureIds''+ =
.''= >
Contains''> F
(''F G
Feature''G N
.''N O
Id''O Q
)''Q R
)''R S
;''S T
foreach)) 
()) 
var)) 
featureDescriptor)) *
in))+ -
enabledFeatures)). =
)))= >
{** $
ProcessFeatureDescriptor++ (
(++( )
builder++) 0
,++0 1
featureDescriptor++2 C
)++C D
;++D E
},, 
}-- 	
private// 
void// $
ProcessFeatureDescriptor// -
(//- .
ShapeTableBuilder//. ?
builder//@ G
,//G H
IFeatureInfo//I U
featureDescriptor//V g
)//g h
{00 	
var33 
virtualFileInfo33 
=33  !
_hostingEnvironment33" 5
.44  
GetExtensionFileInfo44 %
(44% &
featureDescriptor44& 7
.447 8
	Extension448 A
,44A B
$str44C S
)44S T
;44T U
if66 
(66 
virtualFileInfo66 
.66  
Exists66  &
)66& '
{77 
using88 
(88 
var88 
stream88 !
=88" #
virtualFileInfo88$ 3
.883 4
CreateReadStream884 D
(88D E
)88E F
)88F G
{99 
using:: 
(:: 
var:: 
reader:: %
=::& '
new::( +
StreamReader::, 8
(::8 9
stream::9 ?
)::? @
)::@ A
{;; 
using<< 
(<< 
var<< "
jtr<<# &
=<<' (
new<<) ,
JsonTextReader<<- ;
(<<; <
reader<<< B
)<<B C
)<<C D
{== 
JsonSerializer>> *

serializer>>+ 5
=>>6 7
new>>8 ;
JsonSerializer>>< J
(>>J K
)>>K L
;>>L M
var?? 
placementFile??  -
=??. /

serializer??0 :
.??: ;
Deserialize??; F
<??F G
PlacementFile??G T
>??T U
(??U V
jtr??V Y
)??Y Z
;??Z [ 
ProcessPlacementFile@@ 0
(@@0 1
builder@@1 8
,@@8 9
featureDescriptor@@: K
,@@K L
placementFile@@M Z
)@@Z [
;@@[ \
}AA 
}BB 
}CC 
}DD 
}EE 	
privateGG 
voidGG  
ProcessPlacementFileGG )
(GG) *
ShapeTableBuilderGG* ;
builderGG< C
,GGC D
IFeatureInfoGGE Q
featureDescriptorGGR c
,GGc d
PlacementFileGGe r
placementFile	GGs Ä
)
GGÄ Å
{HH 	
foreachII 
(II 
varII 
entryII 
inII !
placementFileII" /
)II/ 0
{JJ 
varKK 
	shapeTypeKK 
=KK 
entryKK  %
.KK% &
KeyKK& )
;KK) *
foreachMM 
(MM 
varMM 
filterMM #
inMM$ &
entryMM' ,
.MM, -
ValueMM- 2
)MM2 3
{NN 
varOO 
matchesOO 
=OO  !
filterOO" (
.OO( )
FiltersOO) 0
.OO0 1
ToListOO1 7
(OO7 8
)OO8 9
;OO9 :
FuncQQ 
<QQ !
ShapePlacementContextQQ .
,QQ. /
boolQQ0 4
>QQ4 5
	predicateQQ6 ?
=QQ@ A
ctxQQB E
=>QQF H
CheckFilterQQI T
(QQT U
ctxQQU X
,QQX Y
filterQQZ `
)QQ` a
;QQa b
ifSS 
(SS 
matchesSS 
.SS  
AnySS  #
(SS# $
)SS$ %
)SS% &
{TT 
	predicateUU !
=UU" #
matchesUU$ +
.UU+ ,
	AggregateUU, 5
(UU5 6
	predicateUU6 ?
,UU? @
BuildPredicateUUA O
)UUO P
;UUP Q
}VV 
varXX 
	placementXX !
=XX" #
newXX$ '
PlacementInfoXX( 5
(XX5 6
)XX6 7
;XX7 8
	placementZZ 
.ZZ 
LocationZZ &
=ZZ' (
filterZZ) /
.ZZ/ 0
LocationZZ0 8
;ZZ8 9
if[[ 
([[ 
filter[[ 
.[[ 

Alternates[[ )
?[[) *
.[[* +
Length[[+ 1
>[[2 3
$num[[4 5
)[[5 6
{\\ 
	placement]] !
.]]! "

Alternates]]" ,
=]]- .
new]]/ 2 
AlternatesCollection]]3 G
(]]G H
filter]]H N
.]]N O

Alternates]]O Y
)]]Y Z
;]]Z [
}^^ 
if`` 
(`` 
filter`` 
.`` 
Wrappers`` '
?``' (
.``( )
Length``) /
>``0 1
$num``2 3
)``3 4
{aa 
	placementbb !
.bb! "
Wrappersbb" *
=bb+ ,
newbb- 0 
AlternatesCollectionbb1 E
(bbE F
filterbbF L
.bbL M
WrappersbbM U
)bbU V
;bbV W
}cc 
	placementee 
.ee 
	ShapeTypeee '
=ee( )
filteree* 0
.ee0 1
	ShapeTypeee1 :
;ee: ;
buildergg 
.gg 
Describegg $
(gg$ %
	shapeTypegg% .
)gg. /
.hh 
Fromhh 
(hh 
featureDescriptorhh /
)hh/ 0
.ii 
	Placementii "
(ii" #
ctxii# &
=>ii' )
	predicateii* 3
(ii3 4
ctxii4 7
)ii7 8
,ii8 9
	placementii: C
)iiC D
;iiD E
}jj 
}kk 
}ll 	
publicnn 
staticnn 
boolnn 
CheckFilternn &
(nn& '!
ShapePlacementContextnn' <
ctxnn= @
,nn@ A
PlacementNodennB O
filternnP V
)nnV W
{oo 	
ifpp 
(pp 
!pp 
Stringpp 
.pp 
IsNullOrEmptypp %
(pp% &
filterpp& ,
.pp, -
DisplayTypepp- 8
)pp8 9
&&pp: <
filterpp= C
.ppC D
DisplayTypeppD O
!=ppP R
ctxppS V
.ppV W
DisplayTypeppW b
)ppb c
{qq 
returnrr 
falserr 
;rr 
}ss 
ifuu 
(uu 
!uu 
Stringuu 
.uu 
IsNullOrEmptyuu %
(uu% &
filteruu& ,
.uu, -
Differentiatoruu- ;
)uu; <
&&uu= ?
filteruu@ F
.uuF G
DifferentiatoruuG U
!=uuV X
ctxuuY \
.uu\ ]
Differentiatoruu] k
)uuk l
{vv 
returnww 
falseww 
;ww 
}xx 
returnzz 
truezz 
;zz 
}{{ 	
private}} 
Func}} 
<}} !
ShapePlacementContext}} *
,}}* +
bool}}, 0
>}}0 1
BuildPredicate}}2 @
(}}@ A
Func}}A E
<}}E F!
ShapePlacementContext}}F [
,}}[ \
bool}}] a
>}}a b
	predicate}}c l
,}}l m
KeyValuePair~~ 
<~~ 
string~~ !
,~~! "
JToken~~# )
>~~) *
term~~+ /
)~~/ 0
{ 	
return
ÄÄ 
BuildPredicate
ÄÄ !
(
ÄÄ! "
	predicate
ÄÄ" +
,
ÄÄ+ ,
term
ÄÄ- 1
,
ÄÄ1 2+
_placementParseMatchProviders
ÄÄ3 P
)
ÄÄP Q
;
ÄÄQ R
}
ÅÅ 	
public
ÉÉ 
static
ÉÉ 
Func
ÉÉ 
<
ÉÉ #
ShapePlacementContext
ÉÉ 0
,
ÉÉ0 1
bool
ÉÉ2 6
>
ÉÉ6 7
BuildPredicate
ÉÉ8 F
(
ÉÉF G
Func
ÉÉG K
<
ÉÉK L#
ShapePlacementContext
ÉÉL a
,
ÉÉa b
bool
ÉÉc g
>
ÉÉg h
	predicate
ÉÉi r
,
ÉÉr s
KeyValuePair
ÑÑ 
<
ÑÑ 
string
ÑÑ #
,
ÑÑ# $
JToken
ÑÑ% +
>
ÑÑ+ ,
term
ÑÑ- 1
,
ÑÑ1 2
IEnumerable
ÑÑ3 >
<
ÑÑ> ?*
IPlacementNodeFilterProvider
ÑÑ? [
>
ÑÑ[ \%
placementMatchProviders
ÑÑ] t
)
ÑÑt u
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ %
placementMatchProviders
ÜÜ '
!=
ÜÜ( *
null
ÜÜ+ /
)
ÜÜ/ 0
{
áá 
var
àà 
providersForTerm
àà $
=
àà% &%
placementMatchProviders
àà' >
.
àà> ?
Where
àà? D
(
ààD E
x
ààE F
=>
ààG I
x
ààJ K
.
ààK L
Key
ààL O
.
ààO P
Equals
ààP V
(
ààV W
term
ààW [
.
àà[ \
Key
àà\ _
)
àà_ `
)
àà` a
;
ààa b
if
ââ 
(
ââ 
providersForTerm
ââ $
.
ââ$ %
Any
ââ% (
(
ââ( )
)
ââ) *
)
ââ* +
{
ää 
var
ãã 

expression
ãã "
=
ãã# $
term
ãã% )
.
ãã) *
Value
ãã* /
;
ãã/ 0
return
åå 
ctx
åå 
=>
åå !
providersForTerm
åå" 2
.
åå2 3
Any
åå3 6
(
åå6 7
x
åå7 8
=>
åå9 ;
x
åå< =
.
åå= >
IsMatch
åå> E
(
ååE F
ctx
ååF I
,
ååI J

expression
ååK U
)
ååU V
)
ååV W
&&
ååX Z
	predicate
åå[ d
(
ååd e
ctx
ååe h
)
ååh i
;
ååi j
}
çç 
}
éé 
return
èè 
	predicate
èè 
;
èè 
}
êê 	
}
ëë 
}íí Ú

èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTable.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class 

ShapeTable 
{ 
public 

ShapeTable 
( 

Dictionary $
<$ %
string% +
,+ ,
ShapeDescriptor- <
>< =
descriptors> I
,I J

DictionaryK U
<U V
stringV \
,\ ]
ShapeBinding^ j
>j k
bindingsl t
)t u
{ 	
Descriptors		 
=		 
descriptors		 %
;		% &
Bindings

 
=

 
bindings

 
;

  
} 	
public 

Dictionary 
< 
string  
,  !
ShapeDescriptor" 1
>1 2
Descriptors3 >
{? @
getA D
;D E
}F G
public 

Dictionary 
< 
string  
,  !
ShapeBinding" .
>. /
Bindings0 8
{9 :
get; >
;> ?
}@ A
} 
} ê
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTableBuilder.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class 
ShapeTableBuilder "
{ 
private		 
readonly		 
IList		 
<		 "
ShapeAlterationBuilder		 5
>		5 6
_alterationBuilders		7 J
=		K L
new		M P
List		Q U
<		U V"
ShapeAlterationBuilder		V l
>		l m
(		m n
)		n o
;		o p
private

 
readonly

 
IFeatureInfo

 %
_feature

& .
;

. /
public 
ShapeTableBuilder  
(  !
IFeatureInfo! -
feature. 5
,5 6
IReadOnlyCollection7 J
<J K
stringK Q
>Q R
excludedFeatureIdsS e
=f g
nullh l
)l m
{ 	
_feature 
= 
feature 
; 
ExcludedFeatureIds 
=  
excludedFeatureIds! 3
??4 6
new7 :
HashSet; B
<B C
stringC I
>I J
(J K
)K L
;L M
} 	
public 
IReadOnlyCollection "
<" #
string# )
>) *
ExcludedFeatureIds+ =
{> ?
get@ C
;C D
}E F
public "
ShapeAlterationBuilder %
Describe& .
(. /
string/ 5
	shapeType6 ?
)? @
{ 	
var 
alterationBuilder !
=" #
new$ '"
ShapeAlterationBuilder( >
(> ?
_feature? G
,G H
	shapeTypeI R
)R S
;S T
_alterationBuilders 
.  
Add  #
(# $
alterationBuilder$ 5
)5 6
;6 7
return 
alterationBuilder $
;$ %
} 	
public 
IEnumerable 
< 
ShapeAlteration *
>* +
BuildAlterations, <
(< =
)= >
{ 	
return 
_alterationBuilders &
.& '
Select' -
(- .
b. /
=>0 2
b3 4
.4 5
Build5 :
(: ;
); <
)< =
;= >
} 	
} 
}   Ú
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTablePlacementProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
{ 
public 

class '
ShapeTablePlacementProvider ,
:- .#
IShapePlacementProvider/ F
{ 
private		 
readonly		 
IShapeTableManager		 +
_shapeTableManager		, >
;		> ?
private

 
readonly

 
IThemeManager

 &
_themeManager

' 4
;

4 5
public '
ShapeTablePlacementProvider *
(* +
IShapeTableManager 
shapeTableManager 0
,0 1
IThemeManager 
themeManager &
) 
{ 	
_shapeTableManager 
=  
shapeTableManager! 2
;2 3
_themeManager 
= 
themeManager (
;( )
} 	
public 
async 
Task 
< "
IPlacementInfoResolver 0
>0 1+
BuildPlacementInfoResolverAsync2 Q
(Q R
IBuildShapeContextR d
contexte l
)l m
{ 	
var 
theme 
= 
await 
_themeManager +
.+ ,
GetThemeAsync, 9
(9 :
): ;
;; <
if 
( 
theme 
== 
null 
) 
{ 
return 
null 
; 
} 
var 

shapeTable 
= 
_shapeTableManager /
./ 0
GetShapeTable0 =
(= >
theme> C
.C D
IdD F
)F G
;G H
return!! 
new!! '
ShapeTablePlacementResolver!! 2
(!!2 3

shapeTable!!3 =
)!!= >
;!!> ?
}"" 	
private$$ 
class$$ '
ShapeTablePlacementResolver$$ 1
:$$2 3"
IPlacementInfoResolver$$4 J
{%% 	
private&& 
readonly&& 

ShapeTable&& '
_shapeTable&&( 3
;&&3 4
internal(( '
ShapeTablePlacementResolver(( 0
(((0 1

ShapeTable((1 ;

shapeTable((< F
)((F G
{)) 
_shapeTable** 
=** 

shapeTable** (
;**( )
}++ 
public-- 
PlacementInfo--  
ResolvePlacement--! 1
(--1 2!
ShapePlacementContext--2 G
placementContext--H X
)--X Y
{.. 
if// 
(// 
_shapeTable// 
.//  
Descriptors//  +
.//+ ,
TryGetValue//, 7
(//7 8
placementContext//8 H
.//H I
	ShapeType//I R
,//R S
out//T W
var//X [

descriptor//\ f
)//f g
)//g h
{00 
var11 
	placement11 !
=11" #

descriptor11$ .
.11. /
	Placement11/ 8
(118 9
placementContext119 I
)11I J
;11J K
if22 
(22 
	placement22 !
!=22" $
null22% )
)22) *
{33 
	placement44 !
.44! "
Source44" (
=44) *
placementContext44+ ;
.44; <
Source44< B
;44B C
return55 
	placement55 (
;55( )
}66 
}77 
return99 
null99 
;99 
}:: 
};; 	
}<< 
}== §/
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\BasicShapeTemplateHarvester.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

class '
BasicShapeTemplateHarvester ,
:- .#
IShapeTemplateHarvester/ F
{ 
public 
IEnumerable 
< 
string !
>! "
SubPaths# +
(+ ,
), -
{		 	
return

 
new

 
[

 
]

 
{

 
$str

 "
,

" #
$str

$ 1
,

1 2
$str

3 @
,

@ A
$str

B P
,

P Q
$str

R b
}

c d
;

d e
} 	
public 
IEnumerable 
< 
HarvestShapeHit *
>* +
HarvestShape, 8
(8 9
HarvestShapeInfo9 I
infoJ N
)N O
{ 	
var 
lastDash 
= 
info 
.  
FileName  (
.( )
LastIndexOf) 4
(4 5
$char5 8
)8 9
;9 :
var 
lastDot 
= 
info 
. 
FileName '
.' (
LastIndexOf( 3
(3 4
$char4 7
)7 8
;8 9
if 
( 
lastDot 
<= 
$num 
|| 
lastDot  '
<( )
lastDash* 2
)2 3
{ 
yield 
return 
new  
HarvestShapeHit! 0
{ 
	ShapeType 
= 
Adjust  &
(& '
info' +
.+ ,
SubPath, 3
,3 4
info5 9
.9 :
FileName: B
,B C
nullD H
)H I
} 
; 
} 
else 
{ 
var 
displayType 
=  !
info" &
.& '
FileName' /
./ 0
	Substring0 9
(9 :
lastDot: A
+B C
$numD E
)E F
;F G
yield 
return 
new  
HarvestShapeHit! 0
{ 
	ShapeType 
= 
Adjust  &
(& '
info' +
.+ ,
SubPath, 3
,3 4
info5 9
.9 :
FileName: B
.B C
	SubstringC L
(L M
$numM N
,N O
lastDotP W
)W X
,X Y
displayTypeZ e
)e f
,f g
DisplayType 
=  !
displayType" -
} 
; 
}   
}!! 	
private## 
static## 
string## 
Adjust## $
(##$ %
string##% +
subPath##, 3
,##3 4
string##5 ;
fileName##< D
,##D E
string##F L
displayType##M X
)##X Y
{$$ 	
var%% 
leader%% 
=%% 
$str%% 
;%% 
if&& 
(&& 
subPath&& 
.&& 

StartsWith&& "
(&&" #
$str&&# +
,&&+ ,
StringComparison&&- =
.&&= >
Ordinal&&> E
)&&E F
&&&&G I
subPath&&J Q
!=&&R T
$str&&U b
)&&b c
{'' 
leader(( 
=(( 
subPath((  
.((  !
	Substring((! *
(((* +
$str((+ 3
.((3 4
Length((4 :
)((: ;
+((< =
$str((> A
;((A B
})) 
var-- 
	shapeType-- 
=-- 
leader-- "
+--# $
fileName--% -
.--- .
Replace--. 5
(--5 6
$str--6 :
,--: ;
$str--< @
)--@ A
.--A B
Replace--B I
(--I J
$str--J M
,--M N
$str--O S
)--S T
.--T U
Replace--U \
(--\ ]
$char--] `
,--` a
$char--b e
)--e f
;--f g
if// 
(// 
string// 
.// 
IsNullOrEmpty// $
(//$ %
displayType//% 0
)//0 1
)//1 2
{00 
return11 
	shapeType11  
.11  !
ToLowerInvariant11! 1
(111 2
)112 3
;113 4
}22 
var33 "
firstBreakingSeparator33 &
=33' (
	shapeType33) 2
.332 3
IndexOf333 :
(33: ;
$str33; ?
,33? @
StringComparison33A Q
.33Q R
Ordinal33R Y
)33Y Z
;33Z [
if44 
(44 "
firstBreakingSeparator44 &
<=44' )
$num44* +
)44+ ,
{55 
return66 
(66 
	shapeType66 !
+66" #
$str66$ '
+66( )
displayType66* 5
)665 6
.666 7
ToLowerInvariant667 G
(66G H
)66H I
;66I J
}77 
return99 
(99 
	shapeType99 
.99 
	Substring99 '
(99' (
$num99( )
,99) *"
firstBreakingSeparator99+ A
)99A B
+99C D
$str99E H
+99I J
displayType99K V
+99W X
	shapeType99Y b
.99b c
	Substring99c l
(99l m#
firstBreakingSeparator	99m É
)
99É Ñ
)
99Ñ Ö
.
99Ö Ü
ToLowerInvariant
99Ü ñ
(
99ñ ó
)
99ó ò
;
99ò ô
}:: 	
};; 
}<< õ
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\HarvestShapeHit.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

class 
HarvestShapeHit  
{ 
public 
string 
	ShapeType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
DisplayType !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ’
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\HarvestShapeInfo.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

class 
HarvestShapeInfo !
{ 
public 
string 
SubPath 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
RelativePath "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	Extension 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ¸
ΩD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\IShapeTemplateFileProviderAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

	interface .
"IShapeTemplateFileProviderAccessor 7
{		 
IFileProvider 
FileProvider "
{# $
get% (
;( )
}* +
} 
} Ã
≤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\IShapeTemplateHarvester.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public		 

	interface		 #
IShapeTemplateHarvester		 ,
{

 
IEnumerable 
< 
string 
> 
SubPaths $
($ %
)% &
;& '
IEnumerable 
< 
HarvestShapeHit #
># $
HarvestShape% 1
(1 2
HarvestShapeInfo2 B
infoC G
)G H
;H I
} 
} ß
≥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\IShapeTemplateViewEngine.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

	interface $
IShapeTemplateViewEngine -
{		 
IEnumerable

 
<

 
string

 
>

 "
TemplateFileExtensions

 2
{

3 4
get

5 8
;

8 9
}

: ;
Task 
< 
IHtmlContent 
> 
RenderAsync &
(& '
string' -
relativePath. :
,: ;
DisplayContext< J
displayContextK Y
)Y Z
;Z [
} 
} ∑Ñ
∑D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\ShapeTemplateBindingStrategy.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

class (
ShapeTemplateBindingStrategy -
:. / 
IShapeTableHarvester0 D
{ 
private 
readonly 
IEnumerable $
<$ %#
IShapeTemplateHarvester% <
>< =
_harvesters> I
;I J
private 
readonly 
IEnumerable $
<$ %$
IShapeTemplateViewEngine% =
>= >%
_shapeTemplateViewEngines? X
;X Y
private 
readonly .
"IShapeTemplateFileProviderAccessor ;!
_fileProviderAccessor< Q
;Q R
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly 

Dictionary #
<# $
string$ *
,* +$
IShapeTemplateViewEngine, D
>D E#
_viewEnginesByExtensionF ]
=^ _
new 

Dictionary 
< 
string !
,! "$
IShapeTemplateViewEngine# ;
>; <
(< =
StringComparer= K
.K L
OrdinalIgnoreCaseL ]
)] ^
;^ _
public (
ShapeTemplateBindingStrategy +
(+ ,
IEnumerable 
< #
IShapeTemplateHarvester /
>/ 0

harvesters1 ;
,; <!
IShellFeaturesManager ! 
shellFeaturesManager" 6
,6 7
IEnumerable 
< $
IShapeTemplateViewEngine 0
>0 1$
shapeTemplateViewEngines2 J
,J K.
"IShapeTemplateFileProviderAccessor . 
fileProviderAccessor/ C
,C D
ILogger 
< $
DefaultShapeTableManager ,
>, -
logger. 4
)4 5
{   	
_harvesters!! 
=!! 

harvesters!! $
;!!$ %!
_shellFeaturesManager"" !
=""" # 
shellFeaturesManager""$ 8
;""8 9%
_shapeTemplateViewEngines## %
=##& '$
shapeTemplateViewEngines##( @
;##@ A!
_fileProviderAccessor$$ !
=$$" # 
fileProviderAccessor$$$ 8
;$$8 9
_logger%% 
=%% 
logger%% 
;%% 
}&& 	
public(( 
bool(( 
DisableMonitoring(( %
{((& '
get((( +
;((+ ,
set((- 0
;((0 1
}((2 3
private** 
static** 
IEnumerable** "
<**" #
IExtensionInfo**# 1
>**1 2
Once**3 7
(**7 8
IEnumerable**8 C
<**C D
IFeatureInfo**D P
>**P Q
featureDescriptors**R d
)**d e
{++ 	
var,, 
once,, 
=,, 
new,,  
ConcurrentDictionary,, /
<,,/ 0
string,,0 6
,,,6 7
object,,8 >
>,,> ?
(,,? @
),,@ A
;,,A B
return-- 
featureDescriptors-- %
.--% &
Select--& ,
(--, -
x--- .
=>--/ 1
x--2 3
.--3 4
	Extension--4 =
)--= >
.--> ?
Where--? D
(--D E
ed--E G
=>--H J
once--K O
.--O P
TryAdd--P V
(--V W
ed--W Y
.--Y Z
Id--Z \
,--\ ]
null--^ b
)--b c
)--c d
.--d e
ToList--e k
(--k l
)--l m
;--m n
}.. 	
public00 
void00 
Discover00 
(00 
ShapeTableBuilder00 .
builder00/ 6
)006 7
{11 	
if22 
(22 
_logger22 
.22 
	IsEnabled22 !
(22! "
LogLevel22" *
.22* +
Information22+ 6
)226 7
)227 8
{33 
_logger44 
.44 
LogInformation44 &
(44& '
$str44' A
)44A B
;44B C
}55 
var77 
harvesterInfos77 
=77  
_harvesters77! ,
.88 
Select88 
(88 
	harvester88 !
=>88" $
new88% (
{88) *
	harvester88+ 4
,884 5
subPaths886 >
=88? @
	harvester88A J
.88J K
SubPaths88K S
(88S T
)88T U
}88V W
)88W X
.99 
ToList99 
(99 
)99 
;99 
var;; 
enabledFeatures;; 
=;;  !!
_shellFeaturesManager;;" 7
.;;7 8#
GetEnabledFeaturesAsync;;8 O
(;;O P
);;P Q
.;;Q R

GetAwaiter;;R \
(;;\ ]
);;] ^
.;;^ _
	GetResult;;_ h
(;;h i
);;i j
;;;j k
var<< 
enabledFeatureIds<< !
=<<" #
enabledFeatures<<$ 3
.<<3 4
Select<<4 :
(<<: ;
f<<; <
=><<= ?
f<<@ A
.<<A B
Id<<B D
)<<D E
.<<E F
ToArray<<F M
(<<M N
)<<N O
;<<O P
var?? 
activeExtensions??  
=??! "
Once??# '
(??' (
enabledFeatures??( 7
)??7 8
.@@ 
Where@@ 
(@@ 
e@@ 
=>@@ 
!@@ 
e@@ 
.@@ 
Features@@ '
.@@' (
Any@@( +
(@@+ ,
f@@, -
=>@@. 0
builder@@1 8
.@@8 9
ExcludedFeatureIds@@9 K
.@@K L
Contains@@L T
(@@T U
f@@U V
.@@V W
Id@@W Y
)@@Y Z
&&@@[ ]
enabledFeatureIds@@^ o
.@@o p
Contains@@p x
(@@x y
f@@y z
.@@z {
Id@@{ }
)@@} ~
)@@~ 
)	@@ Ä
.AA 
ToArrayAA 
(AA 
)AA 
;AA 
ifCC 
(CC 
!CC #
_viewEnginesByExtensionCC (
.CC( )
AnyCC) ,
(CC, -
)CC- .
)CC. /
{DD 
foreachEE 
(EE 
varEE 

viewEngineEE '
inEE( *%
_shapeTemplateViewEnginesEE+ D
)EED E
{FF 
foreachGG 
(GG 
varGG  
	extensionGG! *
inGG+ -

viewEngineGG. 8
.GG8 9"
TemplateFileExtensionsGG9 O
)GGO P
{HH 
ifII 
(II 
!II #
_viewEnginesByExtensionII 4
.II4 5
ContainsKeyII5 @
(II@ A
	extensionIIA J
)IIJ K
)IIK L
{JJ #
_viewEnginesByExtensionKK 3
[KK3 4
	extensionKK4 =
]KK= >
=KK? @

viewEngineKKA K
;KKK L
}LL 
}MM 
}NN 
}OO 
varQQ 
hitsQQ 
=QQ 
activeExtensionsQQ '
.QQ' (
SelectQQ( .
(QQ. /
extensionDescriptorQQ/ B
=>QQC E
{RR 
ifSS 
(SS 
_loggerSS 
.SS 
	IsEnabledSS %
(SS% &
LogLevelSS& .
.SS. /
InformationSS/ :
)SS: ;
)SS; <
{TT 
_loggerUU 
.UU 
LogInformationUU *
(UU* +
$strUU+ X
)UUX Y
;UUY Z
}VV 
varXX 
pathContextsXX  
=XX! "
harvesterInfosXX# 1
.XX1 2

SelectManyXX2 <
(XX< =
harvesterInfoXX= J
=>XXK M
harvesterInfoXXN [
.XX[ \
subPathsXX\ d
.XXd e
SelectXXe k
(XXk l
subPathXXl s
=>XXt v
{YY 
varZZ 
	filePathsZZ !
=ZZ" #!
_fileProviderAccessorZZ$ 9
.ZZ9 :
FileProviderZZ: F
.ZZF G
GetViewFilePathsZZG W
(ZZW X
PathExtensions[[ &
.[[& '
Combine[[' .
([[. /
extensionDescriptor[[/ B
.[[B C
SubPath[[C J
,[[J K
subPath[[L S
)[[S T
,[[T U#
_viewEnginesByExtension\\ /
.\\/ 0
Keys\\0 4
.\\4 5
ToArray\\5 <
(\\< =
)\\= >
,\\> ?
inViewsFolder]] %
:]]% &
true]]' +
,]]+ ,
inDepth]]- 4
:]]4 5
false]]6 ;
)]]; <
.]]< =
ToArray]]= D
(]]D E
)]]E F
;]]F G
return__ 
new__ 
{__  
harvesterInfo__! .
.__. /
	harvester__/ 8
,__8 9
subPath__: A
,__A B
	filePaths__C L
}__M N
;__N O
}`` 
)`` 
)`` 
.aa 
ToListaa 
(aa 
)aa 
;aa 
ifcc 
(cc 
_loggercc 
.cc 
	IsEnabledcc %
(cc% &
LogLevelcc& .
.cc. /
Informationcc/ :
)cc: ;
)cc; <
{dd 
_loggeree 
.ee 
LogInformationee *
(ee* +
$stree+ W
)eeW X
;eeX Y
}ff 
varhh 
fileContextshh  
=hh! "
pathContextshh# /
.hh/ 0

SelectManyhh0 :
(hh: ;
pathContexthh; F
=>hhG I%
_shapeTemplateViewEngineshhJ c
.hhc d

SelectManyhhd n
(hhn o
vehho q
=>hhr t
{ii 
returnjj 
pathContextjj &
.jj& '
	filePathsjj' 0
.jj0 1
Selectjj1 7
(jj7 8
filePathkk  
=>kk! #
newkk$ '
{ll 
fileNamemm $
=mm% &
Pathmm' +
.mm+ ,'
GetFileNameWithoutExtensionmm, G
(mmG H
filePathmmH P
)mmP Q
,mmQ R
relativePathnn (
=nn) *
filePathnn+ 3
,nn3 4
pathContextoo '
}pp 
)pp 
;pp 
}qq 
)qq 
)qq 
;qq 
varss 
shapeContextsss !
=ss" #
fileContextsss$ 0
.ss0 1

SelectManyss1 ;
(ss; <
fileContextss< G
=>ssH J
{tt 
varuu 
harvestShapeInfouu (
=uu) *
newuu+ .
HarvestShapeInfouu/ ?
{vv 
SubPathww 
=ww  !
fileContextww" -
.ww- .
pathContextww. 9
.ww9 :
subPathww: A
,wwA B
FileNamexx  
=xx! "
fileContextxx# .
.xx. /
fileNamexx/ 7
,xx7 8
RelativePathyy $
=yy% &
fileContextyy' 2
.yy2 3
relativePathyy3 ?
,yy? @
	Extensionzz !
=zz" #
Pathzz$ (
.zz( )
GetExtensionzz) 5
(zz5 6
fileContextzz6 A
.zzA B
relativePathzzB N
)zzN O
}{{ 
;{{ 
var|| 
harvestShapeHits|| (
=||) *
fileContext||+ 6
.||6 7
pathContext||7 B
.||B C
	harvester||C L
.||L M
HarvestShape||M Y
(||Y Z
harvestShapeInfo||Z j
)||j k
;||k l
return}} 
harvestShapeHits}} +
.}}+ ,
Select}}, 2
(}}2 3
harvestShapeHit}}3 B
=>}}C E
new}}F I
{}}J K
harvestShapeInfo}}L \
,}}\ ]
harvestShapeHit}}^ m
,}}m n
fileContext}}o z
}}}{ |
)}}| }
;}}} ~
}~~ 
)~~ 
;~~ 
return
ÄÄ 
shapeContexts
ÄÄ $
.
ÄÄ$ %
Select
ÄÄ% +
(
ÄÄ+ ,
shapeContext
ÄÄ, 8
=>
ÄÄ9 ;
new
ÄÄ< ?
{
ÄÄ@ A!
extensionDescriptor
ÄÄB U
,
ÄÄU V
shapeContext
ÄÄW c
}
ÄÄd e
)
ÄÄe f
.
ÄÄf g
ToList
ÄÄg m
(
ÄÄm n
)
ÄÄn o
;
ÄÄo p
}
ÅÅ 
)
ÅÅ 
.
ÅÅ 

SelectMany
ÅÅ 
(
ÅÅ 
hits2
ÅÅ 
=>
ÅÅ  "
hits2
ÅÅ# (
)
ÅÅ( )
;
ÅÅ) *
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
iter
ÉÉ 
in
ÉÉ  
hits
ÉÉ! %
)
ÉÉ% &
{
ÑÑ 
var
ÖÖ 
hit
ÖÖ 
=
ÖÖ 
iter
ÖÖ 
;
ÖÖ 
var
àà 
feature
àà 
=
àà 
hit
àà !
.
àà! "!
extensionDescriptor
àà" 5
.
àà5 6
Features
àà6 >
.
àà> ?
First
àà? D
(
ààD E
f
ààE F
=>
ààG I
enabledFeatureIds
ààJ [
.
àà[ \
Contains
àà\ d
(
ààd e
f
ààe f
.
ààf g
Id
ààg i
)
àài j
)
ààj k
;
ààk l
if
ää 
(
ää 
_logger
ää 
.
ää 
	IsEnabled
ää %
(
ää% &
LogLevel
ää& .
.
ää. /
Debug
ää/ 4
)
ää4 5
)
ää5 6
{
ãã 
_logger
åå 
.
åå 
LogDebug
åå $
(
åå$ %
$str
åå% r
,
åår s
hit
çç 
.
çç 
shapeContext
çç (
.
çç( )
harvestShapeInfo
çç) 9
.
çç9 :
RelativePath
çç: F
,
ççF G
iter
éé 
.
éé 
shapeContext
éé )
.
éé) *
harvestShapeHit
éé* 9
.
éé9 :
	ShapeType
éé: C
,
ééC D
feature
èè 
.
èè  
Id
èè  "
)
èè" #
;
èè# $
}
êê 
var
íí 
viewEngineType
íí "
=
íí# $%
_viewEnginesByExtension
íí% <
[
íí< =
iter
íí= A
.
ííA B
shapeContext
ííB N
.
ííN O
harvestShapeInfo
ííO _
.
íí_ `
	Extension
íí` i
]
ííi j
.
ííj k
GetType
íík r
(
íír s
)
íís t
;
íít u
builder
îî 
.
îî 
Describe
îî  
(
îî  !
iter
îî! %
.
îî% &
shapeContext
îî& 2
.
îî2 3
harvestShapeHit
îî3 B
.
îîB C
	ShapeType
îîC L
)
îîL M
.
ïï 
From
ïï 
(
ïï 
feature
ïï !
)
ïï! "
.
ññ 
BoundAs
ññ 
(
ññ 
hit
óó 
.
óó 
shapeContext
óó (
.
óó( )
harvestShapeInfo
óó) 9
.
óó9 :
RelativePath
óó: F
,
óóF G
displayContext
óóH V
=>
óóW Y
{
òò 
var
ôô 

viewEngine
ôô  *
=
ôô+ ,
displayContext
ôô- ;
.
ôô; <
ServiceProvider
ôô< K
.
öö  !
GetServices
öö! ,
<
öö, -&
IShapeTemplateViewEngine
öö- E
>
ööE F
(
ööF G
)
ööG H
.
õõ  !
FirstOrDefault
õõ! /
(
õõ/ 0
e
õõ0 1
=>
õõ2 4
e
õõ5 6
.
õõ6 7
GetType
õõ7 >
(
õõ> ?
)
õõ? @
==
õõA C
viewEngineType
õõD R
)
õõR S
;
õõS T
return
ùù "

viewEngine
ùù# -
.
ùù- .
RenderAsync
ùù. 9
(
ùù9 :
hit
ùù: =
.
ùù= >
shapeContext
ùù> J
.
ùùJ K
harvestShapeInfo
ùùK [
.
ùù[ \
RelativePath
ùù\ h
,
ùùh i
displayContext
ùùj x
)
ùùx y
;
ùùy z
}
ûû 
)
ûû 
;
ûû 
}
üü 
if
°° 
(
°° 
_logger
°° 
.
°° 
	IsEnabled
°° !
(
°°! "
LogLevel
°°" *
.
°°* +
Information
°°+ 6
)
°°6 7
)
°°7 8
{
¢¢ 
_logger
££ 
.
££ 
LogInformation
££ &
(
££& '
$str
££' @
)
££@ A
;
££A B
}
§§ 
}
•• 	
}
¶¶ 
}ßß ≥
ºD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\ShapeTemplateFileProviderAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public		 

class		 -
!ShapeTemplateFileProviderAccessor		 2
:		3 4.
"IShapeTemplateFileProviderAccessor		5 W
{

 
public -
!ShapeTemplateFileProviderAccessor 0
(0 1
IOptions1 9
<9 : 
ShapeTemplateOptions: N
>N O
optionsAccessorP _
)_ `
{ 	
var 
fileProviders 
= 
optionsAccessor  /
./ 0
Value0 5
.5 6
FileProviders6 C
;C D
if 
( 
fileProviders 
. 
Count #
==$ &
$num' (
)( )
{ 
FileProvider 
= 
new "
NullFileProvider# 3
(3 4
)4 5
;5 6
} 
else 
if 
( 
fileProviders "
." #
Count# (
==) +
$num, -
)- .
{ 
FileProvider 
= 
fileProviders ,
[, -
$num- .
]. /
;/ 0
} 
else 
{ 
FileProvider 
= 
new "!
CompositeFileProvider# 8
(8 9
fileProviders9 F
)F G
;G H
} 
} 	
public$$ 
IFileProvider$$ 
FileProvider$$ )
{$$* +
get$$, /
;$$/ 0
}$$1 2
}%% 
}&& ∫
ØD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\ShapeTemplateOptions.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public		 

class		  
ShapeTemplateOptions		 %
{

 
public 
IList 
< 
IFileProvider "
>" #
FileProviders$ 1
{2 3
get4 7
;7 8
}9 :
=; <
new= @
ListA E
<E F
IFileProviderF S
>S T
(T U
)U V
;V W
} 
} ›
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Descriptors\ShapeTemplateStrategy\ShapeTemplateOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Descriptors( 3
.3 4!
ShapeTemplateStrategy4 I
{ 
public 

class %
ShapeTemplateOptionsSetup *
:+ ,
IConfigureOptions- >
<> ? 
ShapeTemplateOptions? S
>S T
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public %
ShapeTemplateOptionsSetup (
(( )
IHostEnvironment) 9
hostingEnvironment: L
,L M
IApplicationContextN a
applicationContextb t
)t u
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _
hostingEnvironment_ q
)q r
)r s
;s t
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
public 
void 
	Configure 
(  
ShapeTemplateOptions 2
options3 :
): ;
{ 	
if 
( 
_hostingEnvironment #
.# $#
ContentRootFileProvider$ ;
!=< >
null? C
)C D
{ 
options   
.   
FileProviders   %
.  % &
Add  & )
(  ) *
_hostingEnvironment  * =
.  = >#
ContentRootFileProvider  > U
)  U V
;  V W
}!! 
options%% 
.%% 
FileProviders%% !
.%%! "
Insert%%" (
(%%( )
$num%%) *
,%%* +
new%%, /'
ApplicationViewFileProvider%%0 K
(%%K L
_applicationContext%%L _
)%%_ `
)%%` a
;%%a b
}&& 	
}'' 
}(( ˜a
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\DisplayManager.cs
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
DisplayManagement

 '
{ 
public 

class 
DisplayManager 
<  
TModel  &
>& '
:( )
BaseDisplayManager* <
,< =
IDisplayManager> M
<M N
TModelN T
>T U
{ 
private 
readonly 
IEnumerable $
<$ %
IDisplayDriver% 3
<3 4
TModel4 :
>: ;
>; <
_drivers= E
;E F
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
private 
readonly 
ILayoutAccessor (
_layoutAccessor) 8
;8 9
private 
readonly 
ILogger  
_logger! (
;( )
public 
DisplayManager 
( 
IEnumerable 
< 
IDisplayDriver &
<& '
TModel' -
>- .
>. /
drivers0 7
,7 8
IShapeFactory 
shapeFactory &
,& '
IEnumerable 
< #
IShapePlacementProvider /
>/ 0
placementProviders1 C
,C D
ILogger 
< 
DisplayManager "
<" #
TModel# )
>) *
>* +
logger, 2
,2 3
ILayoutAccessor 
layoutAccessor *
) 
: 
base 
( 
shapeFactory !
,! "
placementProviders# 5
)5 6
{ 	
_shapeFactory 
= 
shapeFactory (
;( )
_layoutAccessor 
= 
layoutAccessor ,
;, -
_drivers 
= 
drivers 
; 
_logger 
= 
logger 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
IShape!!  
>!!  !
BuildDisplayAsync!!" 3
(!!3 4
TModel!!4 :
model!!; @
,!!@ A
IUpdateModel!!B N
updater!!O V
,!!V W
string!!X ^
displayType!!_ j
=!!k l
null!!m q
,!!q r
string!!s y
group!!z 
=
!!Ä Å
null
!!Ç Ü
)
!!Ü á
{"" 	
var## 
actualShapeType## 
=##  !
typeof##" (
(##( )
TModel##) /
)##/ 0
.##0 1
Name##1 5
;##5 6
var%% 
actualDisplayType%% !
=%%" #
string%%$ *
.%%* +
IsNullOrEmpty%%+ 8
(%%8 9
displayType%%9 D
)%%D E
?%%F G
$str%%H P
:%%Q R
displayType%%S ^
;%%^ _
if(( 
((( 
actualDisplayType(( !
!=((" $
$str((% -
)((- .
{)) 
actualShapeType** 
=**  !
actualShapeType**" 1
+**2 3
$str**4 7
+**8 9
actualDisplayType**: K
;**K L
}++ 
var-- 
shape-- 
=-- 
await-- #
CreateContentShapeAsync-- 5
(--5 6
actualShapeType--6 E
)--E F
;--F G
shape00 
.00 
Metadata00 
.00 

Alternates00 %
.00% &
Add00& )
(00) *
$"00* ,
{00, -
actualShapeType00- <
}00< =
__00= ?
{00? @
model00@ E
.00E F
GetType00F M
(00M N
)00N O
.00O P
Name00P T
}00T U
"00U V
)00V W
;00W X
var22 
context22 
=22 
new22 
BuildDisplayContext22 1
(221 2
shape33 
,33 
actualDisplayType44 !
,44! "
group55 
??55 
$str55 
,55 
_shapeFactory66 
,66 
await77 
_layoutAccessor77 %
.77% &
GetLayoutAsync77& 4
(774 5
)775 6
,776 7
new88 $
ModelStateWrapperUpdater88 ,
(88, -
updater88- 4
)884 5
)99 
;99 
await;; 
BindPlacementAsync;; $
(;;$ %
context;;% ,
);;, -
;;;- .
await== 
_drivers== 
.== 
InvokeAsync== &
(==& '
async==' ,
(==- .
driver==. 4
,==4 5
model==6 ;
,==; <
context=== D
)==D E
=>==F H
{>> 
var?? 
result?? 
=?? 
await?? "
driver??# )
.??) *
BuildDisplayAsync??* ;
(??; <
model??< A
,??A B
context??C J
)??J K
;??K L
if@@ 
(@@ 
result@@ 
!=@@ 
null@@ "
)@@" #
{AA 
awaitBB 
resultBB  
.BB  !

ApplyAsyncBB! +
(BB+ ,
contextBB, 3
)BB3 4
;BB4 5
}CC 
}DD 
,DD 
modelDD 
,DD 
contextDD 
,DD 
_loggerDD &
)DD& '
;DD' (
returnFF 
shapeFF 
;FF 
}GG 	
publicII 
asyncII 
TaskII 
<II 
IShapeII  
>II  !
BuildEditorAsyncII" 2
(II2 3
TModelII3 9
modelII: ?
,II? @
IUpdateModelIIA M
updaterIIN U
,IIU V
boolIIW [
isNewII\ a
,IIa b
stringIIc i
groupIIj o
=IIp q
nullIIr v
)IIv w
{JJ 	
varKK 
actualShapeTypeKK 
=KK  !
typeofKK" (
(KK( )
TModelKK) /
)KK/ 0
.KK0 1
NameKK1 5
+KK6 7
$strKK8 ?
;KK? @
varMM 
shapeMM 
=MM 
awaitMM #
CreateContentShapeAsyncMM 5
(MM5 6
actualShapeTypeMM6 E
)MME F
;MMF G
shapePP 
.PP 
MetadataPP 
.PP 

AlternatesPP %
.PP% &
AddPP& )
(PP) *
$"PP* ,
{PP, -
modelPP- 2
.PP2 3
GetTypePP3 :
(PP: ;
)PP; <
.PP< =
NamePP= A
}PPA B
_EditPPB G
"PPG H
)PPH I
;PPI J
shapeQQ 
.QQ 
MetadataQQ 
.QQ 

AlternatesQQ %
.QQ% &
AddQQ& )
(QQ) *
$"QQ* ,
{QQ, -
actualShapeTypeQQ- <
}QQ< =
__QQ= ?
{QQ? @
modelQQ@ E
.QQE F
GetTypeQQF M
(QQM N
)QQN O
.QQO P
NameQQP T
}QQT U
"QQU V
)QQV W
;QQW X
varSS 
contextSS 
=SS 
newSS 
BuildEditorContextSS 0
(SS0 1
shapeTT 
,TT 
groupUU 
??UU 
$strUU 
,UU 
isNewVV 
,VV 
$strWW 
,WW 
_shapeFactoryXX 
,XX 
awaitYY 
_layoutAccessorYY %
.YY% &
GetLayoutAsyncYY& 4
(YY4 5
)YY5 6
,YY6 7
newZZ $
ModelStateWrapperUpdaterZZ ,
(ZZ, -
updaterZZ- 4
)ZZ4 5
)[[ 
;[[ 
await]] 
BindPlacementAsync]] $
(]]$ %
context]]% ,
)]], -
;]]- .
await__ 
_drivers__ 
.__ 
InvokeAsync__ &
(__& '
async__' ,
(__- .
driver__. 4
,__4 5
model__6 ;
,__; <
context__= D
)__D E
=>__F H
{`` 
varaa 
resultaa 
=aa 
awaitaa "
driveraa# )
.aa) *
BuildEditorAsyncaa* :
(aa: ;
modelaa; @
,aa@ A
contextaaB I
)aaI J
;aaJ K
ifbb 
(bb 
resultbb 
!=bb 
nullbb "
)bb" #
{cc 
awaitdd 
resultdd  
.dd  !

ApplyAsyncdd! +
(dd+ ,
contextdd, 3
)dd3 4
;dd4 5
}ee 
}ff 
,ff 
modelff 
,ff 
contextff 
,ff 
_loggerff &
)ff& '
;ff' (
returnhh 
shapehh 
;hh 
}ii 	
publickk 
asynckk 
Taskkk 
<kk 
IShapekk  
>kk  !
UpdateEditorAsynckk" 3
(kk3 4
TModelkk4 :
modelkk; @
,kk@ A
IUpdateModelkkB N
updaterkkO V
,kkV W
boolkkX \
isNewkk] b
,kkb c
stringkkd j
groupkkk p
=kkq r
nullkks w
)kkw x
{ll 	
varmm 
actualShapeTypemm 
=mm  !
typeofmm" (
(mm( )
TModelmm) /
)mm/ 0
.mm0 1
Namemm1 5
+mm6 7
$strmm8 ?
;mm? @
varoo 
shapeoo 
=oo 
awaitoo #
CreateContentShapeAsyncoo 5
(oo5 6
actualShapeTypeoo6 E
)ooE F
;ooF G
shaperr 
.rr 
Metadatarr 
.rr 

Alternatesrr %
.rr% &
Addrr& )
(rr) *
$"rr* ,
{rr, -
modelrr- 2
.rr2 3
GetTyperr3 :
(rr: ;
)rr; <
.rr< =
Namerr= A
}rrA B
_EditrrB G
"rrG H
)rrH I
;rrI J
shapess 
.ss 
Metadatass 
.ss 

Alternatesss %
.ss% &
Addss& )
(ss) *
$"ss* ,
{ss, -
actualShapeTypess- <
}ss< =
__ss= ?
{ss? @
modelss@ E
.ssE F
GetTypessF M
(ssM N
)ssN O
.ssO P
NamessP T
}ssT U
"ssU V
)ssV W
;ssW X
varuu 
contextuu 
=uu 
newuu 
UpdateEditorContextuu 1
(uu1 2
shapevv 
,vv 
groupww 
??ww 
$strww 
,ww 
isNewxx 
,xx 
$stryy 
,yy 
_shapeFactoryzz 
,zz 
await{{ 
_layoutAccessor{{ %
.{{% &
GetLayoutAsync{{& 4
({{4 5
){{5 6
,{{6 7
new|| $
ModelStateWrapperUpdater|| ,
(||, -
updater||- 4
)||4 5
)}} 
;}} 
await 
BindPlacementAsync $
($ %
context% ,
), -
;- .
await
ÅÅ 
_drivers
ÅÅ 
.
ÅÅ 
InvokeAsync
ÅÅ &
(
ÅÅ& '
async
ÅÅ' ,
(
ÅÅ- .
driver
ÅÅ. 4
,
ÅÅ4 5
model
ÅÅ6 ;
,
ÅÅ; <
context
ÅÅ= D
)
ÅÅD E
=>
ÅÅF H
{
ÇÇ 
var
ÉÉ 
result
ÉÉ 
=
ÉÉ 
await
ÉÉ "
driver
ÉÉ# )
.
ÉÉ) *
UpdateEditorAsync
ÉÉ* ;
(
ÉÉ; <
model
ÉÉ< A
,
ÉÉA B
context
ÉÉC J
)
ÉÉJ K
;
ÉÉK L
if
ÑÑ 
(
ÑÑ 
result
ÑÑ 
!=
ÑÑ 
null
ÑÑ "
)
ÑÑ" #
{
ÖÖ 
await
ÜÜ 
result
ÜÜ  
.
ÜÜ  !

ApplyAsync
ÜÜ! +
(
ÜÜ+ ,
context
ÜÜ, 3
)
ÜÜ3 4
;
ÜÜ4 5
}
áá 
}
àà 
,
àà 
model
àà 
,
àà 
context
àà 
,
àà 
_logger
àà &
)
àà& '
;
àà' (
return
ää 
shape
ää 
;
ää 
}
ãã 	
}
åå 
}çç ÀN
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Entities\SectionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Entities( 0
{		 
public 

abstract 
class  
SectionDisplayDriver .
<. /
TModel/ 5
,5 6
TSection7 ?
>? @
:A B
DisplayDriverC P
<P Q
TModelQ W
>W X
where 
TSection 
: 
new 
( 
) 
where 
TModel 
: 
class 
, 
IEntity %
{ 
	protected 
virtual 
string  
PropertyName! -
=>. 0
typeof1 7
(7 8
TSection8 @
)@ A
.A B
NameB F
;F G
public 
override 
Task 
< 
IDisplayResult +
>+ ,
DisplayAsync- 9
(9 :
TModel: @
modelA F
,F G
BuildDisplayContextH [
context\ c
)c d
{ 	
var   
section   
=   

GetSection   $
(  $ %
model  % *
)  * +
;  + ,
return"" 
DisplayAsync"" 
(""  
model""  %
,""% &
section""' .
,"". /
context""0 7
)""7 8
;""8 9
}## 	
public%% 
override%% 
Task%% 
<%% 
IDisplayResult%% +
>%%+ ,
	EditAsync%%- 6
(%%6 7
TModel%%7 =
model%%> C
,%%C D
BuildEditorContext%%E W
context%%X _
)%%_ `
{&& 	
var'' 
section'' 
='' 

GetSection'' $
(''$ %
model''% *
)''* +
;''+ ,
return)) 
	EditAsync)) 
()) 
model)) "
,))" #
section))$ +
,))+ ,
context))- 4
)))4 5
;))5 6
}** 	
public,, 
override,, 
async,, 
Task,, "
<,," #
IDisplayResult,,# 1
>,,1 2
UpdateAsync,,3 >
(,,> ?
TModel,,? E
model,,F K
,,,K L
UpdateEditorContext,,M `
context,,a h
),,h i
{-- 	
var.. 
section.. 
=.. 

GetSection.. $
(..$ %
model..% *
)..* +
;..+ ,
var00 
result00 
=00 
await00 
UpdateAsync00 *
(00* +
model00+ 0
,000 1
section002 9
,009 :
context00; B
.00B C
Updater00C J
,00J K
context00L S
)00S T
;00T U
if22 
(22 
result22 
==22 
null22 
)22 
{33 
return44 
null44 
;44 
}55 
if77 
(77 
context77 
.77 
Updater77 
.77  

ModelState77  *
.77* +
IsValid77+ 2
)772 3
{88 
model99 
.99 

Properties99  
[99  !
PropertyName99! -
]99- .
=99/ 0
JObject991 8
.998 9

FromObject999 C
(99C D
section99D K
)99K L
;99L M
}:: 
return<< 
result<< 
;<< 
}== 	
public?? 
virtual?? 
Task?? 
<?? 
IDisplayResult?? *
>??* +
DisplayAsync??, 8
(??8 9
TModel??9 ?
model??@ E
,??E F
TSection??G O
section??P W
,??W X
BuildDisplayContext??Y l
context??m t
)??t u
{@@ 	
returnAA 
DisplayAsyncAA 
(AA  
sectionAA  '
,AA' (
contextAA) 0
)AA0 1
;AA1 2
}BB 	
publicDD 
virtualDD 
TaskDD 
<DD 
IDisplayResultDD *
>DD* +
DisplayAsyncDD, 8
(DD8 9
TSectionDD9 A
sectionDDB I
,DDI J
BuildDisplayContextDDK ^
contextDD_ f
)DDf g
{EE 	
returnFF 
TaskFF 
.FF 

FromResultFF "
(FF" #
DisplayFF# *
(FF* +
sectionFF+ 2
,FF2 3
contextFF4 ;
)FF; <
)FF< =
;FF= >
}GG 	
publicII 
virtualII 
IDisplayResultII %
DisplayII& -
(II- .
TSectionII. 6
sectionII7 >
,II> ?
BuildDisplayContextII@ S
contextIIT [
)II[ \
{JJ 	
returnKK 
DisplayKK 
(KK 
sectionKK "
)KK" #
;KK# $
}LL 	
publicNN 
virtualNN 
IDisplayResultNN %
DisplayNN& -
(NN- .
TSectionNN. 6
sectionNN7 >
)NN> ?
{OO 	
returnPP 
nullPP 
;PP 
}QQ 	
publicSS 
virtualSS 
TaskSS 
<SS 
IDisplayResultSS *
>SS* +
	EditAsyncSS, 5
(SS5 6
TModelSS6 <
modelSS= B
,SSB C
TSectionSSD L
sectionSSM T
,SST U
BuildEditorContextSSV h
contextSSi p
)SSp q
{TT 	
returnUU 
	EditAsyncUU 
(UU 
sectionUU $
,UU$ %
contextUU& -
)UU- .
;UU. /
}VV 	
publicXX 
virtualXX 
TaskXX 
<XX 
IDisplayResultXX *
>XX* +
	EditAsyncXX, 5
(XX5 6
TSectionXX6 >
sectionXX? F
,XXF G
BuildEditorContextXXH Z
contextXX[ b
)XXb c
{YY 	
returnZZ 
TaskZZ 
.ZZ 

FromResultZZ "
(ZZ" #
EditZZ# '
(ZZ' (
sectionZZ( /
,ZZ/ 0
contextZZ1 8
)ZZ8 9
)ZZ9 :
;ZZ: ;
}[[ 	
public]] 
virtual]] 
IDisplayResult]] %
Edit]]& *
(]]* +
TSection]]+ 3
section]]4 ;
,]]; <
BuildEditorContext]]= O
context]]P W
)]]W X
{^^ 	
return__ 
Edit__ 
(__ 
section__ 
)__  
;__  !
}`` 	
publicbb 
virtualbb 
IDisplayResultbb %
Editbb& *
(bb* +
TSectionbb+ 3
sectionbb4 ;
)bb; <
{cc 	
returndd 
nulldd 
;dd 
}ee 	
publicgg 
virtualgg 
Taskgg 
<gg 
IDisplayResultgg *
>gg* +
UpdateAsyncgg, 7
(gg7 8
TModelgg8 >
modelgg? D
,ggD E
TSectionggF N
sectionggO V
,ggV W
IUpdateModelggX d
updatergge l
,ggl m
BuildEditorContext	ggn Ä
context
ggÅ à
)
ggà â
{hh 	
returnii 
UpdateAsyncii 
(ii 
sectionii &
,ii& '
updaterii( /
,ii/ 0
contextii1 8
)ii8 9
;ii9 :
}jj 	
publicll 
virtualll 
Taskll 
<ll 
IDisplayResultll *
>ll* +
UpdateAsyncll, 7
(ll7 8
TSectionll8 @
sectionllA H
,llH I
IUpdateModelllJ V
updaterllW ^
,ll^ _
BuildEditorContextll` r
contextlls z
)llz {
{mm 	
returnnn 
UpdateAsyncnn 
(nn 
sectionnn &
,nn& '
contextnn( /
)nn/ 0
;nn0 1
}oo 	
publicqq 
virtualqq 
Taskqq 
<qq 
IDisplayResultqq *
>qq* +
UpdateAsyncqq, 7
(qq7 8
TSectionqq8 @
sectionqqA H
,qqH I
BuildEditorContextqqJ \
contextqq] d
)qqd e
{rr 	
returnss 
UpdateAsyncss 
(ss 
sectionss &
,ss& '
contextss( /
.ss/ 0
Updaterss0 7
,ss7 8
contextss9 @
.ss@ A
GroupIdssA H
)ssH I
;ssI J
}tt 	
publicvv 
virtualvv 
Taskvv 
<vv 
IDisplayResultvv *
>vv* +
UpdateAsyncvv, 7
(vv7 8
TSectionvv8 @
sectionvvA H
,vvH I
IUpdateModelvvJ V
updatervvW ^
,vv^ _
stringvv` f
groupIdvvg n
)vvn o
{ww 	
returnxx 
Taskxx 
.xx 

FromResultxx "
<xx" #
IDisplayResultxx# 1
>xx1 2
(xx2 3
nullxx3 7
)xx7 8
;xx8 9
}yy 	
private{{ 
TSection{{ 

GetSection{{ #
({{# $
TModel{{$ *
model{{+ 0
){{0 1
{|| 	
return}} 
model}} 
.}} 

Properties}} #
.}}# $
TryGetValue}}$ /
(}}/ 0
PropertyName}}0 <
,}}< =
out}}> A
var}}B E
property}}F N
)}}N O
?~~ 
property~~ 
.~~ 
ToObject~~ #
<~~# $
TSection~~$ ,
>~~, -
(~~- .
)~~. /
: 
new 
TSection 
( 
)  
;  !
}
ÄÄ 	
}
ÅÅ 
}ÇÇ §
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Events\ThemeFeatureBuilderEvents.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Events( .
{		 
public

 

class

 %
ThemeFeatureBuilderEvents

 *
:

+ , 
FeatureBuilderEvents

- A
{ 
public 
override 
void 
Building %
(% &"
FeatureBuildingContext& <
context= D
)D E
{ 	
var 

moduleInfo 
= 
context $
.$ %
ExtensionInfo% 2
.2 3
Manifest3 ;
.; <

ModuleInfo< F
;F G
if 
( 

moduleInfo 
is 
ThemeAttribute ,
||- /
(0 1

moduleInfo1 ;
is< >!
ModuleMarkerAttribute? T
&&U W

moduleInfo 
. 
Type 
.  
Equals  &
(& '
$str' .
,. /
StringComparison0 @
.@ A
OrdinalIgnoreCaseA R
)R S
)S T
)T U
{ 
var 
extensionInfo !
=" #
new$ '
ThemeExtensionInfo( :
(: ;
context; B
.B C
ExtensionInfoC P
)P Q
;Q R
if 
( 
extensionInfo !
.! "
HasBaseTheme" .
(. /
)/ 0
)0 1
{ 
context 
.  
FeatureDependencyIds 0
=1 2
context3 :
.  
FeatureDependencyIds -
. 
Concat 
(  
new  #
[# $
]$ %
{& '
extensionInfo( 5
.5 6
	BaseTheme6 ?
}@ A
)A B
. 
ToArray  
(  !
)! "
;" #
} 
context 
. 
ExtensionInfo %
=& '
extensionInfo( 5
;5 6
} 
} 	
}   
}!! ¸
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Extensions\ExtensionInfoExtensions.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

Extensions( 2
{ 
public 

static 
class #
ExtensionInfoExtensions /
{ 
public 
static 
bool 
IsTheme "
(" #
this# '
IExtensionInfo( 6
extensionInfo7 D
)D E
{ 	
return		 
extensionInfo		  
is		! #
IThemeExtensionInfo		$ 7
;		7 8
}

 	
} 
} á
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Extensions\RazorHelperExtensions.cs
public 
static 
class !
RazorHelperExtensions )
{ 
public 

static 
string 

CultureDir #
(# $
this$ (
IOrchardHelper) 7
orchardHelper8 E
)E F
{ 
return 
CultureInfo 
. 
CurrentUICulture +
.+ , 
GetLanguageDirection, @
(@ A
)A B
;B C
} 
public 

static 
string 
CultureName $
($ %
this% )
IOrchardHelper* 8
orchardHelper9 F
)F G
{ 
return 
CultureInfo 
. 
CurrentUICulture +
.+ ,
Name, 0
;0 1
} 
} û
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Extensions\TagHelperExtensions.cs
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
IServiceCollection (
AddTagHelpers) 6
(6 7
this7 ;
IServiceCollection< N
servicesO W
,W X
AssemblyY a
assemblyb j
)j k
{ 	
return 
services 
. 
AddTransient (
<( )
ITagHelpersProvider) <
>< =
(= >
sp> @
=>A C
newD G&
AssemblyTagHelpersProviderH b
(b c
assemblyc k
)k l
)l m
;m n
} 	
public 
static 
IServiceCollection (
AddTagHelpers) 6
<6 7
T7 8
>8 9
(9 :
this: >
IServiceCollection? Q
servicesR Z
)Z [
{ 	
return 
services 
. 
AddTransient 
< 
ITagHelpersProvider 1
>1 2
(2 3
sp3 5
=>6 8
new9 <
TagHelpersProvider= O
<O P
TP Q
>Q R
(R S
)S T
)T U
. 
AddTransient 
( 
typeof $
($ %
T% &
)& '
)' (
;( )
} 	
} 
}  	
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Extensions\ThemeExtensionDependencyStrategy.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

Extensions( 2
{ 
public 

class ,
 ThemeExtensionDependencyStrategy 1
:2 3(
IExtensionDependencyStrategy4 P
{ 
public 
bool 
HasDependency !
(! "
IFeatureInfo" .
observer/ 7
,7 8
IFeatureInfo9 E
subjectF M
)M N
{		 	
if

 
(

 
observer

 
.

 
	Extension

 "
.

" #
IsTheme

# *
(

* +
)

+ ,
)

, -
{ 
if 
( 
! 
subject 
. 
	Extension &
.& '
IsTheme' .
(. /
)/ 0
)0 1
return 
true 
;  
} 
return 
false 
; 
} 	
} 
} ∏
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Extensions\ThemeExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

Extensions( 2
{ 
public 

	interface 
IThemeExtensionInfo (
:) *
IExtensionInfo+ 9
{: ;
}< =
public

 

class

 
ThemeExtensionInfo

 #
:

$ %
IThemeExtensionInfo

& 9
{ 
private 
readonly 
IExtensionInfo '
_extensionInfo( 6
;6 7
public 
ThemeExtensionInfo !
(! "
IExtensionInfo" 0
extensionInfo1 >
)> ?
{ 	
_extensionInfo 
= 
extensionInfo *
;* +
var 
	themeInfo 
= 
_extensionInfo *
.* +
Manifest+ 3
.3 4

ModuleInfo4 >
as? A
ThemeAttributeB P
;P Q
var 
	baseTheme 
= 
	themeInfo %
?% &
.& '
	BaseTheme' 0
;0 1
if 
( 
	baseTheme 
!= 
null !
&&" $
	baseTheme% .
.. /
Length/ 5
!=6 8
$num9 :
): ;
{ 
	BaseTheme 
= 
	baseTheme %
.% &
Trim& *
(* +
)+ ,
., -
ToString- 5
(5 6
)6 7
;7 8
} 
} 	
public 
string 
Id 
=> 
_extensionInfo *
.* +
Id+ -
;- .
public 
string 
SubPath 
=>  
_extensionInfo! /
./ 0
SubPath0 7
;7 8
public 
IManifestInfo 
Manifest %
=>& (
_extensionInfo) 7
.7 8
Manifest8 @
;@ A
public 
IEnumerable 
< 
IFeatureInfo '
>' (
Features) 1
=>2 4
_extensionInfo5 C
.C D
FeaturesD L
;L M
public 
bool 
Exists 
=> 
_extensionInfo ,
., -
Exists- 3
;3 4
public!! 
string!! 
	BaseTheme!! 
{!!  !
get!!" %
;!!% &
}!!' (
public## 
bool## 
HasBaseTheme##  
(##  !
)##! "
{$$ 	
return%% 
!%% 
string%% 
.%% 
IsNullOrWhiteSpace%% -
(%%- .
	BaseTheme%%. 7
)%%7 8
;%%8 9
}&& 	
public(( 
bool(( 
IsBaseThemeFeature(( &
(((& '
string((' -
	featureId((. 7
)((7 8
{)) 	
return** 
HasBaseTheme** 
(**  
)**  !
&&**" $
	featureId**% .
==**/ 1
	BaseTheme**2 ;
;**; <
}++ 	
},, 
}-- ∫
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\FileProviders\ContentFileInfo.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
FileProviders( 5
{ 
public 

class 
ContentFileInfo  
:! "
	IFileInfo# ,
{		 
private

 
readonly

 
byte

 
[

 
]

 
_content

  (
;

( )
public 
ContentFileInfo 
( 
string %
name& *
,* +
string, 2
content3 :
): ;
{ 	
Name 
= 
name 
; 
_content 
= 
Encoding 
.  
UTF8  $
.$ %
GetBytes% -
(- .
content. 5
)5 6
;6 7
} 	
public 
bool 
Exists 
=> 
true "
;" #
public 
long 
Length 
{ 	
get 
{ 
return 
_content !
.! "
Length" (
;( )
}* +
} 	
public 
string 
PhysicalPath "
=># %
null& *
;* +
public 
string 
Name 
{ 
get  
;  !
}" #
public 
DateTimeOffset 
LastModified *
{ 	
get 
{ 
return 
DateTimeOffset '
.' (
MinValue( 0
;0 1
}2 3
}   	
public"" 
bool"" 
IsDirectory"" 
=>""  "
false""# (
;""( )
public$$ 
Stream$$ 
CreateReadStream$$ &
($$& '
)$$' (
{%% 	
return&& 
new&& 
MemoryStream&& #
(&&# $
_content&&$ ,
)&&, -
;&&- .
}'' 	
}(( 
})) “
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\FileProviders\DirectoryContents.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
FileProviders( 5
{ 
public 

class 
DirectoryContents "
:# $
IDirectoryContents% 7
{		 
private

 
readonly

 
IEnumerable

 $
<

$ %
	IFileInfo

% .
>

. /
_entries

0 8
;

8 9
public 
DirectoryContents  
(  !
IEnumerable! ,
<, -
	IFileInfo- 6
>6 7
entries8 ?
)? @
{ 	
_entries 
= 
entries 
?? !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
entriesI P
)P Q
)Q R
;R S
} 	
public 
bool 
Exists 
{ 	
get 
{ 
return 
true 
; 
}  
} 	
public 
IEnumerator 
< 
	IFileInfo $
>$ %
GetEnumerator& 3
(3 4
)4 5
{ 	
return 
_entries 
. 
GetEnumerator )
() *
)* +
;+ ,
} 	
IEnumerator 
IEnumerable 
.  
GetEnumerator  -
(- .
). /
{ 	
return 
_entries 
. 
GetEnumerator )
() *
)* +
;+ ,
} 	
} 
}   ¸

ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\BuildDisplayContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

class 
BuildDisplayContext $
:% &
BuildShapeContext' 8
{ 
public 
BuildDisplayContext "
(" #
IShape# )
shape* /
,/ 0
string1 7
displayType8 C
,C D
stringE K
groupIdL S
,S T
IShapeFactoryU b
shapeFactoryc o
,o p
IShapeq w
layoutx ~
,~ 
IUpdateModel
Ä å
updater
ç î
)
î ï
: 
base 
( 
shape 
, 
groupId !
,! "
shapeFactory# /
,/ 0
layout1 7
,7 8
updater9 @
)@ A
{		 	
DisplayType

 
=

 
displayType

 %
;

% &
} 	
public 
string 
DisplayType !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
} 
} Ê
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\BuildEditorContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

class 
BuildEditorContext #
:$ %
BuildShapeContext& 7
{ 
public 
bool 
IsNew 
{ 
get 
;  
set! $
;$ %
}& '
public		 
BuildEditorContext		 !
(		! "
IShape		" (
shape		) .
,		. /
string		0 6
groupId		7 >
,		> ?
bool		@ D
isNew		E J
,		J K
string		L R
htmlFieldPrefix		S b
,		b c
IShapeFactory		d q
shapeFactory		r ~
,		~ 
IShape
		Ä Ü
layout
		á ç
,
		ç é
IUpdateModel
		è õ
updater
		ú £
)
		£ §
:

 
base

 
(

 
shape

 
,

 
groupId

 !
,

! "
shapeFactory

# /
,

/ 0
layout

1 7
,

7 8
updater

9 @
)

@ A
{ 	
HtmlFieldPrefix 
= 
htmlFieldPrefix -
;- .
IsNew 
= 
isNew 
; 
} 	
} 
} π
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\BuildShapeContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

abstract 
class 
BuildShapeContext +
:, -
IBuildShapeContext. @
{ 
	protected 
BuildShapeContext #
(# $
IShape$ *
shape+ 0
,0 1
string2 8
groupId9 @
,@ A
IShapeFactoryB O
shapeFactoryP \
,\ ]
IShape^ d
layoute k
,k l
IUpdateModelm y
updater	z Å
)
Å Ç
{		 	
Shape

 
=

 
shape

 
;

 
ShapeFactory 
= 
shapeFactory '
;' (
GroupId 
= 
groupId 
; 
HtmlFieldPrefix 
= 
string $
.$ %
Empty% *
;* +
Layout 
= 
layout 
; 
FindPlacement 
=  
FindDefaultPlacement 0
;0 1
Updater 
= 
updater 
; 
} 	
public 
IShape 
Shape 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
IShapeFactory 
ShapeFactory )
{* +
get, /
;/ 0
private1 8
set9 <
;< =
}> ?
public 
dynamic 
New 
=> 
ShapeFactory *
;* +
public 
IShape 
Layout 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
GroupId 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
string 
HtmlFieldPrefix %
{& '
get( +
;+ ,
	protected- 6
set7 :
;: ;
}< =
public !
FindPlacementDelegate $
FindPlacement% 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
IUpdateModel 
Updater #
{$ %
get& )
;) *
}+ ,
public 
string 
DefaultZone !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
DefaultPosition %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
private 
static 
PlacementInfo $ 
FindDefaultPlacement% 9
(9 :
string: @
	shapeTypeA J
,J K
stringL R
differentiatorS a
,a b
stringc i
displayTypej u
,u v
IBuildShapeContext	w â
context
ä ë
)
ë í
{ 	
return   
null   
;   
}!! 	
}"" 
}## ˘ã
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\DisplayDriver.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

abstract 
class 
DisplayDriver '
<' (
TModel( .
,. /
TDisplayContext0 ?
,? @
TEditorContextA O
,O P
TUpdateContextQ _
>_ `
:a b
DisplayDriverBase		 
,		 
IDisplayDriver

 
<

 
TModel

 
,

 
TDisplayContext

 .
,

. /
TEditorContext

0 >
,

> ?
TUpdateContext

@ N
>

N O
where 
TModel 
: 
class 
where 
TDisplayContext 
: 
BuildDisplayContext  3
where 
TEditorContext 
: 
BuildEditorContext 1
where 
TUpdateContext 
: 
UpdateEditorContext 2
{ 
public 
virtual 
bool 
CanHandleModel *
(* +
TModel+ 1
model2 7
)7 8
{ 	
return 
true 
; 
} 	
Task 
< 
IDisplayResult 
> 
IDisplayDriver +
<+ ,
TModel, 2
,2 3
TDisplayContext4 C
,C D
TEditorContextE S
,S T
TUpdateContextU c
>c d
.d e
BuildDisplayAsynce v
(v w
TModelw }
model	~ É
,
É Ñ
TDisplayContext
Ö î
context
ï ú
)
ú ù
{ 	
if 
( 
! 
CanHandleModel 
(  
model  %
)% &
)& '
{ 
return 
Task 
. 

FromResult &
<& '
IDisplayResult' 5
>5 6
(6 7
null7 ;
); <
;< =
} 
BuildPrefix   
(   
model   
,   
context   &
.  & '
HtmlFieldPrefix  ' 6
)  6 7
;  7 8
return"" 
DisplayAsync"" 
(""  
model""  %
,""% &
context""' .
)"". /
;""/ 0
}## 	
Task%% 
<%% 
IDisplayResult%% 
>%% 
IDisplayDriver%% +
<%%+ ,
TModel%%, 2
,%%2 3
TDisplayContext%%4 C
,%%C D
TEditorContext%%E S
,%%S T
TUpdateContext%%U c
>%%c d
.%%d e
BuildEditorAsync%%e u
(%%u v
TModel%%v |
model	%%} Ç
,
%%Ç É
TEditorContext
%%Ñ í
context
%%ì ö
)
%%ö õ
{&& 	
if'' 
('' 
!'' 
CanHandleModel'' 
(''  
model''  %
)''% &
)''& '
{(( 
return)) 
Task)) 
.)) 

FromResult)) &
<))& '
IDisplayResult))' 5
>))5 6
())6 7
null))7 ;
))); <
;))< =
}** 
BuildPrefix,, 
(,, 
model,, 
,,, 
context,, &
.,,& '
HtmlFieldPrefix,,' 6
),,6 7
;,,7 8
return.. 
	EditAsync.. 
(.. 
model.. "
,.." #
context..$ +
)..+ ,
;.., -
}// 	
Task11 
<11 
IDisplayResult11 
>11 
IDisplayDriver11 +
<11+ ,
TModel11, 2
,112 3
TDisplayContext114 C
,11C D
TEditorContext11E S
,11S T
TUpdateContext11U c
>11c d
.11d e
UpdateEditorAsync11e v
(11v w
TModel11w }
model	11~ É
,
11É Ñ
TUpdateContext
11Ö ì
context
11î õ
)
11õ ú
{22 	
if33 
(33 
!33 
CanHandleModel33 
(33  
model33  %
)33% &
)33& '
{44 
return55 
Task55 
.55 

FromResult55 &
<55& '
IDisplayResult55' 5
>555 6
(556 7
null557 ;
)55; <
;55< =
}66 
BuildPrefix88 
(88 
model88 
,88 
context88 &
.88& '
HtmlFieldPrefix88' 6
)886 7
;887 8
return:: 
UpdateAsync:: 
(:: 
model:: $
,::$ %
context::& -
)::- .
;::. /
};; 	
public== 
virtual== 
Task== 
<== 
IDisplayResult== *
>==* +
DisplayAsync==, 8
(==8 9
TModel==9 ?
model==@ E
,==E F
TDisplayContext==G V
context==W ^
)==^ _
{>> 	
return?? 
DisplayAsync?? 
(??  
model??  %
,??% &
context??' .
.??. /
Updater??/ 6
)??6 7
;??7 8
}@@ 	
publicBB 
virtualBB 
TaskBB 
<BB 
IDisplayResultBB *
>BB* +
DisplayAsyncBB, 8
(BB8 9
TModelBB9 ?
modelBB@ E
,BBE F
IUpdateModelBBG S
updaterBBT [
)BB[ \
{CC 	
returnDD 
TaskDD 
.DD 

FromResultDD "
(DD" #
DisplayDD# *
(DD* +
modelDD+ 0
,DD0 1
updaterDD2 9
)DD9 :
)DD: ;
;DD; <
}EE 	
publicGG 
virtualGG 
IDisplayResultGG %
DisplayGG& -
(GG- .
TModelGG. 4
modelGG5 :
,GG: ;
IUpdateModelGG< H
updaterGGI P
)GGP Q
{HH 	
returnII 
DisplayII 
(II 
modelII  
)II  !
;II! "
}JJ 	
publicLL 
virtualLL 
IDisplayResultLL %
DisplayLL& -
(LL- .
TModelLL. 4
modelLL5 :
)LL: ;
{MM 	
returnNN 
NullShapeResultNN "
(NN" #
)NN# $
;NN$ %
}OO 	
publicQQ 
virtualQQ 
TaskQQ 
<QQ 
IDisplayResultQQ *
>QQ* +
	EditAsyncQQ, 5
(QQ5 6
TModelQQ6 <
modelQQ= B
,QQB C
TEditorContextQQD R
contextQQS Z
)QQZ [
{RR 	
returnSS 
	EditAsyncSS 
(SS 
modelSS "
,SS" #
contextSS$ +
.SS+ ,
UpdaterSS, 3
)SS3 4
;SS4 5
}TT 	
publicVV 
virtualVV 
TaskVV 
<VV 
IDisplayResultVV *
>VV* +
	EditAsyncVV, 5
(VV5 6
TModelVV6 <
modelVV= B
,VVB C
IUpdateModelVVD P
updaterVVQ X
)VVX Y
{WW 	
returnXX 
TaskXX 
.XX 

FromResultXX "
(XX" #
EditXX# '
(XX' (
modelXX( -
,XX- .
updaterXX/ 6
)XX6 7
)XX7 8
;XX8 9
}YY 	
public[[ 
virtual[[ 
IDisplayResult[[ %
Edit[[& *
([[* +
TModel[[+ 1
model[[2 7
,[[7 8
IUpdateModel[[9 E
updater[[F M
)[[M N
{\\ 	
return]] 
Edit]] 
(]] 
model]] 
)]] 
;]] 
}^^ 	
public`` 
virtual`` 
IDisplayResult`` %
Edit``& *
(``* +
TModel``+ 1
model``2 7
)``7 8
{aa 	
returnbb 
NullShapeResultbb "
(bb" #
)bb# $
;bb$ %
}cc 	
privateee 
staticee 
IDisplayResultee %
NullShapeResultee& 5
(ee5 6
)ee6 7
{ff 	
returngg 
nullgg 
;gg 
}hh 	
publicjj 
virtualjj 
Taskjj 
<jj 
IDisplayResultjj *
>jj* +
UpdateAsyncjj, 7
(jj7 8
TModeljj8 >
modeljj? D
,jjD E
TUpdateContextjjF T
contextjjU \
)jj\ ]
{kk 	
returnll 
UpdateAsyncll 
(ll 
modelll $
,ll$ %
contextll& -
.ll- .
Updaterll. 5
)ll5 6
;ll6 7
}mm 	
publicoo 
virtualoo 
Taskoo 
<oo 
IDisplayResultoo *
>oo* +
UpdateAsyncoo, 7
(oo7 8
TModeloo8 >
modeloo? D
,ooD E
IUpdateModelooF R
updaterooS Z
)ooZ [
{pp 	
returnqq 
	EditAsyncqq 
(qq 
modelqq "
,qq" #
updaterqq$ +
)qq+ ,
;qq, -
}rr 	
	protectedtt 
virtualtt 
voidtt 
BuildPrefixtt *
(tt* +
TModeltt+ 1
modeltt2 7
,tt7 8
stringtt9 ?
htmlFieldPrefixtt@ O
)ttO P
{uu 	
Prefixvv 
=vv 
typeofvv 
(vv 
TModelvv "
)vv" #
.vv# $
Namevv$ (
;vv( )
ifxx 
(xx 
!xx 
Stringxx 
.xx 
IsNullOrEmptyxx %
(xx% &
htmlFieldPrefixxx& 5
)xx5 6
)xx6 7
{yy 
Prefixzz 
=zz 
htmlFieldPrefixzz (
+zz) *
$strzz+ .
+zz/ 0
Prefixzz1 7
;zz7 8
}{{ 
}|| 	
}}} 
public 

abstract 
class 
DisplayDriver '
<' (
TModel( .
>. /
:0 1
DisplayDriver
ÄÄ 
<
ÄÄ 
TModel
ÄÄ 
,
ÄÄ !
BuildDisplayContext
ÄÄ 1
,
ÄÄ1 2 
BuildEditorContext
ÄÄ3 E
,
ÄÄE F!
UpdateEditorContext
ÄÄG Z
>
ÄÄZ [
,
ÄÄ[ \
IDisplayDriver
ÅÅ 
<
ÅÅ 
TModel
ÅÅ 
>
ÅÅ 
where
ÇÇ 
TModel
ÇÇ 
:
ÇÇ 
class
ÇÇ 
{
ÉÉ 
}
ÑÑ 
public
ÜÜ 

abstract
ÜÜ 
class
ÜÜ 
DisplayDriver
ÜÜ '
<
ÜÜ' (
TModel
ÜÜ( .
,
ÜÜ. /
	TConcrete
ÜÜ0 9
,
ÜÜ9 :
TDisplayContext
ÜÜ; J
,
ÜÜJ K
TEditorContext
ÜÜL Z
,
ÜÜZ [
TUpdateContext
ÜÜ\ j
>
ÜÜj k
:
ÜÜl m
DisplayDriver
áá 
<
áá 
	TConcrete
áá 
,
áá  
TDisplayContext
áá! 0
,
áá0 1
TEditorContext
áá2 @
,
áá@ A
TUpdateContext
ááB P
>
ááP Q
,
ááQ R
IDisplayDriver
àà 
<
àà 
TModel
àà 
,
àà 
TDisplayContext
àà .
,
àà. /
TEditorContext
àà0 >
,
àà> ?
TUpdateContext
àà@ N
>
ààN O
where
ââ 
	TConcrete
ââ 
:
ââ 
class
ââ 
,
ââ  
TModel
ââ! '
where
ää 
TModel
ää 
:
ää 
class
ää 
where
ãã 
TDisplayContext
ãã 
:
ãã !
BuildDisplayContext
ãã  3
where
åå 
TEditorContext
åå 
:
åå  
BuildEditorContext
åå 1
where
çç 
TUpdateContext
çç 
:
çç !
UpdateEditorContext
çç 2
{
éé 
public
ìì 
virtual
ìì 
bool
ìì 
CanHandleModel
ìì *
(
ìì* +
TModel
ìì+ 1
model
ìì2 7
)
ìì7 8
{
îî 	
return
ïï 
true
ïï 
;
ïï 
}
ññ 	
Task
òò 
<
òò 
IDisplayResult
òò 
>
òò 
IDisplayDriver
òò +
<
òò+ ,
TModel
òò, 2
,
òò2 3
TDisplayContext
òò4 C
,
òòC D
TEditorContext
òòE S
,
òòS T
TUpdateContext
òòU c
>
òòc d
.
òòd e
BuildDisplayAsync
òòe v
(
òòv w
TModel
òòw }
modelòò~ É
,òòÉ Ñ
TDisplayContextòòÖ î
contextòòï ú
)òòú ù
{
ôô 	
var
öö 
concrete
öö 
=
öö 
model
öö  
as
öö! #
	TConcrete
öö$ -
;
öö- .
if
úú 
(
úú 
concrete
úú 
==
úú 
null
úú  
||
úú! #
!
úú$ %
CanHandleModel
úú% 3
(
úú3 4
concrete
úú4 <
)
úú< =
)
úú= >
{
ùù 
return
ûû 
Task
ûû 
.
ûû 

FromResult
ûû &
<
ûû& '
IDisplayResult
ûû' 5
>
ûû5 6
(
ûû6 7
null
ûû7 ;
)
ûû; <
;
ûû< =
}
üü 
BuildPrefix
°° 
(
°° 
concrete
°°  
,
°°  !
context
°°" )
.
°°) *
HtmlFieldPrefix
°°* 9
)
°°9 :
;
°°: ;
return
££ 
DisplayAsync
££ 
(
££  
concrete
££  (
,
££( )
context
££* 1
)
££1 2
;
££2 3
}
§§ 	
Task
¶¶ 
<
¶¶ 
IDisplayResult
¶¶ 
>
¶¶ 
IDisplayDriver
¶¶ +
<
¶¶+ ,
TModel
¶¶, 2
,
¶¶2 3
TDisplayContext
¶¶4 C
,
¶¶C D
TEditorContext
¶¶E S
,
¶¶S T
TUpdateContext
¶¶U c
>
¶¶c d
.
¶¶d e
BuildEditorAsync
¶¶e u
(
¶¶u v
TModel
¶¶v |
model¶¶} Ç
,¶¶Ç É
TEditorContext¶¶Ñ í
context¶¶ì ö
)¶¶ö õ
{
ßß 	
var
®® 
concrete
®® 
=
®® 
model
®®  
as
®®! #
	TConcrete
®®$ -
;
®®- .
if
™™ 
(
™™ 
concrete
™™ 
==
™™ 
null
™™  
||
™™! #
!
™™$ %
CanHandleModel
™™% 3
(
™™3 4
concrete
™™4 <
)
™™< =
)
™™= >
{
´´ 
return
¨¨ 
Task
¨¨ 
.
¨¨ 

FromResult
¨¨ &
<
¨¨& '
IDisplayResult
¨¨' 5
>
¨¨5 6
(
¨¨6 7
null
¨¨7 ;
)
¨¨; <
;
¨¨< =
}
≠≠ 
BuildPrefix
ØØ 
(
ØØ 
concrete
ØØ  
,
ØØ  !
context
ØØ" )
.
ØØ) *
HtmlFieldPrefix
ØØ* 9
)
ØØ9 :
;
ØØ: ;
return
±± 
	EditAsync
±± 
(
±± 
concrete
±± %
,
±±% &
context
±±' .
)
±±. /
;
±±/ 0
}
≤≤ 	
Task
¥¥ 
<
¥¥ 
IDisplayResult
¥¥ 
>
¥¥ 
IDisplayDriver
¥¥ +
<
¥¥+ ,
TModel
¥¥, 2
,
¥¥2 3
TDisplayContext
¥¥4 C
,
¥¥C D
TEditorContext
¥¥E S
,
¥¥S T
TUpdateContext
¥¥U c
>
¥¥c d
.
¥¥d e
UpdateEditorAsync
¥¥e v
(
¥¥v w
TModel
¥¥w }
model¥¥~ É
,¥¥É Ñ
TUpdateContext¥¥Ö ì
context¥¥î õ
)¥¥õ ú
{
µµ 	
var
∂∂ 
concrete
∂∂ 
=
∂∂ 
model
∂∂  
as
∂∂! #
	TConcrete
∂∂$ -
;
∂∂- .
if
∏∏ 
(
∏∏ 
concrete
∏∏ 
==
∏∏ 
null
∏∏  
||
∏∏! #
!
∏∏$ %
CanHandleModel
∏∏% 3
(
∏∏3 4
concrete
∏∏4 <
)
∏∏< =
)
∏∏= >
{
ππ 
return
∫∫ 
Task
∫∫ 
.
∫∫ 

FromResult
∫∫ &
<
∫∫& '
IDisplayResult
∫∫' 5
>
∫∫5 6
(
∫∫6 7
null
∫∫7 ;
)
∫∫; <
;
∫∫< =
}
ªª 
BuildPrefix
ΩΩ 
(
ΩΩ 
concrete
ΩΩ  
,
ΩΩ  !
context
ΩΩ" )
.
ΩΩ) *
HtmlFieldPrefix
ΩΩ* 9
)
ΩΩ9 :
;
ΩΩ: ;
return
øø 
UpdateAsync
øø 
(
øø 
concrete
øø '
,
øø' (
context
øø) 0
)
øø0 1
;
øø1 2
}
¿¿ 	
}
¡¡ 
public
√√ 

abstract
√√ 
class
√√ 
DisplayDriver
√√ '
<
√√' (
TModel
√√( .
,
√√. /
	TConcrete
√√0 9
>
√√9 :
:
√√; <
DisplayDriver
ƒƒ 
<
ƒƒ 
TModel
ƒƒ 
,
ƒƒ 
	TConcrete
ƒƒ '
,
ƒƒ' (!
BuildDisplayContext
ƒƒ) <
,
ƒƒ< = 
BuildEditorContext
ƒƒ> P
,
ƒƒP Q!
UpdateEditorContext
ƒƒR e
>
ƒƒe f
,
ƒƒf g
IDisplayDriver
≈≈ 
<
≈≈ 
TModel
≈≈ 
>
≈≈ 
where
∆∆ 
	TConcrete
∆∆ 
:
∆∆ 
class
∆∆ 
,
∆∆  
TModel
∆∆! '
where
«« 
TModel
«« 
:
«« 
class
«« 
{
»» 
}
…… 
}   ∆V
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\DisplayDriverBase.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

class 
DisplayDriverBase "
{		 
	protected

 
string

 
Prefix

 
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
=

. /
$str

0 2
;

2 3
public 
ShapeResult 

Initialize %
<% &
TModel& ,
>, -
(- .
Action. 4
<4 5
TModel5 ;
>; <

initialize= G
)G H
whereI N
TModelO U
:V W
classX ]
{ 	
return 

Initialize 
< 
TModel $
>$ %
(% &
shape& +
=>, .
{ 

initialize 
( 
shape  
)  !
;! "
return 
new 
	ValueTask $
($ %
)% &
;& '
} 
) 
; 
} 	
public 
ShapeResult 

Initialize %
<% &
TModel& ,
>, -
(- .
Func. 2
<2 3
TModel3 9
,9 :
	ValueTask; D
>D E
initializeAsyncF U
)U V
whereW \
TModel] c
:d e
classf k
{ 	
return 

Initialize 
< 
TModel $
>$ %
(% &
typeof 
( 
TModel 
) 
. 
Name #
,# $
shape 
=> 
initializeAsync (
(( )
shape) .
). /
)   
;   
}!! 	
public&& 
ShapeResult&& 

Initialize&& %
<&&% &
TModel&&& ,
>&&, -
(&&- .
string&&. 4
	shapeType&&5 >
,&&> ?
Func&&@ D
<&&D E
TModel&&E K
,&&K L
	ValueTask&&M V
>&&V W
initializeAsync&&X g
)&&g h
where&&i n
TModel&&o u
:&&v w
class&&x }
{'' 	
return(( 
Factory(( 
((( 
	shapeType)) 
,)) 
ctx** 
=>** 
ctx** 
.** 
ShapeFactory** '
.**' (
CreateAsync**( 3
(**3 4
	shapeType**4 =
,**= >
initializeAsync**? N
)**N O
)++ 
;++ 
},, 	
public11 
ShapeResult11 
Copy11 
<11  
TModel11  &
>11& '
(11' (
string11( .
	shapeType11/ 8
,118 9
TModel11: @
model11A F
)11F G
where11H M
TModel11N T
:11U V
class11W \
{22 	
return33 
Factory33 
(33 
	shapeType33 $
,33$ %
ctx33& )
=>33* ,
ctx33- 0
.330 1
ShapeFactory331 =
.33= >
CreateAsync33> I
(33I J
	shapeType33J S
,33S T
model33U Z
)33Z [
)33[ \
;33\ ]
}44 	
public99 
ShapeResult99 

Initialize99 %
<99% &
TModel99& ,
>99, -
(99- .
string99. 4
	shapeType995 >
,99> ?
Action99@ F
<99F G
TModel99G M
>99M N

initialize99O Y
)99Y Z
where99[ `
TModel99a g
:99h i
class99j o
{:: 	
return;; 

Initialize;; 
<;; 
TModel;; $
>;;$ %
(;;% &
	shapeType;;& /
,;;/ 0
shape;;1 6
=>;;7 9
{<< 

initialize== 
(== 
shape==  
)==  !
;==! "
return>> 
new>> 
	ValueTask>> $
(>>$ %
)>>% &
;>>& '
}?? 
)?? 
;?? 
}@@ 	
publicEE 
ShapeResultEE 
DynamicEE "
(EE" #
stringEE# )
	shapeTypeEE* 3
,EE3 4
FuncEE5 9
<EE9 :
dynamicEE: A
,EEA B
TaskEEC G
>EEG H
initializeAsyncEEI X
)EEX Y
{FF 	
returnGG 
FactoryGG 
(GG 
	shapeTypeGG $
,GG$ %
asyncHH 
ctxHH 
=>HH 
{II 
dynamicJJ 
shapeJJ !
=JJ" #
awaitJJ$ )
ctxJJ* -
.JJ- .
ShapeFactoryJJ. :
.JJ: ;
CreateAsyncJJ; F
(JJF G
	shapeTypeJJG P
)JJP Q
;JJQ R
awaitKK 
initializeAsyncKK )
(KK) *
shapeKK* /
)KK/ 0
;KK0 1
returnLL 
shapeLL  
;LL  !
}MM 
)MM 
;MM 
}NN 	
publicSS 
ShapeResultSS 
DynamicSS "
(SS" #
stringSS# )
	shapeTypeSS* 3
,SS3 4
ActionSS5 ;
<SS; <
dynamicSS< C
>SSC D

initializeSSE O
)SSO P
{TT 	
returnUU 
FactoryUU 
(UU 
	shapeTypeUU $
,UU$ %
asyncVV 
ctxVV 
=>VV 
{WW 
dynamicXX 
shapeXX !
=XX" #
awaitXX$ )
ctxXX* -
.XX- .
ShapeFactoryXX. :
.XX: ;
CreateAsyncXX; F
(XXF G
	shapeTypeXXG P
)XXP Q
;XXQ R

initializeYY 
(YY 
shapeYY $
)YY$ %
;YY% &
returnZZ 
shapeZZ  
;ZZ  !
}[[ 
)[[ 
;[[ 
}\\ 	
publicaa 
ShapeResultaa 
Dynamicaa "
(aa" #
stringaa# )
	shapeTypeaa* 3
)aa3 4
{bb 	
returncc 
Factorycc 
(cc 
	shapeTypecc $
,cc$ %
ctxcc& )
=>cc* ,
ctxcc- 0
.cc0 1
ShapeFactorycc1 =
.cc= >
CreateAsynccc> I
(ccI J
	shapeTypeccJ S
)ccS T
)ccT U
;ccU V
}dd 	
publicii 
ShapeResultii 
Viewii 
<ii  
TModelii  &
>ii& '
(ii' (
stringii( .
	shapeTypeii/ 8
,ii8 9
TModelii: @
modeliiA F
)iiF G
whereiiH M
TModeliiN T
:iiU V
classiiW \
{jj 	
returnkk 
Factorykk 
(kk 
	shapeTypekk $
,kk$ %
ctxkk& )
=>kk* ,
newkk- 0
	ValueTaskkk1 :
<kk: ;
IShapekk; A
>kkA B
(kkB C
newkkC F
ShapeViewModelkkG U
<kkU V
TModelkkV \
>kk\ ]
(kk] ^
modelkk^ c
)kkc d
)kkd e
)kke f
;kkf g
}ll 	
publicqq 
ShapeResultqq 
Shapeqq  
(qq  !
stringqq! '
	shapeTypeqq( 1
,qq1 2
IShapeqq3 9
shapeqq: ?
)qq? @
{rr 	
returnss 
Factoryss 
(ss 
	shapeTypess $
,ss$ %
ctxss& )
=>ss* ,
newss- 0
	ValueTaskss1 :
<ss: ;
IShapess; A
>ssA B
(ssB C
shapessC H
)ssH I
)ssI J
;ssJ K
}tt 	
publicyy 
ShapeResultyy 
Factoryyy "
(yy" #
stringyy# )
	shapeTypeyy* 3
,yy3 4
Funcyy5 9
<yy9 :
IBuildShapeContextyy: L
,yyL M
	ValueTaskyyN W
<yyW X
IShapeyyX ^
>yy^ _
>yy_ `
shapeBuilderyya m
)yym n
{zz 	
return{{ 
Factory{{ 
({{ 
	shapeType{{ $
,{{$ %
shapeBuilder{{& 2
,{{2 3
null{{4 8
){{8 9
;{{9 :
}|| 	
public
ÅÅ 
ShapeResult
ÅÅ 
Factory
ÅÅ "
(
ÅÅ" #
string
ÅÅ# )
	shapeType
ÅÅ* 3
,
ÅÅ3 4
Func
ÅÅ5 9
<
ÅÅ9 : 
IBuildShapeContext
ÅÅ: L
,
ÅÅL M
IShape
ÅÅN T
>
ÅÅT U
shapeBuilder
ÅÅV b
)
ÅÅb c
{
ÇÇ 	
return
ÉÉ 
Factory
ÉÉ 
(
ÉÉ 
	shapeType
ÉÉ $
,
ÉÉ$ %
ctx
ÉÉ& )
=>
ÉÉ* ,
new
ÉÉ- 0
	ValueTask
ÉÉ1 :
<
ÉÉ: ;
IShape
ÉÉ; A
>
ÉÉA B
(
ÉÉB C
shapeBuilder
ÉÉC O
(
ÉÉO P
ctx
ÉÉP S
)
ÉÉS T
)
ÉÉT U
,
ÉÉU V
null
ÉÉW [
)
ÉÉ[ \
;
ÉÉ\ ]
}
ÑÑ 	
public
çç 
virtual
çç 
ShapeResult
çç "
Factory
çç# *
(
çç* +
string
çç+ 1
	shapeType
çç2 ;
,
çç; <
Func
çç= A
<
ççA B 
IBuildShapeContext
ççB T
,
ççT U
	ValueTask
ççV _
<
çç_ `
IShape
çç` f
>
ççf g
>
ççg h
shapeBuilder
ççi u
,
ççu v
Func
ççw {
<
çç{ |
IShapeçç| Ç
,ççÇ É
TaskççÑ à
>ççà â
initializeAsyncççä ô
)ççô ö
{
éé 	
return
èè 
new
èè 
ShapeResult
èè "
(
èè" #
	shapeType
èè# ,
,
èè, -
shapeBuilder
èè. :
,
èè: ;
initializeAsync
èè< K
)
èèK L
.
êê 
Prefix
êê 
(
êê 
Prefix
êê 
)
êê 
;
êê  
}
ëë 	
public
ìì 
CombinedResult
ìì 
Combine
ìì %
(
ìì% &
params
ìì& ,
IDisplayResult
ìì- ;
[
ìì; <
]
ìì< =
results
ìì> E
)
ììE F
{
îî 	
return
ïï 
new
ïï 
CombinedResult
ïï %
(
ïï% &
results
ïï& -
)
ïï- .
;
ïï. /
}
ññ 	
public
òò 
CombinedResult
òò 
Combine
òò %
(
òò% &
IEnumerable
òò& 1
<
òò1 2
IDisplayResult
òò2 @
>
òò@ A
results
òòB I
)
òòI J
{
ôô 	
return
öö 
new
öö 
CombinedResult
öö %
(
öö% &
results
öö& -
)
öö- .
;
öö. /
}
õõ 	
}
úú 
}ùù ª
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\FindPlacementDelegate.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

delegate 
PlacementInfo !!
FindPlacementDelegate" 7
(7 8
string8 >
	shapeType? H
,H I
stringJ P
differentiatorQ _
,_ `
stringa g
displayTypeh s
,s t
IBuildShapeContext	u á
context
à è
)
è ê
;
ê ë
} ‡
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\IBuildShapeContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

	interface 
IBuildShapeContext '
{ 
IShape		 
Shape		 
{		 
get		 
;		 
}		 
IShapeFactory

 
ShapeFactory

 "
{

# $
get

% (
;

( )
}

* +
dynamic 
New 
{ 
get 
; 
} 
IShape 
Layout 
{ 
get 
; 
set  
;  !
}" #
string 
GroupId 
{ 
get 
; 
} !
FindPlacementDelegate 
FindPlacement +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} á
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\IDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

	interface 
IDisplayDriver #
<# $
in$ &
TModel' -
,- .
TDisplayContext/ >
,> ?
TEditorContext@ N
,N O
TUpdateContextP ^
>^ _
where 
TDisplayContext 
: 
BuildDisplayContext  3
where 
TEditorContext 
: 
BuildEditorContext 1
where		 
TUpdateContext		 
:		 
UpdateEditorContext		 2
{

 
Task 
< 
IDisplayResult 
> 
BuildDisplayAsync .
(. /
TModel/ 5
model6 ;
,; <
TDisplayContext= L
contextM T
)T U
;U V
Task 
< 
IDisplayResult 
> 
BuildEditorAsync -
(- .
TModel. 4
model5 :
,: ;
TEditorContext< J
contextK R
)R S
;S T
Task 
< 
IDisplayResult 
> 
UpdateEditorAsync .
(. /
TModel/ 5
model6 ;
,; <
TUpdateContext= K
contextL S
)S T
;T U
} 
public 

	interface 
IDisplayDriver #
<# $
in$ &
TModel' -
>- .
:/ 0
IDisplayDriver1 ?
<? @
TModel@ F
,F G
BuildDisplayContextH [
,[ \
BuildEditorContext] o
,o p 
UpdateEditorContext	q Ñ
>
Ñ Ö
{ 
} 
} £
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\IDisplayHandler.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

	interface 
IDisplayHandler $
<$ %
TModel% +
>+ ,
{ 
Task 
BuildDisplayAsync 
( 
TModel %
model& +
,+ ,
BuildDisplayContext- @
contextA H
)H I
;I J
Task 
BuildEditorAsync 
( 
TModel $
model% *
,* +
BuildEditorContext, >
context? F
)F G
;G H
Task		 
UpdateEditorAsync		 
(		 
TModel		 %
model		& +
,		+ ,
UpdateEditorContext		- @
context		A H
)		H I
;		I J
}

 
} ˙	
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Handlers\UpdateEditorContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Handlers( 0
{ 
public 

class 
UpdateEditorContext $
:% &
BuildEditorContext' 9
{ 
public 
UpdateEditorContext "
(" #
IShape# )
model* /
,/ 0
string1 7
groupId8 ?
,? @
boolA E
isNewF K
,K L
stringM S
htmlFieldPrefixT c
,c d
IShapeFactorye r
shapeFactorys 
,	 Ä
IShape		 
layout		 
,		 
IUpdateModel		 '
updater		( /
)		/ 0
:

 
base

 
(

 
model

 
,

 
groupId

 !
,

! "
isNew

# (
,

( )
htmlFieldPrefix

* 9
,

9 :
shapeFactory

; G
,

G H
layout

I O
,

O P
updater

Q X
)

X Y
{ 	
} 	
} 
} ‰
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IAsyncViewActionFilter.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

	interface "
IAsyncViewActionFilter +
:, -
IAsyncActionFilter. @
,@ A
IAsyncPageFilterB R
{ 
Task		 "
OnActionExecutionAsync		 #
(		# $
ActionContext		$ 1
context		2 9
)		9 :
;		: ;
}

 
} ¢
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IDisplayHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

	interface 
IDisplayHelper #
{ 
Task 
< 
IHtmlContent 
> 
ShapeExecuteAsync ,
(, -
object- 3
shape4 9
)9 :
;: ;
}		 
}

 «
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IDisplayManager.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

	interface 
IDisplayManager $
<$ %
TModel% +
>+ ,
{ 
Task 
< 
IShape 
> 
BuildDisplayAsync &
(& '
TModel' -
model. 3
,3 4
IUpdateModel5 A
updaterB I
,I J
stringK Q
displayTypeR ]
=^ _
$str` b
,b c
stringd j
groupIdk r
=s t
$stru w
)w x
;x y
Task		 
<		 
IShape		 
>		 
BuildEditorAsync		 %
(		% &
TModel		& ,
model		- 2
,		2 3
IUpdateModel		4 @
updater		A H
,		H I
bool		J N
isNew		O T
,		T U
string		V \
groupId		] d
=		e f
$str		g i
)		i j
;		j k
Task

 
<

 
IShape

 
>

 
UpdateEditorAsync

 &
(

& '
TModel

' -
model

. 3
,

3 4
IUpdateModel

5 A
updater

B I
,

I J
bool

K O
isNew

P U
,

U V
string

W ]
groupId

^ e
=

f g
$str

h j
)

j k
;

k l
} 
} Ÿ¬
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\DefaultHtmlDisplay.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{ 
public 

class 
DefaultHtmlDisplay #
:$ %
IHtmlDisplay& 2
{ 
private 
readonly 
IShapeTableManager +
_shapeTableManager, >
;> ?
private 
readonly 
IEnumerable $
<$ %
IShapeDisplayEvents% 8
>8 9
_shapeDisplayEvents: M
;M N
private 
readonly 
IEnumerable $
<$ %!
IShapeBindingResolver% :
>: ;"
_shapeBindingResolvers< R
;R S
private 
readonly 
IThemeManager &
_themeManager' 4
;4 5
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
ILogger  
_logger! (
;( )
public 
DefaultHtmlDisplay !
(! "
IEnumerable 
< 
IShapeDisplayEvents +
>+ ,
shapeDisplayEvents- ?
,? @
IEnumerable 
< !
IShapeBindingResolver -
>- .!
shapeBindingResolvers/ D
,D E
IShapeTableManager 
shapeTableManager 0
,0 1
IServiceProvider 
serviceProvider ,
,, -
ILogger 
< 
DefaultHtmlDisplay &
>& '
logger( .
,. /
IThemeManager 
themeManager &
)& '
{ 	
_shapeTableManager   
=    
shapeTableManager  ! 2
;  2 3
_shapeDisplayEvents!! 
=!!  !
shapeDisplayEvents!!" 4
;!!4 5"
_shapeBindingResolvers"" "
=""# $!
shapeBindingResolvers""% :
;"": ;
_themeManager## 
=## 
themeManager## (
;##( )
_serviceProvider$$ 
=$$ 
serviceProvider$$ .
;$$. /
_logger%% 
=%% 
logger%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
IHtmlContent(( &
>((& '
ExecuteAsync((( 4
(((4 5
DisplayContext((5 C
context((D K
)((K L
{)) 	
var** 
shape** 
=** 
context** 
.**  
Value**  %
as**& (
IShape**) /
;**/ 0
if-- 
(-- 
shape-- 
==-- 
null-- 
)-- 
{.. 
return// 
CoerceHtmlString// '
(//' (
context//( /
./// 0
Value//0 5
)//5 6
;//6 7
}00 
var22 
shapeMetadata22 
=22 
shape22  %
.22% &
Metadata22& .
;22. /
if55 
(55 
shapeMetadata55 
==55  
null55! %
||55& (
string55) /
.55/ 0
IsNullOrEmpty550 =
(55= >
shapeMetadata55> K
.55K L
Type55L P
)55P Q
)55Q R
{66 
return77 
CoerceHtmlString77 '
(77' (
context77( /
.77/ 0
Value770 5
)775 6
;776 7
}88 
var<< 
localContext<< 
=<< 
new<< "
DisplayContext<<# 1
(<<1 2
context<<2 9
)<<9 :
;<<: ;
localContext== 
.== 
HtmlFieldPrefix== (
===) *
shapeMetadata==+ 8
.==8 9
Prefix==9 ?
??==@ B
$str==C E
;==E F
var?? 
displayContext?? 
=??  
new??! $
ShapeDisplayContext??% 8
{@@ 
ShapeAA 
=AA 
shapeAA 
,AA 
DisplayContextBB 
=BB  
localContextBB! -
,BB- .
ServiceProviderCC 
=CC  !
_serviceProviderCC" 2
}DD 
;DD 
tryFF 
{GG 
varHH 
themeHH 
=HH 
awaitHH !
_themeManagerHH" /
.HH/ 0
GetThemeAsyncHH0 =
(HH= >
)HH> ?
;HH? @
varII 

shapeTableII 
=II  
_shapeTableManagerII! 3
.II3 4
GetShapeTableII4 A
(IIA B
themeIIB G
?IIG H
.IIH I
IdIII K
)IIK L
;IIL M
awaitLL 
_shapeDisplayEventsLL )
.LL) *
InvokeAsyncLL* 5
(LL5 6
(LL6 7
eLL7 8
,LL8 9
displayContextLL: H
)LLH I
=>LLJ L
eLLM N
.LLN O
DisplayingAsyncLLO ^
(LL^ _
displayContextLL_ m
)LLm n
,LLn o
displayContextLLp ~
,LL~ 
_logger
LLÄ á
)
LLá à
;
LLà â
varPP 
shapeDescriptorPP #
=PP$ %
GetShapeDescriptorPP& 8
(PP8 9
shapeMetadataPP9 F
.PPF G
TypePPG K
,PPK L

shapeTablePPM W
)PPW X
;PPX Y
ifQQ 
(QQ 
shapeDescriptorQQ #
!=QQ$ &
nullQQ' +
)QQ+ ,
{RR 
awaitSS 
shapeDescriptorSS )
.SS) *
DisplayingAsyncSS* 9
.SS9 :
InvokeAsyncSS: E
(SSE F
(SSF G
actionSSG M
,SSM N
displayContextSSO ]
)SS] ^
=>SS_ a
actionSSb h
(SSh i
displayContextSSi w
)SSw x
,SSx y
displayContext	SSz à
,
SSà â
_logger
SSä ë
)
SSë í
;
SSí ì
shapeMetadataVV !
.VV! "
BindingSourcesVV" 0
=VV1 2
shapeDescriptorVV3 B
.VVB C
BindingSourcesVVC Q
.VVQ R
WhereVVR W
(VVW X
xVVX Y
=>VVZ \
xVV] ^
!=VV_ a
nullVVb f
)VVf g
.VVg h
ToListVVh n
(VVn o
)VVo p
;VVp q
ifWW 
(WW 
!WW 
shapeMetadataWW &
.WW& '
BindingSourcesWW' 5
.WW5 6
AnyWW6 9
(WW9 :
)WW: ;
)WW; <
{XX 
shapeMetadataYY %
.YY% &
BindingSourcesYY& 4
.YY4 5
AddYY5 8
(YY8 9
shapeDescriptorYY9 H
.YYH I
BindingSourceYYI V
)YYV W
;YYW X
}ZZ 
}[[ 
shapeMetadata^^ 
.^^ 

Displaying^^ (
.^^( )
Invoke^^) /
(^^/ 0
action^^0 6
=>^^7 9
action^^: @
(^^@ A
displayContext^^A O
)^^O P
,^^P Q
_logger^^R Y
)^^Y Z
;^^Z [
ifaa 
(aa 
displayContextaa "
.aa" #
ChildContentaa# /
!=aa0 2
nullaa3 7
)aa7 8
{bb 
shapecc 
.cc 
Metadatacc "
.cc" #
ChildContentcc# /
=cc0 1
displayContextcc2 @
.cc@ A
ChildContentccA M
;ccM N
}dd 
ifff 
(ff 
shapeff 
.ff 
Metadataff "
.ff" #
ChildContentff# /
==ff0 2
nullff3 7
)ff7 8
{gg 
ifii 
(ii 
shapeDescriptorii '
!=ii( *
nullii+ /
)ii/ 0
{jj 
awaitkk 
shapeDescriptorkk -
.kk- .
ProcessingAsynckk. =
.kk= >
InvokeAsynckk> I
(kkI J
(kkJ K
actionkkK Q
,kkQ R
displayContextkkS a
)kka b
=>kkc e
actionkkf l
(kkl m
displayContextkkm {
)kk{ |
,kk| }
displayContext	kk~ å
,
kkå ç
_logger
kké ï
)
kkï ñ
;
kkñ ó
}ll 
varoo 
actualBindingoo %
=oo& '
awaitoo( - 
GetShapeBindingAsyncoo. B
(ooB C
shapeMetadataooC P
.ooP Q
TypeooQ U
,ooU V
shapeMetadataooW d
.ood e

Alternatesooe o
,ooo p

shapeTableooq {
)oo{ |
;oo| }
ifpp 
(pp 
actualBindingpp %
!=pp& (
nullpp) -
)pp- .
{qq 
awaitrr 
shapeMetadatarr +
.rr+ ,
ProcessingAsyncrr, ;
.rr; <
InvokeAsyncrr< G
(rrG H
(rrH I
actionrrI O
,rrO P
displayContextrrQ _
)rr_ `
=>rra c
actionrrd j
(rrj k
displayContextrrk y
.rry z
Shaperrz 
)	rr Ä
,
rrÄ Å
displayContext
rrÇ ê
,
rrê ë
_logger
rrí ô
)
rrô ö
;
rrö õ
shapett 
.tt 
Metadatatt &
.tt& '
ChildContenttt' 3
=tt4 5
awaittt6 ;
ProcessAsynctt< H
(ttH I
actualBindingttI V
,ttV W
shapettX ]
,tt] ^
localContexttt_ k
)ttk l
;ttl m
}uu 
elsevv 
{ww 
throwxx 
newxx !
	Exceptionxx" +
(xx+ ,
$"xx, .
Shape type 'xx. :
{xx: ;
shapeMetadataxx; H
.xxH I
TypexxI M
}xxM N
' not foundxxN Y
"xxY Z
)xxZ [
;xx[ \
}yy 
}zz 
if}} 
(}} 
shape}} 
.}} 
Metadata}} "
.}}" #
Wrappers}}# +
.}}+ ,
Count}}, 1
>}}2 3
$num}}4 5
)}}5 6
{~~ 
foreach 
( 
var  
	frameType! *
in+ -
shape. 3
.3 4
Metadata4 <
.< =
Wrappers= E
)E F
{
ÄÄ 
var
ÅÅ 
frameBinding
ÅÅ (
=
ÅÅ) *
await
ÅÅ+ 0"
GetShapeBindingAsync
ÅÅ1 E
(
ÅÅE F
	frameType
ÅÅF O
,
ÅÅO P"
AlternatesCollection
ÅÅQ e
.
ÅÅe f
Empty
ÅÅf k
,
ÅÅk l

shapeTable
ÅÅm w
)
ÅÅw x
;
ÅÅx y
if
ÇÇ 
(
ÇÇ 
frameBinding
ÇÇ (
!=
ÇÇ) +
null
ÇÇ, 0
)
ÇÇ0 1
{
ÉÉ 
shape
ÑÑ !
.
ÑÑ! "
Metadata
ÑÑ" *
.
ÑÑ* +
ChildContent
ÑÑ+ 7
=
ÑÑ8 9
await
ÑÑ: ?
ProcessAsync
ÑÑ@ L
(
ÑÑL M
frameBinding
ÑÑM Y
,
ÑÑY Z
shape
ÑÑ[ `
,
ÑÑ` a
localContext
ÑÑb n
)
ÑÑn o
;
ÑÑo p
}
ÖÖ 
}
ÜÜ 
shape
ââ 
.
ââ 
Metadata
ââ "
.
ââ" #
Wrappers
ââ# +
.
ââ+ ,
Clear
ââ, 1
(
ââ1 2
)
ââ2 3
;
ââ3 4
}
ää 
await
åå !
_shapeDisplayEvents
åå )
.
åå) *
InvokeAsync
åå* 5
(
åå5 6
async
åå6 ;
(
åå< =
e
åå= >
,
åå> ?
displayContext
åå@ N
)
ååN O
=>
ååP R
{
çç 
var
éé 
prior
éé 
=
éé 
displayContext
éé  .
.
éé. /
ChildContent
éé/ ;
=
éé< =
displayContext
éé> L
.
ééL M
Shape
ééM R
.
ééR S
Metadata
ééS [
.
éé[ \
ChildContent
éé\ h
;
ééh i
await
êê 
e
êê 
.
êê 
DisplayedAsync
êê *
(
êê* +
displayContext
êê+ 9
)
êê9 :
;
êê: ;
if
ìì 
(
ìì 
prior
ìì 
!=
ìì  
displayContext
ìì! /
.
ìì/ 0
ChildContent
ìì0 <
)
ìì< =
{
îî 
displayContext
ïï &
.
ïï& '
Shape
ïï' ,
.
ïï, -
Metadata
ïï- 5
.
ïï5 6
ChildContent
ïï6 B
=
ïïC D
displayContext
ïïE S
.
ïïS T
ChildContent
ïïT `
;
ïï` a
}
ññ 
}
óó 
,
óó 
displayContext
óó !
,
óó! "
_logger
óó# *
)
óó* +
;
óó+ ,
if
ôô 
(
ôô 
shapeDescriptor
ôô #
!=
ôô$ &
null
ôô' +
)
ôô+ ,
{
öö 
await
õõ 
shapeDescriptor
õõ )
.
õõ) *
DisplayedAsync
õõ* 8
.
õõ8 9
InvokeAsync
õõ9 D
(
õõD E
async
õõE J
(
õõK L
action
õõL R
,
õõR S
displayContext
õõT b
)
õõb c
=>
õõd f
{
úú 
var
ùù 
prior
ùù !
=
ùù" #
displayContext
ùù$ 2
.
ùù2 3
ChildContent
ùù3 ?
=
ùù@ A
displayContext
ùùB P
.
ùùP Q
Shape
ùùQ V
.
ùùV W
Metadata
ùùW _
.
ùù_ `
ChildContent
ùù` l
;
ùùl m
await
üü 
action
üü $
(
üü$ %
displayContext
üü% 3
)
üü3 4
;
üü4 5
if
¢¢ 
(
¢¢ 
prior
¢¢ !
!=
¢¢" $
displayContext
¢¢% 3
.
¢¢3 4
ChildContent
¢¢4 @
)
¢¢@ A
{
££ 
displayContext
§§ *
.
§§* +
Shape
§§+ 0
.
§§0 1
Metadata
§§1 9
.
§§9 :
ChildContent
§§: F
=
§§G H
displayContext
§§I W
.
§§W X
ChildContent
§§X d
;
§§d e
}
•• 
}
¶¶ 
,
¶¶ 
displayContext
¶¶ %
,
¶¶% &
_logger
¶¶' .
)
¶¶. /
;
¶¶/ 0
}
ßß 
shapeMetadata
™™ 
.
™™ 
	Displayed
™™ '
.
™™' (
Invoke
™™( .
(
™™. /
(
™™/ 0
action
™™0 6
,
™™6 7
displayContext
™™8 F
)
™™F G
=>
™™H J
action
™™K Q
(
™™Q R
displayContext
™™R `
)
™™` a
,
™™a b
displayContext
™™c q
,
™™q r
_logger
™™s z
)
™™z {
;
™™{ |
}
´´ 
finally
¨¨ 
{
≠≠ 
await
ÆÆ !
_shapeDisplayEvents
ÆÆ )
.
ÆÆ) *
InvokeAsync
ÆÆ* 5
(
ÆÆ5 6
(
ÆÆ6 7
e
ÆÆ7 8
,
ÆÆ8 9
displayContext
ÆÆ: H
)
ÆÆH I
=>
ÆÆJ L
e
ÆÆM N
.
ÆÆN O&
DisplayingFinalizedAsync
ÆÆO g
(
ÆÆg h
displayContext
ÆÆh v
)
ÆÆv w
,
ÆÆw x
displayContextÆÆy á
,ÆÆá à
_loggerÆÆâ ê
)ÆÆê ë
;ÆÆë í
}
ØØ 
return
±± 
shape
±± 
.
±± 
Metadata
±± !
.
±±! "
ChildContent
±±" .
;
±±. /
}
≤≤ 	
private
¥¥ 
static
¥¥ 
ShapeDescriptor
¥¥ & 
GetShapeDescriptor
¥¥' 9
(
¥¥9 :
string
¥¥: @
	shapeType
¥¥A J
,
¥¥J K

ShapeTable
¥¥L V

shapeTable
¥¥W a
)
¥¥a b
{
µµ 	
if
ªª 
(
ªª 
!
ªª 

shapeTable
ªª 
.
ªª 
Descriptors
ªª '
.
ªª' (
TryGetValue
ªª( 3
(
ªª3 4
	shapeType
ªª4 =
,
ªª= >
out
ªª? B
var
ªªC F
shapeDescriptor
ªªG V
)
ªªV W
)
ªªW X
{
ºº 
var
ææ 
index
ææ 
=
ææ 
	shapeType
ææ %
.
ææ% &
IndexOf
ææ& -
(
ææ- .
$str
ææ. 2
,
ææ2 3
StringComparison
ææ4 D
.
ææD E
Ordinal
ææE L
)
ææL M
;
ææM N
if
¿¿ 
(
¿¿ 
index
¿¿ 
>
¿¿ 
$num
¿¿ 
)
¿¿ 
{
¡¡ 

shapeTable
√√ 
.
√√ 
Descriptors
√√ *
.
√√* +
TryGetValue
√√+ 6
(
√√6 7
	shapeType
√√7 @
.
√√@ A
	Substring
√√A J
(
√√J K
$num
√√K L
,
√√L M
index
√√N S
)
√√S T
,
√√T U
out
√√V Y
shapeDescriptor
√√Z i
)
√√i j
;
√√j k
}
ƒƒ 
}
≈≈ 
return
«« 
shapeDescriptor
«« "
;
««" #
}
»» 	
private
   
async
   
Task
   
<
   
ShapeBinding
   '
>
  ' ("
GetShapeBindingAsync
  ) =
(
  = >
string
  > D
	shapeType
  E N
,
  N O"
AlternatesCollection
  P d
shapeAlternates
  e t
,
  t u

ShapeTable  v Ä

shapeTable  Å ã
)  ã å
{
ÀÀ 	
for
–– 
(
–– 
var
–– 
i
–– 
=
–– 
shapeAlternates
–– (
.
––( )
Count
––) .
-
––/ 0
$num
––1 2
;
––2 3
i
––4 5
>=
––6 8
$num
––9 :
;
––: ;
i
––< =
--
––= ?
)
––? @
{
—— 
var
““ 
shapeAlternate
““ "
=
““# $
shapeAlternates
““% 4
[
““4 5
i
““5 6
]
““6 7
;
““7 8
foreach
‘‘ 
(
‘‘ 
var
‘‘ "
shapeBindingResolver
‘‘ 1
in
‘‘2 4$
_shapeBindingResolvers
‘‘5 K
)
‘‘K L
{
’’ 
var
÷÷ 
binding
÷÷ 
=
÷÷  !
await
÷÷" '"
shapeBindingResolver
÷÷( <
.
÷÷< ="
GetShapeBindingAsync
÷÷= Q
(
÷÷Q R
shapeAlternate
÷÷R `
)
÷÷` a
;
÷÷a b
if
ÿÿ 
(
ÿÿ 
binding
ÿÿ 
!=
ÿÿ  "
null
ÿÿ# '
)
ÿÿ' (
{
ŸŸ 
return
⁄⁄ 
binding
⁄⁄ &
;
⁄⁄& '
}
€€ 
}
‹‹ 
if
ﬁﬁ 
(
ﬁﬁ 

shapeTable
ﬁﬁ 
.
ﬁﬁ 
Bindings
ﬁﬁ '
.
ﬁﬁ' (
TryGetValue
ﬁﬁ( 3
(
ﬁﬁ3 4
shapeAlternate
ﬁﬁ4 B
,
ﬁﬁB C
out
ﬁﬁD G
var
ﬁﬁH K
shapeBinding
ﬁﬁL X
)
ﬁﬁX Y
)
ﬁﬁY Z
{
ﬂﬂ 
return
‡‡ 
shapeBinding
‡‡ '
;
‡‡' (
}
·· 
}
‚‚ 
var
ÁÁ 
shapeTypeScan
ÁÁ 
=
ÁÁ 
	shapeType
ÁÁ  )
;
ÁÁ) *
do
ÈÈ 
{
ÍÍ 
foreach
ÎÎ 
(
ÎÎ 
var
ÎÎ "
shapeBindingResolver
ÎÎ 1
in
ÎÎ2 4$
_shapeBindingResolvers
ÎÎ5 K
)
ÎÎK L
{
ÏÏ 
var
ÌÌ 
binding
ÌÌ 
=
ÌÌ  !
await
ÌÌ" '"
shapeBindingResolver
ÌÌ( <
.
ÌÌ< ="
GetShapeBindingAsync
ÌÌ= Q
(
ÌÌQ R
shapeTypeScan
ÌÌR _
)
ÌÌ_ `
;
ÌÌ` a
if
ÔÔ 
(
ÔÔ 
binding
ÔÔ 
!=
ÔÔ  "
null
ÔÔ# '
)
ÔÔ' (
{
 
return
ÒÒ 
binding
ÒÒ &
;
ÒÒ& '
}
ÚÚ 
}
ÛÛ 
if
ıı 
(
ıı 

shapeTable
ıı 
.
ıı 
Bindings
ıı '
.
ıı' (
TryGetValue
ıı( 3
(
ıı3 4
shapeTypeScan
ıı4 A
,
ııA B
out
ııC F
var
ııG J
shapeBinding
ııK W
)
ııW X
)
ııX Y
{
ˆˆ 
return
˜˜ 
shapeBinding
˜˜ '
;
˜˜' (
}
¯¯ 
}
˘˘ 
while
˙˙ 
(
˙˙ '
TryGetParentShapeTypeName
˙˙ ,
(
˙˙, -
ref
˙˙- 0
shapeTypeScan
˙˙1 >
)
˙˙> ?
)
˙˙? @
;
˙˙@ A
return
¸¸ 
null
¸¸ 
;
¸¸ 
}
˝˝ 	
private
ˇˇ 
static
ˇˇ 
IHtmlContent
ˇˇ #
CoerceHtmlString
ˇˇ$ 4
(
ˇˇ4 5
object
ˇˇ5 ;
value
ˇˇ< A
)
ˇˇA B
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
value
ÅÅ 
==
ÅÅ 
null
ÅÅ 
)
ÅÅ 
{
ÇÇ 
return
ÉÉ 
null
ÉÉ 
;
ÉÉ 
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 
value
ÜÜ 
is
ÜÜ 
IHtmlContent
ÜÜ %
result
ÜÜ& ,
)
ÜÜ, -
{
áá 
return
àà 
result
àà 
;
àà 
}
ìì 
return
ññ 
new
ññ 
StringHtmlContent
ññ (
(
ññ( )
value
ññ) .
.
ññ. /
ToString
ññ/ 7
(
ññ7 8
)
ññ8 9
)
ññ9 :
;
ññ: ;
}
óó 	
private
ôô 
static
ôô 
bool
ôô '
TryGetParentShapeTypeName
ôô 5
(
ôô5 6
ref
ôô6 9
string
ôô: @
shapeTypeScan
ôôA N
)
ôôN O
{
öö 	
var
õõ 
delimiterIndex
õõ 
=
õõ  
shapeTypeScan
õõ! .
.
õõ. /
LastIndexOf
õõ/ :
(
õõ: ;
$str
õõ; ?
,
õõ? @
StringComparison
õõA Q
.
õõQ R
Ordinal
õõR Y
)
õõY Z
;
õõZ [
if
úú 
(
úú 
delimiterIndex
úú 
>
úú  
$num
úú! "
)
úú" #
{
ùù 
shapeTypeScan
ûû 
=
ûû 
shapeTypeScan
ûû  -
.
ûû- .
	Substring
ûû. 7
(
ûû7 8
$num
ûû8 9
,
ûû9 :
delimiterIndex
ûû; I
)
ûûI J
;
ûûJ K
return
üü 
true
üü 
;
üü 
}
†† 
return
°° 
false
°° 
;
°° 
}
¢¢ 	
private
§§ 
static
§§ 
	ValueTask
§§  
<
§§  !
IHtmlContent
§§! -
>
§§- .
ProcessAsync
§§/ ;
(
§§; <
ShapeBinding
§§< H
shapeBinding
§§I U
,
§§U V
IShape
§§W ]
shape
§§^ c
,
§§c d
DisplayContext
§§e s
context
§§t {
)
§§{ |
{
•• 	
async
¶¶ 
	ValueTask
¶¶ 
<
¶¶ 
IHtmlContent
¶¶ (
>
¶¶( )
Awaited
¶¶* 1
(
¶¶1 2
Task
¶¶2 6
<
¶¶6 7
IHtmlContent
¶¶7 C
>
¶¶C D
task
¶¶E I
)
¶¶I J
{
ßß 
return
®® 
CoerceHtmlString
®® '
(
®®' (
await
®®( -
task
®®. 2
)
®®2 3
;
®®3 4
}
©© 
if
´´ 
(
´´ 
shapeBinding
´´ 
?
´´ 
.
´´ 
BindingAsync
´´ *
==
´´+ -
null
´´. 2
)
´´2 3
{
¨¨ 
return
ÆÆ 
new
ÆÆ 
	ValueTask
ÆÆ $
<
ÆÆ$ %
IHtmlContent
ÆÆ% 1
>
ÆÆ1 2
(
ÆÆ2 3
shape
ÆÆ3 8
.
ÆÆ8 9
Metadata
ÆÆ9 A
.
ÆÆA B
ChildContent
ÆÆB N
??
ÆÆO Q

HtmlString
ÆÆR \
.
ÆÆ\ ]
Empty
ÆÆ] b
)
ÆÆb c
;
ÆÆc d
}
ØØ 
var
±± 
task
±± 
=
±± 
shapeBinding
±± #
.
±±# $
BindingAsync
±±$ 0
(
±±0 1
context
±±1 8
)
±±8 9
;
±±9 :
if
≥≥ 
(
≥≥ 
!
≥≥ 
task
≥≥ 
.
≥≥ %
IsCompletedSuccessfully
≥≥ -
)
≥≥- .
{
¥¥ 
return
µµ 
Awaited
µµ 
(
µµ 
task
µµ #
)
µµ# $
;
µµ$ %
}
∂∂ 
return
∏∏ 
new
∏∏ 
	ValueTask
∏∏  
<
∏∏  !
IHtmlContent
∏∏! -
>
∏∏- .
(
∏∏. /
CoerceHtmlString
∏∏/ ?
(
∏∏? @
task
∏∏@ D
.
∏∏D E
Result
∏∏E K
)
∏∏K L
)
∏∏L M
;
∏∏M N
}
ππ 	
}
∫∫ 
}ªª ÏT
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\DefaultShapeFactory.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{		 
public

 

class

 
DefaultShapeFactory

 $
:

% &
DynamicObject

' 4
,

4 5
IShapeFactory

6 C
{ 
private 
readonly 
IEnumerable $
<$ %
IShapeFactoryEvents% 8
>8 9
_events: A
;A B
private 
readonly 
IShapeTableManager +
_shapeTableManager, >
;> ?
private 
readonly 
IThemeManager &
_themeManager' 4
;4 5
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 

ShapeTable 
_scopedShapeTable ,
;, -
public 
DefaultShapeFactory "
(" #
IEnumerable 
< 
IShapeFactoryEvents +
>+ ,
events- 3
,3 4
IShapeTableManager 
shapeTableManager 0
,0 1
IThemeManager 
themeManager &
,& '
IServiceProvider 
serviceProvider ,
), -
{ 	
_events 
= 
events 
; 
_shapeTableManager 
=  
shapeTableManager! 2
;2 3
_themeManager 
= 
themeManager (
;( )
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
dynamic 
New 
=> 
this "
;" #
public   
override   
bool   
TryInvokeMember   ,
(  , -
InvokeMemberBinder  - ?
binder  @ F
,  F G
object  H N
[  N O
]  O P
args  Q U
,  U V
out  W Z
object  [ a
result  b h
)  h i
{!! 	
var%% 

binderName%% 
=%% 
binder%% #
.%%# $
Name%%$ (
;%%( )
if'' 
('' 

binderName'' 
.'' 
EndsWith'' #
(''# $
$str''$ +
,''+ ,
StringComparison''- =
.''= >
Ordinal''> E
)''E F
)''F G
{(( 

binderName)) 
=)) 
binder)) #
.))# $
Name))$ (
.))( )
	Substring))) 2
())2 3
binder))3 9
.))9 :
Name)): >
.))> ?
Length))? E
-))F G
$str))H O
.))O P
Length))P V
)))V W
;))W X
}** 
result,, 
=,, "
ShapeFactoryExtensions,, +
.,,+ ,
CreateAsync,,, 7
(,,7 8
this,,8 <
,,,< =

binderName,,> H
,,,H I
	Arguments,,J S
.,,S T
From,,T X
(,,X Y
args,,Y ]
,,,] ^
binder,,_ e
.,,e f
CallInfo,,f n
.,,n o
ArgumentNames,,o |
),,| }
),,} ~
;,,~ 
return.. 
true.. 
;.. 
}// 	
private11 
async11 
Task11 
<11 

ShapeTable11 %
>11% &
GetShapeTableAsync11' 9
(119 :
)11: ;
{22 	
if33 
(33 
_scopedShapeTable33 !
==33" $
null33% )
)33) *
{44 
var55 
theme55 
=55 
await55 !
_themeManager55" /
.55/ 0
GetThemeAsync550 =
(55= >
)55> ?
;55? @
_scopedShapeTable66 !
=66" #
_shapeTableManager66$ 6
.666 7
GetShapeTable667 D
(66D E
theme66E J
?66J K
.66K L
Id66L N
)66N O
;66O P
}77 
return99 
_scopedShapeTable99 $
;99$ %
}:: 	
public<< 
async<< 
	ValueTask<< 
<<< 
IShape<< %
><<% &
CreateAsync<<' 2
(<<2 3
string<<3 9
	shapeType<<: C
,<<C D
Func<<E I
<<<I J
	ValueTask<<J S
<<<S T
IShape<<T Z
><<Z [
><<[ \
shapeFactory<<] i
,<<i j
Action<<k q
<<<q r!
ShapeCreatingContext	<<r Ü
>
<<Ü á
creating
<<à ê
,
<<ê ë
Action
<<í ò
<
<<ò ô!
ShapeCreatedContext
<<ô ¨
>
<<¨ ≠
created
<<Æ µ
)
<<µ ∂
{== 	
ShapeDescriptor>> 
shapeDescriptor>> +
;>>+ ,
(?? 
await?? 
GetShapeTableAsync?? %
(??% &
)??& '
)??' (
.??( )
Descriptors??) 4
.??4 5
TryGetValue??5 @
(??@ A
	shapeType??A J
,??J K
out??L O
shapeDescriptor??P _
)??_ `
;??` a
varAA 
creatingContextAA 
=AA  !
newAA" % 
ShapeCreatingContextAA& :
{BB 
ServiceProviderCC 
=CC  !
_serviceProviderCC" 2
,CC2 3
NewDD 
=DD 
thisDD 
,DD 
ShapeFactoryEE 
=EE 
thisEE #
,EE# $
	ShapeTypeFF 
=FF 
	shapeTypeFF %
,FF% &
	OnCreatedGG 
=GG 
newGG 
ListGG  $
<GG$ %
FuncGG% )
<GG) *
ShapeCreatedContextGG* =
,GG= >
TaskGG? C
>GGC D
>GGD E
(GGE F
)GGF G
,GGG H
CreateAsyncHH 
=HH 
shapeFactoryHH *
}II 
;II 
creatingKK 
?KK 
.KK 
InvokeKK 
(KK 
creatingContextKK ,
)KK, -
;KK- .
foreachNN 
(NN 
varNN 
evNN 
inNN 
_eventsNN &
)NN& '
{OO 
evPP 
.PP 
CreatingPP 
(PP 
creatingContextPP +
)PP+ ,
;PP, -
}QQ 
ifSS 
(SS 
shapeDescriptorSS 
!=SS  "
nullSS# '
)SS' (
{TT 
foreachUU 
(UU 
varUU 
evUU 
inUU  "
shapeDescriptorUU# 2
.UU2 3
CreatingAsyncUU3 @
)UU@ A
{VV 
awaitWW 
evWW 
(WW 
creatingContextWW ,
)WW, -
;WW- .
}XX 
}YY 
var\\ 
createdContext\\ 
=\\  
new\\! $
ShapeCreatedContext\\% 8
{]] 
ServiceProvider^^ 
=^^  !
_serviceProvider^^" 2
,^^2 3
New__ 
=__ 
creatingContext__ %
.__% &
New__& )
,__) *
ShapeFactory`` 
=`` 
creatingContext`` .
.``. /
ShapeFactory``/ ;
,``; <
	ShapeTypeaa 
=aa 
creatingContextaa +
.aa+ ,
	ShapeTypeaa, 5
,aa5 6
Shapebb 
=bb 
awaitbb 
creatingContextbb -
.bb- .
CreateAsyncbb. 9
(bb9 :
)bb: ;
}cc 
;cc 
varee 
shapeee 
=ee 
createdContextee &
.ee& '
Shapeee' ,
asee- /
IShapeee0 6
;ee6 7
ifgg 
(gg 
shapegg 
==gg 
nullgg 
)gg 
{hh 
throwii 
newii %
InvalidOperationExceptionii 3
(ii3 4
$strii4 S
+iiT U
createdContextiiV d
.iid e
Shapeiie j
.iij k
GetTypeiik r
(iir s
)iis t
.iit u
ToStringiiu }
(ii} ~
)ii~ 
)	ii Ä
;
iiÄ Å
}jj 
varll 
shapeMetadatall 
=ll 
shapell  %
.ll% &
Metadatall& .
;ll. /
shapeMetadatamm 
.mm 
Typemm 
=mm  
	shapeTypemm! *
;mm* +
ifpp 
(pp 
shapeDescriptorpp 
!=pp  "
nullpp# '
&&pp( *
shapeMetadatapp+ 8
.pp8 9
Wrapperspp9 A
.ppA B
CountppB G
+ppH I
shapeDescriptorppJ Y
.ppY Z
WrappersppZ b
.ppb c
Countppc h
>ppi j
$numppk l
)ppl m
{qq 
shapeMetadatarr 
.rr 
Wrappersrr &
.rr& '
AddRangerr' /
(rr/ 0
shapeDescriptorrr0 ?
.rr? @
Wrappersrr@ H
)rrH I
;rrI J
}ss 
foreachvv 
(vv 
varvv 
evvv 
invv 
_eventsvv &
)vv& '
{ww 
evxx 
.xx 
Createdxx 
(xx 
createdContextxx )
)xx) *
;xx* +
}yy 
if{{ 
({{ 
shapeDescriptor{{ 
!={{  "
null{{# '
){{' (
{|| 
foreach}} 
(}} 
var}} 
ev}} 
in}}  "
shapeDescriptor}}# 2
.}}2 3
CreatedAsync}}3 ?
)}}? @
{~~ 
await 
ev 
( 
createdContext +
)+ ,
;, -
}
ÄÄ 
}
ÅÅ 
if
ÉÉ 
(
ÉÉ 
creatingContext
ÉÉ 
!=
ÉÉ  "
null
ÉÉ# '
)
ÉÉ' (
{
ÑÑ 
foreach
ÖÖ 
(
ÖÖ 
var
ÖÖ 
ev
ÖÖ 
in
ÖÖ  "
creatingContext
ÖÖ# 2
.
ÖÖ2 3
	OnCreated
ÖÖ3 <
)
ÖÖ< =
{
ÜÜ 
await
áá 
ev
áá 
(
áá 
createdContext
áá +
)
áá+ ,
;
áá, -
}
àà 
}
ââ 
created
ãã 
?
ãã 
.
ãã 
Invoke
ãã 
(
ãã 
createdContext
ãã *
)
ãã* +
;
ãã+ ,
return
çç 
createdContext
çç !
.
çç! "
Shape
çç" '
;
çç' (
}
éé 	
}
èè 
}êê ã
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\DisplayContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{ 
public 

class 
DisplayContext 
{ 
public 
DisplayContext 
( 
) 
{ 	
}		 	
public 
DisplayContext 
( 
DisplayContext ,
context- 4
)4 5
{ 	
ServiceProvider 
= 
context %
.% &
ServiceProvider& 5
;5 6
DisplayAsync 
= 
context "
." #
DisplayAsync# /
;/ 0
Value 
= 
context 
. 
Value !
;! "
HtmlFieldPrefix 
= 
context %
.% &
HtmlFieldPrefix& 5
;5 6
} 	
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
IDisplayHelper 
DisplayAsync *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
HtmlFieldPrefix %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
object 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ÷9
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\DisplayHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{		 
public

 

class

 
DisplayHelper

 
:

  
DynamicObject

! .
,

. /
IDisplayHelper

0 >
{ 
private 
readonly 
IHtmlDisplay %
_htmlDisplay& 2
;2 3
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public 
DisplayHelper 
( 
IHtmlDisplay 
htmlDisplay $
,$ %
IShapeFactory 
shapeFactory &
,& '
IServiceProvider 
serviceProvider ,
), -
{ 	
_htmlDisplay 
= 
htmlDisplay &
;& '
_shapeFactory 
= 
shapeFactory (
;( )
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
override 
bool 
	TryInvoke &
(& '
InvokeBinder' 3
binder4 :
,: ;
object< B
[B C
]C D
argsE I
,I J
outK N
objectO U
resultV \
)\ ]
{ 	
result 
= 
InvokeAsync  
(  !
null! %
,% &
	Arguments' 0
.0 1
From1 5
(5 6
args6 :
,: ;
binder< B
.B C
CallInfoC K
.K L
ArgumentNamesL Y
)Y Z
)Z [
;[ \
return 
true 
; 
} 	
public!! 
override!! 
bool!! 
TryInvokeMember!! ,
(!!, -
InvokeMemberBinder!!- ?
binder!!@ F
,!!F G
object!!H N
[!!N O
]!!O P
args!!Q U
,!!U V
out!!W Z
object!![ a
result!!b h
)!!h i
{"" 	
result## 
=## 
InvokeAsync##  
(##  !
binder##! '
.##' (
Name##( ,
,##, -
	Arguments##. 7
.##7 8
From##8 <
(##< =
args##= A
,##A B
binder##C I
.##I J
CallInfo##J R
.##R S
ArgumentNames##S `
)##` a
)##a b
;##b c
return%% 
true%% 
;%% 
}&& 	
public(( 
Task(( 
<(( 
IHtmlContent((  
>((  !
InvokeAsync((" -
(((- .
string((. 4
name((5 9
,((9 :
INamedEnumerable((; K
<((K L
object((L R
>((R S

parameters((T ^
)((^ _
{)) 	
if** 
(** 
!** 
string** 
.** 
IsNullOrEmpty** %
(**% &
name**& *
)*** +
)**+ ,
{++ 
return,, !
ShapeTypeExecuteAsync,, ,
(,,, -
name,,- 1
,,,1 2

parameters,,3 =
),,= >
;,,> ?
}-- 
if// 
(// 

parameters// 
.// 

Positional// %
.//% &
Count//& +
(//+ ,
)//, -
==//. 0
$num//1 2
)//2 3
{00 
return11 
ShapeExecuteAsync11 (
(11( )

parameters11) 3
.113 4

Positional114 >
.11> ?
First11? D
(11D E
)11E F
)11F G
;11G H
}22 
if44 
(44 

parameters44 
.44 

Positional44 %
.44% &
Any44& )
(44) *
)44* +
)44+ ,
{55 
return66 
ShapeExecuteAsync66 (
(66( )

parameters66) 3
.663 4

Positional664 >
)66> ?
;66? @
}77 
return:: 
Task:: 
.:: 

FromResult:: "
<::" #
IHtmlContent::# /
>::/ 0
(::0 1
null::1 5
)::5 6
;::6 7
};; 	
private== 
async== 
Task== 
<== 
IHtmlContent== '
>==' (!
ShapeTypeExecuteAsync==) >
(==> ?
string==? E
name==F J
,==J K
INamedEnumerable==L \
<==\ ]
object==] c
>==c d

parameters==e o
)==o p
{>> 	
var?? 
shape?? 
=?? 
await?? 
_shapeFactory?? +
.??+ ,
CreateAsync??, 7
(??7 8
name??8 <
,??< =

parameters??> H
)??H I
;??I J
return@@ 
await@@ 
ShapeExecuteAsync@@ *
(@@* +
shape@@+ 0
)@@0 1
;@@1 2
}AA 	
publicCC 
TaskCC 
<CC 
IHtmlContentCC  
>CC  !
ShapeExecuteAsyncCC" 3
(CC3 4
objectCC4 :
shapeCC; @
)CC@ A
{DD 	
ifEE 
(EE 
shapeEE 
==EE 
nullEE 
)EE 
{FF 
returnGG 
TaskGG 
.GG 

FromResultGG &
<GG& '
IHtmlContentGG' 3
>GG3 4
(GG4 5

HtmlStringGG5 ?
.GG? @
EmptyGG@ E
)GGE F
;GGF G
}HH 
varJJ 
contextJJ 
=JJ 
newJJ 
DisplayContextJJ ,
{KK 
DisplayAsyncLL 
=LL 
thisLL #
,LL# $
ValueMM 
=MM 
shapeMM 
,MM 
ServiceProviderNN 
=NN  !
_serviceProviderNN" 2
}OO 
;OO 
returnQQ 
_htmlDisplayQQ 
.QQ  
ExecuteAsyncQQ  ,
(QQ, -
contextQQ- 4
)QQ4 5
;QQ5 6
}RR 	
publicTT 
asyncTT 
TaskTT 
<TT 
IHtmlContentTT &
>TT& '
ShapeExecuteAsyncTT( 9
(TT9 :
IEnumerableTT: E
<TTE F
objectTTF L
>TTL M
shapesTTN T
)TTT U
{UU 	
varVV 
htmlContentBuilderVV "
=VV# $
newVV% (
HtmlContentBuilderVV) ;
(VV; <
)VV< =
;VV= >
foreachXX 
(XX 
varXX 
shapeXX 
inXX !
shapesXX" (
)XX( )
{YY 
htmlContentBuilderZZ "
.ZZ" #

AppendHtmlZZ# -
(ZZ- .
awaitZZ. 3
ShapeExecuteAsyncZZ4 E
(ZZE F
shapeZZF K
)ZZK L
)ZZL M
;ZZM N
}[[ 
return]] 
htmlContentBuilder]] %
;]]% &
}^^ 	
}__ 
}`` ›
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\IHtmlDisplay.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{ 
public		 

	interface		 
IHtmlDisplay		 !
{

 
Task 
< 
IHtmlContent 
> 
ExecuteAsync '
(' (
DisplayContext( 6
context7 >
)> ?
;? @
} 
} Á
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\IShapeDisplayEvents.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{ 
public 

	interface 
IShapeDisplayEvents (
{ 
Task 
DisplayingAsync 
( 
ShapeDisplayContext 0
context1 8
)8 9
;9 :
Task 
DisplayedAsync 
( 
ShapeDisplayContext /
context0 7
)7 8
;8 9
Task $
DisplayingFinalizedAsync %
(% &
ShapeDisplayContext& 9
context: A
)A B
;B C
} 
} —
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\IShapeFactoryEvents.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{ 
public 

	interface 
IShapeFactoryEvents (
{ 
void		 
Creating		 
(		  
ShapeCreatingContext		 *
context		+ 2
)		2 3
;		3 4
void

 
Created

 
(

 
ShapeCreatedContext

 (
context

) 0
)

0 1
;

1 2
} 
public 

class  
ShapeCreatingContext %
{ 
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
IShapeFactory 
ShapeFactory )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
dynamic 
New 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	ShapeType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Func 
< 
	ValueTask 
< 
IShape $
>$ %
>% &
CreateAsync' 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
IList 
< 
Func 
< 
ShapeCreatedContext -
,- .
Task/ 3
>3 4
>4 5
	OnCreated6 ?
{@ A
getB E
;E F
setG J
;J K
}L M
public 
Func 
< 
IShape 
> 
Create "
{ 	
set 
=> 
CreateAsync 
=  
(! "
)" #
=>$ &
new' *
	ValueTask+ 4
<4 5
IShape5 ;
>; <
(< =
value= B
(B C
)C D
)D E
;E F
} 	
} 
public 

class 
ShapeCreatedContext $
{ 
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
IShapeFactory 
ShapeFactory )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public   
dynamic   
New   
{   
get    
;    !
set  " %
;  % &
}  ' (
public!! 
string!! 
	ShapeType!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
public"" 
IShape"" 
Shape"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
}## 
public%% 

abstract%% 
class%% 
ShapeFactoryEvents%% ,
:%%- .
IShapeFactoryEvents%%/ B
{&& 
public'' 
virtual'' 
void'' 
Creating'' $
(''$ % 
ShapeCreatingContext''% 9
context'': A
)''A B
{(( 	
})) 	
public** 
virtual** 
void** 
Created** #
(**# $
ShapeCreatedContext**$ 7
context**8 ?
)**? @
{++ 	
},, 	
}-- 
}.. ª
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Implementation\ShapeDisplayContext.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Implementation( 6
{ 
public 

class 
ShapeDisplayContext $
{ 
public 
IShape 
Shape 
{ 
get !
;! "
set# &
;& '
}( )
public		 
IHtmlContent		 
ChildContent		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
DisplayContext

 
DisplayContext

 ,
{

- .
get

/ 2
;

2 3
set

4 7
;

7 8
}

9 :
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ª
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\INamedEnumerable.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

	interface 
INamedEnumerable %
<% &
T& '
>' (
:) *
IEnumerable+ 6
<6 7
T7 8
>8 9
{ 
IList 
< 
T 
> 

Positional 
{ 
get !
;! "
}# $
IDictionary 
< 
string 
, 
T 
> 
Named $
{% &
get' *
;* +
}, -
}		 
}

 Á
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IPositioned.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

	interface 
IPositioned  
{ 
string 
Position 
{ 
get 
; 
set "
;" #
}$ %
} 
} «C
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IShape.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{		 
public 

	interface 
IShape 
{ 
ShapeMetadata 
Metadata 
{  
get! $
;$ %
}& '
string 
Id 
{ 
get 
; 
set 
; 
} 
string 
TagName 
{ 
get 
; 
set !
;! "
}# $
IList 
< 
string 
> 
Classes 
{ 
get  #
;# $
}% &
IDictionary 
< 
string 
, 
string "
>" #

Attributes$ .
{/ 0
get1 4
;4 5
}6 7
IDictionary 
< 
string 
, 
object "
>" #

Properties$ .
{/ 0
get1 4
;4 5
}6 7
} 
public 

static 
class 
IShapeExtensions (
{ 
private 
static 
readonly 
JsonSerializer  .
ShapeSerializer/ >
=? @
newA D
JsonSerializerE S
{ 	!
ReferenceLoopHandling !
=" #!
ReferenceLoopHandling$ 9
.9 :
Ignore: @
} 	
;	 

public   
static   
JObject   
ShapeToJson   )
(  ) *
this  * .
IShape  / 5
shape  6 ;
)  ; <
{!! 	
if"" 
("" 
shape"" 
=="" 
null"" 
)"" 
{## 
return$$ 
new$$ 
JObject$$ "
($$" #
)$$# $
;$$$ %
}%% 
var'' 
jObject'' 
='' 
new'' 
JObject'' %
(''% &
)''& '
;''' (
var** 
displayText** 
=** 
shape** #
.**# $
Metadata**$ ,
.**, -
Name**- 1
;**1 2
if++ 
(++ 
String++ 
.++ 
IsNullOrEmpty++ $
(++$ %
displayText++% 0
)++0 1
)++1 2
{,, 
displayText-- 
=-- 
shape-- #
.--# $
Metadata--$ ,
.--, -
Type--- 1
;--1 2
}.. 
if00 
(00 
String00 
.00 
IsNullOrEmpty00 $
(00$ %
displayText00% 0
)000 1
)001 2
{11 
displayText22 
=22 
shape22 #
.22# $
GetType22$ +
(22+ ,
)22, -
.22- .
Name22. 2
;222 3
}33 
jObject55 
.55 
Add55 
(55 
$str55 
,55  
displayText55! ,
)55, -
;55- .
var77 
metadata77 
=77 
JObject77 "
.77" #

FromObject77# -
(77- .
shape77. 3
.773 4
Metadata774 <
,77< =
ShapeSerializer77> M
)77M N
;77N O
jObject99 
.99 
Add99 
(99 
nameof99 
(99 
ShapeMetadata99 ,
)99, -
,99- .
metadata99/ 7
)997 8
;998 9
if;; 
(;; 
shape;; 
.;; 
Classes;; 
!=;;  
null;;! %
&&;;& (
shape;;) .
.;;. /
Classes;;/ 6
.;;6 7
Any;;7 :
(;;: ;
);;; <
);;< =
{<< 
jObject== 
.== 
Add== 
(== 
nameof== "
(==" #
shape==# (
.==( )
Classes==) 0
)==0 1
,==1 2
JArray==3 9
.==9 :

FromObject==: D
(==D E
shape==E J
.==J K
Classes==K R
,==R S
ShapeSerializer==T c
)==c d
)==d e
;==e f
}>> 
if@@ 
(@@ 
shape@@ 
.@@ 

Attributes@@  
!=@@! #
null@@$ (
&&@@) +
shape@@, 1
.@@1 2

Attributes@@2 <
.@@< =
Any@@= @
(@@@ A
)@@A B
)@@B C
{AA 
jObjectBB 
.BB 
AddBB 
(BB 
nameofBB "
(BB" #
shapeBB# (
.BB( )

AttributesBB) 3
)BB3 4
,BB4 5
JObjectBB6 =
.BB= >

FromObjectBB> H
(BBH I
shapeBBI N
.BBN O

AttributesBBO Y
,BBY Z
ShapeSerializerBB[ j
)BBj k
)BBk l
;BBl m
}CC 
ifEE 
(EE 
shapeEE 
.EE 

PropertiesEE  
!=EE! #
nullEE$ (
&&EE) +
shapeEE, 1
.EE1 2

PropertiesEE2 <
.EE< =
AnyEE= @
(EE@ A
)EEA B
)EEB C
{FF 
jObjectGG 
.GG 
AddGG 
(GG 
nameofGG "
(GG" #
shapeGG# (
.GG( )

PropertiesGG) 3
)GG3 4
,GG4 5
JObjectGG6 =
.GG= >

FromObjectGG> H
(GGH I
shapeGGI N
.GGN O

PropertiesGGO Y
,GGY Z
ShapeSerializerGG[ j
)GGj k
)GGk l
;GGl m"
FindShapesInPropertiesHH &
(HH& '
shapeHH' ,
)HH, -
;HH- .
}II 
varKK 
actualShapeKK 
=KK 
shapeKK #
asKK$ &
ShapeKK' ,
;KK, -
ifLL 
(LL 
actualShapeLL 
!=LL 
nullLL #
&&LL$ &
actualShapeLL' 2
.LL2 3
HasItemsLL3 ;
)LL; <
{MM 
varNN 
jItemsNN 
=NN 
newNN  
JArrayNN! '
(NN' (
)NN( )
;NN) *
varPP 

shapeItemsPP 
=PP  
actualShapePP! ,
.PP, -
ItemsPP- 2
.PP2 3
ToArrayPP3 :
(PP: ;
)PP; <
;PP< =
foreachQQ 
(QQ 
IShapeQQ 
itemQQ  $
inQQ% '

shapeItemsQQ( 2
)QQ2 3
{RR 
varTT 
jItemTT 
=TT 
itemTT  $
.TT$ %
ShapeToJsonTT% 0
(TT0 1
)TT1 2
;TT2 3
jItemsUU 
.UU 
AddUU 
(UU 
jItemUU $
)UU$ %
;UU% &
}VV 
jObjectWW 
.WW 
AddWW 
(WW 
nameofWW "
(WW" #
actualShapeWW# .
.WW. /
ItemsWW/ 4
)WW4 5
,WW5 6
jItemsWW7 =
)WW= >
;WW> ?
}XX 
returnZZ 
jObjectZZ 
;ZZ 
}[[ 	
private]] 
static]] 
void]] "
FindShapesInProperties]] 2
(]]2 3
IShape]]3 9
shape]]: ?
)]]? @
{^^ 	
foreach__ 
(__ 
var__ 
property__ !
in__" $
shape__% *
.__* +

Properties__+ 5
.__5 6
Values__6 <
)__< =
{`` 
varaa 
shapePropertyaa !
=aa" #
propertyaa$ ,
asaa- /
Shapeaa0 5
;aa5 6
ifbb 
(bb 
shapePropertybb !
!=bb" $
nullbb% )
&&bb* ,
shapePropertybb- :
.bb: ;
HasItemsbb; C
)bbC D
{cc 
vardd 

shapeItemsdd "
=dd# $
shapePropertydd% 2
.dd2 3
Itemsdd3 8
.dd8 9
ToArraydd9 @
(dd@ A
)ddA B
;ddB C
foreachee 
(ee 
IShapeee #
itemee$ (
inee) +

shapeItemsee, 6
)ee6 7
{ff "
FindShapesInPropertieshh .
(hh. /
itemhh/ 3
)hh3 4
;hh4 5
}ii 
}jj 
}kk 
}ll 	
}mm 
}nn ∑
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IShapeBindingResolver.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

	interface !
IShapeBindingResolver *
{ 
Task 
< 
ShapeBinding 
>  
GetShapeBindingAsync /
(/ 0
string0 6
	shapeType7 @
)@ A
;A B
} 
} â[
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\IShapeFactory.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
{

 
public 

	interface 
IShapeFactory "
{ 
	ValueTask 
< 
IShape 
> 
CreateAsync %
(% &
string 
	shapeType 
, 
Func 
< 
	ValueTask 
< 
IShape !
>! "
>" #
shapeFactory$ 0
,0 1
Action 
<  
ShapeCreatingContext '
>' (
creating) 1
,1 2
Action 
< 
ShapeCreatedContext &
>& '
created( /
)/ 0
;0 1
dynamic 
New 
{ 
get 
; 
} 
} 
public 

static 
class "
ShapeFactoryExtensions .
{ 
private 
static 
readonly 
ProxyGenerator  .
ProxyGenerator/ =
=> ?
new@ C
ProxyGeneratorD R
(R S
)S T
;T U
private 
static 
readonly 
Func  $
<$ %
	ValueTask% .
<. /
IShape/ 5
>5 6
>6 7
NewShape8 @
=A B
(C D
)D E
=>F H
newI L
	ValueTaskM V
<V W
IShapeW ]
>] ^
(^ _
new_ b
Shapec h
(h i
)i j
)j k
;k l
public&& 
static&& 
	ValueTask&& 
<&&  
IShape&&  &
>&&& '
CreateAsync&&( 3
<&&3 4
TModel&&4 :
>&&: ;
(&&; <
this&&< @
IShapeFactory&&A N
factory&&O V
,&&V W
string&&X ^
	shapeType&&_ h
,&&h i
TModel&&j p
model&&q v
)&&v w
{'' 	
return(( 
factory(( 
.(( 
CreateAsync(( &
(((& '
	shapeType((' 0
,((0 1
	Arguments((2 ;
.((; <
From((< @
(((@ A
model((A F
)((F G
)((G H
;((H I
})) 	
private++ 
static++ 
IShape++ 
CreateShape++ )
(++) *
Type++* .
baseType++/ 7
)++7 8
{,, 	
if.. 
(.. 
typeof.. 
(.. 
IShape.. 
).. 
... 
IsAssignableFrom.. /
(../ 0
baseType..0 8
)..8 9
)..9 :
{// 
var00 
shape00 
=00 
	Activator00 %
.00% &
CreateInstance00& 4
(004 5
baseType005 =
)00= >
as00? A
IShape00B H
;00H I
return11 
shape11 
;11 
}22 
else33 
{44 
var55 
options55 
=55 
new55 !"
ProxyGenerationOptions55" 8
(558 9
)559 :
;55: ;
options66 
.66 
AddMixinInstance66 (
(66( )
new66) ,
ShapeViewModel66- ;
(66; <
)66< =
)66= >
;66> ?
return77 
(77 
IShape77 
)77 
ProxyGenerator77 -
.77- .
CreateClassProxy77. >
(77> ?
baseType77? G
,77G H
options77I P
)77P Q
;77Q R
}88 
}99 	
public;; 
static;; 
	ValueTask;; 
<;;  
IShape;;  &
>;;& '
CreateAsync;;( 3
(;;3 4
this;;4 8
IShapeFactory;;9 F
factory;;G N
,;;N O
string;;P V
	shapeType;;W `
);;` a
{<< 	
return== 
factory== 
.== 
CreateAsync== &
(==& '
	shapeType==' 0
,==0 1
NewShape==2 :
)==: ;
;==; <
}>> 	
public@@ 
static@@ 
	ValueTask@@ 
<@@  
IShape@@  &
>@@& '
CreateAsync@@( 3
(@@3 4
this@@4 8
IShapeFactory@@9 F
factory@@G N
,@@N O
string@@P V
	shapeType@@W `
,@@` a
Func@@b f
<@@f g
	ValueTask@@g p
<@@p q
IShape@@q w
>@@w x
>@@x y
shapeFactory	@@z Ü
)
@@Ü á
{AA 	
returnBB 
factoryBB 
.BB 
CreateAsyncBB &
(BB& '
	shapeTypeBB' 0
,BB0 1
shapeFactoryBB2 >
,BB> ?
nullBB@ D
,BBD E
nullBBF J
)BBJ K
;BBK L
}CC 	
publicMM 
staticMM 
	ValueTaskMM 
<MM  
IShapeMM  &
>MM& '
CreateAsyncMM( 3
<MM3 4
TModelMM4 :
>MM: ;
(MM; <
thisMM< @
IShapeFactoryMMA N
factoryMMO V
,MMV W
stringMMX ^
	shapeTypeMM_ h
,MMh i
FuncMMj n
<MMn o
TModelMMo u
,MMu v
	ValueTask	MMw Ä
>
MMÄ Å
initializeAsync
MMÇ ë
)
MMë í
{NN 	
staticOO 
asyncOO 
	ValueTaskOO "
<OO" #
IShapeOO# )
>OO) *
AwaitedOO+ 2
(OO2 3
	ValueTaskOO3 <
taskOO= A
,OOA B
IShapeOOC I
shapeOOJ O
)OOO P
{PP 
awaitQQ 
taskQQ 
;QQ 
returnRR 
shapeRR 
;RR 
}SS 
staticUU 
	ValueTaskUU 
<UU 
IShapeUU #
>UU# $
ShapeFactoryUU% 1
(UU1 2
FuncUU2 6
<UU6 7
TModelUU7 =
,UU= >
	ValueTaskUU? H
>UUH I
initUUJ N
)UUN O
{VV 
varWW 
shapeWW 
=WW 
CreateShapeWW '
(WW' (
typeofWW( .
(WW. /
TModelWW/ 5
)WW5 6
)WW6 7
;WW7 8
varXX 
taskXX 
=XX 
initXX 
(XX  
(XX  !
TModelXX! '
)XX' (
shapeXX( -
)XX- .
;XX. /
ifYY 
(YY 
!YY 
taskYY 
.YY #
IsCompletedSuccessfullyYY 1
)YY1 2
{ZZ 
return[[ 
Awaited[[ "
([[" #
task[[# '
,[[' (
shape[[) .
)[[. /
;[[/ 0
}\\ 
return^^ 
new^^ 
	ValueTask^^ $
<^^$ %
IShape^^% +
>^^+ ,
(^^, -
shape^^- 2
)^^2 3
;^^3 4
}__ 
returnaa 
factoryaa 
.aa 
CreateAsyncaa &
(aa& '
	shapeTypeaa' 0
,aa0 1
(aa2 3
)aa3 4
=>aa5 7
ShapeFactoryaa8 D
(aaD E
initializeAsyncaaE T
)aaT U
)aaU V
;aaV W
}bb 	
publicll 
staticll 
	ValueTaskll 
<ll  
IShapell  &
>ll& '
CreateAsyncll( 3
<ll3 4
TModelll4 :
>ll: ;
(ll; <
thisll< @
IShapeFactoryllA N
factoryllO V
,llV W
stringllX ^
	shapeTypell_ h
,llh i
Actionllj p
<llp q
TModelllq w
>llw x

initialize	lly É
)
llÉ Ñ
{mm 	
returnnn 
factorynn 
.nn 
CreateAsyncnn &
(nn& '
	shapeTypenn' 0
,nn0 1
(nn2 3
)nn3 4
=>nn5 7
{oo 
varpp 
shapepp 
=pp 
CreateShapepp '
(pp' (
typeofpp( .
(pp. /
TModelpp/ 5
)pp5 6
)pp6 7
;pp7 8

initializeqq 
(qq 
(qq 
TModelqq "
)qq" #
shapeqq# (
)qq( )
;qq) *
returnrr 
newrr 
	ValueTaskrr $
<rr$ %
IShaperr% +
>rr+ ,
(rr, -
shaperr- 2
)rr2 3
;rr3 4
}ss 
)ss 
;ss 
}tt 	
publicvv 
staticvv 
	ValueTaskvv 
<vv  
IShapevv  &
>vv& '
CreateAsyncvv( 3
<vv3 4
Tvv4 5
>vv5 6
(vv6 7
thisvv7 ;
IShapeFactoryvv< I
factoryvvJ Q
,vvQ R
stringvvS Y
	shapeTypevvZ c
,vvc d
INamedEnumerablevve u
<vvu v
Tvvv w
>vvw x

parameters	vvy É
)
vvÉ Ñ
{ww 	
ifxx 
(xx 

parametersxx 
==xx 
nullxx "
||xx# %

parametersxx& 0
==xx1 3
	Argumentsxx4 =
.xx= >
Emptyxx> C
)xxC D
{yy 
returnzz 
factoryzz 
.zz 
CreateAsynczz *
(zz* +
	shapeTypezz+ 4
)zz4 5
;zz5 6
}{{ 
return}} 
factory}} 
.}} 
CreateAsync}} &
(}}& '
	shapeType}}' 0
,}}0 1
NewShape}}2 :
,}}: ;
null}}< @
,}}@ A
createdContext}}B P
=>}}Q S
{~~ 
var 
shape 
= 
( 
Shape "
)" #
createdContext# 1
.1 2
Shape2 7
;7 8
var
ÉÉ 
initializer
ÉÉ 
=
ÉÉ  !

parameters
ÉÉ" ,
.
ÉÉ, -

Positional
ÉÉ- 7
.
ÉÉ7 8
SingleOrDefault
ÉÉ8 G
(
ÉÉG H
)
ÉÉH I
;
ÉÉI J
if
ÖÖ 
(
ÖÖ 
initializer
ÖÖ 
!=
ÖÖ  "
null
ÖÖ# '
)
ÖÖ' (
{
ÜÜ 
var
àà 
	arguments
àà !
=
àà" #
	Arguments
àà$ -
.
àà- .
From
àà. 2
(
àà2 3
initializer
àà3 >
)
àà> ?
;
àà? @
foreach
ää 
(
ää 
var
ää  
prop
ää! %
in
ää& (
	arguments
ää) 2
.
ää2 3
Named
ää3 8
)
ää8 9
{
ãã 
shape
åå 
.
åå 

Properties
åå (
[
åå( )
prop
åå) -
.
åå- .
Key
åå. 1
]
åå1 2
=
åå3 4
prop
åå5 9
.
åå9 :
Value
åå: ?
;
åå? @
}
çç 
}
éé 
else
èè 
{
êê 
foreach
ëë 
(
ëë 
var
ëë  
kv
ëë! #
in
ëë$ &

parameters
ëë' 1
.
ëë1 2
Named
ëë2 7
)
ëë7 8
{
íí 
shape
ìì 
.
ìì 

Properties
ìì (
[
ìì( )
kv
ìì) +
.
ìì+ ,
Key
ìì, /
]
ìì/ 0
=
ìì1 2
kv
ìì3 5
.
ìì5 6
Value
ìì6 ;
;
ìì; <
}
îî 
}
ïï 
}
ññ 
)
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô û
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Layout\ILayoutAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Layout( .
{ 
public 

	interface 
ILayoutAccessor $
{ 
Task 
< 
IShape 
> 
GetLayoutAsync #
(# $
)$ %
;% &
} 
}		 ÿ
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Layout\LayoutAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Layout( .
{ 
public 

class 
LayoutAccessor 
:  !
ILayoutAccessor" 1
{ 
private		 
IShape		 
_layout		 
;		 
private

 
readonly

 
IShapeFactory

 &
_shapeFactory

' 4
;

4 5
public 
LayoutAccessor 
( 
IShapeFactory +
shapeFactory, 8
)8 9
{ 	
_shapeFactory 
= 
shapeFactory (
;( )
} 	
public 
async 
Task 
< 
IShape  
>  !
GetLayoutAsync" 0
(0 1
)1 2
{ 	
if 
( 
_layout 
== 
null 
)  
{ 
_layout 
= 
await 
_shapeFactory  -
.- .
CreateAsync. 9
(9 :
$str: B
,B C
(D E
)E F
=>G I
newJ M
	ValueTaskN W
<W X
IShapeX ^
>^ _
(_ `
new` c
ZoneHoldingd o
(o p
(p q
)q r
=>s u
_shapeFactory	v É
.
É Ñ
CreateAsync
Ñ è
(
è ê
$str
ê ñ
)
ñ ó
)
ó ò
)
ò ô
)
ô ö
;
ö õ
} 
if 
( 
_layout 
== 
null 
)  
{ 
throw 
new  
ApplicationException .
(. /
$str/ [
)[ \
;\ ]
} 
return 
_layout 
; 
}   	
}!! 
}"" «;
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\LocationExpander\ThemeViewLocationExpanderProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
LocationExpander( 8
{ 
public 

class -
!ThemeViewLocationExpanderProvider 2
:3 4)
IViewLocationExpanderProvider5 R
{ 
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
public -
!ThemeViewLocationExpanderProvider 0
(0 1
IHostEnvironment1 A
hostingEnvironmentB T
,T U
IExtensionManagerV g
extensionManagerh x
)x y
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_extensionManager 
= 
extensionManager  0
;0 1
} 	
public 
int 
Priority 
=> 
$num !
;! "
public 
void 
PopulateValues "
(" #'
ViewLocationExpanderContext# >
context? F
)F G
{ 	
var 
currentTheme 
= 
context &
.& '
ActionContext' 4
.4 5
HttpContext5 @
.@ A
FeaturesA I
.I J
GetJ M
<M N
RazorViewFeatureN ^
>^ _
(_ `
)` a
?a b
.b c
Themec h
;h i
if 
( 
currentTheme 
!= 
null  $
)$ %
{   
context!! 
.!! 
Values!! 
[!! 
$str!! &
]!!& '
=!!( )
currentTheme!!* 6
.!!6 7
Id!!7 9
;!!9 :
}"" 
}## 	
public&& 
virtual&& 
IEnumerable&& "
<&&" #
string&&# )
>&&) *
ExpandViewLocations&&+ >
(&&> ?'
ViewLocationExpanderContext&&? Z
context&&[ b
,&&b c
IEnumerable''? J
<''J K
string''K Q
>''Q R
viewLocations''S `
)''` a
{(( 	
if)) 
()) 
!)) 
context)) 
.)) 
Values)) 
.))  
ContainsKey))  +
())+ ,
$str)), 3
)))3 4
)))4 5
{** 
return++ 
viewLocations++ $
;++$ %
},, 
var.. 
currentThemeId.. 
=..  
context..! (
...( )
Values..) /
[../ 0
$str..0 7
]..7 8
;..8 9
var00 ,
 currentThemeAndBaseThemesOrdered00 0
=001 2
_extensionManager003 D
.11 
GetFeatures11 
(11 
new11  
[11  !
]11! "
{11# $
currentThemeId11% 3
}114 5
)115 6
.22 
Where22 
(22 
x22 
=>22 
x22 
.22 
	Extension22 '
.22' (
IsTheme22( /
(22/ 0
)220 1
)221 2
.33 
Reverse33 
(33 
)33 
.44 
ToList44 
(44 
)44 
;44 
var77 
applicationTheme77  
=77! "
_extensionManager77# 4
.88 
GetFeatures88 
(88 
)88 
.99 
FirstOrDefault99 
(99  
x99  !
=>99" $
x99% &
.99& '
Id99' )
==99* ,
_hostingEnvironment99- @
.99@ A
ApplicationName99A P
)99P Q
;99Q R
if;; 
(;; 
applicationTheme;;  
!=;;! #
null;;$ (
);;( )
{<< ,
 currentThemeAndBaseThemesOrdered== 0
.==0 1
Insert==1 7
(==7 8
$num==8 9
,==9 :
applicationTheme==; K
)==K L
;==L M
}>> 
var@@ 
result@@ 
=@@ 
new@@ 
List@@ !
<@@! "
string@@" (
>@@( )
(@@) *
)@@* +
;@@+ ,
foreachBB 
(BB 
varBB 
themeBB 
inBB !,
 currentThemeAndBaseThemesOrderedBB" B
)BBB C
{CC 
ifDD 
(DD 
contextDD 
.DD 
AreaNameDD $
!=DD% '
themeDD( -
.DD- .
IdDD. 0
)DD0 1
{EE 
varFF 
themePagesPathFF &
=FF' (
$charFF) ,
+FF- .
themeFF/ 4
.FF4 5
	ExtensionFF5 >
.FF> ?
SubPathFF? F
+FFG H
$strFFI Q
;FFQ R
varGG 
themeViewsPathGG &
=GG' (
$charGG) ,
+GG- .
themeGG/ 4
.GG4 5
	ExtensionGG5 >
.GG> ?
SubPathGG? F
+GGG H
$strGGI Q
;GGQ R
ifII 
(II 
contextII 
.II  
AreaNameII  (
!=II) +
nullII, 0
)II0 1
{JJ 
ifKK 
(KK 
contextKK #
.KK# $
PageNameKK$ ,
!=KK- /
nullKK0 4
)KK4 5
{LL 
resultMM "
.MM" #
AddMM# &
(MM& '
themePagesPathMM' 5
+MM6 7
$strMM8 B
+MMC D
RazorViewEngineMME T
.MMT U
ViewExtensionMMU b
)MMb c
;MMc d
}NN 
elseOO 
{PP 
resultQQ "
.QQ" #
AddQQ# &
(QQ& '
themeViewsPathQQ' 5
+QQ6 7
$strQQ8 F
+QQG H
RazorViewEngineQQI X
.QQX Y
ViewExtensionQQY f
)QQf g
;QQg h
}RR 
}SS 
ifUU 
(UU 
contextUU 
.UU  
PageNameUU  (
!=UU) +
nullUU, 0
)UU0 1
{VV 
resultWW 
.WW 
AddWW "
(WW" #
themePagesPathWW# 1
+WW2 3
$strWW4 A
+WWB C
RazorViewEngineWWD S
.WWS T
ViewExtensionWWT a
)WWa b
;WWb c
}XX 
ifZZ 
(ZZ 
contextZZ 
.ZZ  
AreaNameZZ  (
!=ZZ) +
nullZZ, 0
)ZZ0 1
{[[ 
result\\ 
.\\ 
Add\\ "
(\\" #
themeViewsPath\\# 1
+\\2 3
$str\\4 E
+\\F G
RazorViewEngine\\H W
.\\W X
ViewExtension\\X e
)\\e f
;\\f g
}]] 
result__ 
.__ 
Add__ 
(__ 
themeViewsPath__ -
+__. /
$str__0 =
+__> ?
RazorViewEngine__@ O
.__O P
ViewExtension__P ]
)__] ^
;__^ _
}`` 
}aa 
resultcc 
.cc 
AddRangecc 
(cc 
viewLocationscc )
)cc) *
;cc* +
returndd 
resultdd 
;dd 
}ee 	
}ff 
}gg Ù
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Manifest\ThemeAttribute.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Manifest( 0
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
false? D
,D E
	InheritedF O
=P Q
falseR W
)W X
]X Y
public 

class 
ThemeAttribute 
:  !
ModuleAttribute" 1
{ 
public 
ThemeAttribute 
( 
) 
{ 	
} 	
public 
override 
string 
Type #
=>$ &
$str' .
;. /
public 
string 
	BaseTheme 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} è
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\ControllerModelUpdater.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public		 

class		 "
ControllerModelUpdater		 '
:		( )
IUpdateModel		* 6
{

 
private 
readonly 

Controller #
_controller$ /
;/ 0
public "
ControllerModelUpdater %
(% &

Controller& 0

controller1 ;
); <
{ 	
_controller 
= 

controller $
;$ %
} 	
public  
ModelStateDictionary #

ModelState$ .
=>/ 1
_controller2 =
.= >

ModelState> H
;H I
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
)B C
whereD I
TModelJ P
:Q R
classS X
{ 	
return 
_controller 
. 
TryUpdateModelAsync 2
<2 3
TModel3 9
>9 :
(: ;
model; @
)@ A
;A B
} 	
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
)Q R
whereS X
TModelY _
:` a
classb g
{ 	
return 
_controller 
. 
TryUpdateModelAsync 2
<2 3
TModel3 9
>9 :
(: ;
model; @
,@ A
prefixB H
)H I
;I J
} 	
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
,Q R
paramsS Y

ExpressionZ d
<d e
Funce i
<i j
TModelj p
,p q
objectr x
>x y
>y z
[z {
]{ |
includeExpressions	} è
)
è ê
where
ë ñ
TModel
ó ù
:
û ü
class
† •
{ 	
return   
_controller   
.   
TryUpdateModelAsync   2
<  2 3
TModel  3 9
>  9 :
(  : ;
model  ; @
,  @ A
prefix  B H
,  H I
includeExpressions  J \
)  \ ]
;  ] ^
}!! 	
public## 
bool## 
TryValidateModel## $
(##$ %
object##% +
model##, 1
)##1 2
{$$ 	
return%% 
_controller%% 
.%% 
TryValidateModel%% /
(%%/ 0
model%%0 5
)%%5 6
;%%6 7
}&& 	
public(( 
bool(( 
TryValidateModel(( $
((($ %
object((% +
model((, 1
,((1 2
string((3 9
prefix((: @
)((@ A
{)) 	
return** 
_controller** 
.** 
TryValidateModel** /
(**/ 0
model**0 5
,**5 6
prefix**7 =
)**= >
;**> ?
}++ 	
},, 
}-- ≥
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\LocalModelBinderAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

class $
LocalModelBinderAccessor )
:* + 
IUpdateModelAccessor, @
{ 
private 
readonly 
static 
object  &
Key' *
=+ ,
typeof- 3
(3 4$
LocalModelBinderAccessor4 L
)L M
;M N
private 
readonly 
HttpContext $
_httpContext% 1
;1 2
public

 $
LocalModelBinderAccessor

 '
(

' ( 
IHttpContextAccessor

( <
httpContextAccessor

= P
)

P Q
{ 	
_httpContext 
= 
httpContextAccessor .
.. /
HttpContext/ :
;: ;
} 	
public 
IUpdateModel 
ModelUpdater (
{ 	
get 
{ 
var 
updateModel 
=  !
_httpContext" .
.. /
Items/ 4
[4 5
Key5 8
]8 9
as: <
IUpdateModel= I
;I J
return 
updateModel "
??# %
new& )
NullModelUpdater* :
(: ;
); <
;< =
} 
set 
{ 
_httpContext 
. 
Items $
[$ %
Key% (
]( )
=* +
value, 1
;1 2
}3 4
} 	
} 
} π
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\ModelBinderAccessorFilter.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

class %
ModelBinderAccessorFilter *
:+ ,
IActionFilter- :
,: ;
IPageFilter< G
{		 
public

 
void

 
OnActionExecuted

 $
(

$ %!
ActionExecutedContext

% :
context

; B
)

B C
{ 	
} 	
public 
void 
OnActionExecuting %
(% &"
ActionExecutingContext& <
context= D
)D E
{ 	
var 

controller 
= 
context $
.$ %

Controller% /
as0 2

Controller3 =
;= >
if 
( 

controller 
!= 
null "
)" #
{ 
var 
modelBinderAccessor '
=( )
context* 1
.1 2
HttpContext2 =
.= >
RequestServices> M
.M N
GetRequiredServiceN `
<` a 
IUpdateModelAccessora u
>u v
(v w
)w x
;x y
modelBinderAccessor #
.# $
ModelUpdater$ 0
=1 2
new3 6"
ControllerModelUpdater7 M
(M N

controllerN X
)X Y
;Y Z
} 
} 	
public 
void !
OnPageHandlerSelected )
() *&
PageHandlerSelectedContext* D
contextE L
)L M
{ 	
} 	
public 
void "
OnPageHandlerExecuting *
(* +'
PageHandlerExecutingContext+ F
contextG N
)N O
{ 	
var 
page 
= 
context 
. 
HandlerInstance .
as/ 1
	PageModel2 ;
;; <
if   
(   
page   
!=   
null   
)   
{!! 
var"" 
modelBinderAccessor"" '
=""( )
context""* 1
.""1 2
HttpContext""2 =
.""= >
RequestServices""> M
.""M N
GetRequiredService""N `
<""` a 
IUpdateModelAccessor""a u
>""u v
(""v w
)""w x
;""x y
modelBinderAccessor## #
.### $
ModelUpdater##$ 0
=##1 2
new##3 6
PageModelUpdater##7 G
(##G H
page##H L
)##L M
;##M N
}$$ 
}%% 	
public'' 
void'' !
OnPageHandlerExecuted'' )
('') *&
PageHandlerExecutedContext''* D
context''E L
)''L M
{(( 	
})) 	
}** 
}++ †*
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\ModelStateWrapperUpdater.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

class $
ModelStateWrapperUpdater )
:* +
IUpdateModel, 8
{		 
private

 
readonly

 
IUpdateModel

 %
_updater

& .
;

. /
private 
readonly  
ModelStateDictionary -
_commonModelState. ?
;? @
public $
ModelStateWrapperUpdater '
(' (
IUpdateModel( 4
updateModel5 @
)@ A
{ 	
_updater 
= 
updateModel "
;" #
_commonModelState 
= 
new  # 
ModelStateDictionary$ 8
(8 9
)9 :
;: ;
} 	
public  
ModelStateDictionary #

ModelState$ .
=>/ 1
_updater2 :
.: ;

ModelState; E
;E F
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
)B C
whereD I
TModelJ P
:Q R
classS X
{ 	
return 
PreserveModelState %
(% &
(& '
)' (
=>) +
_updater, 4
.4 5
TryUpdateModelAsync5 H
(H I
modelI N
)N O
)O P
;P Q
} 	
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
)Q R
whereS X
TModelY _
:` a
classb g
{ 	
return 
PreserveModelState %
(% &
(& '
)' (
=>) +
_updater, 4
.4 5
TryUpdateModelAsync5 H
(H I
modelI N
,N O
prefixP V
)V W
)W X
;X Y
} 	
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
,Q R
paramsS Y

ExpressionZ d
<d e
Funce i
<i j
TModelj p
,p q
objectr x
>x y
>y z
[z {
]{ |
includeExpressions	} è
)
è ê
where
ë ñ
TModel
ó ù
:
û ü
class
† •
{   	
return!! 
PreserveModelState!! %
(!!% &
(!!& '
)!!' (
=>!!) +
_updater!!, 4
.!!4 5
TryUpdateModelAsync!!5 H
(!!H I
model!!I N
,!!N O
prefix!!P V
,!!V W
includeExpressions!!X j
)!!j k
)!!k l
;!!l m
}"" 	
public$$ 
bool$$ 
TryValidateModel$$ $
($$$ %
object$$% +
model$$, 1
)$$1 2
{%% 	
return&& 
PreserveModelState&& %
(&&% &
(&&& '
)&&' (
=>&&) +
_updater&&, 4
.&&4 5
TryValidateModel&&5 E
(&&E F
model&&F K
)&&K L
)&&L M
;&&M N
}'' 	
public)) 
bool)) 
TryValidateModel)) $
())$ %
object))% +
model)), 1
,))1 2
string))3 9
prefix)): @
)))@ A
{** 	
return++ 
PreserveModelState++ %
(++% &
(++& '
)++' (
=>++) +
_updater++, 4
.++4 5
TryValidateModel++5 E
(++E F
model++F K
,++K L
prefix++M S
)++S T
)++T U
;++U V
},, 	
private.. 
T.. 
PreserveModelState.. $
<..$ %
T..% &
>..& '
(..' (
Func..( ,
<.., -
T..- .
>... /
action..0 6
)..6 7
{// 	
_commonModelState11 
.11 
Merge11 #
(11# $
_updater11$ ,
.11, -

ModelState11- 7
)117 8
;118 9
_updater22 
.22 

ModelState22 
.22  
Clear22  %
(22% &
)22& '
;22' (
var44 
result44 
=44 
action44 
(44  
)44  !
;44! "
_updater66 
.66 

ModelState66 
.66  
Merge66  %
(66% &
_commonModelState66& 7
)667 8
;668 9
return88 
result88 
;88 
}99 	
}:: 
};; ü
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\NullModelUpdater.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

class 
NullModelUpdater !
:" #
IUpdateModel$ 0
{		 
public

 
NullModelUpdater

 
(

  
)

  !
{ 	
} 	
public  
ModelStateDictionary #

ModelState$ .
{/ 0
get1 4
;4 5
}6 7
=8 9
new: = 
ModelStateDictionary> R
(R S
)S T
;T U
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
)B C
whereD I
TModelJ P
:Q R
classS X
=>Y [
Task\ `
.` a

FromResulta k
(k l
truel p
)p q
;q r
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
)Q R
whereS X
TModelY _
:` a
classb g
=>h j
Taskk o
.o p

FromResultp z
(z {
true{ 
)	 Ä
;
Ä Å
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
,Q R
paramsS Y

ExpressionZ d
<d e
Funce i
<i j
TModelj p
,p q
objectr x
>x y
>y z
[z {
]{ |
includeExpressions	} è
)
è ê
where
ë ñ
TModel
ó ù
:
û ü
class
† •
=>
¶ ®
Task
© ≠
.
≠ Æ

FromResult
Æ ∏
(
∏ π
true
π Ω
)
Ω æ
;
æ ø
public 
bool 
TryValidateModel $
($ %
object% +
model, 1
)1 2
=>3 5
true6 :
;: ;
public 
bool 
TryValidateModel $
($ %
object% +
model, 1
,1 2
string3 9
prefix: @
)@ A
=>B D
trueE I
;I J
} 
} ‡
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\PageModelUpdater.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

class 
PageModelUpdater !
:" #
	PageModel$ -
,- .
IUpdateModel/ ;
{		 
public

 
PageModelUpdater

 
(

  
	PageModel

  )
page

* .
)

. /
=>

0 2
PageContext

3 >
=

? @
page

A E
.

E F
PageContext

F Q
;

Q R
public 
new 
Task 
< 
bool 
> 
TryUpdateModelAsync 1
<1 2
TModel2 8
>8 9
(9 :
TModel: @
modelA F
)F G
whereH M
TModelN T
:U V
classW \
=> 
base 
. 
TryUpdateModelAsync '
(' (
model( -
)- .
;. /
public 
new 
Task 
< 
bool 
> 
TryUpdateModelAsync 1
<1 2
TModel2 8
>8 9
(9 :
TModel: @
modelA F
,F G
stringH N
prefixO U
)U V
whereW \
TModel] c
:d e
classf k
=> 
base 
. 
TryUpdateModelAsync '
(' (
model( -
,- .
prefix/ 5
)5 6
;6 7
public 
new 
Task 
< 
bool 
> 
TryUpdateModelAsync 1
<1 2
TModel2 8
>8 9
(9 :
TModel: @
modelA F
,F G
stringH N
prefixO U
,U V
paramsW ]

Expression^ h
<h i
Funci m
<m n
TModeln t
,t u
objectv |
>| }
>} ~
[~ 
]	 Ä 
includeExpressions
Å ì
)
ì î
where
ï ö
TModel
õ °
:
¢ £
class
§ ©
=> 
base 
. 
TryUpdateModelAsync '
(' (
model( -
,- .
prefix/ 5
,5 6
includeExpressions7 I
)I J
;J K
} 
} √"
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ModelBinding\PrefixedModuleUpdater.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
ModelBinding( 4
{ 
public 

class  
PrefixedModelUpdater %
:& '
IUpdateModel( 4
{		 
private

 
readonly

 
IUpdateModel

 %
_updateModel

& 2
;

2 3
public  
PrefixedModelUpdater #
(# $
IUpdateModel$ 0
updateModel1 <
)< =
:> ?
this@ D
(D E
updateModelE P
,P Q
xR S
=>T V
xW X
)X Y
{ 	
} 	
public  
PrefixedModelUpdater #
(# $
IUpdateModel$ 0
updateModel1 <
,< =
Func> B
<B C
stringC I
,I J
stringK Q
>Q R
prefixS Y
)Y Z
{ 	
_updateModel 
= 
updateModel &
;& '
Prefix 
= 
prefix 
; 
} 	
public  
ModelStateDictionary #

ModelState$ .
=>/ 1
_updateModel2 >
.> ?

ModelState? I
;I J
public 
Func 
< 
string 
, 
string "
>" #
Prefix$ *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
)B C
whereD I
TModelJ P
:Q R
classS X
=> 
_updateModel 
. 
TryUpdateModelAsync /
(/ 0
model0 5
)5 6
;6 7
public 
Task 
< 
bool 
> 
TryUpdateModelAsync -
<- .
TModel. 4
>4 5
(5 6
TModel6 <
model= B
,B C
stringD J
prefixK Q
)Q R
whereS X
TModelY _
:` a
classb g
=> 
_updateModel 
. 
TryUpdateModelAsync /
(/ 0
Prefix0 6
(6 7
prefix7 =
)= >
)> ?
;? @
public   
Task   
<   
bool   
>   
TryUpdateModelAsync   -
<  - .
TModel  . 4
>  4 5
(  5 6
TModel  6 <
model  = B
,  B C
string  D J
prefix  K Q
,  Q R
params  S Y

Expression  Z d
<  d e
Func  e i
<  i j
TModel  j p
,  p q
object  r x
>  x y
>  y z
[  z {
]  { |
includeExpressions	  } è
)
  è ê
where
  ë ñ
TModel
  ó ù
:
  û ü
class
  † •
=>!! 
_updateModel!! 
.!! 
TryUpdateModelAsync!! /
(!!/ 0
model!!0 5
,!!5 6
Prefix!!7 =
(!!= >
prefix!!> D
)!!D E
,!!E F
includeExpressions!!G Y
)!!Y Z
;!!Z [
public## 
bool## 
TryValidateModel## $
(##$ %
object##% +
model##, 1
)##1 2
=>##3 5
_updateModel##6 B
.##B C
TryValidateModel##C S
(##S T
model##T Y
)##Y Z
;##Z [
public%% 
bool%% 
TryValidateModel%% $
(%%$ %
object%%% +
model%%, 1
,%%1 2
string%%3 9
prefix%%: @
)%%@ A
=>&& 
_updateModel&& 
.&& 
TryValidateModel&& ,
(&&, -
model&&- 2
,&&2 3
Prefix&&4 :
(&&: ;
prefix&&; A
)&&A B
)&&B C
;&&C D
}'' 
}(( Õ
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\INotifier.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
public 

	interface 
	INotifier 
{ 
void 
Add 
( 

NotifyType 
type  
,  !
LocalizedHtmlString" 5
message6 =
)= >
;> ?
IList 
< 
NotifyEntry 
> 
List 
(  
)  !
;! "
} 
} Ó
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\Notifier.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
public 

class 
Notifier 
: 
	INotifier %
{ 
private		 
readonly		 
IList		 
<		 
NotifyEntry		 *
>		* +
_entries		, 4
;		4 5
private

 
readonly

 
ILogger

  
_logger

! (
;

( )
public 
Notifier 
( 
ILogger 
<  
Notifier  (
>( )
logger* 0
)0 1
{ 	
_entries 
= 
new 
List 
<  
NotifyEntry  +
>+ ,
(, -
)- .
;. /
_logger 
= 
logger 
; 
} 	
public 
void 
Add 
( 

NotifyType "
type# '
,' (
LocalizedHtmlString) <
message= D
)D E
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Information+ 6
)6 7
)7 8
{ 
_logger 
. 
LogInformation &
(& '
$str' o
,o p
typeq u
,u v
messagew ~
)~ 
;	 Ä
} 
_entries 
. 
Add 
( 
new 
NotifyEntry (
{) *
Type+ /
=0 1
type2 6
,6 7
Message8 ?
=@ A
messageB I
}J K
)K L
;L M
} 	
public 
IList 
< 
NotifyEntry  
>  !
List" &
(& '
)' (
{ 	
return 
_entries 
; 
} 	
}   
}!! Û
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\NotifierExtensions.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
public 

static 
class 
NotifierExtensions *
{ 
public 
static 
void 
Information &
(& '
this' +
	INotifier, 5
notifier6 >
,> ?
LocalizedHtmlString@ S
messageT [
)[ \
{ 	
notifier 
. 
Add 
( 

NotifyType #
.# $
Information$ /
,/ 0
message1 8
)8 9
;9 :
} 	
public 
static 
void 
Warning "
(" #
this# '
	INotifier( 1
notifier2 :
,: ;
LocalizedHtmlString< O
messageP W
)W X
{ 	
notifier 
. 
Add 
( 

NotifyType #
.# $
Warning$ +
,+ ,
message- 4
)4 5
;5 6
} 	
public## 
static## 
void## 
Error##  
(##  !
this##! %
	INotifier##& /
notifier##0 8
,##8 9
LocalizedHtmlString##: M
message##N U
)##U V
{$$ 	
notifier%% 
.%% 
Add%% 
(%% 

NotifyType%% #
.%%# $
Error%%$ )
,%%) *
message%%+ 2
)%%2 3
;%%3 4
}&& 	
public.. 
static.. 
void.. 
Success.. "
(.." #
this..# '
	INotifier..( 1
notifier..2 :
,..: ;
LocalizedHtmlString..< O
message..P W
)..W X
{// 	
notifier00 
.00 
Add00 
(00 

NotifyType00 #
.00# $
Success00$ +
,00+ ,
message00- 4
)004 5
;005 6
}11 	
}22 
}33 °
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\NotifyEntry.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
public 

enum 

NotifyType 
{ 
Success 
, 
Information 
, 
Warning		 
,		 
Error

 
} 
public 

class 
NotifyEntry 
{ 
public 

NotifyType 
Type 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
IHtmlContent 
Message #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ˛
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\NotifyEntryComparer.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
internal 
class 
NotifyEntryComparer &
:' (
IEqualityComparer) :
<: ;
NotifyEntry; F
>F G
{ 
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public

 
NotifyEntryComparer

 "
(

" #
HtmlEncoder

# .
htmlEncoder

/ :
)

: ;
{ 	
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public 
bool 
Equals 
( 
NotifyEntry &
x' (
,( )
NotifyEntry* 5
y6 7
)7 8
{ 	
return 
x 
. 
Type 
== 
y 
. 
Type #
&&$ &
x' (
.( )
GetMessageAsString) ;
(; <
_htmlEncoder< H
)H I
==J L
yM N
.N O
GetMessageAsStringO a
(a b
_htmlEncoderb n
)n o
;o p
} 	
public 
int 
GetHashCode 
( 
NotifyEntry *
obj+ .
). /
{ 	
return 
obj 
. 
GetMessageAsString )
() *
_htmlEncoder* 6
)6 7
.7 8
GetHashCode8 C
(C D
)D E
&F G
$numH J
*K L
objM P
.P Q
TypeQ U
.U V
GetHashCodeV a
(a b
)b c
;c d
} 	
} 
} ª'
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\NotifyEntryConverter.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Notify		( .
{

 
public 

class  
NotifyEntryConverter %
:& '
JsonConverter( 5
{ 
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public  
NotifyEntryConverter #
(# $
HtmlEncoder$ /
htmlEncoder0 ;
); <
{ 	
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public 
override 
bool 

CanConvert '
(' (
Type( ,

objectType- 7
)7 8
{ 	
return 
typeof 
( 
NotifyEntry %
)% &
.& '
IsAssignableFrom' 7
(7 8

objectType8 B
)B C
;C D
} 	
public 
override 
object 
ReadJson '
(' (

JsonReader( 2
reader3 9
,9 :
Type; ?

objectType@ J
,J K
objectL R
existingValueS `
,` a
JsonSerializerb p

serializerq {
){ |
{ 	
var 
jo 
= 
JObject 
. 
Load !
(! "
reader" (
)( )
;) *

NotifyType 
type 
; 
var 
notifyEntry 
= 
new !
NotifyEntry" -
(- .
). /
;/ 0
notifyEntry   
.   
Message   
=    !
new  " %

HtmlString  & 0
(  0 1
jo  1 3
.  3 4
Value  4 9
<  9 :
string  : @
>  @ A
(  A B
$str  B K
)  K L
)  L M
;  M N
if"" 
("" 
Enum"" 
."" 
TryParse"" 
("" 
jo""  
.""  !
Value""! &
<""& '
string""' -
>""- .
("". /
$str""/ 5
)""5 6
,""6 7
out""8 ;
type""< @
)""@ A
)""A B
{## 
notifyEntry$$ 
.$$ 
Type$$  
=$$! "
type$$# '
;$$' (
}%% 
return'' 
notifyEntry'' 
;'' 
}(( 	
public** 
override** 
void** 
	WriteJson** &
(**& '

JsonWriter**' 1
writer**2 8
,**8 9
object**: @
value**A F
,**F G
JsonSerializer**H V

serializer**W a
)**a b
{++ 	
var,, 
notifyEntry,, 
=,, 
value,, #
as,,$ &
NotifyEntry,,' 2
;,,2 3
if-- 
(-- 
notifyEntry-- 
==-- 
null-- #
)--# $
{.. 
return// 
;// 
}00 
var22 
o22 
=22 
new22 
JObject22 
(22  
)22  !
;22! "
var55 
stringBuilder55 
=55 
new55  #
StringBuilder55$ 1
(551 2
)552 3
;553 4
using66 
(66 
var66 
stringWriter66 #
=66$ %
new66& )
StringWriter66* 6
(666 7
stringBuilder667 D
)66D E
)66E F
{77 
notifyEntry88 
.88 
Message88 #
.88# $
WriteTo88$ +
(88+ ,
stringWriter88, 8
,888 9
_htmlEncoder88: F
)88F G
;88G H
}99 
o<< 
.<< 
Add<< 
(<< 
new<< 
	JProperty<< 
(<<  
nameof<<  &
(<<& '
NotifyEntry<<' 2
.<<2 3
Type<<3 7
)<<7 8
,<<8 9
notifyEntry<<: E
.<<E F
Type<<F J
.<<J K
ToString<<K S
(<<S T
)<<T U
)<<U V
)<<V W
;<<W X
o== 
.== 
Add== 
(== 
new== 
	JProperty== 
(==  
nameof==  &
(==& '
NotifyEntry==' 2
.==2 3
Message==3 :
)==: ;
,==; <
notifyEntry=== H
.==H I
GetMessageAsString==I [
(==[ \
_htmlEncoder==\ h
)==h i
)==i j
)==j k
;==k l
o?? 
.?? 
WriteTo?? 
(?? 
writer?? 
)?? 
;?? 
}@@ 	
}AA 
}BB ˚
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\NotifyEntryExtensions.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
internal 
static 
class !
NotifyEntryExtensions /
{ 
public		 
static		 
string		 
GetMessageAsString		 /
(		/ 0
this		0 4
NotifyEntry		5 @
entry		A F
,		F G
HtmlEncoder		H S
htmlEncoder		T _
)		_ `
{

 	
var 
stringBuilder 
= 
new  #
StringBuilder$ 1
(1 2
)2 3
;3 4
using 
( 
var 
stringWriter #
=$ %
new& )
StringWriter* 6
(6 7
stringBuilder7 D
)D E
)E F
{ 
entry 
. 
Message 
. 
WriteTo %
(% &
stringWriter& 2
,2 3
htmlEncoder4 ?
)? @
;@ A
stringWriter 
. 
Flush "
(" #
)# $
;$ %
} 
return 
stringBuilder  
.  !
ToString! )
() *
)* +
;+ ,
} 	
} 
} †i
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Notify\NotifyFilter.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Notify( .
{ 
public 

class 
NotifyFilter 
: 
IActionFilter  -
,- .
IAsyncResultFilter/ A
{ 
public 
const 
string 
CookiePrefix (
=) *
$str+ 8
;8 9
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
dynamic  
_shapeFactory! .
;. /
private 
readonly 
ILayoutAccessor (
_layoutAccessor) 8
;8 9
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
NotifyEntry 
[ 
] 
_existingEntries .
=/ 0
Array1 6
.6 7
Empty7 <
<< =
NotifyEntry= H
>H I
(I J
)J K
;K L
private 
bool 
_shouldDeleteCookie (
;( )
private 
string 
_tenantPath "
;" #
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private 
readonly 
ILogger  
_logger! (
;( )
public   
NotifyFilter   
(   
	INotifier!! 
notifier!! 
,!! 
ILayoutAccessor"" 
layoutAccessor"" *
,""* +
IShapeFactory## 
shapeFactory## &
,##& '
ShellSettings$$ 
shellSettings$$ '
,$$' (#
IDataProtectionProvider%% #"
dataProtectionProvider%%$ :
,%%: ;
HtmlEncoder&& 
htmlEncoder&& #
,&&# $
ILogger'' 
<'' 
NotifyFilter''  
>''  !
logger''" (
)''( )
{(( 	
_htmlEncoder)) 
=)) 
htmlEncoder)) &
;))& '
_logger** 
=** 
logger** 
;** #
_dataProtectionProvider++ #
=++$ %"
dataProtectionProvider++& <
;++< =
_layoutAccessor-- 
=-- 
layoutAccessor-- ,
;--, -
	_notifier.. 
=.. 
notifier..  
;..  !
_shapeFactory// 
=// 
shapeFactory// (
;//( )
_tenantPath11 
=11 
$str11 
+11 
shellSettings11  -
.11- .
RequestUrlPrefix11. >
;11> ?
}22 	
public44 
void44 
OnActionExecuting44 %
(44% &"
ActionExecutingContext44& <
filterContext44= J
)44J K
{55 	
var66 
messages66 
=66 
Convert66 "
.66" #
ToString66# +
(66+ ,
filterContext66, 9
.669 :
HttpContext66: E
.66E F
Request66F M
.66M N
Cookies66N U
[66U V
CookiePrefix66V b
]66b c
)66c d
;66d e
if77 
(77 
String77 
.77 
IsNullOrEmpty77 $
(77$ %
messages77% -
)77- .
)77. /
{88 
return99 
;99 
}:: $
DeserializeNotifyEntries<< $
(<<$ %
messages<<% -
,<<- .
out<</ 2
NotifyEntry<<3 >
[<<> ?
]<<? @
messageEntries<<A O
)<<O P
;<<P Q
if>> 
(>> 
messageEntries>> 
==>> !
null>>" &
)>>& '
{?? 
_shouldDeleteCookieAA #
=AA$ %
trueAA& *
;AA* +
returnBB 
;BB 
}CC 
ifEE 
(EE 
messageEntriesEE 
.EE 
LengthEE %
==EE& (
$numEE) *
)EE* +
{FF 
returnGG 
;GG 
}HH 
_existingEntriesKK 
=KK 
messageEntriesKK -
;KK- .
}LL 	
publicNN 
voidNN 
OnActionExecutedNN $
(NN$ %!
ActionExecutedContextNN% :
filterContextNN; H
)NNH I
{OO 	
varPP 
messageEntriesPP 
=PP  
	_notifierPP! *
.PP* +
ListPP+ /
(PP/ 0
)PP0 1
.PP1 2
ToArrayPP2 9
(PP9 :
)PP: ;
;PP; <
ifSS 
(SS 
messageEntriesSS 
.SS 
LengthSS %
==SS& (
$numSS) *
&&SS+ -
_existingEntriesSS. >
.SS> ?
LengthSS? E
==SSF H
$numSSI J
)SSJ K
{TT 
returnUU 
;UU 
}VV 
_existingEntries[[ 
=[[ 
messageEntries[[ -
.[[- .
Concat[[. 4
([[4 5
_existingEntries[[5 E
)[[E F
.[[F G
Distinct[[G O
([[O P
new[[P S
NotifyEntryComparer[[T g
([[g h
_htmlEncoder[[h t
)[[t u
)[[u v
.[[v w
ToArray[[w ~
([[~ 
)	[[ Ä
;
[[Ä Å
if__ 
(__ 
!__ 
(__ 
filterContext__ 
.__  
Result__  &
is__' )

ViewResult__* 4
||__5 7
filterContext__8 E
.__E F
Result__F L
is__M O

PageResult__P Z
)__Z [
&&__\ ^
_existingEntries___ o
.__o p
Length__p v
>__w x
$num__y z
)__z {
{`` 
filterContextaa 
.aa 
HttpContextaa )
.aa) *
Responseaa* 2
.aa2 3
Cookiesaa3 :
.aa: ;
Appendaa; A
(aaA B
CookiePrefixaaB N
,aaN O 
SerializeNotifyEntryaaP d
(aad e
_existingEntriesaae u
)aau v
,aav w
newaax {
CookieOptions	aa| â
{
aaä ã
HttpOnly
aaå î
=
aaï ñ
true
aaó õ
,
aaõ ú
Path
aaù °
=
aa¢ £
_tenantPath
aa§ Ø
}
aa∞ ±
)
aa± ≤
;
aa≤ ≥
}bb 
}cc 	
publicee 
asyncee 
Taskee "
OnResultExecutionAsyncee 0
(ee0 1"
ResultExecutingContextee1 G
filterContexteeH U
,eeU V#
ResultExecutionDelegateeeW n
nexteeo s
)ees t
{ff 	
ifgg 
(gg 
_shouldDeleteCookiegg #
)gg# $
{hh 
DeleteCookiesii 
(ii 
filterContextii +
)ii+ ,
;ii, -
awaitkk 
nextkk 
(kk 
)kk 
;kk 
returnll 
;ll 
}mm 
ifoo 
(oo 
!oo 
(oo 
filterContextoo 
.oo  
Resultoo  &
isoo' )

ViewResultoo* 4
||oo5 7
filterContextoo8 E
.ooE F
ResultooF L
isooM O

PageResultooP Z
)ooZ [
)oo[ \
{pp 
awaitqq 
nextqq 
(qq 
)qq 
;qq 
returnrr 
;rr 
}ss 
ifuu 
(uu 
_existingEntriesuu  
.uu  !
Lengthuu! '
==uu( *
$numuu+ ,
)uu, -
{vv 
awaitww 
nextww 
(ww 
)ww 
;ww 
returnxx 
;xx 
}yy 
dynamic{{ 
layout{{ 
={{ 
await{{ "
_layoutAccessor{{# 2
.{{2 3
GetLayoutAsync{{3 A
({{A B
){{B C
;{{C D
var|| 
messagesZone|| 
=|| 
layout|| %
.||% &
Zones||& +
[||+ ,
$str||, 6
]||6 7
;||7 8
foreach~~ 
(~~ 
var~~ 
messageEntry~~ %
in~~& (
_existingEntries~~) 9
)~~9 :
{ 
messagesZone
ÄÄ 
=
ÄÄ 
messagesZone
ÄÄ +
.
ÄÄ+ ,
Add
ÄÄ, /
(
ÄÄ/ 0
await
ÄÄ0 5
_shapeFactory
ÄÄ6 C
.
ÄÄC D
Message
ÄÄD K
(
ÄÄK L
messageEntry
ÄÄL X
)
ÄÄX Y
)
ÄÄY Z
;
ÄÄZ [
}
ÅÅ 
DeleteCookies
ÉÉ 
(
ÉÉ 
filterContext
ÉÉ '
)
ÉÉ' (
;
ÉÉ( )
await
ÖÖ 
next
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
private
àà 
void
àà 
DeleteCookies
àà "
(
àà" #$
ResultExecutingContext
àà# 9
filterContext
àà: G
)
ààG H
{
ââ 	
filterContext
ää 
.
ää 
HttpContext
ää %
.
ää% &
Response
ää& .
.
ää. /
Cookies
ää/ 6
.
ää6 7
Delete
ää7 =
(
ää= >
CookiePrefix
ää> J
,
ääJ K
new
ääL O
CookieOptions
ääP ]
{
ää^ _
Path
ää` d
=
ääe f
_tenantPath
ääg r
}
ääs t
)
äät u
;
ääu v
}
ãã 	
private
çç 
string
çç "
SerializeNotifyEntry
çç +
(
çç+ ,
NotifyEntry
çç, 7
[
çç7 8
]
çç8 9
notifyEntries
çç: G
)
ççG H
{
éé 	
var
èè 
settings
èè 
=
èè 
new
èè $
JsonSerializerSettings
èè 5
(
èè5 6
)
èè6 7
;
èè7 8
settings
êê 
.
êê 

Converters
êê 
.
êê  
Add
êê  #
(
êê# $
new
êê$ '"
NotifyEntryConverter
êê( <
(
êê< =
_htmlEncoder
êê= I
)
êêI J
)
êêJ K
;
êêK L
try
íí 
{
ìì 
var
îî 
	protector
îî 
=
îî %
_dataProtectionProvider
îî  7
.
îî7 8
CreateProtector
îî8 G
(
îîG H
nameof
îîH N
(
îîN O
NotifyFilter
îîO [
)
îî[ \
)
îî\ ]
;
îî] ^
var
ïï 
signed
ïï 
=
ïï 
	protector
ïï &
.
ïï& '
Protect
ïï' .
(
ïï. /
JsonConvert
ïï/ :
.
ïï: ;
SerializeObject
ïï; J
(
ïïJ K
notifyEntries
ïïK X
,
ïïX Y
settings
ïïZ b
)
ïïb c
)
ïïc d
;
ïïd e
return
ññ 

WebUtility
ññ !
.
ññ! "
	UrlEncode
ññ" +
(
ññ+ ,
signed
ññ, 2
)
ññ2 3
;
ññ3 4
}
óó 
catch
òò 
{
ôô 
return
öö 
null
öö 
;
öö 
}
õõ 
}
úú 	
private
ûû 
void
ûû &
DeserializeNotifyEntries
ûû -
(
ûû- .
string
ûû. 4
value
ûû5 :
,
ûû: ;
out
ûû< ?
NotifyEntry
ûû@ K
[
ûûK L
]
ûûL M
messageEntries
ûûN \
)
ûû\ ]
{
üü 	
var
†† 
settings
†† 
=
†† 
new
†† $
JsonSerializerSettings
†† 5
(
††5 6
)
††6 7
;
††7 8
settings
°° 
.
°° 

Converters
°° 
.
°°  
Add
°°  #
(
°°# $
new
°°$ '"
NotifyEntryConverter
°°( <
(
°°< =
_htmlEncoder
°°= I
)
°°I J
)
°°J K
;
°°K L
try
££ 
{
§§ 
var
•• 
	protector
•• 
=
•• %
_dataProtectionProvider
••  7
.
••7 8
CreateProtector
••8 G
(
••G H
nameof
••H N
(
••N O
NotifyFilter
••O [
)
••[ \
)
••\ ]
;
••] ^
var
¶¶ 
decoded
¶¶ 
=
¶¶ 
	protector
¶¶ '
.
¶¶' (
	Unprotect
¶¶( 1
(
¶¶1 2

WebUtility
¶¶2 <
.
¶¶< =
	UrlDecode
¶¶= F
(
¶¶F G
value
¶¶G L
)
¶¶L M
)
¶¶M N
;
¶¶N O
messageEntries
ßß 
=
ßß  
JsonConvert
ßß! ,
.
ßß, -
DeserializeObject
ßß- >
<
ßß> ?
NotifyEntry
ßß? J
[
ßßJ K
]
ßßK L
>
ßßL M
(
ßßM N
decoded
ßßN U
,
ßßU V
settings
ßßW _
)
ßß_ `
;
ßß` a
}
®® 
catch
©© 
{
™™ 
messageEntries
´´ 
=
´´  
null
´´! %
;
´´% &
_logger
≠≠ 
.
≠≠ 

LogWarning
≠≠ "
(
≠≠" #
$str
≠≠# T
)
≠≠T U
;
≠≠U V
}
ÆÆ 
}
ØØ 	
}
∞∞ 
}±± öf
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ObjectPool.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
internal)) 
class)) 

ObjectPool)) 
<)) 
T)) 
>))  
where))! &
T))' (
:))) *
class))+ 0
{** 
[++ 	
DebuggerDisplay++	 
(++ 
$str++ %
)++% &
]++& '
private,, 
struct,, 
Element,, 
{-- 	
internal.. 
T.. 
Value.. 
;.. 
}// 	
internal55 
delegate55 
T55 
Factory55 #
(55# $
)55$ %
;55% &
private99 
T99 

_firstItem99 
;99 
private;; 
readonly;; 
Element;;  
[;;  !
];;! "
_items;;# )
;;;) *
private@@ 
readonly@@ 
Factory@@  
_factory@@! )
;@@) *
internalkk 

ObjectPoolkk 
(kk 
Factorykk #
factorykk$ +
)kk+ ,
:ll 
thisll 
(ll 
factoryll 
,ll 
Systemll "
.ll" #
Environmentll# .
.ll. /
ProcessorCountll/ =
*ll> ?
$numll@ A
)llA B
{mm 	
}mm
 
internaloo 

ObjectPooloo 
(oo 
Factoryoo #
factoryoo$ +
,oo+ ,
intoo- 0
sizeoo1 5
)oo5 6
{pp 	
Debugqq 
.qq 
Assertqq 
(qq 
sizeqq 
>=qq  
$numqq! "
)qq" #
;qq# $
_factoryrr 
=rr 
factoryrr 
;rr 
_itemsss 
=ss 
newss 
Elementss  
[ss  !
sizess! %
-ss& '
$numss( )
]ss) *
;ss* +
}tt 	
privatevv 
Tvv 
CreateInstancevv  
(vv  !
)vv! "
{ww 	
varxx 
instxx 
=xx 
_factoryxx 
(xx  
)xx  !
;xx! "
returnyy 
instyy 
;yy 
}zz 	
internal
ÑÑ 
T
ÑÑ 
Allocate
ÑÑ 
(
ÑÑ 
)
ÑÑ 
{
ÖÖ 	
T
ää 
inst
ää 
=
ää 

_firstItem
ää 
;
ää  
if
ãã 
(
ãã 
inst
ãã 
==
ãã 
null
ãã 
||
ãã 
inst
ãã  $
!=
ãã% '
Interlocked
ãã( 3
.
ãã3 4
CompareExchange
ãã4 C
(
ããC D
ref
ããD G

_firstItem
ããH R
,
ããR S
null
ããT X
,
ããX Y
inst
ããZ ^
)
ãã^ _
)
ãã_ `
{
åå 
inst
çç 
=
çç 
AllocateSlow
çç #
(
çç# $
)
çç$ %
;
çç% &
}
éé 
return
ôô 
inst
ôô 
;
ôô 
}
öö 	
private
úú 
T
úú 
AllocateSlow
úú 
(
úú 
)
úú  
{
ùù 	
var
ûû 
items
ûû 
=
ûû 
_items
ûû 
;
ûû 
for
†† 
(
†† 
int
†† 
i
†† 
=
†† 
$num
†† 
;
†† 
i
†† 
<
†† 
items
††  %
.
††% &
Length
††& ,
;
††, -
i
††. /
++
††/ 1
)
††1 2
{
°° 
T
•• 
inst
•• 
=
•• 
items
•• 
[
•• 
i
••  
]
••  !
.
••! "
Value
••" '
;
••' (
if
¶¶ 
(
¶¶ 
inst
¶¶ 
!=
¶¶ 
null
¶¶  
)
¶¶  !
{
ßß 
if
®® 
(
®® 
inst
®® 
==
®® 
Interlocked
®®  +
.
®®+ ,
CompareExchange
®®, ;
(
®®; <
ref
®®< ?
items
®®@ E
[
®®E F
i
®®F G
]
®®G H
.
®®H I
Value
®®I N
,
®®N O
null
®®P T
,
®®T U
inst
®®V Z
)
®®Z [
)
®®[ \
{
©© 
return
™™ 
inst
™™ #
;
™™# $
}
´´ 
}
¨¨ 
}
≠≠ 
return
ØØ 
CreateInstance
ØØ !
(
ØØ! "
)
ØØ" #
;
ØØ# $
}
∞∞ 	
internal
∫∫ 
void
∫∫ 
Free
∫∫ 
(
∫∫ 
T
∫∫ 
obj
∫∫  
)
∫∫  !
{
ªª 	
Validate
ºº 
(
ºº 
obj
ºº 
)
ºº 
;
ºº !
ForgetTrackedObject
ΩΩ 
(
ΩΩ  
obj
ΩΩ  #
)
ΩΩ# $
;
ΩΩ$ %
if
øø 
(
øø 

_firstItem
øø 
==
øø 
null
øø "
)
øø" #
{
¿¿ 

_firstItem
ƒƒ 
=
ƒƒ 
obj
ƒƒ  
;
ƒƒ  !
}
≈≈ 
else
∆∆ 
{
«« 
FreeSlow
»» 
(
»» 
obj
»» 
)
»» 
;
»» 
}
…… 
}
   	
private
ÃÃ 
void
ÃÃ 
FreeSlow
ÃÃ 
(
ÃÃ 
T
ÃÃ 
obj
ÃÃ  #
)
ÃÃ# $
{
ÕÕ 	
var
ŒŒ 
items
ŒŒ 
=
ŒŒ 
_items
ŒŒ 
;
ŒŒ 
for
œœ 
(
œœ 
int
œœ 
i
œœ 
=
œœ 
$num
œœ 
;
œœ 
i
œœ 
<
œœ 
items
œœ  %
.
œœ% &
Length
œœ& ,
;
œœ, -
i
œœ. /
++
œœ/ 1
)
œœ1 2
{
–– 
if
—— 
(
—— 
items
—— 
[
—— 
i
—— 
]
—— 
.
—— 
Value
—— "
==
——# %
null
——& *
)
——* +
{
““ 
items
÷÷ 
[
÷÷ 
i
÷÷ 
]
÷÷ 
.
÷÷ 
Value
÷÷ "
=
÷÷# $
obj
÷÷% (
;
÷÷( )
break
◊◊ 
;
◊◊ 
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
[
‰‰ 	
Conditional
‰‰	 
(
‰‰ 
$str
‰‰ 
)
‰‰ 
]
‰‰ 
internal
ÂÂ 
void
ÂÂ !
ForgetTrackedObject
ÂÂ )
(
ÂÂ) *
T
ÂÂ* +
old
ÂÂ, /
,
ÂÂ/ 0
T
ÂÂ1 2
replacement
ÂÂ3 >
=
ÂÂ? @
null
ÂÂA E
)
ÂÂE F
{
ÊÊ 	
}
˙˙ 	
[
ÖÖ 	
Conditional
ÖÖ	 
(
ÖÖ 
$str
ÖÖ 
)
ÖÖ 
]
ÖÖ 
private
ÜÜ 
void
ÜÜ 
Validate
ÜÜ 
(
ÜÜ 
object
ÜÜ $
obj
ÜÜ% (
)
ÜÜ( )
{
áá 	
Debug
àà 
.
àà 
Assert
àà 
(
àà 
obj
àà 
!=
àà 
null
àà  $
,
àà$ %
$str
àà& 5
)
àà5 6
;
àà6 7
Debug
ää 
.
ää 
Assert
ää 
(
ää 

_firstItem
ää #
!=
ää$ &
obj
ää' *
,
ää* +
$str
ää, <
)
ää< =
;
ää= >
var
åå 
items
åå 
=
åå 
_items
åå 
;
åå 
for
çç 
(
çç 
int
çç 
i
çç 
=
çç 
$num
çç 
;
çç 
i
çç 
<
çç 
items
çç  %
.
çç% &
Length
çç& ,
;
çç, -
i
çç. /
++
çç/ 1
)
çç1 2
{
éé 
var
èè 
value
èè 
=
èè 
items
èè !
[
èè! "
i
èè" #
]
èè# $
.
èè$ %
Value
èè% *
;
èè* +
if
êê 
(
êê 
value
êê 
==
êê 
null
êê !
)
êê! "
{
ëë 
return
íí 
;
íí 
}
ìì 
Debug
ïï 
.
ïï 
Assert
ïï 
(
ïï 
value
ïï "
!=
ïï# %
obj
ïï& )
,
ïï) *
$str
ïï+ ;
)
ïï; <
;
ïï< =
}
ññ 
}
óó 	
}
òò 
public
¢¢ 

sealed
¢¢ 
class
¢¢ 
StringBuilderPool
¢¢ )
:
¢¢* +
IDisposable
¢¢, 7
{
££ 
private
§§ 
const
§§ 
int
§§ 
DefaultCapacity
§§ )
=
§§* +
$num
§§, .
*
§§/ 0
$num
§§1 5
;
§§5 6
private
ßß 
static
ßß 
readonly
ßß 

ObjectPool
ßß  *
<
ßß* +
StringBuilderPool
ßß+ <
>
ßß< =
s_poolInstance
ßß> L
=
ßßM N

CreatePool
ßßO Y
(
ßßY Z
)
ßßZ [
;
ßß[ \
public
©© 
readonly
©© 
StringBuilder
©© %
Builder
©©& -
=
©©. /
new
©©0 3
StringBuilder
©©4 A
(
©©A B
DefaultCapacity
©©B Q
)
©©Q R
;
©©R S
private
™™ 
readonly
™™ 

ObjectPool
™™ #
<
™™# $
StringBuilderPool
™™$ 5
>
™™5 6
_pool
™™7 <
;
™™< =
private
¨¨ 
StringBuilderPool
¨¨ !
(
¨¨! "

ObjectPool
¨¨" ,
<
¨¨, -
StringBuilderPool
¨¨- >
>
¨¨> ?
pool
¨¨@ D
)
¨¨D E
{
≠≠ 	
Debug
ÆÆ 
.
ÆÆ 
Assert
ÆÆ 
(
ÆÆ 
pool
ÆÆ 
!=
ÆÆ  
null
ÆÆ! %
)
ÆÆ% &
;
ÆÆ& '
_pool
ØØ 
=
ØØ 
pool
ØØ 
;
ØØ 
}
∞∞ 	
public
≤≤ 
int
≤≤ 
Length
≤≤ 
=>
≤≤ 
Builder
≤≤ $
.
≤≤$ %
Length
≤≤% +
;
≤≤+ ,
internal
∫∫ 
static
∫∫ 

ObjectPool
∫∫ "
<
∫∫" #
StringBuilderPool
∫∫# 4
>
∫∫4 5

CreatePool
∫∫6 @
(
∫∫@ A
int
∫∫A D
size
∫∫E I
=
∫∫J K
$num
∫∫L N
)
∫∫N O
{
ªª 	

ObjectPool
ºº 
<
ºº 
StringBuilderPool
ºº (
>
ºº( )
pool
ºº* .
=
ºº/ 0
null
ºº1 5
;
ºº5 6
pool
ΩΩ 
=
ΩΩ 
new
ΩΩ 

ObjectPool
ΩΩ !
<
ΩΩ! "
StringBuilderPool
ΩΩ" 3
>
ΩΩ3 4
(
ΩΩ4 5
(
ΩΩ5 6
)
ΩΩ6 7
=>
ΩΩ8 :
new
ΩΩ; >
StringBuilderPool
ΩΩ? P
(
ΩΩP Q
pool
ΩΩQ U
)
ΩΩU V
,
ΩΩV W
size
ΩΩX \
)
ΩΩ\ ]
;
ΩΩ] ^
return
ææ 
pool
ææ 
;
ææ 
}
øø 	
public
¡¡ 
static
¡¡ 
StringBuilderPool
¡¡ '
GetInstance
¡¡( 3
(
¡¡3 4
)
¡¡4 5
{
¬¬ 	
var
√√ 
builder
√√ 
=
√√ 
s_poolInstance
√√ (
.
√√( )
Allocate
√√) 1
(
√√1 2
)
√√2 3
;
√√3 4
Debug
ƒƒ 
.
ƒƒ 
Assert
ƒƒ 
(
ƒƒ 
builder
ƒƒ  
.
ƒƒ  !
Builder
ƒƒ! (
.
ƒƒ( )
Length
ƒƒ) /
==
ƒƒ0 2
$num
ƒƒ3 4
)
ƒƒ4 5
;
ƒƒ5 6
return
≈≈ 
builder
≈≈ 
;
≈≈ 
}
∆∆ 	
public
»» 
override
»» 
string
»» 
ToString
»» '
(
»»' (
)
»»( )
{
…… 	
return
   
Builder
   
.
   
ToString
   #
(
  # $
)
  $ %
;
  % &
}
ÀÀ 	
public
ÕÕ 
void
ÕÕ 
Dispose
ÕÕ 
(
ÕÕ 
)
ÕÕ 
{
ŒŒ 	
var
œœ 
builder
œœ 
=
œœ 
Builder
œœ !
;
œœ! "
if
”” 
(
”” 
builder
”” 
.
”” 
Capacity
””  
==
””! #
DefaultCapacity
””$ 3
)
””3 4
{
‘‘ 
builder
’’ 
.
’’ 
Clear
’’ 
(
’’ 
)
’’ 
;
’’  
_pool
÷÷ 
.
÷÷ 
Free
÷÷ 
(
÷÷ 
this
÷÷ 
)
÷÷  
;
÷÷  !
}
◊◊ 
else
ÿÿ 
{
ŸŸ 
_pool
⁄⁄ 
.
⁄⁄ !
ForgetTrackedObject
⁄⁄ )
(
⁄⁄) *
this
⁄⁄* .
)
⁄⁄. /
;
⁄⁄/ 0
}
€€ 
}
‹‹ 	
}
›› 
}ﬁﬁ íW
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class (
OrchardCoreBuilderExtensions 4
{ 
public## 
static## 
OrchardCoreBuilder## (

AddTheming##) 3
(##3 4
this##4 8
OrchardCoreBuilder##9 K
builder##L S
)##S T
{$$ 	
builder%% 
.%% 
AddThemingHost%% "
(%%" #
)%%# $
.&& 
ConfigureServices&& "
(&&" #
services&&# +
=>&&, .
{'' 
services(( 
.(( 
	Configure(( &
<((& '

MvcOptions((' 1
>((1 2
(((2 3
(((3 4
options((4 ;
)((; <
=>((= ?
{)) 
options** 
.**  
Filters**  '
.**' (
Add**( +
(**+ ,
typeof**, 2
(**2 3%
ModelBinderAccessorFilter**3 L
)**L M
)**M N
;**N O
options++ 
.++  
Filters++  '
.++' (
Add++( +
(+++ ,
typeof++, 2
(++2 3
NotifyFilter++3 ?
)++? @
)++@ A
;++A B
options,, 
.,,  
Filters,,  '
.,,' (
Add,,( +
(,,+ ,
typeof,,, 2
(,,2 3!
RazorViewActionFilter,,3 H
),,H I
),,I J
;,,J K
}-- 
)-- 
;-- 
services00 
.00 
	AddScoped00 &
<00& '"
IAsyncViewActionFilter00' =
,00= >!
RazorViewActionFilter00? T
>00T U
(00U V
)00V W
;00W X
services22 
.22 
	AddScoped22 &
<22& ' 
IUpdateModelAccessor22' ;
,22; <$
LocalModelBinderAccessor22= U
>22U V
(22V W
)22W X
;22X Y
services33 
.33 
	AddScoped33 &
<33& '
ViewContextAccessor33' :
>33: ;
(33; <
)33< =
;33= >
services55 
.55 
	AddScoped55 &
<55& '$
IShapeTemplateViewEngine55' ?
,55? @(
RazorShapeTemplateViewEngine55A ]
>55] ^
(55^ _
)55_ `
;55` a
services66 
.66 
AddSingleton66 )
<66) *'
IApplicationFeatureProvider66* E
<66E F
ViewsFeature66F R
>66R S
,66S T'
ThemingViewsFeatureProvider66U p
>66p q
(66q r
)66r s
;66s t
services77 
.77 
	AddScoped77 &
<77& ')
IViewLocationExpanderProvider77' D
,77D E-
!ThemeViewLocationExpanderProvider77F g
>77g h
(77h i
)77i j
;77j k
services99 
.99 
	AddScoped99 &
<99& '#
IShapeTemplateHarvester99' >
,99> ?'
BasicShapeTemplateHarvester99@ [
>99[ \
(99\ ]
)99] ^
;99^ _
services:: 
.:: 
AddTransient:: )
<::) *
IShapeTableManager::* <
,::< =$
DefaultShapeTableManager::> V
>::V W
(::W X
)::X Y
;::Y Z
services<< 
.<< 
	AddScoped<< &
<<<& '
IShapeTableProvider<<' :
,<<: ;)
ShapeAttributeBindingStrategy<<< Y
><<Y Z
(<<Z [
)<<[ \
;<<\ ]
services== 
.== 
	AddScoped== &
<==& '
IShapeTableProvider==' :
,==: ;)
ShapePlacementParsingStrategy==< Y
>==Y Z
(==Z [
)==[ \
;==\ ]
services>> 
.>> 
	AddScoped>> &
<>>& '
IShapeTableProvider>>' :
,>>: ;(
ShapeTemplateBindingStrategy>>< X
>>>X Y
(>>Y Z
)>>Z [
;>>[ \
services@@ 
.@@ 
	AddScoped@@ &
<@@& '(
IPlacementNodeFilterProvider@@' C
,@@C D+
PathPlacementNodeFilterProvider@@E d
>@@d e
(@@e f
)@@f g
;@@g h
servicesBB 
.BB 
	AddScopedBB &
<BB& '#
IShapePlacementProviderBB' >
,BB> ?'
ShapeTablePlacementProviderBB@ [
>BB[ \
(BB\ ]
)BB] ^
;BB^ _
servicesDD 
.DD 
TryAddEnumerableDD -
(DD- .
ServiceDescriptorEE )
.EE) *
	TransientEE* 3
<EE3 4
IConfigureOptionsEE4 E
<EEE F 
ShapeTemplateOptionsEEF Z
>EEZ [
,EE[ \%
ShapeTemplateOptionsSetupEE] v
>EEv w
(EEw x
)EEx y
)EEy z
;EEz {
servicesFF 
.FF 
TryAddSingletonFF ,
<FF, -.
"IShapeTemplateFileProviderAccessorFF- O
,FFO P-
!ShapeTemplateFileProviderAccessorFFQ r
>FFr s
(FFs t
)FFt u
;FFu v
servicesHH 
.HH 
AddShapeAttributesHH /
<HH/ 0

CoreShapesHH0 :
>HH: ;
(HH; <
)HH< =
;HH= >
servicesII 
.II 
	AddScopedII &
<II& '
IShapeTableProviderII' :
,II: ;#
CoreShapesTableProviderII< S
>IIS T
(IIT U
)IIU V
;IIV W
servicesJJ 
.JJ 
AddShapeAttributesJJ /
<JJ/ 0

ZoneShapesJJ0 :
>JJ: ;
(JJ; <
)JJ< =
;JJ= >
servicesLL 
.LL 
	AddScopedLL &
<LL& '
IHtmlDisplayLL' 3
,LL3 4
DefaultHtmlDisplayLL5 G
>LLG H
(LLH I
)LLI J
;LLJ K
servicesMM 
.MM 
	AddScopedMM &
<MM& '
ILayoutAccessorMM' 6
,MM6 7
LayoutAccessorMM8 F
>MMF G
(MMG H
)MMH I
;MMI J
servicesNN 
.NN 
	AddScopedNN &
<NN& '
IThemeManagerNN' 4
,NN4 5
ThemeManagerNN6 B
>NNB C
(NNC D
)NND E
;NNE F
servicesOO 
.OO 
	AddScopedOO &
<OO& '
IPageTitleBuilderOO' 8
,OO8 9
PageTitleBuilderOO: J
>OOJ K
(OOK L
)OOL M
;OOM N
servicesQQ 
.QQ 
	AddScopedQQ &
<QQ& '
IShapeFactoryQQ' 4
,QQ4 5
DefaultShapeFactoryQQ6 I
>QQI J
(QQJ K
)QQK L
;QQL M
servicesRR 
.RR 
	AddScopedRR &
<RR& '
IDisplayHelperRR' 5
,RR5 6
DisplayHelperRR7 D
>RRD E
(RRE F
)RRF G
;RRG H
servicesTT 
.TT 
	AddScopedTT &
<TT& '
	INotifierTT' 0
,TT0 1
NotifierTT2 :
>TT: ;
(TT; <
)TT< =
;TT= >
servicesVV 
.VV 
AddShapeAttributesVV /
<VV/ 0
DateTimeShapesVV0 >
>VV> ?
(VV? @
)VV@ A
;VVA B
servicesWW 
.WW 
AddShapeAttributesWW /
<WW/ 0
PageTitleShapesWW0 ?
>WW? @
(WW@ A
)WWA B
;WWB C
servicesYY 
.YY 
AddTagHelpersYY *
<YY* +!
AddAlternateTagHelperYY+ @
>YY@ A
(YYA B
)YYB C
;YYC D
servicesZZ 
.ZZ 
AddTagHelpersZZ *
<ZZ* +
AddClassTagHelperZZ+ <
>ZZ< =
(ZZ= >
)ZZ> ?
;ZZ? @
services[[ 
.[[ 
AddTagHelpers[[ *
<[[* +
AddWrapperTagHelper[[+ >
>[[> ?
([[? @
)[[@ A
;[[A B
services\\ 
.\\ 
AddTagHelpers\\ *
<\\* +$
ClearAlternatesTagHelper\\+ C
>\\C D
(\\D E
)\\E F
;\\F G
services]] 
.]] 
AddTagHelpers]] *
<]]* +!
ClearClassesTagHelper]]+ @
>]]@ A
(]]A B
)]]B C
;]]C D
services^^ 
.^^ 
AddTagHelpers^^ *
<^^* +"
ClearWrappersTagHelper^^+ A
>^^A B
(^^B C
)^^C D
;^^D E
services__ 
.__ 
AddTagHelpers__ *
<__* +$
InputIsDisabledTagHelper__+ C
>__C D
(__D E
)__E F
;__F G
services`` 
.`` 
AddTagHelpers`` *
<``* +$
RemoveAlternateTagHelper``+ C
>``C D
(``D E
)``E F
;``F G
servicesaa 
.aa 
AddTagHelpersaa *
<aa* + 
RemoveClassTagHelperaa+ ?
>aa? @
(aa@ A
)aaA B
;aaB C
servicesbb 
.bb 
AddTagHelpersbb *
<bb* +"
RemoveWrapperTagHelperbb+ A
>bbA B
(bbB C
)bbC D
;bbD E
servicescc 
.cc 
AddTagHelperscc *
<cc* +"
ShapeMetadataTagHelpercc+ A
>ccA B
(ccB C
)ccC D
;ccD E
servicesdd 
.dd 
AddTagHelpersdd *
<dd* +
ShapeTagHelperdd+ 9
>dd9 :
(dd: ;
)dd; <
;dd< =
servicesee 
.ee 
AddTagHelpersee *
<ee* +&
ValidationMessageTagHelperee+ E
>eeE F
(eeF G
)eeG H
;eeH I
servicesff 
.ff 
AddTagHelpersff *
<ff* +
ZoneTagHelperff+ 8
>ff8 9
(ff9 :
)ff: ;
;ff; <
}gg 
)gg 
;gg 
returnii 
builderii 
;ii 
}jj 	
publicoo 
staticoo 
OrchardCoreBuilderoo (
AddThemingHostoo) 7
(oo7 8
thisoo8 <
OrchardCoreBuilderoo= O
builderooP W
)ooW X
{pp 	
varqq 
servicesqq 
=qq 
builderqq "
.qq" #
ApplicationServicesqq# 6
;qq6 7
servicesss 
.ss 
AddSingletonss !
<ss! "(
IExtensionDependencyStrategyss" >
,ss> ?,
 ThemeExtensionDependencyStrategyss@ `
>ss` a
(ssa b
)ssb c
;ssc d
servicestt 
.tt 
AddSingletontt !
<tt! "!
IFeatureBuilderEventstt" 7
,tt7 8%
ThemeFeatureBuilderEventstt9 R
>ttR S
(ttS T
)ttT U
;ttU V
returnvv 
buildervv 
;vv 
}ww 	
}xx 
}yy ¢
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\OrchardDisplayHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Razor( -
{ 
public 

	interface !
IOrchardDisplayHelper *
:+ ,
IOrchardHelper- ;
{ 
IDisplayHelper 
DisplayHelper $
{% &
get' *
;* +
}, -
} 
internal

 
class

  
OrchardDisplayHelper

 '
:

( )!
IOrchardDisplayHelper

* ?
{ 
public  
OrchardDisplayHelper #
(# $
HttpContext$ /
context0 7
,7 8
IDisplayHelper9 G
displayHelperH U
)U V
{ 	
HttpContext 
= 
context !
;! "
DisplayHelper 
= 
displayHelper )
;) *
} 	
public 
HttpContext 
HttpContext &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
IDisplayHelper 
DisplayHelper +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ﬁ
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\PositionWrapper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{		 
public

 

class

 
PositionWrapper

  
:

! "
IHtmlContent

# /
,

/ 0
IPositioned

1 <
,

< =
IShape

> D
{ 
private 
IHtmlContent 
_value #
;# $
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ShapeMetadata 
Metadata %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
new6 9
ShapeMetadata: G
(G H
)H I
;I J
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IList 
< 
string 
> 
Classes $
{% &
get' *
;* +
}, -
public 
IDictionary 
< 
string !
,! "
string# )
>) *

Attributes+ 5
{6 7
get8 ;
;; <
}= >
private 

Dictionary 
< 
string !
,! "
object# )
>) *
_properties+ 6
;6 7
public 
IDictionary 
< 
string !
,! "
object# )
>) *

Properties+ 5
=>6 8
_properties9 D
=E F
_propertiesG R
??S U
newV Y

DictionaryZ d
<d e
stringe k
,k l
objectm s
>s t
(t u
)u v
;v w
public 
PositionWrapper 
( 
IHtmlContent +
value, 1
,1 2
string3 9
position: B
)B C
{ 	
_value 
= 
value 
; 
Position 
= 
position 
;  
}   	
public"" 
PositionWrapper"" 
("" 
string"" %
value""& +
,""+ ,
string""- 3
position""4 <
)""< =
{## 	
_value$$ 
=$$ 
new$$ 
StringHtmlContent$$ *
($$* +
value$$+ 0
)$$0 1
;$$1 2
Position%% 
=%% 
position%% 
;%%  
}&& 	
public(( 
void(( 
WriteTo(( 
((( 

TextWriter(( &
writer((' -
,((- .
HtmlEncoder((/ :
encoder((; B
)((B C
{)) 	
_value** 
.** 
WriteTo** 
(** 
writer** !
,**! "
encoder**# *
)*** +
;**+ ,
}++ 	
},, 
}-- ïÄ
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\RazorPages\Page.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

RazorPages( 2
{ 
public 

abstract 
class 
Page 
:  
	Microsoft! *
.* +

AspNetCore+ 5
.5 6
Mvc6 9
.9 :

RazorPages: D
.D E
PageE I
{ 
private 
dynamic 
_displayHelper &
;& '
private 
IShapeFactory 
_shapeFactory +
;+ ,
private !
IOrchardDisplayHelper %
_orchardHelper& 4
;4 5
private 
ISite 
_site 
; 
public 
override 
ViewContext #
ViewContext$ /
{ 	
get 
=> 
base 
. 
ViewContext #
;# $
set 
{ 
var 
viewContextAccessor '
=( )
value* /
./ 0
HttpContext0 ;
.; <
RequestServices< K
.K L

GetServiceL V
<V W
ViewContextAccessorW j
>j k
(k l
)l m
;m n
base 
. 
ViewContext  
=! "
viewContextAccessor# 6
.6 7
ViewContext7 B
=C D
valueE J
;J K
} 
} 	
private!! 
void!! 
EnsureDisplayHelper!! (
(!!( )
)!!) *
{"" 	
if## 
(## 
_displayHelper## 
==## !
null##" &
)##& '
{$$ 
_displayHelper%% 
=%%  
HttpContext%%! ,
.%%, -
RequestServices%%- <
.%%< =

GetService%%= G
<%%G H
IDisplayHelper%%H V
>%%V W
(%%W X
)%%X Y
;%%Y Z
}&& 
}'' 	
private)) 
void)) 
EnsureShapeFactory)) '
())' (
)))( )
{** 	
if++ 
(++ 
_shapeFactory++ 
==++  
null++! %
)++% &
{,, 
_shapeFactory-- 
=-- 
HttpContext--  +
.--+ ,
RequestServices--, ;
.--; <

GetService--< F
<--F G
IShapeFactory--G T
>--T U
(--U V
)--V W
;--W X
}.. 
}// 	
public<< 
dynamic<< 
New<< 
=><< 
Factory<< %
;<<% &
publicAA 
IShapeFactoryAA 
FactoryAA $
{BB 	
getCC 
{DD 
EnsureShapeFactoryEE "
(EE" #
)EE# $
;EE$ %
returnFF 
_shapeFactoryFF $
;FF$ %
}GG 
}HH 	
publicNN 
TaskNN 
<NN 
IHtmlContentNN  
>NN  !
DisplayAsyncNN" .
(NN. /
dynamicNN/ 6
shapeNN7 <
)NN< =
{OO 	
EnsureDisplayHelperPP 
(PP  
)PP  !
;PP! "
returnQQ 
(QQ 
TaskQQ 
<QQ 
IHtmlContentQQ %
>QQ% &
)QQ& '
_displayHelperQQ' 5
(QQ5 6
shapeQQ6 ;
)QQ; <
;QQ< =
}RR 	
publicTT !
IOrchardDisplayHelperTT $
OrchardTT% ,
{UU 	
getVV 
{WW 
ifXX 
(XX 
_orchardHelperXX "
==XX# %
nullXX& *
)XX* +
{YY 
EnsureDisplayHelperZZ '
(ZZ' (
)ZZ( )
;ZZ) *
_orchardHelper[[ "
=[[# $
new[[% ( 
OrchardDisplayHelper[[) =
([[= >
HttpContext[[> I
,[[I J
_displayHelper[[K Y
)[[Y Z
;[[Z [
}\\ 
return^^ 
_orchardHelper^^ %
;^^% &
}__ 
}`` 	
privatebb 
dynamicbb 
_themeLayoutbb $
;bb$ %
publicdd 
dynamicdd 
ThemeLayoutdd "
{ee 	
getff 
{gg 
ifhh 
(hh 
_themeLayouthh  
==hh! #
nullhh$ (
)hh( )
{ii 
_themeLayoutjj  
=jj! "
HttpContextjj# .
.jj. /
Featuresjj/ 7
.jj7 8
Getjj8 ;
<jj; <
RazorViewFeaturejj< L
>jjL M
(jjM N
)jjN O
?jjO P
.jjP Q
ThemeLayoutjjQ \
;jj\ ]
}kk 
returnmm 
_themeLayoutmm #
;mm# $
}nn 
setpp 
{qq 
_themeLayoutrr 
=rr 
valuerr $
;rr$ %
}ss 
}tt 	
publicvv 
stringvv 

ViewLayoutvv  
{ww 	
getxx 
{yy 
ifzz 
(zz 
ThemeLayoutzz 
iszz  "
IShapezz# )
layoutzz* 0
)zz0 1
{{{ 
if|| 
(|| 
layout|| 
.|| 
Metadata|| '
.||' (

Alternates||( 2
.||2 3
Count||3 8
>||9 :
$num||; <
)||< =
{}} 
return~~ 
layout~~ %
.~~% &
Metadata~~& .
.~~. /

Alternates~~/ 9
.~~9 :
Last~~: >
;~~> ?
} 
return
ÅÅ 
layout
ÅÅ !
.
ÅÅ! "
Metadata
ÅÅ" *
.
ÅÅ* +
Type
ÅÅ+ /
;
ÅÅ/ 0
}
ÇÇ 
return
ÑÑ 
String
ÑÑ 
.
ÑÑ 
Empty
ÑÑ #
;
ÑÑ# $
}
ÖÖ 
set
áá 
{
àà 
if
ââ 
(
ââ 
ThemeLayout
ââ 
is
ââ  "
IShape
ââ# )
layout
ââ* 0
)
ââ0 1
{
ää 
if
ãã 
(
ãã 
layout
ãã 
.
ãã 
Metadata
ãã '
.
ãã' (

Alternates
ãã( 2
.
ãã2 3
Contains
ãã3 ;
(
ãã; <
value
ãã< A
)
ããA B
)
ããB C
{
åå 
if
çç 
(
çç 
layout
çç "
.
çç" #
Metadata
çç# +
.
çç+ ,

Alternates
çç, 6
.
çç6 7
Last
çç7 ;
==
çç< >
value
çç? D
)
ççD E
{
éé 
return
èè "
;
èè" #
}
êê 
layout
íí 
.
íí 
Metadata
íí '
.
íí' (

Alternates
íí( 2
.
íí2 3
Remove
íí3 9
(
íí9 :
value
íí: ?
)
íí? @
;
íí@ A
}
ìì 
layout
ïï 
.
ïï 
Metadata
ïï #
.
ïï# $

Alternates
ïï$ .
.
ïï. /
Add
ïï/ 2
(
ïï2 3
value
ïï3 8
)
ïï8 9
;
ïï9 :
}
ññ 
}
óó 
}
òò 	
private
öö 
IPageTitleBuilder
öö !
_pageTitleBuilder
öö" 3
;
öö3 4
public
úú 
IPageTitleBuilder
úú  
Title
úú! &
{
ùù 	
get
ûû 
{
üü 
if
†† 
(
†† 
_pageTitleBuilder
†† %
==
††& (
null
††) -
)
††- .
{
°° 
_pageTitleBuilder
¢¢ %
=
¢¢& '
HttpContext
¢¢( 3
.
¢¢3 4
RequestServices
¢¢4 C
.
¢¢C D 
GetRequiredService
¢¢D V
<
¢¢V W
IPageTitleBuilder
¢¢W h
>
¢¢h i
(
¢¢i j
)
¢¢j k
;
¢¢k l
}
££ 
return
•• 
_pageTitleBuilder
•• (
;
••( )
}
¶¶ 
}
ßß 	
private
©© 
IViewLocalizer
©© 
_t
©© !
;
©©! "
public
ÆÆ 
IViewLocalizer
ÆÆ 
T
ÆÆ 
{
ØØ 	
get
∞∞ 
{
±± 
if
≤≤ 
(
≤≤ 
_t
≤≤ 
==
≤≤ 
null
≤≤ 
)
≤≤ 
{
≥≥ 
_t
¥¥ 
=
¥¥ 
HttpContext
¥¥ $
.
¥¥$ %
RequestServices
¥¥% 4
.
¥¥4 5 
GetRequiredService
¥¥5 G
<
¥¥G H
IViewLocalizer
¥¥H V
>
¥¥V W
(
¥¥W X
)
¥¥X Y
;
¥¥Y Z
(
µµ 
(
µµ 
IViewContextAware
µµ '
)
µµ' (
_t
µµ( *
)
µµ* +
.
µµ+ ,
Contextualize
µµ, 9
(
µµ9 :
ViewContext
µµ: E
)
µµE F
;
µµF G
}
∂∂ 
return
∏∏ 
_t
∏∏ 
;
∏∏ 
}
ππ 
}
∫∫ 	
public
√√ 
IHtmlContent
√√ !
RenderTitleSegments
√√ /
(
√√/ 0
IHtmlContent
√√0 <
segment
√√= D
,
√√D E
string
√√F L
position
√√M U
=
√√V W
$str
√√X [
,
√√[ \
IHtmlContent
√√] i
	separator
√√j s
=
√√t u
null
√√v z
)
√√z {
{
ƒƒ 	
Title
≈≈ 
.
≈≈ 

AddSegment
≈≈ 
(
≈≈ 
segment
≈≈ $
,
≈≈$ %
position
≈≈& .
)
≈≈. /
;
≈≈/ 0
return
∆∆ 
Title
∆∆ 
.
∆∆ 
GenerateTitle
∆∆ &
(
∆∆& '
	separator
∆∆' 0
)
∆∆0 1
;
∆∆1 2
}
«« 	
public
–– 
IHtmlContent
–– !
RenderTitleSegments
–– /
(
––/ 0
string
––0 6
segment
––7 >
,
––> ?
string
––@ F
position
––G O
=
––P Q
$str
––R U
,
––U V
IHtmlContent
––W c
	separator
––d m
=
––n o
null
––p t
)
––t u
{
—— 	
Title
““ 
.
““ 

AddSegment
““ 
(
““ 
new
““  
StringHtmlContent
““! 2
(
““2 3
segment
““3 :
)
““: ;
,
““; <
position
““= E
)
““E F
;
““F G
return
”” 
Title
”” 
.
”” 
GenerateTitle
”” &
(
””& '
	separator
””' 0
)
””0 1
;
””1 2
}
‘‘ 	
public
€€ 

TagBuilder
€€ 
Tag
€€ 
(
€€ 
dynamic
€€ %
shape
€€& +
)
€€+ ,
{
‹‹ 	
return
›› 
Shape
›› 
.
›› 
GetTagBuilder
›› &
(
››& '
shape
››' ,
)
››, -
;
››- .
}
ﬁﬁ 	
public
‡‡ 

TagBuilder
‡‡ 
Tag
‡‡ 
(
‡‡ 
dynamic
‡‡ %
shape
‡‡& +
,
‡‡+ ,
string
‡‡- 3
tag
‡‡4 7
)
‡‡7 8
{
·· 	
return
‚‚ 
Shape
‚‚ 
.
‚‚ 
GetTagBuilder
‚‚ &
(
‚‚& '
shape
‚‚' ,
,
‚‚, -
tag
‚‚. 1
)
‚‚1 2
;
‚‚2 3
}
„„ 	
public
ÍÍ 
bool
ÍÍ 
IsSectionDefined
ÍÍ $
(
ÍÍ$ %
string
ÍÍ% +
name
ÍÍ, 0
)
ÍÍ0 1
{
ÎÎ 	
if
ÓÓ 
(
ÓÓ 
name
ÓÓ 
==
ÓÓ 
null
ÓÓ 
)
ÓÓ 
{
ÔÔ 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
name
7 ;
)
; <
)
< =
;
= >
}
ÒÒ 
var
ÛÛ 
zone
ÛÛ 
=
ÛÛ 
ThemeLayout
ÛÛ "
[
ÛÛ" #
name
ÛÛ# '
]
ÛÛ' (
;
ÛÛ( )
return
ıı 
zone
ıı 
!=
ıı 
null
ıı 
;
ıı  
}
ˆˆ 	
public
¸¸ 
Task
¸¸ 
<
¸¸ 
IHtmlContent
¸¸  
>
¸¸  ! 
RenderSectionAsync
¸¸" 4
(
¸¸4 5
string
¸¸5 ;
name
¸¸< @
)
¸¸@ A
{
˝˝ 	
if
˛˛ 
(
˛˛ 
name
˛˛ 
==
˛˛ 
null
˛˛ 
)
˛˛ 
{
ˇˇ 
throw
ÄÄ 
new
ÄÄ #
ArgumentNullException
ÄÄ /
(
ÄÄ/ 0
nameof
ÄÄ0 6
(
ÄÄ6 7
name
ÄÄ7 ;
)
ÄÄ; <
)
ÄÄ< =
;
ÄÄ= >
}
ÅÅ 
return
ÉÉ  
RenderSectionAsync
ÉÉ %
(
ÉÉ% &
name
ÉÉ& *
,
ÉÉ* +
required
ÉÉ, 4
:
ÉÉ4 5
true
ÉÉ6 :
)
ÉÉ: ;
;
ÉÉ; <
}
ÑÑ 	
public
ãã 
Task
ãã 
<
ãã 
IHtmlContent
ãã  
>
ãã  ! 
RenderSectionAsync
ãã" 4
(
ãã4 5
string
ãã5 ;
name
ãã< @
,
ãã@ A
bool
ããB F
required
ããG O
)
ããO P
{
åå 	
if
çç 
(
çç 
name
çç 
==
çç 
null
çç 
)
çç 
{
éé 
throw
èè 
new
èè #
ArgumentNullException
èè /
(
èè/ 0
nameof
èè0 6
(
èè6 7
name
èè7 ;
)
èè; <
)
èè< =
;
èè= >
}
êê 
var
íí 
zone
íí 
=
íí 
ThemeLayout
íí "
[
íí" #
name
íí# '
]
íí' (
;
íí( )
if
îî 
(
îî 
required
îî 
&&
îî 
zone
îî  
!=
îî! #
null
îî$ (
&&
îî) +
zone
îî, 0
is
îî1 3
Shape
îî4 9
&&
îî: <
zone
îî= A
.
îîA B
Items
îîB G
.
îîG H
Count
îîH M
==
îîN P
$num
îîQ R
)
îîR S
{
ïï 
throw
ññ 
new
ññ '
InvalidOperationException
ññ 3
(
ññ3 4
$str
ññ4 F
+
ññG H
name
ññI M
)
ññM N
;
ññN O
}
óó 
return
ôô 
DisplayAsync
ôô 
(
ôô  
zone
ôô  $
)
ôô$ %
;
ôô% &
}
öö 	
public
úú 
object
úú 
	OrDefault
úú 
(
úú  
object
úú  &
text
úú' +
,
úú+ ,
object
úú- 3
other
úú4 9
)
úú9 :
{
ùù 	
if
ûû 
(
ûû 
text
ûû 
==
ûû 
null
ûû 
||
ûû 
Convert
ûû  '
.
ûû' (
ToString
ûû( 0
(
ûû0 1
text
ûû1 5
)
ûû5 6
==
ûû7 9
$str
ûû: <
)
ûû< =
{
üü 
return
†† 
other
†† 
;
†† 
}
°° 
return
££ 
text
££ 
;
££ 
}
§§ 	
public
©© 
string
©© 
FullRequestPath
©© %
=>
©©& (
HttpContext
©©) 4
.
©©4 5
Request
©©5 <
.
©©< =
PathBase
©©= E
+
©©F G
HttpContext
©©H S
.
©©S T
Request
©©T [
.
©©[ \
Path
©©\ `
+
©©a b
HttpContext
©©c n
.
©©n o
Request
©©o v
.
©©v w
QueryString©©w Ç
;©©Ç É
public
ÆÆ 
ISite
ÆÆ 
Site
ÆÆ 
{
ØØ 	
get
∞∞ 
{
±± 
if
≤≤ 
(
≤≤ 
_site
≤≤ 
==
≤≤ 
null
≤≤ !
)
≤≤! "
{
≥≥ 
_site
¥¥ 
=
¥¥ 
HttpContext
¥¥ '
.
¥¥' (
Features
¥¥( 0
.
¥¥0 1
Get
¥¥1 4
<
¥¥4 5
RazorViewFeature
¥¥5 E
>
¥¥E F
(
¥¥F G
)
¥¥G H
?
¥¥H I
.
¥¥I J
Site
¥¥J N
;
¥¥N O
}
µµ 
return
∑∑ 
_site
∑∑ 
;
∑∑ 
}
∏∏ 
}
ππ 	
}
∫∫ 
}ªª î
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Razor\IRazorViewExtensionProvider.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Razor( -
{ 
public 

	interface '
IRazorViewExtensionProvider 0
{ 
string 
ViewExtension 
{ 
get "
;" #
}$ %
} 
} Èô
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Razor\RazorPage.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Razor( -
{ 
public 

	interface 

IRazorPage 
{ 
string 

ViewLayout 
{ 
get 
;  
set! $
;$ %
}& '
} 
public 

abstract 
class 
	RazorPage #
<# $
TModel$ *
>* +
:, -
	Microsoft. 7
.7 8

AspNetCore8 B
.B C
MvcC F
.F G
RazorG L
.L M
	RazorPageM V
<V W
TModelW ]
>] ^
,^ _

IRazorPage` j
{ 
private 
IDisplayHelper 
_displayHelper -
;- .
private 
IShapeFactory 
_shapeFactory +
;+ ,
private !
IOrchardDisplayHelper %
_orchardHelper& 4
;4 5
private 
ISite 
_site 
; 
public 
override 
ViewContext #
ViewContext$ /
{ 	
get 
=> 
base 
. 
ViewContext #
;# $
set 
{ 
var   
viewContextAccessor   '
=  ( )
value  * /
.  / 0
HttpContext  0 ;
.  ; <
RequestServices  < K
.  K L

GetService  L V
<  V W
ViewContextAccessor  W j
>  j k
(  k l
)  l m
;  m n
base!! 
.!! 
ViewContext!!  
=!!! "
viewContextAccessor!!# 6
.!!6 7
ViewContext!!7 B
=!!C D
value!!E J
;!!J K
}"" 
}## 	
private%% 
void%% 
EnsureDisplayHelper%% (
(%%( )
)%%) *
{&& 	
if'' 
('' 
_displayHelper'' 
=='' !
null''" &
)''& '
{(( 
_displayHelper)) 
=))  
Context))! (
.))( )
RequestServices))) 8
.))8 9

GetService))9 C
<))C D
IDisplayHelper))D R
>))R S
())S T
)))T U
;))U V
}** 
}++ 	
private-- 
void-- 
EnsureShapeFactory-- '
(--' (
)--( )
{.. 	
if// 
(// 
_shapeFactory// 
==//  
null//! %
)//% &
{00 
_shapeFactory11 
=11 
Context11  '
.11' (
RequestServices11( 7
.117 8

GetService118 B
<11B C
IShapeFactory11C P
>11P Q
(11Q R
)11R S
;11S T
}22 
}33 	
public@@ 
dynamic@@ 
New@@ 
=>@@ 
Factory@@ %
;@@% &
publicEE 
IShapeFactoryEE 
FactoryEE $
{FF 	
getGG 
{HH 
EnsureShapeFactoryII "
(II" #
)II# $
;II$ %
returnJJ 
_shapeFactoryJJ $
;JJ$ %
}KK 
}LL 	
publicRR 
TaskRR 
<RR 
IHtmlContentRR  
>RR  !
DisplayAsyncRR" .
(RR. /
dynamicRR/ 6
shapeRR7 <
)RR< =
{SS 	
EnsureDisplayHelperTT 
(TT  
)TT  !
;TT! "
returnUU 
_displayHelperUU !
.UU! "
ShapeExecuteAsyncUU" 3
(UU3 4
shapeUU4 9
)UU9 :
;UU: ;
}VV 	
publicXX !
IOrchardDisplayHelperXX $
OrchardXX% ,
{YY 	
getZZ 
{[[ 
if\\ 
(\\ 
_orchardHelper\\ "
==\\# %
null\\& *
)\\* +
{]] 
EnsureDisplayHelper^^ '
(^^' (
)^^( )
;^^) *
_orchardHelper__ "
=__# $
new__% ( 
OrchardDisplayHelper__) =
(__= >
Context__> E
,__E F
_displayHelper__G U
)__U V
;__V W
}`` 
returnbb 
_orchardHelperbb %
;bb% &
}cc 
}dd 	
privateff 
dynamicff 
_themeLayoutff $
;ff$ %
publichh 
dynamichh 
ThemeLayouthh "
{ii 	
getjj 
{kk 
ifll 
(ll 
_themeLayoutll  
==ll! #
nullll$ (
)ll( )
{mm 
_themeLayoutnn  
=nn! "
Contextnn# *
.nn* +
Featuresnn+ 3
.nn3 4
Getnn4 7
<nn7 8
RazorViewFeaturenn8 H
>nnH I
(nnI J
)nnJ K
?nnK L
.nnL M
ThemeLayoutnnM X
;nnX Y
}oo 
returnqq 
_themeLayoutqq #
;qq# $
}rr 
settt 
{uu 
_themeLayoutvv 
=vv 
valuevv $
;vv$ %
}ww 
}xx 	
publiczz 
stringzz 

ViewLayoutzz  
{{{ 	
get|| 
{}} 
if~~ 
(~~ 
ThemeLayout~~ 
is~~  "
IShape~~# )
layout~~* 0
)~~0 1
{ 
if
ÄÄ 
(
ÄÄ 
layout
ÄÄ 
.
ÄÄ 
Metadata
ÄÄ '
.
ÄÄ' (

Alternates
ÄÄ( 2
.
ÄÄ2 3
Count
ÄÄ3 8
>
ÄÄ9 :
$num
ÄÄ; <
)
ÄÄ< =
{
ÅÅ 
return
ÇÇ 
layout
ÇÇ %
.
ÇÇ% &
Metadata
ÇÇ& .
.
ÇÇ. /

Alternates
ÇÇ/ 9
.
ÇÇ9 :
Last
ÇÇ: >
;
ÇÇ> ?
}
ÉÉ 
return
ÖÖ 
layout
ÖÖ !
.
ÖÖ! "
Metadata
ÖÖ" *
.
ÖÖ* +
Type
ÖÖ+ /
;
ÖÖ/ 0
}
ÜÜ 
return
àà 
String
àà 
.
àà 
Empty
àà #
;
àà# $
}
ââ 
set
ãã 
{
åå 
if
çç 
(
çç 
ThemeLayout
çç 
is
çç  "
IShape
çç# )
layout
çç* 0
)
çç0 1
{
éé 
if
èè 
(
èè 
layout
èè 
.
èè 
Metadata
èè '
.
èè' (

Alternates
èè( 2
.
èè2 3
Contains
èè3 ;
(
èè; <
value
èè< A
)
èèA B
)
èèB C
{
êê 
if
ëë 
(
ëë 
layout
ëë "
.
ëë" #
Metadata
ëë# +
.
ëë+ ,

Alternates
ëë, 6
.
ëë6 7
Last
ëë7 ;
==
ëë< >
value
ëë? D
)
ëëD E
{
íí 
return
ìì "
;
ìì" #
}
îî 
layout
ññ 
.
ññ 
Metadata
ññ '
.
ññ' (

Alternates
ññ( 2
.
ññ2 3
Remove
ññ3 9
(
ññ9 :
value
ññ: ?
)
ññ? @
;
ññ@ A
}
óó 
layout
ôô 
.
ôô 
Metadata
ôô #
.
ôô# $

Alternates
ôô$ .
.
ôô. /
Add
ôô/ 2
(
ôô2 3
value
ôô3 8
)
ôô8 9
;
ôô9 :
}
öö 
}
õõ 
}
úú 	
private
ûû 
IPageTitleBuilder
ûû !
_pageTitleBuilder
ûû" 3
;
ûû3 4
public
†† 
IPageTitleBuilder
††  
Title
††! &
{
°° 	
get
¢¢ 
{
££ 
if
§§ 
(
§§ 
_pageTitleBuilder
§§ %
==
§§& (
null
§§) -
)
§§- .
{
•• 
_pageTitleBuilder
¶¶ %
=
¶¶& '
Context
¶¶( /
.
¶¶/ 0
RequestServices
¶¶0 ?
.
¶¶? @ 
GetRequiredService
¶¶@ R
<
¶¶R S
IPageTitleBuilder
¶¶S d
>
¶¶d e
(
¶¶e f
)
¶¶f g
;
¶¶g h
}
ßß 
return
©© 
_pageTitleBuilder
©© (
;
©©( )
}
™™ 
}
´´ 	
private
≠≠ 
IViewLocalizer
≠≠ 
_t
≠≠ !
;
≠≠! "
public
≤≤ 
IViewLocalizer
≤≤ 
T
≤≤ 
{
≥≥ 	
get
¥¥ 
{
µµ 
if
∂∂ 
(
∂∂ 
_t
∂∂ 
==
∂∂ 
null
∂∂ 
)
∂∂ 
{
∑∑ 
_t
∏∏ 
=
∏∏ 
Context
∏∏  
.
∏∏  !
RequestServices
∏∏! 0
.
∏∏0 1 
GetRequiredService
∏∏1 C
<
∏∏C D
IViewLocalizer
∏∏D R
>
∏∏R S
(
∏∏S T
)
∏∏T U
;
∏∏U V
(
ππ 
(
ππ 
IViewContextAware
ππ '
)
ππ' (
_t
ππ( *
)
ππ* +
.
ππ+ ,
Contextualize
ππ, 9
(
ππ9 :
ViewContext
ππ: E
)
ππE F
;
ππF G
}
∫∫ 
return
ºº 
_t
ºº 
;
ºº 
}
ΩΩ 
}
ææ 	
public
«« 
IHtmlContent
«« !
RenderTitleSegments
«« /
(
««/ 0
IHtmlContent
««0 <
segment
««= D
,
««D E
string
««F L
position
««M U
=
««V W
$str
««X [
,
««[ \
IHtmlContent
««] i
	separator
««j s
=
««t u
null
««v z
)
««z {
{
»» 	
Title
…… 
.
…… 

AddSegment
…… 
(
…… 
segment
…… $
,
……$ %
position
……& .
)
……. /
;
……/ 0
return
   
Title
   
.
   
GenerateTitle
   &
(
  & '
	separator
  ' 0
)
  0 1
;
  1 2
}
ÀÀ 	
public
‘‘ 
IHtmlContent
‘‘ !
RenderTitleSegments
‘‘ /
(
‘‘/ 0
string
‘‘0 6
segment
‘‘7 >
,
‘‘> ?
string
‘‘@ F
position
‘‘G O
=
‘‘P Q
$str
‘‘R U
,
‘‘U V
IHtmlContent
‘‘W c
	separator
‘‘d m
=
‘‘n o
null
‘‘p t
)
‘‘t u
{
’’ 	
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
÷÷% &
segment
÷÷& -
)
÷÷- .
)
÷÷. /
{
◊◊ 
Title
ÿÿ 
.
ÿÿ 

AddSegment
ÿÿ  
(
ÿÿ  !
new
ÿÿ! $
StringHtmlContent
ÿÿ% 6
(
ÿÿ6 7
segment
ÿÿ7 >
)
ÿÿ> ?
,
ÿÿ? @
position
ÿÿA I
)
ÿÿI J
;
ÿÿJ K
}
ŸŸ 
return
€€ 
Title
€€ 
.
€€ 
GenerateTitle
€€ &
(
€€& '
	separator
€€' 0
)
€€0 1
;
€€1 2
}
‹‹ 	
public
·· 
IHtmlContent
·· 
RenderLayoutBody
·· ,
(
··, -
)
··- .
{
‚‚ 	
var
„„ 
result
„„ 
=
„„ 
base
„„ 
.
„„ 

RenderBody
„„ (
(
„„( )
)
„„) *
;
„„* +
return
‰‰ 
result
‰‰ 
;
‰‰ 
}
ÂÂ 	
public
ÏÏ 

TagBuilder
ÏÏ 
Tag
ÏÏ 
(
ÏÏ 
dynamic
ÏÏ %
shape
ÏÏ& +
)
ÏÏ+ ,
{
ÌÌ 	
return
ÓÓ 
Shape
ÓÓ 
.
ÓÓ 
GetTagBuilder
ÓÓ &
(
ÓÓ& '
shape
ÓÓ' ,
)
ÓÓ, -
;
ÓÓ- .
}
ÔÔ 	
public
ÒÒ 

TagBuilder
ÒÒ 
Tag
ÒÒ 
(
ÒÒ 
dynamic
ÒÒ %
shape
ÒÒ& +
,
ÒÒ+ ,
string
ÒÒ- 3
tag
ÒÒ4 7
)
ÒÒ7 8
{
ÚÚ 	
return
ÛÛ 
Shape
ÛÛ 
.
ÛÛ 
GetTagBuilder
ÛÛ &
(
ÛÛ& '
shape
ÛÛ' ,
,
ÛÛ, -
tag
ÛÛ. 1
)
ÛÛ1 2
;
ÛÛ2 3
}
ÙÙ 	
public
˙˙ 
Task
˙˙ 
<
˙˙ 
IHtmlContent
˙˙  
>
˙˙  !
RenderBodyAsync
˙˙" 1
(
˙˙1 2
)
˙˙2 3
{
˚˚ 	
return
¸¸ 
DisplayAsync
¸¸ 
(
¸¸  
ThemeLayout
¸¸  +
.
¸¸+ ,
Content
¸¸, 3
)
¸¸3 4
;
¸¸4 5
}
˝˝ 	
public
ÑÑ 
new
ÑÑ 
bool
ÑÑ 
IsSectionDefined
ÑÑ (
(
ÑÑ( )
string
ÑÑ) /
name
ÑÑ0 4
)
ÑÑ4 5
{
ÖÖ 	
if
àà 
(
àà 
name
àà 
==
àà 
null
àà 
)
àà 
{
ââ 
throw
ää 
new
ää #
ArgumentNullException
ää /
(
ää/ 0
nameof
ää0 6
(
ää6 7
name
ää7 ;
)
ää; <
)
ää< =
;
ää= >
}
ãã 
var
çç 
zone
çç 
=
çç 
ThemeLayout
çç "
[
çç" #
name
çç# '
]
çç' (
;
çç( )
return
èè 
zone
èè 
!=
èè 
null
èè 
;
èè  
}
êê 	
public
ññ 
new
ññ 
IHtmlContent
ññ 
RenderSection
ññ  -
(
ññ- .
string
ññ. 4
name
ññ5 9
)
ññ9 :
{
óó 	
if
öö 
(
öö 
name
öö 
==
öö 
null
öö 
)
öö 
{
õõ 
throw
úú 
new
úú #
ArgumentNullException
úú /
(
úú/ 0
nameof
úú0 6
(
úú6 7
name
úú7 ;
)
úú; <
)
úú< =
;
úú= >
}
ùù 
return
üü 
RenderSection
üü  
(
üü  !
name
üü! %
,
üü% &
required
üü' /
:
üü/ 0
true
üü1 5
)
üü5 6
;
üü6 7
}
†† 	
public
ßß 
new
ßß 
IHtmlContent
ßß 
RenderSection
ßß  -
(
ßß- .
string
ßß. 4
name
ßß5 9
,
ßß9 :
bool
ßß; ?
required
ßß@ H
)
ßßH I
{
®® 	
if
´´ 
(
´´ 
name
´´ 
==
´´ 
null
´´ 
)
´´ 
{
¨¨ 
throw
≠≠ 
new
≠≠ #
ArgumentNullException
≠≠ /
(
≠≠/ 0
nameof
≠≠0 6
(
≠≠6 7
name
≠≠7 ;
)
≠≠; <
)
≠≠< =
;
≠≠= >
}
ÆÆ 
return
∞∞  
RenderSectionAsync
∞∞ %
(
∞∞% &
name
∞∞& *
,
∞∞* +
required
∞∞, 4
)
∞∞4 5
.
∞∞5 6

GetAwaiter
∞∞6 @
(
∞∞@ A
)
∞∞A B
.
∞∞B C
	GetResult
∞∞C L
(
∞∞L M
)
∞∞M N
;
∞∞N O
}
±± 	
public
∑∑ 
new
∑∑ 
Task
∑∑ 
<
∑∑ 
IHtmlContent
∑∑ $
>
∑∑$ % 
RenderSectionAsync
∑∑& 8
(
∑∑8 9
string
∑∑9 ?
name
∑∑@ D
)
∑∑D E
{
∏∏ 	
if
ªª 
(
ªª 
name
ªª 
==
ªª 
null
ªª 
)
ªª 
{
ºº 
throw
ΩΩ 
new
ΩΩ #
ArgumentNullException
ΩΩ /
(
ΩΩ/ 0
nameof
ΩΩ0 6
(
ΩΩ6 7
name
ΩΩ7 ;
)
ΩΩ; <
)
ΩΩ< =
;
ΩΩ= >
}
ææ 
return
¿¿  
RenderSectionAsync
¿¿ %
(
¿¿% &
name
¿¿& *
,
¿¿* +
required
¿¿, 4
:
¿¿4 5
true
¿¿6 :
)
¿¿: ;
;
¿¿; <
}
¡¡ 	
public
»» 
new
»» 
Task
»» 
<
»» 
IHtmlContent
»» $
>
»»$ % 
RenderSectionAsync
»»& 8
(
»»8 9
string
»»9 ?
name
»»@ D
,
»»D E
bool
»»F J
required
»»K S
)
»»S T
{
…… 	
if
ÃÃ 
(
ÃÃ 
name
ÃÃ 
==
ÃÃ 
null
ÃÃ 
)
ÃÃ 
{
ÕÕ 
throw
ŒŒ 
new
ŒŒ #
ArgumentNullException
ŒŒ /
(
ŒŒ/ 0
nameof
ŒŒ0 6
(
ŒŒ6 7
name
ŒŒ7 ;
)
ŒŒ; <
)
ŒŒ< =
;
ŒŒ= >
}
œœ 
var
—— 
zone
—— 
=
—— 
ThemeLayout
—— "
[
——" #
name
——# '
]
——' (
;
——( )
if
”” 
(
”” 
required
”” 
&&
”” 
zone
””  
!=
””! #
null
””$ (
&&
””) +
zone
””, 0
is
””1 3
Shape
””4 9
&&
””: <
zone
””= A
.
””A B
Items
””B G
.
””G H
Count
””H M
==
””N P
$num
””Q R
)
””R S
{
‘‘ 
throw
’’ 
new
’’ '
InvalidOperationException
’’ 3
(
’’3 4
$str
’’4 F
+
’’G H
name
’’I M
)
’’M N
;
’’N O
}
÷÷ 
return
ÿÿ 
DisplayAsync
ÿÿ 
(
ÿÿ  
zone
ÿÿ  $
)
ÿÿ$ %
;
ÿÿ% &
}
ŸŸ 	
public
€€ 
object
€€ 
	OrDefault
€€ 
(
€€  
object
€€  &
text
€€' +
,
€€+ ,
object
€€- 3
other
€€4 9
)
€€9 :
{
‹‹ 	
if
›› 
(
›› 
text
›› 
==
›› 
null
›› 
||
›› 
Convert
››  '
.
››' (
ToString
››( 0
(
››0 1
text
››1 5
)
››5 6
==
››7 9
$str
››: <
)
››< =
{
ﬁﬁ 
return
ﬂﬂ 
other
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
return
‚‚ 
text
‚‚ 
;
‚‚ 
}
„„ 	
public
ËË 
string
ËË 
FullRequestPath
ËË %
=>
ËË& (
Context
ËË) 0
.
ËË0 1
Request
ËË1 8
.
ËË8 9
PathBase
ËË9 A
+
ËËB C
Context
ËËD K
.
ËËK L
Request
ËËL S
.
ËËS T
Path
ËËT X
+
ËËY Z
Context
ËË[ b
.
ËËb c
Request
ËËc j
.
ËËj k
QueryString
ËËk v
;
ËËv w
public
ÌÌ 
ISite
ÌÌ 
Site
ÌÌ 
{
ÓÓ 	
get
ÔÔ 
{
 
if
ÒÒ 
(
ÒÒ 
_site
ÒÒ 
==
ÒÒ 
null
ÒÒ !
)
ÒÒ! "
{
ÚÚ 
_site
ÛÛ 
=
ÛÛ 
Context
ÛÛ #
.
ÛÛ# $
Features
ÛÛ$ ,
.
ÛÛ, -
Get
ÛÛ- 0
<
ÛÛ0 1
RazorViewFeature
ÛÛ1 A
>
ÛÛA B
(
ÛÛB C
)
ÛÛC D
?
ÛÛD E
.
ÛÛE F
Site
ÛÛF J
;
ÛÛJ K
}
ÙÙ 
return
ˆˆ 
_site
ˆˆ 
;
ˆˆ 
}
˜˜ 
}
¯¯ 	
}
˘˘ 
public
˚˚ 

abstract
˚˚ 
class
˚˚ 
	RazorPage
˚˚ #
:
˚˚$ %
	RazorPage
˚˚& /
<
˚˚/ 0
dynamic
˚˚0 7
>
˚˚7 8
{
¸¸ 
}
˝˝ 
}˛˛ ˜~
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Razor\RazorShapeTemplateViewEngine.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Razor( -
{ 
public 

class (
RazorShapeTemplateViewEngine -
:. /$
IShapeTemplateViewEngine0 H
{ 
private 
readonly 
IOptions !
<! "
MvcViewOptions" 0
>0 1
_options2 :
;: ;
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
ViewContextAccessor , 
_viewContextAccessor- A
;A B
private 
readonly 
ITempDataProvider *
_tempDataProvider+ <
;< =
private 
readonly 
List 
< 
string $
>$ %#
_templateFileExtensions& =
=> ?
new@ C
ListD H
<H I
stringI O
>O P
(P Q
newQ T
[T U
]U V
{W X
RazorViewEngineY h
.h i
ViewExtensioni v
}w x
)x y
;y z
public   (
RazorShapeTemplateViewEngine   +
(  + ,
IOptions!! 
<!! 
MvcViewOptions!! #
>!!# $
options!!% ,
,!!, -
IEnumerable"" 
<"" '
IRazorViewExtensionProvider"" 3
>""3 4"
viewExtensionProviders""5 K
,""K L 
IHttpContextAccessor##  
httpContextAccessor##! 4
,##4 5
ViewContextAccessor$$ 
viewContextAccessor$$  3
,$$3 4
ITempDataProvider%% 
tempDataProvider%% .
)%%. /
{&& 	
_options'' 
='' 
options'' 
;''  
_httpContextAccessor((  
=((! "
httpContextAccessor((# 6
;((6 7 
_viewContextAccessor))  
=))! "
viewContextAccessor))# 6
;))6 7
_tempDataProvider** 
=** 
tempDataProvider**  0
;**0 1#
_templateFileExtensions++ #
.++# $
AddRange++$ ,
(++, -"
viewExtensionProviders++- C
.++C D
Select++D J
(++J K
x++K L
=>++M O
x++P Q
.++Q R
ViewExtension++R _
)++_ `
)++` a
;++a b
},, 	
public.. 
IEnumerable.. 
<.. 
string.. !
>..! ""
TemplateFileExtensions..# 9
{// 	
get00 
{11 
return22 #
_templateFileExtensions22 .
;22. /
}33 
}44 	
public66 
Task66 
<66 
IHtmlContent66  
>66  !
RenderAsync66" -
(66- .
string66. 4
relativePath665 A
,66A B
DisplayContext66C Q
displayContext66R `
)66` a
{77 	
var88 
viewName88 
=88 
$str88 
+88  
relativePath88! -
;88- .
viewName99 
=99 
Path99 
.99 
ChangeExtension99 +
(99+ ,
viewName99, 4
,994 5
RazorViewEngine996 E
.99E F
ViewExtension99F S
)99S T
;99T U
var;; 
viewContext;; 
=;;  
_viewContextAccessor;; 2
.;;2 3
ViewContext;;3 >
;;;> ?
if== 
(== 
viewContext== 
?== 
.== 
View== !
!===" $
null==% )
)==) *
{>> 
var?? 
viewData?? 
=?? 
new?? "
ViewDataDictionary??# 5
(??5 6
viewContext??6 A
.??A B
ViewData??B J
)??J K
;??K L
viewData@@ 
.@@ 
TemplateInfo@@ %
.@@% &
HtmlFieldPrefix@@& 5
=@@6 7
displayContext@@8 F
.@@F G
HtmlFieldPrefix@@G V
;@@V W
varBB 

htmlHelperBB 
=BB  
MakeHtmlHelperBB! /
(BB/ 0
viewContextBB0 ;
,BB; <
viewDataBB= E
)BBE F
;BBF G
returnCC 

htmlHelperCC !
.CC! "
PartialAsyncCC" .
(CC. /
viewNameCC/ 7
,CC7 8
displayContextCC9 G
.CCG H
ValueCCH M
)CCM N
;CCN O
}DD 
elseEE 
{FF 
returnGG  
RenderRazorViewAsyncGG +
(GG+ ,
viewNameGG, 4
,GG4 5
displayContextGG6 D
)GGD E
;GGE F
}HH 
}II 	
privateKK 
asyncKK 
TaskKK 
<KK 
IHtmlContentKK '
>KK' ( 
RenderRazorViewAsyncKK) =
(KK= >
stringKK> D
viewNameKKE M
,KKM N
DisplayContextKKO ]
displayContextKK^ l
)KKl m
{LL 	
varMM 
viewEnginesMM 
=MM 
_optionsMM &
.MM& '
ValueMM' ,
.MM, -
ViewEnginesMM- 8
;MM8 9
ifOO 
(OO 
viewEnginesOO 
.OO 
CountOO !
==OO" $
$numOO% &
)OO& '
{PP 
throwQQ 
newQQ %
InvalidOperationExceptionQQ 3
(QQ3 4
stringQQ4 :
.QQ: ;
FormatQQ; A
(QQA B
$str	QQB ü
,
QQü †
typeofRR 
(RR 
MvcViewOptionsRR )
)RR) *
.RR* +
FullNameRR+ 3
,RR3 4
nameofSS 
(SS 
MvcViewOptionsSS )
.SS) *
ViewEnginesSS* 5
)SS5 6
,SS6 7
typeofTT 
(TT 
IViewEngineTT &
)TT& '
.TT' (
FullNameTT( 0
)TT0 1
)TT1 2
;TT2 3
}UU 
varWW 

viewEngineWW 
=WW 
viewEnginesWW (
[WW( )
$numWW) *
]WW* +
;WW+ ,
varYY 
resultYY 
=YY 
awaitYY #
RenderViewToStringAsyncYY 6
(YY6 7
viewNameYY7 ?
,YY? @
displayContextYYA O
.YYO P
ValueYYP U
,YYU V

viewEngineYYW a
)YYa b
;YYb c
return[[ 
new[[ 

HtmlString[[ !
([[! "
result[[" (
)[[( )
;[[) *
}\\ 	
public^^ 
async^^ 
Task^^ 
<^^ 
string^^  
>^^  !#
RenderViewToStringAsync^^" 9
(^^9 :
string^^: @
viewName^^A I
,^^I J
object^^K Q
model^^R W
,^^W X
IViewEngine^^Y d

viewEngine^^e o
)^^o p
{__ 	
var`` 
actionContext`` 
=`` 
await``  %!
GetActionContextAsync``& ;
(``; <
)``< =
;``= >
varaa 
viewaa 
=aa 
FindViewaa 
(aa  
actionContextaa  -
,aa- .
viewNameaa/ 7
,aa7 8

viewEngineaa9 C
)aaC D
;aaD E
usingcc 
(cc 
varcc 
sbcc 
=cc 
StringBuilderPoolcc -
.cc- .
GetInstancecc. 9
(cc9 :
)cc: ;
)cc; <
{dd 
usingee 
(ee 
varee 
outputee !
=ee" #
newee$ '
StringWriteree( 4
(ee4 5
sbee5 7
.ee7 8
Builderee8 ?
)ee? @
)ee@ A
{ff 
vargg 
viewContextgg #
=gg$ %
newgg& )
ViewContextgg* 5
(gg5 6
actionContexthh %
,hh% &
viewii 
,ii 
newjj 
ViewDataDictionaryjj .
(jj. /
metadataProviderkk ,
:kk, -
newkk. 1&
EmptyModelMetadataProviderkk2 L
(kkL M
)kkM N
,kkN O

modelStatell &
:ll& '
newll( + 
ModelStateDictionaryll, @
(ll@ A
)llA B
)llB C
{mm 
Modelnn !
=nn" #
modelnn$ )
}oo 
,oo 
newpp 
TempDataDictionarypp .
(pp. /
actionContextqq )
.qq) *
HttpContextqq* 5
,qq5 6
_tempDataProviderrr -
)rr- .
,rr. /
outputss 
,ss 
newtt 
HtmlHelperOptionstt -
(tt- .
)tt. /
)tt/ 0
;tt0 1
awaitvv 
viewvv 
.vv 
RenderAsyncvv *
(vv* +
viewContextvv+ 6
)vv6 7
;vv7 8
awaitww 
outputww  
.ww  !

FlushAsyncww! +
(ww+ ,
)ww, -
;ww- .
}xx 
returnzz 
sbzz 
.zz 
Builderzz !
.zz! "
ToStringzz" *
(zz* +
)zz+ ,
;zz, -
}{{ 
}|| 	
private~~ 
IView~~ 
FindView~~ 
(~~ 
ActionContext~~ ,
actionContext~~- :
,~~: ;
string~~< B
viewName~~C K
,~~K L
IViewEngine~~M X

viewEngine~~Y c
)~~c d
{ 	
var
ÄÄ 
getViewResult
ÄÄ 
=
ÄÄ 

viewEngine
ÄÄ  *
.
ÄÄ* +
GetView
ÄÄ+ 2
(
ÄÄ2 3
executingFilePath
ÄÄ3 D
:
ÄÄD E
null
ÄÄF J
,
ÄÄJ K
viewPath
ÄÄL T
:
ÄÄT U
viewName
ÄÄV ^
,
ÄÄ^ _

isMainPage
ÄÄ` j
:
ÄÄj k
true
ÄÄl p
)
ÄÄp q
;
ÄÄq r
if
ÅÅ 
(
ÅÅ 
getViewResult
ÅÅ 
.
ÅÅ 
Success
ÅÅ %
)
ÅÅ% &
{
ÇÇ 
return
ÉÉ 
getViewResult
ÉÉ $
.
ÉÉ$ %
View
ÉÉ% )
;
ÉÉ) *
}
ÑÑ 
var
ÜÜ 
findViewResult
ÜÜ 
=
ÜÜ  

viewEngine
ÜÜ! +
.
ÜÜ+ ,
FindView
ÜÜ, 4
(
ÜÜ4 5
actionContext
ÜÜ5 B
,
ÜÜB C
viewName
ÜÜD L
,
ÜÜL M

isMainPage
ÜÜN X
:
ÜÜX Y
true
ÜÜZ ^
)
ÜÜ^ _
;
ÜÜ_ `
if
áá 
(
áá 
findViewResult
áá 
.
áá 
Success
áá &
)
áá& '
{
àà 
return
ââ 
findViewResult
ââ %
.
ââ% &
View
ââ& *
;
ââ* +
}
ää 
var
åå 
searchedLocations
åå !
=
åå" #
getViewResult
åå$ 1
.
åå1 2
SearchedLocations
åå2 C
.
ååC D
Concat
ååD J
(
ååJ K
findViewResult
ååK Y
.
ååY Z
SearchedLocations
ååZ k
)
ååk l
;
åål m
var
çç 
errorMessage
çç 
=
çç 
string
çç %
.
çç% &
Join
çç& *
(
çç* +
System
éé 
.
éé 
Environment
éé "
.
éé" #
NewLine
éé# *
,
éé* +
new
èè 
[
èè 
]
èè 
{
èè 
$"
èè #
Unable to find view '
èè /
{
èè/ 0
viewName
èè0 8
}
èè8 97
)'. The following locations were searched:
èè9 b
"
èèb c
}
èèd e
.
èèe f
Concat
èèf l
(
èèl m
searchedLocations
èèm ~
)
èè~ 
)èè Ä
;èèÄ Å
;èèÇ É
throw
ëë 
new
ëë '
InvalidOperationException
ëë /
(
ëë/ 0
errorMessage
ëë0 <
)
ëë< =
;
ëë= >
}
íí 	
private
îî 
async
îî 
Task
îî 
<
îî 
ActionContext
îî (
>
îî( )#
GetActionContextAsync
îî* ?
(
îî? @
)
îî@ A
{
ïï 	
var
ññ 
httpContext
ññ 
=
ññ "
_httpContextAccessor
ññ 2
.
ññ2 3
HttpContext
ññ3 >
;
ññ> ?
var
óó 
actionContext
óó 
=
óó 
httpContext
óó  +
.
óó+ ,
RequestServices
óó, ;
.
óó; <

GetService
óó< F
<
óóF G$
IActionContextAccessor
óóG ]
>
óó] ^
(
óó^ _
)
óó_ `
?
óó` a
.
óóa b
ActionContext
óób o
;
óóo p
if
ôô 
(
ôô 
actionContext
ôô 
!=
ôô  
null
ôô! %
)
ôô% &
{
öö 
return
õõ 
actionContext
õõ $
;
õõ$ %
}
úú 
var
ûû 
	routeData
ûû 
=
ûû 
new
ûû 
	RouteData
ûû  )
(
ûû) *
)
ûû* +
;
ûû+ ,
	routeData
üü 
.
üü 
Routers
üü 
.
üü 
Add
üü !
(
üü! "
new
üü" %
RouteCollection
üü& 5
(
üü5 6
)
üü6 7
)
üü7 8
;
üü8 9
actionContext
°° 
=
°° 
new
°° 
ActionContext
°°  -
(
°°- .
httpContext
°°. 9
,
°°9 :
	routeData
°°; D
,
°°D E
new
°°F I
ActionDescriptor
°°J Z
(
°°Z [
)
°°[ \
)
°°\ ]
;
°°] ^
var
¢¢ 
filters
¢¢ 
=
¢¢ 
httpContext
¢¢ %
.
¢¢% &
RequestServices
¢¢& 5
.
¢¢5 6
GetServices
¢¢6 A
<
¢¢A B$
IAsyncViewActionFilter
¢¢B X
>
¢¢X Y
(
¢¢Y Z
)
¢¢Z [
;
¢¢[ \
foreach
§§ 
(
§§ 
var
§§ 
filter
§§ 
in
§§  "
filters
§§# *
)
§§* +
{
•• 
await
¶¶ 
filter
¶¶ 
.
¶¶ $
OnActionExecutionAsync
¶¶ 3
(
¶¶3 4
actionContext
¶¶4 A
)
¶¶A B
;
¶¶B C
}
ßß 
return
©© 
actionContext
©©  
;
©©  !
}
™™ 	
private
¨¨ 
static
¨¨ 
IHtmlHelper
¨¨ "
MakeHtmlHelper
¨¨# 1
(
¨¨1 2
ViewContext
¨¨2 =
viewContext
¨¨> I
,
¨¨I J 
ViewDataDictionary
¨¨K ]
viewData
¨¨^ f
)
¨¨f g
{
≠≠ 	
var
ÆÆ 
	newHelper
ÆÆ 
=
ÆÆ 
viewContext
ÆÆ '
.
ÆÆ' (
HttpContext
ÆÆ( 3
.
ÆÆ3 4
RequestServices
ÆÆ4 C
.
ÆÆC D 
GetRequiredService
ÆÆD V
<
ÆÆV W
IHtmlHelper
ÆÆW b
>
ÆÆb c
(
ÆÆc d
)
ÆÆd e
;
ÆÆe f
var
∞∞ 
contextable
∞∞ 
=
∞∞ 
	newHelper
∞∞ '
as
∞∞( *
IViewContextAware
∞∞+ <
;
∞∞< =
if
±± 
(
±± 
contextable
±± 
!=
±± 
null
±± #
)
±±# $
{
≤≤ 
var
≥≥ 
newViewContext
≥≥ "
=
≥≥# $
new
≥≥% (
ViewContext
≥≥) 4
(
≥≥4 5
viewContext
≥≥5 @
,
≥≥@ A
viewContext
≥≥B M
.
≥≥M N
View
≥≥N R
,
≥≥R S
viewData
≥≥T \
,
≥≥\ ]
viewContext
≥≥^ i
.
≥≥i j
Writer
≥≥j p
)
≥≥p q
;
≥≥q r
contextable
¥¥ 
.
¥¥ 
Contextualize
¥¥ )
(
¥¥) *
newViewContext
¥¥* 8
)
¥¥8 9
;
¥¥9 :
}
µµ 
return
∑∑ 
	newHelper
∑∑ 
;
∑∑ 
}
∏∏ 	
}
ππ 
}∫∫ €(
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Razor\RazorViewActionFilter.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Razor		( -
{

 
public 

class !
RazorViewActionFilter &
:' ("
IAsyncViewActionFilter) ?
{ 
public 
async 
Task "
OnActionExecutionAsync 0
(0 1"
ActionExecutingContext1 G
contextH O
,O P#
ActionExecutionDelegateQ h
nexti m
)m n
{ 	
await "
OnActionExecutionAsync (
(( )
context) 0
)0 1
;1 2
await 
next 
( 
) 
; 
} 	
public 
async 
Task '
OnPageHandlerExecutionAsync 5
(5 6'
PageHandlerExecutingContext6 Q
contextR Y
,Y Z(
PageHandlerExecutionDelegate[ w
nextx |
)| }
{ 	
await "
OnActionExecutionAsync (
(( )
context) 0
)0 1
;1 2
await 
next 
( 
) 
; 
} 	
public 
Task '
OnPageHandlerSelectionAsync /
(/ 0&
PageHandlerSelectedContext0 J
contextK R
)R S
{ 	
return 
Task 
. 
CompletedTask %
;% &
}   	
public## 
async## 
Task## "
OnActionExecutionAsync## 0
(##0 1
ActionContext##1 >
context##? F
)##F G
{$$ 	
var%% 
razorViewFeature%%  
=%%! "
context%%# *
.%%* +
HttpContext%%+ 6
.%%6 7
Features%%7 ?
.%%? @
Get%%@ C
<%%C D
RazorViewFeature%%D T
>%%T U
(%%U V
)%%V W
;%%W X
if'' 
('' 
razorViewFeature''  
==''! #
null''$ (
)''( )
{(( 
razorViewFeature))  
=))! "
new))# &
RazorViewFeature))' 7
())7 8
)))8 9
;))9 :
context** 
.** 
HttpContext** #
.**# $
Features**$ ,
.**, -
Set**- 0
(**0 1
razorViewFeature**1 A
)**A B
;**B C
}++ 
if-- 
(-- 
razorViewFeature--  
.--  !
Site--! %
==--& (
null--) -
)--- .
{.. 
var// 
siteService// 
=//  !
context//" )
.//) *
HttpContext//* 5
.//5 6
RequestServices//6 E
.//E F

GetService//F P
<//P Q
ISiteService//Q ]
>//] ^
(//^ _
)//_ `
;//` a
if22 
(22 
siteService22 
!=22  "
null22# '
)22' (
{33 
razorViewFeature44 $
.44$ %
Site44% )
=44* +
await44, 1
siteService442 =
.44= > 
GetSiteSettingsAsync44> R
(44R S
)44S T
;44T U
}55 
}66 
if88 
(88 
razorViewFeature88  
.88  !
ThemeLayout88! ,
==88- /
null880 4
)884 5
{99 
var:: 
layoutAccessor:: "
=::# $
context::% ,
.::, -
HttpContext::- 8
.::8 9
RequestServices::9 H
.::H I

GetService::I S
<::S T
ILayoutAccessor::T c
>::c d
(::d e
)::e f
;::f g
if<< 
(<< 
layoutAccessor<< "
!=<<# %
null<<& *
)<<* +
{== 
razorViewFeature>> $
.>>$ %
ThemeLayout>>% 0
=>>1 2
await>>3 8
layoutAccessor>>9 G
.>>G H
GetLayoutAsync>>H V
(>>V W
)>>W X
;>>X Y
}?? 
}@@ 
ifBB 
(BB 
razorViewFeatureBB  
.BB  !
ThemeBB! &
==BB' )
nullBB* .
)BB. /
{CC 
varDD 
themeManagerDD  
=DD! "
contextDD# *
.DD* +
HttpContextDD+ 6
.DD6 7
RequestServicesDD7 F
.DDF G

GetServiceDDG Q
<DDQ R
IThemeManagerDDR _
>DD_ `
(DD` a
)DDa b
;DDb c
ifFF 
(FF 
themeManagerFF  
!=FF! #
nullFF$ (
)FF( )
{GG 
razorViewFeatureHH $
.HH$ %
ThemeHH% *
=HH+ ,
awaitHH- 2
themeManagerHH3 ?
.HH? @
GetThemeAsyncHH@ M
(HHM N
)HHN O
;HHO P
}II 
}JJ 
}KK 	
}LL 
}MM Ó
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Razor\RazorViewCompiledItem.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Razor( -
{ 
public 

class !
RazorViewCompiledItem &
:' (
RazorCompiledItem) :
{ 
public		 !
RazorViewCompiledItem		 $
(		$ %
Type		% )
type		* .
,		. /
string		0 6
kind		7 ;
,		; <
string		= C

identifier		D N
,		N O
object		P V
[		V W
]		W X
metadata		Y a
=		b c
null		d h
)		h i
{

 	
Type 
= 
type 
; 
Kind 
= 
kind 
; 

Identifier 
= 

identifier #
;# $
Metadata 
= 
metadata 
??  "
Array# (
.( )
Empty) .
<. /
object/ 5
>5 6
(6 7
)7 8
;8 9
} 	
public 
override 
string 

Identifier )
{* +
get, /
;/ 0
}1 2
public 
override 
string 
Kind #
{$ %
get& )
;) *
}+ ,
public 
override 
IReadOnlyList %
<% &
object& ,
>, -
Metadata. 6
{7 8
get9 <
;< =
}> ?
public 
override 
Type 
Type !
{" #
get$ '
;' (
}) *
} 
} ‰
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Razor\RazorViewFeature.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Razor( -
{ 
public		 

class		 
RazorViewFeature		 !
{

 
public 
ISite 
Site 
{ 
get 
;  
set! $
;$ %
}& '
public 
IShape 
ThemeLayout !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
IExtensionInfo 
Theme #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} à
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ShapeAttribute.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

class 
ShapeAttribute 
:  !
	Attribute" +
{ 
public 
ShapeAttribute 
( 
) 
{ 	
}		 	
public 
ShapeAttribute 
( 
string $
	shapeType% .
). /
{ 	
	ShapeType 
= 
	shapeType !
;! "
} 	
public 
string 
	ShapeType 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
} 
} ⁄@
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\AlternatesCollection.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
public 

class  
AlternatesCollection %
:& '
IEnumerable( 3
<3 4
string4 :
>: ;
{ 
public 
static  
AlternatesCollection *
Empty+ 0
=1 2
new3 6 
AlternatesCollection7 K
(K L
)L M
;M N
private $
KeyedAlternateCollection (
_collection) 4
;4 5
public  
AlternatesCollection #
(# $
params$ *
string+ 1
[1 2
]2 3

alternates4 >
)> ?
{ 	
EnsureCollection 
( 
) 
; 
foreach 
( 
var 
	alternate "
in# %

alternates& 0
)0 1
{ 
Add 
( 
	alternate 
) 
; 
} 
} 	
public 
string 
this 
[ 
int 
index $
]$ %
=>& (
_collection) 4
[4 5
index5 :
]: ;
;; <
public 
string 
Last 
=> 
_collection )
.) *
LastOrDefault* 7
(7 8
)8 9
??: <
$str= ?
;? @
public   
void   
Add   
(   
string   
	alternate   (
)  ( )
{!! 	
if"" 
("" 
	alternate"" 
=="" 
null"" !
)""! "
{## 
throw$$ 
new$$ !
ArgumentNullException$$ /
($$/ 0
nameof$$0 6
($$6 7
	alternate$$7 @
)$$@ A
)$$A B
;$$B C
}%% 
EnsureCollection'' 
('' 
)'' 
;'' 
if)) 
()) 
!)) 
_collection)) 
.)) 
Contains)) %
())% &
	alternate))& /
)))/ 0
)))0 1
{** 
_collection++ 
.++ 
Add++ 
(++  
	alternate++  )
)++) *
;++* +
},, 
}-- 	
public// 
void// 
Remove// 
(// 
string// !
	alternate//" +
)//+ ,
{00 	
if11 
(11 
	alternate11 
==11 
null11 !
)11! "
{22 
throw33 
new33 !
ArgumentNullException33 /
(33/ 0
nameof330 6
(336 7
	alternate337 @
)33@ A
)33A B
;33B C
}44 
if66 
(66 
_collection66 
==66 
null66 #
)66# $
{77 
return88 
;88 
}99 
_collection;; 
.;; 
Remove;; 
(;; 
	alternate;; (
);;( )
;;;) *
}<< 	
public>> 
void>> 
Clear>> 
(>> 
)>> 
{?? 	
if@@ 
(@@ 
_collection@@ 
==@@ 
null@@ #
)@@# $
{AA 
returnBB 
;BB 
}CC 
_collectionEE 
.EE 
ClearEE 
(EE 
)EE 
;EE  
}FF 	
publicHH 
boolHH 
ContainsHH 
(HH 
stringHH #
	alternateHH$ -
)HH- .
{II 	
ifJJ 
(JJ 
	alternateJJ 
==JJ 
nullJJ !
)JJ! "
{KK 
throwLL 
newLL !
ArgumentNullExceptionLL /
(LL/ 0
nameofLL0 6
(LL6 7
	alternateLL7 @
)LL@ A
)LLA B
;LLB C
}MM 
ifOO 
(OO 
_collectionOO 
==OO 
nullOO #
)OO# $
{PP 
returnQQ 
falseQQ 
;QQ 
}RR 
returnTT 
_collectionTT 
.TT 
ContainsTT '
(TT' (
	alternateTT( 1
)TT1 2
;TT2 3
}UU 	
publicWW 
intWW 
CountWW 
=>WW 
_collectionWW '
==WW( *
nullWW+ /
?WW0 1
$numWW2 3
:WW4 5
_collectionWW6 A
.WWA B
CountWWB G
;WWG H
publicYY 
voidYY 
AddRangeYY 
(YY  
AlternatesCollectionYY 1

alternatesYY2 <
)YY< =
{ZZ 	
AddRange[[ 
([[ 

alternates[[ 
.[[  
_collection[[  +
)[[+ ,
;[[, -
}\\ 	
public^^ 
void^^ 
AddRange^^ 
(^^ 
IEnumerable^^ (
<^^( )
string^^) /
>^^/ 0

alternates^^1 ;
)^^; <
{__ 	
if`` 
(`` 

alternates`` 
==`` 
null`` "
)``" #
{aa 
throwbb 
newbb !
ArgumentNullExceptionbb /
(bb/ 0
nameofbb0 6
(bb6 7

alternatesbb7 A
)bbA B
)bbB C
;bbC D
}cc 
ifee 
(ee 

alternatesee 
.ee 
Anyee 
(ee 
)ee  
)ee  !
{ff 
EnsureCollectiongg  
(gg  !
)gg! "
;gg" #
foreachii 
(ii 
varii 
	alternateii &
inii' )

alternatesii* 4
)ii4 5
{jj 
Addkk 
(kk 
	alternatekk !
)kk! "
;kk" #
}ll 
}mm 
}nn 	
privatepp 
voidpp 
EnsureCollectionpp %
(pp% &
)pp& '
{qq 	
ifrr 
(rr 
_collectionrr 
==rr 
nullrr #
)rr# $
{ss 
_collectiontt 
=tt 
newtt !$
KeyedAlternateCollectiontt" :
(tt: ;
)tt; <
;tt< =
}uu 
}vv 	
publicxx 
IEnumeratorxx 
<xx 
stringxx !
>xx! "
GetEnumeratorxx# 0
(xx0 1
)xx1 2
{yy 	
ifzz 
(zz 
_collectionzz 
==zz 
nullzz #
)zz# $
{{{ 
return|| 
(|| 
(|| 
IEnumerable|| $
<||$ %
string||% +
>||+ ,
)||, -
Array||- 2
.||2 3
Empty||3 8
<||8 9
string||9 ?
>||? @
(||@ A
)||A B
)||B C
.||C D
GetEnumerator||D Q
(||Q R
)||R S
;||S T
}}} 
return 
_collection 
. 
GetEnumerator ,
(, -
)- .
;. /
}
ÄÄ 	
IEnumerator
ÇÇ 
IEnumerable
ÇÇ 
.
ÇÇ  
GetEnumerator
ÇÇ  -
(
ÇÇ- .
)
ÇÇ. /
{
ÉÉ 	
return
ÑÑ 
GetEnumerator
ÑÑ  
(
ÑÑ  !
)
ÑÑ! "
;
ÑÑ" #
}
ÖÖ 	
private
áá 
class
áá &
KeyedAlternateCollection
áá .
:
áá/ 0
KeyedCollection
áá1 @
<
áá@ A
string
ááA G
,
ááG H
string
ááI O
>
ááO P
{
àà 	
	protected
ââ 
override
ââ 
string
ââ %
GetKeyForItem
ââ& 3
(
ââ3 4
string
ââ4 :
item
ââ; ?
)
ââ? @
{
ää 
return
ãã 
item
ãã 
;
ãã 
}
åå 
}
çç 	
}
éé 
}èè Úá
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\Composite.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
public 

class 
	Composite 
: 
DynamicObject *
{		 
	protected

 
readonly

 

Dictionary

 %
<

% &
string

& ,
,

, -
object

. 4
>

4 5
_properties

6 A
=

B C
new

D G

Dictionary

H R
<

R S
string

S Y
,

Y Z
object

[ a
>

a b
(

b c
)

c d
;

d e
public 
override 
bool 
TryGetMember )
() *
GetMemberBinder* 9
binder: @
,@ A
outB E
objectF L
resultM S
)S T
{ 	
return 
TryGetMemberImpl #
(# $
binder$ *
.* +
Name+ /
,/ 0
out1 4
result5 ;
); <
;< =
} 	
	protected 
virtual 
bool 
TryGetMemberImpl /
(/ 0
string0 6
name7 ;
,; <
out= @
objectA G
resultH N
)N O
{ 	
if 
( 
_properties 
. 
TryGetValue '
(' (
name( ,
,, -
out. 1
result2 8
)8 9
)9 :
{ 
return 
true 
; 
} 
result 
= 
null 
; 
return 
true 
; 
} 	
public 
override 
bool 
TrySetMember )
() *
SetMemberBinder* 9
binder: @
,@ A
objectB H
valueI N
)N O
{ 	
return 
TrySetMemberImpl #
(# $
binder$ *
.* +
Name+ /
,/ 0
value1 6
)6 7
;7 8
} 	
	protected!! 
virtual!! 
bool!! 
TrySetMemberImpl!! /
(!!/ 0
string!!0 6
name!!7 ;
,!!; <
object!!= C
value!!D I
)!!I J
{"" 	
_properties## 
[## 
name## 
]## 
=## 
value##  %
;##% &
return$$ 
true$$ 
;$$ 
}%% 	
public'' 
override'' 
bool'' 
TryInvokeMember'' ,
('', -
InvokeMemberBinder''- ?
binder''@ F
,''F G
object''H N
[''N O
]''O P
args''Q U
,''U V
out''W Z
object''[ a
result''b h
)''h i
{(( 	
if)) 
()) 
args)) 
.)) 
Length)) 
==)) 
$num))  
)))  !
{** 
return++ 
TryGetMemberImpl++ '
(++' (
binder++( .
.++. /
Name++/ 3
,++3 4
out++5 8
result++9 ?
)++? @
;++@ A
},, 
if// 
(// 
args// 
.// 
Length// 
==// 
$num//  
)//  !
{00 
result11 
=11 
this11 
;11 
return22 
TrySetMemberImpl22 '
(22' (
binder22( .
.22. /
Name22/ 3
,223 4
args225 9
.229 :
First22: ?
(22? @
)22@ A
)22A B
;22B C
}33 
if55 
(55 
!55 
base55 
.55 
TryInvokeMember55 %
(55% &
binder55& ,
,55, -
args55. 2
,552 3
out554 7
result558 >
)55> ?
)55? @
{66 
if77 
(77 
binder77 
.77 
Name77 
==77  "
$str77# -
)77- .
{88 
result99 
=99 
string99 #
.99# $
Empty99$ )
;99) *
return:: 
true:: 
;::  
};; 
return== 
false== 
;== 
}>> 
return@@ 
true@@ 
;@@ 
}AA 	
publicCC 
overrideCC 
boolCC 
TryGetIndexCC (
(CC( )
GetIndexBinderCC) 7
binderCC8 >
,CC> ?
objectCC@ F
[CCF G
]CCG H
indexesCCI P
,CCP Q
outCCR U
objectCCV \
resultCC] c
)CCc d
{DD 	
ifEE 
(EE 
indexesEE 
.EE 
LengthEE 
==EE !
$numEE" #
)EE# $
{FF 
varGG 
stringIndexGG 
=GG  !
indexesGG" )
[GG) *
$numGG* +
]GG+ ,
asGG- /
stringGG0 6
;GG6 7
ifII 
(II 
stringIndexII 
!=II  "
nullII# '
&&II( *
TryGetMemberImplII+ ;
(II; <
stringIndexII< G
,IIG H
outIII L
resultIIM S
)IIS T
)IIT U
{JJ 
returnKK 
trueKK 
;KK  
}LL 
elseMM 
{NN 
resultPP 
=PP 
nullPP !
;PP! "
returnQQ 
falseQQ  
;QQ  !
}RR 
}SS 
resultUU 
=UU 
nullUU 
;UU 
returnVV 
falseVV 
;VV 
}WW 	
publicYY 
overrideYY 
boolYY 
TrySetIndexYY (
(YY( )
SetIndexBinderYY) 7
binderYY8 >
,YY> ?
objectYY@ F
[YYF G
]YYG H
indexesYYI P
,YYP Q
objectYYR X
valueYYY ^
)YY^ _
{ZZ 	
if[[ 
([[ 
indexes[[ 
.[[ 
Length[[ 
==[[ !
$num[[" #
)[[# $
{\\ 
var^^ 
stringIndex^^ 
=^^  !
indexes^^" )
[^^) *
$num^^* +
]^^+ ,
as^^- /
string^^0 6
;^^6 7
if`` 
(`` 
stringIndex`` 
!=``  "
null``# '
&&``( *
TrySetMemberImpl``+ ;
(``; <
stringIndex``< G
,``G H
value``I N
)``N O
)``O P
{aa 
returnbb 
truebb 
;bb  
}cc 
elsedd 
{ee 
returngg 
falsegg  
;gg  !
}hh 
}ii 
returnkk 
falsekk 
;kk 
}ll 	
publicnn 
IDictionarynn 
<nn 
stringnn !
,nn! "
objectnn# )
>nn) *

Propertiesnn+ 5
{oo 	
getpp 
{pp 
returnpp 
_propertiespp $
;pp$ %
}pp& '
}qq 	
publicss 
staticss 
boolss 
operatorss #
==ss$ &
(ss& '
	Compositess' 0
ass1 2
,ss2 3
Nilss4 7
bss8 9
)ss9 :
{tt 	
returnuu 
nulluu 
==uu 
auu 
;uu 
}vv 	
publicxx 
staticxx 
boolxx 
operatorxx #
!=xx$ &
(xx& '
	Compositexx' 0
axx1 2
,xx2 3
Nilxx4 7
bxx8 9
)xx9 :
{yy 	
returnzz 
!zz 
(zz 
azz 
==zz 
bzz 
)zz 
;zz 
}{{ 	
	protected}} 
bool}} 
Equals}} 
(}} 
	Composite}} '
other}}( -
)}}- .
{~~ 	
return 
Equals 
( 
_properties %
,% &
other' ,
., -
_properties- 8
)8 9
;9 :
}
ÄÄ 	
public
ÇÇ 
override
ÇÇ 
bool
ÇÇ 
Equals
ÇÇ #
(
ÇÇ# $
object
ÇÇ$ *
obj
ÇÇ+ .
)
ÇÇ. /
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
ReferenceEquals
ÑÑ 
(
ÑÑ  
null
ÑÑ  $
,
ÑÑ$ %
obj
ÑÑ& )
)
ÑÑ) *
)
ÑÑ* +
{
ÖÖ 
return
ÜÜ 
false
ÜÜ 
;
ÜÜ 
}
áá 
if
àà 
(
àà 
ReferenceEquals
àà 
(
àà  
this
àà  $
,
àà$ %
obj
àà& )
)
àà) *
)
àà* +
{
ââ 
return
ää 
true
ää 
;
ää 
}
ãã 
if
åå 
(
åå 
obj
åå 
.
åå 
GetType
åå 
(
åå 
)
åå 
!=
åå  
this
åå! %
.
åå% &
GetType
åå& -
(
åå- .
)
åå. /
)
åå/ 0
{
çç 
return
éé 
false
éé 
;
éé 
}
èè 
return
êê 
Equals
êê 
(
êê 
(
êê 
	Composite
êê $
)
êê$ %
obj
êê% (
)
êê( )
;
êê) *
}
ëë 	
public
ìì 
override
ìì 
int
ìì 
GetHashCode
ìì '
(
ìì' (
)
ìì( )
{
îî 	
return
ïï 
(
ïï 
_properties
ïï 
!=
ïï  "
null
ïï# '
?
ïï( )
_properties
ïï* 5
.
ïï5 6
GetHashCode
ïï6 A
(
ïïA B
)
ïïB C
:
ïïD E
$num
ïïF G
)
ïïG H
;
ïïH I
}
ññ 	
}
óó 
public
ôô 

class
ôô 
Nil
ôô 
:
ôô 
DynamicObject
ôô $
{
öö 
private
õõ 
static
õõ 
readonly
õõ 
Nil
õõ  #
	Singleton
õõ$ -
=
õõ. /
new
õõ0 3
Nil
õõ4 7
(
õõ7 8
)
õõ8 9
;
õõ9 :
public
úú 
static
úú 
Nil
úú 
Instance
úú "
{
úú# $
get
úú% (
{
úú) *
return
úú+ 1
	Singleton
úú2 ;
;
úú; <
}
úú= >
}
úú? @
private
ûû 
Nil
ûû 
(
ûû 
)
ûû 
{
üü 	
}
†† 	
public
¢¢ 
override
¢¢ 
bool
¢¢ 
TryGetMember
¢¢ )
(
¢¢) *
GetMemberBinder
¢¢* 9
binder
¢¢: @
,
¢¢@ A
out
¢¢B E
object
¢¢F L
result
¢¢M S
)
¢¢S T
{
££ 	
result
§§ 
=
§§ 
Instance
§§ 
;
§§ 
return
•• 
true
•• 
;
•• 
}
¶¶ 	
public
®® 
override
®® 
bool
®® 
TryGetIndex
®® (
(
®®( )
GetIndexBinder
®®) 7
binder
®®8 >
,
®®> ?
object
®®@ F
[
®®F G
]
®®G H
indexes
®®I P
,
®®P Q
out
®®R U
object
®®V \
result
®®] c
)
®®c d
{
©© 	
result
™™ 
=
™™ 
Instance
™™ 
;
™™ 
return
´´ 
true
´´ 
;
´´ 
}
¨¨ 	
public
ÆÆ 
override
ÆÆ 
bool
ÆÆ 
TryInvokeMember
ÆÆ ,
(
ÆÆ, - 
InvokeMemberBinder
ÆÆ- ?
binder
ÆÆ@ F
,
ÆÆF G
object
ÆÆH N
[
ÆÆN O
]
ÆÆO P
args
ÆÆQ U
,
ÆÆU V
out
ÆÆW Z
object
ÆÆ[ a
result
ÆÆb h
)
ÆÆh i
{
ØØ 	
result
∞∞ 
=
∞∞ 
Nil
∞∞ 
.
∞∞ 
Instance
∞∞ !
;
∞∞! "
return
±± 
true
±± 
;
±± 
}
≤≤ 	
public
¥¥ 
override
¥¥ 
bool
¥¥  
TryBinaryOperation
¥¥ /
(
¥¥/ 0#
BinaryOperationBinder
¥¥0 E
binder
¥¥F L
,
¥¥L M
object
¥¥N T
arg
¥¥U X
,
¥¥X Y
out
¥¥Z ]
object
¥¥^ d
result
¥¥e k
)
¥¥k l
{
µµ 	
switch
∂∂ 
(
∂∂ 
binder
∂∂ 
.
∂∂ 
	Operation
∂∂ $
)
∂∂$ %
{
∑∑ 
case
∏∏ 
ExpressionType
∏∏ #
.
∏∏# $
Equal
∏∏$ )
:
∏∏) *
result
ππ 
=
ππ 
ReferenceEquals
ππ ,
(
ππ, -
arg
ππ- 0
,
ππ0 1
Nil
ππ2 5
.
ππ5 6
Instance
ππ6 >
)
ππ> ?
||
ππ@ B
(
ππC D
object
ππD J
)
ππJ K
arg
ππK N
==
ππO Q
null
ππR V
;
ππV W
return
∫∫ 
true
∫∫ 
;
∫∫  
case
ªª 
ExpressionType
ªª #
.
ªª# $
NotEqual
ªª$ ,
:
ªª, -
result
ºº 
=
ºº 
!
ºº 
ReferenceEquals
ºº -
(
ºº- .
arg
ºº. 1
,
ºº1 2
Nil
ºº3 6
.
ºº6 7
Instance
ºº7 ?
)
ºº? @
&&
ººA C
(
ººD E
object
ººE K
)
ººK L
arg
ººL O
!=
ººP R
null
ººS W
;
ººW X
return
ΩΩ 
true
ΩΩ 
;
ΩΩ  
}
ææ 
return
¿¿ 
base
¿¿ 
.
¿¿  
TryBinaryOperation
¿¿ *
(
¿¿* +
binder
¿¿+ 1
,
¿¿1 2
arg
¿¿3 6
,
¿¿6 7
out
¿¿8 ;
result
¿¿< B
)
¿¿B C
;
¿¿C D
}
¡¡ 	
public
√√ 
static
√√ 
bool
√√ 
operator
√√ #
==
√√$ &
(
√√& '
Nil
√√' *
a
√√+ ,
,
√√, -
Nil
√√. 1
b
√√2 3
)
√√3 4
{
ƒƒ 	
return
≈≈ 
true
≈≈ 
;
≈≈ 
}
∆∆ 	
public
»» 
static
»» 
bool
»» 
operator
»» #
!=
»»$ &
(
»»& '
Nil
»»' *
a
»»+ ,
,
»», -
Nil
»». 1
b
»»2 3
)
»»3 4
{
…… 	
return
   
false
   
;
   
}
ÀÀ 	
public
ÕÕ 
static
ÕÕ 
bool
ÕÕ 
operator
ÕÕ #
==
ÕÕ$ &
(
ÕÕ& '
Nil
ÕÕ' *
a
ÕÕ+ ,
,
ÕÕ, -
object
ÕÕ. 4
b
ÕÕ5 6
)
ÕÕ6 7
{
ŒŒ 	
return
œœ 
ReferenceEquals
œœ "
(
œœ" #
a
œœ# $
,
œœ$ %
b
œœ& '
)
œœ' (
||
œœ) +
(
œœ, -
object
œœ- 3
)
œœ3 4
b
œœ4 5
==
œœ6 8
null
œœ9 =
;
œœ= >
}
–– 	
public
““ 
static
““ 
bool
““ 
operator
““ #
!=
““$ &
(
““& '
Nil
““' *
a
““+ ,
,
““, -
object
““. 4
b
““5 6
)
““6 7
{
”” 	
return
‘‘ 
!
‘‘ 
(
‘‘ 
a
‘‘ 
==
‘‘ 
b
‘‘ 
)
‘‘ 
;
‘‘ 
}
’’ 	
public
◊◊ 
override
◊◊ 
bool
◊◊ 
Equals
◊◊ #
(
◊◊# $
object
◊◊$ *
obj
◊◊+ .
)
◊◊. /
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
obj
ŸŸ 
==
ŸŸ 
null
ŸŸ 
)
ŸŸ 
{
⁄⁄ 
return
€€ 
true
€€ 
;
€€ 
}
‹‹ 
return
ﬁﬁ 
ReferenceEquals
ﬁﬁ "
(
ﬁﬁ" #
obj
ﬁﬁ# &
,
ﬁﬁ& '
Nil
ﬁﬁ( +
.
ﬁﬁ+ ,
Instance
ﬁﬁ, 4
)
ﬁﬁ4 5
;
ﬁﬁ5 6
}
ﬂﬂ 	
public
·· 
override
·· 
int
·· 
GetHashCode
·· '
(
··' (
)
··( )
{
‚‚ 	
return
„„ 
$num
„„ 
;
„„ 
}
‰‰ 	
public
ÊÊ 
override
ÊÊ 
bool
ÊÊ 

TryConvert
ÊÊ '
(
ÊÊ' (
ConvertBinder
ÊÊ( 5
binder
ÊÊ6 <
,
ÊÊ< =
out
ÊÊ> A
object
ÊÊB H
result
ÊÊI O
)
ÊÊO P
{
ÁÁ 	
result
ËË 
=
ËË 
null
ËË 
;
ËË 
return
ÈÈ 
true
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
public
ÏÏ 
override
ÏÏ 
string
ÏÏ 
ToString
ÏÏ '
(
ÏÏ' (
)
ÏÏ( )
{
ÌÌ 	
return
ÓÓ 
string
ÓÓ 
.
ÓÓ 
Empty
ÓÓ 
;
ÓÓ  
}
ÔÔ 	
}
 
}ÒÒ ˆH
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\CoreShapes.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
[ 
Feature 
( 
Application 
. 
DefaultFeatureId )
)) *
]* +
public 

class 

CoreShapes 
: #
IShapeAttributeProvider 5
{ 
[ 	
Shape	 
] 
public 
void 
PlaceChildContent %
(% &
dynamic& -
Source. 4
,4 5

TextWriter6 @
OutputA G
)G H
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
[ 	
Shape	 
] 
public 
async 
Task 
< 
IHtmlContent &
>& '
List( ,
(, -
Shape- 2
shape3 8
,8 9
dynamic: A
DisplayAsyncB N
,N O
IEnumerableP [
<[ \
dynamic\ c
>c d
Itemse j
,j k
string 
ItemTagName 
, 
IEnumerable 
< 
string 
> 
ItemClasses  +
,+ ,
IDictionary 
< 
string 
, 
string  &
>& '
ItemAttributes( 6
,6 7
string 

FirstClass 
, 
string 
	LastClass 
) 
{ 	
if 
( 
Items 
== 
null 
) 
{ 
return   

HtmlString   !
.  ! "
Empty  " '
;  ' (
}!! 
var$$ 
items$$ 
=$$ 
Items$$ 
.$$ 
ToList$$ $
($$$ %
)$$% &
;$$& '
var'' 
count'' 
='' 
items'' 
.'' 
Count'' #
(''# $
)''$ %
;''% &
if(( 
((( 
count(( 
<(( 
$num(( 
)(( 
{)) 
return** 

HtmlString** !
.**! "
Empty**" '
;**' (
}++ 
string-- 
listTagName-- 
=--  
null--! %
;--% &
if// 
(// 
shape// 
.// 
TagName// 
!=//  
$str//! $
)//$ %
{00 
listTagName11 
=11 
String11 $
.11$ %
IsNullOrEmpty11% 2
(112 3
shape113 8
.118 9
TagName119 @
)11@ A
?11B C
$str11D H
:11I J
shape11K P
.11P Q
TagName11Q X
;11X Y
}22 
var44 
id44 
=44 
shape44 
.44 
Id44 
??44  
String44! '
.44' (
Empty44( -
;44- .
var66 
listTagBuilder66 
=66  
String66! '
.66' (
IsNullOrEmpty66( 5
(665 6
listTagName666 A
)66A B
?66C D
null66E I
:66J K
Shape66L Q
.66Q R
GetTagBuilder66R _
(66_ `
listTagName66` k
,66k l
id66m o
,66o p
shape66q v
.66v w
Classes66w ~
,66~ 
shape
66Ä Ö
.
66Ö Ü

Attributes
66Ü ê
)
66ê ë
;
66ë í
string88 
itemTagName88 
=88  
null88! %
;88% &
if99 
(99 
ItemTagName99 
!=99 
$str99 "
)99" #
{:: 
itemTagName;; 
=;; 
String;; $
.;;$ %
IsNullOrEmpty;;% 2
(;;2 3
ItemTagName;;3 >
);;> ?
?;;@ A
$str;;B F
:;;G H
ItemTagName;;I T
;;;T U
}<< 
var>> 
index>> 
=>> 
$num>> 
;>> 
foreach?? 
(?? 
var?? 
item?? 
in??  
items??! &
)??& '
{@@ 
varAA 
itemTagAA 
=AA 
StringAA $
.AA$ %
IsNullOrEmptyAA% 2
(AA2 3
itemTagNameAA3 >
)AA> ?
?AA@ A
nullAAB F
:AAG H
ShapeAAI N
.AAN O
GetTagBuilderAAO \
(AA\ ]
itemTagNameAA] h
,AAh i
nullAAj n
,AAn o
ItemClassesAAp {
,AA{ |
ItemAttributes	AA} ã
)
AAã å
;
AAå ç
ifCC 
(CC 
indexCC 
==CC 
$numCC 
)CC 
{DD 
itemTagEE 
.EE 
AddCssClassEE '
(EE' (

FirstClassEE( 2
??EE3 5
$strEE6 =
)EE= >
;EE> ?
}FF 
ifHH 
(HH 
indexHH 
==HH 
countHH "
-HH# $
$numHH% &
)HH& '
{II 
itemTagJJ 
.JJ 
AddCssClassJJ '
(JJ' (
	LastClassJJ( 1
??JJ2 4
$strJJ5 ;
)JJ; <
;JJ< =
}KK 
ifMM 
(MM 
itemMM 
isMM 
IShapeMM "
)MM" #
{NN 
itemOO 
.OO 
TagOO 
=OO 
itemTagOO &
;OO& '
}PP 
varTT 
itemContentTT 
=TT  !
awaitTT" '
DisplayAsyncTT( 4
(TT4 5
itemTT5 9
)TT9 :
;TT: ;
itemTagVV 
.VV 
	InnerHtmlVV !
.VV! "

AppendHtmlVV" ,
(VV, -
itemContentVV- 8
)VV8 9
;VV9 :
listTagBuilderWW 
.WW 
	InnerHtmlWW (
.WW( )

AppendHtmlWW) 3
(WW3 4
itemTagWW4 ;
)WW; <
;WW< =
++YY 
indexYY 
;YY 
}ZZ 
return\\ 
listTagBuilder\\ !
;\\! "
}]] 	
[__ 	
Shape__	 
]__ 
public`` 
IHtmlContent`` 
Message`` #
(``# $
dynamic``$ +
Shape``, 1
)``1 2
{aa 	

TagBuilderbb 

tagBuilderbb !
=bb" #
OrchardCorebb$ /
.bb/ 0
DisplayManagementbb0 A
.bbA B
ShapesbbB H
.bbH I
ShapebbI N
.bbN O
GetTagBuilderbbO \
(bb\ ]
Shapebb] b
,bbb c
$strbbd i
)bbi j
;bbj k
stringcc 
typecc 
=cc 
Shapecc 
.cc  
Typecc  $
.cc$ %
ToStringcc% -
(cc- .
)cc. /
.cc/ 0
ToLowerInvariantcc0 @
(cc@ A
)ccA B
;ccB C
IHtmlContentdd 
messagedd  
=dd! "
Shapedd# (
.dd( )
Messagedd) 0
;dd0 1

tagBuilderee 
.ee 
AddCssClassee "
(ee" #
$stree# ,
)ee, -
;ee- .

tagBuilderff 
.ff 
AddCssClassff "
(ff" #
$strff# -
+ff. /
typeff0 4
)ff4 5
;ff5 6

tagBuildergg 
.gg 

Attributesgg !
[gg! "
$strgg" (
]gg( )
=gg* +
$strgg, 3
;gg3 4

tagBuilderhh 
.hh 
	InnerHtmlhh  
.hh  !

AppendHtmlhh! +
(hh+ ,
messagehh, 3
)hh3 4
;hh4 5
returnii 

tagBuilderii 
;ii 
}jj 	
}kk 
publicmm 

classmm #
CoreShapesTableProvidermm (
:mm) *
IShapeTableProvidermm+ >
{nn 
publicoo 
voidoo 
Discoveroo 
(oo 
ShapeTableBuilderoo .
builderoo/ 6
)oo6 7
{pp 	
builderqq 
.qq 
Describeqq 
(qq 
$strqq #
)qq# $
.rr 
	OnCreatedrr 
(rr 
createdrr "
=>rr# %
{ss 
dynamictt 
listtt  
=tt! "
createdtt# *
.tt* +
Shapett+ 0
;tt0 1
listxx 
.xx 
ItemClassesxx $
=xx% &
newxx' *
Listxx+ /
<xx/ 0
stringxx0 6
>xx6 7
(xx7 8
)xx8 9
;xx9 :
listyy 
.yy 
ItemAttributesyy '
=yy( )
newyy* -

Dictionaryyy. 8
<yy8 9
stringyy9 ?
,yy? @
stringyyA G
>yyG H
(yyH I
)yyI J
;yyJ K
}zz 
)zz 
;zz 
}{{ 	
}|| 
}}} ÒY
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\DateTimeShapes.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
[ 
Feature 
( 
Application 
. 
DefaultFeatureId )
)) *
]* +
public 

class 
DateTimeShapes 
:  !#
IShapeAttributeProvider" 9
{ 
private 
const 
string 
LongDateTimeFormat /
=0 1
$str2 Q
;Q R
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly 
ILocalClock $
_localClock% 0
;0 1
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
DateTimeShapes 
( 
IClock 
clock 
, 
IStringLocalizer 
< 
DateTimeShapes +
>+ ,
	localizer- 6
,6 7
IHtmlLocalizer 
< 
DateTimeShapes )
>) *
htmlLocalizer+ 8
,8 9
ILocalClock 

localClock "
) 
{ 	
_localClock 
= 

localClock $
;$ %
_clock 
= 
clock 
; 
S 
= 
	localizer 
; 
H   
=   
htmlLocalizer   
;   
}!! 	
[## 	
Shape##	 
]## 
public$$ 
IHtmlContent$$ 
TimeSpan$$ $
($$$ %
IHtmlHelper$$% 0
Html$$1 5
,$$5 6
DateTime$$7 ?
?$$? @
Utc$$A D
,$$D E
DateTime$$F N
?$$N O
Origin$$P V
)$$V W
{%% 	
Utc&& 
=&& 
Utc&& 
??&& 
_clock&& 
.&&  
UtcNow&&  &
;&&& '
Origin'' 
='' 
Origin'' 
??'' 
_clock'' %
.''% &
UtcNow''& ,
;'', -
var)) 
time)) 
=)) 
_clock)) 
.)) 
UtcNow)) $
-))% &
Utc))' *
.))* +
Value))+ 0
;))0 1
if++ 
(++ 
time++ 
.++ 

TotalYears++ 
(++  
)++  !
>++" #
$num++$ %
)++% &
return,, 
H,, 
.,, 
Plural,, 
(,,  
time,,  $
.,,$ %

TotalYears,,% /
(,,/ 0
),,0 1
,,,1 2
$str,,3 ?
,,,? @
$str,,A P
),,P Q
;,,Q R
if-- 
(-- 
time-- 
.-- 

TotalYears-- 
(--  
)--  !
<--" #
---$ %
$num--% &
)--& '
return.. 
H.. 
... 
Plural.. 
(..  
-..  !
time..! %
...% &

TotalYears..& 0
(..0 1
)..1 2
,..2 3
$str..4 ?
,..? @
$str..A O
)..O P
;..P Q
if00 
(00 
time00 
.00 
TotalMonths00  
(00  !
)00! "
>00# $
$num00% &
)00& '
return11 
H11 
.11 
Plural11 
(11  
time11  $
.11$ %
TotalMonths11% 0
(110 1
)111 2
,112 3
$str114 A
,11A B
$str11C S
)11S T
;11T U
if22 
(22 
time22 
.22 
TotalMonths22  
(22  !
)22! "
<22# $
-22% &
$num22& '
)22' (
return33 
H33 
.33 
Plural33 
(33  
-33  !
time33! %
.33% &
TotalMonths33& 1
(331 2
)332 3
,333 4
$str335 A
,33A B
$str33C R
)33R S
;33S T
if55 
(55 
time55 
.55 

TotalWeeks55 
(55  
)55  !
>55" #
$num55$ %
)55% &
return66 
H66 
.66 
Plural66 
(66  
time66  $
.66$ %

TotalWeeks66% /
(66/ 0
)660 1
,661 2
$str663 ?
,66? @
$str66A P
)66P Q
;66Q R
if77 
(77 
time77 
.77 

TotalWeeks77 
(77  
)77  !
<77" #
-77$ %
$num77% &
)77& '
return88 
H88 
.88 
Plural88 
(88  
-88  !
time88! %
.88% &

TotalWeeks88& 0
(880 1
)881 2
,882 3
$str884 ?
,88? @
$str88A O
)88O P
;88P Q
if:: 
(:: 
time:: 
.:: 

TotalHours:: 
>::  !
$num::" $
)::$ %
return;; 
H;; 
.;; 
Plural;; 
(;;  
time;;  $
.;;$ %
Days;;% )
,;;) *
$str;;+ 6
,;;6 7
$str;;8 F
);;F G
;;;G H
if<< 
(<< 
time<< 
.<< 

TotalHours<< 
<<<  !
-<<" #
$num<<# %
)<<% &
return== 
H== 
.== 
Plural== 
(==  
-==  !
time==! %
.==% &
Days==& *
,==* +
$str==, 6
,==6 7
$str==8 E
)==E F
;==F G
if?? 
(?? 
time?? 
.?? 
TotalMinutes?? !
>??" #
$num??$ &
)??& '
return@@ 
H@@ 
.@@ 
Plural@@ 
(@@  
time@@  $
.@@$ %
Hours@@% *
,@@* +
$str@@, 8
,@@8 9
$str@@: I
)@@I J
;@@J K
ifAA 
(AA 
timeAA 
.AA 
TotalMinutesAA !
<AA" #
-AA$ %
$numAA% '
)AA' (
returnBB 
HBB 
.BB 
PluralBB 
(BB  
-BB  !
timeBB! %
.BB% &
HoursBB& +
,BB+ ,
$strBB- 8
,BB8 9
$strBB: H
)BBH I
;BBI J
ifDD 
(DD 
timeDD 
.DD 
TotalSecondsDD !
>DD" #
$numDD$ &
)DD& '
returnEE 
HEE 
.EE 
PluralEE 
(EE  
timeEE  $
.EE$ %
MinutesEE% ,
,EE, -
$strEE. <
,EE< =
$strEE> O
)EEO P
;EEP Q
ifFF 
(FF 
timeFF 
.FF 
TotalSecondsFF !
<FF" #
-FF$ %
$numFF% '
)FF' (
returnGG 
HGG 
.GG 
PluralGG 
(GG  
-GG  !
timeGG! %
.GG% &
MinutesGG& -
,GG- .
$strGG/ <
,GG< =
$strGG> N
)GGN O
;GGO P
ifII 
(II 
timeII 
.II 
TotalSecondsII !
>II" #
$numII$ &
)II& '
returnJJ 
HJJ 
.JJ 
PluralJJ 
(JJ  
timeJJ  $
.JJ$ %
SecondsJJ% ,
,JJ, -
$strJJ. <
,JJ< =
$strJJ> O
)JJO P
;JJP Q
ifKK 
(KK 
timeKK 
.KK 
TotalSecondsKK !
<KK" #
-KK$ %
$numKK% '
)KK' (
returnLL 
HLL 
.LL 
PluralLL 
(LL  
-LL  !
timeLL! %
.LL% &
SecondsLL& -
,LL- .
$strLL/ <
,LL< =
$strLL> N
)LLN O
;LLO P
returnNN 
timeNN 
.NN 
TotalMillisecondsNN )
>NN* +
$numNN, -
?OO 
HOO 
[OO 
$strOO )
]OO) *
:PP 
HPP 
[PP 
$strPP (
]PP( )
;PP) *
}QQ 	
[SS 	
ShapeSS	 
]SS 
publicTT 
asyncTT 
TaskTT 
<TT 
IHtmlContentTT &
>TT& '
DateTimeTT( 0
(TT0 1
IHtmlHelperTT1 <
HtmlTT= A
,TTA B
DateTimeTTC K
?TTK L
UtcTTM P
,TTP Q
stringTTR X
FormatTTY _
)TT_ `
{UU 	
UtcVV 
=VV 
UtcVV 
??VV 
_clockVV 
.VV  
UtcNowVV  &
;VV& '
varWW 
	zonedTimeWW 
=WW 
awaitWW !
_localClockWW" -
.WW- .
ConvertToLocalAsyncWW. A
(WWA B
UtcWWB E
.WWE F
ValueWWF K
)WWK L
;WWL M
ifYY 
(YY 
FormatYY 
==YY 
nullYY 
)YY 
{ZZ 
Format[[ 
=[[ 
S[[ 
[[[ 
LongDateTimeFormat[[ -
][[- .
.[[. /
Value[[/ 4
;[[4 5
}\\ 
return^^ 
Html^^ 
.^^ 
Raw^^ 
(^^ 
Html^^  
.^^  !
Encode^^! '
(^^' (
	zonedTime^^( 1
.^^1 2
ToString^^2 :
(^^: ;
Format^^; A
,^^A B
CultureInfo^^C N
.^^N O
CurrentUICulture^^O _
)^^_ `
)^^` a
)^^a b
;^^b c
}__ 	
}`` 
publicbb 

staticbb 
classbb 
TimespanExtensionsbb *
{cc 
publicdd 
staticdd 
intdd 

TotalWeeksdd $
(dd$ %
thisdd% )
TimeSpandd* 2
timedd3 7
)dd7 8
{ee 	
returnff 
(ff 
intff 
)ff 
timeff 
.ff 
	TotalDaysff &
/ff' (
$numff) *
;ff* +
}gg 	
publicii 
staticii 
intii 
TotalMonthsii %
(ii% &
thisii& *
TimeSpanii+ 3
timeii4 8
)ii8 9
{jj 	
returnkk 
(kk 
intkk 
)kk 
timekk 
.kk 
	TotalDayskk &
/kk' (
$numkk) +
;kk+ ,
}ll 	
publicnn 
staticnn 
intnn 

TotalYearsnn $
(nn$ %
thisnn% )
TimeSpannn* 2
timenn3 7
)nn7 8
{oo 	
returnpp 
(pp 
intpp 
)pp 
timepp 
.pp 
	TotalDayspp &
/pp' (
$numpp) ,
;pp, -
}qq 	
}rr 
}ss á
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\PageTitleShapes.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
[ 
Feature 
( 
Application 
. 
DefaultFeatureId )
)) *
]* +
public 

class 
PageTitleShapes  
:! "#
IShapeAttributeProvider# :
{ 
private 
IPageTitleBuilder !
_pageTitleBuilder" 3
;3 4
public 
IPageTitleBuilder  
Title! &
{ 	
get 
{ 
if 
( 
_pageTitleBuilder %
==& (
null) -
)- .
{ 
_pageTitleBuilder %
=& '

ShellScope( 2
.2 3
Services3 ;
.; <
GetRequiredService< N
<N O
IPageTitleBuilderO `
>` a
(a b
)b c
;c d
} 
return 
_pageTitleBuilder (
;( )
} 
} 	
[!! 	
Shape!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
IHtmlContent"" &
>""& '
	PageTitle""( 1
(""1 2
)""2 3
{## 	
var$$ 
siteSettings$$ 
=$$ 
await$$ $

ShellScope$$% /
.$$/ 0
Services$$0 8
.$$8 9
GetRequiredService$$9 K
<$$K L
ISiteService$$L X
>$$X Y
($$Y Z
)$$Z [
.$$[ \ 
GetSiteSettingsAsync$$\ p
($$p q
)$$q r
;$$r s
if'' 
('' 
String'' 
.'' 
IsNullOrWhiteSpace'' )
('') *
siteSettings''* 6
.''6 7
PageTitleFormat''7 F
)''F G
)''G H
{(( 
return)) 
Title)) 
.)) 
GenerateTitle)) *
())* +
null))+ /
)))/ 0
;))0 1
}** 
else++ 
{,, 
var-- !
liquidTemplateManager-- )
=--* +

ShellScope--, 6
.--6 7
Services--7 ?
.--? @
GetRequiredService--@ R
<--R S"
ILiquidTemplateManager--S i
>--i j
(--j k
)--k l
;--l m
var.. 
htmlEncoder.. 
=..  !

ShellScope.." ,
..., -
Services..- 5
...5 6
GetRequiredService..6 H
<..H I
HtmlEncoder..I T
>..T U
(..U V
)..V W
;..W X
var00 
result00 
=00 
await00 "!
liquidTemplateManager00# 8
.008 9
RenderAsync009 D
(00D E
siteSettings00E Q
.00Q R
PageTitleFormat00R a
,00a b
htmlEncoder00c n
)00n o
;00o p
return11 
new11 

HtmlString11 %
(11% &
result11& ,
)11, -
;11- .
}22 
}33 	
}44 
}55 ≠Ø
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\Shape.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
[ 
DebuggerTypeProxy 
( 
typeof 
( 
ShapeDebugView ,
), -
)- .
]. /
public 

class 
Shape 
: 
	Composite "
," #
IShape$ *
,* +
IPositioned, 7
,7 8
IEnumerable9 D
<D E
objectE K
>K L
{ 
private 
List 
< 
string 
> 
_classes %
;% &
private 

Dictionary 
< 
string !
,! "
string# )
>) *
_attributes+ 6
;6 7
private 
List 
< 
IPositioned  
>  !
_items" (
=) *
new+ .
List/ 3
<3 4
IPositioned4 ?
>? @
(@ A
)A B
;B C
private 
bool 
_sorted 
= 
false $
;$ %
public 
ShapeMetadata 
Metadata %
{& '
get( +
;+ ,
}- .
=/ 0
new1 4
ShapeMetadata5 B
(B C
)C D
;D E
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
TagName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IList 
< 
string 
> 
Classes $
=>% '
_classes( 0
??=1 4
new5 8
List9 =
<= >
string> D
>D E
(E F
)F G
;G H
public 
IDictionary 
< 
string !
,! "
string# )
>) *

Attributes+ 5
=>6 8
_attributes9 D
??=E H
newI L

DictionaryM W
<W X
stringX ^
,^ _
string` f
>f g
(g h
)h i
;i j
public 
IEnumerable 
< 
dynamic "
>" #
Items$ )
{ 	
get 
{ 
if   
(   
!   
_sorted   
)   
{!! 
_items"" 
="" 
_items"" #
.""# $
OrderBy""$ +
(""+ ,
x"", -
=>"". 0
x""1 2
,""2 3 
FlatPositionComparer""4 H
.""H I
Instance""I Q
)""Q R
.""R S
ToList""S Y
(""Y Z
)""Z [
;""[ \
_sorted## 
=## 
true## "
;##" #
}$$ 
return&& 
_items&& 
;&& 
}'' 
}(( 	
public** 
bool** 
HasItems** 
=>** 
_items**  &
.**& '
Count**' ,
>**- .
$num**/ 0
;**0 1
public,, 
string,, 
Position,, 
{-- 	
get.. 
{.. 
return.. 
Metadata.. !
...! "
Position.." *
;..* +
}.., -
set// 
{// 
Metadata// 
.// 
Position// #
=//$ %
value//& +
;//+ ,
}//- .
}00 	
public22 
virtual22 
Shape22 
Add22  
(22  !
object22! '
item22( ,
,22, -
string22. 4
position225 =
=22> ?
null22@ D
)22D E
{33 	
if44 
(44 
item44 
==44 
null44 
)44 
{55 
return66 
this66 
;66 
}77 
if99 
(99 
position99 
==99 
null99  
)99  !
{:: 
position;; 
=;; 
$str;; 
;;; 
}<< 
_sorted>> 
=>> 
false>> 
;>> 
if@@ 
(@@ 
item@@ 
is@@ 
IHtmlContent@@ $
)@@$ %
{AA 
_itemsBB 
.BB 
AddBB 
(BB 
newBB 
PositionWrapperBB .
(BB. /
(BB/ 0
IHtmlContentBB0 <
)BB< =
itemBB= A
,BBA B
positionBBC K
)BBK L
)BBL M
;BBM N
}CC 
elseDD 
ifDD 
(DD 
itemDD 
isDD 
stringDD #
)DD# $
{EE 
_itemsFF 
.FF 
AddFF 
(FF 
newFF 
PositionWrapperFF .
(FF. /
(FF/ 0
stringFF0 6
)FF6 7
itemFF7 ;
,FF; <
positionFF= E
)FFE F
)FFF G
;FFG H
}GG 
elseHH 
{II 
varJJ 
shapeJJ 
=JJ 
itemJJ  
asJJ! #
IPositionedJJ$ /
;JJ/ 0
ifKK 
(KK 
shapeKK 
!=KK 
nullKK !
)KK! "
{LL 
ifMM 
(MM 
positionMM  
!=MM! #
nullMM$ (
)MM( )
{NN 
shapeOO 
.OO 
PositionOO &
=OO' (
positionOO) 1
;OO1 2
}PP 
_itemsRR 
.RR 
AddRR 
(RR 
shapeRR $
)RR$ %
;RR% &
}SS 
}TT 
returnVV 
thisVV 
;VV 
}WW 	
publicYY 
ShapeYY 
AddRangeYY 
(YY 
IEnumerableYY )
<YY) *
objectYY* 0
>YY0 1
itemsYY2 7
,YY7 8
stringYY9 ?
positionYY@ H
=YYI J
nullYYK O
)YYO P
{ZZ 	
foreach[[ 
([[ 
var[[ 
item[[ 
in[[  
items[[! &
)[[& '
{\\ 
Add]] 
(]] 
item]] 
,]] 
position]] "
)]]" #
;]]# $
}^^ 
return`` 
this`` 
;`` 
}aa 	
publiccc 
voidcc 
Removecc 
(cc 
stringcc !
	shapeNamecc" +
)cc+ ,
{dd 	
foree 
(ee 
varee 
iee 
=ee 
_itemsee 
.ee  
Countee  %
-ee& '
$numee( )
;ee) *
iee+ ,
>=ee- /
$numee0 1
;ee1 2
iee3 4
--ee4 6
)ee6 7
{ff 
ifgg 
(gg 
_itemsgg 
[gg 
igg 
]gg 
isgg  
IShapegg! '
shapegg( -
&&gg. 0
shapegg1 6
.gg6 7
Metadatagg7 ?
.gg? @
Namegg@ D
==ggE G
	shapeNameggH Q
)ggQ R
{hh 
_itemsii 
.ii 
RemoveAtii #
(ii# $
iii$ %
)ii% &
;ii& '
returnjj 
;jj 
}kk 
}ll 
}mm 	
publicoo 
IShapeoo 
Namedoo 
(oo 
stringoo "
	shapeNameoo# ,
)oo, -
{pp 	
forqq 
(qq 
varqq 
iqq 
=qq 
$numqq 
;qq 
iqq 
<qq 
_itemsqq  &
.qq& '
Countqq' ,
;qq, -
iqq. /
++qq/ 1
)qq1 2
{rr 
ifss 
(ss 
_itemsss 
[ss 
iss 
]ss 
isss  
IShapess! '
shapess( -
&&ss. 0
shapess1 6
.ss6 7
Metadatass7 ?
.ss? @
Namess@ D
==ssE G
	shapeNamessH Q
)ssQ R
{tt 
returnuu 
shapeuu  
;uu  !
}vv 
}ww 
returnyy 
nullyy 
;yy 
}zz 	
public|| 
IShape|| 
NormalizedNamed|| %
(||% &
string||& ,
	shapeName||- 6
)||6 7
{}} 	
for~~ 
(~~ 
var~~ 
i~~ 
=~~ 
$num~~ 
;~~ 
i~~ 
<~~ 
_items~~  &
.~~& '
Count~~' ,
;~~, -
i~~. /
++~~/ 1
)~~1 2
{ 
if
ÄÄ 
(
ÄÄ 
_items
ÄÄ 
[
ÄÄ 
i
ÄÄ 
]
ÄÄ 
is
ÄÄ  
IShape
ÄÄ! '
shape
ÄÄ( -
&&
ÄÄ. 0
shape
ÄÄ1 6
.
ÄÄ6 7
Metadata
ÄÄ7 ?
.
ÄÄ? @
Name
ÄÄ@ D
?
ÄÄD E
.
ÄÄE F
Replace
ÄÄF M
(
ÄÄM N
$str
ÄÄN R
,
ÄÄR S
$str
ÄÄT W
)
ÄÄW X
==
ÄÄY [
	shapeName
ÄÄ\ e
)
ÄÄe f
{
ÅÅ 
return
ÇÇ 
shape
ÇÇ  
;
ÇÇ  !
}
ÉÉ 
}
ÑÑ 
return
ÜÜ 
null
ÜÜ 
;
ÜÜ 
}
áá 	
IEnumerator
ââ 
<
ââ 
object
ââ 
>
ââ 
IEnumerable
ââ '
<
ââ' (
object
ââ( .
>
ââ. /
.
ââ/ 0
GetEnumerator
ââ0 =
(
ââ= >
)
ââ> ?
{
ää 	
if
ãã 
(
ãã 
!
ãã 
_sorted
ãã 
)
ãã 
{
åå 
_items
çç 
=
çç 
_items
çç 
.
çç  
OrderBy
çç  '
(
çç' (
x
çç( )
=>
çç* ,
x
çç- .
,
çç. /"
FlatPositionComparer
çç0 D
.
ççD E
Instance
ççE M
)
ççM N
.
ççN O
ToList
ççO U
(
ççU V
)
ççV W
;
ççW X
_sorted
éé 
=
éé 
true
éé 
;
éé 
}
èè 
return
ëë 
_items
ëë 
.
ëë 
GetEnumerator
ëë '
(
ëë' (
)
ëë( )
;
ëë) *
}
íí 	
public
îî 
IEnumerator
îî 
GetEnumerator
îî (
(
îî( )
)
îî) *
{
ïï 	
if
ññ 
(
ññ 
!
ññ 
_sorted
ññ 
)
ññ 
{
óó 
_items
òò 
=
òò 
_items
òò 
.
òò  
OrderBy
òò  '
(
òò' (
x
òò( )
=>
òò* ,
x
òò- .
,
òò. /"
FlatPositionComparer
òò0 D
.
òòD E
Instance
òòE M
)
òòM N
.
òòN O
ToList
òòO U
(
òòU V
)
òòV W
;
òòW X
_sorted
ôô 
=
ôô 
true
ôô 
;
ôô 
}
öö 
return
úú 
_items
úú 
.
úú 
GetEnumerator
úú '
(
úú' (
)
úú( )
;
úú) *
}
ùù 	
public
üü 
override
üü 
bool
üü 

TryConvert
üü '
(
üü' (
ConvertBinder
üü( 5
binder
üü6 <
,
üü< =
out
üü> A
object
üüB H
result
üüI O
)
üüO P
{
†† 	
result
°° 
=
°° 
Items
°° 
;
°° 
if
££ 
(
££ 
binder
££ 
.
££ 

ReturnType
££ !
==
££" $
typeof
££% +
(
££+ ,
IEnumerable
££, 7
<
££7 8
object
££8 >
>
££> ?
)
££? @
||
££A C
binder
§§ 
.
§§ 

ReturnType
§§ !
==
§§" $
typeof
§§% +
(
§§+ ,
IEnumerable
§§, 7
<
§§7 8
dynamic
§§8 ?
>
§§? @
)
§§@ A
)
§§A B
{
•• 
return
¶¶ 
true
¶¶ 
;
¶¶ 
}
ßß 
return
©© 
base
©© 
.
©© 

TryConvert
©© "
(
©©" #
binder
©©# )
,
©©) *
out
©©+ .
result
©©/ 5
)
©©5 6
;
©©6 7
}
™™ 	
public
¨¨ 
static
¨¨ 

TagBuilder
¨¨  
GetTagBuilder
¨¨! .
(
¨¨. /
Shape
¨¨/ 4
shape
¨¨5 :
,
¨¨: ;
string
¨¨< B
defaultTagName
¨¨C Q
=
¨¨R S
$str
¨¨T Z
)
¨¨Z [
{
≠≠ 	
var
ÆÆ 
tagName
ÆÆ 
=
ÆÆ 
defaultTagName
ÆÆ (
;
ÆÆ( )
if
±± 
(
±± 
shape
±± 
.
±± 

Properties
±±  
.
±±  !
TryGetValue
±±! ,
(
±±, -
$str
±±- 2
,
±±2 3
out
±±4 7
var
±±8 ;
value
±±< A
)
±±A B
&&
±±C E
value
±±F K
is
±±L N
string
±±O U
valueString
±±V a
)
±±a b
{
≤≤ 
tagName
≥≥ 
=
≥≥ 
valueString
≥≥ %
;
≥≥% &
}
¥¥ 
if
∂∂ 
(
∂∂ 
!
∂∂ 
String
∂∂ 
.
∂∂ 
IsNullOrEmpty
∂∂ %
(
∂∂% &
shape
∂∂& +
.
∂∂+ ,
TagName
∂∂, 3
)
∂∂3 4
)
∂∂4 5
{
∑∑ 
tagName
∏∏ 
=
∏∏ 
shape
∏∏ 
.
∏∏  
TagName
∏∏  '
;
∏∏' (
}
ππ 
return
ªª 
GetTagBuilder
ªª  
(
ªª  !
tagName
ªª! (
,
ªª( )
shape
ªª* /
.
ªª/ 0
Id
ªª0 2
,
ªª2 3
shape
ªª4 9
.
ªª9 :
Classes
ªª: A
,
ªªA B
shape
ªªC H
.
ªªH I

Attributes
ªªI S
)
ªªS T
;
ªªT U
}
ºº 	
public
ææ 
static
ææ 

TagBuilder
ææ  
GetTagBuilder
ææ! .
(
ææ. /
string
ææ/ 5
tagName
ææ6 =
,
ææ= >
string
ææ? E
id
ææF H
,
ææH I
IEnumerable
ææJ U
<
ææU V
string
ææV \
>
ææ\ ]
classes
ææ^ e
,
ææe f
IDictionary
ææg r
<
æær s
string
ææs y
,
ææy z
stringææ{ Å
>ææÅ Ç

attributesææÉ ç
)ææç é
{
øø 	
var
¿¿ 

tagBuilder
¿¿ 
=
¿¿ 
new
¿¿  

TagBuilder
¿¿! +
(
¿¿+ ,
tagName
¿¿, 3
)
¿¿3 4
;
¿¿4 5
if
¬¬ 
(
¬¬ 

attributes
¬¬ 
!=
¬¬ 
null
¬¬ "
)
¬¬" #
{
√√ 

tagBuilder
ƒƒ 
.
ƒƒ 
MergeAttributes
ƒƒ *
(
ƒƒ* +

attributes
ƒƒ+ 5
,
ƒƒ5 6
false
ƒƒ7 <
)
ƒƒ< =
;
ƒƒ= >
}
≈≈ 
foreach
«« 
(
«« 
var
«« 
cssClass
«« !
in
««" $
classes
««% ,
??
««- /

Enumerable
««0 :
.
««: ;
Empty
««; @
<
««@ A
string
««A G
>
««G H
(
««H I
)
««I J
)
««J K
{
»» 

tagBuilder
…… 
.
…… 
AddCssClass
…… &
(
……& '
cssClass
……' /
)
……/ 0
;
……0 1
}
   
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
String
ÃÃ 
.
ÃÃ  
IsNullOrWhiteSpace
ÃÃ *
(
ÃÃ* +
id
ÃÃ+ -
)
ÃÃ- .
)
ÃÃ. /
{
ÕÕ 

tagBuilder
ŒŒ 
.
ŒŒ 

Attributes
ŒŒ %
[
ŒŒ% &
$str
ŒŒ& *
]
ŒŒ* +
=
ŒŒ, -
id
ŒŒ. 0
;
ŒŒ0 1
}
œœ 
return
–– 

tagBuilder
–– 
;
–– 
}
—— 	
public
”” 
override
”” 
bool
”” 
TryGetMember
”” )
(
””) *
GetMemberBinder
””* 9
binder
””: @
,
””@ A
out
””B E
object
””F L
result
””M S
)
””S T
{
‘‘ 	
var
’’ 
name
’’ 
=
’’ 
binder
’’ 
.
’’ 
Name
’’ "
;
’’" #
if
◊◊ 
(
◊◊ 
!
◊◊ 
base
◊◊ 
.
◊◊ 
TryGetMember
◊◊ "
(
◊◊" #
binder
◊◊# )
,
◊◊) *
out
◊◊+ .
result
◊◊/ 5
)
◊◊5 6
||
◊◊7 9
(
◊◊: ;
null
◊◊; ?
==
◊◊@ B
result
◊◊C I
)
◊◊I J
)
◊◊J K
{
ÿÿ 
result
⁄⁄ 
=
⁄⁄ 
Named
⁄⁄ 
(
⁄⁄ 
name
⁄⁄ #
)
⁄⁄# $
;
⁄⁄$ %
if
‹‹ 
(
‹‹ 
result
‹‹ 
==
‹‹ 
null
‹‹ "
)
‹‹" #
{
›› 
result
ﬁﬁ 
=
ﬁﬁ 
NormalizedNamed
ﬁﬁ ,
(
ﬁﬁ, -
name
ﬁﬁ- 1
.
ﬁﬁ1 2
Replace
ﬁﬁ2 9
(
ﬁﬁ9 :
$str
ﬁﬁ: >
,
ﬁﬁ> ?
$str
ﬁﬁ@ C
)
ﬁﬁC D
)
ﬁﬁD E
;
ﬁﬁE F
}
ﬂﬂ 
}
‡‡ 
return
‚‚ 
true
‚‚ 
;
‚‚ 
}
„„ 	
	protected
ÂÂ 
override
ÂÂ 
bool
ÂÂ 
TrySetMemberImpl
ÂÂ  0
(
ÂÂ0 1
string
ÂÂ1 7
name
ÂÂ8 <
,
ÂÂ< =
object
ÂÂ> D
value
ÂÂE J
)
ÂÂJ K
{
ÊÊ 	
if
ËË 
(
ËË 
name
ËË 
==
ËË 
$str
ËË 
)
ËË 
{
ÈÈ 
Id
ÍÍ 
=
ÍÍ 
value
ÍÍ 
as
ÍÍ 
string
ÍÍ $
;
ÍÍ$ %
return
ÏÏ 
true
ÏÏ 
;
ÏÏ 
}
ÌÌ 
if
ÔÔ 
(
ÔÔ 
name
ÔÔ 
==
ÔÔ 
$str
ÔÔ !
)
ÔÔ! "
{
 
TagName
ÒÒ 
=
ÒÒ 
value
ÒÒ 
as
ÒÒ  "
string
ÒÒ# )
;
ÒÒ) *
return
ÛÛ 
true
ÛÛ 
;
ÛÛ 
}
ÙÙ 
if
ˆˆ 
(
ˆˆ 
name
ˆˆ 
==
ˆˆ 
$str
ˆˆ $
)
ˆˆ$ %
{
˜˜ 
if
¯¯ 
(
¯¯ 
value
¯¯ 
is
¯¯ 

Dictionary
¯¯ '
<
¯¯' (
string
¯¯( .
,
¯¯. /
string
¯¯0 6
>
¯¯6 7

attributes
¯¯8 B
)
¯¯B C
{
˘˘ 
foreach
˙˙ 
(
˙˙ 
var
˙˙  
	attribute
˙˙! *
in
˙˙+ -

attributes
˙˙. 8
)
˙˙8 9
{
˚˚ 

Attributes
¸¸ "
.
¸¸" #
TryAdd
¸¸# )
(
¸¸) *
	attribute
¸¸* 3
.
¸¸3 4
Key
¸¸4 7
,
¸¸7 8
	attribute
¸¸9 B
.
¸¸B C
Value
¸¸C H
)
¸¸H I
;
¸¸I J
}
˝˝ 
}
˛˛ 
if
ÄÄ 
(
ÄÄ 
value
ÄÄ 
is
ÄÄ 
string
ÄÄ #
stringValue
ÄÄ$ /
)
ÄÄ/ 0
{
ÅÅ 

attributes
ÇÇ 
=
ÇÇ  
JsonConvert
ÇÇ! ,
.
ÇÇ, -
DeserializeObject
ÇÇ- >
<
ÇÇ> ?

Dictionary
ÇÇ? I
<
ÇÇI J
string
ÇÇJ P
,
ÇÇP Q
string
ÇÇR X
>
ÇÇX Y
>
ÇÇY Z
(
ÇÇZ [
stringValue
ÇÇ[ f
)
ÇÇf g
;
ÇÇg h
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ  
	attribute
ÑÑ! *
in
ÑÑ+ -

attributes
ÑÑ. 8
)
ÑÑ8 9
{
ÖÖ 

Attributes
ÜÜ "
.
ÜÜ" #
TryAdd
ÜÜ# )
(
ÜÜ) *
	attribute
ÜÜ* 3
.
ÜÜ3 4
Key
ÜÜ4 7
,
ÜÜ7 8
	attribute
ÜÜ9 B
.
ÜÜB C
Value
ÜÜC H
)
ÜÜH I
;
ÜÜI J
}
áá 
}
àà 
}
ââ 
if
ãã 
(
ãã 
name
ãã 
==
ãã 
$str
ãã !
)
ãã! "
{
åå 
if
çç 
(
çç 
value
çç 
is
çç 
List
çç !
<
çç! "
string
çç" (
>
çç( )
classes
çç* 1
)
çç1 2
{
éé 
foreach
èè 
(
èè 
var
èè  
item
èè! %
in
èè& (
classes
èè) 0
)
èè0 1
{
êê 
Classes
ëë 
.
ëë  
Add
ëë  #
(
ëë# $
item
ëë$ (
)
ëë( )
;
ëë) *
}
íí 
}
ìì 
if
ïï 
(
ïï 
value
ïï 
is
ïï 
string
ïï #
stringValue
ïï$ /
)
ïï/ 0
{
ññ 
var
óó 
values
óó 
=
óó  
stringValue
óó! ,
.
óó, -
Split
óó- 2
(
óó2 3
$char
óó3 6
,
óó6 7 
StringSplitOptions
óó8 J
.
óóJ K 
RemoveEmptyEntries
óóK ]
)
óó] ^
;
óó^ _
foreach
òò 
(
òò 
var
òò  
item
òò! %
in
òò& (
values
òò) /
)
òò/ 0
{
ôô 
Classes
öö 
.
öö  
Add
öö  #
(
öö# $
item
öö$ (
)
öö( )
;
öö) *
}
õõ 
}
úú 
}
ùù 
base
üü 
.
üü 
TrySetMemberImpl
üü !
(
üü! "
name
üü" &
,
üü& '
value
üü( -
)
üü- .
;
üü. /
return
°° 
true
°° 
;
°° 
}
¢¢ 	
}
££ 
}§§ Ù$
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\ShapeDebugView.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Shapes( .
{ 
public 

class 
ShapeDebugView 
{ 
private		 
readonly		 
Shape		 
_shape		 %
;		% &
public 
ShapeDebugView 
( 
Shape #
shape$ )
)) *
{ 	
_shape 
= 
shape 
; 
} 	
public 
ShapeMetadata 
Metadata %
{& '
get( +
{, -
return. 4
_shape5 ;
.; <
Metadata< D
;D E
}F G
}H I
public 
string 
Id 
{ 
get 
{  
return! '
_shape( .
.. /
Id/ 1
;1 2
}3 4
}5 6
public 
IList 
< 
string 
> 
Classes $
{% &
get' *
{+ ,
return- 3
_shape4 :
.: ;
Classes; B
;B C
}D E
}F G
public 
IDictionary 
< 
string !
,! "
string# )
>) *

Attributes+ 5
{6 7
get8 ;
{< =
return> D
_shapeE K
.K L

AttributesL V
;V W
}X Y
}Z [
public 
IEnumerable 
< 
dynamic "
>" #
Items$ )
{* +
get, /
{0 1
return2 8
_shape9 ?
.? @
Items@ E
;E F
}G H
}I J
[ 	
DebuggerBrowsable	 
( "
DebuggerBrowsableState 1
.1 2

RootHidden2 <
)< =
]= >
public 
KeyValuePairs 
[ 
] 

Properties )
{ 	
get 
{ 
return 
_shape 
. 

Properties (
. 
Cast 
< 
KeyValuePair &
<& '
string' -
,- .
object/ 5
>5 6
>6 7
(7 8
)8 9
. 
Select 
( 
entry !
=>" $
new% (
KeyValuePairs) 6
(6 7
entry7 <
.< =
Key= @
,@ A
entryB G
.G H
ValueH M
)M N
)N O
. 
ToArray 
( 
) 
; 
}   
}!! 	
[## 	
DebuggerDisplay##	 
(## 
$str## U
,##U V
Name##W [
=##\ ]
$str##^ i
)##i j
]##j k
public$$ 
class$$ 
KeyValuePairs$$ "
{%% 	
public&& 
KeyValuePairs&&  
(&&  !
string&&! '
key&&( +
,&&+ ,
object&&- 3
value&&4 9
)&&9 :
{'' 
if(( 
((( 
_value(( 
is(( 
IShape(( $
)(($ %
{)) 

_shapeType** 
=**  
(**! "
(**" #
IShape**# )
)**) *
_value*** 0
)**0 1
.**1 2
Metadata**2 :
.**: ;
Type**; ?
;**? @
}++ 
_value-- 
=-- 
value-- 
;-- 
_key.. 
=.. 
key.. 
;.. 
}// 
[11 
DebuggerBrowsable11 
(11 "
DebuggerBrowsableState11 5
.115 6
Never116 ;
)11; <
]11< =
private22 
string22 
_key22 
;22  
[44 
DebuggerBrowsable44 
(44 "
DebuggerBrowsableState44 5
.445 6
Never446 ;
)44; <
]44< =
private55 
object55 

_shapeType55 %
;55% &
[77 
DebuggerBrowsable77 
(77 "
DebuggerBrowsableState77 5
.775 6

RootHidden776 @
)77@ A
]77A B
private88 
object88 
_value88 !
;88! "
}99 	
}:: 
};; »;
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Shapes\ShapeMetadata.cs
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
DisplayManagement

 '
.

' (
Shapes

( .
{ 
public 

class 
ShapeMetadata 
{ 
private 
CacheContext 
_cacheContext *
;* +
public 
ShapeMetadata 
( 
) 
{ 	
Wrappers 
= 
new  
AlternatesCollection /
(/ 0
)0 1
;1 2

Alternates 
= 
new  
AlternatesCollection 1
(1 2
)2 3
;3 4
BindingSources 
= 
new  
List! %
<% &
string& ,
>, -
(- .
). /
;/ 0

Displaying 
= 

Enumerable #
.# $
Empty$ )
<) *
Action* 0
<0 1
ShapeDisplayContext1 D
>D E
>E F
(F G
)G H
;H I
	Displayed 
= 

Enumerable "
." #
Empty# (
<( )
Action) /
</ 0
ShapeDisplayContext0 C
>C D
>D E
(E F
)F G
;G H
ProcessingAsync 
= 

Enumerable (
.( )
Empty) .
<. /
Func/ 3
<3 4
dynamic4 ;
,; <
Task= A
>A B
>B C
(C D
)D E
;E F
} 	
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DisplayType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Tab 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Card 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Column 
{ 
get "
;" #
set$ '
;' (
}) *
public   
string   
PlacementSource   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
public!! 
string!! 
Prefix!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
public"" 
string"" 
Name"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
public## 
string## 
Differentiator## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
public$$  
AlternatesCollection$$ #
Wrappers$$$ ,
{$$- .
get$$/ 2
;$$2 3
set$$4 7
;$$7 8
}$$9 :
public%%  
AlternatesCollection%% #

Alternates%%$ .
{%%/ 0
get%%1 4
;%%4 5
set%%6 9
;%%9 :
}%%; <
public&& 
bool&& 
IsCached&& 
=>&& 
_cacheContext&&  -
!=&&. 0
null&&1 5
;&&5 6
public'' 
IHtmlContent'' 
ChildContent'' (
{'') *
get''+ .
;''. /
set''0 3
;''3 4
}''5 6
[,, 	

JsonIgnore,,	 
],, 
public-- 
IEnumerable-- 
<-- 
Action-- !
<--! "
ShapeDisplayContext--" 5
>--5 6
>--6 7

Displaying--8 B
{--C D
get--E H
;--H I
private--J Q
set--R U
;--U V
}--W X
[22 	

JsonIgnore22	 
]22 
public33 
IEnumerable33 
<33 
Func33 
<33  
IShape33  &
,33& '
Task33( ,
>33, -
>33- .
ProcessingAsync33/ >
{33? @
get33A D
;33D E
private33F M
set33N Q
;33Q R
}33S T
[88 	

JsonIgnore88	 
]88 
public99 
IEnumerable99 
<99 
Action99 !
<99! "
ShapeDisplayContext99" 5
>995 6
>996 7
	Displayed998 A
{99B C
get99D G
;99G H
private99I P
set99Q T
;99T U
}99V W
[;; 	

JsonIgnore;;	 
];; 
public<< 
IList<< 
<<< 
string<< 
><< 
BindingSources<< +
{<<, -
get<<. 1
;<<1 2
set<<3 6
;<<6 7
}<<8 9
public>> 
void>> 
OnDisplaying>>  
(>>  !
Action>>! '
<>>' (
ShapeDisplayContext>>( ;
>>>; <
context>>= D
)>>D E
{?? 	

Displaying@@ 
=@@ 

Displaying@@ #
.@@# $
Concat@@$ *
(@@* +
new@@+ .
[@@. /
]@@/ 0
{@@1 2
context@@3 :
}@@; <
)@@< =
;@@= >
}AA 	
publicCC 
voidCC 
OnProcessingCC  
(CC  !
FuncCC! %
<CC% &
IShapeCC& ,
,CC, -
TaskCC. 2
>CC2 3
contextCC4 ;
)CC; <
{DD 	
ProcessingAsyncEE 
=EE 
ProcessingAsyncEE -
.EE- .
ConcatEE. 4
(EE4 5
newEE5 8
[EE8 9
]EE9 :
{EE; <
contextEE= D
}EEE F
)EEF G
;EEG H
}FF 	
publicHH 
voidHH 
OnDisplayedHH 
(HH  
ActionHH  &
<HH& '
ShapeDisplayContextHH' :
>HH: ;
contextHH< C
)HHC D
{II 	
	DisplayedJJ 
=JJ 
	DisplayedJJ !
.JJ! "
ConcatJJ" (
(JJ( )
newJJ) ,
[JJ, -
]JJ- .
{JJ/ 0
contextJJ1 8
}JJ9 :
)JJ: ;
;JJ; <
}KK 	
publicPP 
CacheContextPP 
CachePP !
(PP! "
stringPP" (
cacheIdPP) 0
)PP0 1
{QQ 	
ifRR 
(RR 
_cacheContextRR 
==RR  
nullRR! %
||RR& (
_cacheContextRR) 6
.RR6 7
CacheIdRR7 >
!=RR? A
cacheIdRRB I
)RRI J
{SS 
_cacheContextTT 
=TT 
newTT  #
CacheContextTT$ 0
(TT0 1
cacheIdTT1 8
)TT8 9
;TT9 :
}UU 
returnWW 
_cacheContextWW  
;WW  !
}XX 	
public]] 
CacheContext]] 
Cache]] !
(]]! "
)]]" #
{^^ 	
return__ 
_cacheContext__  
;__  !
}`` 	
}aa 
}bb ˝
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\AddAlternateTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str &
,& '
	ParentTag( 1
=2 3"
ShapeMetadataTagHelper4 J
.J K
TagNameK R
,R S

AttributesT ^
=_ `
$stra g
,g h
TagStructurei u
=v w
TagStructure	x Ñ
.
Ñ Ö
WithoutEndTag
Ö í
)
í ì
]
ì î
public 

class !
AddAlternateTagHelper &
:' (
	TagHelper) 2
{		 
public

 
override

 
Task

 
ProcessAsync

 )
(

) *
TagHelperContext

* :
context

; B
,

B C
TagHelperOutput

D S
output

T Z
)

Z [
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Metadata 
. 

Alternates &
.& '
Add' *
(* +
Convert+ 2
.2 3
ToString3 ;
(; <
output< B
.B C

AttributesC M
[M N
$strN T
]T U
.U V
ValueV [
)[ \
)\ ]
;] ^
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} «
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\AddClassTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str "
," #

Attributes$ .
=/ 0
$str1 7
,7 8
TagStructure9 E
=F G
TagStructureH T
.T U
WithoutEndTagU b
)b c
]c d
public 

class 
AddClassTagHelper "
:# $
	TagHelper% .
{		 
public

 
override

 
Task

 
ProcessAsync

 )
(

) *
TagHelperContext

* :
context

; B
,

B C
TagHelperOutput

D S
output

T Z
)

Z [
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Classes 
. 
Add 
( 
Convert &
.& '
ToString' /
(/ 0
output0 6
.6 7

Attributes7 A
[A B
$strB H
]H I
.I J
ValueJ O
)O P
)P Q
;Q R
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ˜
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\AddWrapperTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str $
,$ %
	ParentTag& /
=0 1"
ShapeMetadataTagHelper2 H
.H I
TagNameI P
,P Q

AttributesR \
=] ^
$str_ e
,e f
TagStructureg s
=t u
TagStructure	v Ç
.
Ç É
WithoutEndTag
É ê
)
ê ë
]
ë í
public 

class 
AddWrapperTagHelper $
:% &
	TagHelper' 0
{		 
public

 
override

 
Task

 
ProcessAsync

 )
(

) *
TagHelperContext

* :
context

; B
,

B C
TagHelperOutput

D S
output

T Z
)

Z [
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Metadata 
. 
Wrappers $
.$ %
Add% (
(( )
Convert) 0
.0 1
ToString1 9
(9 :
output: @
.@ A

AttributesA K
[K L
$strL R
]R S
.S T
ValueT Y
)Y Z
)Z [
;[ \
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Û{
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\BaseShapeTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
public		 

abstract		 
class		 
BaseShapeTagHelper		 ,
:		- .
	TagHelper		/ 8
{

 
private 
static 
readonly 
HashSet  '
<' (
string( .
>. /
InternalProperties0 B
=C D
newE H
HashSetI P
<P Q
stringQ W
>W X
{ 	
$str 
, 
$str 
, 
$str (
,( )
$str* 4
,4 5
$str6 E
,E F
$strG R
,R S
$strT j
,j k
$str	l Ñ
} 	
;	 

	protected 
const 
string "
PropertyDictionaryName 5
=6 7
$str8 B
;B C
	protected 
const 
string 
PropertyPrefix -
=. /
$str0 7
;7 8
private 
static 
readonly 
char  $
[$ %
]% &

Separators' 1
=2 3
{4 5
$char6 9
,9 :
$char; >
}? @
;@ A
	protected 
IShapeFactory 
_shapeFactory  -
;- .
	protected 
IDisplayHelper  
_displayHelper! /
;/ 0
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
internal 
string 
Cache 
{ 
get  #
;# $
set% (
;( )
}* +
internal 
TimeSpan 
? 
FixedDuration (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
internal 
TimeSpan 
? 
SlidingDuration *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
internal   
string   
Context   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
internal!! 
string!! 
Tag!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
	protected## 
BaseShapeTagHelper## $
(##$ %
IShapeFactory##% 2
shapeFactory##3 ?
,##? @
IDisplayHelper##A O
displayHelper##P ]
)##] ^
{$$ 	
_shapeFactory%% 
=%% 
shapeFactory%% (
;%%( )
_displayHelper&& 
=&& 
displayHelper&& *
;&&* +
}'' 	
[,, 	
HtmlAttributeName,,	 
(,, "
PropertyDictionaryName,, 1
,,,1 2%
DictionaryAttributePrefix,,3 L
=,,M N
PropertyPrefix,,O ]
),,] ^
],,^ _
public-- 
IDictionary-- 
<-- 
string-- !
,--! "
object--# )
>--) *

Properties--+ 5
{--6 7
get--8 ;
;--; <
set--= @
;--@ A
}--B C
=--D E
new--F I

Dictionary--J T
<--T U
string--U [
,--[ \
object--] c
>--c d
(--d e
StringComparer--e s
.--s t
OrdinalIgnoreCase	--t Ö
)
--Ö Ü
;
--Ü á
public// 
override// 
async// 
Task// "
ProcessAsync//# /
(/// 0
TagHelperContext//0 @
tagHelperContext//A Q
,//Q R
TagHelperOutput//S b
output//c i
)//i j
{00 	
var11 

properties11 
=11 
new11  

Dictionary11! +
<11+ ,
string11, 2
,112 3
object114 :
>11: ;
(11; <
)11< =
;11= >
foreach44 
(44 
var44 
property44 !
in44" $

Properties44% /
)44/ 0
{55 
var66 
normalizedName66 "
=66# $
property66% -
.66- .
Key66. 1
.661 2
ToPascalCaseDash662 B
(66B C
)66C D
;66D E

properties77 
.77 
Add77 
(77 
normalizedName77 -
,77- .
property77/ 7
.777 8
Value778 =
)77= >
;77> ?
}88 
foreach;; 
(;; 
var;; 
pair;; 
in;;  
output;;! '
.;;' (

Attributes;;( 2
);;2 3
{<< 
if>> 
(>> 
!>> 
InternalProperties>> '
.>>' (
Contains>>( 0
(>>0 1
pair>>1 5
.>>5 6
Name>>6 :
)>>: ;
)>>; <
{?? 
var@@ 
normalizedName@@ &
=@@' (
pair@@) -
.@@- .
Name@@. 2
.@@2 3
ToPascalCaseDash@@3 C
(@@C D
)@@D E
;@@E F
ifBB 
(BB 
!BB 

propertiesBB #
.BB# $
ContainsKeyBB$ /
(BB/ 0
normalizedNameBB0 >
)BB> ?
)BB? @
{CC 

propertiesDD "
.DD" #
AddDD# &
(DD& '
normalizedNameDD' 5
,DD5 6
pairDD7 ;
.DD; <
ValueDD< A
.DDA B
ToStringDDB J
(DDJ K
)DDK L
)DDL M
;DDM N
}EE 
}FF 
}GG 
ifII 
(II 
stringII 
.II 
IsNullOrWhiteSpaceII )
(II) *
TypeII* .
)II. /
)II/ 0
{JJ 
TypeKK 
=KK 
outputKK 
.KK 
TagNameKK %
;KK% &
}LL 
ifNN 
(NN 
stringNN 
.NN 
IsNullOrWhiteSpaceNN )
(NN) *
CacheNN* /
)NN/ 0
&&NN1 3
outputNN4 :
.NN: ;

AttributesNN; E
.NNE F
ContainsNameNNF R
(NNR S
$strNNS ]
)NN] ^
)NN^ _
{OO 
CachePP 
=PP 
ConvertPP 
.PP  
ToStringPP  (
(PP( )
outputPP) /
.PP/ 0

AttributesPP0 :
[PP: ;
$strPP; E
]PPE F
.PPF G
ValuePPG L
)PPL M
;PPM N
}QQ 
ifSS 
(SS 
stringSS 
.SS 
IsNullOrWhiteSpaceSS )
(SS) *
ContextSS* 1
)SS1 2
&&SS3 5
outputSS6 <
.SS< =

AttributesSS= G
.SSG H
ContainsNameSSH T
(SST U
$strSSU d
)SSd e
)SSe f
{TT 
ContextUU 
=UU 
ConvertUU !
.UU! "
ToStringUU" *
(UU* +
outputUU+ 1
.UU1 2

AttributesUU2 <
[UU< =
$strUU= L
]UUL M
.UUM N
ValueUUN S
)UUS T
;UUT U
}VV 
ifXX 
(XX 
stringXX 
.XX 
IsNullOrWhiteSpaceXX )
(XX) *
TagXX* -
)XX- .
&&XX/ 1
outputXX2 8
.XX8 9

AttributesXX9 C
.XXC D
ContainsNameXXD P
(XXP Q
$strXXQ \
)XX\ ]
)XX] ^
{YY 
TagZZ 
=ZZ 
ConvertZZ 
.ZZ 
ToStringZZ &
(ZZ& '
outputZZ' -
.ZZ- .

AttributesZZ. 8
[ZZ8 9
$strZZ9 D
]ZZD E
.ZZE F
ValueZZF K
)ZZK L
;ZZL M
}[[ 
if]] 
(]] 
!]] 
FixedDuration]] 
.]] 
HasValue]] '
&&]]( *
output]]+ 1
.]]1 2

Attributes]]2 <
.]]< =
ContainsName]]= I
(]]I J
$str]]J `
)]]` a
)]]a b
{^^ 
TimeSpan__ 
timespan__ !
;__! "
if`` 
(`` 
TimeSpan`` 
.`` 
TryParse`` %
(``% &
Convert``& -
.``- .
ToString``. 6
(``6 7
output``7 =
.``= >

Attributes``> H
[``H I
$str``I _
]``_ `
.``` a
Value``a f
)``f g
,``g h
out``i l
timespan``m u
)``u v
)``v w
{aa 
FixedDurationbb !
=bb" #
timespanbb$ ,
;bb, -
}cc 
}dd 
ifff 
(ff 
!ff 
SlidingDurationff  
.ff  !
HasValueff! )
&&ff* ,
outputff- 3
.ff3 4

Attributesff4 >
.ff> ?
ContainsNameff? K
(ffK L
$strffL d
)ffd e
)ffe f
{gg 
TimeSpanhh 
timespanhh !
;hh! "
ifii 
(ii 
TimeSpanii 
.ii 
TryParseii %
(ii% &
Convertii& -
.ii- .
ToStringii. 6
(ii6 7
outputii7 =
.ii= >

Attributesii> H
[iiH I
$striiI a
]iia b
.iib c
Valueiic h
)iih i
,iii j
outiik n
timespaniio w
)iiw x
)iix y
{jj 
SlidingDurationkk #
=kk$ %
timespankk& .
;kk. /
}ll 
}mm 
varoo 
shapeoo 
=oo 
awaitoo 
_shapeFactoryoo +
.oo+ ,
CreateAsyncoo, 7
(oo7 8
Typeoo8 <
,oo< =
	Argumentsoo> G
.ooG H
FromooH L
(ooL M

propertiesooM W
)ooW X
)ooX Y
;ooY Z
ifqq 
(qq 
outputqq 
.qq 

Attributesqq !
.qq! "
ContainsNameqq" .
(qq. /
$strqq/ 3
)qq3 4
)qq4 5
{rr 
shapess 
.ss 
Idss 
=ss 
Convertss "
.ss" #
ToStringss# +
(ss+ ,
outputss, 2
.ss2 3

Attributesss3 =
[ss= >
$strss> B
]ssB C
.ssC D
ValuessD I
)ssI J
;ssJ K
}tt 
ifvv 
(vv 
outputvv 
.vv 

Attributesvv !
.vv! "
ContainsNamevv" .
(vv. /
$strvv/ :
)vv: ;
)vv; <
{ww 
shapexx 
.xx 
Metadataxx 
.xx 

Alternatesxx )
.xx) *
Addxx* -
(xx- .
Convertxx. 5
.xx5 6
ToStringxx6 >
(xx> ?
outputxx? E
.xxE F

AttributesxxF P
[xxP Q
$strxxQ \
]xx\ ]
.xx] ^
Valuexx^ c
)xxc d
)xxd e
;xxe f
}yy 
if{{ 
({{ 
output{{ 
.{{ 

Attributes{{ !
.{{! "
ContainsName{{" .
({{. /
$str{{/ 8
){{8 9
){{9 :
{|| 
shape}} 
.}} 
Metadata}} 
.}} 
Wrappers}} '
.}}' (
Add}}( +
(}}+ ,
Convert}}, 3
.}}3 4
ToString}}4 <
(}}< =
output}}= C
.}}C D

Attributes}}D N
[}}N O
$str}}O X
]}}X Y
.}}Y Z
Value}}Z _
)}}_ `
)}}` a
;}}a b
}~~ 
tagHelperContext
ÄÄ 
.
ÄÄ 
Items
ÄÄ "
.
ÄÄ" #
Add
ÄÄ# &
(
ÄÄ& '
typeof
ÄÄ' -
(
ÄÄ- .
IShape
ÄÄ. 4
)
ÄÄ4 5
,
ÄÄ5 6
shape
ÄÄ7 <
)
ÄÄ< =
;
ÄÄ= >
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
string
ÇÇ 
.
ÇÇ  
IsNullOrWhiteSpace
ÇÇ *
(
ÇÇ* +
Cache
ÇÇ+ 0
)
ÇÇ0 1
)
ÇÇ1 2
{
ÉÉ 
var
ÑÑ 
metadata
ÑÑ 
=
ÑÑ 
shape
ÑÑ $
.
ÑÑ$ %
Metadata
ÑÑ% -
;
ÑÑ- .
metadata
ÜÜ 
.
ÜÜ 
Cache
ÜÜ 
(
ÜÜ 
Cache
ÜÜ $
)
ÜÜ$ %
;
ÜÜ% &
if
àà 
(
àà 
FixedDuration
àà !
.
àà! "
HasValue
àà" *
)
àà* +
{
ââ 
metadata
ää 
.
ää 
Cache
ää "
(
ää" #
)
ää# $
.
ää$ %
WithExpiryAfter
ää% 4
(
ää4 5
FixedDuration
ää5 B
.
ääB C
Value
ääC H
)
ääH I
;
ääI J
}
ãã 
if
çç 
(
çç 
SlidingDuration
çç #
.
çç# $
HasValue
çç$ ,
)
çç, -
{
éé 
metadata
èè 
.
èè 
Cache
èè "
(
èè" #
)
èè# $
.
èè$ %
WithExpirySliding
èè% 6
(
èè6 7
SlidingDuration
èè7 F
.
èèF G
Value
èèG L
)
èèL M
;
èèM N
}
êê 
if
íí 
(
íí 
!
íí 
string
íí 
.
íí  
IsNullOrWhiteSpace
íí .
(
íí. /
Context
íí/ 6
)
íí6 7
)
íí7 8
{
ìì 
var
îî 
contexts
îî  
=
îî! "
Context
îî# *
.
îî* +
Split
îî+ 0
(
îî0 1

Separators
îî1 ;
,
îî; < 
StringSplitOptions
îî= O
.
îîO P 
RemoveEmptyEntries
îîP b
)
îîb c
;
îîc d
metadata
ïï 
.
ïï 
Cache
ïï "
(
ïï" #
)
ïï# $
.
ïï$ %

AddContext
ïï% /
(
ïï/ 0
contexts
ïï0 8
)
ïï8 9
;
ïï9 :
}
ññ 
if
òò 
(
òò 
!
òò 
string
òò 
.
òò  
IsNullOrWhiteSpace
òò .
(
òò. /
Tag
òò/ 2
)
òò2 3
)
òò3 4
{
ôô 
var
öö 
tags
öö 
=
öö 
Tag
öö "
.
öö" #
Split
öö# (
(
öö( )

Separators
öö) 3
,
öö3 4 
StringSplitOptions
öö5 G
.
ööG H 
RemoveEmptyEntries
ööH Z
)
ööZ [
;
öö[ \
metadata
õõ 
.
õõ 
Cache
õõ "
(
õõ" #
)
õõ# $
.
õõ$ %
AddTag
õõ% +
(
õõ+ ,
tags
õõ, 0
)
õõ0 1
;
õõ1 2
}
úú 
}
ùù 
await
üü 
output
üü 
.
üü "
GetChildContentAsync
üü -
(
üü- .
)
üü. /
;
üü/ 0
output
°° 
.
°° 
Content
°° 
.
°° 
SetHtmlContent
°° )
(
°°) *
await
°°* /
_displayHelper
°°0 >
.
°°> ?
ShapeExecuteAsync
°°? P
(
°°P Q
shape
°°Q V
)
°°V W
)
°°W X
;
°°X Y
output
§§ 
.
§§ 
TagName
§§ 
=
§§ 
null
§§ !
;
§§! "
}
•• 	
}
¶¶ 
}ßß ‘
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ClearAlternatesTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str )
,) *
	ParentTag+ 4
=5 6"
ShapeMetadataTagHelper7 M
.M N
TagNameN U
,U V
TagStructureW c
=d e
TagStructuref r
.r s
WithoutEndTag	s Ä
)
Ä Å
]
Å Ç
public 

class $
ClearAlternatesTagHelper )
:* +
	TagHelper, 5
{ 
public		 
override		 
Task		 
ProcessAsync		 )
(		) *
TagHelperContext		* :
context		; B
,		B C
TagHelperOutput		D S
output		T Z
)		Z [
{

 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Metadata 
. 

Alternates &
.& '
Clear' ,
(, -
)- .
;. /
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} §
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ClearClassesTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str &
,& '
TagStructure( 4
=5 6
TagStructure7 C
.C D
WithoutEndTagD Q
)Q R
]R S
public 

class !
ClearClassesTagHelper &
:' (
	TagHelper) 2
{ 
public		 
override		 
Task		 
ProcessAsync		 )
(		) *
TagHelperContext		* :
context		; B
,		B C
TagHelperOutput		D S
output		T Z
)		Z [
{

 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Classes 
. 
Clear  
(  !
)! "
;" #
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
}  
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ClearWrappersTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str '
,' (
	ParentTag) 2
=3 4"
ShapeMetadataTagHelper5 K
.K L
TagNameL S
,S T
TagStructureU a
=b c
TagStructured p
.p q
WithoutEndTagq ~
)~ 
]	 Ä
public 

class "
ClearWrappersTagHelper '
:( )
	TagHelper* 3
{ 
public		 
override		 
Task		 
ProcessAsync		 )
(		) *
TagHelperContext		* :
context		; B
,		B C
TagHelperOutput		D S
output		T Z
)		Z [
{

 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Metadata 
. 
Wrappers $
.$ %
Clear% *
(* +
)+ ,
;, -
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ¬
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\InputIsDisabledTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes  *
=+ ,
ForAttributeName- =
+> ?
$str@ C
+D E#
IsDisabledAttributeNameF ]
)] ^
]^ _
public 

class $
InputIsDisabledTagHelper )
:* +
	TagHelper, 5
{ 
private 
const 
string 
ForAttributeName -
=. /
$str0 9
;9 :
private		 
const		 
string		 #
IsDisabledAttributeName		 4
=		5 6
$str		7 H
;		H I
[ 	
HtmlAttributeName	 
( 
$str ,
), -
]- .
public 
bool 

IsDisabled 
{  
set! $
;$ %
get& )
;) *
}+ ,
public 
override 
void 
Process $
($ %
TagHelperContext% 5
context6 =
,= >
TagHelperOutput? N
outputO U
)U V
{ 	
if 
( 

IsDisabled 
) 
{ 
var 
d 
= 
new 
TagHelperAttribute .
(. /
$str/ 9
,9 :
$str; E
)E F
;F G
output 
. 

Attributes !
.! "
Add" %
(% &
d& '
)' (
;( )
} 
} 	
} 
} Ü
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\RemoveAlternateTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str )
,) *
	ParentTag+ 4
=5 6"
ShapeMetadataTagHelper7 M
.M N
TagNameN U
,U V

AttributesW a
=b c
$strd j
,j k
TagStructurel x
=y z
TagStructure	{ á
.
á à
WithoutEndTag
à ï
)
ï ñ
]
ñ ó
public 

class $
RemoveAlternateTagHelper )
:* +
	TagHelper, 5
{		 
public

 
override

 
Task

 
ProcessAsync

 )
(

) *
TagHelperContext

* :
context

; B
,

B C
TagHelperOutput

D S
output

T Z
)

Z [
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Metadata 
. 

Alternates &
.& '
Remove' -
(- .
Convert. 5
.5 6
ToString6 >
(> ?
output? E
.E F

AttributesF P
[P Q
$strQ W
]W X
.X Y
ValueY ^
)^ _
)_ `
;` a
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} –
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\RemoveClassTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str %
,% &

Attributes' 1
=2 3
$str4 :
,: ;
TagStructure< H
=I J
TagStructureK W
.W X
WithoutEndTagX e
)e f
]f g
public 

class  
RemoveClassTagHelper %
:& '
	TagHelper( 1
{		 
public

 
override

 
Task

 
ProcessAsync

 )
(

) *
TagHelperContext

* :
context

; B
,

B C
TagHelperOutput

D S
output

T Z
)

Z [
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Classes 
. 
Remove !
(! "
Convert" )
.) *
ToString* 2
(2 3
output3 9
.9 :

Attributes: D
[D E
$strE K
]K L
.L M
ValueM R
)R S
)S T
;T U
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} Ä
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\RemoveWrapperTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str '
,' (
	ParentTag) 2
=3 4"
ShapeMetadataTagHelper5 K
.K L
TagNameL S
,S T

AttributesU _
=` a
$strb h
,h i
TagStructurej v
=w x
TagStructure	y Ö
.
Ö Ü
WithoutEndTag
Ü ì
)
ì î
]
î ï
public 

class "
RemoveWrapperTagHelper '
:( )
	TagHelper* 3
{		 
public

 
override

 
Task

 
ProcessAsync

 )
(

) *
TagHelperContext

* :
context

; B
,

B C
TagHelperOutput

D S
output

T Z
)

Z [
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
shape 
? 
. 
Metadata 
. 
Wrappers $
.$ %
Remove% +
(+ ,
Convert, 3
.3 4
ToString4 <
(< =
output= C
.C D

AttributesD N
[N O
$strO U
]U V
.V W
ValueW \
)\ ]
)] ^
;^ _
output 
. 
SuppressOutput !
(! "
)" #
;# $
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ›
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ShapeMetadataTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
TagName 
, 
TagStructure  ,
=- .
TagStructure/ ;
.; <
NormalOrSelfClosing< O
)O P
]P Q
public 

class "
ShapeMetadataTagHelper '
:( )
	TagHelper* 3
{		 
internal

 
const

 
string

 
TagName

 %
=

& '
$str

( 2
;

2 3
public 
override 
async 
Task "
ProcessAsync# /
(/ 0
TagHelperContext0 @
contextA H
,H I
TagHelperOutputJ Y
outputZ `
)` a
{ 	
var 
shape 
= 
( 
IShape 
)  
context  '
.' (
Items( -
[- .
typeof. 4
(4 5
IShape5 ;
); <
]< =
;= >
if 
( 
shape 
!= 
null 
&&  
output! '
.' (

Attributes( 2
.2 3
ContainsName3 ?
(? @
$str@ N
)N O
)O P
{ 
shape 
. 
Metadata 
. 
DisplayType *
=+ ,
Convert- 4
.4 5
ToString5 =
(= >
output> D
.D E

AttributesE O
[O P
$strP ^
]^ _
._ `
Value` e
)e f
;f g
} 
await 
output 
.  
GetChildContentAsync -
(- .
). /
;/ 0
output 
. 
SuppressOutput !
(! "
)" #
;# $
} 	
} 
} Û	
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ShapeTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes  *
=+ ,
nameof- 3
(3 4
Type4 8
)8 9
)9 :
]: ;
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes  *
=+ ,
PropertyPrefix- ;
+< =
$str> A
)A B
]B C
public 

class 
ShapeTagHelper 
:  !
BaseShapeTagHelper" 4
{ 
public		 
ShapeTagHelper		 
(		 
IShapeFactory		 +
shapeFactory		, 8
,		8 9
IDisplayHelper		: H
displayHelper		I V
)		V W
:

 
base

 
(

 
shapeFactory

 
,

  
displayHelper

! .
)

. /
{ 	
} 	
} 
} ¸+
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ValidationMessageTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{ 
[ 
HtmlTargetElement 
( 
$str 
, 

Attributes &
=' (&
ValidationForAttributeName) C
)C D
]D E
public 

class &
ValidationMessageTagHelper +
:, -
	TagHelper. 7
{ 
private 
const 
string &
ValidationForAttributeName 7
=8 9
$str: T
;T U
private 
const 
string '
HasValidationErrorClassName 8
=9 :
$str; Q
;Q R
private 
readonly 
IHtmlHelper $
_htmlHelper% 0
;0 1
public &
ValidationMessageTagHelper )
() *
IHtmlHelper* 5

htmlHelper6 @
)@ A
{ 	
_htmlHelper 
= 

htmlHelper $
;$ %
} 	
public 
override 
int 
Order !
{ 	
get 
{ 
return 
- 
$num 
; 
} 
}   	
["" 	!
HtmlAttributeNotBound""	 
]"" 
[## 	
ViewContext##	 
]## 
public$$ 
ViewContext$$ 
ViewContext$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
[)) 	
HtmlAttributeName))	 
()) &
ValidationForAttributeName)) 5
)))5 6
]))6 7
public** 
ModelExpression** 
For** "
{**# $
get**% (
;**( )
set*** -
;**- .
}**/ 0
public.. 
override.. 
async.. 
Task.. "
ProcessAsync..# /
(../ 0
TagHelperContext..0 @
context..A H
,..H I
TagHelperOutput..J Y
output..Z `
)..` a
{// 	
if00 
(00 
context00 
==00 
null00 
)00  
{11 
throw22 
new22 !
ArgumentNullException22 /
(22/ 0
nameof220 6
(226 7
context227 >
)22> ?
)22? @
;22@ A
}33 
if55 
(55 
output55 
==55 
null55 
)55 
{66 
throw77 
new77 !
ArgumentNullException77 /
(77/ 0
nameof770 6
(776 7
output777 =
)77= >
)77> ?
;77? @
}88 
if:: 
(:: 
For:: 
!=:: 
null:: 
):: 
{;; 
var== 
viewContextAware== $
===% &
_htmlHelper==' 2
as==3 5
IViewContextAware==6 G
;==G H
viewContextAware>>  
?>>  !
.>>! "
Contextualize>>" /
(>>/ 0
ViewContext>>0 ;
)>>; <
;>>< =
var@@ 
fullName@@ 
=@@ 
_htmlHelper@@ *
.@@* +
GenerateIdFromName@@+ =
(@@= >
For@@> A
.@@A B
Name@@B F
)@@F G
;@@G H
ifBB 
(BB 
ViewContextBB 
.BB  
ViewDataBB  (
.BB( )

ModelStateBB) 3
.BB3 4
TryGetValueBB4 ?
(BB? @
fullNameBB@ H
,BBH I
outBBJ M
varBBN Q
entryBBR W
)BBW X
&&BBY [
entryBB\ a
.BBa b
ErrorsBBb h
.BBh i
CountBBi n
>BBo p
$numBBq r
)BBr s
{CC 
TagHelperAttributeDD &
classAttributeDD' 5
;DD5 6
ifFF 
(FF 
outputFF 
.FF 

AttributesFF )
.FF) *
TryGetAttributeFF* 9
(FF9 :
$strFF: A
,FFA B
outFFC F
classAttributeFFG U
)FFU V
)FFV W
{GG 
outputHH 
.HH 

AttributesHH )
.HH) *
SetAttributeHH* 6
(HH6 7
$strHH7 >
,HH> ?
classAttributeHH@ N
.HHN O
ValueHHO T
+HHU V
$strHHW Z
+HH[ \'
HasValidationErrorClassNameHH] x
)HHx y
;HHy z
}II 
elseJJ 
{KK 
outputLL 
.LL 

AttributesLL )
.LL) *
AddLL* -
(LL- .
$strLL. 5
,LL5 6'
HasValidationErrorClassNameLL7 R
)LLR S
;LLS T
}MM 
}NN 
ifSS 
(SS 
!SS 
outputSS 
.SS 
IsContentModifiedSS -
)SS- .
{TT 
varUU 
childContentUU $
=UU% &
awaitUU' ,
outputUU- 3
.UU3 4 
GetChildContentAsyncUU4 H
(UUH I
)UUI J
;UUJ K
outputVV 
.VV 
ContentVV "
.VV" #
SetHtmlContentVV# 1
(VV1 2
childContentVV2 >
)VV> ?
;VV? @
}WW 
}XX 
}YY 	
}ZZ 
}[[ •
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\TagHelpers\ZoneTagHelper.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

TagHelpers( 2
{		 
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
 
,

 

Attributes

 )
=

* +
NameAttribute

, 9
)

9 :
]

: ;
public 

class 
ZoneTagHelper 
:  
	TagHelper! *
{ 
private 
const 
string 
PositionAttribute .
=/ 0
$str1 ;
;; <
private 
const 
string 
NameAttribute *
=+ ,
$str- 3
;3 4
private 
readonly 
ILayoutAccessor (
_layoutAccessor) 8
;8 9
public 
ZoneTagHelper 
( 
ILayoutAccessor ,
layoutAccessor- ;
); <
{ 	
_layoutAccessor 
= 
layoutAccessor ,
;, -
} 	
[ 	
HtmlAttributeName	 
( 
PositionAttribute ,
), -
]- .
public 
string 
Position 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
HtmlAttributeName	 
( 
NameAttribute (
)( )
]) *
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
async 
override 
Task "
ProcessAsync# /
(/ 0
TagHelperContext0 @
contextA H
,H I
TagHelperOutputJ Y
outputZ `
)` a
{ 	
if 
( 
String 
. 
IsNullOrEmpty $
($ %
Name% )
)) *
)* +
{   
throw!! 
new!! 
ArgumentException!! +
(!!+ ,
$str!!, O
)!!O P
;!!P Q
}"" 
var$$ 
childContent$$ 
=$$ 
await$$ $
output$$% +
.$$+ , 
GetChildContentAsync$$, @
($$@ A
)$$A B
;$$B C
dynamic%% 
layout%% 
=%% 
await%% "
_layoutAccessor%%# 2
.%%2 3
GetLayoutAsync%%3 A
(%%A B
)%%B C
;%%C D
var&& 
zone&& 
=&& 
layout&& 
.&& 
Zones&& #
[&&# $
Name&&$ (
]&&( )
;&&) *
if(( 
((( 
zone(( 
is(( 
ZoneOnDemand(( $
zoneOnDemand((% 1
)((1 2
{)) 
await** 
zoneOnDemand** "
.**" #
AddAsync**# +
(**+ ,
childContent**, 8
,**8 9
Position**: B
)**B C
;**C D
}++ 
else,, 
if,, 
(,, 
zone,, 
is,, 
Shape,, "
shape,,# (
),,( )
{-- 
shape.. 
... 
Add.. 
(.. 
childContent.. &
,..& '
Position..( 0
)..0 1
;..1 2
}// 
output22 
.22 
SuppressOutput22 !
(22! "
)22" #
;22# $
}33 	
}44 
}55 £
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\IThemeManager.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Theming( /
{ 
public 

	interface 
IThemeManager "
{ 
Task 
< 
IExtensionInfo 
> 
GetThemeAsync *
(* +
)+ ,
;, -
}		 
}

 ™
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\IThemeSelector.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Theming( /
{ 
public

 

	interface

 
IThemeSelector

 #
{ 
Task 
< 
ThemeSelectorResult  
>  !
GetThemeAsync" /
(/ 0
)0 1
;1 2
} 
} ¢
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\ThemeLayout.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Theming( /
{ 
public 

class 
ThemeLayout 
: 
Razor $
.$ %
	RazorPage% .
<. /
dynamic/ 6
>6 7
{ 
public 
override 
async 
Task "
ExecuteAsync# /
(/ 0
)0 1
{ 	
var 
body 
= 
RenderLayoutBody '
(' (
)( )
;) *
if 
( 
ThemeLayout 
!= 
null #
)# $
{ 
ThemeLayout 
. 
Content #
.# $
Add$ '
(' (
body( ,
), -
;- .
if 
( 
ThemeLayout 
.  
Content  '
is( *
IShape+ 1
content2 9
)9 :
{ 
var   
htmlContent   #
=  $ %
await  & +
DisplayAsync  , 8
(  8 9
content  9 @
)  @ A
;  A B
ThemeLayout!! 
.!!  
Content!!  '
=!!( )
htmlContent!!* 5
;!!5 6
}"" 
if$$ 
($$ 
ThemeLayout$$ 
is$$  "
ZoneHolding$$# .
layout$$/ 5
)$$5 6
{%% 
foreach&& 
(&& 
var&&  
zone&&! %
in&&& (
layout&&) /
.&&/ 0

Properties&&0 :
.&&: ;
ToArray&&; B
(&&B C
)&&C D
)&&D E
{'' 
if(( 
((( 
!(( 
((( 
zone(( "
.((" #
Value((# (
is(() +
ZoneOnDemand((, 8
)((8 9
&&((: <
zone((= A
.((A B
Value((B G
is((H J
IShape((K Q
shape((R W
)((W X
{)) 
var++ 
htmlZone++  (
=++) *
await+++ 0
DisplayAsync++1 =
(++= >
shape++> C
)++C D
;++D E
layout,, "
.,," #

Properties,,# -
[,,- .
zone,,. 2
.,,2 3
Key,,3 6
],,6 7
=,,8 9
htmlZone,,: B
;,,B C
}-- 
}.. 
}// 
Write22 
(22 
await22 
DisplayAsync22 (
(22( )
ThemeLayout22) 4
)224 5
)225 6
;226 7
}33 
else44 
{55 
Write66 
(66 
body66 
)66 
;66 
}77 
}88 	
}99 
}:: ‹
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\ThemeManager.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Theming( /
{ 
public 

class 
ThemeManager 
: 
IThemeManager  -
{		 
private

 
readonly

 
IEnumerable

 $
<

$ %
IThemeSelector

% 3
>

3 4
_themeSelectors

5 D
;

D E
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
IExtensionInfo 
_theme %
;% &
public 
ThemeManager 
( 
IEnumerable 
< 
IThemeSelector &
>& '
themeSelectors( 6
,6 7
IExtensionManager 
extensionManager .
). /
{ 	
_themeSelectors 
= 
themeSelectors ,
;, -
_extensionManager 
= 
extensionManager  0
;0 1
} 	
public 
async 
Task 
< 
IExtensionInfo (
>( )
GetThemeAsync* 7
(7 8
)8 9
{ 	
if 
( 
_theme 
== 
null 
) 
{ 
var 
themeResults  
=! "
new# &
List' +
<+ ,
ThemeSelectorResult, ?
>? @
(@ A
)A B
;B C
foreach 
( 
var 
themeSelector *
in+ -
_themeSelectors. =
)= >
{ 
var   
themeResult   #
=  $ %
await  & +
themeSelector  , 9
.  9 :
GetThemeAsync  : G
(  G H
)  H I
;  I J
if!! 
(!! 
themeResult!! #
!=!!$ &
null!!' +
)!!+ ,
{"" 
themeResults## $
.##$ %
Add##% (
(##( )
themeResult##) 4
)##4 5
;##5 6
}$$ 
}%% 
themeResults'' 
.'' 
Sort'' !
(''! "
(''" #
x''# $
,''$ %
y''& '
)''' (
=>'') +
y'', -
.''- .
Priority''. 6
.''6 7
	CompareTo''7 @
(''@ A
x''A B
.''B C
Priority''C K
)''K L
)''L M
;''M N
if)) 
()) 
themeResults))  
.))  !
Count))! &
==))' )
$num))* +
)))+ ,
{** 
return++ 
null++ 
;++  
},, 
foreach// 
(// 
var// 
theme// "
in//# %
themeResults//& 2
)//2 3
{00 
var11 
t11 
=11 
_extensionManager11 -
.11- .
GetExtension11. :
(11: ;
theme11; @
.11@ A
	ThemeName11A J
)11J K
;11K L
if33 
(33 
t33 
.33 
Exists33  
)33  !
{44 
return55 
_theme55 %
=55& '
new55( +
ThemeExtensionInfo55, >
(55> ?
t55? @
)55@ A
;55A B
}66 
}77 
return:: 
null:: 
;:: 
};; 
return== 
_theme== 
;== 
}>> 	
}?? 
}@@ Õ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\ThemeSelectorResult.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Theming( /
{ 
public 

class 
ThemeSelectorResult $
{ 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	ThemeName 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} Å
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\ThemeViewStart.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Theming( /
{ 
public 

class 
ThemeViewStart 
:  !
	RazorPage" +
<+ ,
dynamic, 3
>3 4
{ 
public 
override 
async 
Task "
ExecuteAsync# /
(/ 0
)0 1
{ 	
var 
themeManager 
= 
Context &
.& '
RequestServices' 6
.6 7
GetRequiredService7 I
<I J
IThemeManagerJ W
>W X
(X Y
)Y Z
;Z [
var 
theme 
= 
await 
themeManager *
.* +
GetThemeAsync+ 8
(8 9
)9 :
;: ;
if 
( 
theme 
== 
null 
) 
{ 
return 
; 
} 
Layout 
= '
ThemingViewsFeatureProvider 0
.0 1
ThemeLayoutFileName1 D
;D E
} 	
} 
} Ú
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Theming\ThemingViewsFeatureProvider.cs
	namespace		 	
OrchardCore		
 
.		 
DisplayManagement		 '
.		' (
Theming		( /
{

 
public 

class '
ThemingViewsFeatureProvider ,
:- .'
IApplicationFeatureProvider/ J
<J K
ViewsFeatureK W
>W X
{ 
public 
static 
string 
ThemeLayoutFileName 0
=1 2
$str3 T
+U V
RazorViewEngineW f
.f g
ViewExtensiong t
;t u
public '
ThemingViewsFeatureProvider *
(* +
)+ ,
{ 	
} 	
public 
void 
PopulateFeature #
(# $
IEnumerable$ /
</ 0
ApplicationPart0 ?
>? @
partsA F
,F G
ViewsFeatureH T
featureU \
)\ ]
{ 	
feature 
. 
ViewDescriptors #
.# $
Add$ '
(' (
new( +"
CompiledViewDescriptor, B
(B C
)C D
{ 
ExpirationTokens  
=! "
Array# (
.( )
Empty) .
<. /
IChangeToken/ ;
>; <
(< =
)= >
,> ?
RelativePath 
= 
$str ,
+- .
RazorViewEngine/ >
.> ?
ViewExtension? L
,L M
Item 
= 
new !
RazorViewCompiledItem 0
(0 1
typeof1 7
(7 8
ThemeViewStart8 F
)F G
,G H
$strI X
,X Y
$strZ g
)g h
} 
) 
; 
feature 
. 
ViewDescriptors #
.# $
Add$ '
(' (
new( +"
CompiledViewDescriptor, B
(B C
)C D
{   
ExpirationTokens!!  
=!!! "
Array!!# (
.!!( )
Empty!!) .
<!!. /
IChangeToken!!/ ;
>!!; <
(!!< =
)!!= >
,!!> ?
RelativePath"" 
="" 
$char"" "
+""# $
ThemeLayoutFileName""% 8
,""8 9
Item## 
=## 
new## !
RazorViewCompiledItem## 0
(##0 1
typeof##1 7
(##7 8
ThemeLayout##8 C
)##C D
,##D E
$str##F U
,##U V
$char##W Z
+##[ \
ThemeLayoutFileName##] p
)##p q
}$$ 
)$$ 
;$$ 
}%% 	
}&& 
}''  

êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Title\IPageTitleBuilder.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Title( -
{ 
public 

	interface 
IPageTitleBuilder &
{ 
void

 
Clear

 
(

 
)

 
;

 
void 

AddSegment 
( 
IHtmlContent $
segment% ,
,, -
string. 4
position5 =
=> ?
$str@ C
)C D
;D E
IHtmlContent 
GenerateTitle "
(" #
IHtmlContent# /
	separator0 9
)9 :
;: ;
} 
public 

static 
class &
PageTitleBuilderExtensions 2
{ 
public!! 
static!! 
IHtmlContent!! "
GenerateTitle!!# 0
(!!0 1
this!!1 5
IPageTitleBuilder!!6 G
builder!!H O
)!!O P
{"" 	
return## 
builder## 
.## 
GenerateTitle## (
(##( )
null##) -
)##- .
;##. /
}$$ 	
}%% 
}&& ô)
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Title\PageTitleBuilder.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Title( -
{ 
public 

class 
PageTitleBuilder !
:" #
IPageTitleBuilder$ 5
{ 
private		 
readonly		 
static		 

HtmlString		  *!
DefaultTitleSeparator		+ @
=		A B
new		C F

HtmlString		G Q
(		Q R
$str		R W
)		W X
;		X Y
private 
readonly 
List 
< 
PositionalTitlePart 1
>1 2
_titleParts3 >
;> ?
private 
IHtmlContent 
_title #
;# $
public 
PageTitleBuilder 
(  
)  !
{ 	
_titleParts 
= 
new 
List "
<" #
PositionalTitlePart# 6
>6 7
(7 8
$num8 9
)9 :
;: ;
} 	
public 
void 

AddSegment 
( 
IHtmlContent +
	titlePart, 5
,5 6
string7 =
position> F
)F G
{ 	
_title 
= 
null 
; 
_titleParts 
. 
Add 
( 
new 
PositionalTitlePart  3
{ 
Value 
= 
	titlePart !
,! "
Position 
= 
position #
} 
) 
; 
} 	
public 
void 
AddSegments 
(  
IEnumerable  +
<+ ,
IHtmlContent, 8
>8 9

titleParts: D
,D E
stringF L
positionM U
)U V
{ 	
foreach   
(   
var   
	titlePart   "
in  # %

titleParts  & 0
)  0 1
{!! 

AddSegment"" 
("" 
	titlePart"" $
,""$ %
position""& .
)"". /
;""/ 0
}## 
}$$ 	
public&& 
IHtmlContent&& 
GenerateTitle&& )
(&&) *
IHtmlContent&&* 6
	separator&&7 @
)&&@ A
{'' 	
if(( 
((( 
_title(( 
!=(( 
null(( 
)(( 
{)) 
return** 
_title** 
;** 
}++ 
if-- 
(-- 
	separator-- 
==-- 
null-- !
)--! "
{.. 
	separator// 
=// !
DefaultTitleSeparator// 1
;//1 2
}00 
_titleParts22 
.22 
Sort22 
(22  
FlatPositionComparer22 1
.221 2
Instance222 :
)22: ;
;22; <
var44 
htmlContentBuilder44 "
=44# $
new44% (
HtmlContentBuilder44) ;
(44; <
)44< =
;44= >
if66 
(66 
_titleParts66 
.66 
Count66 !
==66" $
$num66% &
)66& '
{77 
return88 

HtmlString88 !
.88! "
Empty88" '
;88' (
}99 
for;; 
(;; 
var;; 
i;; 
=;; 
$num;; 
;;; 
i;; 
<;; 
_titleParts;;  +
.;;+ ,
Count;;, 1
;;;1 2
i;;3 4
++;;4 6
);;6 7
{<< 
htmlContentBuilder== "
.==" #

AppendHtml==# -
(==- .
_titleParts==. 9
[==9 :
i==: ;
]==; <
.==< =
Value=== B
)==B C
;==C D
if?? 
(?? 
i?? 
<?? 
_titleParts?? #
.??# $
Count??$ )
-??* +
$num??, -
)??- .
{@@ 
htmlContentBuilderAA &
.AA& '

AppendHtmlAA' 1
(AA1 2
	separatorAA2 ;
)AA; <
;AA< =
}BB 
}CC 
_titleEE 
=EE 
htmlContentBuilderEE '
;EE' (
returnGG 
_titleGG 
;GG 
}HH 	
publicJJ 
voidJJ 
ClearJJ 
(JJ 
)JJ 
{KK 	
_titlePartsLL 
.LL 
ClearLL 
(LL 
)LL 
;LL  
}MM 	
}NN 
internalPP 
classPP 
PositionalTitlePartPP &
:PP' (
IPositionedPP) 4
{QQ 
publicRR 
stringRR 
PositionRR 
{RR  
getRR! $
;RR$ %
setRR& )
;RR) *
}RR+ ,
publicSS 
IHtmlContentSS 
ValueSS !
{SS" #
getSS$ '
;SS' (
setSS) ,
;SS, -
}SS. /
}TT 
}UU è
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ViewContextAccessor.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
{ 
public 

class 
ViewContextAccessor $
{ 
public 
ViewContext 
ViewContext &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
}		 ˘

íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\ViewModels\GroupViewModel.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (

ViewModels( 2
{ 
public 

class 
GroupViewModel 
:  !
Shape" '
{ 
public 
string 

Identifier  
{! "
get# &
;& '
set( +
;+ ,
}- .
}		 
public 

class 
GroupingsViewModel #
:$ %
GroupViewModel& 4
{ 
public 
	IGrouping 
< 
string 
,  
object! '
>' (
[( )
]) *
	Groupings+ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
public 

class 
GroupingViewModel "
:# $
GroupViewModel% 3
{ 
public 
	IGrouping 
< 
string 
,  
object! '
>' (
Grouping) 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
} ›
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Views\CombinedResult.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Views( -
{ 
public 

class 
CombinedResult 
:  !
IDisplayResult" 0
{ 
private		 
readonly		 
IEnumerable		 $
<		$ %
IDisplayResult		% 3
>		3 4
_results		5 =
;		= >
public 
CombinedResult 
( 
params $
IDisplayResult% 3
[3 4
]4 5
results6 =
)= >
{ 	
_results 
= 
results 
; 
} 	
public 
CombinedResult 
( 
IEnumerable )
<) *
IDisplayResult* 8
>8 9
results: A
)A B
{ 	
_results 
= 
results 
; 
} 	
public 
async 
Task 

ApplyAsync $
($ %
BuildDisplayContext% 8
context9 @
)@ A
{ 	
foreach 
( 
var 
result 
in  "
_results# +
)+ ,
{ 
await 
result 
. 

ApplyAsync '
(' (
context( /
)/ 0
;0 1
} 
} 	
public 
async 
Task 

ApplyAsync $
($ %
BuildEditorContext% 7
context8 ?
)? @
{ 	
foreach 
( 
var 
result 
in  "
_results# +
)+ ,
{   
await!! 
result!! 
.!! 

ApplyAsync!! '
(!!' (
context!!( /
)!!/ 0
;!!0 1
}"" 
}## 	
public%% 
IEnumerable%% 
<%% 
IDisplayResult%% )
>%%) *

GetResults%%+ 5
(%%5 6
)%%6 7
{&& 	
return'' 
_results'' 
;'' 
}(( 	
})) 
}** ¶
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Views\IDisplayResult.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Views( -
{ 
public 

	interface 
IDisplayResult #
{ 
Task 

ApplyAsync 
( 
BuildDisplayContext +
context, 3
)3 4
;4 5
Task		 

ApplyAsync		 
(		 
BuildEditorContext		 *
context		+ 2
)		2 3
;		3 4
}

 
} ùö
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Views\ShapeResult.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Views( -
{ 
public 

class 
ShapeResult 
: 
IDisplayResult -
{ 
private 
string 
_defaultLocation '
;' (
private 

Dictionary 
< 
string !
,! "
string# )
>) *
_otherLocations+ :
;: ;
private 
string 
_name 
; 
private 
string 
_differentiator &
;& '
private 
string 
_prefix 
; 
private 
string 
_cacheId 
;  
private 
readonly 
string 

_shapeType  *
;* +
private 
readonly 
Func 
< 
IBuildShapeContext 0
,0 1
	ValueTask2 ;
<; <
IShape< B
>B C
>C D
_shapeBuilderE R
;R S
private 
readonly 
Func 
< 
IShape $
,$ %
Task& *
>* +
_processing, 7
;7 8
private 
Action 
< 
CacheContext #
># $
_cache% +
;+ ,
private 
string 
_groupId 
;  
private 
Action 
< 
ShapeDisplayContext *
>* +
_displaying, 7
;7 8
private 
Func 
< 
Task 
< 
bool 
> 
>  !
_renderPredicateAsync! 6
;6 7
public 
ShapeResult 
( 
string !
	shapeType" +
,+ ,
Func- 1
<1 2
IBuildShapeContext2 D
,D E
	ValueTaskF O
<O P
IShapeP V
>V W
>W X
shapeBuilderY e
)e f
: 
this 
( 
	shapeType 
, 
shapeBuilder *
,* +
null, 0
)0 1
{ 	
}   	
public"" 
ShapeResult"" 
("" 
string"" !
	shapeType""" +
,""+ ,
Func""- 1
<""1 2
IBuildShapeContext""2 D
,""D E
	ValueTask""F O
<""O P
IShape""P V
>""V W
>""W X
shapeBuilder""Y e
,""e f
Func""g k
<""k l
IShape""l r
,""r s
Task""t x
>""x y

processing	""z Ñ
)
""Ñ Ö
{## 	

_shapeType'' 
='' 
	shapeType'' "
;''" #
_shapeBuilder(( 
=(( 
shapeBuilder(( (
;((( )
_processing)) 
=)) 

processing)) $
;))$ %
}** 	
public,, 
Task,, 

ApplyAsync,, 
(,, 
BuildDisplayContext,, 2
context,,3 :
),,: ;
{-- 	
return.. $
ApplyImplementationAsync.. +
(..+ ,
context.., 3
,..3 4
context..5 <
...< =
DisplayType..= H
)..H I
;..I J
}// 	
public11 
Task11 

ApplyAsync11 
(11 
BuildEditorContext11 1
context112 9
)119 :
{22 	
return33 $
ApplyImplementationAsync33 +
(33+ ,
context33, 3
,333 4
$str335 ;
)33; <
;33< =
}44 	
private66 
async66 
Task66 $
ApplyImplementationAsync66 3
(663 4
BuildShapeContext664 E
context66F M
,66M N
string66O U
displayType66V a
)66a b
{77 	
if99 
(99 
String99 
.99 
IsNullOrEmpty99 $
(99$ %
_defaultLocation99% 5
)995 6
)996 7
{:: 
_defaultLocation;;  
=;;! "
context;;# *
.;;* +
DefaultZone;;+ 6
;;;6 7
}<< 
var?? 
	placement?? 
=?? 
context?? #
.??# $
FindPlacement??$ 1
(??1 2

_shapeType??2 <
,??< =
_differentiator??> M
,??M N
displayType??O Z
,??Z [
context??\ c
)??c d
;??d e
ifBB 
(BB 
_otherLocationsBB 
!=BB  "
nullBB# '
)BB' (
{CC 
stringDD  
displayTypePlacementDD +
;DD+ ,
ifEE 
(EE 
_otherLocationsEE #
.EE# $
TryGetValueEE$ /
(EE/ 0
displayTypeEE0 ;
,EE; <
outEE= @ 
displayTypePlacementEEA U
)EEU V
)EEV W
{FF 
_defaultLocationGG $
=GG% & 
displayTypePlacementGG' ;
;GG; <
}HH 
}II 
ifLL 
(LL 
	placementLL 
==LL 
nullLL !
)LL! "
{MM 
	placementNN 
=NN 
newNN 
PlacementInfoNN  -
(NN- .
)NN. /
{NN0 1
LocationNN2 :
=NN; <
_defaultLocationNN= M
}NNN O
;NNO P
}OO 
ifQQ 
(QQ 
	placementQQ 
.QQ 
LocationQQ "
==QQ# %
nullQQ& *
)QQ* +
{RR 
	placementUU 
.UU 
LocationUU "
=UU# $
_defaultLocationUU% 5
;UU5 6
}VV 
ifXX 
(XX 
	placementXX 
.XX 
DefaultPositionXX )
==XX* ,
nullXX- 1
)XX1 2
{YY 
	placementZZ 
.ZZ 
DefaultPositionZZ )
=ZZ* +
contextZZ, 3
.ZZ3 4
DefaultPositionZZ4 C
;ZZC D
}[[ 
if^^ 
(^^ 
String^^ 
.^^ 
IsNullOrEmpty^^ $
(^^$ %
	placement^^% .
.^^. /
Location^^/ 7
)^^7 8
||^^9 ;
	placement^^< E
.^^E F
Location^^F N
==^^O Q
$str^^R U
)^^U V
{__ 
return`` 
;`` 
}aa 
_groupIddd 
=dd 
	placementdd  
.dd  !
GetGroupdd! )
(dd) *
)dd* +
??dd, .
_groupIddd/ 7
;dd7 8
ifgg 
(gg 
!gg 
Stringgg 
.gg 
Equalsgg 
(gg 
contextgg &
.gg& '
GroupIdgg' .
??gg/ 1
$strgg2 4
,gg4 5
_groupIdgg6 >
??gg? A
$strggB D
,ggD E
StringComparisonggF V
.ggV W
OrdinalIgnoreCaseggW h
)ggh i
)ggi j
{hh 
returnii 
;ii 
}jj 
ifmm 
(mm !
_renderPredicateAsyncmm %
!=mm& (
nullmm) -
&&mm. 0
!mm1 2
(mm2 3
awaitmm3 8!
_renderPredicateAsyncmm9 N
(mmN O
)mmO P
)mmP Q
)mmQ R
{nn 
returnoo 
;oo 
}pp 
varrr 
newShaperr 
=rr 
Shaperr  
=rr! "
awaitrr# (
_shapeBuilderrr) 6
(rr6 7
contextrr7 >
)rr> ?
;rr? @
ifuu 
(uu 
newShapeuu 
==uu 
nulluu  
)uu  !
{vv 
returnww 
;ww 
}xx 
varzz 
newShapeMetadatazz  
=zz! "
newShapezz# +
.zz+ ,
Metadatazz, 4
;zz4 5
newShapeMetadata{{ 
.{{ 
Prefix{{ #
={{$ %
_prefix{{& -
;{{- .
newShapeMetadata|| 
.|| 
Name|| !
=||" #
_name||$ )
??||* ,
_differentiator||- <
??||= ?

_shapeType||@ J
;||J K
newShapeMetadata}} 
.}} 
Differentiator}} +
=}}, -
_differentiator}}. =
??}}> @

_shapeType}}A K
;}}K L
newShapeMetadata~~ 
.~~ 
DisplayType~~ (
=~~) *
displayType~~+ 6
;~~6 7
newShapeMetadata 
. 
PlacementSource ,
=- .
	placement/ 8
.8 9
Source9 ?
;? @
newShapeMetadata
ÄÄ 
.
ÄÄ 
Tab
ÄÄ  
=
ÄÄ! "
	placement
ÄÄ# ,
.
ÄÄ, -
GetTab
ÄÄ- 3
(
ÄÄ3 4
)
ÄÄ4 5
;
ÄÄ5 6
newShapeMetadata
ÅÅ 
.
ÅÅ 
Card
ÅÅ !
=
ÅÅ" #
	placement
ÅÅ$ -
.
ÅÅ- .
GetCard
ÅÅ. 5
(
ÅÅ5 6
)
ÅÅ6 7
;
ÅÅ7 8
newShapeMetadata
ÇÇ 
.
ÇÇ 
Column
ÇÇ #
=
ÇÇ$ %
	placement
ÇÇ& /
.
ÇÇ/ 0
	GetColumn
ÇÇ0 9
(
ÇÇ9 :
)
ÇÇ: ;
;
ÇÇ; <
newShapeMetadata
ÉÉ 
.
ÉÉ 
Type
ÉÉ !
=
ÉÉ" #

_shapeType
ÉÉ$ .
;
ÉÉ. /
if
ÖÖ 
(
ÖÖ 
_displaying
ÖÖ 
!=
ÖÖ 
null
ÖÖ #
)
ÖÖ# $
{
ÜÜ 
newShapeMetadata
áá  
.
áá  !
OnDisplaying
áá! -
(
áá- .
_displaying
áá. 9
)
áá9 :
;
áá: ;
}
àà 
if
åå 
(
åå 
_processing
åå 
!=
åå 
null
åå #
)
åå# $
{
çç 
newShapeMetadata
éé  
.
éé  !
OnProcessing
éé! -
(
éé- .
_processing
éé. 9
)
éé9 :
;
éé: ;
}
èè 
if
íí 
(
íí 
!
íí 
String
íí 
.
íí 
IsNullOrEmpty
íí %
(
íí% &
_cacheId
íí& .
)
íí. /
&&
íí0 2
_cache
íí3 9
!=
íí: <
null
íí= A
)
ííA B
{
ìì 
_cache
îî 
(
îî 
newShapeMetadata
îî '
.
îî' (
Cache
îî( -
(
îî- .
_cacheId
îî. 6
)
îî6 7
)
îî7 8
;
îî8 9
}
ïï 
if
òò 
(
òò 
!
òò 
String
òò 
.
òò 
IsNullOrEmpty
òò %
(
òò% &
	placement
òò& /
.
òò/ 0
	ShapeType
òò0 9
)
òò9 :
)
òò: ;
{
ôô 
newShapeMetadata
öö  
.
öö  !
Type
öö! %
=
öö& '
	placement
öö( 1
.
öö1 2
	ShapeType
öö2 ;
;
öö; <
newShapeMetadata
õõ  
.
õõ  !

Alternates
õõ! +
.
õõ+ ,
Clear
õõ, 1
(
õõ1 2
)
õõ2 3
;
õõ3 4
newShapeMetadata
úú  
.
úú  !
Wrappers
úú! )
.
úú) *
Clear
úú* /
(
úú/ 0
)
úú0 1
;
úú1 2
}
ùù 
if
üü 
(
üü 
	placement
üü 
!=
üü 
null
üü !
)
üü! "
{
†† 
if
°° 
(
°° 
	placement
°° 
.
°° 

Alternates
°° (
!=
°°) +
null
°°, 0
)
°°0 1
{
¢¢ 
newShapeMetadata
££ $
.
££$ %

Alternates
££% /
.
££/ 0
AddRange
££0 8
(
££8 9
	placement
££9 B
.
££B C

Alternates
££C M
)
££M N
;
££N O
}
§§ 
if
¶¶ 
(
¶¶ 
	placement
¶¶ 
.
¶¶ 
Wrappers
¶¶ &
!=
¶¶' )
null
¶¶* .
)
¶¶. /
{
ßß 
newShapeMetadata
®® $
.
®®$ %
Wrappers
®®% -
.
®®- .
AddRange
®®. 6
(
®®6 7
	placement
®®7 @
.
®®@ A
Wrappers
®®A I
)
®®I J
;
®®J K
}
©© 
}
™™ 
dynamic
¨¨ 
parentShape
¨¨ 
=
¨¨  !
context
¨¨" )
.
¨¨) *
Shape
¨¨* /
;
¨¨/ 0
if
ÆÆ 
(
ÆÆ 
	placement
ÆÆ 
.
ÆÆ 
IsLayoutZone
ÆÆ &
(
ÆÆ& '
)
ÆÆ' (
)
ÆÆ( )
{
ØØ 
parentShape
∞∞ 
=
∞∞ 
context
∞∞ %
.
∞∞% &
Layout
∞∞& ,
;
∞∞, -
}
±± 
var
≥≥ 
position
≥≥ 
=
≥≥ 
	placement
≥≥ $
.
≥≥$ %
GetPosition
≥≥% 0
(
≥≥0 1
)
≥≥1 2
;
≥≥2 3
var
¥¥ 
zones
¥¥ 
=
¥¥ 
	placement
¥¥ !
.
¥¥! "
GetZones
¥¥" *
(
¥¥* +
)
¥¥+ ,
;
¥¥, -
foreach
∂∂ 
(
∂∂ 
var
∂∂ 
zone
∂∂ 
in
∂∂  
zones
∂∂! &
)
∂∂& '
{
∑∑ 
if
∏∏ 
(
∏∏ 
parentShape
∏∏ 
==
∏∏  "
null
∏∏# '
)
∏∏' (
{
ππ 
break
∫∫ 
;
∫∫ 
}
ªª 
var
ΩΩ 
zoneProperty
ΩΩ  
=
ΩΩ! "
parentShape
ΩΩ# .
.
ΩΩ. /
Zones
ΩΩ/ 4
;
ΩΩ4 5
if
ææ 
(
ææ 
zoneProperty
ææ  
!=
ææ! #
null
ææ$ (
)
ææ( )
{
øø 
parentShape
¡¡ 
=
¡¡  !
zoneProperty
¡¡" .
[
¡¡. /
zone
¡¡/ 3
]
¡¡3 4
;
¡¡4 5
}
¬¬ 
else
√√ 
{
ƒƒ 
parentShape
∆∆ 
=
∆∆  !
parentShape
∆∆" -
[
∆∆- .
zone
∆∆. 2
]
∆∆2 3
;
∆∆3 4
}
«« 
}
»» 
position
   
=
   
!
   
String
   
.
   
IsNullOrEmpty
   ,
(
  , -
position
  - 5
)
  5 6
?
  7 8
position
  9 A
:
  B C
null
  D H
;
  H I
if
ÃÃ 
(
ÃÃ 
parentShape
ÃÃ 
is
ÃÃ 
ZoneOnDemand
ÃÃ +
zoneOnDemand
ÃÃ, 8
)
ÃÃ8 9
{
ÕÕ 
await
ŒŒ 
zoneOnDemand
ŒŒ "
.
ŒŒ" #
AddAsync
ŒŒ# +
(
ŒŒ+ ,
newShape
ŒŒ, 4
,
ŒŒ4 5
position
ŒŒ6 >
)
ŒŒ> ?
;
ŒŒ? @
}
œœ 
else
–– 
if
–– 
(
–– 
parentShape
––  
is
––! #
Shape
––$ )
shape
––* /
)
––/ 0
{
—— 
shape
““ 
.
““ 
Add
““ 
(
““ 
newShape
““ "
,
““" #
position
““$ ,
)
““, -
;
““- .
}
”” 
}
‘‘ 	
public
‹‹ 
ShapeResult
‹‹ 
Prefix
‹‹ !
(
‹‹! "
string
‹‹" (
prefix
‹‹) /
)
‹‹/ 0
{
›› 	
_prefix
ﬁﬁ 
=
ﬁﬁ 
prefix
ﬁﬁ 
;
ﬁﬁ 
return
ﬂﬂ 
this
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
public
ÂÂ 
ShapeResult
ÂÂ 
Location
ÂÂ #
(
ÂÂ# $
string
ÂÂ$ *
location
ÂÂ+ 3
)
ÂÂ3 4
{
ÊÊ 	
_defaultLocation
ÁÁ 
=
ÁÁ 
location
ÁÁ '
;
ÁÁ' (
return
ËË 
this
ËË 
;
ËË 
}
ÈÈ 	
public
ÓÓ 
ShapeResult
ÓÓ 
Location
ÓÓ #
(
ÓÓ# $
string
ÓÓ$ *
displayType
ÓÓ+ 6
,
ÓÓ6 7
string
ÓÓ8 >
location
ÓÓ? G
)
ÓÓG H
{
ÔÔ 	
if
 
(
 
_otherLocations
 
==
  "
null
# '
)
' (
{
ÒÒ 
_otherLocations
ÚÚ 
=
ÚÚ  !
new
ÚÚ" %

Dictionary
ÚÚ& 0
<
ÚÚ0 1
string
ÚÚ1 7
,
ÚÚ7 8
string
ÚÚ9 ?
>
ÚÚ? @
(
ÚÚ@ A
$num
ÚÚA B
)
ÚÚB C
;
ÚÚC D
}
ÛÛ 
_otherLocations
ıı 
[
ıı 
displayType
ıı '
]
ıı' (
=
ıı) *
location
ıı+ 3
;
ıı3 4
return
ˆˆ 
this
ˆˆ 
;
ˆˆ 
}
˜˜ 	
public
¸¸ 
ShapeResult
¸¸ 

Displaying
¸¸ %
(
¸¸% &
Action
¸¸& ,
<
¸¸, -!
ShapeDisplayContext
¸¸- @
>
¸¸@ A

displaying
¸¸B L
)
¸¸L M
{
˝˝ 	
_displaying
˛˛ 
=
˛˛ 

displaying
˛˛ $
;
˛˛$ %
return
ÄÄ 
this
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ÜÜ 
ShapeResult
ÜÜ 
Name
ÜÜ 
(
ÜÜ  
string
ÜÜ  &
name
ÜÜ' +
)
ÜÜ+ ,
{
áá 	
_name
àà 
=
àà 
name
àà 
;
àà 
return
ââ 
this
ââ 
;
ââ 
}
ää 	
public
èè 
ShapeResult
èè 
Differentiator
èè )
(
èè) *
string
èè* 0
differentiator
èè1 ?
)
èè? @
{
êê 	
_differentiator
ëë 
=
ëë 
differentiator
ëë ,
;
ëë, -
return
íí 
this
íí 
;
íí 
}
ìì 	
public
öö 
ShapeResult
öö 
OnGroup
öö "
(
öö" #
string
öö# )
groupId
öö* 1
)
öö1 2
{
õõ 	
_groupId
úú 
=
úú 
groupId
úú 
;
úú 
return
ùù 
this
ùù 
;
ùù 
}
ûû 	
public
££ 
ShapeResult
££ 
Cache
££  
(
££  !
string
££! '
cacheId
££( /
,
££/ 0
Action
££1 7
<
££7 8
CacheContext
££8 D
>
££D E
cache
££F K
=
££L M
null
££N R
)
££R S
{
§§ 	
_cacheId
•• 
=
•• 
cacheId
•• 
;
•• 
_cache
¶¶ 
=
¶¶ 
cache
¶¶ 
;
¶¶ 
return
ßß 
this
ßß 
;
ßß 
}
®® 	
public
ÆÆ 
ShapeResult
ÆÆ 

RenderWhen
ÆÆ %
(
ÆÆ% &
Func
ÆÆ& *
<
ÆÆ* +
Task
ÆÆ+ /
<
ÆÆ/ 0
bool
ÆÆ0 4
>
ÆÆ4 5
>
ÆÆ5 6"
renderPredicateAsync
ÆÆ7 K
)
ÆÆK L
{
ØØ 	#
_renderPredicateAsync
∞∞ !
=
∞∞" #"
renderPredicateAsync
∞∞$ 8
;
∞∞8 9
return
±± 
this
±± 
;
±± 
}
≤≤ 	
public
¥¥ 
IShape
¥¥ 
Shape
¥¥ 
{
¥¥ 
get
¥¥ !
;
¥¥! "
private
¥¥# *
set
¥¥+ .
;
¥¥. /
}
¥¥0 1
}
µµ 
}∂∂ ≤
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Views\ShapeViewModel.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Views( -
{ 
public 

class 
ShapeViewModel 
:  !
IShape" (
,( )
IPositioned* 5
{ 
public 
ShapeViewModel 
( 
) 
{		 	
}

 	
public 
ShapeViewModel 
( 
string $
	shapeType% .
). /
{ 	
Metadata 
. 
Type 
= 
	shapeType %
;% &
} 	
private 
ShapeMetadata 
	_metadata '
;' (
public 
ShapeMetadata 
Metadata %
=>& (
	_metadata) 2
=3 4
	_metadata5 >
??? A
newB E
ShapeMetadataF S
(S T
)T U
;U V
public 
string 
Position 
{ 	
get 
{ 
return 
Metadata 
.  
Position  (
;( )
} 
set 
{ 
Metadata 
. 
Position !
=" #
value$ )
;) *
} 
} 	
public!! 
string!! 
Id!! 
{!! 
get!! 
;!! 
set!!  #
;!!# $
}!!% &
public"" 
string"" 
TagName"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
private$$ 
List$$ 
<$$ 
string$$ 
>$$ 
_classes$$ %
;$$% &
public%% 
IList%% 
<%% 
string%% 
>%% 
Classes%% $
=>%%% '
_classes%%( 0
=%%1 2
_classes%%3 ;
??%%< >
new%%? B
List%%C G
<%%G H
string%%H N
>%%N O
(%%O P
)%%P Q
;%%Q R
private'' 

Dictionary'' 
<'' 
string'' !
,''! "
string''# )
>'') *
_attributes''+ 6
;''6 7
public(( 
IDictionary(( 
<(( 
string(( !
,((! "
string((# )
>(() *

Attributes((+ 5
=>((6 8
_attributes((9 D
=((E F
_attributes((G R
??((S U
new((V Y

Dictionary((Z d
<((d e
string((e k
,((k l
string((m s
>((s t
(((t u
)((u v
;((v w
private** 

Dictionary** 
<** 
string** !
,**! "
object**# )
>**) *
_properties**+ 6
;**6 7
public++ 
IDictionary++ 
<++ 
string++ !
,++! "
object++# )
>++) *

Properties+++ 5
=>++6 8
_properties++9 D
=++E F
_properties++G R
??++S U
new++V Y

Dictionary++Z d
<++d e
string++e k
,++k l
object++m s
>++s t
(++t u
)++u v
;++v w
},, 
}-- ™
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Views\ShapeViewModelOfT.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Views( -
{ 
public 

class 
ShapeViewModel 
<  
T  !
>! "
:# $
ShapeViewModel% 3
{ 
public 
ShapeViewModel 
( 
T 
value  %
)% &
{ 	
Value 
= 
value 
; 
} 	
public

 
T

 
Value

 
{

 
get

 
;

 
}

 
} 
} µA
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Zones\FlatPositionComparer.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Zones( -
{ 
public 

class  
FlatPositionComparer %
:& '
	IComparer( 1
<1 2
IPositioned2 =
>= >
,> ?
	IComparer@ I
<I J
stringJ P
>P Q
{ 
public 
static  
FlatPositionComparer *
Instance+ 3
{4 5
get6 9
;9 :
private; B
setC F
;F G
}H I
static

  
FlatPositionComparer

 #
(

# $
)

$ %
{ 	
Instance 
= 
new  
FlatPositionComparer /
(/ 0
)0 1
;1 2
} 	
private  
FlatPositionComparer $
($ %
)% &
{ 	
} 	
public 
int 
Compare 
( 
IPositioned &
a' (
,( )
IPositioned* 5
b6 7
)7 8
{ 	
var 
x 
= 
a 
. 
Position 
; 
var 
y 
= 
b 
. 
Position 
; 
return 
Compare 
( 
x 
, 
y 
)  
;  !
} 	
public 
int 
Compare 
( 
string !
x" #
,# $
string% +
y, -
)- .
{ 	
if 
( 
x 
== 
y 
) 
{ 
return 
$num 
; 
}   
x## 
=## 
x## 
==## 
null## 
?$$ 
$str$$ 
:%% 
x%% 
.%% 
Trim%% 
(%% 
)%% 
.%% 
Length%% !
==%%" $
$num%%% &
?%%' (
$str%%) ,
:%%- .
x%%/ 0
.%%0 1
Trim%%1 5
(%%5 6
$char%%6 9
)%%9 :
.%%: ;
TrimEnd%%; B
(%%B C
$char%%C F
)%%F G
;%%G H
y&& 
=&& 
y&& 
==&& 
null&& 
?'' 
$str'' 
:(( 
y(( 
.(( 
Trim(( 
((( 
)(( 
.(( 
Length(( !
==((" $
$num((% &
?((' (
$str(() ,
:((- .
y((/ 0
.((0 1
Trim((1 5
(((5 6
$char((6 9
)((9 :
.((: ;
TrimEnd((; B
(((B C
$char((C F
)((F G
;((G H
var** 
xParts** 
=** 
x** 
.** 
Split**  
(**  !
new**! $
[**$ %
]**% &
{**' (
$char**) ,
,**, -
$char**. 1
}**2 3
)**3 4
;**4 5
var++ 
yParts++ 
=++ 
y++ 
.++ 
Split++  
(++  !
new++! $
[++$ %
]++% &
{++' (
$char++) ,
,++, -
$char++. 1
}++2 3
)++3 4
;++4 5
for,, 
(,, 
var,, 
i,, 
=,, 
$num,, 
;,, 
i,, 
<,, 
xParts,,  &
.,,& '
Length,,' -
;,,- .
i,,/ 0
++,,0 2
),,2 3
{-- 
if// 
(// 
yParts// 
.// 
Length// !
<//" #
i//$ %
+//& '
$num//( )
)//) *
{00 
return11 
$num11 
;11 
}22 
int44 
xPos44 
,44 
yPos44 
;44 
var55 
xPart55 
=55 
string55 "
.55" #
IsNullOrEmpty55# 0
(550 1
xParts551 7
[557 8
i558 9
]559 :
)55: ;
?55< =
$str55> F
:55G H$
NormalizeKnownPartitions55I a
(55a b
xParts55b h
[55h i
i55i j
]55j k
)55k l
;55l m
var66 
yPart66 
=66 
string66 "
.66" #
IsNullOrEmpty66# 0
(660 1
yParts661 7
[667 8
i668 9
]669 :
)66: ;
?66< =
$str66> F
:66G H$
NormalizeKnownPartitions66I a
(66a b
yParts66b h
[66h i
i66i j
]66j k
)66k l
;66l m
var88 
xIsInt88 
=88 
int88  
.88  !
TryParse88! )
(88) *
xPart88* /
,88/ 0
out881 4
xPos885 9
)889 :
;88: ;
var99 
yIsInt99 
=99 
int99  
.99  !
TryParse99! )
(99) *
yPart99* /
,99/ 0
out991 4
yPos995 9
)999 :
;99: ;
if;; 
(;; 
!;; 
xIsInt;; 
&&;; 
!;;  
yIsInt;;  &
);;& '
{<< 
return== 
String== !
.==! "
Compare==" )
(==) *
string==* 0
.==0 1
Join==1 5
(==5 6
$str==6 9
,==9 :
xParts==; A
)==A B
,==B C
string==D J
.==J K
Join==K O
(==O P
$str==P S
,==S T
yParts==U [
)==[ \
,==\ ]
StringComparison==^ n
.==n o
OrdinalIgnoreCase	==o Ä
)
==Ä Å
;
==Å Ç
}>> 
ifAA 
(AA 
!AA 
xIsIntAA 
||AA 
(AA  
yIsIntAA  &
&&AA' )
xPosAA* .
>AA/ 0
yPosAA1 5
)AA5 6
)AA6 7
{BB 
returnCC 
$numCC 
;CC 
}DD 
ifFF 
(FF 
!FF 
yIsIntFF 
||FF 
xPosFF #
<FF$ %
yPosFF& *
)FF* +
{GG 
returnHH 
-HH 
$numHH 
;HH 
}II 
}JJ 
ifMM 
(MM 
xPartsMM 
.MM 
LengthMM 
<MM 
yPartsMM  &
.MM& '
LengthMM' -
)MM- .
{NN 
returnOO 
-OO 
$numOO 
;OO 
}PP 
returnRR 
$numRR 
;RR 
}SS 	
privateUU 
staticUU 
stringUU $
NormalizeKnownPartitionsUU 6
(UU6 7
stringUU7 =
	partitionUU> G
)UUG H
{VV 	
ifWW 
(WW 
	partitionWW 
.WW 
LengthWW  
<WW! "
$numWW# $
)WW$ %
{XX 
returnYY 
	partitionYY  
;YY  !
}ZZ 
if\\ 
(\\ 
string\\ 
.\\ 
Compare\\ 
(\\ 
	partition\\ (
,\\( )
$str\\* 2
,\\2 3
StringComparison\\4 D
.\\D E
OrdinalIgnoreCase\\E V
)\\V W
==\\X Z
$num\\[ \
)\\\ ]
{]] 
return^^ 
$str^^ 
;^^ 
}__ 
ifaa 
(aa 
stringaa 
.aa 
Compareaa 
(aa 
	partitionaa (
,aa( )
$straa* 1
,aa1 2
StringComparisonaa3 C
.aaC D
OrdinalIgnoreCaseaaD U
)aaU V
==aaW Y
$numaaZ [
)aa[ \
{bb 
returncc 
$strcc 
;cc 
}dd 
returnff 
	partitionff 
;ff 
}gg 	
}hh 
}ii œÜ
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Zones\ZoneHoldingBehavior.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Zones( -
{ 
public 

class 
ZoneHolding 
: 
Shape $
{ 
private 
readonly 
Func 
< 
	ValueTask '
<' (
IShape( .
>. /
>/ 0
_zoneFactory1 =
;= >
public 
ZoneHolding 
( 
Func 
<  
	ValueTask  )
<) *
IShape* 0
>0 1
>1 2
zoneFactory3 >
)> ?
{ 	
_zoneFactory 
= 
zoneFactory &
;& '
} 	
private 
Zones 
_zones 
; 
public   
Zones   
Zones   
{!! 	
get"" 
{## 
if$$ 
($$ 
_zones$$ 
==$$ 
null$$ "
)$$" #
{%% 
return&& 
_zones&& !
=&&" #
new&&$ '
Zones&&( -
(&&- .
_zoneFactory&&. :
,&&: ;
this&&< @
)&&@ A
;&&A B
}'' 
return)) 
_zones)) 
;)) 
}** 
}++ 	
public-- 
override-- 
bool-- 
TryGetMember-- )
(--) *
System--* 0
.--0 1
Dynamic--1 8
.--8 9
GetMemberBinder--9 H
binder--I O
,--O P
out--Q T
object--U [
result--\ b
)--b c
{.. 	
var// 
name// 
=// 
binder// 
.// 
Name// "
;//" #
if11 
(11 
!11 
base11 
.11 
TryGetMember11 "
(11" #
binder11# )
,11) *
out11+ .
result11/ 5
)115 6
||117 9
(11: ;
null11; ?
==11@ B
result11C I
)11I J
)11J K
{22 
result55 
=55 
new55 
ZoneOnDemand55 )
(55) *
_zoneFactory55* 6
,556 7
this558 <
,55< =
name55> B
)55B C
;55C D
TrySetMemberImpl66  
(66  !
name66! %
,66% &
result66' -
)66- .
;66. /
}77 
return99 
true99 
;99 
}:: 	
};; 
publicAA 

classAA 
ZonesAA 
:AA 
	CompositeAA "
{BB 
privateCC 
readonlyCC 
FuncCC 
<CC 
	ValueTaskCC '
<CC' (
IShapeCC( .
>CC. /
>CC/ 0
_zoneFactoryCC1 =
;CC= >
privateDD 
readonlyDD 
objectDD 
_parentDD  '
;DD' (
publicFF 
ZonesFF 
(FF 
FuncFF 
<FF 
	ValueTaskFF #
<FF# $
IShapeFF$ *
>FF* +
>FF+ ,
zoneFactoryFF- 8
,FF8 9
objectFF: @
parentFFA G
)FFG H
{GG 	
_zoneFactoryHH 
=HH 
zoneFactoryHH &
;HH& '
_parentII 
=II 
parentII 
;II 
}JJ 	
publicLL 
overrideLL 
boolLL 
TryGetMemberLL )
(LL) *
SystemLL* 0
.LL0 1
DynamicLL1 8
.LL8 9
GetMemberBinderLL9 H
binderLLI O
,LLO P
outLLQ T
objectLLU [
resultLL\ b
)LLb c
{MM 	
returnNN 
TryGetMemberImplNN #
(NN# $
binderNN$ *
.NN* +
NameNN+ /
,NN/ 0
outNN1 4
resultNN5 ;
)NN; <
;NN< =
}OO 	
	protectedQQ 
overrideQQ 
boolQQ 
TryGetMemberImplQQ  0
(QQ0 1
stringQQ1 7
nameQQ8 <
,QQ< =
outQQ> A
objectQQB H
resultQQI O
)QQO P
{RR 	
varSS 
parentMemberSS 
=SS 
(SS  
(SS  !
dynamicSS! (
)SS( )
_parentSS) 0
)SS0 1
[SS1 2
nameSS2 6
]SS6 7
;SS7 8
ifTT 
(TT 
parentMemberTT 
==TT 
nullTT  $
)TT$ %
{UU 
resultVV 
=VV 
newVV 
ZoneOnDemandVV )
(VV) *
_zoneFactoryVV* 6
,VV6 7
_parentVV8 ?
,VV? @
nameVVA E
)VVE F
;VVF G
returnWW 
trueWW 
;WW 
}XX 
resultZZ 
=ZZ 
parentMemberZZ !
;ZZ! "
return[[ 
true[[ 
;[[ 
}\\ 	
	protected^^ 
override^^ 
bool^^ 
TrySetMemberImpl^^  0
(^^0 1
string^^1 7
name^^8 <
,^^< =
object^^> D
value^^E J
)^^J K
{__ 	
(`` 
(`` 
dynamic`` 
)`` 
_parent`` 
)`` 
[`` 
name`` #
]``# $
=``% &
value``' ,
;``, -
returnaa 
trueaa 
;aa 
}bb 	
}cc 
publickk 

classkk 
ZoneOnDemandkk 
:kk 
Shapekk  %
{ll 
privatemm 
readonlymm 
Funcmm 
<mm 
	ValueTaskmm '
<mm' (
IShapemm( .
>mm. /
>mm/ 0
_zoneFactorymm1 =
;mm= >
privatenn 
readonlynn 
objectnn 
_parentnn  '
;nn' (
privateoo 
readonlyoo 
stringoo 
_potentialZoneNameoo  2
;oo2 3
publicqq 
ZoneOnDemandqq 
(qq 
Funcqq  
<qq  !
	ValueTaskqq! *
<qq* +
IShapeqq+ 1
>qq1 2
>qq2 3
zoneFactoryqq4 ?
,qq? @
objectqqA G
parentqqH N
,qqN O
stringqqP V
potentialZoneNameqqW h
)qqh i
{rr 	
_zoneFactoryss 
=ss 
zoneFactoryss &
;ss& '
_parenttt 
=tt 
parenttt 
;tt 
_potentialZoneNameuu 
=uu  
potentialZoneNameuu! 2
;uu2 3
}vv 	
publicxx 
overridexx 
boolxx 
TryGetMemberxx )
(xx) *
Systemxx* 0
.xx0 1
Dynamicxx1 8
.xx8 9
GetMemberBinderxx9 H
binderxxI O
,xxO P
outxxQ T
objectxxU [
resultxx\ b
)xxb c
{yy 	
result{{ 
={{ 
Nil{{ 
.{{ 
Instance{{ !
;{{! "
return|| 
true|| 
;|| 
}}} 	
public 
override 
bool 
TryGetIndex (
(( )
System) /
./ 0
Dynamic0 7
.7 8
GetIndexBinder8 F
binderG M
,M N
objectO U
[U V
]V W
indexesX _
,_ `
outa d
objecte k
resultl r
)r s
{
ÄÄ 	
result
ÇÇ 
=
ÇÇ 
Nil
ÇÇ 
.
ÇÇ 
Instance
ÇÇ !
;
ÇÇ! "
return
ÉÉ 
true
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
public
ÜÜ 
override
ÜÜ 
bool
ÜÜ 
TryInvokeMember
ÜÜ ,
(
ÜÜ, -
System
ÜÜ- 3
.
ÜÜ3 4
Dynamic
ÜÜ4 ;
.
ÜÜ; < 
InvokeMemberBinder
ÜÜ< N
binder
ÜÜO U
,
ÜÜU V
object
ÜÜW ]
[
ÜÜ] ^
]
ÜÜ^ _
args
ÜÜ` d
,
ÜÜd e
out
ÜÜf i
object
ÜÜj p
result
ÜÜq w
)
ÜÜw x
{
áá 	
var
àà 
name
àà 
=
àà 
binder
àà 
.
àà 
Name
àà "
;
àà" #
if
ãã 
(
ãã 
!
ãã 
args
ãã 
.
ãã 
Any
ãã 
(
ãã 
)
ãã 
&&
ãã 
name
ãã #
!=
ãã$ &
$str
ãã' 1
)
ãã1 2
{
åå 
result
çç 
=
çç 
Nil
çç 
.
çç 
Instance
çç %
;
çç% &
return
éé 
true
éé 
;
éé 
}
èè 
return
ëë 
base
ëë 
.
ëë 
TryInvokeMember
ëë '
(
ëë' (
binder
ëë( .
,
ëë. /
args
ëë0 4
,
ëë4 5
out
ëë6 9
result
ëë: @
)
ëë@ A
;
ëëA B
}
íí 	
public
îî 
override
îî 
string
îî 
ToString
îî '
(
îî' (
)
îî( )
{
ïï 	
return
ññ 
String
ññ 
.
ññ 
Empty
ññ 
;
ññ  
}
óó 	
public
ôô 
override
ôô 
bool
ôô 

TryConvert
ôô '
(
ôô' (
System
ôô( .
.
ôô. /
Dynamic
ôô/ 6
.
ôô6 7
ConvertBinder
ôô7 D
binder
ôôE K
,
ôôK L
out
ôôM P
object
ôôQ W
result
ôôX ^
)
ôô^ _
{
öö 	
if
õõ 
(
õõ 
binder
õõ 
.
õõ 

ReturnType
õõ !
==
õõ" $
typeof
õõ% +
(
õõ+ ,
string
õõ, 2
)
õõ2 3
)
õõ3 4
{
úú 
result
ùù 
=
ùù 
null
ùù 
;
ùù 
}
ûû 
else
üü 
if
üü 
(
üü 
binder
üü 
.
üü 

ReturnType
üü &
.
üü& '
IsValueType
üü' 2
)
üü2 3
{
†† 
result
°° 
=
°° 
	Activator
°° "
.
°°" #
CreateInstance
°°# 1
(
°°1 2
binder
°°2 8
.
°°8 9

ReturnType
°°9 C
)
°°C D
;
°°D E
}
¢¢ 
else
££ 
{
§§ 
result
•• 
=
•• 
null
•• 
;
•• 
}
¶¶ 
return
®® 
true
®® 
;
®® 
}
©© 	
public
´´ 
static
´´ 
bool
´´ 
operator
´´ #
==
´´$ &
(
´´& '
ZoneOnDemand
´´' 3
a
´´4 5
,
´´5 6
object
´´7 =
b
´´> ?
)
´´? @
{
¨¨ 	
return
ÆÆ 
b
ÆÆ 
==
ÆÆ 
null
ÆÆ 
||
ÆÆ 
ReferenceEquals
ÆÆ  /
(
ÆÆ/ 0
b
ÆÆ0 1
,
ÆÆ1 2
Nil
ÆÆ3 6
.
ÆÆ6 7
Instance
ÆÆ7 ?
)
ÆÆ? @
;
ÆÆ@ A
}
ØØ 	
public
±± 
static
±± 
bool
±± 
operator
±± #
!=
±±$ &
(
±±& '
ZoneOnDemand
±±' 3
a
±±4 5
,
±±5 6
object
±±7 =
b
±±> ?
)
±±? @
{
≤≤ 	
return
¥¥ 
!
¥¥ 
(
¥¥ 
a
¥¥ 
==
¥¥ 
b
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 	
public
∑∑ 
override
∑∑ 
bool
∑∑ 
Equals
∑∑ #
(
∑∑# $
object
∑∑$ *
obj
∑∑+ .
)
∑∑. /
{
∏∏ 	
if
ππ 
(
ππ 
ReferenceEquals
ππ 
(
ππ  
null
ππ  $
,
ππ$ %
obj
ππ& )
)
ππ) *
)
ππ* +
{
∫∫ 
return
ªª 
true
ªª 
;
ªª 
}
ºº 
if
ææ 
(
ææ 
ReferenceEquals
ææ 
(
ææ  
this
ææ  $
,
ææ$ %
obj
ææ& )
)
ææ) *
)
ææ* +
{
øø 
return
¿¿ 
true
¿¿ 
;
¿¿ 
}
¡¡ 
return
√√ 
false
√√ 
;
√√ 
}
ƒƒ 	
public
∆∆ 
override
∆∆ 
int
∆∆ 
GetHashCode
∆∆ '
(
∆∆' (
)
∆∆( )
{
«« 	
	unchecked
»» 
{
…… 
int
   
hashCode
   
=
   
(
    
_parent
    '
!=
  ( *
null
  + /
?
  0 1
_parent
  2 9
.
  9 :
GetHashCode
  : E
(
  E F
)
  F G
:
  H I
$num
  J K
)
  K L
;
  L M
hashCode
ÀÀ 
=
ÀÀ 
(
ÀÀ 
hashCode
ÀÀ $
*
ÀÀ% &
$num
ÀÀ' *
)
ÀÀ* +
^
ÀÀ, -
(
ÀÀ. / 
_potentialZoneName
ÀÀ/ A
!=
ÀÀB D
null
ÀÀE I
?
ÀÀJ K 
_potentialZoneName
ÀÀL ^
.
ÀÀ^ _
GetHashCode
ÀÀ_ j
(
ÀÀj k
)
ÀÀk l
:
ÀÀm n
$num
ÀÀo p
)
ÀÀp q
;
ÀÀq r
return
ÃÃ 
hashCode
ÃÃ 
;
ÃÃ  
}
ÕÕ 
}
ŒŒ 	
public
–– 
override
–– 
Shape
–– 
Add
–– !
(
––! "
object
––" (
item
––) -
,
––- .
string
––/ 5
position
––6 >
=
––? @
null
––A E
)
––E F
{
—— 	
if
““ 
(
““ 
item
““ 
==
““ 
null
““ 
)
““ 
{
”” 
return
‘‘ 
(
‘‘ 
Shape
‘‘ 
)
‘‘ 
_parent
‘‘ %
;
‘‘% &
}
’’ 
dynamic
◊◊ 
parent
◊◊ 
=
◊◊ 
_parent
◊◊ $
;
◊◊$ %
dynamic
ŸŸ 
zone
ŸŸ 
=
ŸŸ 
_zoneFactory
ŸŸ '
(
ŸŸ' (
)
ŸŸ( )
.
ŸŸ) *

GetAwaiter
ŸŸ* 4
(
ŸŸ4 5
)
ŸŸ5 6
.
ŸŸ6 7
	GetResult
ŸŸ7 @
(
ŸŸ@ A
)
ŸŸA B
;
ŸŸB C
zone
⁄⁄ 
.
⁄⁄ 
Parent
⁄⁄ 
=
⁄⁄ 
_parent
⁄⁄ !
;
⁄⁄! "
zone
€€ 
.
€€ 
ZoneName
€€ 
=
€€  
_potentialZoneName
€€ .
;
€€. /
parent
‹‹ 
[
‹‹  
_potentialZoneName
‹‹ %
]
‹‹% &
=
‹‹' (
zone
‹‹) -
;
‹‹- .
if
ﬁﬁ 
(
ﬁﬁ 
position
ﬁﬁ 
==
ﬁﬁ 
null
ﬁﬁ  
)
ﬁﬁ  !
{
ﬂﬂ 
return
‡‡ 
zone
‡‡ 
.
‡‡ 
Add
‡‡ 
(
‡‡  
item
‡‡  $
)
‡‡$ %
;
‡‡% &
}
·· 
return
„„ 
zone
„„ 
.
„„ 
Add
„„ 
(
„„ 
item
„„  
,
„„  !
position
„„" *
)
„„* +
;
„„+ ,
}
‰‰ 	
public
ÊÊ 
async
ÊÊ 
Task
ÊÊ 
<
ÊÊ 
Shape
ÊÊ 
>
ÊÊ  
AddAsync
ÊÊ! )
(
ÊÊ) *
object
ÊÊ* 0
item
ÊÊ1 5
,
ÊÊ5 6
string
ÊÊ7 =
position
ÊÊ> F
=
ÊÊG H
null
ÊÊI M
)
ÊÊM N
{
ÁÁ 	
if
ËË 
(
ËË 
item
ËË 
==
ËË 
null
ËË 
)
ËË 
{
ÈÈ 
return
ÍÍ 
(
ÍÍ 
Shape
ÍÍ 
)
ÍÍ 
_parent
ÍÍ %
;
ÍÍ% &
}
ÎÎ 
dynamic
ÌÌ 
parent
ÌÌ 
=
ÌÌ 
_parent
ÌÌ $
;
ÌÌ$ %
dynamic
ÔÔ 
zone
ÔÔ 
=
ÔÔ 
await
ÔÔ  
_zoneFactory
ÔÔ! -
(
ÔÔ- .
)
ÔÔ. /
;
ÔÔ/ 0
zone
 
.
 
Parent
 
=
 
_parent
 !
;
! "
zone
ÒÒ 
.
ÒÒ 
ZoneName
ÒÒ 
=
ÒÒ  
_potentialZoneName
ÒÒ .
;
ÒÒ. /
parent
ÚÚ 
[
ÚÚ  
_potentialZoneName
ÚÚ %
]
ÚÚ% &
=
ÚÚ' (
zone
ÚÚ) -
;
ÚÚ- .
if
ÙÙ 
(
ÙÙ 
position
ÙÙ 
==
ÙÙ 
null
ÙÙ  
)
ÙÙ  !
{
ıı 
return
ˆˆ 
zone
ˆˆ 
.
ˆˆ 
Add
ˆˆ 
(
ˆˆ  
item
ˆˆ  $
)
ˆˆ$ %
;
ˆˆ% &
}
˜˜ 
return
˘˘ 
zone
˘˘ 
.
˘˘ 
Add
˘˘ 
(
˘˘ 
item
˘˘  
,
˘˘  !
position
˘˘" *
)
˘˘* +
;
˘˘+ ,
}
˙˙ 	
}
˚˚ 
}¸¸ ÿπ
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.DisplayManagement\Zones\ZoneShapes.cs
	namespace 	
OrchardCore
 
. 
DisplayManagement '
.' (
Zones( -
{ 
[ 
Feature 
( 
Application 
. 
DefaultFeatureId )
)) *
]* +
public 

class 

ZoneShapes 
: #
IShapeAttributeProvider 5
{ 
private 
const 
string 

ContentKey '
=( )
$str* 3
;3 4
[ 	
Shape	 
] 
public 
async 
Task 
< 
IHtmlContent &
>& '
Zone( ,
(, -
IDisplayHelper- ;
DisplayAsync< H
,H I
IEnumerableJ U
<U V
objectV \
>\ ]
Shape^ c
)c d
{ 	
var 
htmlContentBuilder "
=# $
new% (
HtmlContentBuilder) ;
(; <
)< =
;= >
foreach 
( 
var 
item 
in  
Shape! &
)& '
{ 
htmlContentBuilder "
." #

AppendHtml# -
(- .
await. 3
DisplayAsync4 @
.@ A
ShapeExecuteAsyncA R
(R S
itemS W
)W X
)X Y
;Y Z
} 
return 
htmlContentBuilder %
;% &
} 	
[   	
Shape  	 
]   
public!! 
async!! 
Task!! 
<!! 
IHtmlContent!! &
>!!& '
ContentZone!!( 3
(!!3 4
IDisplayHelper!!4 B
DisplayAsync!!C O
,!!O P
dynamic!!Q X
Shape!!Y ^
,!!^ _
IShapeFactory!!` m
ShapeFactory!!n z
)!!z {
{"" 	
var## 
htmlContentBuilder## "
=### $
new##% (
HtmlContentBuilder##) ;
(##; <
)##< =
;##= >
var&& 
shapes&& 
=&& 
(&& 
(&& 
IEnumerable&& &
<&&& '
object&&' -
>&&- .
)&&. /
Shape&&/ 4
)&&4 5
;&&5 6
var)) 
	isGrouped)) 
=)) 
shapes)) "
.))" #
Any))# &
())& '
x))' (
=>))) +
x)), -
is)). 0
IShape))1 7
s))8 9
&&)): <
(** 
!** 
String** 
.** 
IsNullOrEmpty** &
(**& '
s**' (
.**( )
Metadata**) 1
.**1 2
Tab**2 5
)**5 6
||**7 9
!++ 
String++ 
.++ 
IsNullOrEmpty++ %
(++% &
s++& '
.++' (
Metadata++( 0
.++0 1
Card++1 5
)++5 6
||++7 9
!,, 
String,, 
.,, 
IsNullOrEmpty,, %
(,,% &
s,,& '
.,,' (
Metadata,,( 0
.,,0 1
Column,,1 7
),,7 8
),,8 9
),,9 :
;,,: ;
if// 
(// 
!// 
	isGrouped// 
)// 
{00 
foreach11 
(11 
var11 
item11 !
in11" $
shapes11% +
)11+ ,
{22 
htmlContentBuilder33 &
.33& '

AppendHtml33' 1
(331 2
await332 7
DisplayAsync338 D
.33D E
ShapeExecuteAsync33E V
(33V W
item33W [
)33[ \
)33\ ]
;33] ^
}44 
return66 
htmlContentBuilder66 )
;66) *
}77 
string99 

identifier99 
=99 
Shape99  %
.99% &

Identifier99& 0
??991 3
String994 :
.99: ;
Empty99; @
;99@ A
var;; 
	groupings;; 
=;; 
shapes;; "
.;;" #
ToLookup;;# +
(;;+ ,
x;;, -
=>;;. 0
{<< 
if== 
(== 
x== 
is== 
IShape== 
s==  !
)==! "
{>> 
var?? 
key?? 
=?? 
s?? 
.??  
Metadata??  (
.??( )
Tab??) ,
;??, -
if@@ 
(@@ 
String@@ 
.@@ 
IsNullOrEmpty@@ ,
(@@, -
key@@- 0
)@@0 1
)@@1 2
{AA 
returnBB 

ContentKeyBB )
;BB) *
}CC 
varFF 
modifierIndexFF %
=FF& '
keyFF( +
.FF+ ,
IndexOfFF, 3
(FF3 4
$charFF4 7
)FF7 8
;FF8 9
ifGG 
(GG 
modifierIndexGG %
!=GG& (
-GG) *
$numGG* +
)GG+ ,
{HH 
keyII 
=II 
keyII !
.II! "
	SubstringII" +
(II+ ,
$numII, -
,II- .
modifierIndexII/ <
)II< =
;II= >
}JJ 
returnLL 
keyLL 
;LL 
}MM 
returnOO 

ContentKeyOO !
;OO! "
}PP 
)PP 
;PP 
ifSS 
(SS 
	groupingsSS 
.SS 
CountSS 
>SS  !
$numSS" #
)SS# $
{TT 
varUU 
orderedGroupingsUU $
=UU% &
	groupingsUU' 0
.UU0 1
OrderByUU1 8
(UU8 9
groupingUU9 A
=>UUB D
{VV 
varWW "
firstGroupWithModifierWW .
=WW/ 0
groupingWW1 9
.WW9 :
FirstOrDefaultWW: H
(WWH I
groupWWI N
=>WWO Q
{XX 
ifYY 
(YY 
groupYY !
isYY" $
IShapeYY% +
sYY, -
&&YY. 0
!YY1 2
StringYY2 8
.YY8 9
IsNullOrEmptyYY9 F
(YYF G
sYYG H
.YYH I
MetadataYYI Q
.YYQ R
TabYYR U
)YYU V
&&YYW Y
sYYZ [
.YY[ \
MetadataYY\ d
.YYd e
TabYYe h
.YYh i
IndexOfYYi p
(YYp q
$charYYq t
)YYt u
!=YYv x
-YYy z
$numYYz {
)YY{ |
{ZZ 
return[[ "
true[[# '
;[[' (
}\\ 
return^^ 
false^^ $
;^^$ %
}__ 
)__ 
;__ 
ifaa 
(aa "
firstGroupWithModifieraa .
isaa/ 1
IShapeaa2 8
shapeaa9 >
)aa> ?
{bb 
varcc 
keycc 
=cc  !
shapecc" '
.cc' (
Metadatacc( 0
.cc0 1
Tabcc1 4
;cc4 5
vardd 
modifierIndexdd )
=dd* +
keydd, /
.dd/ 0
IndexOfdd0 7
(dd7 8
$chardd8 ;
)dd; <
;dd< =
returnff 
newff "
PositionalGroupingff# 5
(ff5 6
keyff6 9
.ff9 :
	Substringff: C
(ffC D
modifierIndexffD Q
)ffQ R
)ffR S
;ffS T
}gg 
returnii 
newii 
PositionalGroupingii 1
(ii1 2
nullii2 6
)ii6 7
;ii7 8
}jj 
,jj  
FlatPositionComparerjj '
.jj' (
Instancejj( 0
)jj0 1
.jj1 2
ToArrayjj2 9
(jj9 :
)jj: ;
;jj; <
varll 
	containerll 
=ll 
(ll  !
GroupingsViewModelll! 3
)ll3 4
awaitll4 9
ShapeFactoryll: F
.llF G
CreateAsyncllG R
<llR S
GroupingsViewModelllS e
>lle f
(llf g
$strllg u
,llu v
mllw x
=>lly {
{mm 
mnn 
.nn 

Identifiernn  
=nn! "

identifiernn# -
;nn- .
moo 
.oo 
	Groupingsoo 
=oo  !
orderedGroupingsoo" 2
;oo2 3
}pp 
)pp 
;pp 
foreachrr 
(rr 
varrr 
orderedGroupingrr ,
inrr- /
orderedGroupingsrr0 @
)rr@ A
{ss 
vartt 
groupingShapett %
=tt& '
(tt( )
GroupingViewModeltt) :
)tt: ;
awaittt; @
ShapeFactoryttA M
.ttM N
CreateAsyncttN Y
<ttY Z
GroupingViewModelttZ k
>ttk l
(ttl m
$strttm r
,ttr s
mttt u
=>ttv x
{uu 
mvv 
.vv 

Identifiervv $
=vv% &

identifiervv' 1
;vv1 2
mww 
.ww 
Groupingww "
=ww# $
orderedGroupingww% 4
;ww4 5
}xx 
)xx 
;xx 
foreachzz 
(zz 
varzz  
itemzz! %
inzz& (
orderedGroupingzz) 8
)zz8 9
{{{ 
groupingShape|| %
.||% &
Add||& )
(||) *
item||* .
)||. /
;||/ 0
}}} 
	container~~ 
.~~ 
Add~~ !
(~~! "
groupingShape~~" /
)~~/ 0
;~~0 1
}  
htmlContentBuilder
ÅÅ "
.
ÅÅ" #

AppendHtml
ÅÅ# -
(
ÅÅ- .
await
ÅÅ. 3
DisplayAsync
ÅÅ4 @
.
ÅÅ@ A
ShapeExecuteAsync
ÅÅA R
(
ÅÅR S
	container
ÅÅS \
)
ÅÅ\ ]
)
ÅÅ] ^
;
ÅÅ^ _
}
ÇÇ 
else
ÉÉ 
if
ÉÉ 
(
ÉÉ 
	groupings
ÉÉ 
.
ÉÉ 
Count
ÉÉ $
==
ÉÉ% '
$num
ÉÉ( )
)
ÉÉ) *
{
ÑÑ 
var
ÜÜ 
cardGrouping
ÜÜ  
=
ÜÜ! "
(
ÜÜ# $
GroupingViewModel
ÜÜ$ 5
)
ÜÜ5 6
await
ÜÜ6 ;
ShapeFactory
ÜÜ< H
.
ÜÜH I
CreateAsync
ÜÜI T
<
ÜÜT U
GroupingViewModel
ÜÜU f
>
ÜÜf g
(
ÜÜg h
$str
ÜÜh v
,
ÜÜv w
m
ÜÜx y
=>
ÜÜz |
{
áá 
m
àà 
.
àà 

Identifier
àà  
=
àà! "

identifier
àà# -
;
àà- .
m
ââ 
.
ââ 
Grouping
ââ 
=
ââ  
	groupings
ââ! *
.
ââ* +
	ElementAt
ââ+ 4
(
ââ4 5
$num
ââ5 6
)
ââ6 7
;
ââ7 8
}
ää 
)
ää 
;
ää  
htmlContentBuilder
ãã "
.
ãã" #

AppendHtml
ãã# -
(
ãã- .
await
ãã. 3
DisplayAsync
ãã4 @
.
ãã@ A
ShapeExecuteAsync
ããA R
(
ããR S
cardGrouping
ããS _
)
ãã_ `
)
ãã` a
;
ããa b
}
åå 
return
éé  
htmlContentBuilder
éé %
;
éé% &
}
èè 	
[
ëë 	
Shape
ëë	 
]
ëë 
public
íí 
async
íí 
Task
íí 
<
íí 
IHtmlContent
íí &
>
íí& '
CardGrouping
íí( 4
(
íí4 5
IDisplayHelper
íí5 C
DisplayAsync
ííD P
,
ííP Q
GroupingViewModel
ííR c
Shape
ííd i
,
ííi j
IShapeFactory
íík x
ShapeFactoryííy Ö
)ííÖ Ü
{
ìì 	
var
îî  
htmlContentBuilder
îî "
=
îî# $
new
îî% ( 
HtmlContentBuilder
îî) ;
(
îî; <
)
îî< =
;
îî= >
var
ññ 
	groupings
ññ 
=
ññ 
Shape
ññ !
.
ññ! "
Grouping
ññ" *
.
ññ* +
ToLookup
ññ+ 3
(
ññ3 4
x
ññ4 5
=>
ññ6 8
{
óó 
if
òò 
(
òò 
x
òò 
is
òò 
IShape
òò 
s
òò  !
)
òò! "
{
ôô 
var
öö 
key
öö 
=
öö 
s
öö 
.
öö  
Metadata
öö  (
.
öö( )
Card
öö) -
;
öö- .
if
õõ 
(
õõ 
String
õõ 
.
õõ 
IsNullOrEmpty
õõ ,
(
õõ, -
key
õõ- 0
)
õõ0 1
)
õõ1 2
{
úú 
return
ùù 

ContentKey
ùù )
;
ùù) *
}
ûû 
var
°° 
modifierIndex
°° %
=
°°& '
key
°°( +
.
°°+ ,
IndexOf
°°, 3
(
°°3 4
$char
°°4 7
)
°°7 8
;
°°8 9
if
¢¢ 
(
¢¢ 
modifierIndex
¢¢ %
!=
¢¢& (
-
¢¢) *
$num
¢¢* +
)
¢¢+ ,
{
££ 
key
§§ 
=
§§ 
key
§§ !
.
§§! "
	Substring
§§" +
(
§§+ ,
$num
§§, -
,
§§- .
modifierIndex
§§/ <
)
§§< =
;
§§= >
}
•• 
return
ßß 
key
ßß 
;
ßß 
}
®® 
return
™™ 

ContentKey
™™ !
;
™™! "
}
¨¨ 
)
¨¨ 
;
¨¨ 
if
ÆÆ 
(
ÆÆ 
	groupings
ÆÆ 
.
ÆÆ 
Count
ÆÆ 
>
ÆÆ  !
$num
ÆÆ" #
)
ÆÆ# $
{
ØØ 
var
∞∞ 
orderedGroupings
∞∞ $
=
∞∞% &
	groupings
∞∞' 0
.
∞∞0 1
OrderBy
∞∞1 8
(
∞∞8 9
grouping
∞∞9 A
=>
∞∞B D
{
±± 
var
≤≤ $
firstGroupWithModifier
≤≤ .
=
≤≤/ 0
grouping
≤≤1 9
.
≤≤9 :
FirstOrDefault
≤≤: H
(
≤≤H I
group
≤≤I N
=>
≤≤O Q
{
≥≥ 
if
¥¥ 
(
¥¥ 
group
¥¥ !
is
¥¥" $
IShape
¥¥% +
s
¥¥, -
&&
¥¥. 0
!
¥¥1 2
String
¥¥2 8
.
¥¥8 9
IsNullOrEmpty
¥¥9 F
(
¥¥F G
s
¥¥G H
.
¥¥H I
Metadata
¥¥I Q
.
¥¥Q R
Card
¥¥R V
)
¥¥V W
&&
¥¥X Z
s
¥¥[ \
.
¥¥\ ]
Metadata
¥¥] e
.
¥¥e f
Card
¥¥f j
.
¥¥j k
IndexOf
¥¥k r
(
¥¥r s
$char
¥¥s v
)
¥¥v w
!=
¥¥x z
-
¥¥{ |
$num
¥¥| }
)
¥¥} ~
{
µµ 
return
∂∂ "
true
∂∂# '
;
∂∂' (
}
∑∑ 
return
ππ 
false
ππ $
;
ππ$ %
}
∫∫ 
)
∫∫ 
;
∫∫ 
if
ºº 
(
ºº $
firstGroupWithModifier
ºº .
is
ºº/ 1
IShape
ºº2 8
shape
ºº9 >
)
ºº> ?
{
ΩΩ 
var
ææ 
key
ææ 
=
ææ  !
shape
ææ" '
.
ææ' (
Metadata
ææ( 0
.
ææ0 1
Card
ææ1 5
;
ææ5 6
var
øø 
modifierIndex
øø )
=
øø* +
key
øø, /
.
øø/ 0
IndexOf
øø0 7
(
øø7 8
$char
øø8 ;
)
øø; <
;
øø< =
return
¿¿ 
new
¿¿ " 
PositionalGrouping
¿¿# 5
(
¿¿5 6
key
¿¿6 9
.
¿¿9 :
	Substring
¿¿: C
(
¿¿C D
modifierIndex
¿¿D Q
)
¿¿Q R
)
¿¿R S
;
¿¿S T
}
¡¡ 
return
√√ 
new
√√  
PositionalGrouping
√√ 1
(
√√1 2
)
√√2 3
;
√√3 4
}
ƒƒ 
,
ƒƒ "
FlatPositionComparer
ƒƒ '
.
ƒƒ' (
Instance
ƒƒ( 0
)
ƒƒ0 1
;
ƒƒ1 2
var
∆∆ 
	container
∆∆ 
=
∆∆ 
(
∆∆  !
GroupViewModel
∆∆! /
)
∆∆/ 0
await
∆∆0 5
ShapeFactory
∆∆6 B
.
∆∆B C
CreateAsync
∆∆C N
<
∆∆N O
GroupViewModel
∆∆O ]
>
∆∆] ^
(
∆∆^ _
$str
∆∆_ n
,
∆∆n o
m
∆∆p q
=>
∆∆r t
{
«« 
m
»» 
.
»» 

Identifier
»»  
=
»»! "
Shape
»»# (
.
»»( )

Identifier
»») 3
;
»»3 4
}
…… 
)
…… 
;
…… 
foreach
ÀÀ 
(
ÀÀ 
var
ÀÀ 
orderedGrouping
ÀÀ ,
in
ÀÀ- /
orderedGroupings
ÀÀ0 @
)
ÀÀ@ A
{
ÃÃ 
var
ÕÕ 
groupingShape
ÕÕ %
=
ÕÕ& '
(
ÕÕ( )
GroupingViewModel
ÕÕ) :
)
ÕÕ: ;
await
ÕÕ; @
ShapeFactory
ÕÕA M
.
ÕÕM N
CreateAsync
ÕÕN Y
<
ÕÕY Z
GroupingViewModel
ÕÕZ k
>
ÕÕk l
(
ÕÕl m
$str
ÕÕm s
,
ÕÕs t
m
ÕÕu v
=>
ÕÕw y
{
ŒŒ 
m
œœ 
.
œœ 

Identifier
œœ $
=
œœ% &
Shape
œœ' ,
.
œœ, -

Identifier
œœ- 7
;
œœ7 8
m
–– 
.
–– 
Grouping
–– "
=
––# $
orderedGrouping
––% 4
;
––4 5
}
—— 
)
—— 
;
—— 
foreach
”” 
(
”” 
var
””  
item
””! %
in
””& (
orderedGrouping
””) 8
)
””8 9
{
‘‘ 
groupingShape
’’ %
.
’’% &
Add
’’& )
(
’’) *
item
’’* .
)
’’. /
;
’’/ 0
}
÷÷ 
	container
◊◊ 
.
◊◊ 
Add
◊◊ !
(
◊◊! "
groupingShape
◊◊" /
)
◊◊/ 0
;
◊◊0 1
}
ÿÿ  
htmlContentBuilder
⁄⁄ "
.
⁄⁄" #

AppendHtml
⁄⁄# -
(
⁄⁄- .
await
⁄⁄. 3
DisplayAsync
⁄⁄4 @
.
⁄⁄@ A
ShapeExecuteAsync
⁄⁄A R
(
⁄⁄R S
	container
⁄⁄S \
)
⁄⁄\ ]
)
⁄⁄] ^
;
⁄⁄^ _
}
€€ 
else
‹‹ 
{
›› 
var
ﬂﬂ 
groupingShape
ﬂﬂ !
=
ﬂﬂ" #
(
ﬂﬂ$ %
GroupingViewModel
ﬂﬂ% 6
)
ﬂﬂ6 7
await
ﬂﬂ7 <
ShapeFactory
ﬂﬂ= I
.
ﬂﬂI J
CreateAsync
ﬂﬂJ U
<
ﬂﬂU V
GroupingViewModel
ﬂﬂV g
>
ﬂﬂg h
(
ﬂﬂh i
$str
ﬂﬂi y
,
ﬂﬂy z
m
ﬂﬂ{ |
=>
ﬂﬂ} 
{
‡‡ 
m
·· 
.
·· 

Identifier
··  
=
··! "
Shape
··# (
.
··( )

Identifier
··) 3
;
··3 4
m
‚‚ 
.
‚‚ 
Grouping
‚‚ 
=
‚‚  
Shape
‚‚! &
.
‚‚& '
Grouping
‚‚' /
;
‚‚/ 0
}
„„ 
)
„„ 
;
„„  
htmlContentBuilder
ÂÂ "
.
ÂÂ" #

AppendHtml
ÂÂ# -
(
ÂÂ- .
await
ÂÂ. 3
DisplayAsync
ÂÂ4 @
.
ÂÂ@ A
ShapeExecuteAsync
ÂÂA R
(
ÂÂR S
groupingShape
ÂÂS `
)
ÂÂ` a
)
ÂÂa b
;
ÂÂb c
}
ÊÊ 
return
ËË  
htmlContentBuilder
ËË %
;
ËË% &
}
ÈÈ 	
[
ÏÏ 	
Shape
ÏÏ	 
]
ÏÏ 
public
ÌÌ 
async
ÌÌ 
Task
ÌÌ 
<
ÌÌ 
IHtmlContent
ÌÌ &
>
ÌÌ& '
ColumnGrouping
ÌÌ( 6
(
ÌÌ6 7
IDisplayHelper
ÌÌ7 E
DisplayAsync
ÌÌF R
,
ÌÌR S
GroupingViewModel
ÌÌT e
Shape
ÌÌf k
,
ÌÌk l
IShapeFactory
ÌÌm z
ShapeFactoryÌÌ{ á
)ÌÌá à
{
ÓÓ 	
var
ÔÔ  
htmlContentBuilder
ÔÔ "
=
ÔÔ# $
new
ÔÔ% ( 
HtmlContentBuilder
ÔÔ) ;
(
ÔÔ; <
)
ÔÔ< =
;
ÔÔ= >
var
ÒÒ 
	groupings
ÒÒ 
=
ÒÒ 
Shape
ÒÒ !
.
ÒÒ! "
Grouping
ÒÒ" *
.
ÒÒ* +
ToLookup
ÒÒ+ 3
(
ÒÒ3 4
x
ÒÒ4 5
=>
ÒÒ6 8
{
ÚÚ 
if
ÛÛ 
(
ÛÛ 
x
ÛÛ 
is
ÛÛ 
IShape
ÛÛ 
s
ÛÛ  !
)
ÛÛ! "
{
ÙÙ 
var
ıı 
key
ıı 
=
ıı 
s
ıı 
.
ıı  
Metadata
ıı  (
.
ıı( )
Column
ıı) /
;
ıı/ 0
if
ˆˆ 
(
ˆˆ 
String
ˆˆ 
.
ˆˆ 
IsNullOrEmpty
ˆˆ ,
(
ˆˆ, -
key
ˆˆ- 0
)
ˆˆ0 1
)
ˆˆ1 2
{
˜˜ 
return
¯¯ 

ContentKey
¯¯ )
;
¯¯) *
}
˘˘ 
var
¸¸ 
modifierIndex
¸¸ %
=
¸¸& '
key
¸¸( +
.
¸¸+ ,
IndexOf
¸¸, 3
(
¸¸3 4
$char
¸¸4 7
)
¸¸7 8
;
¸¸8 9
if
˝˝ 
(
˝˝ 
modifierIndex
˝˝ %
!=
˝˝& (
-
˝˝) *
$num
˝˝* +
)
˝˝+ ,
{
˛˛ 
key
ˇˇ 
=
ˇˇ 
key
ˇˇ !
.
ˇˇ! "
	Substring
ˇˇ" +
(
ˇˇ+ ,
$num
ˇˇ, -
,
ˇˇ- .
modifierIndex
ˇˇ/ <
)
ˇˇ< =
;
ˇˇ= >
}
ÄÄ 
modifierIndex
ÉÉ !
=
ÉÉ" #
key
ÉÉ$ '
.
ÉÉ' (
IndexOf
ÉÉ( /
(
ÉÉ/ 0
$char
ÉÉ0 3
)
ÉÉ3 4
;
ÉÉ4 5
if
ÑÑ 
(
ÑÑ 
modifierIndex
ÑÑ %
!=
ÑÑ& (
-
ÑÑ) *
$num
ÑÑ* +
)
ÑÑ+ ,
{
ÖÖ 
key
ÜÜ 
=
ÜÜ 
key
ÜÜ !
.
ÜÜ! "
	Substring
ÜÜ" +
(
ÜÜ+ ,
$num
ÜÜ, -
,
ÜÜ- .
modifierIndex
ÜÜ/ <
)
ÜÜ< =
;
ÜÜ= >
}
áá 
return
ââ 
key
ââ 
;
ââ 
}
ää 
return
åå 

ContentKey
åå !
;
åå! "
}
çç 
)
çç 
;
çç 
if
èè 
(
èè 
	groupings
èè 
.
èè 
Count
èè 
>
èè  !
$num
èè" #
)
èè# $
{
êê 
var
ëë 
positionModifiers
ëë %
=
ëë& ' 
GetColumnPositions
ëë( :
(
ëë: ;
	groupings
ëë; D
)
ëëD E
;
ëëE F
var
ìì 
orderedGroupings
ìì $
=
ìì% &
	groupings
ìì' 0
.
ìì0 1
OrderBy
ìì1 8
(
ìì8 9
grouping
ìì9 A
=>
ììB D
{
îî 
if
ïï 
(
ïï 
positionModifiers
ïï )
.
ïï) *
TryGetValue
ïï* 5
(
ïï5 6
grouping
ïï6 >
.
ïï> ?
Key
ïï? B
,
ïïB C
out
ïïD G
var
ïïH K
position
ïïL T
)
ïïT U
)
ïïU V
{
ññ 
return
óó 
new
óó " 
PositionalGrouping
óó# 5
{
óó6 7
Position
óó8 @
=
óóA B
position
óóC K
}
óóL M
;
óóM N
}
òò 
else
ôô 
{
öö 
return
õõ 
new
õõ " 
PositionalGrouping
õõ# 5
(
õõ5 6
)
õõ6 7
;
õõ7 8
}
úú 
}
ùù 
,
ùù "
FlatPositionComparer
ùù '
.
ùù' (
Instance
ùù( 0
)
ùù0 1
;
ùù1 2
var
üü 
columnModifiers
üü #
=
üü$ % 
GetColumnModifiers
üü& 8
(
üü8 9
orderedGroupings
üü9 I
)
üüI J
;
üüJ K
var
°° 
	container
°° 
=
°° 
(
°°  !
GroupViewModel
°°! /
)
°°/ 0
await
°°0 5
ShapeFactory
°°6 B
.
°°B C
CreateAsync
°°C N
<
°°N O
GroupViewModel
°°O ]
>
°°] ^
(
°°^ _
$str
°°_ p
,
°°p q
m
°°r s
=>
°°t v
{
¢¢ 
m
££ 
.
££ 

Identifier
££  
=
££! "
Shape
££# (
.
££( )

Identifier
££) 3
;
££3 4
}
§§ 
)
§§ 
;
§§ 
foreach
¶¶ 
(
¶¶ 
var
¶¶ 
orderedGrouping
¶¶ ,
in
¶¶- /
orderedGroupings
¶¶0 @
)
¶¶@ A
{
ßß 
var
®® 
groupingShape
®® %
=
®®& '
(
®®( )
GroupingViewModel
®®) :
)
®®: ;
await
®®; @
ShapeFactory
®®A M
.
®®M N
CreateAsync
®®N Y
<
®®Y Z
GroupingViewModel
®®Z k
>
®®k l
(
®®l m
$str
®®m u
,
®®u v
m
®®w x
=>
®®y {
{
©© 
m
™™ 
.
™™ 

Identifier
™™ $
=
™™% &
Shape
™™' ,
.
™™, -

Identifier
™™- 7
;
™™7 8
m
´´ 
.
´´ 
Grouping
´´ "
=
´´# $
orderedGrouping
´´% 4
;
´´4 5
}
¨¨ 
)
¨¨ 
;
¨¨ 
groupingShape
ÆÆ !
.
ÆÆ! "
Classes
ÆÆ" )
.
ÆÆ) *
Add
ÆÆ* -
(
ÆÆ- .
$str
ÆÆ. ?
)
ÆÆ? @
;
ÆÆ@ A
groupingShape
ØØ !
.
ØØ! "
Classes
ØØ" )
.
ØØ) *
Add
ØØ* -
(
ØØ- .
$str
ØØ. 7
+
ØØ8 9
orderedGrouping
ØØ: I
.
ØØI J
Key
ØØJ M
.
ØØM N
HtmlClassify
ØØN Z
(
ØØZ [
)
ØØ[ \
)
ØØ\ ]
;
ØØ] ^
var
≤≤ 
columnClasses
≤≤ %
=
≤≤& '
$str
≤≤( 7
;
≤≤7 8
if
≥≥ 
(
≥≥ 
columnModifiers
≥≥ '
.
≥≥' (
TryGetValue
≥≥( 3
(
≥≥3 4
orderedGrouping
≥≥4 C
.
≥≥C D
Key
≥≥D G
,
≥≥G H
out
≥≥I L
var
≥≥M P
columnModifier
≥≥Q _
)
≥≥_ `
)
≥≥` a
{
¥¥ 
if
∂∂ 
(
∂∂ 
columnModifier
∂∂ *
.
∂∂* +
IndexOf
∂∂+ 2
(
∂∂2 3
$char
∂∂3 6
)
∂∂6 7
!=
∂∂8 :
-
∂∂; <
$num
∂∂< =
)
∂∂= >
{
∑∑ 
columnClasses
∏∏ )
=
∏∏* +
$str
∏∏, 9
+
∏∏: ;
columnModifier
∏∏< J
;
∏∏J K
}
ππ 
else
∫∫ 
{
ªª 
columnClasses
ºº )
=
ºº* +
$str
ºº, <
+
ºº= >
columnModifier
ºº? M
;
ººM N
}
ΩΩ 
}
ææ 
groupingShape
¿¿ !
.
¿¿! "
Classes
¿¿" )
.
¿¿) *
Add
¿¿* -
(
¿¿- .
columnClasses
¿¿. ;
)
¿¿; <
;
¿¿< =
foreach
¬¬ 
(
¬¬ 
var
¬¬  
item
¬¬! %
in
¬¬& (
orderedGrouping
¬¬) 8
)
¬¬8 9
{
√√ 
groupingShape
ƒƒ %
.
ƒƒ% &
Add
ƒƒ& )
(
ƒƒ) *
item
ƒƒ* .
)
ƒƒ. /
;
ƒƒ/ 0
}
≈≈ 
	container
∆∆ 
.
∆∆ 
Add
∆∆ !
(
∆∆! "
groupingShape
∆∆" /
)
∆∆/ 0
;
∆∆0 1
}
««  
htmlContentBuilder
…… "
.
……" #

AppendHtml
……# -
(
……- .
await
……. 3
DisplayAsync
……4 @
.
……@ A
ShapeExecuteAsync
……A R
(
……R S
	container
……S \
)
……\ ]
)
……] ^
;
……^ _
}
   
else
ÀÀ 
{
ÃÃ 
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
item
ŒŒ !
in
ŒŒ" $
Shape
ŒŒ% *
.
ŒŒ* +
Grouping
ŒŒ+ 3
)
ŒŒ3 4
{
œœ  
htmlContentBuilder
–– &
.
––& '

AppendHtml
––' 1
(
––1 2
await
––2 7
DisplayAsync
––8 D
.
––D E
ShapeExecuteAsync
––E V
(
––V W
item
––W [
)
––[ \
)
––\ ]
;
––] ^
}
—— 
}
““ 
return
‘‘  
htmlContentBuilder
‘‘ %
;
‘‘% &
}
’’ 	
private
÷÷ 
static
÷÷ 

Dictionary
÷÷ !
<
÷÷! "
string
÷÷" (
,
÷÷( )
string
÷÷* 0
>
÷÷0 1 
GetColumnPositions
÷÷2 D
(
÷÷D E
ILookup
÷÷E L
<
÷÷L M
string
÷÷M S
,
÷÷S T
object
÷÷U [
>
÷÷[ \
	groupings
÷÷] f
)
÷÷f g
{
◊◊ 	
var
ÿÿ 
positionModifiers
ÿÿ !
=
ÿÿ" #
new
ÿÿ$ '

Dictionary
ÿÿ( 2
<
ÿÿ2 3
string
ÿÿ3 9
,
ÿÿ9 :
string
ÿÿ; A
>
ÿÿA B
(
ÿÿB C
)
ÿÿC D
;
ÿÿD E
foreach
ŸŸ 
(
ŸŸ 
var
ŸŸ 
grouping
ŸŸ !
in
ŸŸ" $
	groupings
ŸŸ% .
)
ŸŸ. /
{
⁄⁄ 
var
€€ $
firstGroupWithModifier
€€ *
=
€€+ ,0
"FirstGroupingWithModifierOrDefault
€€- O
(
€€O P
grouping
€€P X
,
€€X Y
$char
€€Z ]
)
€€] ^
;
€€^ _
if
‹‹ 
(
‹‹ $
firstGroupWithModifier
‹‹ *
is
‹‹+ -
IShape
‹‹. 4
shape
‹‹5 :
)
‹‹: ;
{
›› 
var
ﬁﬁ 
key
ﬁﬁ 
=
ﬁﬁ 
shape
ﬁﬁ #
.
ﬁﬁ# $
Metadata
ﬁﬁ$ ,
.
ﬁﬁ, -
Column
ﬁﬁ- 3
;
ﬁﬁ3 4
var
ﬂﬂ !
columnModifierIndex
ﬂﬂ +
=
ﬂﬂ, -
key
ﬂﬂ. 1
.
ﬂﬂ1 2
IndexOf
ﬂﬂ2 9
(
ﬂﬂ9 :
$char
ﬂﬂ: =
)
ﬂﬂ= >
;
ﬂﬂ> ?
if
‡‡ 
(
‡‡ !
columnModifierIndex
‡‡ +
!=
‡‡, .
-
‡‡/ 0
$num
‡‡0 1
)
‡‡1 2
{
·· 
var
‚‚ #
positionModifierIndex
‚‚ 1
=
‚‚2 3
key
‚‚4 7
.
‚‚7 8
IndexOf
‚‚8 ?
(
‚‚? @
$char
‚‚@ C
)
‚‚C D
;
‚‚D E
if
‰‰ 
(
‰‰ #
positionModifierIndex
‰‰ 1
>
‰‰2 3!
columnModifierIndex
‰‰4 G
)
‰‰G H
{
ÂÂ 
positionModifiers
ÊÊ -
.
ÊÊ- .
Add
ÊÊ. 1
(
ÊÊ1 2
key
ÊÊ2 5
.
ÊÊ5 6
	Substring
ÊÊ6 ?
(
ÊÊ? @
$num
ÊÊ@ A
,
ÊÊA B!
columnModifierIndex
ÊÊC V
)
ÊÊV W
,
ÊÊW X
key
ÊÊY \
.
ÊÊ\ ]
	Substring
ÊÊ] f
(
ÊÊf g#
positionModifierIndex
ÊÊg |
+
ÊÊ} ~
$numÊÊ Ä
)ÊÊÄ Å
)ÊÊÅ Ç
;ÊÊÇ É
}
ÁÁ 
else
ËË 
{
ÈÈ 
var
ÍÍ 
length
ÍÍ  &
=
ÍÍ' (!
columnModifierIndex
ÍÍ) <
-
ÍÍ= >#
positionModifierIndex
ÍÍ? T
;
ÍÍT U
positionModifiers
ÎÎ -
.
ÎÎ- .
Add
ÎÎ. 1
(
ÎÎ1 2
key
ÎÎ2 5
.
ÎÎ5 6
	Substring
ÎÎ6 ?
(
ÎÎ? @
$num
ÎÎ@ A
,
ÎÎA B#
positionModifierIndex
ÎÎC X
)
ÎÎX Y
,
ÎÎY Z
key
ÎÎ[ ^
.
ÎÎ^ _
	Substring
ÎÎ_ h
(
ÎÎh i#
positionModifierIndex
ÎÎi ~
+ÎÎ Ä
$numÎÎÅ Ç
,ÎÎÇ É
lengthÎÎÑ ä
-ÎÎã å
$numÎÎç é
)ÎÎé è
)ÎÎè ê
;ÎÎê ë
}
ÏÏ 
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
var
 #
positionModifierIndex
 1
=
2 3
key
4 7
.
7 8
IndexOf
8 ?
(
? @
$char
@ C
)
C D
;
D E
positionModifiers
ÒÒ )
.
ÒÒ) *
Add
ÒÒ* -
(
ÒÒ- .
key
ÒÒ. 1
.
ÒÒ1 2
	Substring
ÒÒ2 ;
(
ÒÒ; <
$num
ÒÒ< =
,
ÒÒ= >#
positionModifierIndex
ÒÒ? T
)
ÒÒT U
,
ÒÒU V
key
ÒÒW Z
.
ÒÒZ [
	Substring
ÒÒ[ d
(
ÒÒd e#
positionModifierIndex
ÒÒe z
+
ÒÒ{ |
$num
ÒÒ} ~
)
ÒÒ~ 
)ÒÒ Ä
;ÒÒÄ Å
}
ÚÚ 
}
ÛÛ 
}
ÙÙ 
return
ˆˆ 
positionModifiers
ˆˆ $
;
ˆˆ$ %
}
˜˜ 	
private
˘˘ 
static
˘˘ 

Dictionary
˘˘ !
<
˘˘! "
string
˘˘" (
,
˘˘( )
string
˘˘* 0
>
˘˘0 1 
GetColumnModifiers
˘˘2 D
(
˘˘D E
IEnumerable
˘˘E P
<
˘˘P Q
	IGrouping
˘˘Q Z
<
˘˘Z [
string
˘˘[ a
,
˘˘a b
object
˘˘c i
>
˘˘i j
>
˘˘j k
	groupings
˘˘l u
)
˘˘u v
{
˙˙ 	
var
˚˚ 
columnModifiers
˚˚ 
=
˚˚  !
new
˚˚" %

Dictionary
˚˚& 0
<
˚˚0 1
string
˚˚1 7
,
˚˚7 8
string
˚˚9 ?
>
˚˚? @
(
˚˚@ A
)
˚˚A B
;
˚˚B C
foreach
¸¸ 
(
¸¸ 
var
¸¸ 
grouping
¸¸ !
in
¸¸" $
	groupings
¸¸% .
)
¸¸. /
{
˝˝ 
var
˛˛ $
firstGroupWithModifier
˛˛ *
=
˛˛+ ,0
"FirstGroupingWithModifierOrDefault
˛˛- O
(
˛˛O P
grouping
˛˛P X
,
˛˛X Y
$char
˛˛Z ]
)
˛˛] ^
;
˛˛^ _
if
ˇˇ 
(
ˇˇ $
firstGroupWithModifier
ˇˇ *
is
ˇˇ+ -
IShape
ˇˇ. 4
shape
ˇˇ5 :
)
ˇˇ: ;
{
ÄÄ 
var
ÅÅ 
key
ÅÅ 
=
ÅÅ 
shape
ÅÅ #
.
ÅÅ# $
Metadata
ÅÅ$ ,
.
ÅÅ, -
Column
ÅÅ- 3
;
ÅÅ3 4
var
ÇÇ 
posModifierIndex
ÇÇ (
=
ÇÇ) *
key
ÇÇ+ .
.
ÇÇ. /
IndexOf
ÇÇ/ 6
(
ÇÇ6 7
$char
ÇÇ7 :
)
ÇÇ: ;
;
ÇÇ; <
if
ÉÉ 
(
ÉÉ 
posModifierIndex
ÉÉ (
!=
ÉÉ) +
-
ÉÉ, -
$num
ÉÉ- .
)
ÉÉ. /
{
ÑÑ 
var
ÖÖ 
colModifierIndex
ÖÖ ,
=
ÖÖ- .
key
ÖÖ/ 2
.
ÖÖ2 3
IndexOf
ÖÖ3 :
(
ÖÖ: ;
$char
ÖÖ; >
)
ÖÖ> ?
;
ÖÖ? @
if
áá 
(
áá 
colModifierIndex
áá ,
>
áá- .
posModifierIndex
áá/ ?
)
áá? @
{
àà 
columnModifiers
ââ +
.
ââ+ ,
Add
ââ, /
(
ââ/ 0
key
ââ0 3
.
ââ3 4
	Substring
ââ4 =
(
ââ= >
$num
ââ> ?
,
ââ? @
posModifierIndex
ââA Q
)
ââQ R
,
ââR S
key
ââT W
.
ââW X
	Substring
ââX a
(
ââa b
colModifierIndex
ââb r
+
ââs t
$num
ââu v
)
ââv w
)
ââw x
;
ââx y
}
ää 
else
ãã 
{
åå 
var
çç 
length
çç  &
=
çç' (
posModifierIndex
çç) 9
-
çç: ;
colModifierIndex
çç< L
;
ççL M
columnModifiers
éé +
.
éé+ ,
Add
éé, /
(
éé/ 0
key
éé0 3
.
éé3 4
	Substring
éé4 =
(
éé= >
$num
éé> ?
,
éé? @
colModifierIndex
ééA Q
)
ééQ R
,
ééR S
key
ééT W
.
ééW X
	Substring
ééX a
(
ééa b
colModifierIndex
ééb r
+
éés t
$num
ééu v
,
éév w
length
ééx ~
-éé Ä
$numééÅ Ç
)ééÇ É
)ééÉ Ñ
;ééÑ Ö
}
èè 
}
êê 
else
ëë 
{
íí 
var
ìì !
columnModifierIndex
ìì /
=
ìì0 1
key
ìì2 5
.
ìì5 6
IndexOf
ìì6 =
(
ìì= >
$char
ìì> A
)
ììA B
;
ììB C
columnModifiers
îî '
.
îî' (
Add
îî( +
(
îî+ ,
key
îî, /
.
îî/ 0
	Substring
îî0 9
(
îî9 :
$num
îî: ;
,
îî; <!
columnModifierIndex
îî= P
)
îîP Q
,
îîQ R
key
îîS V
.
îîV W
	Substring
îîW `
(
îî` a!
columnModifierIndex
îîa t
+
îîu v
$num
îîw x
)
îîx y
)
îîy z
;
îîz {
}
ïï 
}
ññ 
}
óó 
return
ôô 
columnModifiers
ôô "
;
ôô" #
}
öö 	
private
úú 
static
úú 
object
úú 0
"FirstGroupingWithModifierOrDefault
úú @
(
úú@ A
	IGrouping
úúA J
<
úúJ K
string
úúK Q
,
úúQ R
object
úúS Y
>
úúY Z
grouping
úú[ c
,
úúc d
char
úúe i
modifier
úúj r
)
úúr s
{
ùù 	
var
ûû $
firstGroupWithModifier
ûû &
=
ûû' (
grouping
ûû) 1
.
ûû1 2
FirstOrDefault
ûû2 @
(
ûû@ A
group
ûûA F
=>
ûûG I
{
üü 
if
†† 
(
†† 
group
†† 
is
†† 
IShape
†† #
s
††$ %
&&
††& (
!
††) *
String
††* 0
.
††0 1
IsNullOrEmpty
††1 >
(
††> ?
s
††? @
.
††@ A
Metadata
††A I
.
††I J
Column
††J P
)
††P Q
&&
††R T
s
††U V
.
††V W
Metadata
††W _
.
††_ `
Column
††` f
.
††f g
IndexOf
††g n
(
††n o
modifier
††o w
)
††w x
!=
††y {
-
††| }
$num
††} ~
)
††~ 
{
°° 
return
¢¢ 
true
¢¢ 
;
¢¢  
}
££ 
return
•• 
false
•• 
;
•• 
}
¶¶ 
)
¶¶ 
;
¶¶ 
return
®® $
firstGroupWithModifier
®® )
;
®®) *
}
©© 	
}
™™ 
internal
¨¨ 
class
¨¨  
PositionalGrouping
¨¨ %
:
¨¨& '
IPositioned
¨¨( 3
{
≠≠ 
public
ÆÆ  
PositionalGrouping
ÆÆ !
(
ÆÆ! "
)
ÆÆ" #
{
ØØ 	
}
∞∞ 	
public
≤≤  
PositionalGrouping
≤≤ !
(
≤≤! "
string
≤≤" (
key
≤≤) ,
)
≤≤, -
{
≥≥ 	
if
¥¥ 
(
¥¥ 
!
¥¥ 
String
¥¥ 
.
¥¥ 
IsNullOrEmpty
¥¥ %
(
¥¥% &
key
¥¥& )
)
¥¥) *
)
¥¥* +
{
µµ 
var
∂∂ 
modifierIndex
∂∂ !
=
∂∂" #
key
∂∂$ '
.
∂∂' (
IndexOf
∂∂( /
(
∂∂/ 0
$char
∂∂0 3
)
∂∂3 4
;
∂∂4 5
if
∑∑ 
(
∑∑ 
modifierIndex
∑∑ !
!=
∑∑" $
-
∑∑% &
$num
∑∑& '
)
∑∑' (
{
∏∏ 
Position
ππ 
=
ππ 
key
ππ "
.
ππ" #
	Substring
ππ# ,
(
ππ, -
modifierIndex
ππ- :
+
ππ; <
$num
ππ= >
)
ππ> ?
;
ππ? @
}
∫∫ 
}
ªª 
}
ºº 	
public
ΩΩ 
string
ΩΩ 
Position
ΩΩ 
{
ΩΩ  
get
ΩΩ! $
;
ΩΩ$ %
set
ΩΩ& )
;
ΩΩ) *
}
ΩΩ+ ,
}
ææ 
}øø 