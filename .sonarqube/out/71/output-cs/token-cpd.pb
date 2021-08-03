Ä.
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\CacheContext.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

class 
CacheContext 
{ 
private		 
HashSet		 
<		 
string		 
>		 
	_contexts		  )
;		) *
private

 
HashSet

 
<

 
string

 
>

 
_tags

  %
;

% &
public 
CacheContext 
( 
string "
cacheId# *
)* +
{ 	
CacheId 
= 
cacheId 
; 
} 	
public 
CacheContext 
WithExpiryOn (
(( )
DateTimeOffset) 7
expiry8 >
)> ?
{ 	
	ExpiresOn 
= 
expiry 
; 
return 
this 
; 
} 	
public 
CacheContext 
WithExpiryAfter +
(+ ,
TimeSpan, 4
duration5 =
)= >
{   	
ExpiresAfter!! 
=!! 
duration!! #
;!!# $
return"" 
this"" 
;"" 
}## 	
public)) 
CacheContext)) 
WithExpirySliding)) -
())- .
TimeSpan)). 6
window))7 =
)))= >
{** 	
ExpiresSliding++ 
=++ 
window++ #
;++# $
return,, 
this,, 
;,, 
}-- 	
public33 
CacheContext33 

AddContext33 &
(33& '
params33' -
string33. 4
[334 5
]335 6
contexts337 ?
)33? @
{44 	
if55 
(55 
	_contexts55 
==55 
null55 !
)55! "
{66 
	_contexts77 
=77 
new77 
HashSet77  '
<77' (
string77( .
>77. /
(77/ 0
)770 1
;771 2
}88 
foreach:: 
(:: 
var:: 
context::  
in::! #
contexts::$ ,
)::, -
{;; 
	_contexts<< 
.<< 
Add<< 
(<< 
context<< %
)<<% &
;<<& '
}== 
return?? 
this?? 
;?? 
}@@ 	
publicEE 
CacheContextEE 
RemoveContextEE )
(EE) *
stringEE* 0
contextEE1 8
)EE8 9
{FF 	
ifGG 
(GG 
	_contextsGG 
!=GG 
nullGG !
)GG! "
{HH 
	_contextsII 
.II 
RemoveII  
(II  !
contextII! (
)II( )
;II) *
}JJ 
returnLL 
thisLL 
;LL 
}MM 	
publicOO 
CacheContextOO 
AddTagOO "
(OO" #
paramsOO# )
stringOO* 0
[OO0 1
]OO1 2
tagsOO3 7
)OO7 8
{PP 	
ifQQ 
(QQ 
_tagsQQ 
==QQ 
nullQQ 
)QQ 
{RR 
_tagsSS 
=SS 
newSS 
HashSetSS #
<SS# $
stringSS$ *
>SS* +
(SS+ ,
)SS, -
;SS- .
}TT 
foreachVV 
(VV 
varVV 
tagVV 
inVV 
tagsVV  $
)VV$ %
{WW 
_tagsXX 
.XX 
AddXX 
(XX 
tagXX 
)XX 
;XX 
}YY 
return[[ 
this[[ 
;[[ 
}\\ 	
public^^ 
CacheContext^^ 
	RemoveTag^^ %
(^^% &
string^^& ,
tag^^- 0
)^^0 1
{__ 	
if`` 
(`` 
_tags`` 
!=`` 
null`` 
)`` 
{aa 
_tagsbb 
.bb 
Removebb 
(bb 
tagbb  
)bb  !
;bb! "
}cc 
returnee 
thisee 
;ee 
}ff 	
publichh 
stringhh 
CacheIdhh 
{hh 
gethh  #
;hh# $
}hh% &
publicii 
ICollectionii 
<ii 
stringii !
>ii! "
Contextsii# +
=>ii, .
(ii/ 0
ICollectionii0 ;
<ii; <
stringii< B
>iiB C
)iiC D
	_contextsiiD M
??iiN P
ArrayiiQ V
.iiV W
EmptyiiW \
<ii\ ]
stringii] c
>iic d
(iid e
)iie f
;iif g
publicjj 
IEnumerablejj 
<jj 
stringjj !
>jj! "
Tagsjj# '
=>jj( *
_tagsjj+ 0
??jj1 3

Enumerablejj4 >
.jj> ?
Emptyjj? D
<jjD E
stringjjE K
>jjK L
(jjL M
)jjM N
;jjN O
publickk 
DateTimeOffsetkk 
?kk 
	ExpiresOnkk (
{kk) *
getkk+ .
;kk. /
privatekk0 7
setkk8 ;
;kk; <
}kk= >
publicll 
TimeSpanll 
?ll 
ExpiresAfterll %
{ll& '
getll( +
;ll+ ,
privatell- 4
setll5 8
;ll8 9
}ll: ;
publicmm 
TimeSpanmm 
?mm 
ExpiresSlidingmm '
{mm( )
getmm* -
;mm- .
privatemm/ 6
setmm7 :
;mm: ;
}mm< =
}nn 
}oo í
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\CacheContextEntry.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

struct 
CacheContextEntry #
{ 
public 
CacheContextEntry  
(  !
string! '
key( +
,+ ,
string- 3
value4 9
)9 :
{ 	
Key 
= 
key 
; 
Value 
= 
value 
; 
}		 	
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ì
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\CacheOptions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

class 
CacheOptions 
{ 
public 
bool 
Enabled 
{ 
get !
;! "
set# &
;& '
}( )
=* +
true, 0
;0 1
public 
bool 
	DebugMode 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ’
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\ICacheContextManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

	interface  
ICacheContextManager )
{ 
Task 
< 
IEnumerable 
< 
CacheContextEntry *
>* +
>+ ,"
GetDiscriminatorsAsync- C
(C D
IEnumerableD O
<O P
stringP V
>V W
contextsX `
)` a
;a b
} 
} €
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\ICacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

	interface !
ICacheContextProvider *
{ 
Task '
PopulateContextEntriesAsync (
(( )
IEnumerable) 4
<4 5
string5 ;
>; <
contexts= E
,E F
ListG K
<K L
CacheContextEntryL ]
>] ^
entries_ f
)f g
;g h
} 
} ä
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\ICacheScopeManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

	interface 
ICacheScopeManager '
{ 
void 

EnterScope 
( 
CacheContext $
context% ,
), -
;- .
void 
	ExitScope 
( 
) 
; 
void 
AddDependencies 
( 
params #
string$ *
[* +
]+ ,
dependencies- 9
)9 :
;: ;
void 
AddContexts 
( 
params 
string  &
[& '
]' (
contexts) 1
)1 2
;2 3
void 
WithExpiryOn 
( 
DateTimeOffset (
expiryOn) 1
)1 2
;2 3
void 
WithExpiryAfter 
( 
TimeSpan %
expiryAfter& 1
)1 2
;2 3
void 
WithExpirySliding 
( 
TimeSpan '
expirySliding( 5
)5 6
;6 7
} 
} ±

íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Cache\ITagCache.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

	interface 
	ITagCache 
{ 
Task 
TagAsync 
( 
string 
key  
,  !
params" (
string) /
[/ 0
]0 1
tags2 6
)6 7
;7 8
Task		 
<		 
IEnumerable		 
<		 
string		 
>		  
>		  !
GetTaggedItemsAsync		" 5
(		5 6
string		6 <
tag		= @
)		@ A
;		A B
Task

 
RemoveTagAsync

 
(

 
string

 "
tag

# &
)

& '
;

' (
} 
public 

	interface #
ITagRemovedEventHandler ,
{ 
Task 
TagRemovedAsync 
( 
string #
tag$ '
,' (
IEnumerable) 4
<4 5
string5 ;
>; <
keys= A
)A B
;B C
} 
} ø
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\DocumentEntity.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public		 

class		 
DocumentEntity		 
:		  !
Document		" *
,		* +
IDocumentEntity		, ;
{

 
public 
JObject 

Properties !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
new2 5
JObject6 =
(= >
)> ?
;? @
} 
} Ω
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IDocumentEntity.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public		 

	interface		 
IDocumentEntity		 $
:		% &
	IDocument		' 0
,		0 1
IEntity		2 9
{

 
} 
} ‰

£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IDocumentEntityManager.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

	interface "
IDocumentEntityManager +
<+ ,
TDocumentEntity, ;
>; <
where= B
TDocumentEntityC R
:S T
classU Z
,Z [
IDocumentEntity\ k
,k l
newm p
(p q
)q r
{		 
Task 
< 
T 
> 
GetAsync 
< 
T 
> 
( 
string "
name# '
)' (
where) .
T/ 0
:1 2
new3 6
(6 7
)7 8
;8 9
Task 
SetAsync 
< 
T 
> 
( 
string 
name  $
,$ %
T& '
value( -
)- .
where/ 4
T5 6
:7 8
new9 <
(< =
)= >
;> ?
Task 
RemoveAsync 
( 
string 
name  $
)$ %
;% &
} 
} Ó
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IDocumentEntityManagerOfT.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

	interface "
IDocumentEntityManager +
<+ ,
TDocumentStore, :
,: ;
TDocumentEntity< K
>K L
:M N"
IDocumentEntityManagerO e
<e f
TDocumentEntityf u
>u v
where		 
TDocumentStore		 
:		 
IDocumentStore		 -
where		. 3
TDocumentEntity		4 C
:		D E
class		F K
,		K L
IDocumentEntity		M \
,		\ ]
new		^ a
(		a b
)		b c
{

 
} 
} ≠
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IDocumentManager.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public

 

	interface

 
IDocumentManager

 %
<

% &
	TDocument

& /
>

/ 0
where

1 6
	TDocument

7 @
:

A B
class

C H
,

H I
	IDocument

J S
,

S T
new

U X
(

X Y
)

Y Z
{ 
Task 
< 
	TDocument 
> #
GetOrCreateMutableAsync /
(/ 0
Func0 4
<4 5
Task5 9
<9 :
	TDocument: C
>C D
>D E
factoryAsyncF R
=S T
nullU Y
)Y Z
;Z [
Task 
< 
	TDocument 
> %
GetOrCreateImmutableAsync 1
(1 2
Func2 6
<6 7
Task7 ;
<; <
	TDocument< E
>E F
>F G
factoryAsyncH T
=U V
nullW [
)[ \
;\ ]
Task 
UpdateAsync 
( 
	TDocument "
document# +
,+ ,
Func- 1
<1 2
	TDocument2 ;
,; <
Task= A
>A B
afterUpdateAsyncC S
=T U
nullV Z
)Z [
;[ \
} 
} ƒ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IDocumentManagerOfT.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

	interface 
IDocumentManager %
<% &
TDocumentStore& 4
,4 5
	TDocument6 ?
>? @
:A B
IDocumentManagerC S
<S T
	TDocumentT ]
>] ^
where		 
TDocumentStore		 
:		 
IDocumentStore		 -
where		. 3
	TDocument		4 =
:		> ?
class		@ E
,		E F
	IDocument		G P
,		P Q
new		R U
(		U V
)		V W
{

 
} 
} Ñ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IDocumentSerialiser.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public

 

	interface

 
IDocumentSerialiser

 (
{ 
Task 
< 
byte 
[ 
] 
> 
SerializeAsync #
<# $
	TDocument$ -
>- .
(. /
	TDocument/ 8
document9 A
,A B
intC F
compressThresholdG X
=Y Z
Int32[ `
.` a
MaxValuea i
)i j
wherek p
	TDocumentq z
:{ |
class	} Ç
,
Ç É
	IDocument
Ñ ç
,
ç é
new
è í
(
í ì
)
ì î
;
î ï
Task 
< 
	TDocument 
> 
DeserializeAsync (
<( )
	TDocument) 2
>2 3
(3 4
byte4 8
[8 9
]9 :
data; ?
)? @
whereA F
	TDocumentG P
:Q R
classS X
,X Y
	IDocumentZ c
,c d
newe h
(h i
)i j
;j k
} 
} á
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IVolatileDocumentEntityManager.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

	interface *
IVolatileDocumentEntityManager 3
<3 4
TDocumentEntity4 C
>C D
:E F"
IDocumentEntityManagerG ]
<] ^
TDocumentEntity^ m
>m n
whereo t
TDocumentEntity	u Ñ
:
Ö Ü
class
á å
,
å ç
IDocumentEntity
é ù
,
ù û
new
ü ¢
(
¢ £
)
£ §
{ 
} 
}		 Ò
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\IVolatileDocumentManager.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public

 

	interface

 $
IVolatileDocumentManager

 -
<

- .
	TDocument

. 7
>

7 8
:

9 :
IDocumentManager

; K
<

K L
	TDocument

L U
>

U V
where

W \
	TDocument

] f
:

g h
class

i n
,

n o
	IDocument

p y
,

y z
new

{ ~
(

~ 
)	

 Ä
{ 
Task 
UpdateAtomicAsync 
( 
Func #
<# $
Task$ (
<( )
	TDocument) 2
>2 3
>3 4
updateAsync5 @
,@ A
FuncB F
<F G
	TDocumentG P
,P Q
TaskR V
>V W
afterUpdateAsyncX h
=i j
nullk o
)o p
;p q
} 
} ≥
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Documents\Options\DocumentOptions.cs
	namespace 	
OrchardCore
 
. 
	Documents 
.  
Options  '
{ 
public 

class 
DocumentOptions  
:! "(
DistributedCacheEntryOptions# ?
{ 
public 
string 
CacheKey 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 

CacheIdKey		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
bool

 
?

 
CheckConcurrency

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
bool 
? 
CheckConsistency %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
TimeSpan 
? "
SynchronizationLatency /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
IDocumentSerialiser "

Serializer# -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
int 
CompressThreshold $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
LockTimeout 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
LockExpiration !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¸
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Email\IEmailAddressValidator.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

	interface "
IEmailAddressValidator +
{ 
bool 
Validate 
( 
string 
emailAddress )
)) *
;* +
} 
} Ä
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Entities\Entity.cs
	namespace 	
OrchardCore
 
. 
Entities 
{ 
public 

class 
Entity 
: 
IEntity !
{ 
public 
JObject 

Properties !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
new2 5
JObject6 =
(= >
)> ?
;? @
} 
}		 ÿ-
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Entities\EntityExtensions.cs
	namespace 	
OrchardCore
 
. 
Entities 
{ 
public 

static 
class 
EntityExtensions (
{ 
public 
static 
T 
As 
< 
T 
> 
( 
this "
IEntity# *
entity+ 1
)1 2
where3 8
T9 :
:; <
new= @
(@ A
)A B
{ 	
var 
typeName 
= 
typeof !
(! "
T" #
)# $
.$ %
Name% )
;) *
return 
entity 
. 
As 
< 
T 
> 
(  
typeName  (
)( )
;) *
} 	
public 
static 
T 
As 
< 
T 
> 
( 
this "
IEntity# *
entity+ 1
,1 2
string3 9
name: >
)> ?
where@ E
TF G
:H I
newJ M
(M N
)N O
{ 	
JToken 
value 
; 
if 
( 
entity 
. 

Properties !
.! "
TryGetValue" -
(- .
name. 2
,2 3
out4 7
value8 =
)= >
)> ?
{   
return!! 
value!! 
.!! 
ToObject!! %
<!!% &
T!!& '
>!!' (
(!!( )
)!!) *
;!!* +
}"" 
return$$ 
new$$ 
T$$ 
($$ 
)$$ 
;$$ 
}%% 	
public-- 
static-- 
bool-- 
Has-- 
<-- 
T--  
>--  !
(--! "
this--" &
IEntity--' .
entity--/ 5
)--5 6
{.. 	
var// 
typeName// 
=// 
typeof// !
(//! "
T//" #
)//# $
.//$ %
Name//% )
;//) *
return00 
entity00 
.00 
Has00 
(00 
typeName00 &
)00& '
;00' (
}11 	
public99 
static99 
bool99 
Has99 
(99 
this99 #
IEntity99$ +
entity99, 2
,992 3
string994 :
name99; ?
)99? @
{:: 	
return;; 
entity;; 
.;; 

Properties;; $
[;;$ %
name;;% )
];;) *
!=;;+ -
null;;. 2
;;;2 3
}<< 	
public>> 
static>> 
IEntity>> 
Put>> !
<>>! "
T>>" #
>>># $
(>>$ %
this>>% )
IEntity>>* 1
entity>>2 8
,>>8 9
T>>: ;
aspect>>< B
)>>B C
where>>D I
T>>J K
:>>L M
new>>N Q
(>>Q R
)>>R S
{?? 	
return@@ 
entity@@ 
.@@ 
Put@@ 
(@@ 
typeof@@ $
(@@$ %
T@@% &
)@@& '
.@@' (
Name@@( ,
,@@, -
aspect@@. 4
)@@4 5
;@@5 6
}AA 	
publicCC 
staticCC 
IEntityCC 
PutCC !
(CC! "
thisCC" &
IEntityCC' .
entityCC/ 5
,CC5 6
stringCC7 =
nameCC> B
,CCB C
objectCCD J
propertyCCK S
)CCS T
{DD 	
entityEE 
.EE 

PropertiesEE 
[EE 
nameEE "
]EE" #
=EE$ %
JObjectEE& -
.EE- .

FromObjectEE. 8
(EE8 9
propertyEE9 A
)EEA B
;EEB C
returnFF 
entityFF 
;FF 
}GG 	
publicPP 
staticPP 
IEntityPP 
AlterPP #
<PP# $
TAspectPP$ +
>PP+ ,
(PP, -
thisPP- 1
IEntityPP2 9
entityPP: @
,PP@ A
stringPPB H
namePPI M
,PPM N
ActionPPO U
<PPU V
TAspectPPV ]
>PP] ^
actionPP_ e
)PPe f
wherePPg l
TAspectPPm t
:PPu v
newPPw z
(PPz {
)PP{ |
{QQ 	
JTokenRR 
valueRR 
;RR 
TAspectSS 
objSS 
;SS 
ifUU 
(UU 
!UU 
entityUU 
.UU 

PropertiesUU "
.UU" #
TryGetValueUU# .
(UU. /
nameUU/ 3
,UU3 4
outUU5 8
valueUU9 >
)UU> ?
)UU? @
{VV 
objWW 
=WW 
newWW 
TAspectWW !
(WW! "
)WW" #
;WW# $
}XX 
elseYY 
{ZZ 
obj[[ 
=[[ 
value[[ 
.[[ 
ToObject[[ $
<[[$ %
TAspect[[% ,
>[[, -
([[- .
)[[. /
;[[/ 0
}\\ 
action^^ 
?^^ 
.^^ 
Invoke^^ 
(^^ 
obj^^ 
)^^ 
;^^  
entity`` 
.`` 
Put`` 
(`` 
name`` 
,`` 
obj``  
)``  !
;``! "
returnbb 
entitybb 
;bb 
}cc 	
}dd 
}ee Ã
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Entities\IEntity.cs
	namespace 	
OrchardCore
 
. 
Entities 
{ 
public 

	interface 
IEntity 
{ 
JObject 

Properties 
{ 
get  
;  !
}" #
} 
}		  
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Entities\IIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Entities 
{ 
public 

	interface 
IIdGenerator !
{ 
string 
GenerateUniqueId 
(  
)  !
;! "
} 
} î	
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Files\FileProviderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
FileProviders ,
{ 
public 

static 
class "
FileProviderExtensions .
{ 
public

 
static

 
	IFileInfo

 
GetRelativeFileInfo

  3
(

3 4
this

4 8
IFileProvider

9 F
provider

G O
,

O P
string

Q W
path

X \
,

\ ]
string

^ d
other

e j
=

k l
null

m q
)

q r
{ 	
return 
provider 
. 
GetFileInfo '
(' (
PathExtensions( 6
.6 7
ResolvePath7 B
(B C
PathExtensionsC Q
.Q R
CombineR Y
(Y Z
pathZ ^
,^ _
other` e
)e f
)f g
)g h
;h i
} 	
} 
} ﬁB
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Files\PathExtensions.cs
	namespace 	
System
 
. 
IO 
{ 
public 

class 
PathExtensions 
{ 
public		 
static		 
readonly		 
char		 #
[		# $
]		$ %
PathSeparators		& 4
=		5 6
new		7 :
[		: ;
]		; <
{		= >
$char		? B
,		B C
$char		D H
}		I J
;		J K
private

 
const

 
string

 !
CurrentDirectoryToken

 2
=

3 4
$str

5 8
;

8 9
private 
const 
string  
ParentDirectoryToken 1
=2 3
$str4 8
;8 9
public 
static 
string 
Combine $
($ %
string% +
path, 0
,0 1
string2 8
other9 >
=? @
nullA E
)E F
{ 	
if 
( 
String 
. 
IsNullOrWhiteSpace )
() *
other* /
)/ 0
)0 1
{ 
return 
path 
; 
} 
if 
( 
other 
. 

StartsWith  
(  !
$char! $
)$ %
||& (
other) .
.. /

StartsWith/ 9
(9 :
$char: >
)> ?
)? @
{ 
return 
other 
; 
} 
string 
result 
; 
var 
index 
= 
path 
. 
LastIndexOfAny +
(+ ,
PathSeparators, :
): ;
;; <
if!! 
(!! 
index!! 
!=!! 
path!! 
.!! 
Length!! $
-!!% &
$num!!' (
)!!( )
{"" 
result$$ 
=$$ 
path$$ 
+$$ 
$str$$  #
+$$$ %
other$$& +
;$$+ ,
}%% 
else&& 
{'' 
result(( 
=(( 
path(( 
.(( 
	Substring(( '
(((' (
$num((( )
,(() *
index((+ 0
+((1 2
$num((3 4
)((4 5
+((6 7
other((8 =
;((= >
})) 
return++ 
result++ 
;++ 
},, 	
public11 
static11 
string11 
Combine11 $
(11$ %
string11% +
path11, 0
,110 1
params112 8
string119 ?
[11? @
]11@ A
others11B H
)11H I
{22 	
string33 
result33 
=33 
path33  
;33  !
for55 
(55 
var55 
i55 
=55 
$num55 
;55 
i55 
<55 
others55  &
.55& '
Length55' -
;55- .
i55/ 0
++550 2
)552 3
{66 
result77 
=77 
Combine77  
(77  !
result77! '
,77' (
others77) /
[77/ 0
i770 1
]771 2
)772 3
;773 4
}88 
return:: 
result:: 
;:: 
};; 	
public@@ 
static@@ 
string@@ 
ResolvePath@@ (
(@@( )
string@@) /
path@@0 4
)@@4 5
{AA 	
varBB 
pathSegmentBB 
=BB 
newBB !
StringSegmentBB" /
(BB/ 0
pathBB0 4
)BB4 5
;BB5 6
ifCC 
(CC 
pathCC 
[CC 
$numCC 
]CC 
==CC 
PathSeparatorsCC )
[CC) *
$numCC* +
]CC+ ,
||CC- /
pathCC0 4
[CC4 5
$numCC5 6
]CC6 7
==CC8 :
PathSeparatorsCC; I
[CCI J
$numCCJ K
]CCK L
)CCL M
{DD 
pathSegmentGG 
=GG 
pathSegmentGG )
.GG) *

SubsegmentGG* 4
(GG4 5
$numGG5 6
)GG6 7
;GG7 8
}HH 
varJJ 
	tokenizerJJ 
=JJ 
newJJ 
StringTokenizerJJ  /
(JJ/ 0
pathSegmentJJ0 ;
,JJ; <
PathSeparatorsJJ= K
)JJK L
;JJL M
varKK 
requiresResolutionKK "
=KK# $
falseKK% *
;KK* +
foreachLL 
(LL 
varLL 
segmentLL  
inLL! #
	tokenizerLL$ -
)LL- .
{MM 
ifPP 
(PP 
segmentPP 
.PP 
LengthPP "
==PP# %
$numPP& '
||PP( *
segmentQQ 
.QQ 
EqualsQQ "
(QQ" # 
ParentDirectoryTokenQQ# 7
)QQ7 8
||QQ9 ;
segmentRR 
.RR 
EqualsRR "
(RR" #!
CurrentDirectoryTokenRR# 8
)RR8 9
)RR9 :
{SS 
requiresResolutionTT &
=TT' (
trueTT) -
;TT- .
breakUU 
;UU 
}VV 
}WW 
ifYY 
(YY 
!YY 
requiresResolutionYY #
)YY# $
{ZZ 
return[[ 
path[[ 
;[[ 
}\\ 
var^^ 
pathSegments^^ 
=^^ 
new^^ "
List^^# '
<^^' (
StringSegment^^( 5
>^^5 6
(^^6 7
)^^7 8
;^^8 9
foreach__ 
(__ 
var__ 
segment__  
in__! #
	tokenizer__$ -
)__- .
{`` 
ifaa 
(aa 
segmentaa 
.aa 
Lengthaa "
==aa# %
$numaa& '
)aa' (
{bb 
continuedd 
;dd 
}ee 
ifff 
(ff 
segmentff 
.ff 
Equalsff "
(ff" # 
ParentDirectoryTokenff# 7
)ff7 8
)ff8 9
{gg 
ifhh 
(hh 
pathSegmentshh $
.hh$ %
Counthh% *
==hh+ -
$numhh. /
)hh/ 0
{ii 
returnll 
pathll #
;ll# $
}mm 
pathSegmentsnn  
.nn  !
RemoveAtnn! )
(nn) *
pathSegmentsnn* 6
.nn6 7
Countnn7 <
-nn= >
$numnn? @
)nn@ A
;nnA B
}oo 
elsepp 
ifpp 
(pp 
segmentpp  
.pp  !
Equalspp! '
(pp' (!
CurrentDirectoryTokenpp( =
)pp= >
)pp> ?
{qq 
continuess 
;ss 
}tt 
elseuu 
{vv 
pathSegmentsww  
.ww  !
Addww! $
(ww$ %
segmentww% ,
)ww, -
;ww- .
}xx 
}yy 
var{{ 
builder{{ 
={{ 
new{{ 
StringBuilder{{ +
({{+ ,
){{, -
;{{- .
for|| 
(|| 
var|| 
i|| 
=|| 
$num|| 
;|| 
i|| 
<|| 
pathSegments||  ,
.||, -
Count||- 2
;||2 3
i||4 5
++||5 7
)||7 8
{}} 
var~~ 
segment~~ 
=~~ 
pathSegments~~ *
[~~* +
i~~+ ,
]~~, -
;~~- .
builder 
. 
Append 
( 
$char "
)" #
;# $
builder
ÄÄ 
.
ÄÄ 
Append
ÄÄ 
(
ÄÄ 
segment
ÄÄ &
.
ÄÄ& '
Buffer
ÄÄ' -
,
ÄÄ- .
segment
ÄÄ/ 6
.
ÄÄ6 7
Offset
ÄÄ7 =
,
ÄÄ= >
segment
ÄÄ? F
.
ÄÄF G
Length
ÄÄG M
)
ÄÄM N
;
ÄÄN O
}
ÅÅ 
return
ÉÉ 
builder
ÉÉ 
.
ÉÉ 
ToString
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
;
ÉÉ% &
}
ÑÑ 	
}
ÖÖ 
}ÜÜ ù
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Html\IHtmlSanitizerService.cs
	namespace 	
OrchardCore
 
. 
Infrastructure $
.$ %
Html% )
{ 
public 

	interface !
IHtmlSanitizerService *
{ 
string 
Sanitize 
( 
string 
html #
)# $
;$ %
} 
} ˙
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Scripting\GlobalMethod.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

class 
GlobalMethod 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
Func 
< 
IServiceProvider $
,$ %
Delegate& .
>. /
Method0 6
{7 8
get9 <
;< =
set> A
;A B
}C D
}		 
}

 ï
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Scripting\IGlobalMethodProvider.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public		 

	interface		 !
IGlobalMethodProvider		 *
{

 
IEnumerable 
< 
GlobalMethod  
>  !

GetMethods" ,
(, -
)- .
;. /
} 
} ¥
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Scripting\IScriptingEngine.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

	interface 
IScriptingEngine %
{ 
string		 
Prefix		 
{		 
get		 
;		 
}		 
object

 
Evaluate

 
(

 
IScriptingScope

 '
scope

( -
,

- .
string

/ 5
script

6 <
)

< =
;

= >
IScriptingScope 
CreateScope #
(# $
IEnumerable$ /
</ 0
GlobalMethod0 <
>< =
methods> E
,E F
IServiceProviderG W
serviceProviderX g
,g h
IFileProvideri v
fileProvider	w É
,
É Ñ
string
Ö ã
basePath
å î
)
î ï
;
ï ñ
} 
} ◊
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Scripting\IScriptingManager.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public

 

	interface

 
IScriptingManager

 &
{ 
IScriptingEngine 
GetScriptingEngine +
(+ ,
string, 2
prefix3 9
)9 :
;: ;
object 
Evaluate 
( 
string 
	directive (
,( )
IFileProvider* 7
fileProvider8 D
,D E
stringF L
basePathM U
,U V
IEnumerableW b
<b c!
IGlobalMethodProviderc x
>x y"
scopedMethodProviders	z è
)
è ê
;
ê ë
IReadOnlyList!! 
<!! !
IGlobalMethodProvider!! +
>!!+ ,!
GlobalMethodProviders!!- B
{!!C D
get!!E H
;!!H I
}!!J K
}"" 
}## Û
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Scripting\IScriptingScope.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

	interface 
IScriptingScope $
{ 
} 
} ¥
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\IRole.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public 

	interface 
IRole 
{ 
string 
RoleName 
{ 
get 
; 
}  
string 
RoleDescription 
{  
get! $
;$ %
}& '
} 
}		 ä
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\IRoleRemovedEventHandler.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public 

	interface $
IRoleRemovedEventHandler -
{ 
Task 
RoleRemovedAsync 
( 
string $
roleName% -
)- .
;. /
} 
}		 ¸	
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\Permissions\IPermissionProvider.cs
	namespace 	
OrchardCore
 
. 
Security 
. 
Permissions *
{ 
public

 

	interface

 
IPermissionProvider

 (
{ 
Task 
< 
IEnumerable 
< 

Permission #
># $
>$ %
GetPermissionsAsync& 9
(9 :
): ;
;; <
IEnumerable 
<  
PermissionStereotype (
>( )!
GetDefaultStereotypes* ?
(? @
)@ A
;A B
} 
public 

class  
PermissionStereotype %
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
IEnumerable 
< 

Permission %
>% &
Permissions' 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} »
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\Permissions\Permission.cs
	namespace 	
OrchardCore
 
. 
Security 
. 
Permissions *
{ 
public 

class 

Permission 
{		 
public

 
const

 
string

 
	ClaimType

 %
=

& '
$str

( 4
;

4 5
public 

Permission 
( 
string  
name! %
)% &
{ 	
if 
( 
name 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
name7 ;
); <
)< =
;= >
} 
Name 
= 
name 
; 
} 	
public 

Permission 
( 
string  
name! %
,% &
string' -
description. 9
,9 :
bool; ?
isSecurityCritical@ R
=S T
falseU Z
)Z [
:\ ]
this^ b
(b c
namec g
)g h
{ 	
Description 
= 
description %
;% &
IsSecurityCritical 
=  
isSecurityCritical! 3
;3 4
} 	
public 

Permission 
( 
string  
name! %
,% &
string' -
description. 9
,9 :
IEnumerable; F
<F G

PermissionG Q
>Q R
	impliedByS \
,\ ]
bool^ b
isSecurityCriticalc u
=v w
falsex }
)} ~
:	 Ä
this
Å Ö
(
Ö Ü
name
Ü ä
,
ä ã
description
å ó
,
ó ò 
isSecurityCritical
ô ´
)
´ ¨
{ 	
	ImpliedBy 
= 
	impliedBy !
;! "
} 	
public!! 
string!! 
Name!! 
{!! 
get!!  
;!!  !
set!!" %
;!!% &
}!!' (
public"" 
string"" 
Description"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public## 
string## 
Category## 
{##  
get##! $
;##$ %
set##& )
;##) *
}##+ ,
public$$ 
IEnumerable$$ 
<$$ 

Permission$$ %
>$$% &
	ImpliedBy$$' 0
{$$1 2
get$$3 6
;$$6 7
set$$8 ;
;$$; <
}$$= >
public%% 
bool%% 
IsSecurityCritical%% &
{%%' (
get%%) ,
;%%, -
set%%. 1
;%%1 2
}%%3 4
public'' 
static'' 
implicit'' 
operator'' '
Claim''( -
(''- .

Permission''. 8
p''9 :
)'': ;
{(( 	
return)) 
new)) 
Claim)) 
()) 
	ClaimType)) &
,))& '
p))( )
.))) *
Name))* .
))). /
;))/ 0
}** 	
}++ 
},, ≈
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\Role.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public 

class 
Role 
: 
IRole 
{ 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
RoleDescription %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
string		 
NormalizedRoleName		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
List

 
<

 
	RoleClaim

 
>

 

RoleClaims

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
=

8 9
new

: =
List

> B
<

B C
	RoleClaim

C L
>

L M
(

M N
)

N O
;

O P
public 
Role 
Clone 
( 
) 
{ 	
var 
role 
= 
new 
Role 
{ 
RoleName 
= 
RoleName #
,# $
RoleDescription 
=  !
RoleDescription" 1
,1 2
NormalizedRoleName "
=# $
NormalizedRoleName% 7
,7 8
} 
; 
foreach 
( 
var 
claim 
in !

RoleClaims" ,
), -
{ 
role 
. 

RoleClaims 
.  
Add  #
(# $
new$ '
	RoleClaim( 1
(1 2
)2 3
{4 5
	ClaimType6 ?
=@ A
claimB G
.G H
	ClaimTypeH Q
,Q R

ClaimValueS ]
=^ _
claim` e
.e f

ClaimValuef p
}q r
)r s
;s t
} 
return 
role 
; 
} 	
} 
} ∑
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\RoleClaim.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public 

class 
	RoleClaim 
{		 
public 
string 
	ClaimType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

ClaimValue  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Claim 
ToClaim 
( 
) 
{ 	
return 
new 
Claim 
( 
	ClaimType &
,& '

ClaimValue( 2
)2 3
;3 4
} 	
} 
} ä	
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\Services\IRoleService.cs
	namespace 	
OrchardCore
 
. 
Security 
. 
Services '
{ 
public 

	interface 
IRoleService !
{		 
Task

 
<

 
IEnumerable

 
<

 
IRole

 
>

 
>

  
GetRolesAsync

! .
(

. /
)

/ 0
;

0 1
Task 
< 
IEnumerable 
< 
Claim 
> 
>  
GetRoleClaimsAsync! 3
(3 4
string4 :
role; ?
,? @
CancellationTokenA R
cancellationTokenS d
=e f
defaultg n
)n o
;o p
Task 
< 
IEnumerable 
< 
string 
>  
>  !'
GetNormalizedRoleNamesAsync" =
(= >
)> ?
;? @
} 
} ë	
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\Services\RoleServiceExtensions.cs
	namespace 	
OrchardCore
 
. 
Security 
. 
Services '
{ 
public 

static 
class !
RoleServiceExtensions -
{ 
public		 
static		 
async		 
Task		  
<		  !
IEnumerable		! ,
<		, -
string		- 3
>		3 4
>		4 5
GetRoleNamesAsync		6 G
(		G H
this		H L
IRoleService		M Y
roleService		Z e
)		e f
{

 	
var 
roles 
= 
await 
roleService )
.) *
GetRolesAsync* 7
(7 8
)8 9
;9 :
return 
roles 
. 
Select 
(  
r  !
=>" $
r% &
.& '
RoleName' /
)/ 0
;0 1
} 	
} 
} –
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Security\StandardPermissions.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public 

class 
StandardPermissions $
{ 
public 
static 
readonly 

Permission )
	SiteOwner* 3
=4 5
new6 9

Permission: D
(D E
$strE P
,P Q
$strR j
,j k
isSecurityCriticall ~
:~ 
true
Ä Ñ
)
Ñ Ö
;
Ö Ü
} 
}		 Ò
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Settings\CacheMode.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

enum 
	CacheMode 
{ 
FromConfiguration 
, 
Enabled 
, 
DebugEnabled 
, 
Disabled 
}		 
}

 ±
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Settings\ISite.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

	interface 
ISite 
: 
IEntity $
{ 
string 
SiteName 
{ 
get 
; 
set "
;" #
}$ %
string		 
PageTitleFormat		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
string

 
SiteSalt

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
string 
	SuperUser 
{ 
get 
; 
set  #
;# $
}% &
string 
Calendar 
{ 
get 
; 
set "
;" #
}$ %
string 

TimeZoneId 
{ 
get 
;  
set! $
;$ %
}& '
ResourceDebugMode 
ResourceDebugMode +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
bool 
UseCdn 
{ 
get 
; 
set 
; 
}  !
string 

CdnBaseUrl 
{ 
get 
;  
set! $
;$ %
}& '
int 
PageSize 
{ 
get 
; 
set 
;  
}! "
int 
MaxPageSize 
{ 
get 
; 
set "
;" #
}$ %
int 
MaxPagedCount 
{ 
get 
;  
set! $
;$ %
}& '
string 
BaseUrl 
{ 
get 
; 
set !
;! "
}# $ 
RouteValueDictionary 
	HomeRoute &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
bool 
AppendVersion 
{ 
get  
;  !
set" %
;% &
}' (
	CacheMode 
	CacheMode 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ô
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Settings\ISiteService.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

	interface 
ISiteService !
{		 
Task 
< 
ISite 
> !
LoadSiteSettingsAsync )
() *
)* +
;+ ,
Task 
< 
ISite 
>  
GetSiteSettingsAsync (
(( )
)) *
;* +
Task #
UpdateSiteSettingsAsync $
($ %
ISite% *
site+ /
)/ 0
;0 1
} 
} ÿ
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure.Abstractions\Settings\ResourceDebugMode.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

enum 
ResourceDebugMode !
{ 
FromConfiguration 
, 
Enabled 
, 
Disabled 
} 
}		 