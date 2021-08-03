—
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdApplicationDescriptor.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Descriptors* 5
{ 
public 

class '
OpenIdApplicationDescriptor ,
:- .+
OpenIddictApplicationDescriptor/ N
{ 
public 
ISet 
< 
string 
> 
Roles !
{" #
get$ '
;' (
}) *
=+ ,
new- 0
HashSet1 8
<8 9
string9 ?
>? @
(@ A
StringComparerA O
.O P
OrdinalIgnoreCaseP a
)a b
;b c
} 
} –
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdAuthorizationDescriptor.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Descriptors* 5
{ 
public 

class )
OpenIdAuthorizationDescriptor .
:/ 0-
!OpenIddictAuthorizationDescriptor1 R
{S T
}U V
} ώ
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdScopeDescriptor.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Descriptors* 5
{ 
public 

class !
OpenIdScopeDescriptor &
:' (%
OpenIddictScopeDescriptor) B
{C D
}E F
} ώ
΅D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdTokenDescriptor.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Descriptors* 5
{ 
public 

class !
OpenIdTokenDescriptor &
:' (%
OpenIddictTokenDescriptor) B
{C D
}E F
} ό
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdApplicationManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Managers* 2
{ 
public 

	interface %
IOpenIdApplicationManager .
:/ 0)
IOpenIddictApplicationManager1 N
{ 
	ValueTask 
< 
object 
> !
FindByPhysicalIdAsync /
(/ 0
string0 6

identifier7 A
,A B
CancellationTokenC T
cancellationTokenU f
=g h
defaulti p
)p q
;q r
	ValueTask 
< 
string 
> 
GetPhysicalIdAsync ,
(, -
object- 3
application4 ?
,? @
CancellationTokenA R
cancellationTokenS d
=e f
defaultg n
)n o
;o p
	ValueTask 
< 
ImmutableArray  
<  !
string! '
>' (
>( )
GetRolesAsync* 7
(7 8
object8 >
application? J
,J K
CancellationTokenL ]
cancellationToken^ o
=p q
defaultr y
)y z
;z {
IAsyncEnumerable 
< 
object 
>  
ListInRoleAsync! 0
(0 1
string1 7
role8 <
,< =
CancellationToken> O
cancellationTokenP a
=b c
defaultd k
)k l
;l m
	ValueTask 
SetRolesAsync 
(  
object  &
application' 2
,2 3
ImmutableArray4 B
<B C
stringC I
>I J
rolesK P
,P Q
CancellationTokenR c
cancellationTokend u
=v w
defaultx 
)	 €
;
€ 
} 
} ϊ
¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdAuthorizationManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Managers* 2
{ 
public 

	interface '
IOpenIdAuthorizationManager 0
:1 2+
IOpenIddictAuthorizationManager3 R
{ 
	ValueTask 
< 
object 
> !
FindByPhysicalIdAsync /
(/ 0
string0 6

identifier7 A
,A B
CancellationTokenC T
cancellationTokenU f
=g h
defaulti p
)p q
;q r
	ValueTask 
< 
string 
> 
GetPhysicalIdAsync ,
(, -
object- 3
authorization4 A
,A B
CancellationTokenC T
cancellationTokenU f
=g h
defaulti p
)p q
;q r
} 
} Ϊ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdScopeManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Managers* 2
{ 
public 

	interface 
IOpenIdScopeManager (
:) *#
IOpenIddictScopeManager+ B
{ 
	ValueTask 
< 
object 
> !
FindByPhysicalIdAsync /
(/ 0
string0 6

identifier7 A
,A B
CancellationTokenC T
cancellationTokenU f
=g h
defaulti p
)p q
;q r
	ValueTask 
< 
string 
> 
GetPhysicalIdAsync ,
(, -
object- 3
scope4 9
,9 :
CancellationToken; L
cancellationTokenM ^
=_ `
defaulta h
)h i
;i j
} 
} Ϊ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdTokenManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Managers* 2
{ 
public 

	interface 
IOpenIdTokenManager (
:) *#
IOpenIddictTokenManager+ B
{ 
	ValueTask 
< 
object 
> !
FindByPhysicalIdAsync /
(/ 0
string0 6

identifier7 A
,A B
CancellationTokenC T
cancellationTokenU f
=g h
defaulti p
)p q
;q r
	ValueTask 
< 
string 
> 
GetPhysicalIdAsync ,
(, -
object- 3
token4 9
,9 :
CancellationToken; L
cancellationTokenM ^
=_ `
defaulta h
)h i
;i j
} 
} ™
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdApplicationStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Stores* 0
{ 
public		 

	interface		 #
IOpenIdApplicationStore		 ,
<		, -
TApplication		- 9
>		9 :
:		; <'
IOpenIddictApplicationStore		= X
<		X Y
TApplication		Y e
>		e f
where		g l
TApplication		m y
:		z {
class			| 
{

 
	ValueTask 
< 
TApplication 
> !
FindByPhysicalIdAsync  5
(5 6
string6 <

identifier= G
,G H
CancellationTokenI Z
cancellationToken[ l
)l m
;m n
	ValueTask 
< 
string 
> 
GetPhysicalIdAsync ,
(, -
TApplication- 9
application: E
,E F
CancellationTokenG X
cancellationTokenY j
)j k
;k l
	ValueTask 
< 
ImmutableArray  
<  !
string! '
>' (
>( )
GetRolesAsync* 7
(7 8
TApplication8 D
applicationE P
,P Q
CancellationTokenR c
cancellationTokend u
)u v
;v w
IAsyncEnumerable 
< 
TApplication %
>% &
ListInRoleAsync' 6
(6 7
string7 =
role> B
,B C
CancellationTokenD U
cancellationTokenV g
)g h
;h i
	ValueTask 
SetRolesAsync 
(  
TApplication  ,
application- 8
,8 9
ImmutableArray: H
<H I
stringI O
>O P
rolesQ V
,V W
CancellationTokenX i
cancellationTokenj {
){ |
;| }
} 
} ‚

 D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdAuthorizationStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Stores* 0
{ 
public 

	interface %
IOpenIdAuthorizationStore .
<. /
TAuthorization/ =
>= >
:? @)
IOpenIddictAuthorizationStoreA ^
<^ _
TAuthorization_ m
>m n
whereo t
TAuthorization	u ƒ
:
„ …
class
† ‹
{ 
	ValueTask		 
<		 
TAuthorization		  
>		  !!
FindByPhysicalIdAsync		" 7
(		7 8
string		8 >

identifier		? I
,		I J
CancellationToken		K \
cancellationToken		] n
)		n o
;		o p
	ValueTask

 
<

 
string

 
>

 
GetPhysicalIdAsync

 ,
(

, -
TAuthorization

- ;
authorization

< I
,

I J
CancellationToken

K \
cancellationToken

] n
)

n o
;

o p
} 
} µ	
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdScopeStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Stores* 0
{ 
public 

	interface 
IOpenIdScopeStore &
<& '
TScope' -
>- .
:/ 0!
IOpenIddictScopeStore1 F
<F G
TScopeG M
>M N
whereO T
TScopeU [
:\ ]
class^ c
{ 
	ValueTask		 
<		 
TScope		 
>		 !
FindByPhysicalIdAsync		 /
(		/ 0
string		0 6

identifier		7 A
,		A B
CancellationToken		C T
cancellationToken		U f
)		f g
;		g h
	ValueTask

 
<

 
string

 
>

 
GetPhysicalIdAsync

 ,
(

, -
TScope

- 3
scope

4 9
,

9 :
CancellationToken

; L
cancellationToken

M ^
)

^ _
;

_ `
} 
} µ	
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdTokenStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Abstractions )
.) *
Stores* 0
{ 
public 

	interface 
IOpenIdTokenStore &
<& '
TToken' -
>- .
:/ 0!
IOpenIddictTokenStore1 F
<F G
TTokenG M
>M N
whereO T
TTokenU [
:\ ]
class^ c
{ 
	ValueTask		 
<		 
TToken		 
>		 !
FindByPhysicalIdAsync		 /
(		/ 0
string		0 6

identifier		7 A
,		A B
CancellationToken		C T
cancellationToken		U f
)		f g
;		g h
	ValueTask

 
<

 
string

 
>

 
GetPhysicalIdAsync

 ,
(

, -
TToken

- 3
token

4 9
,

9 :
CancellationToken

; L
cancellationToken

M ^
)

^ _
;

_ `
} 
} –
‚D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\OpenIdConstants.cs
	namespace 	
OrchardCore
 
. 
OpenId 
{ 
public 

static 
class 
OpenIdConstants '
{ 
public 
static 
class 
Claims "
{ 	
public 
const 
string 

EntityType  *
=+ ,
$str- 7
;7 8
} 	
public

 
static

 
class

 
EntityTypes

 '
{ 	
public 
const 
string 
Application  +
=, -
$str. ;
;; <
public 
const 
string 
User  $
=% &
$str' -
;- .
} 	
public 
static 
class 
Features $
{ 	
public 
const 
string 
Client  &
=' (
$str) D
;D E
public 
const 
string 
Core  $
=% &
$str' ;
;; <
public 
const 
string 

Management  *
=+ ,
$str- L
;L M
public 
const 
string 
Server  &
=' (
$str) D
;D E
public 
const 
string 

Validation  *
=+ ,
$str- L
;L M
} 	
public 
static 
class 
Prefixes $
{ 	
public 
const 
string 
Tenant  &
=' (
$str) /
;/ 0
} 	
public 
static 
class 

Properties &
{ 	
public   
const   
string   
Roles    %
=  & '
$str  ( /
;  / 0
}!! 	
}"" 
}## ξL
ƒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\OpenIdExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class 
OpenIdExtensions (
{ 
public 
static !
OpenIddictCoreBuilder + 
AddOrchardMigrations, @
(@ A
thisA E!
OpenIddictCoreBuilderF [
builder\ c
)c d
{ 	
if 
( 
builder 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
builder7 >
)> ?
)? @
;@ A
} 
builder 
. 
Services 
. 
TryAddEnumerable -
(- .
ServiceDescriptor !
.! "
Scoped" (
<( )
IDataMigration) 7
,7 8
OpenIdMigrations9 I
>I J
(J K
)K L
)L M
;M N
return 
builder 
; 
} 	
public 
static !
OpenIddictCoreBuilder +
UseOrchardManagers, >
(> ?
this? C!
OpenIddictCoreBuilderD Y
builderZ a
)a b
{   	
if!! 
(!! 
builder!! 
==!! 
null!! 
)!!  
{"" 
throw## 
new## !
ArgumentNullException## /
(##/ 0
nameof##0 6
(##6 7
builder##7 >
)##> ?
)##? @
;##@ A
}$$ 
builder&& 
.&& %
ReplaceApplicationManager&& -
(&&- .
typeof&&. 4
(&&4 5$
OpenIdApplicationManager&&5 M
<&&M N
>&&N O
)&&O P
)&&P Q
.'' '
ReplaceAuthorizationManager'' /
(''/ 0
typeof''0 6
(''6 7&
OpenIdAuthorizationManager''7 Q
<''Q R
>''R S
)''S T
)''T U
.(( 
ReplaceScopeManager(( '
(((' (
typeof((( .
(((. /
OpenIdScopeManager((/ A
<((A B
>((B C
)((C D
)((D E
.)) 
ReplaceTokenManager)) '
())' (
typeof))( .
()). /
OpenIdTokenManager))/ A
<))A B
>))B C
)))C D
)))D E
;))E F
builder-- 
.-- 
Services-- 
.-- 
TryAddScoped-- )
(--) *
provider--* 2
=>--3 5
(--6 7%
IOpenIdApplicationManager--7 P
)--P Q
provider.. 
... 
GetRequiredService.. +
<..+ ,)
IOpenIddictApplicationManager.., I
>..I J
(..J K
)..K L
)..L M
;..M N
builder// 
.// 
Services// 
.// 
TryAddScoped// )
(//) *
provider//* 2
=>//3 5
(//6 7'
IOpenIdAuthorizationManager//7 R
)//R S
provider00 
.00 
GetRequiredService00 +
<00+ ,+
IOpenIddictAuthorizationManager00, K
>00K L
(00L M
)00M N
)00N O
;00O P
builder11 
.11 
Services11 
.11 
TryAddScoped11 )
(11) *
provider11* 2
=>113 5
(116 7
IOpenIdScopeManager117 J
)11J K
provider22 
.22 
GetRequiredService22 +
<22+ ,#
IOpenIddictScopeManager22, C
>22C D
(22D E
)22E F
)22F G
;22G H
builder33 
.33 
Services33 
.33 
TryAddScoped33 )
(33) *
provider33* 2
=>333 5
(336 7
IOpenIdTokenManager337 J
)33J K
provider44 
.44 
GetRequiredService44 +
<44+ ,#
IOpenIddictTokenManager44, C
>44C D
(44D E
)44E F
)44F G
;44G H
return66 
builder66 
;66 
}77 	
public99 
static99 !
OpenIddictCoreBuilder99 +
	UseYesSql99, 5
(995 6
this996 :!
OpenIddictCoreBuilder99; P
builder99Q X
)99X Y
{:: 	
if;; 
(;; 
builder;; 
==;; 
null;; 
);;  
{<< 
throw== 
new== !
ArgumentNullException== /
(==/ 0
nameof==0 6
(==6 7
builder==7 >
)==> ?
)==? @
;==@ A
}>> 
builderCC 
.CC 
	ConfigureCC 
(CC 
optionsCC %
=>CC& (
optionsCC) 0
.CC0 1&
DisableAdditionalFilteringCC1 K
=CCL M
falseCCN S
)CCS T
;CCT U
builderEE 
.EE '
SetDefaultApplicationEntityEE /
<EE/ 0
OpenIdApplicationEE0 A
>EEA B
(EEB C
)EEC D
.FF )
SetDefaultAuthorizationEntityFF 1
<FF1 2
OpenIdAuthorizationFF2 E
>FFE F
(FFF G
)FFG H
.GG !
SetDefaultScopeEntityGG )
<GG) *
OpenIdScopeGG* 5
>GG5 6
(GG6 7
)GG7 8
.HH !
SetDefaultTokenEntityHH )
<HH) *
OpenIdTokenHH* 5
>HH5 6
(HH6 7
)HH7 8
;HH8 9
builderJJ 
.JJ +
ReplaceApplicationStoreResolverJJ 3
<JJ3 4*
OpenIdApplicationStoreResolverJJ4 R
>JJR S
(JJS T
)JJT U
.KK -
!ReplaceAuthorizationStoreResolverKK 5
<KK5 6,
 OpenIdAuthorizationStoreResolverKK6 V
>KKV W
(KKW X
)KKX Y
.LL %
ReplaceScopeStoreResolverLL -
<LL- .$
OpenIdScopeStoreResolverLL. F
>LLF G
(LLG H
)LLH I
.MM %
ReplaceTokenStoreResolverMM -
<MM- .$
OpenIdTokenStoreResolverMM. F
>MMF G
(MMG H
)MMH I
;MMI J
builderOO 
.OO 
ServicesOO 
.OO 
TryAddSingletonOO ,
<OO, -*
OpenIdApplicationStoreResolverOO- K
.OOK L
TypeResolutionCacheOOL _
>OO_ `
(OO` a
)OOa b
;OOb c
builderPP 
.PP 
ServicesPP 
.PP 
TryAddSingletonPP ,
<PP, -,
 OpenIdAuthorizationStoreResolverPP- M
.PPM N
TypeResolutionCachePPN a
>PPa b
(PPb c
)PPc d
;PPd e
builderQQ 
.QQ 
ServicesQQ 
.QQ 
TryAddSingletonQQ ,
<QQ, -$
OpenIdScopeStoreResolverQQ- E
.QQE F
TypeResolutionCacheQQF Y
>QQY Z
(QQZ [
)QQ[ \
;QQ\ ]
builderRR 
.RR 
ServicesRR 
.RR 
TryAddSingletonRR ,
<RR, -$
OpenIdTokenStoreResolverRR- E
.RRE F
TypeResolutionCacheRRF Y
>RRY Z
(RRZ [
)RR[ \
;RR\ ]
builderTT 
.TT 
ServicesTT 
.TT 
TryAddScopedTT )
(TT) *
typeofTT* 0
(TT0 1"
OpenIdApplicationStoreTT1 G
<TTG H
>TTH I
)TTI J
)TTJ K
;TTK L
builderUU 
.UU 
ServicesUU 
.UU 
TryAddScopedUU )
(UU) *
typeofUU* 0
(UU0 1$
OpenIdAuthorizationStoreUU1 I
<UUI J
>UUJ K
)UUK L
)UUL M
;UUM N
builderVV 
.VV 
ServicesVV 
.VV 
TryAddScopedVV )
(VV) *
typeofVV* 0
(VV0 1
OpenIdScopeStoreVV1 A
<VVA B
>VVB C
)VVC D
)VVD E
;VVE F
builderWW 
.WW 
ServicesWW 
.WW 
TryAddScopedWW )
(WW) *
typeofWW* 0
(WW0 1
OpenIdTokenStoreWW1 A
<WWA B
>WWB C
)WWC D
)WWD E
;WWE F
builderYY 
.YY 
ServicesYY 
.YY 
TryAddEnumerableYY -
(YY- .
newYY. 1
[YY1 2
]YY2 3
{ZZ 
ServiceDescriptor[[ !
.[[! "
	Singleton[[" +
<[[+ ,
IIndexProvider[[, :
,[[: ;*
OpenIdApplicationIndexProvider[[< Z
>[[Z [
([[[ \
)[[\ ]
,[[] ^
ServiceDescriptor\\ !
.\\! "
	Singleton\\" +
<\\+ ,
IIndexProvider\\, :
,\\: ;,
 OpenIdAuthorizationIndexProvider\\< \
>\\\ ]
(\\] ^
)\\^ _
,\\_ `
ServiceDescriptor]] !
.]]! "
	Singleton]]" +
<]]+ ,
IIndexProvider]], :
,]]: ;$
OpenIdScopeIndexProvider]]< T
>]]T U
(]]U V
)]]V W
,]]W X
ServiceDescriptor^^ !
.^^! "
	Singleton^^" +
<^^+ ,
IIndexProvider^^, :
,^^: ;$
OpenIdTokenIndexProvider^^< T
>^^T U
(^^U V
)^^V W
}__ 
)__ 
;__ 
returnaa 
builderaa 
;aa 
}bb 	
}cc 
}dd “»
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdApplicationManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
.% &
Managers& .
{ 
public 

class $
OpenIdApplicationManager )
<) *
TApplication* 6
>6 7
:8 9(
OpenIddictApplicationManager: V
<V W
TApplicationW c
>c d
,d e%
IOpenIdApplicationManager !
where" '
TApplication( 4
:5 6
class7 <
{ 
public $
OpenIdApplicationManager '
(' ('
IOpenIddictApplicationCache '
<' (
TApplication( 4
>4 5
cache6 ;
,; <
ILogger 
< $
OpenIdApplicationManager ,
<, -
TApplication- 9
>9 :
>: ;
logger< B
,B C
IOptionsMonitor 
< !
OpenIddictCoreOptions 1
>1 2
options3 :
,: ;/
#IOpenIddictApplicationStoreResolver /
resolver0 8
)8 9
: 
base 
( 
cache 
, 
logger  
,  !
options" )
,) *
resolver+ 3
)3 4
{ 	
} 	
public)) 
virtual)) 
	ValueTask))  
<))  !
TApplication))! -
>))- .!
FindByPhysicalIdAsync))/ D
())D E
string))E K

identifier))L V
,))V W
CancellationToken))X i
cancellationToken))j {
=))| }
default	))~ …
)
))… †
{** 	
if++ 
(++ 
string++ 
.++ 
IsNullOrEmpty++ $
(++$ %

identifier++% /
)++/ 0
)++0 1
{,, 
throw-- 
new-- 
ArgumentException-- +
(--+ ,
$str--, U
,--U V
nameof--W ]
(--] ^

identifier--^ h
)--h i
)--i j
;--j k
}.. 
return00 
Store00 
is00 #
IOpenIdApplicationStore00 3
<003 4
TApplication004 @
>00@ A
store00B G
?00H I
store11 
.11 !
FindByPhysicalIdAsync11 +
(11+ ,

identifier11, 6
,116 7
cancellationToken118 I
)11I J
:11K L
Store22 
.22 
FindByIdAsync22 #
(22# $

identifier22$ .
,22. /
cancellationToken220 A
)22A B
;22B C
}33 	
public>> 
virtual>> 
	ValueTask>>  
<>>  !
string>>! '
>>>' (
GetPhysicalIdAsync>>) ;
(>>; <
TApplication>>< H
application>>I T
,>>T U
CancellationToken>>V g
cancellationToken>>h y
=>>z {
default	>>| ƒ
)
>>ƒ „
{?? 	
if@@ 
(@@ 
application@@ 
==@@ 
null@@ #
)@@# $
{AA 
throwBB 
newBB !
ArgumentNullExceptionBB /
(BB/ 0
nameofBB0 6
(BB6 7
applicationBB7 B
)BBB C
)BBC D
;BBD E
}CC 
returnEE 
StoreEE 
isEE #
IOpenIdApplicationStoreEE 3
<EE3 4
TApplicationEE4 @
>EE@ A
storeEEB G
?EEH I
storeFF 
.FF 
GetPhysicalIdAsyncFF (
(FF( )
applicationFF) 4
,FF4 5
cancellationTokenFF6 G
)FFG H
:FFI J
StoreGG 
.GG 

GetIdAsyncGG  
(GG  !
applicationGG! ,
,GG, -
cancellationTokenGG. ?
)GG? @
;GG@ A
}HH 	
publicJJ 
virtualJJ 
asyncJJ 
	ValueTaskJJ &
<JJ& '
ImmutableArrayJJ' 5
<JJ5 6
stringJJ6 <
>JJ< =
>JJ= >
GetRolesAsyncJJ? L
(JJL M
TApplicationKK 
applicationKK $
,KK$ %
CancellationTokenKK& 7
cancellationTokenKK8 I
=KKJ K
defaultKKL S
)KKS T
{LL 	
ifMM 
(MM 
applicationMM 
==MM 
nullMM #
)MM# $
{NN 
throwOO 
newOO !
ArgumentNullExceptionOO /
(OO/ 0
nameofOO0 6
(OO6 7
applicationOO7 B
)OOB C
)OOC D
;OOD E
}PP 
ifRR 
(RR 
StoreRR 
isRR #
IOpenIdApplicationStoreRR 0
<RR0 1
TApplicationRR1 =
>RR= >
storeRR? D
)RRD E
{SS 
returnTT 
awaitTT 
storeTT "
.TT" #
GetRolesAsyncTT# 0
(TT0 1
applicationTT1 <
,TT< =
cancellationTokenTT> O
)TTO P
;TTP Q
}UU 
elseVV 
{WW 
varXX 

propertiesXX 
=XX  
awaitXX! &
StoreXX' ,
.XX, -
GetPropertiesAsyncXX- ?
(XX? @
applicationXX@ K
,XXK L
cancellationTokenXXM ^
)XX^ _
;XX_ `
ifYY 
(YY 

propertiesYY 
.YY 
TryGetValueYY *
(YY* +
OpenIdConstantsYY+ :
.YY: ;

PropertiesYY; E
.YYE F
RolesYYF K
,YYK L
outYYM P
JsonElementYYQ \
valueYY] b
)YYb c
)YYc d
{ZZ 
var[[ 
builder[[ 
=[[  !
ImmutableArray[[" 0
.[[0 1
CreateBuilder[[1 >
<[[> ?
string[[? E
>[[E F
([[F G
)[[G H
;[[H I
foreach]] 
(]] 
var]]  
item]]! %
in]]& (
value]]) .
.]]. /
EnumerateArray]]/ =
(]]= >
)]]> ?
)]]? @
{^^ 
builder__ 
.__  
Add__  #
(__# $
item__$ (
.__( )
	GetString__) 2
(__2 3
)__3 4
)__4 5
;__5 6
}`` 
returnbb 
builderbb "
.bb" #
ToImmutablebb# .
(bb. /
)bb/ 0
;bb0 1
}cc 
returnee 
ImmutableArrayee %
.ee% &
Createee& ,
<ee, -
stringee- 3
>ee3 4
(ee4 5
)ee5 6
;ee6 7
}ff 
}gg 	
publicii 
virtualii 
IAsyncEnumerableii '
<ii' (
TApplicationii( 4
>ii4 5
ListInRoleAsyncii6 E
(iiE F
stringjj 
rolejj 
,jj 
CancellationTokenjj *
cancellationTokenjj+ <
=jj= >
defaultjj? F
)jjF G
{kk 	
ifll 
(ll 
stringll 
.ll 
IsNullOrEmptyll $
(ll$ %
rolell% )
)ll) *
)ll* +
{mm 
thrownn 
newnn 
ArgumentExceptionnn +
(nn+ ,
$strnn, T
,nnT U
nameofnnV \
(nn\ ]
rolenn] a
)nna b
)nnb c
;nnc d
}oo 
ifqq 
(qq 
Storeqq 
isqq #
IOpenIdApplicationStoreqq 0
<qq0 1
TApplicationqq1 =
>qq= >
storeqq? D
)qqD E
{rr 
returnss 
storess 
.ss 
ListInRoleAsyncss ,
(ss, -
roless- 1
,ss1 2
cancellationTokenss3 D
)ssD E
;ssE F
}tt 
returnvv 
ExecuteAsyncvv 
(vv  
)vv  !
;vv! "
asyncxx 
IAsyncEnumerablexx "
<xx" #
TApplicationxx# /
>xx/ 0
ExecuteAsyncxx1 =
(xx= >
)xx> ?
{yy 
forzz 
(zz 
varzz 
offsetzz 
=zz  !
$numzz" #
;zz# $
;zz% &
offsetzz' -
+=zz. 0
$numzz1 6
)zz6 7
{{{ 
await|| 
foreach|| !
(||" #
var||# &
application||' 2
in||3 5
Store||6 ;
.||; <
	ListAsync||< E
(||E F
$num||F K
,||K L
offset||M S
,||S T
cancellationToken||U f
)||f g
)||g h
{}} 
var~~ 
roles~~ !
=~~" #
await~~$ )
GetRolesAsync~~* 7
(~~7 8
application~~8 C
,~~C D
cancellationToken~~E V
)~~V W
;~~W X
if 
( 
roles !
.! "
Contains" *
(* +
role+ /
,/ 0
StringComparer1 ?
.? @
OrdinalIgnoreCase@ Q
)Q R
)R S
{
€€ 
yield
 !
return
" (
application
) 4
;
4 5
}
‚‚ 
}
ƒƒ 
}
„„ 
}
…… 
}
†† 	
public
 
virtual
 
async
 
	ValueTask
 &
SetRolesAsync
' 4
(
4 5
TApplication
5 A
application
B M
,
M N
ImmutableArray
‰‰ 
<
‰‰ 
string
‰‰ !
>
‰‰! "
roles
‰‰# (
,
‰‰( )
CancellationToken
‰‰* ;
cancellationToken
‰‰< M
=
‰‰N O
default
‰‰P W
)
‰‰W X
{
 	
if
‹‹ 
(
‹‹ 
application
‹‹ 
==
‹‹ 
null
‹‹ #
)
‹‹# $
{
 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
application
7 B
)
B C
)
C D
;
D E
}
 
if
 
(
 
roles
 
.
 
Any
 
(
 
role
 
=>
 !
string
" (
.
( )
IsNullOrEmpty
) 6
(
6 7
role
7 ;
)
; <
)
< =
)
= >
{
‘‘ 
throw
’’ 
new
’’ 
ArgumentException
’’ +
(
’’+ ,
$str
’’, Q
,
’’Q R
nameof
’’S Y
(
’’Y Z
roles
’’Z _
)
’’_ `
)
’’` a
;
’’a b
}
““ 
if
•• 
(
•• 
Store
•• 
is
•• %
IOpenIdApplicationStore
•• 0
<
••0 1
TApplication
••1 =
>
••= >
store
••? D
)
••D E
{
–– 
await
—— 
store
—— 
.
—— 
SetRolesAsync
—— )
(
——) *
application
——* 5
,
——5 6
roles
——7 <
,
——< =
cancellationToken
——> O
)
——O P
;
——P Q
}
 
else
™™ 
{
 
var
›› 

properties
›› 
=
››  
await
››! &
Store
››' ,
.
››, - 
GetPropertiesAsync
››- ?
(
››? @
application
››@ K
,
››K L
cancellationToken
››M ^
)
››^ _
;
››_ `

properties
 
=
 

properties
 '
.
' (
SetItem
( /
(
/ 0
OpenIdConstants
0 ?
.
? @

Properties
@ J
.
J K
Roles
K P
,
P Q
JsonSerializer
R `
.
` a
Deserialize
a l
<
l m
JsonElement
m x
>
x y
(
y z
JsonSerializer
 "
.
" #
	Serialize
# ,
(
, -
roles
- 2
,
2 3
new
4 7#
JsonSerializerOptions
8 M
{
 
Encoder
 
=
  !
JavaScriptEncoder
" 3
.
3 4'
UnsafeRelaxedJsonEscaping
4 M
}
   
)
   
)
   
)
   
;
   
await
ΆΆ 
Store
ΆΆ 
.
ΆΆ  
SetPropertiesAsync
ΆΆ .
(
ΆΆ. /
application
ΆΆ/ :
,
ΆΆ: ;

properties
ΆΆ< F
,
ΆΆF G
cancellationToken
ΆΆH Y
)
ΆΆY Z
;
ΆΆZ [
}
££ 
await
¥¥ 
UpdateAsync
¥¥ 
(
¥¥ 
application
¥¥ )
,
¥¥) *
cancellationToken
¥¥+ <
)
¥¥< =
;
¥¥= >
}
¦¦ 	
public
¨¨ 
override
¨¨ 
async
¨¨ 
	ValueTask
¨¨ '
PopulateAsync
¨¨( 5
(
¨¨5 6
TApplication
¨¨6 B
application
¨¨C N
,
¨¨N O-
OpenIddictApplicationDescriptor
©© +

descriptor
©©, 6
,
©©6 7
CancellationToken
©©8 I
cancellationToken
©©J [
=
©©\ ]
default
©©^ e
)
©©e f
{
ªª 	
if
«« 
(
«« 
application
«« 
==
«« 
null
«« #
)
««# $
{
¬¬ 
throw
­­ 
new
­­ #
ArgumentNullException
­­ /
(
­­/ 0
nameof
­­0 6
(
­­6 7
application
­­7 B
)
­­B C
)
­­C D
;
­­D E
}
®® 
if
°° 
(
°° 

descriptor
°° 
==
°° 
null
°° "
)
°°" #
{
±± 
throw
²² 
new
²² #
ArgumentNullException
²² /
(
²²/ 0
nameof
²²0 6
(
²²6 7

descriptor
²²7 A
)
²²A B
)
²²B C
;
²²C D
}
³³ 
if
µµ 
(
µµ 

descriptor
µµ 
is
µµ )
OpenIdApplicationDescriptor
µµ 9
model
µµ: ?
)
µµ? @
{
¶¶ 
if
·· 
(
·· 
Store
·· 
is
·· %
IOpenIdApplicationStore
·· 4
<
··4 5
TApplication
··5 A
>
··A B
store
··C H
)
··H I
{
ΈΈ 
await
ΉΉ 
store
ΉΉ 
.
ΉΉ  
SetRolesAsync
ΉΉ  -
(
ΉΉ- .
application
ΉΉ. 9
,
ΉΉ9 :
model
ΉΉ; @
.
ΉΉ@ A
Roles
ΉΉA F
.
ΉΉF G
ToImmutableArray
ΉΉG W
(
ΉΉW X
)
ΉΉX Y
,
ΉΉY Z
cancellationToken
ΉΉ[ l
)
ΉΉl m
;
ΉΉm n
}
ΊΊ 
else
»» 
{
ΌΌ 
var
½½ 

properties
½½ "
=
½½# $
await
½½% *
Store
½½+ 0
.
½½0 1 
GetPropertiesAsync
½½1 C
(
½½C D
application
½½D O
,
½½O P
cancellationToken
½½Q b
)
½½b c
;
½½c d

properties
ΎΎ 
=
ΎΎ  

properties
ΎΎ! +
.
ΎΎ+ ,
SetItem
ΎΎ, 3
(
ΎΎ3 4
OpenIdConstants
ΎΎ4 C
.
ΎΎC D

Properties
ΎΎD N
.
ΎΎN O
Roles
ΎΎO T
,
ΎΎT U
JsonSerializer
ΎΎV d
.
ΎΎd e
Deserialize
ΎΎe p
<
ΎΎp q
JsonElement
ΎΎq |
>
ΎΎ| }
(
ΎΎ} ~
JsonSerializer
ΏΏ &
.
ΏΏ& '
	Serialize
ΏΏ' 0
(
ΏΏ0 1
model
ΏΏ1 6
.
ΏΏ6 7
Roles
ΏΏ7 <
,
ΏΏ< =
new
ΏΏ> A#
JsonSerializerOptions
ΏΏB W
{
ΐΐ 
Encoder
ΑΑ #
=
ΑΑ$ %
JavaScriptEncoder
ΑΑ& 7
.
ΑΑ7 8'
UnsafeRelaxedJsonEscaping
ΑΑ8 Q
}
ΒΒ 
)
ΒΒ 
)
ΒΒ 
)
ΒΒ 
;
ΒΒ 
await
ΔΔ 
Store
ΔΔ 
.
ΔΔ   
SetPropertiesAsync
ΔΔ  2
(
ΔΔ2 3
application
ΔΔ3 >
,
ΔΔ> ?

properties
ΔΔ@ J
,
ΔΔJ K
cancellationToken
ΔΔL ]
)
ΔΔ] ^
;
ΔΔ^ _
}
ΕΕ 
}
ΖΖ 
await
ΘΘ 
base
ΘΘ 
.
ΘΘ 
PopulateAsync
ΘΘ $
(
ΘΘ$ %
application
ΘΘ% 0
,
ΘΘ0 1

descriptor
ΘΘ2 <
,
ΘΘ< =
cancellationToken
ΘΘ> O
)
ΘΘO P
;
ΘΘP Q
}
ΙΙ 	
public
ΛΛ 
override
ΛΛ 
async
ΛΛ 
	ValueTask
ΛΛ '
PopulateAsync
ΛΛ( 5
(
ΛΛ5 6-
OpenIddictApplicationDescriptor
ΛΛ6 U

descriptor
ΛΛV `
,
ΛΛ` a
TApplication
ΜΜ 
application
ΜΜ $
,
ΜΜ$ %
CancellationToken
ΜΜ& 7
cancellationToken
ΜΜ8 I
=
ΜΜJ K
default
ΜΜL S
)
ΜΜS T
{
ΝΝ 	
if
ΞΞ 
(
ΞΞ 

descriptor
ΞΞ 
==
ΞΞ 
null
ΞΞ "
)
ΞΞ" #
{
ΟΟ 
throw
ΠΠ 
new
ΠΠ #
ArgumentNullException
ΠΠ /
(
ΠΠ/ 0
nameof
ΠΠ0 6
(
ΠΠ6 7

descriptor
ΠΠ7 A
)
ΠΠA B
)
ΠΠB C
;
ΠΠC D
}
ΡΡ 
if
ΣΣ 
(
ΣΣ 
application
ΣΣ 
==
ΣΣ 
null
ΣΣ #
)
ΣΣ# $
{
ΤΤ 
throw
ΥΥ 
new
ΥΥ #
ArgumentNullException
ΥΥ /
(
ΥΥ/ 0
nameof
ΥΥ0 6
(
ΥΥ6 7
application
ΥΥ7 B
)
ΥΥB C
)
ΥΥC D
;
ΥΥD E
}
ΦΦ 
if
ΨΨ 
(
ΨΨ 

descriptor
ΨΨ 
is
ΨΨ )
OpenIdApplicationDescriptor
ΨΨ 9
model
ΨΨ: ?
)
ΨΨ? @
{
ΩΩ 
model
ΪΪ 
.
ΪΪ 
Roles
ΪΪ 
.
ΪΪ 
	UnionWith
ΪΪ %
(
ΪΪ% &
await
ΪΪ& +
GetRolesAsync
ΪΪ, 9
(
ΪΪ9 :
application
ΪΪ: E
,
ΪΪE F
cancellationToken
ΪΪG X
)
ΪΪX Y
)
ΪΪY Z
;
ΪΪZ [
}
ΫΫ 
await
έέ 
base
έέ 
.
έέ 
PopulateAsync
έέ $
(
έέ$ %

descriptor
έέ% /
,
έέ/ 0
application
έέ1 <
,
έέ< =
cancellationToken
έέ> O
)
έέO P
;
έέP Q
}
ήή 	
public
ΰΰ 
override
ΰΰ 
IAsyncEnumerable
ΰΰ (
<
ΰΰ( )
ValidationResult
ΰΰ) 9
>
ΰΰ9 :
ValidateAsync
ΰΰ; H
(
ΰΰH I
TApplication
αα 
application
αα $
,
αα$ %
CancellationToken
αα& 7
cancellationToken
αα8 I
=
ααJ K
default
ααL S
)
ααS T
{
ββ 	
if
γγ 
(
γγ 
application
γγ 
==
γγ 
null
γγ #
)
γγ# $
{
δδ 
throw
εε 
new
εε #
ArgumentNullException
εε /
(
εε/ 0
nameof
εε0 6
(
εε6 7
application
εε7 B
)
εεB C
)
εεC D
;
εεD E
}
ζζ 
return
θθ 
ExecuteAsync
θθ 
(
θθ  
)
θθ  !
;
θθ! "
async
κκ 
IAsyncEnumerable
κκ "
<
κκ" #
ValidationResult
κκ# 3
>
κκ3 4
ExecuteAsync
κκ5 A
(
κκA B
)
κκB C
{
λλ 
await
μμ 
foreach
μμ 
(
μμ 
var
μμ "
result
μμ# )
in
μμ* ,
base
μμ- 1
.
μμ1 2
ValidateAsync
μμ2 ?
(
μμ? @
application
μμ@ K
,
μμK L
cancellationToken
μμM ^
)
μμ^ _
)
μμ_ `
{
νν 
yield
ξξ 
return
ξξ  
result
ξξ! '
;
ξξ' (
}
οο 
foreach
ρρ 
(
ρρ 
var
ρρ 
role
ρρ !
in
ρρ" $
await
ρρ% *
GetRolesAsync
ρρ+ 8
(
ρρ8 9
application
ρρ9 D
,
ρρD E
cancellationToken
ρρF W
)
ρρW X
)
ρρX Y
{
ςς 
if
σσ 
(
σσ 
string
σσ 
.
σσ 
IsNullOrEmpty
σσ ,
(
σσ, -
role
σσ- 1
)
σσ1 2
)
σσ2 3
{
ττ 
yield
υυ 
return
υυ $
new
υυ% (
ValidationResult
υυ) 9
(
υυ9 :
$str
υυ: Z
)
υυZ [
;
υυ[ \
break
χχ 
;
χχ 
}
ψψ 
}
ωω 
}
ϊϊ 
}
ϋϋ 	
async
ύύ 
	ValueTask
ύύ 
<
ύύ 
object
ύύ 
>
ύύ '
IOpenIdApplicationManager
ύύ  9
.
ύύ9 :#
FindByPhysicalIdAsync
ύύ: O
(
ύύO P
string
ύύP V

identifier
ύύW a
,
ύύa b
CancellationToken
ύύc t 
cancellationTokenύύu †
)ύύ† ‡
=>
ώώ 
await
ώώ #
FindByPhysicalIdAsync
ώώ *
(
ώώ* +

identifier
ώώ+ 5
,
ώώ5 6
cancellationToken
ώώ7 H
)
ώώH I
;
ώώI J
	ValueTask
€€ 
<
€€ 
string
€€ 
>
€€ '
IOpenIdApplicationManager
€€ 3
.
€€3 4 
GetPhysicalIdAsync
€€4 F
(
€€F G
object
€€G M
application
€€N Y
,
€€Y Z
CancellationToken
€€[ l
cancellationToken
€€m ~
)
€€~ 
=>
  
GetPhysicalIdAsync
 !
(
! "
(
" #
TApplication
# /
)
/ 0
application
0 ;
,
; <
cancellationToken
= N
)
N O
;
O P
	ValueTask
ƒƒ 
<
ƒƒ 
ImmutableArray
ƒƒ  
<
ƒƒ  !
string
ƒƒ! '
>
ƒƒ' (
>
ƒƒ( )'
IOpenIdApplicationManager
ƒƒ* C
.
ƒƒC D
GetRolesAsync
ƒƒD Q
(
ƒƒQ R
object
ƒƒR X
application
ƒƒY d
,
ƒƒd e
CancellationToken
ƒƒf w 
cancellationTokenƒƒx ‰
)ƒƒ‰ 
=>
„„ 
GetRolesAsync
„„ 
(
„„ 
(
„„ 
TApplication
„„ *
)
„„* +
application
„„+ 6
,
„„6 7
cancellationToken
„„8 I
)
„„I J
;
„„J K
IAsyncEnumerable
†† 
<
†† 
object
†† 
>
††  '
IOpenIdApplicationManager
††! :
.
††: ;
ListInRoleAsync
††; J
(
††J K
string
††K Q
role
††R V
,
††V W
CancellationToken
††X i
cancellationToken
††j {
)
††{ |
=>
‡‡ 
ListInRoleAsync
‡‡ 
(
‡‡ 
role
‡‡ #
,
‡‡# $
cancellationToken
‡‡% 6
)
‡‡6 7
;
‡‡7 8
	ValueTask
‰‰ '
IOpenIdApplicationManager
‰‰ +
.
‰‰+ ,
SetRolesAsync
‰‰, 9
(
‰‰9 :
object
‰‰: @
application
‰‰A L
,
‰‰L M
ImmutableArray
‰‰N \
<
‰‰\ ]
string
‰‰] c
>
‰‰c d
roles
‰‰e j
,
‰‰j k
CancellationToken
‰‰l } 
cancellationToken‰‰~ 
)‰‰ 
=>
 
SetRolesAsync
 
(
 
(
 
TApplication
 *
)
* +
application
+ 6
,
6 7
roles
8 =
,
= >
cancellationToken
? P
)
P Q
;
Q R
}
‹‹ 
} ƒ)
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdAuthorizationManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
.% &
Managers& .
{ 
public 

class &
OpenIdAuthorizationManager +
<+ ,
TAuthorization, :
>: ;
:< =*
OpenIddictAuthorizationManager> \
<\ ]
TAuthorization] k
>k l
,l m'
IOpenIdAuthorizationManager #
where$ )
TAuthorization* 8
:9 :
class; @
{ 
public &
OpenIdAuthorizationManager )
() *)
IOpenIddictAuthorizationCache )
<) *
TAuthorization* 8
>8 9
cache: ?
,? @
ILogger 
< *
OpenIddictAuthorizationManager 2
<2 3
TAuthorization3 A
>A B
>B C
loggerD J
,J K
IOptionsMonitor 
< !
OpenIddictCoreOptions 1
>1 2
options3 :
,: ;1
%IOpenIddictAuthorizationStoreResolver 1
resolver2 :
): ;
: 
base 
( 
cache 
, 
logger  
,  !
options" )
,) *
resolver+ 3
)3 4
{ 	
} 	
public"" 
virtual"" 
	ValueTask""  
<""  !
TAuthorization""! /
>""/ 0!
FindByPhysicalIdAsync""1 F
(""F G
string""G M

identifier""N X
,""X Y
CancellationToken""Z k
cancellationToken""l }
=""~ 
default
""€ ‡
)
""‡ 
{## 	
if$$ 
($$ 
string$$ 
.$$ 
IsNullOrEmpty$$ $
($$$ %

identifier$$% /
)$$/ 0
)$$0 1
{%% 
throw&& 
new&& 
ArgumentException&& +
(&&+ ,
$str&&, U
,&&U V
nameof&&W ]
(&&] ^

identifier&&^ h
)&&h i
)&&i j
;&&j k
}'' 
return)) 
Store)) 
is)) #
IOpenIdApplicationStore)) 3
<))3 4
TAuthorization))4 B
>))B C
store))D I
?))J K
store** 
.** !
FindByPhysicalIdAsync** +
(**+ ,

identifier**, 6
,**6 7
cancellationToken**8 I
)**I J
:**K L
Store++ 
.++ 
FindByIdAsync++ #
(++# $

identifier++$ .
,++. /
cancellationToken++0 A
)++A B
;++B C
},, 	
public77 
virtual77 
	ValueTask77  
<77  !
string77! '
>77' (
GetPhysicalIdAsync77) ;
(77; <
TAuthorization77< J
authorization77K X
,77X Y
CancellationToken77Z k
cancellationToken77l }
=77~ 
default
77€ ‡
)
77‡ 
{88 	
if99 
(99 
authorization99 
==99  
null99! %
)99% &
{:: 
throw;; 
new;; !
ArgumentNullException;; /
(;;/ 0
nameof;;0 6
(;;6 7
authorization;;7 D
);;D E
);;E F
;;;F G
}<< 
return>> 
Store>> 
is>> %
IOpenIdAuthorizationStore>> 5
<>>5 6
TAuthorization>>6 D
>>>D E
store>>F K
?>>L M
store?? 
.?? 
GetPhysicalIdAsync?? (
(??( )
authorization??) 6
,??6 7
cancellationToken??8 I
)??I J
:??K L
Store@@ 
.@@ 

GetIdAsync@@  
(@@  !
authorization@@! .
,@@. /
cancellationToken@@0 A
)@@A B
;@@B C
}AA 	
asyncCC 
	ValueTaskCC 
<CC 
objectCC 
>CC '
IOpenIdAuthorizationManagerCC  ;
.CC; <!
FindByPhysicalIdAsyncCC< Q
(CCQ R
stringCCR X

identifierCCY c
,CCc d
CancellationTokenCCe v
cancellationToken	CCw 
)
CC ‰
=>DD 
awaitDD !
FindByPhysicalIdAsyncDD *
(DD* +

identifierDD+ 5
,DD5 6
cancellationTokenDD7 H
)DDH I
;DDI J
	ValueTaskFF 
<FF 
stringFF 
>FF '
IOpenIdAuthorizationManagerFF 5
.FF5 6
GetPhysicalIdAsyncFF6 H
(FFH I
objectFFI O
authorizationFFP ]
,FF] ^
CancellationTokenFF_ p
cancellationToken	FFq ‚
)
FF‚ ƒ
=>GG 
GetPhysicalIdAsyncGG !
(GG! "
(GG" #
TAuthorizationGG# 1
)GG1 2
authorizationGG2 ?
,GG? @
cancellationTokenGGA R
)GGR S
;GGS T
}HH 
}II “'
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdScopeManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
.% &
Managers& .
{ 
public 

class 
OpenIdScopeManager #
<# $
TScope$ *
>* +
:, -"
OpenIddictScopeManager. D
<D E
TScopeE K
>K L
,L M
IOpenIdScopeManagerN a
whereb g
TScopeh n
:o p
classq v
{ 
public 
OpenIdScopeManager !
(! "!
IOpenIddictScopeCache !
<! "
TScope" (
>( )
cache* /
,/ 0
ILogger 
< "
OpenIddictScopeManager *
<* +
TScope+ 1
>1 2
>2 3
logger4 :
,: ;
IOptionsMonitor 
< !
OpenIddictCoreOptions 1
>1 2
options3 :
,: ;)
IOpenIddictScopeStoreResolver )
resolver* 2
)2 3
: 
base 
( 
cache 
, 
logger  
,  !
options" )
,) *
resolver+ 3
)3 4
{ 	
} 	
public!! 
virtual!! 
	ValueTask!!  
<!!  !
TScope!!! '
>!!' (!
FindByPhysicalIdAsync!!) >
(!!> ?
string!!? E

identifier!!F P
,!!P Q
CancellationToken!!R c
cancellationToken!!d u
=!!v w
default!!x 
)	!! €
{"" 	
if## 
(## 
string## 
.## 
IsNullOrEmpty## $
(##$ %

identifier##% /
)##/ 0
)##0 1
{$$ 
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$str%%, U
,%%U V
nameof%%W ]
(%%] ^

identifier%%^ h
)%%h i
)%%i j
;%%j k
}&& 
return(( 
Store(( 
is(( 
IOpenIdScopeStore(( -
<((- .
TScope((. 4
>((4 5
store((6 ;
?((< =
store)) 
.)) !
FindByPhysicalIdAsync)) +
())+ ,

identifier)), 6
,))6 7
cancellationToken))8 I
)))I J
:))K L
Store** 
.** 
FindByIdAsync** #
(**# $

identifier**$ .
,**. /
cancellationToken**0 A
)**A B
;**B C
}++ 	
public66 
virtual66 
	ValueTask66  
<66  !
string66! '
>66' (
GetPhysicalIdAsync66) ;
(66; <
TScope66< B
scope66C H
,66H I
CancellationToken66J [
cancellationToken66\ m
=66n o
default66p w
)66w x
{77 	
if88 
(88 
scope88 
==88 
null88 
)88 
{99 
throw:: 
new:: !
ArgumentNullException:: /
(::/ 0
nameof::0 6
(::6 7
scope::7 <
)::< =
)::= >
;::> ?
};; 
return== 
Store== 
is== 
IOpenIdScopeStore== -
<==- .
TScope==. 4
>==4 5
store==6 ;
?==< =
store>> 
.>> 
GetPhysicalIdAsync>> (
(>>( )
scope>>) .
,>>. /
cancellationToken>>0 A
)>>A B
:>>C D
Store?? 
.?? 

GetIdAsync??  
(??  !
scope??! &
,??& '
cancellationToken??( 9
)??9 :
;??: ;
}@@ 	
asyncBB 
	ValueTaskBB 
<BB 
objectBB 
>BB 
IOpenIdScopeManagerBB  3
.BB3 4!
FindByPhysicalIdAsyncBB4 I
(BBI J
stringBBJ P

identifierBBQ [
,BB[ \
CancellationTokenBB] n
cancellationToken	BBo €
)
BB€ 
=>CC 
awaitCC !
FindByPhysicalIdAsyncCC *
(CC* +

identifierCC+ 5
,CC5 6
cancellationTokenCC7 H
)CCH I
;CCI J
	ValueTaskEE 
<EE 
stringEE 
>EE 
IOpenIdScopeManagerEE -
.EE- .
GetPhysicalIdAsyncEE. @
(EE@ A
objectEEA G
scopeEEH M
,EEM N
CancellationTokenEEO `
cancellationTokenEEa r
)EEr s
=>FF 
GetPhysicalIdAsyncFF !
(FF! "
(FF" #
TScopeFF# )
)FF) *
scopeFF* /
,FF/ 0
cancellationTokenFF1 B
)FFB C
;FFC D
}GG 
}HH “'
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdTokenManager.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
.% &
Managers& .
{ 
public 

class 
OpenIdTokenManager #
<# $
TToken$ *
>* +
:, -"
OpenIddictTokenManager. D
<D E
TTokenE K
>K L
,L M
IOpenIdTokenManagerN a
whereb g
TTokenh n
:o p
classq v
{ 
public 
OpenIdTokenManager !
(! "!
IOpenIddictTokenCache !
<! "
TToken" (
>( )
cache* /
,/ 0
ILogger 
< "
OpenIddictTokenManager *
<* +
TToken+ 1
>1 2
>2 3
logger4 :
,: ;
IOptionsMonitor 
< !
OpenIddictCoreOptions 1
>1 2
options3 :
,: ;)
IOpenIddictTokenStoreResolver )
resolver* 2
)2 3
: 
base 
( 
cache 
, 
logger  
,  !
options" )
,) *
resolver+ 3
)3 4
{ 	
} 	
public!! 
virtual!! 
	ValueTask!!  
<!!  !
TToken!!! '
>!!' (!
FindByPhysicalIdAsync!!) >
(!!> ?
string!!? E

identifier!!F P
,!!P Q
CancellationToken!!R c
cancellationToken!!d u
=!!v w
default!!x 
)	!! €
{"" 	
if## 
(## 
string## 
.## 
IsNullOrEmpty## $
(##$ %

identifier##% /
)##/ 0
)##0 1
{$$ 
throw%% 
new%% 
ArgumentException%% +
(%%+ ,
$str%%, U
,%%U V
nameof%%W ]
(%%] ^

identifier%%^ h
)%%h i
)%%i j
;%%j k
}&& 
return(( 
Store(( 
is(( 
IOpenIdTokenStore(( -
<((- .
TToken((. 4
>((4 5
store((6 ;
?((< =
store)) 
.)) !
FindByPhysicalIdAsync)) +
())+ ,

identifier)), 6
,))6 7
cancellationToken))8 I
)))I J
:))K L
Store** 
.** 
FindByIdAsync** #
(**# $

identifier**$ .
,**. /
cancellationToken**0 A
)**A B
;**B C
}++ 	
public66 
virtual66 
	ValueTask66  
<66  !
string66! '
>66' (
GetPhysicalIdAsync66) ;
(66; <
TToken66< B
token66C H
,66H I
CancellationToken66J [
cancellationToken66\ m
=66n o
default66p w
)66w x
{77 	
if88 
(88 
token88 
==88 
null88 
)88 
{99 
throw:: 
new:: !
ArgumentNullException:: /
(::/ 0
nameof::0 6
(::6 7
token::7 <
)::< =
)::= >
;::> ?
};; 
return== 
Store== 
is== 
IOpenIdTokenStore== -
<==- .
TToken==. 4
>==4 5
store==6 ;
?==< =
store>> 
.>> 
GetPhysicalIdAsync>> (
(>>( )
token>>) .
,>>. /
cancellationToken>>0 A
)>>A B
:>>C D
Store?? 
.?? 

GetIdAsync??  
(??  !
token??! &
,??& '
cancellationToken??( 9
)??9 :
;??: ;
}@@ 	
asyncBB 
	ValueTaskBB 
<BB 
objectBB 
>BB 
IOpenIdTokenManagerBB  3
.BB3 4!
FindByPhysicalIdAsyncBB4 I
(BBI J
stringBBJ P

identifierBBQ [
,BB[ \
CancellationTokenBB] n
cancellationToken	BBo €
)
BB€ 
=>CC 
awaitCC !
FindByPhysicalIdAsyncCC *
(CC* +

identifierCC+ 5
,CC5 6
cancellationTokenCC7 H
)CCH I
;CCI J
	ValueTaskEE 
<EE 
stringEE 
>EE 
IOpenIdTokenManagerEE -
.EE- .
GetPhysicalIdAsyncEE. @
(EE@ A
objectEEA G
tokenEEH M
,EEM N
CancellationTokenEEO `
cancellationTokenEEa r
)EEr s
=>FF 
GetPhysicalIdAsyncFF !
(FF! "
(FF" #
TTokenFF# )
)FF) *
tokenFF* /
,FF/ 0
cancellationTokenFF1 B
)FFB C
;FFC D
}GG 
}HH λF
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdApplicationIndex.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Indexes$ +
{ 
public 

class "
OpenIdApplicationIndex '
:( )
MapIndex* 2
{ 
public		 
string		 
ApplicationId		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
string

 
ClientId
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
+ ,
} 
public 

class %
OpenIdAppByLogoutUriIndex *
:+ ,
ReduceIndex- 8
{ 
public 
string 
LogoutRedirectUri '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class '
OpenIdAppByRedirectUriIndex ,
:- .
ReduceIndex/ :
{ 
public 
string 
RedirectUri !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class $
OpenIdAppByRoleNameIndex )
:* +
ReduceIndex, 7
{ 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class *
OpenIdApplicationIndexProvider /
:0 1
IndexProvider2 ?
<? @
OpenIdApplication@ Q
>Q R
{   
public!! 
override!! 
void!! 
Describe!! %
(!!% &
DescribeContext!!& 5
<!!5 6
OpenIdApplication!!6 G
>!!G H
context!!I P
)!!P Q
{"" 	
context## 
.## 
For## 
<## "
OpenIdApplicationIndex## .
>##. /
(##/ 0
)##0 1
.$$ 
Map$$ 
($$ 
application$$  
=>$$! #
new$$$ '"
OpenIdApplicationIndex$$( >
{%% 
ApplicationId&& !
=&&" #
application&&$ /
.&&/ 0
ApplicationId&&0 =
,&&= >
ClientId'' 
='' 
application'' *
.''* +
ClientId''+ 3
}(( 
)(( 
;(( 
context** 
.** 
For** 
<** %
OpenIdAppByLogoutUriIndex** 1
,**1 2
string**3 9
>**9 :
(**: ;
)**; <
.++ 
Map++ 
(++ 
application++  
=>++! #
application++$ /
.++/ 0"
PostLogoutRedirectUris++0 F
.++F G
Select++G M
(++M N
uri++N Q
=>++R T
new++U X%
OpenIdAppByLogoutUriIndex++Y r
{,, 
LogoutRedirectUri-- %
=--& '
uri--( +
,--+ ,
Count.. 
=.. 
$num.. 
}// 
)// 
)// 
.00 
Group00 
(00 
index00 
=>00 
index00  %
.00% &
LogoutRedirectUri00& 7
)007 8
.11 
Reduce11 
(11 
group11 
=>11  
new11! $%
OpenIdAppByLogoutUriIndex11% >
{22 
LogoutRedirectUri33 %
=33& '
group33( -
.33- .
Key33. 1
,331 2
Count44 
=44 
group44 !
.44! "
Sum44" %
(44% &
x44& '
=>44( *
x44+ ,
.44, -
Count44- 2
)442 3
}55 
)55 
.66 
Delete66 
(66 
(66 
index66 
,66 
map66  #
)66# $
=>66% '
{77 
index88 
.88 
Count88 
-=88  "
map88# &
.88& '
Sum88' *
(88* +
x88+ ,
=>88- /
x880 1
.881 2
Count882 7
)887 8
;888 9
return99 
index99  
.99  !
Count99! &
>99' (
$num99) *
?99+ ,
index99- 2
:993 4
null995 9
;999 :
}:: 
):: 
;:: 
context<< 
.<< 
For<< 
<<< '
OpenIdAppByRedirectUriIndex<< 3
,<<3 4
string<<5 ;
><<; <
(<<< =
)<<= >
.== 
Map== 
(== 
application==  
=>==! #
application==$ /
.==/ 0
RedirectUris==0 <
.==< =
Select=== C
(==C D
uri==D G
=>==H J
new==K N'
OpenIdAppByRedirectUriIndex==O j
{>> 
RedirectUri?? 
=??  !
uri??" %
,??% &
Count@@ 
=@@ 
$num@@ 
}AA 
)AA 
)AA 
.BB 
GroupBB 
(BB 
indexBB 
=>BB 
indexBB  %
.BB% &
RedirectUriBB& 1
)BB1 2
.CC 
ReduceCC 
(CC 
groupCC 
=>CC  
newCC! $'
OpenIdAppByRedirectUriIndexCC% @
{DD 
RedirectUriEE 
=EE  !
groupEE" '
.EE' (
KeyEE( +
,EE+ ,
CountFF 
=FF 
groupFF !
.FF! "
SumFF" %
(FF% &
xFF& '
=>FF( *
xFF+ ,
.FF, -
CountFF- 2
)FF2 3
}GG 
)GG 
.HH 
DeleteHH 
(HH 
(HH 
indexHH 
,HH 
mapHH  #
)HH# $
=>HH% '
{II 
indexJJ 
.JJ 
CountJJ 
-=JJ  "
mapJJ# &
.JJ& '
SumJJ' *
(JJ* +
xJJ+ ,
=>JJ- /
xJJ0 1
.JJ1 2
CountJJ2 7
)JJ7 8
;JJ8 9
returnKK 
indexKK  
.KK  !
CountKK! &
>KK' (
$numKK) *
?KK+ ,
indexKK- 2
:KK3 4
nullKK5 9
;KK9 :
}LL 
)LL 
;LL 
contextNN 
.NN 
ForNN 
<NN $
OpenIdAppByRoleNameIndexNN 0
,NN0 1
stringNN2 8
>NN8 9
(NN9 :
)NN: ;
.OO 
MapOO 
(OO 
applicationOO  
=>OO! #
applicationOO$ /
.OO/ 0
RolesOO0 5
.OO5 6
SelectOO6 <
(OO< =
roleOO= A
=>OOB D
newOOE H$
OpenIdAppByRoleNameIndexOOI a
{PP 
RoleNameQQ 
=QQ 
roleQQ #
,QQ# $
CountRR 
=RR 
$numRR 
}SS 
)SS 
)SS 
.TT 
GroupTT 
(TT 
indexTT 
=>TT 
indexTT  %
.TT% &
RoleNameTT& .
)TT. /
.UU 
ReduceUU 
(UU 
groupUU 
=>UU  
newUU! $$
OpenIdAppByRoleNameIndexUU% =
{VV 
RoleNameWW 
=WW 
groupWW $
.WW$ %
KeyWW% (
,WW( )
CountXX 
=XX 
groupXX !
.XX! "
SumXX" %
(XX% &
xXX& '
=>XX( *
xXX+ ,
.XX, -
CountXX- 2
)XX2 3
}YY 
)YY 
.ZZ 
DeleteZZ 
(ZZ 
(ZZ 
indexZZ 
,ZZ 
mapZZ  #
)ZZ# $
=>ZZ% '
{[[ 
index\\ 
.\\ 
Count\\ 
-=\\  "
map\\# &
.\\& '
Sum\\' *
(\\* +
x\\+ ,
=>\\- /
x\\0 1
.\\1 2
Count\\2 7
)\\7 8
;\\8 9
return]] 
index]]  
.]]  !
Count]]! &
>]]' (
$num]]) *
?]]+ ,
index]]- 2
:]]3 4
null]]5 9
;]]9 :
}^^ 
)^^ 
;^^ 
}__ 	
}`` 
}aa ›
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdAuthorizationIndex.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Indexes$ +
{ 
public 

class $
OpenIdAuthorizationIndex )
:* +
MapIndex, 4
{ 
public		 
string		 
AuthorizationId		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
ApplicationId

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
DateTime 
? 
CreationDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class ,
 OpenIdAuthorizationIndexProvider 1
:2 3
IndexProvider4 A
<A B
OpenIdAuthorizationB U
>U V
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
OpenIdAuthorization6 I
>I J
contextK R
)R S
{ 	
context 
. 
For 
< $
OpenIdAuthorizationIndex 0
>0 1
(1 2
)2 3
. 
Map 
( 
authorization "
=># %
new& )$
OpenIdAuthorizationIndex* B
{ 
ApplicationId !
=" #
authorization$ 1
.1 2
ApplicationId2 ?
,? @
AuthorizationId #
=$ %
authorization& 3
.3 4
AuthorizationId4 C
,C D
CreationDate  
=! "
authorization# 0
.0 1
CreationDate1 =
,= >
Status 
= 
authorization *
.* +
Status+ 1
,1 2
Subject 
= 
authorization +
.+ ,
Subject, 3
,3 4
Type 
= 
authorization (
.( )
Type) -
} 
) 
; 
} 	
}   
}!! § 
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdScopeIndex.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Indexes$ +
{ 
public 

class 
OpenIdScopeIndex !
:" #
MapIndex$ ,
{ 
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
ScopeId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
public 

class &
OpenIdScopeByResourceIndex +
:, -
ReduceIndex. 9
{ 
public 
string 
Resource 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
Count 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class $
OpenIdScopeIndexProvider )
:* +
IndexProvider, 9
<9 :
OpenIdScope: E
>E F
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
OpenIdScope6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
OpenIdScopeIndex (
>( )
() *
)* +
. 
Map 
( 
scope 
=> 
new !
OpenIdScopeIndex" 2
{ 
Name 
= 
scope  
.  !
Name! %
,% &
ScopeId 
= 
scope #
.# $
ScopeId$ +
} 
) 
; 
context 
. 
For 
< &
OpenIdScopeByResourceIndex 2
,2 3
string4 :
>: ;
(; <
)< =
. 
Map 
( 
scope 
=> 
scope #
.# $
	Resources$ -
.- .
Select. 4
(4 5
resource5 =
=>> @
newA D&
OpenIdScopeByResourceIndexE _
{   
Resource!! 
=!! 
resource!! '
,!!' (
Count"" 
="" 
$num"" 
}## 
)## 
)## 
.$$ 
Group$$ 
($$ 
index$$ 
=>$$ 
index$$  %
.$$% &
Resource$$& .
)$$. /
.%% 
Reduce%% 
(%% 
group%% 
=>%%  
new%%! $&
OpenIdScopeByResourceIndex%%% ?
{&& 
Resource'' 
='' 
group'' $
.''$ %
Key''% (
,''( )
Count(( 
=(( 
group(( !
.((! "
Sum((" %
(((% &
x((& '
=>((( *
x((+ ,
.((, -
Count((- 2
)((2 3
})) 
))) 
.** 
Delete** 
(** 
(** 
index** 
,** 
map**  #
)**# $
=>**% '
{++ 
index,, 
.,, 
Count,, 
-=,,  "
map,,# &
.,,& '
Sum,,' *
(,,* +
x,,+ ,
=>,,- /
x,,0 1
.,,1 2
Count,,2 7
),,7 8
;,,8 9
return-- 
index--  
.--  !
Count--! &
>--' (
$num--) *
?--+ ,
index--- 2
:--3 4
null--5 9
;--9 :
}.. 
).. 
;.. 
}// 	
}00 
}11 μ
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdTokenIndex.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Indexes$ +
{ 
public 

class 
OpenIdTokenIndex !
:" #
MapIndex$ ,
{ 
public		 
string		 
TokenId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
ApplicationId

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
string 
AuthorizationId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
CreationDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
ExpirationDate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
ReferenceId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class $
OpenIdTokenIndexProvider )
:* +
IndexProvider, 9
<9 :
OpenIdToken: E
>E F
{ 
public 
override 
void 
Describe %
(% &
DescribeContext& 5
<5 6
OpenIdToken6 A
>A B
contextC J
)J K
{ 	
context 
. 
For 
< 
OpenIdTokenIndex (
>( )
() *
)* +
. 
Map 
( 
token 
=> 
new !
OpenIdTokenIndex" 2
{ 
TokenId 
= 
token #
.# $
TokenId$ +
,+ ,
ApplicationId !
=" #
token$ )
.) *
ApplicationId* 7
,7 8
AuthorizationId #
=$ %
token& +
.+ ,
AuthorizationId, ;
,; <
CreationDate  
=! "
token# (
.( )
CreationDate) 5
,5 6
ExpirationDate "
=# $
token% *
.* +
ExpirationDate+ 9
,9 :
ReferenceId   
=    !
token  " '
.  ' (
ReferenceId  ( 3
,  3 4
Status!! 
=!! 
token!! "
.!!" #
Status!!# )
,!!) *
Subject"" 
="" 
token"" #
.""# $
Subject""$ +
,""+ ,
Type## 
=## 
token##  
.##  !
Type##! %
}$$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' …Φ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Migrations\OpenIdMigrations.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $

Migrations$ .
{ 
public 

class 
OpenIdMigrations !
:" #
DataMigration$ 1
{		 
public

 
int

 
Create

 
(

 
)

 
{ 	
SchemaBuilder 
. 
CreateMapIndexTable -
<- ."
OpenIdApplicationIndex. D
>D E
(E F
tableF K
=>L N
tableO T
. 
Column 
< 
string 
> 
(  
nameof  &
(& '"
OpenIdApplicationIndex' =
.= >
ApplicationId> K
)K L
,L M
columnN T
=>U W
columnX ^
.^ _

WithLength_ i
(i j
$numj l
)l m
)m n
. 
Column 
< 
string 
> 
(  
nameof  &
(& '"
OpenIdApplicationIndex' =
.= >
ClientId> F
)F G
,G H
columnI O
=>P R
columnS Y
.Y Z
UniqueZ `
(` a
)a b
)b c
)c d
;d e
SchemaBuilder 
. 
AlterIndexTable )
<) *"
OpenIdApplicationIndex* @
>@ A
(A B
tableB G
=>H J
tableK P
. 
CreateIndex 
( 
$str D
,D E
$str  
,  !
nameof 
( "
OpenIdApplicationIndex 1
.1 2
ApplicationId2 ?
)? @
,@ A
nameof 
( "
OpenIdApplicationIndex 1
.1 2
ClientId2 :
): ;
); <
) 
; 
SchemaBuilder 
. "
CreateReduceIndexTable 0
<0 1%
OpenIdAppByLogoutUriIndex1 J
>J K
(K L
tableL Q
=>R T
tableU Z
. 
Column 
< 
string 
> 
(  
nameof  &
(& '%
OpenIdAppByLogoutUriIndex' @
.@ A
LogoutRedirectUriA R
)R S
)S T
. 
Column 
< 
int 
> 
( 
nameof #
(# $%
OpenIdAppByLogoutUriIndex$ =
.= >
Count> C
)C D
)D E
)E F
;F G
SchemaBuilder 
. "
CreateReduceIndexTable 0
<0 1'
OpenIdAppByRedirectUriIndex1 L
>L M
(M N
tableN S
=>T V
tableW \
. 
Column 
< 
string 
> 
(  
nameof  &
(& ''
OpenIdAppByRedirectUriIndex' B
.B C
RedirectUriC N
)N O
)O P
. 
Column 
< 
int 
> 
( 
nameof #
(# $'
OpenIdAppByRedirectUriIndex$ ?
.? @
Count@ E
)E F
)F G
)G H
;H I
SchemaBuilder 
. "
CreateReduceIndexTable 0
<0 1$
OpenIdAppByRoleNameIndex1 I
>I J
(J K
tableK P
=>Q S
tableT Y
.   
Column   
<   
string   
>   
(    
nameof    &
(  & '$
OpenIdAppByRoleNameIndex  ' ?
.  ? @
RoleName  @ H
)  H I
)  I J
.!! 
Column!! 
<!! 
int!! 
>!! 
(!! 
nameof!! #
(!!# $$
OpenIdAppByRoleNameIndex!!$ <
.!!< =
Count!!= B
)!!B C
)!!C D
)!!D E
;!!E F
SchemaBuilder## 
.## 
CreateMapIndexTable## -
<##- .$
OpenIdAuthorizationIndex##. F
>##F G
(##G H
table##H M
=>##N P
table##Q V
.$$ 
Column$$ 
<$$ 
string$$ 
>$$ 
($$  
nameof$$  &
($$& '$
OpenIdAuthorizationIndex$$' ?
.$$? @
AuthorizationId$$@ O
)$$O P
,$$P Q
column$$R X
=>$$Y [
column$$\ b
.$$b c

WithLength$$c m
($$m n
$num$$n p
)$$p q
)$$q r
.%% 
Column%% 
<%% 
string%% 
>%% 
(%%  
nameof%%  &
(%%& '$
OpenIdAuthorizationIndex%%' ?
.%%? @
ApplicationId%%@ M
)%%M N
,%%N O
column%%P V
=>%%W Y
column%%Z `
.%%` a

WithLength%%a k
(%%k l
$num%%l n
)%%n o
)%%o p
.&& 
Column&& 
<&& 
string&& 
>&& 
(&&  
nameof&&  &
(&&& '$
OpenIdAuthorizationIndex&&' ?
.&&? @
Status&&@ F
)&&F G
)&&G H
.'' 
Column'' 
<'' 
string'' 
>'' 
(''  
nameof''  &
(''& '$
OpenIdAuthorizationIndex''' ?
.''? @
Subject''@ G
)''G H
)''H I
.(( 
Column(( 
<(( 
string(( 
>(( 
(((  
nameof((  &
(((& '$
OpenIdAuthorizationIndex((' ?
.((? @
Type((@ D
)((D E
)((E F
.)) 
Column)) 
<)) 
DateTime))  
>))  !
())! "
nameof))" (
())( )$
OpenIdAuthorizationIndex))) A
.))A B
CreationDate))B N
)))N O
)))O P
)))P Q
;))Q R
SchemaBuilder++ 
.++ 
AlterIndexTable++ )
<++) *$
OpenIdAuthorizationIndex++* B
>++B C
(++C D
table++D I
=>++J L
table++M R
.,, 
CreateIndex,, 
(,, 
$str,, T
,,,T U
$str--  
,--  !
nameof.. 
(.. $
OpenIdAuthorizationIndex.. 3
...3 4
ApplicationId..4 A
)..A B
,..B C
nameof// 
(// $
OpenIdAuthorizationIndex// 3
.//3 4
Status//4 :
)//: ;
,//; <
nameof00 
(00 $
OpenIdAuthorizationIndex00 3
.003 4
Subject004 ;
)00; <
)00< =
)11 
;11 
SchemaBuilder33 
.33 
AlterIndexTable33 )
<33) *$
OpenIdAuthorizationIndex33* B
>33B C
(33C D
table33D I
=>33J L
table33M R
.44 
CreateIndex44 
(44 
$str44 V
,44V W
$str55  
,55  !
nameof66 
(66 $
OpenIdAuthorizationIndex66 3
.663 4
AuthorizationId664 C
)66C D
,66D E
nameof77 
(77 $
OpenIdAuthorizationIndex77 3
.773 4
Status774 :
)77: ;
,77; <
nameof88 
(88 $
OpenIdAuthorizationIndex88 3
.883 4
Type884 8
)888 9
,889 :
nameof99 
(99 $
OpenIdAuthorizationIndex99 3
.993 4
CreationDate994 @
)99@ A
)99A B
):: 
;:: 
SchemaBuilder<< 
.<< 
CreateMapIndexTable<< -
<<<- .
OpenIdScopeIndex<<. >
><<> ?
(<<? @
table<<@ E
=><<F H
table<<I N
.== 
Column== 
<== 
string== 
>== 
(==  
nameof==  &
(==& '
OpenIdScopeIndex==' 7
.==7 8
Name==8 <
)==< =
,=== >
column==? E
=>==F H
column==I O
.==O P
Unique==P V
(==V W
)==W X
)==X Y
.>> 
Column>> 
<>> 
string>> 
>>> 
(>>  
nameof>>  &
(>>& '
OpenIdScopeIndex>>' 7
.>>7 8
ScopeId>>8 ?
)>>? @
,>>@ A
column>>B H
=>>>I K
column>>L R
.>>R S

WithLength>>S ]
(>>] ^
$num>>^ `
)>>` a
)>>a b
)>>b c
;>>c d
SchemaBuilder@@ 
.@@ 
AlterIndexTable@@ )
<@@) *
OpenIdScopeIndex@@* :
>@@: ;
(@@; <
table@@< A
=>@@B D
table@@E J
.AA 
CreateIndexAA 
(AA 
$strAA >
,AA> ?
$strBB  
,BB  !
nameofCC 
(CC 
OpenIdScopeIndexCC +
.CC+ ,
NameCC, 0
)CC0 1
,CC1 2
nameofDD 
(DD 
OpenIdScopeIndexDD +
.DD+ ,
ScopeIdDD, 3
)DD3 4
)DD4 5
)EE 
;EE 
SchemaBuilderGG 
.GG "
CreateReduceIndexTableGG 0
<GG0 1&
OpenIdScopeByResourceIndexGG1 K
>GGK L
(GGL M
tableGGM R
=>GGS U
tableGGV [
.HH 
ColumnHH 
<HH 
stringHH 
>HH 
(HH  
nameofHH  &
(HH& '&
OpenIdScopeByResourceIndexHH' A
.HHA B
ResourceHHB J
)HHJ K
)HHK L
.II 
ColumnII 
<II 
intII 
>II 
(II 
nameofII #
(II# $&
OpenIdScopeByResourceIndexII$ >
.II> ?
CountII? D
)IID E
)IIE F
)IIF G
;IIG H
SchemaBuilderKK 
.KK 
CreateMapIndexTableKK -
<KK- .
OpenIdTokenIndexKK. >
>KK> ?
(KK? @
tableKK@ E
=>KKF H
tableKKI N
.LL 
ColumnLL 
<LL 
stringLL 
>LL 
(LL  
nameofLL  &
(LL& '
OpenIdTokenIndexLL' 7
.LL7 8
TokenIdLL8 ?
)LL? @
,LL@ A
columnLLB H
=>LLI K
columnLLL R
.LLR S

WithLengthLLS ]
(LL] ^
$numLL^ `
)LL` a
)LLa b
.MM 
ColumnMM 
<MM 
stringMM 
>MM 
(MM  
nameofMM  &
(MM& '
OpenIdTokenIndexMM' 7
.MM7 8
ApplicationIdMM8 E
)MME F
,MMF G
columnMMH N
=>MMO Q
columnMMR X
.MMX Y

WithLengthMMY c
(MMc d
$numMMd f
)MMf g
)MMg h
.NN 
ColumnNN 
<NN 
stringNN 
>NN 
(NN  
nameofNN  &
(NN& '
OpenIdTokenIndexNN' 7
.NN7 8
AuthorizationIdNN8 G
)NNG H
,NNH I
columnNNJ P
=>NNQ S
columnNNT Z
.NNZ [

WithLengthNN[ e
(NNe f
$numNNf h
)NNh i
)NNi j
.OO 
ColumnOO 
<OO 
DateTimeOO  
>OO  !
(OO! "
nameofOO" (
(OO( )
OpenIdTokenIndexOO) 9
.OO9 :
ExpirationDateOO: H
)OOH I
)OOI J
.PP 
ColumnPP 
<PP 
stringPP 
>PP 
(PP  
nameofPP  &
(PP& '
OpenIdTokenIndexPP' 7
.PP7 8
ReferenceIdPP8 C
)PPC D
)PPD E
.QQ 
ColumnQQ 
<QQ 
stringQQ 
>QQ 
(QQ  
nameofQQ  &
(QQ& '
OpenIdTokenIndexQQ' 7
.QQ7 8
StatusQQ8 >
)QQ> ?
)QQ? @
.RR 
ColumnRR 
<RR 
stringRR 
>RR 
(RR  
nameofRR  &
(RR& '
OpenIdTokenIndexRR' 7
.RR7 8
SubjectRR8 ?
)RR? @
)RR@ A
.SS 
ColumnSS 
<SS 
stringSS 
>SS 
(SS  
nameofSS  &
(SS& '
OpenIdTokenIndexSS' 7
.SS7 8
TypeSS8 <
)SS< =
)SS= >
.TT 
ColumnTT 
<TT 
DateTimeTT  
>TT  !
(TT! "
nameofTT" (
(TT( )
OpenIdTokenIndexTT) 9
.TT9 :
CreationDateTT: F
)TTF G
)TTG H
)TTH I
;TTI J
SchemaBuilderVV 
.VV 
AlterIndexTableVV )
<VV) *
OpenIdTokenIndexVV* :
>VV: ;
(VV; <
tableVV< A
=>VVB D
tableVVE J
.WW 
CreateIndexWW 
(WW 
$strWW L
,WWL M
$strXX  
,XX  !
nameofYY 
(YY 
OpenIdTokenIndexYY +
.YY+ ,
ApplicationIdYY, 9
)YY9 :
,YY: ;
nameofZZ 
(ZZ 
OpenIdTokenIndexZZ +
.ZZ+ ,
StatusZZ, 2
)ZZ2 3
,ZZ3 4
nameof[[ 
([[ 
OpenIdTokenIndex[[ +
.[[+ ,
Subject[[, 3
)[[3 4
)[[4 5
)\\ 
;\\ 
SchemaBuilder^^ 
.^^ 
AlterIndexTable^^ )
<^^) *
OpenIdTokenIndex^^* :
>^^: ;
(^^; <
table^^< A
=>^^B D
table^^E J
.__ 
CreateIndex__ 
(__ 
$str__ N
,__N O
$str``  
,``  !
nameofaa 
(aa 
OpenIdTokenIndexaa +
.aa+ ,
AuthorizationIdaa, ;
)aa; <
,aa< =
nameofbb 
(bb 
OpenIdTokenIndexbb +
.bb+ ,
Statusbb, 2
)bb2 3
,bb3 4
nameofcc 
(cc 
OpenIdTokenIndexcc +
.cc+ ,
Typecc, 0
)cc0 1
,cc1 2
nameofdd 
(dd 
OpenIdTokenIndexdd +
.dd+ ,
CreationDatedd, 8
)dd8 9
,dd9 :
nameofee 
(ee 
OpenIdTokenIndexee +
.ee+ ,
ExpirationDateee, :
)ee: ;
)ee; <
)ff 
;ff 
SchemaBuilderhh 
.hh 
AlterIndexTablehh )
<hh) *
OpenIdTokenIndexhh* :
>hh: ;
(hh; <
tablehh< A
=>hhB D
tablehhE J
.ii 
CreateIndexii 
(ii 
$strii F
,iiF G
$strjj  
,jj  !
nameofkk 
(kk 
OpenIdTokenIndexkk +
.kk+ ,
TokenIdkk, 3
)kk3 4
,kk4 5
nameofll 
(ll 
OpenIdTokenIndexll +
.ll+ ,
ReferenceIdll, 7
)ll7 8
)ll8 9
)mm 
;mm 
returnpp 
$numpp 
;pp 
}qq 	
publictt 
inttt 
UpdateFrom1tt 
(tt 
)tt  
{uu 	
SchemaBuildervv 
.vv 
AlterIndexTablevv )
<vv) *
OpenIdTokenIndexvv* :
>vv: ;
(vv; <
tablevv< A
=>vvB D
tablevvE J
.ww 
	AddColumnww 
<ww 
stringww !
>ww! "
(ww" #
nameofww# )
(ww) *
OpenIdTokenIndexww* :
.ww: ;
Typeww; ?
)ww? @
)ww@ A
)wwA B
;wwB C
returnyy 
$numyy 
;yy 
}zz 	
private|| 
class|| 9
-OpenIdApplicationByPostLogoutRedirectUriIndex|| C
{||D E
}||F G
private}} 
class}} /
#OpenIdApplicationByRedirectUriIndex}} 9
{}}: ;
}}}< =
private~~ 
class~~ ,
 OpenIdApplicationByRoleNameIndex~~ 6
{~~7 8
}~~9 :
public
 
int
 
UpdateFrom2
 
(
 
)
  
{
‚‚ 	
SchemaBuilder
ƒƒ 
.
ƒƒ "
DropReduceIndexTable
ƒƒ .
<
ƒƒ. /;
-OpenIdApplicationByPostLogoutRedirectUriIndex
ƒƒ/ \
>
ƒƒ\ ]
(
ƒƒ] ^
null
ƒƒ^ b
)
ƒƒb c
;
ƒƒc d
SchemaBuilder
„„ 
.
„„ "
DropReduceIndexTable
„„ .
<
„„. /1
#OpenIdApplicationByRedirectUriIndex
„„/ R
>
„„R S
(
„„S T
null
„„T X
)
„„X Y
;
„„Y Z
SchemaBuilder
…… 
.
…… "
DropReduceIndexTable
…… .
<
……. /.
 OpenIdApplicationByRoleNameIndex
……/ O
>
……O P
(
……P Q
null
……Q U
)
……U V
;
……V W
SchemaBuilder
‡‡ 
.
‡‡ $
CreateReduceIndexTable
‡‡ 0
<
‡‡0 1'
OpenIdAppByLogoutUriIndex
‡‡1 J
>
‡‡J K
(
‡‡K L
table
‡‡L Q
=>
‡‡R T
table
‡‡U Z
.
 
Column
 
<
 
string
 
>
 
(
  
nameof
  &
(
& ''
OpenIdAppByLogoutUriIndex
' @
.
@ A
LogoutRedirectUri
A R
)
R S
)
S T
.
‰‰ 
Column
‰‰ 
<
‰‰ 
int
‰‰ 
>
‰‰ 
(
‰‰ 
nameof
‰‰ #
(
‰‰# $'
OpenIdAppByLogoutUriIndex
‰‰$ =
.
‰‰= >
Count
‰‰> C
)
‰‰C D
)
‰‰D E
)
‰‰E F
;
‰‰F G
SchemaBuilder
‹‹ 
.
‹‹ $
CreateReduceIndexTable
‹‹ 0
<
‹‹0 1)
OpenIdAppByRedirectUriIndex
‹‹1 L
>
‹‹L M
(
‹‹M N
table
‹‹N S
=>
‹‹T V
table
‹‹W \
.
 
Column
 
<
 
string
 
>
 
(
  
nameof
  &
(
& ')
OpenIdAppByRedirectUriIndex
' B
.
B C
RedirectUri
C N
)
N O
)
O P
.
 
Column
 
<
 
int
 
>
 
(
 
nameof
 #
(
# $)
OpenIdAppByRedirectUriIndex
$ ?
.
? @
Count
@ E
)
E F
)
F G
)
G H
;
H I
SchemaBuilder
 
.
 $
CreateReduceIndexTable
 0
<
0 1&
OpenIdAppByRoleNameIndex
1 I
>
I J
(
J K
table
K P
=>
Q S
table
T Y
.
 
Column
 
<
 
string
 
>
 
(
  
nameof
  &
(
& '&
OpenIdAppByRoleNameIndex
' ?
.
? @
RoleName
@ H
)
H I
)
I J
.
‘‘ 
Column
‘‘ 
<
‘‘ 
int
‘‘ 
>
‘‘ 
(
‘‘ 
nameof
‘‘ #
(
‘‘# $&
OpenIdAppByRoleNameIndex
‘‘$ <
.
‘‘< =
Count
‘‘= B
)
‘‘B C
)
‘‘C D
)
‘‘D E
;
‘‘E F
return
““ 
$num
““ 
;
““ 
}
”” 	
public
—— 
int
—— 
UpdateFrom3
—— 
(
—— 
)
——  
{
 	
SchemaBuilder
™™ 
.
™™ 
AlterIndexTable
™™ )
<
™™) *&
OpenIdAuthorizationIndex
™™* B
>
™™B C
(
™™C D
table
™™D I
=>
™™J L
table
™™M R
.
 
	AddColumn
 
<
 
DateTime
 #
>
# $
(
$ %
nameof
% +
(
+ ,&
OpenIdAuthorizationIndex
, D
.
D E
CreationDate
E Q
)
Q R
)
R S
)
S T
;
T U
SchemaBuilder
 
.
 
AlterIndexTable
 )
<
) *
OpenIdTokenIndex
* :
>
: ;
(
; <
table
< A
=>
B D
table
E J
.
 
	AddColumn
 
<
 
DateTime
 #
>
# $
(
$ %
nameof
% +
(
+ ,
OpenIdTokenIndex
, <
.
< =
CreationDate
= I
)
I J
)
J K
)
K L
;
L M
return
 
$num
 
;
 
}
   	
public
££ 
int
££ 
UpdateFrom4
££ 
(
££ 
)
££  
{
¤¤ 	
SchemaBuilder
¥¥ 
.
¥¥ 
AlterIndexTable
¥¥ )
<
¥¥) *$
OpenIdApplicationIndex
¥¥* @
>
¥¥@ A
(
¥¥A B
table
¥¥B G
=>
¥¥H J
table
¥¥K P
.
¦¦ 
CreateIndex
¦¦ 
(
¦¦ 
$str
¦¦ D
,
¦¦D E
$str
§§  
,
§§  !
nameof
¨¨ 
(
¨¨ $
OpenIdApplicationIndex
¨¨ 1
.
¨¨1 2
ApplicationId
¨¨2 ?
)
¨¨? @
,
¨¨@ A
nameof
©© 
(
©© $
OpenIdApplicationIndex
©© 1
.
©©1 2
ClientId
©©2 :
)
©©: ;
)
©©; <
)
ªª 
;
ªª 
SchemaBuilder
¬¬ 
.
¬¬ 
AlterIndexTable
¬¬ )
<
¬¬) *&
OpenIdAuthorizationIndex
¬¬* B
>
¬¬B C
(
¬¬C D
table
¬¬D I
=>
¬¬J L
table
¬¬M R
.
­­ 
CreateIndex
­­ 
(
­­ 
$str
­­ T
,
­­T U
$str
®®  
,
®®  !
nameof
―― 
(
―― &
OpenIdAuthorizationIndex
―― 3
.
――3 4
ApplicationId
――4 A
)
――A B
,
――B C
nameof
°° 
(
°° &
OpenIdAuthorizationIndex
°° 3
.
°°3 4
Status
°°4 :
)
°°: ;
,
°°; <
nameof
±± 
(
±± &
OpenIdAuthorizationIndex
±± 3
.
±±3 4
Subject
±±4 ;
)
±±; <
)
±±< =
)
²² 
;
²² 
SchemaBuilder
΄΄ 
.
΄΄ 
AlterIndexTable
΄΄ )
<
΄΄) *&
OpenIdAuthorizationIndex
΄΄* B
>
΄΄B C
(
΄΄C D
table
΄΄D I
=>
΄΄J L
table
΄΄M R
.
µµ 
CreateIndex
µµ 
(
µµ 
$str
µµ V
,
µµV W
$str
¶¶  
,
¶¶  !
nameof
·· 
(
·· &
OpenIdAuthorizationIndex
·· 3
.
··3 4
AuthorizationId
··4 C
)
··C D
,
··D E
nameof
ΈΈ 
(
ΈΈ &
OpenIdAuthorizationIndex
ΈΈ 3
.
ΈΈ3 4
Status
ΈΈ4 :
)
ΈΈ: ;
,
ΈΈ; <
nameof
ΉΉ 
(
ΉΉ &
OpenIdAuthorizationIndex
ΉΉ 3
.
ΉΉ3 4
Type
ΉΉ4 8
)
ΉΉ8 9
,
ΉΉ9 :
nameof
ΊΊ 
(
ΊΊ &
OpenIdAuthorizationIndex
ΊΊ 3
.
ΊΊ3 4
CreationDate
ΊΊ4 @
)
ΊΊ@ A
)
ΊΊA B
)
»» 
;
»» 
SchemaBuilder
½½ 
.
½½ 
AlterIndexTable
½½ )
<
½½) *
OpenIdScopeIndex
½½* :
>
½½: ;
(
½½; <
table
½½< A
=>
½½B D
table
½½E J
.
ΎΎ 
CreateIndex
ΎΎ 
(
ΎΎ 
$str
ΎΎ >
,
ΎΎ> ?
$str
ΏΏ  
,
ΏΏ  !
nameof
ΐΐ 
(
ΐΐ 
OpenIdScopeIndex
ΐΐ +
.
ΐΐ+ ,
Name
ΐΐ, 0
)
ΐΐ0 1
,
ΐΐ1 2
nameof
ΑΑ 
(
ΑΑ 
OpenIdScopeIndex
ΑΑ +
.
ΑΑ+ ,
ScopeId
ΑΑ, 3
)
ΑΑ3 4
)
ΑΑ4 5
)
ΒΒ 
;
ΒΒ 
SchemaBuilder
ΔΔ 
.
ΔΔ 
AlterIndexTable
ΔΔ )
<
ΔΔ) *
OpenIdTokenIndex
ΔΔ* :
>
ΔΔ: ;
(
ΔΔ; <
table
ΔΔ< A
=>
ΔΔB D
table
ΔΔE J
.
ΕΕ 
CreateIndex
ΕΕ 
(
ΕΕ 
$str
ΕΕ L
,
ΕΕL M
$str
ΖΖ  
,
ΖΖ  !
nameof
ΗΗ 
(
ΗΗ 
OpenIdTokenIndex
ΗΗ +
.
ΗΗ+ ,
ApplicationId
ΗΗ, 9
)
ΗΗ9 :
,
ΗΗ: ;
nameof
ΘΘ 
(
ΘΘ 
OpenIdTokenIndex
ΘΘ +
.
ΘΘ+ ,
Status
ΘΘ, 2
)
ΘΘ2 3
,
ΘΘ3 4
nameof
ΙΙ 
(
ΙΙ 
OpenIdTokenIndex
ΙΙ +
.
ΙΙ+ ,
Subject
ΙΙ, 3
)
ΙΙ3 4
)
ΙΙ4 5
)
ΚΚ 
;
ΚΚ 
SchemaBuilder
ΜΜ 
.
ΜΜ 
AlterIndexTable
ΜΜ )
<
ΜΜ) *
OpenIdTokenIndex
ΜΜ* :
>
ΜΜ: ;
(
ΜΜ; <
table
ΜΜ< A
=>
ΜΜB D
table
ΜΜE J
.
ΝΝ 
CreateIndex
ΝΝ 
(
ΝΝ 
$str
ΝΝ N
,
ΝΝN O
$str
ΞΞ  
,
ΞΞ  !
nameof
ΟΟ 
(
ΟΟ 
OpenIdTokenIndex
ΟΟ +
.
ΟΟ+ ,
AuthorizationId
ΟΟ, ;
)
ΟΟ; <
,
ΟΟ< =
nameof
ΠΠ 
(
ΠΠ 
OpenIdTokenIndex
ΠΠ +
.
ΠΠ+ ,
Status
ΠΠ, 2
)
ΠΠ2 3
,
ΠΠ3 4
nameof
ΡΡ 
(
ΡΡ 
OpenIdTokenIndex
ΡΡ +
.
ΡΡ+ ,
Type
ΡΡ, 0
)
ΡΡ0 1
,
ΡΡ1 2
nameof
ÒÒ 
(
ÒÒ 
OpenIdTokenIndex
ÒÒ +
.
ÒÒ+ ,
CreationDate
ÒÒ, 8
)
ÒÒ8 9
,
ÒÒ9 :
nameof
ΣΣ 
(
ΣΣ 
OpenIdTokenIndex
ΣΣ +
.
ΣΣ+ ,
ExpirationDate
ΣΣ, :
)
ΣΣ: ;
)
ΣΣ; <
)
ΤΤ 
;
ΤΤ 
SchemaBuilder
ΦΦ 
.
ΦΦ 
AlterIndexTable
ΦΦ )
<
ΦΦ) *
OpenIdTokenIndex
ΦΦ* :
>
ΦΦ: ;
(
ΦΦ; <
table
ΦΦ< A
=>
ΦΦB D
table
ΦΦE J
.
ΧΧ 
CreateIndex
ΧΧ 
(
ΧΧ 
$str
ΧΧ F
,
ΧΧF G
$str
ΨΨ  
,
ΨΨ  !
nameof
ΩΩ 
(
ΩΩ 
OpenIdTokenIndex
ΩΩ +
.
ΩΩ+ ,
TokenId
ΩΩ, 3
)
ΩΩ3 4
,
ΩΩ4 5
nameof
ΪΪ 
(
ΪΪ 
OpenIdTokenIndex
ΪΪ +
.
ΪΪ+ ,
ReferenceId
ΪΪ, 7
)
ΪΪ7 8
)
ΪΪ8 9
)
ΫΫ 
;
ΫΫ 
return
έέ 
$num
έέ 
;
έέ 
}
ήή 	
}
ίί 
}ΰΰ • 
’D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdApplication.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Models$ *
{ 
public 

class 
OpenIdApplication "
{ 
public 
string 
ApplicationId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
ConsentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public"" 
string"" 
DisplayName"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public'' 
ImmutableDictionary'' "
<''" #
CultureInfo''# .
,''. /
string''0 6
>''6 7
DisplayNames''8 D
{''E F
get''G J
;''J K
set''L O
;''O P
}''Q R
=(( 
ImmutableDictionary(( !
.((! "
Create((" (
<((( )
CultureInfo(() 4
,((4 5
string((6 <
>((< =
(((= >
)((> ?
;((? @
public-- 
int-- 
Id-- 
{-- 
get-- 
;-- 
set--  
;--  !
}--" #
public22 
ImmutableArray22 
<22 
string22 $
>22$ %
Permissions22& 1
{222 3
get224 7
;227 8
set229 <
;22< =
}22> ?
=33 
ImmutableArray33 
.33 
Create33 #
<33# $
string33$ *
>33* +
(33+ ,
)33, -
;33- .
public88 
ImmutableArray88 
<88 
string88 $
>88$ %"
PostLogoutRedirectUris88& <
{88= >
get88? B
;88B C
set88D G
;88G H
}88I J
=99 
ImmutableArray99 
.99 
Create99 #
<99# $
string99$ *
>99* +
(99+ ,
)99, -
;99- .
public>> 
JObject>> 

Properties>> !
{>>" #
get>>$ '
;>>' (
set>>) ,
;>>, -
}>>. /
publicCC 
ImmutableArrayCC 
<CC 
stringCC $
>CC$ %
RedirectUrisCC& 2
{CC3 4
getCC5 8
;CC8 9
setCC: =
;CC= >
}CC? @
=DD 
ImmutableArrayDD 
.DD 
CreateDD #
<DD# $
stringDD$ *
>DD* +
(DD+ ,
)DD, -
;DD- .
publicII 
ImmutableArrayII 
<II 
stringII $
>II$ %
RequirementsII& 2
{II3 4
getII5 8
;II8 9
setII: =
;II= >
}II? @
=JJ 
ImmutableArrayJJ 
.JJ 
CreateJJ #
<JJ# $
stringJJ$ *
>JJ* +
(JJ+ ,
)JJ, -
;JJ- .
publicOO 
ImmutableArrayOO 
<OO 
stringOO $
>OO$ %
RolesOO& +
{OO, -
getOO. 1
;OO1 2
setOO3 6
;OO6 7
}OO8 9
=PP 
ImmutableArrayPP 
.PP 
CreatePP #
<PP# $
stringPP$ *
>PP* +
(PP+ ,
)PP, -
;PP- .
publicUU 
stringUU 
TypeUU 
{UU 
getUU  
;UU  !
setUU" %
;UU% &
}UU' (
}VV 
}WW £
”D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdAuthorization.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Models$ *
{ 
public 

class 
OpenIdAuthorization $
{ 
public 
string 
AuthorizationId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
ApplicationId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 
CreationDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public!! 
JObject!! 

Properties!! !
{!!" #
get!!$ '
;!!' (
set!!) ,
;!!, -
}!!. /
public&& 
ImmutableArray&& 
<&& 
string&& $
>&&$ %
Scopes&&& ,
{&&- .
get&&/ 2
;&&2 3
set&&4 7
;&&7 8
}&&9 :
='' 
ImmutableArray'' 
.'' 
Create'' #
<''# $
string''$ *
>''* +
(''+ ,
)'', -
;''- .
public,, 
string,, 
Status,, 
{,, 
get,, "
;,," #
set,,$ '
;,,' (
},,) *
public11 
string11 
Subject11 
{11 
get11  #
;11# $
set11% (
;11( )
}11* +
public66 
string66 
Type66 
{66 
get66  
;66  !
set66" %
;66% &
}66' (
}77 
}88 ‡
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdScope.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Models$ *
{ 
public 

class 
OpenIdScope 
{ 
public 
string 
ScopeId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
ImmutableDictionary "
<" #
CultureInfo# .
,. /
string0 6
>6 7
Descriptions8 D
{E F
getG J
;J K
setL O
;O P
}Q R
= 
ImmutableDictionary !
.! "
Create" (
<( )
CultureInfo) 4
,4 5
string6 <
>< =
(= >
)> ?
;? @
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public!! 
ImmutableDictionary!! "
<!!" #
CultureInfo!!# .
,!!. /
string!!0 6
>!!6 7
DisplayNames!!8 D
{!!E F
get!!G J
;!!J K
set!!L O
;!!O P
}!!Q R
="" 
ImmutableDictionary"" !
.""! "
Create""" (
<""( )
CultureInfo"") 4
,""4 5
string""6 <
>""< =
(""= >
)""> ?
;""? @
public'' 
int'' 
Id'' 
{'' 
get'' 
;'' 
set''  
;''  !
}''" #
public,, 
string,, 
Name,, 
{,, 
get,,  
;,,  !
set,," %
;,,% &
},,' (
public11 
JObject11 

Properties11 !
{11" #
get11$ '
;11' (
set11) ,
;11, -
}11. /
public66 
ImmutableArray66 
<66 
string66 $
>66$ %
	Resources66& /
{660 1
get662 5
;665 6
set667 :
;66: ;
}66< =
=77 
ImmutableArray77 
.77 
Create77 #
<77# $
string77$ *
>77* +
(77+ ,
)77, -
;77- .
}88 
}99 Ν
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdToken.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Models$ *
{ 
public		 

class		 
OpenIdToken		 
{

 
public 
string 
TokenId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ApplicationId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
AuthorizationId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
CreationDate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public"" 
DateTime"" 
?"" 
ExpirationDate"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
public'' 
int'' 
Id'' 
{'' 
get'' 
;'' 
set''  
;''  !
}''" #
public.. 
string.. 
Payload.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
public33 
JObject33 

Properties33 !
{33" #
get33$ '
;33' (
set33) ,
;33, -
}33. /
public88 
DateTime88 
?88 
RedemptionDate88 '
{88( )
get88* -
;88- .
set88/ 2
;882 3
}884 5
public@@ 
string@@ 
ReferenceId@@ !
{@@" #
get@@$ '
;@@' (
set@@) ,
;@@, -
}@@. /
publicEE 
stringEE 
StatusEE 
{EE 
getEE "
;EE" #
setEE$ '
;EE' (
}EE) *
publicJJ 
stringJJ 
SubjectJJ 
{JJ 
getJJ  #
;JJ# $
setJJ% (
;JJ( )
}JJ* +
publicOO 
stringOO 
TypeOO 
{OO 
getOO  
;OO  !
setOO" %
;OO% &
}OO' (
}PP 
}QQ ‰
ΆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdApplicationStoreResolver.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 
YesSql		 #
.		# $
	Resolvers		$ -
{

 
public 

class *
OpenIdApplicationStoreResolver /
:0 1/
#IOpenIddictApplicationStoreResolver2 U
{ 
private 
readonly 
TypeResolutionCache ,
_cache- 3
;3 4
private 
readonly 
IServiceProvider )
	_provider* 3
;3 4
public *
OpenIdApplicationStoreResolver -
(- .
TypeResolutionCache. A
cacheB G
,G H
IServiceProviderI Y
providerZ b
)b c
{ 	
_cache 
= 
cache 
; 
	_provider 
= 
provider  
;  !
} 	
public '
IOpenIddictApplicationStore *
<* +
TApplication+ 7
>7 8
Get9 <
<< =
TApplication= I
>I J
(J K
)K L
whereM R
TApplicationS _
:` a
classb g
{ 	
var 
store 
= 
	_provider !
.! "

GetService" ,
<, -'
IOpenIddictApplicationStore- H
<H I
TApplicationI U
>U V
>V W
(W X
)X Y
;Y Z
if 
( 
store 
!= 
null 
) 
{ 
return 
store 
; 
} 
var   
type   
=   
_cache   
.   
GetOrAdd   &
(  & '
typeof  ' -
(  - .
TApplication  . :
)  : ;
,  ; <
key  = @
=>  A C
{!! 
if"" 
("" 
!"" 
typeof"" 
("" 
OpenIdApplication"" -
)""- .
."". /
IsAssignableFrom""/ ?
(""? @
key""@ C
)""C D
)""D E
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 7
($$7 8
new$$8 ;
StringBuilder$$< I
($$I J
)$$J K
.%% 

AppendLine%% #
(%%# $
$str%%$ n
)%%n o
.&& 
Append&& 
(&&  
$str&&  v
)&&v w
.'' 
Append'' 
(''  
$str''  i
)''i j
.(( 
Append(( 
(((  
$str((  T
)((T U
.)) 
ToString)) !
())! "
)))" #
)))# $
;))$ %
}** 
return,, 
typeof,, 
(,, "
OpenIdApplicationStore,, 4
<,,4 5
>,,5 6
),,6 7
.,,7 8
MakeGenericType,,8 G
(,,G H
key,,H K
),,K L
;,,L M
}-- 
)-- 
;-- 
return// 
(// '
IOpenIddictApplicationStore// /
</// 0
TApplication//0 <
>//< =
)//= >
	_provider//> G
.//G H
GetRequiredService//H Z
(//Z [
type//[ _
)//_ `
;//` a
}00 	
public66 
class66 
TypeResolutionCache66 (
:66) * 
ConcurrentDictionary66+ ?
<66? @
Type66@ D
,66D E
Type66F J
>66J K
{66L M
}66N O
}77 
}88 §
¤D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdAuthorizationStoreResolver.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 
YesSql		 #
.		# $
	Resolvers		$ -
{

 
public 

class ,
 OpenIdAuthorizationStoreResolver 1
:2 31
%IOpenIddictAuthorizationStoreResolver4 Y
{ 
private 
readonly 
TypeResolutionCache ,
_cache- 3
;3 4
private 
readonly 
IServiceProvider )
	_provider* 3
;3 4
public ,
 OpenIdAuthorizationStoreResolver /
(/ 0
TypeResolutionCache0 C
cacheD I
,I J
IServiceProviderK [
provider\ d
)d e
{ 	
_cache 
= 
cache 
; 
	_provider 
= 
provider  
;  !
} 	
public )
IOpenIddictAuthorizationStore ,
<, -
TAuthorization- ;
>; <
Get= @
<@ A
TAuthorizationA O
>O P
(P Q
)Q R
whereS X
TAuthorizationY g
:h i
classj o
{ 	
var 
store 
= 
	_provider !
.! "

GetService" ,
<, -)
IOpenIddictAuthorizationStore- J
<J K
TAuthorizationK Y
>Y Z
>Z [
([ \
)\ ]
;] ^
if 
( 
store 
!= 
null 
) 
{ 
return 
store 
; 
} 
var   
type   
=   
_cache   
.   
GetOrAdd   &
(  & '
typeof  ' -
(  - .
TAuthorization  . <
)  < =
,  = >
key  ? B
=>  C E
{!! 
if"" 
("" 
!"" 
typeof"" 
("" 
OpenIdAuthorization"" /
)""/ 0
.""0 1
IsAssignableFrom""1 A
(""A B
key""B E
)""E F
)""F G
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 7
($$7 8
new$$8 ;
StringBuilder$$< I
($$I J
)$$J K
.%% 

AppendLine%% #
(%%# $
$str%%$ p
)%%p q
.&& 
Append&& 
(&&  
$str&&  x
)&&x y
.'' 
Append'' 
(''  
$str''  i
)''i j
.(( 
Append(( 
(((  
$str((  V
)((V W
.)) 
ToString)) !
())! "
)))" #
)))# $
;))$ %
}** 
return,, 
typeof,, 
(,, $
OpenIdAuthorizationStore,, 6
<,,6 7
>,,7 8
),,8 9
.,,9 :
MakeGenericType,,: I
(,,I J
key,,J M
),,M N
;,,N O
}-- 
)-- 
;-- 
return// 
(// )
IOpenIddictAuthorizationStore// 1
<//1 2
TAuthorization//2 @
>//@ A
)//A B
	_provider//B K
.//K L
GetRequiredService//L ^
(//^ _
type//_ c
)//c d
;//d e
}00 	
public66 
class66 
TypeResolutionCache66 (
:66) * 
ConcurrentDictionary66+ ?
<66? @
Type66@ D
,66D E
Type66F J
>66J K
{66L M
}66N O
}77 
}88 ―
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdScopeStoreResolver.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 
YesSql		 #
.		# $
	Resolvers		$ -
{

 
public 

class $
OpenIdScopeStoreResolver )
:* +)
IOpenIddictScopeStoreResolver, I
{ 
private 
readonly 
TypeResolutionCache ,
_cache- 3
;3 4
private 
readonly 
IServiceProvider )
	_provider* 3
;3 4
public $
OpenIdScopeStoreResolver '
(' (
TypeResolutionCache( ;
cache< A
,A B
IServiceProviderC S
providerT \
)\ ]
{ 	
_cache 
= 
cache 
; 
	_provider 
= 
provider  
;  !
} 	
public !
IOpenIddictScopeStore $
<$ %
TScope% +
>+ ,
Get- 0
<0 1
TScope1 7
>7 8
(8 9
)9 :
where; @
TScopeA G
:H I
classJ O
{ 	
var 
store 
= 
	_provider !
.! "

GetService" ,
<, -!
IOpenIddictScopeStore- B
<B C
TScopeC I
>I J
>J K
(K L
)L M
;M N
if 
( 
store 
!= 
null 
) 
{ 
return 
store 
; 
} 
var   
type   
=   
_cache   
.   
GetOrAdd   &
(  & '
typeof  ' -
(  - .
TScope  . 4
)  4 5
,  5 6
key  7 :
=>  ; =
{!! 
if"" 
("" 
!"" 
typeof"" 
("" 
OpenIdScope"" '
)""' (
.""( )
IsAssignableFrom"") 9
(""9 :
key"": =
)""= >
)""> ?
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 7
($$7 8
new$$8 ;
StringBuilder$$< I
($$I J
)$$J K
.%% 

AppendLine%% #
(%%# $
$str%%$ h
)%%h i
.&& 
Append&& 
(&&  
$str&&  p
)&&p q
.'' 
Append'' 
(''  
$str''  i
)''i j
.(( 
Append(( 
(((  
$str((  N
)((N O
.)) 
ToString)) !
())! "
)))" #
)))# $
;))$ %
}** 
return,, 
typeof,, 
(,, 
OpenIdScopeStore,, .
<,,. /
>,,/ 0
),,0 1
.,,1 2
MakeGenericType,,2 A
(,,A B
key,,B E
),,E F
;,,F G
}-- 
)-- 
;-- 
return// 
(// !
IOpenIddictScopeStore// )
<//) *
TScope//* 0
>//0 1
)//1 2
	_provider//2 ;
.//; <
GetRequiredService//< N
(//N O
type//O S
)//S T
;//T U
}00 	
public66 
class66 
TypeResolutionCache66 (
:66) * 
ConcurrentDictionary66+ ?
<66? @
Type66@ D
,66D E
Type66F J
>66J K
{66L M
}66N O
}77 
}88 ―
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdTokenStoreResolver.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 
YesSql		 #
.		# $
	Resolvers		$ -
{

 
public 

class $
OpenIdTokenStoreResolver )
:* +)
IOpenIddictTokenStoreResolver, I
{ 
private 
readonly 
TypeResolutionCache ,
_cache- 3
;3 4
private 
readonly 
IServiceProvider )
	_provider* 3
;3 4
public $
OpenIdTokenStoreResolver '
(' (
TypeResolutionCache( ;
cache< A
,A B
IServiceProviderC S
providerT \
)\ ]
{ 	
_cache 
= 
cache 
; 
	_provider 
= 
provider  
;  !
} 	
public !
IOpenIddictTokenStore $
<$ %
TToken% +
>+ ,
Get- 0
<0 1
TToken1 7
>7 8
(8 9
)9 :
where; @
TTokenA G
:H I
classJ O
{ 	
var 
store 
= 
	_provider !
.! "

GetService" ,
<, -!
IOpenIddictTokenStore- B
<B C
TTokenC I
>I J
>J K
(K L
)L M
;M N
if 
( 
store 
!= 
null 
) 
{ 
return 
store 
; 
} 
var   
type   
=   
_cache   
.   
GetOrAdd   &
(  & '
typeof  ' -
(  - .
TToken  . 4
)  4 5
,  5 6
key  7 :
=>  ; =
{!! 
if"" 
("" 
!"" 
typeof"" 
("" 
OpenIdToken"" '
)""' (
.""( )
IsAssignableFrom"") 9
(""9 :
key"": =
)""= >
)""> ?
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 7
($$7 8
new$$8 ;
StringBuilder$$< I
($$I J
)$$J K
.%% 

AppendLine%% #
(%%# $
$str%%$ h
)%%h i
.&& 
Append&& 
(&&  
$str&&  p
)&&p q
.'' 
Append'' 
(''  
$str''  i
)''i j
.(( 
Append(( 
(((  
$str((  N
)((N O
.)) 
ToString)) !
())! "
)))" #
)))# $
;))$ %
}** 
return,, 
typeof,, 
(,, 
OpenIdTokenStore,, .
<,,. /
>,,/ 0
),,0 1
.,,1 2
MakeGenericType,,2 A
(,,A B
key,,B E
),,E F
;,,F G
}-- 
)-- 
;-- 
return// 
(// !
IOpenIddictTokenStore// )
<//) *
TToken//* 0
>//0 1
)//1 2
	_provider//2 ;
.//; <
GetRequiredService//< N
(//N O
type//O S
)//S T
;//T U
}00 	
public66 
class66 
TypeResolutionCache66 (
:66) * 
ConcurrentDictionary66+ ?
<66? @
Type66@ D
,66D E
Type66F J
>66J K
{66L M
}66N O
}77 
}88 ωτ
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdApplicationStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Stores$ *
{ 
public 

class "
OpenIdApplicationStore '
<' (
TApplication( 4
>4 5
:6 7#
IOpenIdApplicationStore8 O
<O P
TApplicationP \
>\ ]
where 
TApplication 
: 
OpenIdApplication .
,. /
new0 3
(3 4
)4 5
{ 
private 
readonly 
ISession !
_session" *
;* +
public "
OpenIdApplicationStore %
(% &
ISession& .
session/ 6
)6 7
{ 	
_session 
= 
session 
; 
} 	
public 
virtual 
async 
	ValueTask &
<& '
long' +
>+ ,

CountAsync- 7
(7 8
CancellationToken8 I
cancellationTokenJ [
)[ \
{   	
cancellationToken!! 
.!! (
ThrowIfCancellationRequested!! :
(!!: ;
)!!; <
;!!< =
return## 
await## 
_session## !
.##! "
Query##" '
<##' (
TApplication##( 4
>##4 5
(##5 6
)##6 7
.##7 8

CountAsync##8 B
(##B C
)##C D
;##D E
}$$ 	
public'' 
virtual'' 
	ValueTask''  
<''  !
long''! %
>''% &

CountAsync''' 1
<''1 2
TResult''2 9
>''9 :
('': ;
Func''; ?
<''? @

IQueryable''@ J
<''J K
TApplication''K W
>''W X
,''X Y

IQueryable''Z d
<''d e
TResult''e l
>''l m
>''m n
query''o t
,''t u
CancellationToken	''v ‡
cancellationToken
'' ™
)
''™ 
=>(( 
throw(( 
new(( !
NotSupportedException(( .
(((. /
)((/ 0
;((0 1
public++ 
virtual++ 
async++ 
	ValueTask++ &
CreateAsync++' 2
(++2 3
TApplication++3 ?
application++@ K
,++K L
CancellationToken++M ^
cancellationToken++_ p
)++p q
{,, 	
if-- 
(-- 
application-- 
==-- 
null-- #
)--# $
{.. 
throw// 
new// !
ArgumentNullException// /
(/// 0
nameof//0 6
(//6 7
application//7 B
)//B C
)//C D
;//D E
}00 
cancellationToken22 
.22 (
ThrowIfCancellationRequested22 :
(22: ;
)22; <
;22< =
_session44 
.44 
Save44 
(44 
application44 %
)44% &
;44& '
await55 
_session55 
.55 
CommitAsync55 &
(55& '
)55' (
;55( )
}66 	
public99 
virtual99 
async99 
	ValueTask99 &
DeleteAsync99' 2
(992 3
TApplication993 ?
application99@ K
,99K L
CancellationToken99M ^
cancellationToken99_ p
)99p q
{:: 	
if;; 
(;; 
application;; 
==;; 
null;; #
);;# $
{<< 
throw== 
new== !
ArgumentNullException== /
(==/ 0
nameof==0 6
(==6 7
application==7 B
)==B C
)==C D
;==D E
}>> 
cancellationToken@@ 
.@@ (
ThrowIfCancellationRequested@@ :
(@@: ;
)@@; <
;@@< =
_sessionBB 
.BB 
DeleteBB 
(BB 
applicationBB '
)BB' (
;BB( )
awaitCC 
_sessionCC 
.CC 
CommitAsyncCC &
(CC& '
)CC' (
;CC( )
}DD 	
publicGG 
virtualGG 
asyncGG 
	ValueTaskGG &
<GG& '
TApplicationGG' 3
>GG3 4
FindByIdAsyncGG5 B
(GGB C
stringGGC I

identifierGGJ T
,GGT U
CancellationTokenGGV g
cancellationTokenGGh y
)GGy z
{HH 	
ifII 
(II 
stringII 
.II 
IsNullOrEmptyII $
(II$ %

identifierII% /
)II/ 0
)II0 1
{JJ 
throwKK 
newKK 
ArgumentExceptionKK +
(KK+ ,
$strKK, U
,KKU V
nameofKKW ]
(KK] ^

identifierKK^ h
)KKh i
)KKi j
;KKj k
}LL 
cancellationTokenNN 
.NN (
ThrowIfCancellationRequestedNN :
(NN: ;
)NN; <
;NN< =
returnPP 
awaitPP 
_sessionPP !
.PP! "
QueryPP" '
<PP' (
TApplicationPP( 4
,PP4 5"
OpenIdApplicationIndexPP6 L
>PPL M
(PPM N
indexPPN S
=>PPT V
indexPPW \
.PP\ ]
ApplicationIdPP] j
==PPk m

identifierPPn x
)PPx y
.PPy z 
FirstOrDefaultAsync	PPz 
(
PP 
)
PP 
;
PP 
}QQ 	
publicTT 
virtualTT 
asyncTT 
	ValueTaskTT &
<TT& '
TApplicationTT' 3
>TT3 4
FindByClientIdAsyncTT5 H
(TTH I
stringTTI O

identifierTTP Z
,TTZ [
CancellationTokenTT\ m
cancellationTokenTTn 
)	TT €
{UU 	
ifVV 
(VV 
stringVV 
.VV 
IsNullOrEmptyVV $
(VV$ %

identifierVV% /
)VV/ 0
)VV0 1
{WW 
throwXX 
newXX 
ArgumentExceptionXX +
(XX+ ,
$strXX, U
,XXU V
nameofXXW ]
(XX] ^

identifierXX^ h
)XXh i
)XXi j
;XXj k
}YY 
cancellationToken[[ 
.[[ (
ThrowIfCancellationRequested[[ :
([[: ;
)[[; <
;[[< =
return]] 
await]] 
_session]] !
.]]! "
Query]]" '
<]]' (
TApplication]]( 4
,]]4 5"
OpenIdApplicationIndex]]6 L
>]]L M
(]]M N
index]]N S
=>]]T V
index]]W \
.]]\ ]
ClientId]]] e
==]]f h

identifier]]i s
)]]s t
.]]t u 
FirstOrDefaultAsync	]]u 
(
]] ‰
)
]]‰ 
;
]] ‹
}^^ 	
publicaa 
virtualaa 
asyncaa 
	ValueTaskaa &
<aa& '
TApplicationaa' 3
>aa3 4!
FindByPhysicalIdAsyncaa5 J
(aaJ K
stringaaK Q

identifieraaR \
,aa\ ]
CancellationTokenaa^ o
cancellationToken	aap 
)
aa ‚
{bb 	
ifcc 
(cc 
stringcc 
.cc 
IsNullOrEmptycc $
(cc$ %

identifiercc% /
)cc/ 0
)cc0 1
{dd 
throwee 
newee 
ArgumentExceptionee +
(ee+ ,
$stree, U
,eeU V
nameofeeW ]
(ee] ^

identifieree^ h
)eeh i
)eei j
;eej k
}ff 
cancellationTokenhh 
.hh (
ThrowIfCancellationRequestedhh :
(hh: ;
)hh; <
;hh< =
returnjj 
awaitjj 
_sessionjj !
.jj! "
GetAsyncjj" *
<jj* +
TApplicationjj+ 7
>jj7 8
(jj8 9
intjj9 <
.jj< =
Parsejj= B
(jjB C

identifierjjC M
,jjM N
CultureInfojjO Z
.jjZ [
InvariantCulturejj[ k
)jjk l
)jjl m
;jjm n
}kk 	
publicnn 
virtualnn 
IAsyncEnumerablenn '
<nn' (
TApplicationnn( 4
>nn4 5,
 FindByPostLogoutRedirectUriAsyncnn6 V
(nnV W
stringnnW ]
addressnn^ e
,nne f
CancellationTokennng x
cancellationToken	nny 
)
nn ‹
{oo 	
ifpp 
(pp 
stringpp 
.pp 
IsNullOrEmptypp $
(pp$ %
addresspp% ,
)pp, -
)pp- .
{qq 
throwrr 
newrr 
ArgumentExceptionrr +
(rr+ ,
$strrr, R
,rrR S
nameofrrT Z
(rrZ [
addressrr[ b
)rrb c
)rrc d
;rrd e
}ss 
cancellationTokenuu 
.uu (
ThrowIfCancellationRequesteduu :
(uu: ;
)uu; <
;uu< =
returnww 
_sessionww 
.ww 
Queryww !
<ww! "
TApplicationww" .
,ww. /%
OpenIdAppByLogoutUriIndexww0 I
>wwI J
(wwJ K
indexxx 
=>xx 
indexxx 
.xx 
LogoutRedirectUrixx 0
==xx1 3
addressxx4 ;
)xx; <
.xx< =
ToAsyncEnumerablexx= N
(xxN O
)xxO P
;xxP Q
}yy 	
public|| 
virtual|| 
IAsyncEnumerable|| '
<||' (
TApplication||( 4
>||4 5"
FindByRedirectUriAsync||6 L
(||L M
string||M S
address||T [
,||[ \
CancellationToken||] n
cancellationToken	||o €
)
||€ 
{}} 	
if~~ 
(~~ 
string~~ 
.~~ 
IsNullOrEmpty~~ $
(~~$ %
address~~% ,
)~~, -
)~~- .
{ 
throw
€€ 
new
€€ 
ArgumentException
€€ +
(
€€+ ,
$str
€€, R
,
€€R S
nameof
€€T Z
(
€€Z [
address
€€[ b
)
€€b c
)
€€c d
;
€€d e
}
 
cancellationToken
ƒƒ 
.
ƒƒ *
ThrowIfCancellationRequested
ƒƒ :
(
ƒƒ: ;
)
ƒƒ; <
;
ƒƒ< =
return
…… 
_session
…… 
.
…… 
Query
…… !
<
……! "
TApplication
……" .
,
……. /)
OpenIdAppByRedirectUriIndex
……0 K
>
……K L
(
……L M
index
†† 
=>
†† 
index
†† 
.
†† 
RedirectUri
†† *
==
††+ -
address
††. 5
)
††5 6
.
††6 7
ToAsyncEnumerable
††7 H
(
††H I
)
††I J
;
††J K
}
‡‡ 	
public
 
virtual
 
	ValueTask
  
<
  !
TResult
! (
>
( )
GetAsync
* 2
<
2 3
TState
3 9
,
9 :
TResult
; B
>
B C
(
C D
Func
‹‹ 
<
‹‹ 

IQueryable
‹‹ 
<
‹‹ 
TApplication
‹‹ (
>
‹‹( )
,
‹‹) *
TState
‹‹+ 1
,
‹‹1 2

IQueryable
‹‹3 =
<
‹‹= >
TResult
‹‹> E
>
‹‹E F
>
‹‹F G
query
‹‹H M
,
‹‹M N
TState
 
state
 
,
 
CancellationToken
 +
cancellationToken
, =
)
= >
=>
 
throw
 
new
 #
NotSupportedException
 .
(
. /
)
/ 0
;
0 1
public
 
virtual
 
	ValueTask
  
<
  !
string
! '
>
' (
GetClientIdAsync
) 9
(
9 :
TApplication
: F
application
G R
,
R S
CancellationToken
T e
cancellationToken
f w
)
w x
{
‘‘ 	
if
’’ 
(
’’ 
application
’’ 
==
’’ 
null
’’ #
)
’’# $
{
““ 
throw
”” 
new
”” #
ArgumentNullException
”” /
(
””/ 0
nameof
””0 6
(
””6 7
application
””7 B
)
””B C
)
””C D
;
””D E
}
•• 
return
—— 
new
—— 
	ValueTask
——  
<
——  !
string
——! '
>
——' (
(
——( )
application
——) 4
.
——4 5
ClientId
——5 =
)
——= >
;
——> ?
}
 	
public
›› 
virtual
›› 
	ValueTask
››  
<
››  !
string
››! '
>
››' ("
GetClientSecretAsync
››) =
(
››= >
TApplication
››> J
application
››K V
,
››V W
CancellationToken
››X i
cancellationToken
››j {
)
››{ |
{
 	
if
 
(
 
application
 
==
 
null
 #
)
# $
{
 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
application
7 B
)
B C
)
C D
;
D E
}
   
return
ΆΆ 
new
ΆΆ 
	ValueTask
ΆΆ  
<
ΆΆ  !
string
ΆΆ! '
>
ΆΆ' (
(
ΆΆ( )
application
ΆΆ) 4
.
ΆΆ4 5
ClientSecret
ΆΆ5 A
)
ΆΆA B
;
ΆΆB C
}
££ 	
public
¦¦ 
virtual
¦¦ 
	ValueTask
¦¦  
<
¦¦  !
string
¦¦! '
>
¦¦' ( 
GetClientTypeAsync
¦¦) ;
(
¦¦; <
TApplication
¦¦< H
application
¦¦I T
,
¦¦T U
CancellationToken
¦¦V g
cancellationToken
¦¦h y
)
¦¦y z
{
§§ 	
if
¨¨ 
(
¨¨ 
application
¨¨ 
==
¨¨ 
null
¨¨ #
)
¨¨# $
{
©© 
throw
ªª 
new
ªª #
ArgumentNullException
ªª /
(
ªª/ 0
nameof
ªª0 6
(
ªª6 7
application
ªª7 B
)
ªªB C
)
ªªC D
;
ªªD E
}
«« 
return
­­ 
new
­­ 
	ValueTask
­­  
<
­­  !
string
­­! '
>
­­' (
(
­­( )
application
­­) 4
.
­­4 5
Type
­­5 9
)
­­9 :
;
­­: ;
}
®® 	
public
±± 
virtual
±± 
	ValueTask
±±  
<
±±  !
string
±±! '
>
±±' (!
GetConsentTypeAsync
±±) <
(
±±< =
TApplication
±±= I
application
±±J U
,
±±U V
CancellationToken
±±W h
cancellationToken
±±i z
)
±±z {
{
²² 	
if
³³ 
(
³³ 
application
³³ 
==
³³ 
null
³³ #
)
³³# $
{
΄΄ 
throw
µµ 
new
µµ #
ArgumentNullException
µµ /
(
µµ/ 0
nameof
µµ0 6
(
µµ6 7
application
µµ7 B
)
µµB C
)
µµC D
;
µµD E
}
¶¶ 
return
ΈΈ 
new
ΈΈ 
	ValueTask
ΈΈ  
<
ΈΈ  !
string
ΈΈ! '
>
ΈΈ' (
(
ΈΈ( )
application
ΈΈ) 4
.
ΈΈ4 5
ConsentType
ΈΈ5 @
)
ΈΈ@ A
;
ΈΈA B
}
ΉΉ 	
public
ΌΌ 
virtual
ΌΌ 
	ValueTask
ΌΌ  
<
ΌΌ  !
string
ΌΌ! '
>
ΌΌ' (!
GetDisplayNameAsync
ΌΌ) <
(
ΌΌ< =
TApplication
ΌΌ= I
application
ΌΌJ U
,
ΌΌU V
CancellationToken
ΌΌW h
cancellationToken
ΌΌi z
)
ΌΌz {
{
½½ 	
if
ΎΎ 
(
ΎΎ 
application
ΎΎ 
==
ΎΎ 
null
ΎΎ #
)
ΎΎ# $
{
ΏΏ 
throw
ΐΐ 
new
ΐΐ #
ArgumentNullException
ΐΐ /
(
ΐΐ/ 0
nameof
ΐΐ0 6
(
ΐΐ6 7
application
ΐΐ7 B
)
ΐΐB C
)
ΐΐC D
;
ΐΐD E
}
ΑΑ 
return
ΓΓ 
new
ΓΓ 
	ValueTask
ΓΓ  
<
ΓΓ  !
string
ΓΓ! '
>
ΓΓ' (
(
ΓΓ( )
application
ΓΓ) 4
.
ΓΓ4 5
DisplayName
ΓΓ5 @
)
ΓΓ@ A
;
ΓΓA B
}
ΔΔ 	
public
ΗΗ 
virtual
ΗΗ 
	ValueTask
ΗΗ  
<
ΗΗ  !!
ImmutableDictionary
ΗΗ! 4
<
ΗΗ4 5
CultureInfo
ΗΗ5 @
,
ΗΗ@ A
string
ΗΗB H
>
ΗΗH I
>
ΗΗI J"
GetDisplayNamesAsync
ΗΗK _
(
ΗΗ_ `
TApplication
ΘΘ 
application
ΘΘ $
,
ΘΘ$ %
CancellationToken
ΘΘ& 7
cancellationToken
ΘΘ8 I
)
ΘΘI J
{
ΙΙ 	
if
ΚΚ 
(
ΚΚ 
application
ΚΚ 
==
ΚΚ 
null
ΚΚ #
)
ΚΚ# $
{
ΛΛ 
throw
ΜΜ 
new
ΜΜ #
ArgumentNullException
ΜΜ /
(
ΜΜ/ 0
nameof
ΜΜ0 6
(
ΜΜ6 7
application
ΜΜ7 B
)
ΜΜB C
)
ΜΜC D
;
ΜΜD E
}
ΝΝ 
if
ΟΟ 
(
ΟΟ 
application
ΟΟ 
.
ΟΟ 
DisplayNames
ΟΟ (
==
ΟΟ) +
null
ΟΟ, 0
)
ΟΟ0 1
{
ΠΠ 
return
ΡΡ 
new
ΡΡ 
	ValueTask
ΡΡ $
<
ΡΡ$ %!
ImmutableDictionary
ΡΡ% 8
<
ΡΡ8 9
CultureInfo
ΡΡ9 D
,
ΡΡD E
string
ΡΡF L
>
ΡΡL M
>
ΡΡM N
(
ΡΡN O!
ImmutableDictionary
ΡΡO b
.
ΡΡb c
Create
ΡΡc i
<
ΡΡi j
CultureInfo
ΡΡj u
,
ΡΡu v
string
ΡΡw }
>
ΡΡ} ~
(
ΡΡ~ 
)ΡΡ €
)ΡΡ€ 
;ΡΡ ‚
}
ÒÒ 
return
ΤΤ 
new
ΤΤ 
	ValueTask
ΤΤ  
<
ΤΤ  !!
ImmutableDictionary
ΤΤ! 4
<
ΤΤ4 5
CultureInfo
ΤΤ5 @
,
ΤΤ@ A
string
ΤΤB H
>
ΤΤH I
>
ΤΤI J
(
ΤΤJ K
application
ΤΤK V
.
ΤΤV W
DisplayNames
ΤΤW c
)
ΤΤc d
;
ΤΤd e
}
ΥΥ 	
public
ΨΨ 
virtual
ΨΨ 
	ValueTask
ΨΨ  
<
ΨΨ  !
string
ΨΨ! '
>
ΨΨ' (

GetIdAsync
ΨΨ) 3
(
ΨΨ3 4
TApplication
ΨΨ4 @
application
ΨΨA L
,
ΨΨL M
CancellationToken
ΨΨN _
cancellationToken
ΨΨ` q
)
ΨΨq r
{
ΩΩ 	
if
ΪΪ 
(
ΪΪ 
application
ΪΪ 
==
ΪΪ 
null
ΪΪ #
)
ΪΪ# $
{
ΫΫ 
throw
άά 
new
άά #
ArgumentNullException
άά /
(
άά/ 0
nameof
άά0 6
(
άά6 7
application
άά7 B
)
άάB C
)
άάC D
;
άάD E
}
έέ 
return
ίί 
new
ίί 
	ValueTask
ίί  
<
ίί  !
string
ίί! '
>
ίί' (
(
ίί( )
application
ίί) 4
.
ίί4 5
ApplicationId
ίί5 B
)
ίίB C
;
ίίC D
}
ΰΰ 	
public
γγ 
virtual
γγ 
	ValueTask
γγ  
<
γγ  !
ImmutableArray
γγ! /
<
γγ/ 0
string
γγ0 6
>
γγ6 7
>
γγ7 8!
GetPermissionsAsync
γγ9 L
(
γγL M
TApplication
γγM Y
application
γγZ e
,
γγe f
CancellationToken
γγg x 
cancellationTokenγγy 
)γγ ‹
{
δδ 	
if
εε 
(
εε 
application
εε 
==
εε 
null
εε #
)
εε# $
{
ζζ 
throw
ηη 
new
ηη #
ArgumentNullException
ηη /
(
ηη/ 0
nameof
ηη0 6
(
ηη6 7
application
ηη7 B
)
ηηB C
)
ηηC D
;
ηηD E
}
θθ 
return
κκ 
new
κκ 
	ValueTask
κκ  
<
κκ  !
ImmutableArray
κκ! /
<
κκ/ 0
string
κκ0 6
>
κκ6 7
>
κκ7 8
(
κκ8 9
application
κκ9 D
.
κκD E
Permissions
κκE P
)
κκP Q
;
κκQ R
}
λλ 	
public
ξξ 
virtual
ξξ 
	ValueTask
ξξ  
<
ξξ  !
string
ξξ! '
>
ξξ' ( 
GetPhysicalIdAsync
ξξ) ;
(
ξξ; <
TApplication
ξξ< H
application
ξξI T
,
ξξT U
CancellationToken
ξξV g
cancellationToken
ξξh y
)
ξξy z
{
οο 	
if
ππ 
(
ππ 
application
ππ 
==
ππ 
null
ππ #
)
ππ# $
{
ρρ 
throw
ςς 
new
ςς #
ArgumentNullException
ςς /
(
ςς/ 0
nameof
ςς0 6
(
ςς6 7
application
ςς7 B
)
ςςB C
)
ςςC D
;
ςςD E
}
σσ 
return
υυ 
new
υυ 
	ValueTask
υυ  
<
υυ  !
string
υυ! '
>
υυ' (
(
υυ( )
application
υυ) 4
.
υυ4 5
Id
υυ5 7
.
υυ7 8
ToString
υυ8 @
(
υυ@ A
CultureInfo
υυA L
.
υυL M
InvariantCulture
υυM ]
)
υυ] ^
)
υυ^ _
;
υυ_ `
}
φφ 	
public
ωω 
virtual
ωω 
	ValueTask
ωω  
<
ωω  !
ImmutableArray
ωω! /
<
ωω/ 0
string
ωω0 6
>
ωω6 7
>
ωω7 8,
GetPostLogoutRedirectUrisAsync
ωω9 W
(
ωωW X
TApplication
ωωX d
application
ωωe p
,
ωωp q 
CancellationTokenωωr ƒ!
cancellationTokenωω„ •
)ωω• –
{
ϊϊ 	
if
ϋϋ 
(
ϋϋ 
application
ϋϋ 
==
ϋϋ 
null
ϋϋ #
)
ϋϋ# $
{
όό 
throw
ύύ 
new
ύύ #
ArgumentNullException
ύύ /
(
ύύ/ 0
nameof
ύύ0 6
(
ύύ6 7
application
ύύ7 B
)
ύύB C
)
ύύC D
;
ύύD E
}
ώώ 
return
€€ 
new
€€ 
	ValueTask
€€  
<
€€  !
ImmutableArray
€€! /
<
€€/ 0
string
€€0 6
>
€€6 7
>
€€7 8
(
€€8 9
application
€€9 D
.
€€D E$
PostLogoutRedirectUris
€€E [
)
€€[ \
;
€€\ ]
}
 	
public
„„ 
virtual
„„ 
	ValueTask
„„  
<
„„  !!
ImmutableDictionary
„„! 4
<
„„4 5
string
„„5 ;
,
„„; <
JsonElement
„„= H
>
„„H I
>
„„I J 
GetPropertiesAsync
„„K ]
(
„„] ^
TApplication
„„^ j
application
„„k v
,
„„v w 
CancellationToken„„x ‰!
cancellationToken„„ ›
)„„› 
{
…… 	
if
†† 
(
†† 
application
†† 
==
†† 
null
†† #
)
††# $
{
‡‡ 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
application
7 B
)
B C
)
C D
;
D E
}
‰‰ 
if
‹‹ 
(
‹‹ 
application
‹‹ 
.
‹‹ 

Properties
‹‹ &
==
‹‹' )
null
‹‹* .
)
‹‹. /
{
 
return
 
new
 
	ValueTask
 $
<
$ %!
ImmutableDictionary
% 8
<
8 9
string
9 ?
,
? @
JsonElement
A L
>
L M
>
M N
(
N O!
ImmutableDictionary
O b
.
b c
Create
c i
<
i j
string
j p
,
p q
JsonElement
r }
>
} ~
(
~ 
) €
)€ 
; ‚
}
 
return
 
new
 
	ValueTask
  
<
  !!
ImmutableDictionary
! 4
<
4 5
string
5 ;
,
; <
JsonElement
= H
>
H I
>
I J
(
J K
JsonSerializer
‘‘ 
.
‘‘ 
Deserialize
‘‘ *
<
‘‘* +!
ImmutableDictionary
‘‘+ >
<
‘‘> ?
string
‘‘? E
,
‘‘E F
JsonElement
‘‘G R
>
‘‘R S
>
‘‘S T
(
‘‘T U
application
‘‘U `
.
‘‘` a

Properties
‘‘a k
.
‘‘k l
ToString
‘‘l t
(
‘‘t u
)
‘‘u v
)
‘‘v w
)
‘‘w x
;
‘‘x y
}
’’ 	
public
•• 
virtual
•• 
	ValueTask
••  
<
••  !
ImmutableArray
••! /
<
••/ 0
string
••0 6
>
••6 7
>
••7 8"
GetRedirectUrisAsync
••9 M
(
••M N
TApplication
••N Z
application
••[ f
,
••f g
CancellationToken
••h y 
cancellationToken••z ‹
)••‹ 
{
–– 	
if
—— 
(
—— 
application
—— 
==
—— 
null
—— #
)
——# $
{
 
throw
™™ 
new
™™ #
ArgumentNullException
™™ /
(
™™/ 0
nameof
™™0 6
(
™™6 7
application
™™7 B
)
™™B C
)
™™C D
;
™™D E
}
 
return
 
new
 
	ValueTask
  
<
  !
ImmutableArray
! /
<
/ 0
string
0 6
>
6 7
>
7 8
(
8 9
application
9 D
.
D E
RedirectUris
E Q
)
Q R
;
R S
}
 	
public
   
virtual
   
	ValueTask
    
<
    !
ImmutableArray
  ! /
<
  / 0
string
  0 6
>
  6 7
>
  7 8"
GetRequirementsAsync
  9 M
(
  M N
TApplication
  N Z
application
  [ f
,
  f g
CancellationToken
  h y 
cancellationToken  z ‹
)  ‹ 
{
΅΅ 	
if
ΆΆ 
(
ΆΆ 
application
ΆΆ 
==
ΆΆ 
null
ΆΆ #
)
ΆΆ# $
{
££ 
throw
¤¤ 
new
¤¤ #
ArgumentNullException
¤¤ /
(
¤¤/ 0
nameof
¤¤0 6
(
¤¤6 7
application
¤¤7 B
)
¤¤B C
)
¤¤C D
;
¤¤D E
}
¥¥ 
return
§§ 
new
§§ 
	ValueTask
§§  
<
§§  !
ImmutableArray
§§! /
<
§§/ 0
string
§§0 6
>
§§6 7
>
§§7 8
(
§§8 9
application
§§9 D
.
§§D E
Requirements
§§E Q
)
§§Q R
;
§§R S
}
¨¨ 	
public
«« 
virtual
«« 
	ValueTask
««  
<
««  !
TApplication
««! -
>
««- .
InstantiateAsync
««/ ?
(
««? @
CancellationToken
««@ Q
cancellationToken
««R c
)
««c d
=>
¬¬ 
new
¬¬ 
	ValueTask
¬¬ 
<
¬¬ 
TApplication
¬¬ )
>
¬¬) *
(
¬¬* +
new
¬¬+ .
TApplication
¬¬/ ;
{
¬¬< =
ApplicationId
¬¬> K
=
¬¬L M
Guid
¬¬N R
.
¬¬R S
NewGuid
¬¬S Z
(
¬¬Z [
)
¬¬[ \
.
¬¬\ ]
ToString
¬¬] e
(
¬¬e f
$str
¬¬f i
)
¬¬i j
}
¬¬k l
)
¬¬l m
;
¬¬m n
public
―― 
virtual
―― 
IAsyncEnumerable
―― '
<
――' (
TApplication
――( 4
>
――4 5
	ListAsync
――6 ?
(
――? @
int
――@ C
?
――C D
count
――E J
,
――J K
int
――L O
?
――O P
offset
――Q W
,
――W X
CancellationToken
――Y j
cancellationToken
――k |
)
――| }
{
°° 	
var
±± 
query
±± 
=
±± 
_session
±±  
.
±±  !
Query
±±! &
<
±±& '
TApplication
±±' 3
>
±±3 4
(
±±4 5
)
±±5 6
;
±±6 7
if
³³ 
(
³³ 
offset
³³ 
.
³³ 
HasValue
³³ 
)
³³  
{
΄΄ 
query
µµ 
=
µµ 
query
µµ 
.
µµ 
Skip
µµ "
(
µµ" #
offset
µµ# )
.
µµ) *
Value
µµ* /
)
µµ/ 0
;
µµ0 1
}
¶¶ 
if
ΈΈ 
(
ΈΈ 
count
ΈΈ 
.
ΈΈ 
HasValue
ΈΈ 
)
ΈΈ 
{
ΉΉ 
query
ΊΊ 
=
ΊΊ 
query
ΊΊ 
.
ΊΊ 
Take
ΊΊ "
(
ΊΊ" #
count
ΊΊ# (
.
ΊΊ( )
Value
ΊΊ) .
)
ΊΊ. /
;
ΊΊ/ 0
}
»» 
return
½½ 
query
½½ 
.
½½ 
ToAsyncEnumerable
½½ *
(
½½* +
)
½½+ ,
;
½½, -
}
ΎΎ 	
public
ΑΑ 
virtual
ΑΑ 
IAsyncEnumerable
ΑΑ '
<
ΑΑ' (
TResult
ΑΑ( /
>
ΑΑ/ 0
	ListAsync
ΑΑ1 :
<
ΑΑ: ;
TState
ΑΑ; A
,
ΑΑA B
TResult
ΑΑC J
>
ΑΑJ K
(
ΑΑK L
Func
ΒΒ 
<
ΒΒ 

IQueryable
ΒΒ 
<
ΒΒ 
TApplication
ΒΒ (
>
ΒΒ( )
,
ΒΒ) *
TState
ΒΒ+ 1
,
ΒΒ1 2

IQueryable
ΒΒ3 =
<
ΒΒ= >
TResult
ΒΒ> E
>
ΒΒE F
>
ΒΒF G
query
ΒΒH M
,
ΒΒM N
TState
ΓΓ 
state
ΓΓ 
,
ΓΓ 
CancellationToken
ΓΓ +
cancellationToken
ΓΓ, =
)
ΓΓ= >
=>
ΔΔ 
throw
ΔΔ 
new
ΔΔ #
NotSupportedException
ΔΔ .
(
ΔΔ. /
)
ΔΔ/ 0
;
ΔΔ0 1
public
ΗΗ 
virtual
ΗΗ 
	ValueTask
ΗΗ  
SetClientIdAsync
ΗΗ! 1
(
ΗΗ1 2
TApplication
ΗΗ2 >
application
ΗΗ? J
,
ΗΗJ K
string
ΘΘ 

identifier
ΘΘ 
,
ΘΘ 
CancellationToken
ΘΘ 0
cancellationToken
ΘΘ1 B
)
ΘΘB C
{
ΙΙ 	
if
ΚΚ 
(
ΚΚ 
application
ΚΚ 
==
ΚΚ 
null
ΚΚ #
)
ΚΚ# $
{
ΛΛ 
throw
ΜΜ 
new
ΜΜ #
ArgumentNullException
ΜΜ /
(
ΜΜ/ 0
nameof
ΜΜ0 6
(
ΜΜ6 7
application
ΜΜ7 B
)
ΜΜB C
)
ΜΜC D
;
ΜΜD E
}
ΝΝ 
application
ΟΟ 
.
ΟΟ 
ClientId
ΟΟ  
=
ΟΟ! "

identifier
ΟΟ# -
;
ΟΟ- .
return
ΡΡ 
default
ΡΡ 
;
ΡΡ 
}
ÒÒ 	
public
ΥΥ 
virtual
ΥΥ 
	ValueTask
ΥΥ  "
SetClientSecretAsync
ΥΥ! 5
(
ΥΥ5 6
TApplication
ΥΥ6 B
application
ΥΥC N
,
ΥΥN O
string
ΥΥP V
secret
ΥΥW ]
,
ΥΥ] ^
CancellationToken
ΥΥ_ p 
cancellationTokenΥΥq ‚
)ΥΥ‚ ƒ
{
ΦΦ 	
if
ΧΧ 
(
ΧΧ 
application
ΧΧ 
==
ΧΧ 
null
ΧΧ #
)
ΧΧ# $
{
ΨΨ 
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
ΩΩ6 7
application
ΩΩ7 B
)
ΩΩB C
)
ΩΩC D
;
ΩΩD E
}
ΪΪ 
application
άά 
.
άά 
ClientSecret
άά $
=
άά% &
secret
άά' -
;
άά- .
return
ήή 
default
ήή 
;
ήή 
}
ίί 	
public
ββ 
virtual
ββ 
	ValueTask
ββ   
SetClientTypeAsync
ββ! 3
(
ββ3 4
TApplication
ββ4 @
application
ββA L
,
ββL M
string
ββN T
type
ββU Y
,
ββY Z
CancellationToken
ββ[ l
cancellationToken
ββm ~
)
ββ~ 
{
γγ 	
if
δδ 
(
δδ 
application
δδ 
==
δδ 
null
δδ #
)
δδ# $
{
εε 
throw
ζζ 
new
ζζ #
ArgumentNullException
ζζ /
(
ζζ/ 0
nameof
ζζ0 6
(
ζζ6 7
application
ζζ7 B
)
ζζB C
)
ζζC D
;
ζζD E
}
ηη 
application
ιι 
.
ιι 
Type
ιι 
=
ιι 
type
ιι #
;
ιι# $
return
λλ 
default
λλ 
;
λλ 
}
μμ 	
public
οο 
virtual
οο 
	ValueTask
οο  !
SetConsentTypeAsync
οο! 4
(
οο4 5
TApplication
οο5 A
application
οοB M
,
οοM N
string
οοO U
type
οοV Z
,
οοZ [
CancellationToken
οο\ m
cancellationToken
οοn 
)οο €
{
ππ 	
if
ρρ 
(
ρρ 
application
ρρ 
==
ρρ 
null
ρρ #
)
ρρ# $
{
ςς 
throw
σσ 
new
σσ #
ArgumentNullException
σσ /
(
σσ/ 0
nameof
σσ0 6
(
σσ6 7
application
σσ7 B
)
σσB C
)
σσC D
;
σσD E
}
ττ 
application
φφ 
.
φφ 
ConsentType
φφ #
=
φφ$ %
type
φφ& *
;
φφ* +
return
ψψ 
default
ψψ 
;
ψψ 
}
ωω 	
public
όό 
virtual
όό 
	ValueTask
όό  !
SetDisplayNameAsync
όό! 4
(
όό4 5
TApplication
όό5 A
application
όόB M
,
όόM N
string
όόO U
name
όόV Z
,
όόZ [
CancellationToken
όό\ m
cancellationToken
όόn 
)όό €
{
ύύ 	
if
ώώ 
(
ώώ 
application
ώώ 
==
ώώ 
null
ώώ #
)
ώώ# $
{
ÿÿ 
throw
€€ 
new
€€ #
ArgumentNullException
€€ /
(
€€/ 0
nameof
€€0 6
(
€€6 7
application
€€7 B
)
€€B C
)
€€C D
;
€€D E
}
 
application
ƒƒ 
.
ƒƒ 
DisplayName
ƒƒ #
=
ƒƒ$ %
name
ƒƒ& *
;
ƒƒ* +
return
…… 
default
…… 
;
…… 
}
†† 	
public
‰‰ 
virtual
‰‰ 
	ValueTask
‰‰  "
SetDisplayNamesAsync
‰‰! 5
(
‰‰5 6
TApplication
‰‰6 B
application
‰‰C N
,
‰‰N O!
ImmutableDictionary
‰‰P c
<
‰‰c d
CultureInfo
‰‰d o
,
‰‰o p
string
‰‰q w
>
‰‰w x
names
‰‰y ~
,
‰‰~ !
CancellationToken‰‰€ ‘!
cancellationToken‰‰’ £
)‰‰£ ¤
{
 	
if
‹‹ 
(
‹‹ 
application
‹‹ 
==
‹‹ 
null
‹‹ #
)
‹‹# $
{
 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
application
7 B
)
B C
)
C D
;
D E
}
 
application
 
.
 
DisplayNames
 $
=
% &
names
' ,
;
, -
return
’’ 
default
’’ 
;
’’ 
}
““ 	
public
–– 
virtual
–– 
	ValueTask
––  !
SetPermissionsAsync
––! 4
(
––4 5
TApplication
––5 A
application
––B M
,
––M N
ImmutableArray
––O ]
<
––] ^
string
––^ d
>
––d e
permissions
––f q
,
––q r 
CancellationToken––s „!
cancellationToken––… –
)––– —
{
—— 	
if
 
(
 
application
 
==
 
null
 #
)
# $
{
™™ 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
application
7 B
)
B C
)
C D
;
D E
}
›› 
application
 
.
 
Permissions
 #
=
$ %
permissions
& 1
;
1 2
return
 
default
 
;
 
}
   	
public
££ 
virtual
££ 
	ValueTask
££  ,
SetPostLogoutRedirectUrisAsync
££! ?
(
££? @
TApplication
££@ L
application
££M X
,
££X Y
ImmutableArray
¤¤ 
<
¤¤ 
string
¤¤ !
>
¤¤! "
	addresses
¤¤# ,
,
¤¤, -
CancellationToken
¤¤. ?
cancellationToken
¤¤@ Q
)
¤¤Q R
{
¥¥ 	
if
¦¦ 
(
¦¦ 
application
¦¦ 
==
¦¦ 
null
¦¦ #
)
¦¦# $
{
§§ 
throw
¨¨ 
new
¨¨ #
ArgumentNullException
¨¨ /
(
¨¨/ 0
nameof
¨¨0 6
(
¨¨6 7
application
¨¨7 B
)
¨¨B C
)
¨¨C D
;
¨¨D E
}
©© 
application
«« 
.
«« $
PostLogoutRedirectUris
«« .
=
««/ 0
	addresses
««1 :
;
««: ;
return
­­ 
default
­­ 
;
­­ 
}
®® 	
public
±± 
virtual
±± 
	ValueTask
±±   
SetPropertiesAsync
±±! 3
(
±±3 4
TApplication
±±4 @
application
±±A L
,
±±L M!
ImmutableDictionary
±±N a
<
±±a b
string
±±b h
,
±±h i
JsonElement
±±j u
>
±±u v

properties±±w 
,±± ‚!
CancellationToken±±ƒ ”!
cancellationToken±±• ¦
)±±¦ §
{
²² 	
if
³³ 
(
³³ 
application
³³ 
==
³³ 
null
³³ #
)
³³# $
{
΄΄ 
throw
µµ 
new
µµ #
ArgumentNullException
µµ /
(
µµ/ 0
nameof
µµ0 6
(
µµ6 7
application
µµ7 B
)
µµB C
)
µµC D
;
µµD E
}
¶¶ 
if
ΈΈ 
(
ΈΈ 

properties
ΈΈ 
==
ΈΈ 
null
ΈΈ "
||
ΈΈ# %

properties
ΈΈ& 0
.
ΈΈ0 1
IsEmpty
ΈΈ1 8
)
ΈΈ8 9
{
ΉΉ 
application
ΊΊ 
.
ΊΊ 

Properties
ΊΊ &
=
ΊΊ' (
null
ΊΊ) -
;
ΊΊ- .
return
ΌΌ 
default
ΌΌ 
;
ΌΌ 
}
½½ 
application
ΏΏ 
.
ΏΏ 

Properties
ΏΏ "
=
ΏΏ# $
JObject
ΏΏ% ,
.
ΏΏ, -
Parse
ΏΏ- 2
(
ΏΏ2 3
JsonSerializer
ΏΏ3 A
.
ΏΏA B
	Serialize
ΏΏB K
(
ΏΏK L

properties
ΏΏL V
,
ΏΏV W
new
ΏΏX [#
JsonSerializerOptions
ΏΏ\ q
{
ΐΐ 
Encoder
ΑΑ 
=
ΑΑ 
JavaScriptEncoder
ΑΑ +
.
ΑΑ+ ,'
UnsafeRelaxedJsonEscaping
ΑΑ, E
,
ΑΑE F
WriteIndented
ΒΒ 
=
ΒΒ 
false
ΒΒ  %
}
ΓΓ 
)
ΓΓ 
)
ΓΓ 
;
ΓΓ 
return
ΕΕ 
default
ΕΕ 
;
ΕΕ 
}
ΖΖ 	
public
ΙΙ 
virtual
ΙΙ 
	ValueTask
ΙΙ  "
SetRedirectUrisAsync
ΙΙ! 5
(
ΙΙ5 6
TApplication
ΙΙ6 B
application
ΙΙC N
,
ΙΙN O
ImmutableArray
ΚΚ 
<
ΚΚ 
string
ΚΚ !
>
ΚΚ! "
	addresses
ΚΚ# ,
,
ΚΚ, -
CancellationToken
ΚΚ. ?
cancellationToken
ΚΚ@ Q
)
ΚΚQ R
{
ΛΛ 	
if
ΜΜ 
(
ΜΜ 
application
ΜΜ 
==
ΜΜ 
null
ΜΜ #
)
ΜΜ# $
{
ΝΝ 
throw
ΞΞ 
new
ΞΞ #
ArgumentNullException
ΞΞ /
(
ΞΞ/ 0
nameof
ΞΞ0 6
(
ΞΞ6 7
application
ΞΞ7 B
)
ΞΞB C
)
ΞΞC D
;
ΞΞD E
}
ΟΟ 
application
ΡΡ 
.
ΡΡ 
RedirectUris
ΡΡ $
=
ΡΡ% &
	addresses
ΡΡ' 0
;
ΡΡ0 1
return
ΣΣ 
default
ΣΣ 
;
ΣΣ 
}
ΤΤ 	
public
ΧΧ 
virtual
ΧΧ 
	ValueTask
ΧΧ  "
SetRequirementsAsync
ΧΧ! 5
(
ΧΧ5 6
TApplication
ΧΧ6 B
application
ΧΧC N
,
ΧΧN O
ImmutableArray
ΨΨ 
<
ΨΨ 
string
ΨΨ !
>
ΨΨ! "
requirements
ΨΨ# /
,
ΨΨ/ 0
CancellationToken
ΨΨ1 B
cancellationToken
ΨΨC T
)
ΨΨT U
{
ΩΩ 	
if
ΪΪ 
(
ΪΪ 
application
ΪΪ 
==
ΪΪ 
null
ΪΪ #
)
ΪΪ# $
{
ΫΫ 
throw
άά 
new
άά #
ArgumentNullException
άά /
(
άά/ 0
nameof
άά0 6
(
άά6 7
application
άά7 B
)
άάB C
)
άάC D
;
άάD E
}
έέ 
application
ίί 
.
ίί 
Requirements
ίί $
=
ίί% &
requirements
ίί' 3
;
ίί3 4
return
αα 
default
αα 
;
αα 
}
ββ 	
public
εε 
virtual
εε 
async
εε 
	ValueTask
εε &
UpdateAsync
εε' 2
(
εε2 3
TApplication
εε3 ?
application
εε@ K
,
εεK L
CancellationToken
εεM ^
cancellationToken
εε_ p
)
εεp q
{
ζζ 	
if
ηη 
(
ηη 
application
ηη 
==
ηη 
null
ηη #
)
ηη# $
{
θθ 
throw
ιι 
new
ιι #
ArgumentNullException
ιι /
(
ιι/ 0
nameof
ιι0 6
(
ιι6 7
application
ιι7 B
)
ιιB C
)
ιιC D
;
ιιD E
}
κκ 
cancellationToken
μμ 
.
μμ *
ThrowIfCancellationRequested
μμ :
(
μμ: ;
)
μμ; <
;
μμ< =
_session
ξξ 
.
ξξ 
Save
ξξ 
(
ξξ 
application
ξξ %
,
ξξ% &
checkConcurrency
ξξ' 7
:
ξξ7 8
true
ξξ9 =
)
ξξ= >
;
ξξ> ?
try
ππ 
{
ρρ 
await
ςς 
_session
ςς 
.
ςς 
CommitAsync
ςς *
(
ςς* +
)
ςς+ ,
;
ςς, -
}
σσ 
catch
ττ 
(
ττ "
ConcurrencyException
ττ '
	exception
ττ( 1
)
ττ1 2
{
υυ 
throw
φφ 
new
φφ "
OpenIddictExceptions
φφ .
.
φφ. /"
ConcurrencyException
φφ/ C
(
φφC D
new
φφD G
StringBuilder
φφH U
(
φφU V
)
φφV W
.
χχ 

AppendLine
χχ 
(
χχ  
$str
χχ  x
)
χχx y
.
ψψ 
Append
ψψ 
(
ψψ 
$str
ψψ _
)
ψψ_ `
.
ωω 
ToString
ωω 
(
ωω 
)
ωω 
,
ωω  
	exception
ωω! *
)
ωω* +
;
ωω+ ,
}
ϊϊ 
}
ϋϋ 	
public
ώώ 
virtual
ώώ 
	ValueTask
ώώ  
<
ώώ  !
ImmutableArray
ώώ! /
<
ώώ/ 0
string
ώώ0 6
>
ώώ6 7
>
ώώ7 8
GetRolesAsync
ώώ9 F
(
ώώF G
TApplication
ώώG S
application
ώώT _
,
ώώ_ `
CancellationToken
ώώa r 
cancellationTokenώώs „
)ώώ„ …
{
ÿÿ 	
if
€€ 
(
€€ 
application
€€ 
==
€€ 
null
€€ #
)
€€# $
{
 
throw
‚‚ 
new
‚‚ #
ArgumentNullException
‚‚ /
(
‚‚/ 0
nameof
‚‚0 6
(
‚‚6 7
application
‚‚7 B
)
‚‚B C
)
‚‚C D
;
‚‚D E
}
ƒƒ 
return
…… 
new
…… 
	ValueTask
……  
<
……  !
ImmutableArray
……! /
<
……/ 0
string
……0 6
>
……6 7
>
……7 8
(
……8 9
application
……9 D
.
……D E
Roles
……E J
)
……J K
;
……K L
}
†† 	
public
‰‰ 
virtual
‰‰ 
IAsyncEnumerable
‰‰ '
<
‰‰' (
TApplication
‰‰( 4
>
‰‰4 5
ListInRoleAsync
‰‰6 E
(
‰‰E F
string
‰‰F L
role
‰‰M Q
,
‰‰Q R
CancellationToken
‰‰S d
cancellationToken
‰‰e v
)
‰‰v w
{
 	
if
‹‹ 
(
‹‹ 
string
‹‹ 
.
‹‹ 
IsNullOrEmpty
‹‹ $
(
‹‹$ %
role
‹‹% )
)
‹‹) *
)
‹‹* +
{
 
throw
 
new
 
ArgumentException
 +
(
+ ,
$str
, T
,
T U
nameof
V \
(
\ ]
role
] a
)
a b
)
b c
;
c d
}
 
return
 
_session
 
.
 
Query
 !
<
! "
TApplication
" .
,
. /&
OpenIdAppByRoleNameIndex
0 H
>
H I
(
I J
index
J O
=>
P R
index
S X
.
X Y
RoleName
Y a
==
b d
role
e i
)
i j
.
j k
ToAsyncEnumerable
k |
(
| }
)
} ~
;
~ 
}
‘‘ 	
public
”” 
virtual
”” 
	ValueTask
””  
SetRolesAsync
””! .
(
””. /
TApplication
””/ ;
application
””< G
,
””G H
ImmutableArray
””I W
<
””W X
string
””X ^
>
””^ _
roles
””` e
,
””e f
CancellationToken
””g x 
cancellationToken””y 
)”” ‹
{
•• 	
if
–– 
(
–– 
application
–– 
==
–– 
null
–– #
)
––# $
{
—— 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
application
7 B
)
B C
)
C D
;
D E
}
™™ 
application
›› 
.
›› 
Roles
›› 
=
›› 
roles
››  %
;
››% &
return
 
default
 
;
 
}
 	
}
 
}   Ώ€
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdAuthorizationStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Stores$ *
{ 
public 

class $
OpenIdAuthorizationStore )
<) *
TAuthorization* 8
>8 9
:: ;%
IOpenIdAuthorizationStore< U
<U V
TAuthorizationV d
>d e
where 
TAuthorization 
: 
OpenIdAuthorization 2
,2 3
new4 7
(7 8
)8 9
{ 
private 
readonly 
ISession !
_session" *
;* +
public $
OpenIdAuthorizationStore '
(' (
ISession( 0
session1 8
)8 9
{ 	
_session 
= 
session 
; 
} 	
public!! 
virtual!! 
async!! 
	ValueTask!! &
<!!& '
long!!' +
>!!+ ,

CountAsync!!- 7
(!!7 8
CancellationToken!!8 I
cancellationToken!!J [
)!![ \
{"" 	
cancellationToken## 
.## (
ThrowIfCancellationRequested## :
(##: ;
)##; <
;##< =
return%% 
await%% 
_session%% !
.%%! "
Query%%" '
<%%' (
TAuthorization%%( 6
>%%6 7
(%%7 8
)%%8 9
.%%9 :

CountAsync%%: D
(%%D E
)%%E F
;%%F G
}&& 	
public)) 
virtual)) 
	ValueTask))  
<))  !
long))! %
>))% &

CountAsync))' 1
<))1 2
TResult))2 9
>))9 :
()): ;
Func)); ?
<))? @

IQueryable))@ J
<))J K
TAuthorization))K Y
>))Y Z
,))Z [

IQueryable))\ f
<))f g
TResult))g n
>))n o
>))o p
query))q v
,))v w
CancellationToken	))x ‰
cancellationToken
)) ›
)
))› 
=>** 
throw** 
new** !
NotSupportedException** .
(**. /
)**/ 0
;**0 1
public-- 
virtual-- 
async-- 
	ValueTask-- &
CreateAsync--' 2
(--2 3
TAuthorization--3 A
authorization--B O
,--O P
CancellationToken--Q b
cancellationToken--c t
)--t u
{.. 	
if// 
(// 
authorization// 
==//  
null//! %
)//% &
{00 
throw11 
new11 !
ArgumentNullException11 /
(11/ 0
nameof110 6
(116 7
authorization117 D
)11D E
)11E F
;11F G
}22 
cancellationToken44 
.44 (
ThrowIfCancellationRequested44 :
(44: ;
)44; <
;44< =
_session66 
.66 
Save66 
(66 
authorization66 '
)66' (
;66( )
await77 
_session77 
.77 
CommitAsync77 &
(77& '
)77' (
;77( )
}88 	
public;; 
virtual;; 
async;; 
	ValueTask;; &
DeleteAsync;;' 2
(;;2 3
TAuthorization;;3 A
authorization;;B O
,;;O P
CancellationToken;;Q b
cancellationToken;;c t
);;t u
{<< 	
if== 
(== 
authorization== 
====  
null==! %
)==% &
{>> 
throw?? 
new?? !
ArgumentNullException?? /
(??/ 0
nameof??0 6
(??6 7
authorization??7 D
)??D E
)??E F
;??F G
}@@ 
cancellationTokenBB 
.BB (
ThrowIfCancellationRequestedBB :
(BB: ;
)BB; <
;BB< =
_sessionDD 
.DD 
DeleteDD 
(DD 
authorizationDD )
)DD) *
;DD* +
awaitEE 
_sessionEE 
.EE 
CommitAsyncEE &
(EE& '
)EE' (
;EE( )
}FF 	
publicII 
virtualII 
IAsyncEnumerableII '
<II' (
TAuthorizationII( 6
>II6 7
	FindAsyncII8 A
(IIA B
stringJJ 
subjectJJ 
,JJ 
stringJJ "
clientJJ# )
,JJ) *
CancellationTokenJJ+ <
cancellationTokenJJ= N
)JJN O
{KK 	
ifLL 
(LL 
stringLL 
.LL 
IsNullOrEmptyLL $
(LL$ %
subjectLL% ,
)LL, -
)LL- .
{MM 
throwNN 
newNN 
ArgumentExceptionNN +
(NN+ ,
$strNN, R
,NNR S
nameofNNT Z
(NNZ [
subjectNN[ b
)NNb c
)NNc d
;NNd e
}OO 
ifQQ 
(QQ 
stringQQ 
.QQ 
IsNullOrEmptyQQ $
(QQ$ %
clientQQ% +
)QQ+ ,
)QQ, -
{RR 
throwSS 
newSS 
ArgumentExceptionSS +
(SS+ ,
$strSS, Q
,SSQ R
nameofSSS Y
(SSY Z
clientSSZ `
)SS` a
)SSa b
;SSb c
}TT 
cancellationTokenVV 
.VV (
ThrowIfCancellationRequestedVV :
(VV: ;
)VV; <
;VV< =
returnXX 
_sessionXX 
.XX 
QueryXX !
<XX! "
TAuthorizationXX" 0
,XX0 1$
OpenIdAuthorizationIndexXX2 J
>XXJ K
(XXK L
indexYY 
=>YY 
indexYY 
.YY 
ApplicationIdYY ,
==YY- /
clientYY0 6
&&YY7 9
indexYY: ?
.YY? @
SubjectYY@ G
==YYH J
subjectYYK R
)YYR S
.YYS T
ToAsyncEnumerableYYT e
(YYe f
)YYf g
;YYg h
}ZZ 	
public]] 
virtual]] 
IAsyncEnumerable]] '
<]]' (
TAuthorization]]( 6
>]]6 7
	FindAsync]]8 A
(]]A B
string^^ 
subject^^ 
,^^ 
string^^ "
client^^# )
,^^) *
string^^+ 1
status^^2 8
,^^8 9
CancellationToken^^: K
cancellationToken^^L ]
)^^] ^
{__ 	
if`` 
(`` 
string`` 
.`` 
IsNullOrEmpty`` $
(``$ %
subject``% ,
)``, -
)``- .
{aa 
throwbb 
newbb 
ArgumentExceptionbb +
(bb+ ,
$strbb, R
,bbR S
nameofbbT Z
(bbZ [
subjectbb[ b
)bbb c
)bbc d
;bbd e
}cc 
ifee 
(ee 
stringee 
.ee 
IsNullOrEmptyee $
(ee$ %
clientee% +
)ee+ ,
)ee, -
{ff 
throwgg 
newgg 
ArgumentExceptiongg +
(gg+ ,
$strgg, \
,gg\ ]
nameofgg^ d
(ggd e
clientgge k
)ggk l
)ggl m
;ggm n
}hh 
ifjj 
(jj 
stringjj 
.jj 
IsNullOrEmptyjj $
(jj$ %
statusjj% +
)jj+ ,
)jj, -
{kk 
throwll 
newll 
ArgumentExceptionll +
(ll+ ,
$strll, Q
,llQ R
nameofllS Y
(llY Z
clientllZ `
)ll` a
)lla b
;llb c
}mm 
cancellationTokenoo 
.oo (
ThrowIfCancellationRequestedoo :
(oo: ;
)oo; <
;oo< =
returnqq 
_sessionqq 
.qq 
Queryqq !
<qq! "
TAuthorizationqq" 0
,qq0 1$
OpenIdAuthorizationIndexqq2 J
>qqJ K
(qqK L
indexrr 
=>rr 
indexrr 
.rr 
ApplicationIdrr ,
==rr- /
clientrr0 6
&&rr7 9
indexrr: ?
.rr? @
Subjectrr@ G
==rrH J
subjectrrK R
&&rrS U
indexrrV [
.rr[ \
Statusrr\ b
==rrc e
statusrrf l
)rrl m
.rrm n
ToAsyncEnumerablerrn 
(	rr €
)
rr€ 
;
rr ‚
}ss 	
publicvv 
virtualvv 
IAsyncEnumerablevv '
<vv' (
TAuthorizationvv( 6
>vv6 7
	FindAsyncvv8 A
(vvA B
stringww 
subjectww 
,ww 
stringww "
clientww# )
,ww) *
stringxx 
statusxx 
,xx 
stringxx !
typexx" &
,xx& '
CancellationTokenxx( 9
cancellationTokenxx: K
)xxK L
{yy 	
ifzz 
(zz 
stringzz 
.zz 
IsNullOrEmptyzz $
(zz$ %
subjectzz% ,
)zz, -
)zz- .
{{{ 
throw|| 
new|| 
ArgumentException|| +
(||+ ,
$str||, R
,||R S
nameof||T Z
(||Z [
subject||[ b
)||b c
)||c d
;||d e
}}} 
if 
( 
string 
. 
IsNullOrEmpty $
($ %
client% +
)+ ,
), -
{
€€ 
throw
 
new
 
ArgumentException
 +
(
+ ,
$str
, \
,
\ ]
nameof
^ d
(
d e
client
e k
)
k l
)
l m
;
m n
}
‚‚ 
if
„„ 
(
„„ 
string
„„ 
.
„„ 
IsNullOrEmpty
„„ $
(
„„$ %
status
„„% +
)
„„+ ,
)
„„, -
{
…… 
throw
†† 
new
†† 
ArgumentException
†† +
(
††+ ,
$str
††, Q
,
††Q R
nameof
††S Y
(
††Y Z
client
††Z `
)
††` a
)
††a b
;
††b c
}
‡‡ 
if
‰‰ 
(
‰‰ 
string
‰‰ 
.
‰‰ 
IsNullOrEmpty
‰‰ $
(
‰‰$ %
type
‰‰% )
)
‰‰) *
)
‰‰* +
{
 
throw
‹‹ 
new
‹‹ 
ArgumentException
‹‹ +
(
‹‹+ ,
$str
‹‹, O
,
‹‹O P
nameof
‹‹Q W
(
‹‹W X
client
‹‹X ^
)
‹‹^ _
)
‹‹_ `
;
‹‹` a
}
 
cancellationToken
 
.
 *
ThrowIfCancellationRequested
 :
(
: ;
)
; <
;
< =
return
 
_session
 
.
 
Query
 !
<
! "
TAuthorization
" 0
,
0 1&
OpenIdAuthorizationIndex
2 J
>
J K
(
K L
index
‘‘ 
=>
‘‘ 
index
‘‘ 
.
‘‘ 
ApplicationId
‘‘ ,
==
‘‘- /
client
‘‘0 6
&&
‘‘7 9
index
‘‘: ?
.
‘‘? @
Subject
‘‘@ G
==
‘‘H J
subject
‘‘K R
&&
‘‘S U
index
’’ 
.
’’ 
Status
’’ %
==
’’& (
status
’’) /
&&
’’0 2
index
’’3 8
.
’’8 9
Type
’’9 =
==
’’> @
type
’’A E
)
’’E F
.
’’F G
ToAsyncEnumerable
’’G X
(
’’X Y
)
’’Y Z
;
’’Z [
}
““ 	
public
–– 
virtual
–– 
async
–– 
IAsyncEnumerable
–– -
<
––- .
TAuthorization
––. <
>
––< =
	FindAsync
––> G
(
––G H
string
—— 
subject
—— 
,
—— 
string
—— "
client
——# )
,
——) *
string
——+ 1
status
——2 8
,
——8 9
string
——: @
type
——A E
,
——E F
ImmutableArray
 
<
 
string
 !
>
! "
scopes
# )
,
) *
[
+ ,$
EnumeratorCancellation
, B
]
B C
CancellationToken
D U
cancellationToken
V g
)
g h
{
™™ 	
await
 
foreach
 
(
 
var
 
authorization
 ,
in
- /
	FindAsync
0 9
(
9 :
subject
: A
,
A B
client
C I
,
I J
status
K Q
,
Q R
type
S W
,
W X
cancellationToken
Y j
)
j k
)
k l
{
›› 
if
 
(
 
new
 
HashSet
 
<
  
string
  &
>
& '
(
' (
await
( -
GetScopesAsync
. <
(
< =
authorization
= J
,
J K
cancellationToken
L ]
)
] ^
,
^ _
StringComparer
` n
.
n o
Ordinal
o v
)
v w
.
w x
IsSupersetOfx „
(„ …
scopes… ‹
)‹ 
) 
{
 
yield
 
return
  
authorization
! .
;
. /
}
 
}
   
}
΅΅ 	
public
¤¤ 
virtual
¤¤ 
IAsyncEnumerable
¤¤ '
<
¤¤' (
TAuthorization
¤¤( 6
>
¤¤6 7&
FindByApplicationIdAsync
¤¤8 P
(
¤¤P Q
string
¥¥ 

identifier
¥¥ 
,
¥¥ 
CancellationToken
¥¥ 0
cancellationToken
¥¥1 B
)
¥¥B C
{
¦¦ 	
if
§§ 
(
§§ 
string
§§ 
.
§§ 
IsNullOrEmpty
§§ $
(
§§$ %

identifier
§§% /
)
§§/ 0
)
§§0 1
{
¨¨ 
throw
©© 
new
©© 
ArgumentException
©© +
(
©©+ ,
$str
©©, U
,
©©U V
nameof
©©W ]
(
©©] ^

identifier
©©^ h
)
©©h i
)
©©i j
;
©©j k
}
ªª 
cancellationToken
¬¬ 
.
¬¬ *
ThrowIfCancellationRequested
¬¬ :
(
¬¬: ;
)
¬¬; <
;
¬¬< =
return
®® 
_session
®® 
.
®® 
Query
®® !
<
®®! "
TAuthorization
®®" 0
,
®®0 1&
OpenIdAuthorizationIndex
®®2 J
>
®®J K
(
®®K L
index
―― 
=>
―― 
index
―― 
.
―― 
ApplicationId
―― ,
==
――- /

identifier
――0 :
)
――: ;
.
――; <
ToAsyncEnumerable
――< M
(
――M N
)
――N O
;
――O P
}
°° 	
public
³³ 
virtual
³³ 
async
³³ 
	ValueTask
³³ &
<
³³& '
TAuthorization
³³' 5
>
³³5 6
FindByIdAsync
³³7 D
(
³³D E
string
³³E K

identifier
³³L V
,
³³V W
CancellationToken
³³X i
cancellationToken
³³j {
)
³³{ |
{
΄΄ 	
if
µµ 
(
µµ 
string
µµ 
.
µµ 
IsNullOrEmpty
µµ $
(
µµ$ %

identifier
µµ% /
)
µµ/ 0
)
µµ0 1
{
¶¶ 
throw
·· 
new
·· 
ArgumentException
·· +
(
··+ ,
$str
··, U
,
··U V
nameof
··W ]
(
··] ^

identifier
··^ h
)
··h i
)
··i j
;
··j k
}
ΈΈ 
cancellationToken
ΊΊ 
.
ΊΊ *
ThrowIfCancellationRequested
ΊΊ :
(
ΊΊ: ;
)
ΊΊ; <
;
ΊΊ< =
return
ΌΌ 
await
ΌΌ 
_session
ΌΌ !
.
ΌΌ! "
Query
ΌΌ" '
<
ΌΌ' (
TAuthorization
ΌΌ( 6
,
ΌΌ6 7&
OpenIdAuthorizationIndex
ΌΌ8 P
>
ΌΌP Q
(
ΌΌQ R
index
½½ 
=>
½½ 
index
½½ 
.
½½ 
AuthorizationId
½½ .
==
½½/ 1

identifier
½½2 <
)
½½< =
.
½½= >!
FirstOrDefaultAsync
½½> Q
(
½½Q R
)
½½R S
;
½½S T
}
ΎΎ 	
public
ΑΑ 
virtual
ΑΑ 
async
ΑΑ 
	ValueTask
ΑΑ &
<
ΑΑ& '
TAuthorization
ΑΑ' 5
>
ΑΑ5 6#
FindByPhysicalIdAsync
ΑΑ7 L
(
ΑΑL M
string
ΑΑM S

identifier
ΑΑT ^
,
ΑΑ^ _
CancellationToken
ΑΑ` q 
cancellationTokenΑΑr ƒ
)ΑΑƒ „
{
ΒΒ 	
if
ΓΓ 
(
ΓΓ 
string
ΓΓ 
.
ΓΓ 
IsNullOrEmpty
ΓΓ $
(
ΓΓ$ %

identifier
ΓΓ% /
)
ΓΓ/ 0
)
ΓΓ0 1
{
ΔΔ 
throw
ΕΕ 
new
ΕΕ 
ArgumentException
ΕΕ +
(
ΕΕ+ ,
$str
ΕΕ, U
,
ΕΕU V
nameof
ΕΕW ]
(
ΕΕ] ^

identifier
ΕΕ^ h
)
ΕΕh i
)
ΕΕi j
;
ΕΕj k
}
ΖΖ 
cancellationToken
ΘΘ 
.
ΘΘ *
ThrowIfCancellationRequested
ΘΘ :
(
ΘΘ: ;
)
ΘΘ; <
;
ΘΘ< =
return
ΚΚ 
await
ΚΚ 
_session
ΚΚ !
.
ΚΚ! "
GetAsync
ΚΚ" *
<
ΚΚ* +
TAuthorization
ΚΚ+ 9
>
ΚΚ9 :
(
ΚΚ: ;
int
ΚΚ; >
.
ΚΚ> ?
Parse
ΚΚ? D
(
ΚΚD E

identifier
ΚΚE O
,
ΚΚO P
CultureInfo
ΚΚQ \
.
ΚΚ\ ]
InvariantCulture
ΚΚ] m
)
ΚΚm n
)
ΚΚn o
;
ΚΚo p
}
ΛΛ 	
public
ΞΞ 
virtual
ΞΞ 
IAsyncEnumerable
ΞΞ '
<
ΞΞ' (
TAuthorization
ΞΞ( 6
>
ΞΞ6 7 
FindBySubjectAsync
ΞΞ8 J
(
ΞΞJ K
string
ΟΟ 
subject
ΟΟ 
,
ΟΟ 
CancellationToken
ΟΟ -
cancellationToken
ΟΟ. ?
)
ΟΟ? @
{
ΠΠ 	
if
ΡΡ 
(
ΡΡ 
string
ΡΡ 
.
ΡΡ 
IsNullOrEmpty
ΡΡ $
(
ΡΡ$ %
subject
ΡΡ% ,
)
ΡΡ, -
)
ΡΡ- .
{
ÒÒ 
throw
ΣΣ 
new
ΣΣ 
ArgumentException
ΣΣ +
(
ΣΣ+ ,
$str
ΣΣ, R
,
ΣΣR S
nameof
ΣΣT Z
(
ΣΣZ [
subject
ΣΣ[ b
)
ΣΣb c
)
ΣΣc d
;
ΣΣd e
}
ΤΤ 
cancellationToken
ΦΦ 
.
ΦΦ *
ThrowIfCancellationRequested
ΦΦ :
(
ΦΦ: ;
)
ΦΦ; <
;
ΦΦ< =
return
ΨΨ 
_session
ΨΨ 
.
ΨΨ 
Query
ΨΨ !
<
ΨΨ! "
TAuthorization
ΨΨ" 0
,
ΨΨ0 1&
OpenIdAuthorizationIndex
ΨΨ2 J
>
ΨΨJ K
(
ΨΨK L
index
ΩΩ 
=>
ΩΩ 
index
ΩΩ 
.
ΩΩ 
Subject
ΩΩ &
==
ΩΩ' )
subject
ΩΩ* 1
)
ΩΩ1 2
.
ΩΩ2 3
ToAsyncEnumerable
ΩΩ3 D
(
ΩΩD E
)
ΩΩE F
;
ΩΩF G
}
ΪΪ 	
public
έέ 
virtual
έέ 
	ValueTask
έέ  
<
έέ  !
string
έέ! '
>
έέ' (#
GetApplicationIdAsync
έέ) >
(
έέ> ?
TAuthorization
έέ? M
authorization
έέN [
,
έέ[ \
CancellationToken
έέ] n 
cancellationTokenέέo €
)έέ€ 
{
ήή 	
if
ίί 
(
ίί 
authorization
ίί 
==
ίί  
null
ίί! %
)
ίί% &
{
ΰΰ 
throw
αα 
new
αα #
ArgumentNullException
αα /
(
αα/ 0
nameof
αα0 6
(
αα6 7
authorization
αα7 D
)
ααD E
)
ααE F
;
ααF G
}
ββ 
return
δδ 
new
δδ 
	ValueTask
δδ  
<
δδ  !
string
δδ! '
>
δδ' (
(
δδ( )
authorization
δδ) 6
.
δδ6 7
ApplicationId
δδ7 D
)
δδD E
;
δδE F
}
εε 	
public
θθ 
virtual
θθ 
	ValueTask
θθ  
<
θθ  !
TResult
θθ! (
>
θθ( )
GetAsync
θθ* 2
<
θθ2 3
TState
θθ3 9
,
θθ9 :
TResult
θθ; B
>
θθB C
(
θθC D
Func
ιι 
<
ιι 

IQueryable
ιι 
<
ιι 
TAuthorization
ιι *
>
ιι* +
,
ιι+ ,
TState
ιι- 3
,
ιι3 4

IQueryable
ιι5 ?
<
ιι? @
TResult
ιι@ G
>
ιιG H
>
ιιH I
query
ιιJ O
,
ιιO P
TState
κκ 
state
κκ 
,
κκ 
CancellationToken
κκ +
cancellationToken
κκ, =
)
κκ= >
=>
λλ 
throw
λλ 
new
λλ #
NotSupportedException
λλ .
(
λλ. /
)
λλ/ 0
;
λλ0 1
public
ξξ 
virtual
ξξ 
	ValueTask
ξξ  
<
ξξ  !
DateTimeOffset
ξξ! /
?
ξξ/ 0
>
ξξ0 1"
GetCreationDateAsync
ξξ2 F
(
ξξF G
TAuthorization
ξξG U
authorization
ξξV c
,
ξξc d
CancellationToken
ξξe v 
cancellationTokenξξw 
)ξξ ‰
{
οο 	
if
ππ 
(
ππ 
authorization
ππ 
==
ππ  
null
ππ! %
)
ππ% &
{
ρρ 
throw
ςς 
new
ςς #
ArgumentNullException
ςς /
(
ςς/ 0
nameof
ςς0 6
(
ςς6 7
authorization
ςς7 D
)
ςςD E
)
ςςE F
;
ςςF G
}
σσ 
if
υυ 
(
υυ 
authorization
υυ 
.
υυ 
CreationDate
υυ *
is
υυ+ -
null
υυ. 2
)
υυ2 3
{
φφ 
return
χχ 
new
χχ 
	ValueTask
χχ $
<
χχ$ %
DateTimeOffset
χχ% 3
?
χχ3 4
>
χχ4 5
(
χχ5 6
result
χχ6 <
:
χχ< =
null
χχ> B
)
χχB C
;
χχC D
}
ψψ 
return
ϊϊ 
new
ϊϊ 
	ValueTask
ϊϊ  
<
ϊϊ  !
DateTimeOffset
ϊϊ! /
?
ϊϊ/ 0
>
ϊϊ0 1
(
ϊϊ1 2
DateTime
ϊϊ2 :
.
ϊϊ: ;
SpecifyKind
ϊϊ; F
(
ϊϊF G
authorization
ϊϊG T
.
ϊϊT U
CreationDate
ϊϊU a
.
ϊϊa b
Value
ϊϊb g
,
ϊϊg h
DateTimeKind
ϊϊi u
.
ϊϊu v
Utc
ϊϊv y
)
ϊϊy z
)
ϊϊz {
;
ϊϊ{ |
}
ϋϋ 	
public
ώώ 
virtual
ώώ 
	ValueTask
ώώ  
<
ώώ  !
string
ώώ! '
>
ώώ' (

GetIdAsync
ώώ) 3
(
ώώ3 4
TAuthorization
ώώ4 B
authorization
ώώC P
,
ώώP Q
CancellationToken
ώώR c
cancellationToken
ώώd u
)
ώώu v
{
ÿÿ 	
if
€€ 
(
€€ 
authorization
€€ 
==
€€  
null
€€! %
)
€€% &
{
 
throw
‚‚ 
new
‚‚ #
ArgumentNullException
‚‚ /
(
‚‚/ 0
nameof
‚‚0 6
(
‚‚6 7
authorization
‚‚7 D
)
‚‚D E
)
‚‚E F
;
‚‚F G
}
ƒƒ 
return
…… 
new
…… 
	ValueTask
……  
<
……  !
string
……! '
>
……' (
(
……( )
authorization
……) 6
.
……6 7
AuthorizationId
……7 F
)
……F G
;
……G H
}
†† 	
public
‰‰ 
virtual
‰‰ 
	ValueTask
‰‰  
<
‰‰  !
string
‰‰! '
>
‰‰' ( 
GetPhysicalIdAsync
‰‰) ;
(
‰‰; <
TAuthorization
‰‰< J
authorization
‰‰K X
,
‰‰X Y
CancellationToken
‰‰Z k
cancellationToken
‰‰l }
)
‰‰} ~
{
 	
if
‹‹ 
(
‹‹ 
authorization
‹‹ 
==
‹‹  
null
‹‹! %
)
‹‹% &
{
 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
authorization
7 D
)
D E
)
E F
;
F G
}
 
return
 
new
 
	ValueTask
  
<
  !
string
! '
>
' (
(
( )
authorization
) 6
.
6 7
Id
7 9
.
9 :
ToString
: B
(
B C
CultureInfo
C N
.
N O
InvariantCulture
O _
)
_ `
)
` a
;
a b
}
‘‘ 	
public
”” 
virtual
”” 
	ValueTask
””  
<
””  !!
ImmutableDictionary
””! 4
<
””4 5
string
””5 ;
,
””; <
JsonElement
””= H
>
””H I
>
””I J 
GetPropertiesAsync
””K ]
(
””] ^
TAuthorization
””^ l
authorization
””m z
,
””z { 
CancellationToken””| !
cancellationToken”” 
)””  
{
•• 	
if
–– 
(
–– 
authorization
–– 
==
––  
null
––! %
)
––% &
{
—— 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
authorization
7 D
)
D E
)
E F
;
F G
}
™™ 
if
›› 
(
›› 
authorization
›› 
.
›› 

Properties
›› (
==
››) +
null
››, 0
)
››0 1
{
 
return
 
new
 
	ValueTask
 $
<
$ %!
ImmutableDictionary
% 8
<
8 9
string
9 ?
,
? @
JsonElement
A L
>
L M
>
M N
(
N O!
ImmutableDictionary
O b
.
b c
Create
c i
<
i j
string
j p
,
p q
JsonElement
r }
>
} ~
(
~ 
) €
)€ 
; ‚
}
 
return
   
new
   
	ValueTask
    
<
    !!
ImmutableDictionary
  ! 4
<
  4 5
string
  5 ;
,
  ; <
JsonElement
  = H
>
  H I
>
  I J
(
  J K
JsonSerializer
΅΅ 
.
΅΅ 
Deserialize
΅΅ *
<
΅΅* +!
ImmutableDictionary
΅΅+ >
<
΅΅> ?
string
΅΅? E
,
΅΅E F
JsonElement
΅΅G R
>
΅΅R S
>
΅΅S T
(
΅΅T U
authorization
΅΅U b
.
΅΅b c

Properties
΅΅c m
.
΅΅m n
ToString
΅΅n v
(
΅΅v w
)
΅΅w x
)
΅΅x y
)
΅΅y z
;
΅΅z {
}
ΆΆ 	
public
¥¥ 
virtual
¥¥ 
	ValueTask
¥¥  
<
¥¥  !
ImmutableArray
¥¥! /
<
¥¥/ 0
string
¥¥0 6
>
¥¥6 7
>
¥¥7 8
GetScopesAsync
¥¥9 G
(
¥¥G H
TAuthorization
¥¥H V
authorization
¥¥W d
,
¥¥d e
CancellationToken
¥¥f w 
cancellationToken¥¥x ‰
)¥¥‰ 
{
¦¦ 	
if
§§ 
(
§§ 
authorization
§§ 
==
§§  
null
§§! %
)
§§% &
{
¨¨ 
throw
©© 
new
©© #
ArgumentNullException
©© /
(
©©/ 0
nameof
©©0 6
(
©©6 7
authorization
©©7 D
)
©©D E
)
©©E F
;
©©F G
}
ªª 
return
¬¬ 
new
¬¬ 
	ValueTask
¬¬  
<
¬¬  !
ImmutableArray
¬¬! /
<
¬¬/ 0
string
¬¬0 6
>
¬¬6 7
>
¬¬7 8
(
¬¬8 9
authorization
¬¬9 F
.
¬¬F G
Scopes
¬¬G M
)
¬¬M N
;
¬¬N O
}
­­ 	
public
°° 
virtual
°° 
	ValueTask
°°  
<
°°  !
string
°°! '
>
°°' (
GetStatusAsync
°°) 7
(
°°7 8
TAuthorization
°°8 F
authorization
°°G T
,
°°T U
CancellationToken
°°V g
cancellationToken
°°h y
)
°°y z
{
±± 	
if
²² 
(
²² 
authorization
²² 
==
²²  
null
²²! %
)
²²% &
{
³³ 
throw
΄΄ 
new
΄΄ #
ArgumentNullException
΄΄ /
(
΄΄/ 0
nameof
΄΄0 6
(
΄΄6 7
authorization
΄΄7 D
)
΄΄D E
)
΄΄E F
;
΄΄F G
}
µµ 
return
·· 
new
·· 
	ValueTask
··  
<
··  !
string
··! '
>
··' (
(
··( )
authorization
··) 6
.
··6 7
Status
··7 =
)
··= >
;
··> ?
}
ΈΈ 	
public
»» 
virtual
»» 
	ValueTask
»»  
<
»»  !
string
»»! '
>
»»' (
GetSubjectAsync
»») 8
(
»»8 9
TAuthorization
»»9 G
authorization
»»H U
,
»»U V
CancellationToken
»»W h
cancellationToken
»»i z
)
»»z {
{
ΌΌ 	
if
½½ 
(
½½ 
authorization
½½ 
==
½½  
null
½½! %
)
½½% &
{
ΎΎ 
throw
ΏΏ 
new
ΏΏ #
ArgumentNullException
ΏΏ /
(
ΏΏ/ 0
nameof
ΏΏ0 6
(
ΏΏ6 7
authorization
ΏΏ7 D
)
ΏΏD E
)
ΏΏE F
;
ΏΏF G
}
ΐΐ 
return
ΒΒ 
new
ΒΒ 
	ValueTask
ΒΒ  
<
ΒΒ  !
string
ΒΒ! '
>
ΒΒ' (
(
ΒΒ( )
authorization
ΒΒ) 6
.
ΒΒ6 7
Subject
ΒΒ7 >
)
ΒΒ> ?
;
ΒΒ? @
}
ΓΓ 	
public
ΖΖ 
virtual
ΖΖ 
	ValueTask
ΖΖ  
<
ΖΖ  !
string
ΖΖ! '
>
ΖΖ' (
GetTypeAsync
ΖΖ) 5
(
ΖΖ5 6
TAuthorization
ΖΖ6 D
authorization
ΖΖE R
,
ΖΖR S
CancellationToken
ΖΖT e
cancellationToken
ΖΖf w
)
ΖΖw x
{
ΗΗ 	
if
ΘΘ 
(
ΘΘ 
authorization
ΘΘ 
==
ΘΘ  
null
ΘΘ! %
)
ΘΘ% &
{
ΙΙ 
throw
ΚΚ 
new
ΚΚ #
ArgumentNullException
ΚΚ /
(
ΚΚ/ 0
nameof
ΚΚ0 6
(
ΚΚ6 7
authorization
ΚΚ7 D
)
ΚΚD E
)
ΚΚE F
;
ΚΚF G
}
ΛΛ 
return
ΝΝ 
new
ΝΝ 
	ValueTask
ΝΝ  
<
ΝΝ  !
string
ΝΝ! '
>
ΝΝ' (
(
ΝΝ( )
authorization
ΝΝ) 6
.
ΝΝ6 7
Type
ΝΝ7 ;
)
ΝΝ; <
;
ΝΝ< =
}
ΞΞ 	
public
ΡΡ 
virtual
ΡΡ 
	ValueTask
ΡΡ  
<
ΡΡ  !
TAuthorization
ΡΡ! /
>
ΡΡ/ 0
InstantiateAsync
ΡΡ1 A
(
ΡΡA B
CancellationToken
ΡΡB S
cancellationToken
ΡΡT e
)
ΡΡe f
=>
ÒÒ 
new
ÒÒ 
	ValueTask
ÒÒ 
<
ÒÒ 
TAuthorization
ÒÒ +
>
ÒÒ+ ,
(
ÒÒ, -
new
ÒÒ- 0
TAuthorization
ÒÒ1 ?
{
ÒÒ@ A
AuthorizationId
ÒÒB Q
=
ÒÒR S
Guid
ÒÒT X
.
ÒÒX Y
NewGuid
ÒÒY `
(
ÒÒ` a
)
ÒÒa b
.
ÒÒb c
ToString
ÒÒc k
(
ÒÒk l
$str
ÒÒl o
)
ÒÒo p
}
ÒÒq r
)
ÒÒr s
;
ÒÒs t
public
ΥΥ 
virtual
ΥΥ 
IAsyncEnumerable
ΥΥ '
<
ΥΥ' (
TAuthorization
ΥΥ( 6
>
ΥΥ6 7
	ListAsync
ΥΥ8 A
(
ΥΥA B
int
ΥΥB E
?
ΥΥE F
count
ΥΥG L
,
ΥΥL M
int
ΥΥN Q
?
ΥΥQ R
offset
ΥΥS Y
,
ΥΥY Z
CancellationToken
ΥΥ[ l
cancellationToken
ΥΥm ~
)
ΥΥ~ 
{
ΦΦ 	
var
ΧΧ 
query
ΧΧ 
=
ΧΧ 
_session
ΧΧ  
.
ΧΧ  !
Query
ΧΧ! &
<
ΧΧ& '
TAuthorization
ΧΧ' 5
>
ΧΧ5 6
(
ΧΧ6 7
)
ΧΧ7 8
;
ΧΧ8 9
if
ΩΩ 
(
ΩΩ 
offset
ΩΩ 
.
ΩΩ 
HasValue
ΩΩ 
)
ΩΩ  
{
ΪΪ 
query
ΫΫ 
=
ΫΫ 
query
ΫΫ 
.
ΫΫ 
Skip
ΫΫ "
(
ΫΫ" #
offset
ΫΫ# )
.
ΫΫ) *
Value
ΫΫ* /
)
ΫΫ/ 0
;
ΫΫ0 1
}
άά 
if
ήή 
(
ήή 
count
ήή 
.
ήή 
HasValue
ήή 
)
ήή 
{
ίί 
query
ΰΰ 
=
ΰΰ 
query
ΰΰ 
.
ΰΰ 
Take
ΰΰ "
(
ΰΰ" #
count
ΰΰ# (
.
ΰΰ( )
Value
ΰΰ) .
)
ΰΰ. /
;
ΰΰ/ 0
}
αα 
return
γγ 
query
γγ 
.
γγ 
ToAsyncEnumerable
γγ *
(
γγ* +
)
γγ+ ,
;
γγ, -
}
δδ 	
public
ηη 
virtual
ηη 
IAsyncEnumerable
ηη '
<
ηη' (
TResult
ηη( /
>
ηη/ 0
	ListAsync
ηη1 :
<
ηη: ;
TState
ηη; A
,
ηηA B
TResult
ηηC J
>
ηηJ K
(
ηηK L
Func
θθ 
<
θθ 

IQueryable
θθ 
<
θθ 
TAuthorization
θθ *
>
θθ* +
,
θθ+ ,
TState
θθ- 3
,
θθ3 4

IQueryable
θθ5 ?
<
θθ? @
TResult
θθ@ G
>
θθG H
>
θθH I
query
θθJ O
,
θθO P
TState
ιι 
state
ιι 
,
ιι 
CancellationToken
ιι +
cancellationToken
ιι, =
)
ιι= >
=>
κκ 
throw
κκ 
new
κκ #
NotSupportedException
κκ .
(
κκ. /
)
κκ/ 0
;
κκ0 1
public
νν 
virtual
νν 
async
νν 
	ValueTask
νν &

PruneAsync
νν' 1
(
νν1 2
DateTimeOffset
νν2 @
	threshold
ννA J
,
ννJ K
CancellationToken
ννL ]
cancellationToken
νν^ o
)
ννo p
{
ξξ 	
IList
σσ 
<
σσ 
	Exception
σσ 
>
σσ 

exceptions
σσ '
=
σσ( )
null
σσ* .
;
σσ. /
for
υυ 
(
υυ 
var
υυ 
offset
υυ 
=
υυ 
$num
υυ 
;
υυ  
offset
υυ! '
<
υυ( )
$num
υυ* 1
;
υυ1 2
offset
υυ3 9
+=
υυ: <
$num
υυ= B
)
υυB C
{
φφ 
cancellationToken
χχ !
.
χχ! "*
ThrowIfCancellationRequested
χχ" >
(
χχ> ?
)
χχ? @
;
χχ@ A
var
ωω 
authorizations
ωω "
=
ωω# $
await
ωω% *
_session
ωω+ 3
.
ωω3 4
Query
ωω4 9
<
ωω9 :
TAuthorization
ωω: H
,
ωωH I&
OpenIdAuthorizationIndex
ωωJ b
>
ωωb c
(
ωωc d
authorization
ϊϊ !
=>
ϊϊ" $
authorization
ϊϊ% 2
.
ϊϊ2 3
CreationDate
ϊϊ3 ?
<
ϊϊ@ A
	threshold
ϊϊB K
.
ϊϊK L
UtcDateTime
ϊϊL W
&&
ϊϊX Z
(
ϋϋ$ %
authorization
ϋϋ% 2
.
ϋϋ2 3
Status
ϋϋ3 9
!=
ϋϋ: <!
OpenIddictConstants
ϋϋ= P
.
ϋϋP Q
Statuses
ϋϋQ Y
.
ϋϋY Z
Valid
ϋϋZ _
||
ϋϋ` b
(
όό$ %
authorization
όό% 2
.
όό2 3
Type
όό3 7
==
όό8 :!
OpenIddictConstants
όό; N
.
όόN O 
AuthorizationTypes
όόO a
.
όόa b
AdHoc
όόb g
&&
όόh j
authorization
ύύ% 2
.
ύύ2 3
AuthorizationId
ύύ3 B
.
ύύB C
IsNotIn
ύύC J
<
ύύJ K
OpenIdTokenIndex
ύύK [
>
ύύ[ \
(
ύύ\ ]
token
ώώ) .
=>
ώώ/ 1
token
ώώ2 7
.
ώώ7 8
AuthorizationId
ώώ8 G
,
ώώG H
token
ÿÿ) .
=>
ÿÿ/ 1
token
ÿÿ2 7
.
ÿÿ7 8
Id
ÿÿ8 :
!=
ÿÿ; =
$num
ÿÿ> ?
)
ÿÿ? @
)
ÿÿ@ A
)
ÿÿA B
)
ÿÿB C
.
ÿÿC D
Skip
ÿÿD H
(
ÿÿH I
offset
ÿÿI O
)
ÿÿO P
.
ÿÿP Q
Take
ÿÿQ U
(
ÿÿU V
$num
ÿÿV [
)
ÿÿ[ \
.
ÿÿ\ ]
	ListAsync
ÿÿ] f
(
ÿÿf g
)
ÿÿg h
;
ÿÿh i
foreach
 
(
 
var
 
authorization
 *
in
+ -
authorizations
. <
)
< =
{
‚‚ 
_session
ƒƒ 
.
ƒƒ 
Delete
ƒƒ #
(
ƒƒ# $
authorization
ƒƒ$ 1
)
ƒƒ1 2
;
ƒƒ2 3
}
„„ 
try
†† 
{
‡‡ 
await
 
_session
 "
.
" #
CommitAsync
# .
(
. /
)
/ 0
;
0 1
}
‰‰ 
catch
 
(
 
	Exception
  
	exception
! *
)
* +
{
‹‹ 
if
 
(
 

exceptions
 "
==
# %
null
& *
)
* +
{
 

exceptions
 "
=
# $
new
% (
List
) -
<
- .
	Exception
. 7
>
7 8
(
8 9
capacity
9 A
:
A B
$num
C D
)
D E
;
E F
}
 

exceptions
‘‘ 
.
‘‘ 
Add
‘‘ "
(
‘‘" #
	exception
‘‘# ,
)
‘‘, -
;
‘‘- .
}
’’ 
}
““ 
if
•• 
(
•• 

exceptions
•• 
!=
•• 
null
•• "
)
••" #
{
–– 
throw
—— 
new
——  
AggregateException
—— ,
(
——, -
$str
——- ^
,
——^ _

exceptions
——` j
)
——j k
;
——k l
}
 
}
™™ 	
public
 
virtual
 
	ValueTask
  #
SetApplicationIdAsync
! 6
(
6 7
TAuthorization
7 E
authorization
F S
,
S T
string
 

identifier
 
,
 
CancellationToken
 0
cancellationToken
1 B
)
B C
{
 	
if
 
(
 
authorization
 
==
  
null
! %
)
% &
{
   
throw
΅΅ 
new
΅΅ #
ArgumentNullException
΅΅ /
(
΅΅/ 0
nameof
΅΅0 6
(
΅΅6 7
authorization
΅΅7 D
)
΅΅D E
)
΅΅E F
;
΅΅F G
}
ΆΆ 
if
¤¤ 
(
¤¤ 
string
¤¤ 
.
¤¤ 
IsNullOrEmpty
¤¤ $
(
¤¤$ %

identifier
¤¤% /
)
¤¤/ 0
)
¤¤0 1
{
¥¥ 
authorization
¦¦ 
.
¦¦ 
ApplicationId
¦¦ +
=
¦¦, -
null
¦¦. 2
;
¦¦2 3
}
§§ 
else
¨¨ 
{
©© 
authorization
ªª 
.
ªª 
ApplicationId
ªª +
=
ªª, -

identifier
ªª. 8
;
ªª8 9
}
«« 
return
­­ 
default
­­ 
;
­­ 
}
®® 	
public
°° 
	ValueTask
°° "
SetCreationDateAsync
°° -
(
°°- .
TAuthorization
°°. <
authorization
°°= J
,
°°J K
DateTimeOffset
°°L Z
?
°°Z [
date
°°\ `
,
°°` a
CancellationToken
°°b s 
cancellationToken°°t …
)°°… †
{
±± 	
if
²² 
(
²² 
authorization
²² 
==
²²  
null
²²! %
)
²²% &
{
³³ 
throw
΄΄ 
new
΄΄ #
ArgumentNullException
΄΄ /
(
΄΄/ 0
nameof
΄΄0 6
(
΄΄6 7
authorization
΄΄7 D
)
΄΄D E
)
΄΄E F
;
΄΄F G
}
µµ 
authorization
·· 
.
·· 
CreationDate
·· &
=
··' (
date
··) -
?
··- .
.
··. /
UtcDateTime
··/ :
;
··: ;
return
ΉΉ 
default
ΉΉ 
;
ΉΉ 
}
ΊΊ 	
public
½½ 
virtual
½½ 
	ValueTask
½½   
SetPropertiesAsync
½½! 3
(
½½3 4
TAuthorization
½½4 B
authorization
½½C P
,
½½P Q!
ImmutableDictionary
½½R e
<
½½e f
string
½½f l
,
½½l m
JsonElement
½½n y
>
½½y z

properties½½{ …
,½½… †!
CancellationToken½½‡ !
cancellationToken½½™ ª
)½½ª «
{
ΎΎ 	
if
ΏΏ 
(
ΏΏ 
authorization
ΏΏ 
==
ΏΏ  
null
ΏΏ! %
)
ΏΏ% &
{
ΐΐ 
throw
ΑΑ 
new
ΑΑ #
ArgumentNullException
ΑΑ /
(
ΑΑ/ 0
nameof
ΑΑ0 6
(
ΑΑ6 7
authorization
ΑΑ7 D
)
ΑΑD E
)
ΑΑE F
;
ΑΑF G
}
ΒΒ 
if
ΔΔ 
(
ΔΔ 

properties
ΔΔ 
==
ΔΔ 
null
ΔΔ "
||
ΔΔ# %

properties
ΔΔ& 0
.
ΔΔ0 1
IsEmpty
ΔΔ1 8
)
ΔΔ8 9
{
ΕΕ 
authorization
ΖΖ 
.
ΖΖ 

Properties
ΖΖ (
=
ΖΖ) *
null
ΖΖ+ /
;
ΖΖ/ 0
return
ΘΘ 
default
ΘΘ 
;
ΘΘ 
}
ΙΙ 
authorization
ΛΛ 
.
ΛΛ 

Properties
ΛΛ $
=
ΛΛ% &
JObject
ΛΛ' .
.
ΛΛ. /
Parse
ΛΛ/ 4
(
ΛΛ4 5
JsonSerializer
ΛΛ5 C
.
ΛΛC D
	Serialize
ΛΛD M
(
ΛΛM N

properties
ΛΛN X
,
ΛΛX Y
new
ΛΛZ ]#
JsonSerializerOptions
ΛΛ^ s
{
ΜΜ 
Encoder
ΝΝ 
=
ΝΝ 
JavaScriptEncoder
ΝΝ +
.
ΝΝ+ ,'
UnsafeRelaxedJsonEscaping
ΝΝ, E
,
ΝΝE F
WriteIndented
ΞΞ 
=
ΞΞ 
false
ΞΞ  %
}
ΟΟ 
)
ΟΟ 
)
ΟΟ 
;
ΟΟ 
return
ΡΡ 
default
ΡΡ 
;
ΡΡ 
}
ÒÒ 	
public
ΥΥ 
virtual
ΥΥ 
	ValueTask
ΥΥ  
SetScopesAsync
ΥΥ! /
(
ΥΥ/ 0
TAuthorization
ΥΥ0 >
authorization
ΥΥ? L
,
ΥΥL M
ImmutableArray
ΦΦ 
<
ΦΦ 
string
ΦΦ !
>
ΦΦ! "
scopes
ΦΦ# )
,
ΦΦ) *
CancellationToken
ΦΦ+ <
cancellationToken
ΦΦ= N
)
ΦΦN O
{
ΧΧ 	
if
ΨΨ 
(
ΨΨ 
authorization
ΨΨ 
==
ΨΨ  
null
ΨΨ! %
)
ΨΨ% &
{
ΩΩ 
throw
ΪΪ 
new
ΪΪ #
ArgumentNullException
ΪΪ /
(
ΪΪ/ 0
nameof
ΪΪ0 6
(
ΪΪ6 7
authorization
ΪΪ7 D
)
ΪΪD E
)
ΪΪE F
;
ΪΪF G
}
ΫΫ 
authorization
έέ 
.
έέ 
Scopes
έέ  
=
έέ! "
scopes
έέ# )
;
έέ) *
return
ίί 
default
ίί 
;
ίί 
}
ΰΰ 	
public
γγ 
virtual
γγ 
	ValueTask
γγ  
SetStatusAsync
γγ! /
(
γγ/ 0
TAuthorization
γγ0 >
authorization
γγ? L
,
γγL M
string
δδ 
status
δδ 
,
δδ 
CancellationToken
δδ ,
cancellationToken
δδ- >
)
δδ> ?
{
εε 	
if
ζζ 
(
ζζ 
authorization
ζζ 
==
ζζ  
null
ζζ! %
)
ζζ% &
{
ηη 
throw
θθ 
new
θθ #
ArgumentNullException
θθ /
(
θθ/ 0
nameof
θθ0 6
(
θθ6 7
authorization
θθ7 D
)
θθD E
)
θθE F
;
θθF G
}
ιι 
authorization
λλ 
.
λλ 
Status
λλ  
=
λλ! "
status
λλ# )
;
λλ) *
return
νν 
default
νν 
;
νν 
}
ξξ 	
public
ρρ 
virtual
ρρ 
	ValueTask
ρρ  
SetSubjectAsync
ρρ! 0
(
ρρ0 1
TAuthorization
ρρ1 ?
authorization
ρρ@ M
,
ρρM N
string
ςς 
subject
ςς 
,
ςς 
CancellationToken
ςς -
cancellationToken
ςς. ?
)
ςς? @
{
σσ 	
if
ττ 
(
ττ 
authorization
ττ 
==
ττ  
null
ττ! %
)
ττ% &
{
υυ 
throw
φφ 
new
φφ #
ArgumentNullException
φφ /
(
φφ/ 0
nameof
φφ0 6
(
φφ6 7
authorization
φφ7 D
)
φφD E
)
φφE F
;
φφF G
}
χχ 
authorization
ωω 
.
ωω 
Subject
ωω !
=
ωω" #
subject
ωω$ +
;
ωω+ ,
return
ϋϋ 
default
ϋϋ 
;
ϋϋ 
}
όό 	
public
ÿÿ 
virtual
ÿÿ 
	ValueTask
ÿÿ  
SetTypeAsync
ÿÿ! -
(
ÿÿ- .
TAuthorization
ÿÿ. <
authorization
ÿÿ= J
,
ÿÿJ K
string
€€ 
type
€€ 
,
€€ 
CancellationToken
€€ *
cancellationToken
€€+ <
)
€€< =
{
 	
if
‚‚ 
(
‚‚ 
authorization
‚‚ 
==
‚‚  
null
‚‚! %
)
‚‚% &
{
ƒƒ 
throw
„„ 
new
„„ #
ArgumentNullException
„„ /
(
„„/ 0
nameof
„„0 6
(
„„6 7
authorization
„„7 D
)
„„D E
)
„„E F
;
„„F G
}
…… 
authorization
‡‡ 
.
‡‡ 
Type
‡‡ 
=
‡‡  
type
‡‡! %
;
‡‡% &
return
‰‰ 
default
‰‰ 
;
‰‰ 
}
 	
public
 
virtual
 
async
 
	ValueTask
 &
UpdateAsync
' 2
(
2 3
TAuthorization
3 A
authorization
B O
,
O P
CancellationToken
Q b
cancellationToken
c t
)
t u
{
 	
if
 
(
 
authorization
 
==
  
null
! %
)
% &
{
 
throw
‘‘ 
new
‘‘ #
ArgumentNullException
‘‘ /
(
‘‘/ 0
nameof
‘‘0 6
(
‘‘6 7
authorization
‘‘7 D
)
‘‘D E
)
‘‘E F
;
‘‘F G
}
’’ 
cancellationToken
”” 
.
”” *
ThrowIfCancellationRequested
”” :
(
””: ;
)
””; <
;
””< =
_session
–– 
.
–– 
Save
–– 
(
–– 
authorization
–– '
,
––' (
checkConcurrency
––) 9
:
––9 :
true
––; ?
)
––? @
;
––@ A
try
 
{
™™ 
await
 
_session
 
.
 
CommitAsync
 *
(
* +
)
+ ,
;
, -
}
›› 
catch
 
(
 "
ConcurrencyException
 '
	exception
( 1
)
1 2
{
 
throw
 
new
 "
OpenIddictExceptions
 .
.
. /"
ConcurrencyException
/ C
(
C D
new
D G
StringBuilder
H U
(
U V
)
V W
.
 

AppendLine
 
(
  
$str
  z
)
z {
.
   
Append
   
(
   
$str
   a
)
  a b
.
΅΅ 
ToString
΅΅ 
(
΅΅ 
)
΅΅ 
,
΅΅  
	exception
΅΅! *
)
΅΅* +
;
΅΅+ ,
}
ΆΆ 
}
££ 	
}
¤¤ 
}¥¥ …
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdScopeStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Stores$ *
{ 
public 

class 
OpenIdScopeStore !
<! "
TScope" (
>( )
:* +
IOpenIdScopeStore, =
<= >
TScope> D
>D E
where 
TScope 
: 
OpenIdScope "
," #
new$ '
(' (
)( )
{ 
private 
readonly 
ISession !
_session" *
;* +
public 
OpenIdScopeStore 
(  
ISession  (
session) 0
)0 1
{ 	
_session 
= 
session 
; 
} 	
public   
virtual   
async   
	ValueTask   &
<  & '
long  ' +
>  + ,

CountAsync  - 7
(  7 8
CancellationToken  8 I
cancellationToken  J [
)  [ \
{!! 	
cancellationToken"" 
."" (
ThrowIfCancellationRequested"" :
("": ;
)""; <
;""< =
return$$ 
await$$ 
_session$$ !
.$$! "
Query$$" '
<$$' (
TScope$$( .
>$$. /
($$/ 0
)$$0 1
.$$1 2

CountAsync$$2 <
($$< =
)$$= >
;$$> ?
}%% 	
public(( 
virtual(( 
	ValueTask((  
<((  !
long((! %
>((% &

CountAsync((' 1
<((1 2
TResult((2 9
>((9 :
(((: ;
Func((; ?
<((? @

IQueryable((@ J
<((J K
TScope((K Q
>((Q R
,((R S

IQueryable((T ^
<((^ _
TResult((_ f
>((f g
>((g h
query((i n
,((n o
CancellationToken	((p 
cancellationToken
((‚ “
)
((“ ”
=>)) 
throw)) 
new)) !
NotSupportedException)) .
()). /
)))/ 0
;))0 1
public,, 
virtual,, 
async,, 
	ValueTask,, &
CreateAsync,,' 2
(,,2 3
TScope,,3 9
scope,,: ?
,,,? @
CancellationToken,,A R
cancellationToken,,S d
),,d e
{-- 	
if.. 
(.. 
scope.. 
==.. 
null.. 
).. 
{// 
throw00 
new00 !
ArgumentNullException00 /
(00/ 0
nameof000 6
(006 7
scope007 <
)00< =
)00= >
;00> ?
}11 
cancellationToken33 
.33 (
ThrowIfCancellationRequested33 :
(33: ;
)33; <
;33< =
_session55 
.55 
Save55 
(55 
scope55 
)55  
;55  !
await66 
_session66 
.66 
CommitAsync66 &
(66& '
)66' (
;66( )
}77 	
public:: 
virtual:: 
async:: 
	ValueTask:: &
DeleteAsync::' 2
(::2 3
TScope::3 9
scope::: ?
,::? @
CancellationToken::A R
cancellationToken::S d
)::d e
{;; 	
if<< 
(<< 
scope<< 
==<< 
null<< 
)<< 
{== 
throw>> 
new>> !
ArgumentNullException>> /
(>>/ 0
nameof>>0 6
(>>6 7
scope>>7 <
)>>< =
)>>= >
;>>> ?
}?? 
cancellationTokenAA 
.AA (
ThrowIfCancellationRequestedAA :
(AA: ;
)AA; <
;AA< =
_sessionCC 
.CC 
DeleteCC 
(CC 
scopeCC !
)CC! "
;CC" #
awaitDD 
_sessionDD 
.DD 
CommitAsyncDD &
(DD& '
)DD' (
;DD( )
}EE 	
publicHH 
virtualHH 
asyncHH 
	ValueTaskHH &
<HH& '
TScopeHH' -
>HH- .
FindByIdAsyncHH/ <
(HH< =
stringHH= C

identifierHHD N
,HHN O
CancellationTokenHHP a
cancellationTokenHHb s
)HHs t
{II 	
ifJJ 
(JJ 
stringJJ 
.JJ 
IsNullOrEmptyJJ $
(JJ$ %

identifierJJ% /
)JJ/ 0
)JJ0 1
{KK 
throwLL 
newLL 
ArgumentExceptionLL +
(LL+ ,
$strLL, U
,LLU V
nameofLLW ]
(LL] ^

identifierLL^ h
)LLh i
)LLi j
;LLj k
}MM 
cancellationTokenOO 
.OO (
ThrowIfCancellationRequestedOO :
(OO: ;
)OO; <
;OO< =
returnQQ 
awaitQQ 
_sessionQQ !
.QQ! "
QueryQQ" '
<QQ' (
TScopeQQ( .
,QQ. /
OpenIdScopeIndexQQ0 @
>QQ@ A
(QQA B
indexQQB G
=>QQH J
indexQQK P
.QQP Q
ScopeIdQQQ X
==QQY [

identifierQQ\ f
)QQf g
.QQg h
FirstOrDefaultAsyncQQh {
(QQ{ |
)QQ| }
;QQ} ~
}RR 	
publicUU 
virtualUU 
asyncUU 
	ValueTaskUU &
<UU& '
TScopeUU' -
>UU- .
FindByNameAsyncUU/ >
(UU> ?
stringUU? E
nameUUF J
,UUJ K
CancellationTokenUUL ]
cancellationTokenUU^ o
)UUo p
{VV 	
ifWW 
(WW 
stringWW 
.WW 
IsNullOrEmptyWW $
(WW$ %
nameWW% )
)WW) *
)WW* +
{XX 
throwYY 
newYY 
ArgumentExceptionYY +
(YY+ ,
$strYY, U
,YYU V
nameofYYW ]
(YY] ^
nameYY^ b
)YYb c
)YYc d
;YYd e
}ZZ 
cancellationToken\\ 
.\\ (
ThrowIfCancellationRequested\\ :
(\\: ;
)\\; <
;\\< =
return^^ 
await^^ 
_session^^ !
.^^! "
Query^^" '
<^^' (
TScope^^( .
,^^. /
OpenIdScopeIndex^^0 @
>^^@ A
(^^A B
index^^B G
=>^^H J
index^^K P
.^^P Q
Name^^Q U
==^^V X
name^^Y ]
)^^] ^
.^^^ _
FirstOrDefaultAsync^^_ r
(^^r s
)^^s t
;^^t u
}__ 	
publicbb 
virtualbb 
IAsyncEnumerablebb '
<bb' (
TScopebb( .
>bb. /
FindByNamesAsyncbb0 @
(bb@ A
ImmutableArraycc 
<cc 
stringcc !
>cc! "
namescc# (
,cc( )
CancellationTokencc* ;
cancellationTokencc< M
)ccM N
{dd 	
ifee 
(ee 
namesee 
.ee 
Anyee 
(ee 
nameee 
=>ee !
stringee" (
.ee( )
IsNullOrEmptyee) 6
(ee6 7
nameee7 ;
)ee; <
)ee< =
)ee= >
{ff 
throwgg 
newgg 
ArgumentExceptiongg +
(gg+ ,
$strgg, R
,ggR S
nameofggT Z
(ggZ [
namesgg[ `
)gg` a
)gga b
;ggb c
}hh 
cancellationTokenjj 
.jj (
ThrowIfCancellationRequestedjj :
(jj: ;
)jj; <
;jj< =
returnll 
_sessionll 
.ll 
Queryll !
<ll! "
TScopell" (
,ll( )
OpenIdScopeIndexll* :
>ll: ;
(ll; <
indexll< A
=>llB D
indexllE J
.llJ K
NamellK O
.llO P
IsInllP T
(llT U
namesllU Z
)llZ [
)ll[ \
.ll\ ]
ToAsyncEnumerablell] n
(lln o
)llo p
;llp q
}mm 	
publicpp 
virtualpp 
asyncpp 
	ValueTaskpp &
<pp& '
TScopepp' -
>pp- .!
FindByPhysicalIdAsyncpp/ D
(ppD E
stringppE K

identifierppL V
,ppV W
CancellationTokenppX i
cancellationTokenppj {
)pp{ |
{qq 	
ifrr 
(rr 
stringrr 
.rr 
IsNullOrEmptyrr $
(rr$ %

identifierrr% /
)rr/ 0
)rr0 1
{ss 
throwtt 
newtt 
ArgumentExceptiontt +
(tt+ ,
$strtt, U
,ttU V
nameofttW ]
(tt] ^

identifiertt^ h
)tth i
)tti j
;ttj k
}uu 
cancellationTokenww 
.ww (
ThrowIfCancellationRequestedww :
(ww: ;
)ww; <
;ww< =
returnyy 
awaityy 
_sessionyy !
.yy! "
GetAsyncyy" *
<yy* +
TScopeyy+ 1
>yy1 2
(yy2 3
intyy3 6
.yy6 7
Parseyy7 <
(yy< =

identifieryy= G
,yyG H
CultureInfoyyI T
.yyT U
InvariantCultureyyU e
)yye f
)yyf g
;yyg h
}zz 	
public}} 
virtual}} 
IAsyncEnumerable}} '
<}}' (
TScope}}( .
>}}. /
FindByResourceAsync}}0 C
(}}C D
string}}D J
resource}}K S
,}}S T
CancellationToken}}U f
cancellationToken}}g x
)}}x y
{~~ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
resource% -
)- .
). /
{
€€ 
throw
 
new
 
ArgumentException
 +
(
+ ,
$str
, S
,
S T
nameof
U [
(
[ \
resource
\ d
)
d e
)
e f
;
f g
}
‚‚ 
cancellationToken
„„ 
.
„„ *
ThrowIfCancellationRequested
„„ :
(
„„: ;
)
„„; <
;
„„< =
return
†† 
_session
†† 
.
†† 
Query
†† !
<
††! "
TScope
††" (
,
††( )(
OpenIdScopeByResourceIndex
††* D
>
††D E
(
††E F
index
‡‡ 
=>
‡‡ 
index
‡‡ 
.
‡‡ 
Resource
‡‡ '
==
‡‡( *
resource
‡‡+ 3
)
‡‡3 4
.
‡‡4 5
ToAsyncEnumerable
‡‡5 F
(
‡‡F G
)
‡‡G H
;
‡‡H I
}
 	
public
‹‹ 
virtual
‹‹ 
	ValueTask
‹‹  
<
‹‹  !
TResult
‹‹! (
>
‹‹( )
GetAsync
‹‹* 2
<
‹‹2 3
TState
‹‹3 9
,
‹‹9 :
TResult
‹‹; B
>
‹‹B C
(
‹‹C D
Func
 
<
 

IQueryable
 
<
 
TScope
 "
>
" #
,
# $
TState
% +
,
+ ,

IQueryable
- 7
<
7 8
TResult
8 ?
>
? @
>
@ A
query
B G
,
G H
TState
 
state
 
,
 
CancellationToken
 +
cancellationToken
, =
)
= >
=>
 
throw
 
new
 #
NotSupportedException
 .
(
. /
)
/ 0
;
0 1
public
‘‘ 
virtual
‘‘ 
	ValueTask
‘‘  
<
‘‘  !
string
‘‘! '
>
‘‘' (!
GetDescriptionAsync
‘‘) <
(
‘‘< =
TScope
‘‘= C
scope
‘‘D I
,
‘‘I J
CancellationToken
‘‘K \
cancellationToken
‘‘] n
)
‘‘n o
{
’’ 	
if
““ 
(
““ 
scope
““ 
==
““ 
null
““ 
)
““ 
{
”” 
throw
•• 
new
•• #
ArgumentNullException
•• /
(
••/ 0
nameof
••0 6
(
••6 7
scope
••7 <
)
••< =
)
••= >
;
••> ?
}
–– 
return
 
new
 
	ValueTask
  
<
  !
string
! '
>
' (
(
( )
scope
) .
.
. /
Description
/ :
)
: ;
;
; <
}
™™ 	
public
 
virtual
 
	ValueTask
  
<
  !!
ImmutableDictionary
! 4
<
4 5
CultureInfo
5 @
,
@ A
string
B H
>
H I
>
I J"
GetDescriptionsAsync
K _
(
_ `
TScope
 
scope
 
,
 
CancellationToken
 +
cancellationToken
, =
)
= >
{
 	
if
 
(
 
scope
 
==
 
null
 
)
 
{
   
throw
΅΅ 
new
΅΅ #
ArgumentNullException
΅΅ /
(
΅΅/ 0
nameof
΅΅0 6
(
΅΅6 7
scope
΅΅7 <
)
΅΅< =
)
΅΅= >
;
΅΅> ?
}
ΆΆ 
if
¤¤ 
(
¤¤ 
scope
¤¤ 
.
¤¤ 
Descriptions
¤¤ "
==
¤¤# %
null
¤¤& *
)
¤¤* +
{
¥¥ 
return
¦¦ 
new
¦¦ 
	ValueTask
¦¦ $
<
¦¦$ %!
ImmutableDictionary
¦¦% 8
<
¦¦8 9
CultureInfo
¦¦9 D
,
¦¦D E
string
¦¦F L
>
¦¦L M
>
¦¦M N
(
¦¦N O!
ImmutableDictionary
¦¦O b
.
¦¦b c
Create
¦¦c i
<
¦¦i j
CultureInfo
¦¦j u
,
¦¦u v
string
¦¦w }
>
¦¦} ~
(
¦¦~ 
)¦¦ €
)¦¦€ 
;¦¦ ‚
}
§§ 
return
©© 
new
©© 
	ValueTask
©©  
<
©©  !!
ImmutableDictionary
©©! 4
<
©©4 5
CultureInfo
©©5 @
,
©©@ A
string
©©B H
>
©©H I
>
©©I J
(
©©J K
scope
©©K P
.
©©P Q
Descriptions
©©Q ]
)
©©] ^
;
©©^ _
}
ªª 	
public
­­ 
virtual
­­ 
	ValueTask
­­  
<
­­  !
string
­­! '
>
­­' (!
GetDisplayNameAsync
­­) <
(
­­< =
TScope
­­= C
scope
­­D I
,
­­I J
CancellationToken
­­K \
cancellationToken
­­] n
)
­­n o
{
®® 	
if
―― 
(
―― 
scope
―― 
==
―― 
null
―― 
)
―― 
{
°° 
throw
±± 
new
±± #
ArgumentNullException
±± /
(
±±/ 0
nameof
±±0 6
(
±±6 7
scope
±±7 <
)
±±< =
)
±±= >
;
±±> ?
}
²² 
return
΄΄ 
new
΄΄ 
	ValueTask
΄΄  
<
΄΄  !
string
΄΄! '
>
΄΄' (
(
΄΄( )
scope
΄΄) .
.
΄΄. /
DisplayName
΄΄/ :
)
΄΄: ;
;
΄΄; <
}
µµ 	
public
ΈΈ 
virtual
ΈΈ 
	ValueTask
ΈΈ  
<
ΈΈ  !!
ImmutableDictionary
ΈΈ! 4
<
ΈΈ4 5
CultureInfo
ΈΈ5 @
,
ΈΈ@ A
string
ΈΈB H
>
ΈΈH I
>
ΈΈI J"
GetDisplayNamesAsync
ΈΈK _
(
ΈΈ_ `
TScope
ΉΉ 
scope
ΉΉ 
,
ΉΉ 
CancellationToken
ΉΉ +
cancellationToken
ΉΉ, =
)
ΉΉ= >
{
ΊΊ 	
if
»» 
(
»» 
scope
»» 
==
»» 
null
»» 
)
»» 
{
ΌΌ 
throw
½½ 
new
½½ #
ArgumentNullException
½½ /
(
½½/ 0
nameof
½½0 6
(
½½6 7
scope
½½7 <
)
½½< =
)
½½= >
;
½½> ?
}
ΎΎ 
if
ΐΐ 
(
ΐΐ 
scope
ΐΐ 
.
ΐΐ 
DisplayNames
ΐΐ "
==
ΐΐ# %
null
ΐΐ& *
)
ΐΐ* +
{
ΑΑ 
return
ΒΒ 
new
ΒΒ 
	ValueTask
ΒΒ $
<
ΒΒ$ %!
ImmutableDictionary
ΒΒ% 8
<
ΒΒ8 9
CultureInfo
ΒΒ9 D
,
ΒΒD E
string
ΒΒF L
>
ΒΒL M
>
ΒΒM N
(
ΒΒN O!
ImmutableDictionary
ΒΒO b
.
ΒΒb c
Create
ΒΒc i
<
ΒΒi j
CultureInfo
ΒΒj u
,
ΒΒu v
string
ΒΒw }
>
ΒΒ} ~
(
ΒΒ~ 
)ΒΒ €
)ΒΒ€ 
;ΒΒ ‚
}
ΓΓ 
return
ΕΕ 
new
ΕΕ 
	ValueTask
ΕΕ  
<
ΕΕ  !!
ImmutableDictionary
ΕΕ! 4
<
ΕΕ4 5
CultureInfo
ΕΕ5 @
,
ΕΕ@ A
string
ΕΕB H
>
ΕΕH I
>
ΕΕI J
(
ΕΕJ K
scope
ΕΕK P
.
ΕΕP Q
DisplayNames
ΕΕQ ]
)
ΕΕ] ^
;
ΕΕ^ _
}
ΖΖ 	
public
ΙΙ 
virtual
ΙΙ 
	ValueTask
ΙΙ  
<
ΙΙ  !
string
ΙΙ! '
>
ΙΙ' (

GetIdAsync
ΙΙ) 3
(
ΙΙ3 4
TScope
ΙΙ4 :
scope
ΙΙ; @
,
ΙΙ@ A
CancellationToken
ΙΙB S
cancellationToken
ΙΙT e
)
ΙΙe f
{
ΚΚ 	
if
ΛΛ 
(
ΛΛ 
scope
ΛΛ 
==
ΛΛ 
null
ΛΛ 
)
ΛΛ 
{
ΜΜ 
throw
ΝΝ 
new
ΝΝ #
ArgumentNullException
ΝΝ /
(
ΝΝ/ 0
nameof
ΝΝ0 6
(
ΝΝ6 7
scope
ΝΝ7 <
)
ΝΝ< =
)
ΝΝ= >
;
ΝΝ> ?
}
ΞΞ 
return
ΠΠ 
new
ΠΠ 
	ValueTask
ΠΠ  
<
ΠΠ  !
string
ΠΠ! '
>
ΠΠ' (
(
ΠΠ( )
scope
ΠΠ) .
.
ΠΠ. /
ScopeId
ΠΠ/ 6
)
ΠΠ6 7
;
ΠΠ7 8
}
ΡΡ 	
public
ΤΤ 
virtual
ΤΤ 
	ValueTask
ΤΤ  
<
ΤΤ  !
string
ΤΤ! '
>
ΤΤ' (
GetNameAsync
ΤΤ) 5
(
ΤΤ5 6
TScope
ΤΤ6 <
scope
ΤΤ= B
,
ΤΤB C
CancellationToken
ΤΤD U
cancellationToken
ΤΤV g
)
ΤΤg h
{
ΥΥ 	
if
ΦΦ 
(
ΦΦ 
scope
ΦΦ 
==
ΦΦ 
null
ΦΦ 
)
ΦΦ 
{
ΧΧ 
throw
ΨΨ 
new
ΨΨ #
ArgumentNullException
ΨΨ /
(
ΨΨ/ 0
nameof
ΨΨ0 6
(
ΨΨ6 7
scope
ΨΨ7 <
)
ΨΨ< =
)
ΨΨ= >
;
ΨΨ> ?
}
ΩΩ 
return
ΫΫ 
new
ΫΫ 
	ValueTask
ΫΫ  
<
ΫΫ  !
string
ΫΫ! '
>
ΫΫ' (
(
ΫΫ( )
scope
ΫΫ) .
.
ΫΫ. /
Name
ΫΫ/ 3
)
ΫΫ3 4
;
ΫΫ4 5
}
άά 	
public
ίί 
virtual
ίί 
	ValueTask
ίί  
<
ίί  !
string
ίί! '
>
ίί' ( 
GetPhysicalIdAsync
ίί) ;
(
ίί; <
TScope
ίί< B
scope
ίίC H
,
ίίH I
CancellationToken
ίίJ [
cancellationToken
ίί\ m
)
ίίm n
{
ΰΰ 	
if
αα 
(
αα 
scope
αα 
==
αα 
null
αα 
)
αα 
{
ββ 
throw
γγ 
new
γγ #
ArgumentNullException
γγ /
(
γγ/ 0
nameof
γγ0 6
(
γγ6 7
scope
γγ7 <
)
γγ< =
)
γγ= >
;
γγ> ?
}
δδ 
return
ζζ 
new
ζζ 
	ValueTask
ζζ  
<
ζζ  !
string
ζζ! '
>
ζζ' (
(
ζζ( )
scope
ζζ) .
.
ζζ. /
Id
ζζ/ 1
.
ζζ1 2
ToString
ζζ2 :
(
ζζ: ;
CultureInfo
ζζ; F
.
ζζF G
InvariantCulture
ζζG W
)
ζζW X
)
ζζX Y
;
ζζY Z
}
ηη 	
public
κκ 
virtual
κκ 
	ValueTask
κκ  
<
κκ  !!
ImmutableDictionary
κκ! 4
<
κκ4 5
string
κκ5 ;
,
κκ; <
JsonElement
κκ= H
>
κκH I
>
κκI J 
GetPropertiesAsync
κκK ]
(
κκ] ^
TScope
κκ^ d
scope
κκe j
,
κκj k
CancellationToken
κκl } 
cancellationTokenκκ~ 
)κκ 
{
λλ 	
if
μμ 
(
μμ 
scope
μμ 
==
μμ 
null
μμ 
)
μμ 
{
νν 
throw
ξξ 
new
ξξ #
ArgumentNullException
ξξ /
(
ξξ/ 0
nameof
ξξ0 6
(
ξξ6 7
scope
ξξ7 <
)
ξξ< =
)
ξξ= >
;
ξξ> ?
}
οο 
if
ρρ 
(
ρρ 
scope
ρρ 
.
ρρ 

Properties
ρρ  
==
ρρ! #
null
ρρ$ (
)
ρρ( )
{
ςς 
return
σσ 
new
σσ 
	ValueTask
σσ $
<
σσ$ %!
ImmutableDictionary
σσ% 8
<
σσ8 9
string
σσ9 ?
,
σσ? @
JsonElement
σσA L
>
σσL M
>
σσM N
(
σσN O!
ImmutableDictionary
σσO b
.
σσb c
Create
σσc i
<
σσi j
string
σσj p
,
σσp q
JsonElement
σσr }
>
σσ} ~
(
σσ~ 
)σσ €
)σσ€ 
;σσ ‚
}
ττ 
return
φφ 
new
φφ 
	ValueTask
φφ  
<
φφ  !!
ImmutableDictionary
φφ! 4
<
φφ4 5
string
φφ5 ;
,
φφ; <
JsonElement
φφ= H
>
φφH I
>
φφI J
(
φφJ K
JsonSerializer
χχ 
.
χχ 
Deserialize
χχ *
<
χχ* +!
ImmutableDictionary
χχ+ >
<
χχ> ?
string
χχ? E
,
χχE F
JsonElement
χχG R
>
χχR S
>
χχS T
(
χχT U
scope
χχU Z
.
χχZ [

Properties
χχ[ e
.
χχe f
ToString
χχf n
(
χχn o
)
χχo p
)
χχp q
)
χχq r
;
χχr s
}
ψψ 	
public
ϋϋ 
virtual
ϋϋ 
	ValueTask
ϋϋ  
<
ϋϋ  !
ImmutableArray
ϋϋ! /
<
ϋϋ/ 0
string
ϋϋ0 6
>
ϋϋ6 7
>
ϋϋ7 8
GetResourcesAsync
ϋϋ9 J
(
ϋϋJ K
TScope
ϋϋK Q
scope
ϋϋR W
,
ϋϋW X
CancellationToken
ϋϋY j
cancellationToken
ϋϋk |
)
ϋϋ| }
{
όό 	
if
ύύ 
(
ύύ 
scope
ύύ 
==
ύύ 
null
ύύ 
)
ύύ 
{
ώώ 
throw
ÿÿ 
new
ÿÿ #
ArgumentNullException
ÿÿ /
(
ÿÿ/ 0
nameof
ÿÿ0 6
(
ÿÿ6 7
scope
ÿÿ7 <
)
ÿÿ< =
)
ÿÿ= >
;
ÿÿ> ?
}
€€ 
return
‚‚ 
new
‚‚ 
	ValueTask
‚‚  
<
‚‚  !
ImmutableArray
‚‚! /
<
‚‚/ 0
string
‚‚0 6
>
‚‚6 7
>
‚‚7 8
(
‚‚8 9
scope
‚‚9 >
.
‚‚> ?
	Resources
‚‚? H
)
‚‚H I
;
‚‚I J
}
ƒƒ 	
public
†† 
virtual
†† 
	ValueTask
††  
<
††  !
TScope
††! '
>
††' (
InstantiateAsync
††) 9
(
††9 :
CancellationToken
††: K
cancellationToken
††L ]
)
††] ^
=>
‡‡ 
new
‡‡ 
	ValueTask
‡‡ 
<
‡‡ 
TScope
‡‡ #
>
‡‡# $
(
‡‡$ %
new
‡‡% (
TScope
‡‡) /
{
‡‡0 1
ScopeId
‡‡2 9
=
‡‡: ;
Guid
‡‡< @
.
‡‡@ A
NewGuid
‡‡A H
(
‡‡H I
)
‡‡I J
.
‡‡J K
ToString
‡‡K S
(
‡‡S T
$str
‡‡T W
)
‡‡W X
}
‡‡Y Z
)
‡‡Z [
;
‡‡[ \
public
 
virtual
 
IAsyncEnumerable
 '
<
' (
TScope
( .
>
. /
	ListAsync
0 9
(
9 :
int
: =
?
= >
count
? D
,
D E
int
F I
?
I J
offset
K Q
,
Q R
CancellationToken
S d
cancellationToken
e v
)
v w
{
‹‹ 	
var
 
query
 
=
 
_session
  
.
  !
Query
! &
<
& '
TScope
' -
>
- .
(
. /
)
/ 0
;
0 1
if
 
(
 
offset
 
.
 
HasValue
 
)
  
{
 
query
 
=
 
query
 
.
 
Skip
 "
(
" #
offset
# )
.
) *
Value
* /
)
/ 0
;
0 1
}
‘‘ 
if
““ 
(
““ 
count
““ 
.
““ 
HasValue
““ 
)
““ 
{
”” 
query
•• 
=
•• 
query
•• 
.
•• 
Take
•• "
(
••" #
count
••# (
.
••( )
Value
••) .
)
••. /
;
••/ 0
}
–– 
return
 
query
 
.
 
ToAsyncEnumerable
 *
(
* +
)
+ ,
;
, -
}
™™ 	
public
 
virtual
 
IAsyncEnumerable
 '
<
' (
TResult
( /
>
/ 0
	ListAsync
1 :
<
: ;
TState
; A
,
A B
TResult
C J
>
J K
(
K L
Func
 
<
 

IQueryable
 
<
 
TScope
 "
>
" #
,
# $
TState
% +
,
+ ,

IQueryable
- 7
<
7 8
TResult
8 ?
>
? @
>
@ A
query
B G
,
G H
TState
 
state
 
,
 
CancellationToken
 +
cancellationToken
, =
)
= >
=>
 
throw
 
new
 #
NotSupportedException
 .
(
. /
)
/ 0
;
0 1
public
ΆΆ 
virtual
ΆΆ 
	ValueTask
ΆΆ  !
SetDescriptionAsync
ΆΆ! 4
(
ΆΆ4 5
TScope
ΆΆ5 ;
scope
ΆΆ< A
,
ΆΆA B
string
ΆΆC I
description
ΆΆJ U
,
ΆΆU V
CancellationToken
ΆΆW h
cancellationToken
ΆΆi z
)
ΆΆz {
{
££ 	
if
¤¤ 
(
¤¤ 
scope
¤¤ 
==
¤¤ 
null
¤¤ 
)
¤¤ 
{
¥¥ 
throw
¦¦ 
new
¦¦ #
ArgumentNullException
¦¦ /
(
¦¦/ 0
nameof
¦¦0 6
(
¦¦6 7
scope
¦¦7 <
)
¦¦< =
)
¦¦= >
;
¦¦> ?
}
§§ 
scope
©© 
.
©© 
Description
©© 
=
©© 
description
©©  +
;
©©+ ,
return
«« 
default
«« 
;
«« 
}
¬¬ 	
public
―― 
virtual
―― 
	ValueTask
――  "
SetDescriptionsAsync
――! 5
(
――5 6
TScope
――6 <
scope
――= B
,
――B C!
ImmutableDictionary
°° 
<
°°  
CultureInfo
°°  +
,
°°+ ,
string
°°- 3
>
°°3 4
descriptions
°°5 A
,
°°A B
CancellationToken
°°C T
cancellationToken
°°U f
)
°°f g
{
±± 	
if
²² 
(
²² 
scope
²² 
==
²² 
null
²² 
)
²² 
{
³³ 
throw
΄΄ 
new
΄΄ #
ArgumentNullException
΄΄ /
(
΄΄/ 0
nameof
΄΄0 6
(
΄΄6 7
scope
΄΄7 <
)
΄΄< =
)
΄΄= >
;
΄΄> ?
}
µµ 
scope
·· 
.
·· 
Descriptions
·· 
=
··  
descriptions
··! -
;
··- .
return
ΉΉ 
default
ΉΉ 
;
ΉΉ 
}
ΊΊ 	
public
½½ 
virtual
½½ 
	ValueTask
½½  !
SetDisplayNameAsync
½½! 4
(
½½4 5
TScope
½½5 ;
scope
½½< A
,
½½A B
string
½½C I
name
½½J N
,
½½N O
CancellationToken
½½P a
cancellationToken
½½b s
)
½½s t
{
ΎΎ 	
if
ΏΏ 
(
ΏΏ 
scope
ΏΏ 
==
ΏΏ 
null
ΏΏ 
)
ΏΏ 
{
ΐΐ 
throw
ΑΑ 
new
ΑΑ #
ArgumentNullException
ΑΑ /
(
ΑΑ/ 0
nameof
ΑΑ0 6
(
ΑΑ6 7
scope
ΑΑ7 <
)
ΑΑ< =
)
ΑΑ= >
;
ΑΑ> ?
}
ΒΒ 
scope
ΔΔ 
.
ΔΔ 
DisplayName
ΔΔ 
=
ΔΔ 
name
ΔΔ  $
;
ΔΔ$ %
return
ΖΖ 
default
ΖΖ 
;
ΖΖ 
}
ΗΗ 	
public
ΚΚ 
virtual
ΚΚ 
	ValueTask
ΚΚ  "
SetDisplayNamesAsync
ΚΚ! 5
(
ΚΚ5 6
TScope
ΚΚ6 <
scope
ΚΚ= B
,
ΚΚB C!
ImmutableDictionary
ΛΛ 
<
ΛΛ  
CultureInfo
ΛΛ  +
,
ΛΛ+ ,
string
ΛΛ- 3
>
ΛΛ3 4
names
ΛΛ5 :
,
ΛΛ: ;
CancellationToken
ΛΛ< M
cancellationToken
ΛΛN _
)
ΛΛ_ `
{
ΜΜ 	
if
ΝΝ 
(
ΝΝ 
scope
ΝΝ 
==
ΝΝ 
null
ΝΝ 
)
ΝΝ 
{
ΞΞ 
throw
ΟΟ 
new
ΟΟ #
ArgumentNullException
ΟΟ /
(
ΟΟ/ 0
nameof
ΟΟ0 6
(
ΟΟ6 7
scope
ΟΟ7 <
)
ΟΟ< =
)
ΟΟ= >
;
ΟΟ> ?
}
ΠΠ 
scope
ÒÒ 
.
ÒÒ 
DisplayNames
ÒÒ 
=
ÒÒ  
names
ÒÒ! &
;
ÒÒ& '
return
ΤΤ 
default
ΤΤ 
;
ΤΤ 
}
ΥΥ 	
public
ΨΨ 
virtual
ΨΨ 
	ValueTask
ΨΨ  
SetNameAsync
ΨΨ! -
(
ΨΨ- .
TScope
ΨΨ. 4
scope
ΨΨ5 :
,
ΨΨ: ;
string
ΨΨ< B
name
ΨΨC G
,
ΨΨG H
CancellationToken
ΨΨI Z
cancellationToken
ΨΨ[ l
)
ΨΨl m
{
ΩΩ 	
if
ΪΪ 
(
ΪΪ 
scope
ΪΪ 
==
ΪΪ 
null
ΪΪ 
)
ΪΪ 
{
ΫΫ 
throw
άά 
new
άά #
ArgumentNullException
άά /
(
άά/ 0
nameof
άά0 6
(
άά6 7
scope
άά7 <
)
άά< =
)
άά= >
;
άά> ?
}
έέ 
scope
ίί 
.
ίί 
Name
ίί 
=
ίί 
name
ίί 
;
ίί 
return
αα 
default
αα 
;
αα 
}
ββ 	
public
εε 
virtual
εε 
	ValueTask
εε   
SetPropertiesAsync
εε! 3
(
εε3 4
TScope
εε4 :
scope
εε; @
,
εε@ A!
ImmutableDictionary
εεB U
<
εεU V
string
εεV \
,
εε\ ]
JsonElement
εε^ i
>
εεi j

properties
εεk u
,
εεu v 
CancellationTokenεεw !
cancellationTokenεε‰ 
)εε ›
{
ζζ 	
if
ηη 
(
ηη 
scope
ηη 
==
ηη 
null
ηη 
)
ηη 
{
θθ 
throw
ιι 
new
ιι #
ArgumentNullException
ιι /
(
ιι/ 0
nameof
ιι0 6
(
ιι6 7
scope
ιι7 <
)
ιι< =
)
ιι= >
;
ιι> ?
}
κκ 
if
μμ 
(
μμ 

properties
μμ 
==
μμ 
null
μμ "
||
μμ# %

properties
μμ& 0
.
μμ0 1
IsEmpty
μμ1 8
)
μμ8 9
{
νν 
scope
ξξ 
.
ξξ 

Properties
ξξ  
=
ξξ! "
null
ξξ# '
;
ξξ' (
return
ππ 
default
ππ 
;
ππ 
}
ρρ 
scope
σσ 
.
σσ 

Properties
σσ 
=
σσ 
JObject
σσ &
.
σσ& '
Parse
σσ' ,
(
σσ, -
JsonSerializer
σσ- ;
.
σσ; <
	Serialize
σσ< E
(
σσE F

properties
σσF P
,
σσP Q
new
σσR U#
JsonSerializerOptions
σσV k
{
ττ 
Encoder
υυ 
=
υυ 
JavaScriptEncoder
υυ +
.
υυ+ ,'
UnsafeRelaxedJsonEscaping
υυ, E
,
υυE F
WriteIndented
φφ 
=
φφ 
false
φφ  %
}
χχ 
)
χχ 
)
χχ 
;
χχ 
return
ωω 
default
ωω 
;
ωω 
}
ϊϊ 	
public
ύύ 
virtual
ύύ 
	ValueTask
ύύ  
SetResourcesAsync
ύύ! 2
(
ύύ2 3
TScope
ύύ3 9
scope
ύύ: ?
,
ύύ? @
ImmutableArray
ύύA O
<
ύύO P
string
ύύP V
>
ύύV W
	resources
ύύX a
,
ύύa b
CancellationToken
ύύc t 
cancellationTokenύύu †
)ύύ† ‡
{
ώώ 	
if
ÿÿ 
(
ÿÿ 
scope
ÿÿ 
==
ÿÿ 
null
ÿÿ 
)
ÿÿ 
{
€€ 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
scope
7 <
)
< =
)
= >
;
> ?
}
‚‚ 
scope
„„ 
.
„„ 
	Resources
„„ 
=
„„ 
	resources
„„ '
;
„„' (
return
†† 
default
†† 
;
†† 
}
‡‡ 	
public
 
virtual
 
async
 
	ValueTask
 &
UpdateAsync
' 2
(
2 3
TScope
3 9
scope
: ?
,
? @
CancellationToken
A R
cancellationToken
S d
)
d e
{
‹‹ 	
if
 
(
 
scope
 
==
 
null
 
)
 
{
 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
scope
7 <
)
< =
)
= >
;
> ?
}
 
cancellationToken
‘‘ 
.
‘‘ *
ThrowIfCancellationRequested
‘‘ :
(
‘‘: ;
)
‘‘; <
;
‘‘< =
_session
““ 
.
““ 
Save
““ 
(
““ 
scope
““ 
,
““  
checkConcurrency
““! 1
:
““1 2
true
““3 7
)
““7 8
;
““8 9
try
•• 
{
–– 
await
—— 
_session
—— 
.
—— 
CommitAsync
—— *
(
——* +
)
——+ ,
;
——, -
}
 
catch
™™ 
(
™™ "
ConcurrencyException
™™ '
	exception
™™( 1
)
™™1 2
{
 
throw
›› 
new
›› "
OpenIddictExceptions
›› .
.
››. /"
ConcurrencyException
››/ C
(
››C D
new
››D G
StringBuilder
››H U
(
››U V
)
››V W
.
 

AppendLine
 
(
  
$str
  r
)
r s
.
 
Append
 
(
 
$str
 Y
)
Y Z
.
 
ToString
 
(
 
)
 
,
  
	exception
! *
)
* +
;
+ ,
}
 
}
   	
}
΅΅ 
}ΆΆ θΤ
‘D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdTokenStore.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
YesSql #
.# $
Stores$ *
{ 
public 

class 
OpenIdTokenStore !
<! "
TToken" (
>( )
:* +
IOpenIdTokenStore, =
<= >
TToken> D
>D E
where 
TToken 
: 
OpenIdToken "
," #
new$ '
(' (
)( )
{ 
private 
readonly 
ISession !
_session" *
;* +
public 
OpenIdTokenStore 
(  
ISession  (
session) 0
)0 1
{ 	
_session 
= 
session 
; 
} 	
public!! 
virtual!! 
async!! 
	ValueTask!! &
<!!& '
long!!' +
>!!+ ,

CountAsync!!- 7
(!!7 8
CancellationToken!!8 I
cancellationToken!!J [
)!![ \
{"" 	
cancellationToken## 
.## (
ThrowIfCancellationRequested## :
(##: ;
)##; <
;##< =
return%% 
await%% 
_session%% !
.%%! "
Query%%" '
<%%' (
TToken%%( .
>%%. /
(%%/ 0
)%%0 1
.%%1 2

CountAsync%%2 <
(%%< =
)%%= >
;%%> ?
}&& 	
public)) 
virtual)) 
	ValueTask))  
<))  !
long))! %
>))% &

CountAsync))' 1
<))1 2
TResult))2 9
>))9 :
()): ;
Func)); ?
<))? @

IQueryable))@ J
<))J K
TToken))K Q
>))Q R
,))R S

IQueryable))T ^
<))^ _
TResult))_ f
>))f g
>))g h
query))i n
,))n o
CancellationToken	))p 
cancellationToken
))‚ “
)
))“ ”
=>** 
throw** 
new** !
NotSupportedException** .
(**. /
)**/ 0
;**0 1
public-- 
virtual-- 
async-- 
	ValueTask-- &
CreateAsync--' 2
(--2 3
TToken--3 9
token--: ?
,--? @
CancellationToken--A R
cancellationToken--S d
)--d e
{.. 	
if// 
(// 
token// 
==// 
null// 
)// 
{00 
throw11 
new11 !
ArgumentNullException11 /
(11/ 0
nameof110 6
(116 7
token117 <
)11< =
)11= >
;11> ?
}22 
cancellationToken44 
.44 (
ThrowIfCancellationRequested44 :
(44: ;
)44; <
;44< =
_session66 
.66 
Save66 
(66 
token66 
)66  
;66  !
await77 
_session77 
.77 
CommitAsync77 &
(77& '
)77' (
;77( )
}88 	
public;; 
virtual;; 
async;; 
	ValueTask;; &
DeleteAsync;;' 2
(;;2 3
TToken;;3 9
token;;: ?
,;;? @
CancellationToken;;A R
cancellationToken;;S d
);;d e
{<< 	
if== 
(== 
token== 
==== 
null== 
)== 
{>> 
throw?? 
new?? !
ArgumentNullException?? /
(??/ 0
nameof??0 6
(??6 7
token??7 <
)??< =
)??= >
;??> ?
}@@ 
cancellationTokenBB 
.BB (
ThrowIfCancellationRequestedBB :
(BB: ;
)BB; <
;BB< =
_sessionDD 
.DD 
DeleteDD 
(DD 
tokenDD !
)DD! "
;DD" #
awaitEE 
_sessionEE 
.EE 
CommitAsyncEE &
(EE& '
)EE' (
;EE( )
}FF 	
publicII 
virtualII 
IAsyncEnumerableII '
<II' (
TTokenII( .
>II. /
	FindAsyncII0 9
(II9 :
stringJJ 
subjectJJ 
,JJ 
stringJJ "
clientJJ# )
,JJ) *
CancellationTokenJJ+ <
cancellationTokenJJ= N
)JJN O
{KK 	
ifLL 
(LL 
stringLL 
.LL 
IsNullOrEmptyLL $
(LL$ %
subjectLL% ,
)LL, -
)LL- .
{MM 
throwNN 
newNN 
ArgumentExceptionNN +
(NN+ ,
$strNN, R
,NNR S
nameofNNT Z
(NNZ [
subjectNN[ b
)NNb c
)NNc d
;NNd e
}OO 
ifQQ 
(QQ 
stringQQ 
.QQ 
IsNullOrEmptyQQ $
(QQ$ %
clientQQ% +
)QQ+ ,
)QQ, -
{RR 
throwSS 
newSS 
ArgumentExceptionSS +
(SS+ ,
$strSS, Q
,SSQ R
nameofSSS Y
(SSY Z
clientSSZ `
)SS` a
)SSa b
;SSb c
}TT 
cancellationTokenVV 
.VV (
ThrowIfCancellationRequestedVV :
(VV: ;
)VV; <
;VV< =
returnXX 
_sessionXX 
.XX 
QueryXX !
<XX! "
TTokenXX" (
,XX( )
OpenIdTokenIndexXX* :
>XX: ;
(XX; <
indexYY 
=>YY 
indexYY 
.YY 
ApplicationIdYY ,
==YY- /
clientYY0 6
&&YY7 9
indexYY: ?
.YY? @
SubjectYY@ G
==YYH J
subjectYYK R
)YYR S
.YYS T
ToAsyncEnumerableYYT e
(YYe f
)YYf g
;YYg h
}ZZ 	
public]] 
virtual]] 
IAsyncEnumerable]] '
<]]' (
TToken]]( .
>]]. /
	FindAsync]]0 9
(]]9 :
string^^ 
subject^^ 
,^^ 
string^^ "
client^^# )
,^^) *
string^^+ 1
status^^2 8
,^^8 9
CancellationToken^^: K
cancellationToken^^L ]
)^^] ^
{__ 	
if`` 
(`` 
string`` 
.`` 
IsNullOrEmpty`` $
(``$ %
subject``% ,
)``, -
)``- .
{aa 
throwbb 
newbb 
ArgumentExceptionbb +
(bb+ ,
$strbb, R
,bbR S
nameofbbT Z
(bbZ [
subjectbb[ b
)bbb c
)bbc d
;bbd e
}cc 
ifee 
(ee 
stringee 
.ee 
IsNullOrEmptyee $
(ee$ %
clientee% +
)ee+ ,
)ee, -
{ff 
throwgg 
newgg 
ArgumentExceptiongg +
(gg+ ,
$strgg, \
,gg\ ]
nameofgg^ d
(ggd e
clientgge k
)ggk l
)ggl m
;ggm n
}hh 
ifjj 
(jj 
stringjj 
.jj 
IsNullOrEmptyjj $
(jj$ %
statusjj% +
)jj+ ,
)jj, -
{kk 
throwll 
newll 
ArgumentExceptionll +
(ll+ ,
$strll, Q
,llQ R
nameofllS Y
(llY Z
statusllZ `
)ll` a
)lla b
;llb c
}mm 
cancellationTokenoo 
.oo (
ThrowIfCancellationRequestedoo :
(oo: ;
)oo; <
;oo< =
returnqq 
_sessionqq 
.qq 
Queryqq !
<qq! "
TTokenqq" (
,qq( )
OpenIdTokenIndexqq* :
>qq: ;
(qq; <
indexrr 
=>rr 
indexrr 
.rr 
ApplicationIdrr ,
==rr- /
clientrr0 6
&&rr7 9
indexrr: ?
.rr? @
Subjectrr@ G
==rrH J
subjectrrK R
&&rrS U
indexrrV [
.rr[ \
Statusrr\ b
==rrc e
statusrrf l
)rrl m
.rrm n
ToAsyncEnumerablerrn 
(	rr €
)
rr€ 
;
rr ‚
}ss 	
publicvv 
virtualvv 
IAsyncEnumerablevv '
<vv' (
TTokenvv( .
>vv. /
	FindAsyncvv0 9
(vv9 :
stringww 
subjectww 
,ww 
stringww "
clientww# )
,ww) *
stringww+ 1
statusww2 8
,ww8 9
stringww: @
typewwA E
,wwE F
CancellationTokenwwG X
cancellationTokenwwY j
)wwj k
{xx 	
ifyy 
(yy 
stringyy 
.yy 
IsNullOrEmptyyy $
(yy$ %
subjectyy% ,
)yy, -
)yy- .
{zz 
throw{{ 
new{{ 
ArgumentException{{ +
({{+ ,
$str{{, R
,{{R S
nameof{{T Z
({{Z [
subject{{[ b
){{b c
){{c d
;{{d e
}|| 
if~~ 
(~~ 
string~~ 
.~~ 
IsNullOrEmpty~~ $
(~~$ %
client~~% +
)~~+ ,
)~~, -
{ 
throw
€€ 
new
€€ 
ArgumentException
€€ +
(
€€+ ,
$str
€€, \
,
€€\ ]
nameof
€€^ d
(
€€d e
client
€€e k
)
€€k l
)
€€l m
;
€€m n
}
 
if
ƒƒ 
(
ƒƒ 
string
ƒƒ 
.
ƒƒ 
IsNullOrEmpty
ƒƒ $
(
ƒƒ$ %
status
ƒƒ% +
)
ƒƒ+ ,
)
ƒƒ, -
{
„„ 
throw
…… 
new
…… 
ArgumentException
…… +
(
……+ ,
$str
……, Q
,
……Q R
nameof
……S Y
(
……Y Z
status
……Z `
)
……` a
)
……a b
;
……b c
}
†† 
if
 
(
 
string
 
.
 
IsNullOrEmpty
 $
(
$ %
type
% )
)
) *
)
* +
{
‰‰ 
throw
 
new
 
ArgumentException
 +
(
+ ,
$str
, O
,
O P
nameof
Q W
(
W X
type
X \
)
\ ]
)
] ^
;
^ _
}
‹‹ 
cancellationToken
 
.
 *
ThrowIfCancellationRequested
 :
(
: ;
)
; <
;
< =
return
 
_session
 
.
 
Query
 !
<
! "
TToken
" (
,
( )
OpenIdTokenIndex
* :
>
: ;
(
; <
index
 
=>
 
index
 
.
 
ApplicationId
 ,
==
- /
client
0 6
&&
7 9
index
: ?
.
? @
Subject
@ G
==
H J
subject
K R
&&
S U
index
‘‘ 
.
‘‘ 
Status
‘‘ %
==
‘‘& (
status
‘‘) /
&&
‘‘0 2
index
‘‘3 8
.
‘‘8 9
Type
‘‘9 =
==
‘‘> @
type
‘‘A E
)
‘‘E F
.
‘‘F G
ToAsyncEnumerable
‘‘G X
(
‘‘X Y
)
‘‘Y Z
;
‘‘Z [
}
’’ 	
public
•• 
virtual
•• 
IAsyncEnumerable
•• '
<
••' (
TToken
••( .
>
••. /&
FindByApplicationIdAsync
••0 H
(
••H I
string
••I O

identifier
••P Z
,
••Z [
CancellationToken
••\ m
cancellationToken
••n 
)•• €
{
–– 	
if
—— 
(
—— 
string
—— 
.
—— 
IsNullOrEmpty
—— $
(
——$ %

identifier
——% /
)
——/ 0
)
——0 1
{
 
throw
™™ 
new
™™ 
ArgumentException
™™ +
(
™™+ ,
$str
™™, U
,
™™U V
nameof
™™W ]
(
™™] ^

identifier
™™^ h
)
™™h i
)
™™i j
;
™™j k
}
 
cancellationToken
 
.
 *
ThrowIfCancellationRequested
 :
(
: ;
)
; <
;
< =
return
 
_session
 
.
 
Query
 !
<
! "
TToken
" (
,
( )
OpenIdTokenIndex
* :
>
: ;
(
; <
index
< A
=>
B D
index
E J
.
J K
ApplicationId
K X
==
Y [

identifier
\ f
)
f g
.
g h
ToAsyncEnumerable
h y
(
y z
)
z {
;
{ |
}
 	
public
ΆΆ 
virtual
ΆΆ 
IAsyncEnumerable
ΆΆ '
<
ΆΆ' (
TToken
ΆΆ( .
>
ΆΆ. /(
FindByAuthorizationIdAsync
ΆΆ0 J
(
ΆΆJ K
string
ΆΆK Q

identifier
ΆΆR \
,
ΆΆ\ ]
CancellationToken
ΆΆ^ o 
cancellationTokenΆΆp 
)ΆΆ ‚
{
££ 	
if
¤¤ 
(
¤¤ 
string
¤¤ 
.
¤¤ 
IsNullOrEmpty
¤¤ $
(
¤¤$ %

identifier
¤¤% /
)
¤¤/ 0
)
¤¤0 1
{
¥¥ 
throw
¦¦ 
new
¦¦ 
ArgumentException
¦¦ +
(
¦¦+ ,
$str
¦¦, U
,
¦¦U V
nameof
¦¦W ]
(
¦¦] ^

identifier
¦¦^ h
)
¦¦h i
)
¦¦i j
;
¦¦j k
}
§§ 
cancellationToken
©© 
.
©© *
ThrowIfCancellationRequested
©© :
(
©©: ;
)
©©; <
;
©©< =
return
«« 
_session
«« 
.
«« 
Query
«« !
<
««! "
TToken
««" (
,
««( )
OpenIdTokenIndex
««* :
>
««: ;
(
««; <
index
««< A
=>
««B D
index
««E J
.
««J K
AuthorizationId
««K Z
==
««[ ]

identifier
««^ h
)
««h i
.
««i j
ToAsyncEnumerable
««j {
(
««{ |
)
««| }
;
««} ~
}
¬¬ 	
public
―― 
virtual
―― 
async
―― 
	ValueTask
―― &
<
――& '
TToken
――' -
>
――- .$
FindByReferenceIdAsync
――/ E
(
――E F
string
――F L

identifier
――M W
,
――W X
CancellationToken
――Y j
cancellationToken
――k |
)
――| }
{
°° 	
if
±± 
(
±± 
string
±± 
.
±± 
IsNullOrEmpty
±± $
(
±±$ %

identifier
±±% /
)
±±/ 0
)
±±0 1
{
²² 
throw
³³ 
new
³³ 
ArgumentException
³³ +
(
³³+ ,
$str
³³, U
,
³³U V
nameof
³³W ]
(
³³] ^

identifier
³³^ h
)
³³h i
)
³³i j
;
³³j k
}
΄΄ 
cancellationToken
¶¶ 
.
¶¶ *
ThrowIfCancellationRequested
¶¶ :
(
¶¶: ;
)
¶¶; <
;
¶¶< =
return
ΈΈ 
await
ΈΈ 
_session
ΈΈ !
.
ΈΈ! "
Query
ΈΈ" '
<
ΈΈ' (
TToken
ΈΈ( .
,
ΈΈ. /
OpenIdTokenIndex
ΈΈ0 @
>
ΈΈ@ A
(
ΈΈA B
index
ΈΈB G
=>
ΈΈH J
index
ΈΈK P
.
ΈΈP Q
ReferenceId
ΈΈQ \
==
ΈΈ] _

identifier
ΈΈ` j
)
ΈΈj k
.
ΈΈk l!
FirstOrDefaultAsync
ΈΈl 
(ΈΈ €
)ΈΈ€ 
;ΈΈ ‚
}
ΉΉ 	
public
ΌΌ 
virtual
ΌΌ 
async
ΌΌ 
	ValueTask
ΌΌ &
<
ΌΌ& '
TToken
ΌΌ' -
>
ΌΌ- .
FindByIdAsync
ΌΌ/ <
(
ΌΌ< =
string
ΌΌ= C

identifier
ΌΌD N
,
ΌΌN O
CancellationToken
ΌΌP a
cancellationToken
ΌΌb s
)
ΌΌs t
{
½½ 	
if
ΎΎ 
(
ΎΎ 
string
ΎΎ 
.
ΎΎ 
IsNullOrEmpty
ΎΎ $
(
ΎΎ$ %

identifier
ΎΎ% /
)
ΎΎ/ 0
)
ΎΎ0 1
{
ΏΏ 
throw
ΐΐ 
new
ΐΐ 
ArgumentException
ΐΐ +
(
ΐΐ+ ,
$str
ΐΐ, U
,
ΐΐU V
nameof
ΐΐW ]
(
ΐΐ] ^

identifier
ΐΐ^ h
)
ΐΐh i
)
ΐΐi j
;
ΐΐj k
}
ΑΑ 
cancellationToken
ΓΓ 
.
ΓΓ *
ThrowIfCancellationRequested
ΓΓ :
(
ΓΓ: ;
)
ΓΓ; <
;
ΓΓ< =
return
ΕΕ 
await
ΕΕ 
_session
ΕΕ !
.
ΕΕ! "
Query
ΕΕ" '
<
ΕΕ' (
TToken
ΕΕ( .
,
ΕΕ. /
OpenIdTokenIndex
ΕΕ0 @
>
ΕΕ@ A
(
ΕΕA B
index
ΕΕB G
=>
ΕΕH J
index
ΕΕK P
.
ΕΕP Q
TokenId
ΕΕQ X
==
ΕΕY [

identifier
ΕΕ\ f
)
ΕΕf g
.
ΕΕg h!
FirstOrDefaultAsync
ΕΕh {
(
ΕΕ{ |
)
ΕΕ| }
;
ΕΕ} ~
}
ΖΖ 	
public
ΙΙ 
virtual
ΙΙ 
async
ΙΙ 
	ValueTask
ΙΙ &
<
ΙΙ& '
TToken
ΙΙ' -
>
ΙΙ- .#
FindByPhysicalIdAsync
ΙΙ/ D
(
ΙΙD E
string
ΙΙE K

identifier
ΙΙL V
,
ΙΙV W
CancellationToken
ΙΙX i
cancellationToken
ΙΙj {
)
ΙΙ{ |
{
ΚΚ 	
if
ΛΛ 
(
ΛΛ 
string
ΛΛ 
.
ΛΛ 
IsNullOrEmpty
ΛΛ $
(
ΛΛ$ %

identifier
ΛΛ% /
)
ΛΛ/ 0
)
ΛΛ0 1
{
ΜΜ 
throw
ΝΝ 
new
ΝΝ 
ArgumentException
ΝΝ +
(
ΝΝ+ ,
$str
ΝΝ, U
,
ΝΝU V
nameof
ΝΝW ]
(
ΝΝ] ^

identifier
ΝΝ^ h
)
ΝΝh i
)
ΝΝi j
;
ΝΝj k
}
ΞΞ 
cancellationToken
ΠΠ 
.
ΠΠ *
ThrowIfCancellationRequested
ΠΠ :
(
ΠΠ: ;
)
ΠΠ; <
;
ΠΠ< =
return
ÒÒ 
await
ÒÒ 
_session
ÒÒ !
.
ÒÒ! "
GetAsync
ÒÒ" *
<
ÒÒ* +
TToken
ÒÒ+ 1
>
ÒÒ1 2
(
ÒÒ2 3
int
ÒÒ3 6
.
ÒÒ6 7
Parse
ÒÒ7 <
(
ÒÒ< =

identifier
ÒÒ= G
,
ÒÒG H
CultureInfo
ÒÒI T
.
ÒÒT U
InvariantCulture
ÒÒU e
)
ÒÒe f
)
ÒÒf g
;
ÒÒg h
}
ΣΣ 	
public
ΦΦ 
virtual
ΦΦ 
IAsyncEnumerable
ΦΦ '
<
ΦΦ' (
TToken
ΦΦ( .
>
ΦΦ. / 
FindBySubjectAsync
ΦΦ0 B
(
ΦΦB C
string
ΦΦC I
subject
ΦΦJ Q
,
ΦΦQ R
CancellationToken
ΦΦS d
cancellationToken
ΦΦe v
)
ΦΦv w
{
ΧΧ 	
if
ΨΨ 
(
ΨΨ 
string
ΨΨ 
.
ΨΨ 
IsNullOrEmpty
ΨΨ $
(
ΨΨ$ %
subject
ΨΨ% ,
)
ΨΨ, -
)
ΨΨ- .
{
ΩΩ 
throw
ΪΪ 
new
ΪΪ 
ArgumentException
ΪΪ +
(
ΪΪ+ ,
$str
ΪΪ, R
,
ΪΪR S
nameof
ΪΪT Z
(
ΪΪZ [
subject
ΪΪ[ b
)
ΪΪb c
)
ΪΪc d
;
ΪΪd e
}
ΫΫ 
cancellationToken
έέ 
.
έέ *
ThrowIfCancellationRequested
έέ :
(
έέ: ;
)
έέ; <
;
έέ< =
return
ίί 
_session
ίί 
.
ίί 
Query
ίί !
<
ίί! "
TToken
ίί" (
,
ίί( )
OpenIdTokenIndex
ίί* :
>
ίί: ;
(
ίί; <
index
ίί< A
=>
ίίB D
index
ίίE J
.
ίίJ K
Subject
ίίK R
==
ίίS U
subject
ίίV ]
)
ίί] ^
.
ίί^ _
ToAsyncEnumerable
ίί_ p
(
ίίp q
)
ίίq r
;
ίίr s
}
ΰΰ 	
public
γγ 
virtual
γγ 
	ValueTask
γγ  
<
γγ  !
TResult
γγ! (
>
γγ( )
GetAsync
γγ* 2
<
γγ2 3
TState
γγ3 9
,
γγ9 :
TResult
γγ; B
>
γγB C
(
γγC D
Func
δδ 
<
δδ 

IQueryable
δδ 
<
δδ 
TToken
δδ "
>
δδ" #
,
δδ# $
TState
δδ% +
,
δδ+ ,

IQueryable
δδ- 7
<
δδ7 8
TResult
δδ8 ?
>
δδ? @
>
δδ@ A
query
δδB G
,
δδG H
TState
εε 
state
εε 
,
εε 
CancellationToken
εε +
cancellationToken
εε, =
)
εε= >
=>
ζζ 
throw
ζζ 
new
ζζ #
NotSupportedException
ζζ .
(
ζζ. /
)
ζζ/ 0
;
ζζ0 1
public
ιι 
virtual
ιι 
	ValueTask
ιι  
<
ιι  !
string
ιι! '
>
ιι' (#
GetApplicationIdAsync
ιι) >
(
ιι> ?
TToken
ιι? E
token
ιιF K
,
ιιK L
CancellationToken
ιιM ^
cancellationToken
ιι_ p
)
ιιp q
{
κκ 	
if
λλ 
(
λλ 
token
λλ 
==
λλ 
null
λλ 
)
λλ 
{
μμ 
throw
νν 
new
νν #
ArgumentNullException
νν /
(
νν/ 0
nameof
νν0 6
(
νν6 7
token
νν7 <
)
νν< =
)
νν= >
;
νν> ?
}
ξξ 
return
ππ 
new
ππ 
	ValueTask
ππ  
<
ππ  !
string
ππ! '
>
ππ' (
(
ππ( )
token
ππ) .
.
ππ. /
ApplicationId
ππ/ <
?
ππ< =
.
ππ= >
ToString
ππ> F
(
ππF G
CultureInfo
ππG R
.
ππR S
InvariantCulture
ππS c
)
ππc d
)
ππd e
;
ππe f
}
ρρ 	
public
ττ 
virtual
ττ 
	ValueTask
ττ  
<
ττ  !
string
ττ! '
>
ττ' (%
GetAuthorizationIdAsync
ττ) @
(
ττ@ A
TToken
ττA G
token
ττH M
,
ττM N
CancellationToken
ττO `
cancellationToken
ττa r
)
ττr s
{
υυ 	
if
φφ 
(
φφ 
token
φφ 
==
φφ 
null
φφ 
)
φφ 
{
χχ 
throw
ψψ 
new
ψψ #
ArgumentNullException
ψψ /
(
ψψ/ 0
nameof
ψψ0 6
(
ψψ6 7
token
ψψ7 <
)
ψψ< =
)
ψψ= >
;
ψψ> ?
}
ωω 
return
ϋϋ 
new
ϋϋ 
	ValueTask
ϋϋ  
<
ϋϋ  !
string
ϋϋ! '
>
ϋϋ' (
(
ϋϋ( )
token
ϋϋ) .
.
ϋϋ. /
AuthorizationId
ϋϋ/ >
)
ϋϋ> ?
;
ϋϋ? @
}
όό 	
public
ÿÿ 
virtual
ÿÿ 
	ValueTask
ÿÿ  
<
ÿÿ  !
DateTimeOffset
ÿÿ! /
?
ÿÿ/ 0
>
ÿÿ0 1"
GetCreationDateAsync
ÿÿ2 F
(
ÿÿF G
TToken
ÿÿG M
token
ÿÿN S
,
ÿÿS T
CancellationToken
ÿÿU f
cancellationToken
ÿÿg x
)
ÿÿx y
{
€€ 	
if
 
(
 
token
 
==
 
null
 
)
 
{
‚‚ 
throw
ƒƒ 
new
ƒƒ #
ArgumentNullException
ƒƒ /
(
ƒƒ/ 0
nameof
ƒƒ0 6
(
ƒƒ6 7
token
ƒƒ7 <
)
ƒƒ< =
)
ƒƒ= >
;
ƒƒ> ?
}
„„ 
if
†† 
(
†† 
token
†† 
.
†† 
CreationDate
†† "
is
††# %
null
††& *
)
††* +
{
‡‡ 
return
 
new
 
	ValueTask
 $
<
$ %
DateTimeOffset
% 3
?
3 4
>
4 5
(
5 6
result
6 <
:
< =
null
> B
)
B C
;
C D
}
‰‰ 
return
‹‹ 
new
‹‹ 
	ValueTask
‹‹  
<
‹‹  !
DateTimeOffset
‹‹! /
?
‹‹/ 0
>
‹‹0 1
(
‹‹1 2
DateTime
‹‹2 :
.
‹‹: ;
SpecifyKind
‹‹; F
(
‹‹F G
token
‹‹G L
.
‹‹L M
CreationDate
‹‹M Y
.
‹‹Y Z
Value
‹‹Z _
,
‹‹_ `
DateTimeKind
‹‹a m
.
‹‹m n
Utc
‹‹n q
)
‹‹q r
)
‹‹r s
;
‹‹s t
}
 	
public
 
virtual
 
	ValueTask
  
<
  !
DateTimeOffset
! /
?
/ 0
>
0 1$
GetExpirationDateAsync
2 H
(
H I
TToken
I O
token
P U
,
U V
CancellationToken
W h
cancellationToken
i z
)
z {
{
 	
if
‘‘ 
(
‘‘ 
token
‘‘ 
==
‘‘ 
null
‘‘ 
)
‘‘ 
{
’’ 
throw
““ 
new
““ #
ArgumentNullException
““ /
(
““/ 0
nameof
““0 6
(
““6 7
token
““7 <
)
““< =
)
““= >
;
““> ?
}
”” 
if
–– 
(
–– 
token
–– 
.
–– 
ExpirationDate
–– $
is
––% '
null
––( ,
)
––, -
{
—— 
return
 
new
 
	ValueTask
 $
<
$ %
DateTimeOffset
% 3
?
3 4
>
4 5
(
5 6
result
6 <
:
< =
null
> B
)
B C
;
C D
}
™™ 
return
›› 
new
›› 
	ValueTask
››  
<
››  !
DateTimeOffset
››! /
?
››/ 0
>
››0 1
(
››1 2
DateTime
››2 :
.
››: ;
SpecifyKind
››; F
(
››F G
token
››G L
.
››L M
ExpirationDate
››M [
.
››[ \
Value
››\ a
,
››a b
DateTimeKind
››c o
.
››o p
Utc
››p s
)
››s t
)
››t u
;
››u v
}
 	
public
 
virtual
 
	ValueTask
  
<
  !
string
! '
>
' (

GetIdAsync
) 3
(
3 4
TToken
4 :
token
; @
,
@ A
CancellationToken
B S
cancellationToken
T e
)
e f
{
   	
if
΅΅ 
(
΅΅ 
token
΅΅ 
==
΅΅ 
null
΅΅ 
)
΅΅ 
{
ΆΆ 
throw
££ 
new
££ #
ArgumentNullException
££ /
(
££/ 0
nameof
££0 6
(
££6 7
token
££7 <
)
££< =
)
££= >
;
££> ?
}
¤¤ 
return
¦¦ 
new
¦¦ 
	ValueTask
¦¦  
<
¦¦  !
string
¦¦! '
>
¦¦' (
(
¦¦( )
token
¦¦) .
.
¦¦. /
TokenId
¦¦/ 6
)
¦¦6 7
;
¦¦7 8
}
§§ 	
public
ªª 
virtual
ªª 
	ValueTask
ªª  
<
ªª  !
string
ªª! '
>
ªª' (
GetPayloadAsync
ªª) 8
(
ªª8 9
TToken
ªª9 ?
token
ªª@ E
,
ªªE F
CancellationToken
ªªG X
cancellationToken
ªªY j
)
ªªj k
{
«« 	
if
¬¬ 
(
¬¬ 
token
¬¬ 
==
¬¬ 
null
¬¬ 
)
¬¬ 
{
­­ 
throw
®® 
new
®® #
ArgumentNullException
®® /
(
®®/ 0
nameof
®®0 6
(
®®6 7
token
®®7 <
)
®®< =
)
®®= >
;
®®> ?
}
―― 
return
±± 
new
±± 
	ValueTask
±±  
<
±±  !
string
±±! '
>
±±' (
(
±±( )
token
±±) .
.
±±. /
Payload
±±/ 6
)
±±6 7
;
±±7 8
}
²² 	
public
µµ 
virtual
µµ 
	ValueTask
µµ  
<
µµ  !
string
µµ! '
>
µµ' ( 
GetPhysicalIdAsync
µµ) ;
(
µµ; <
TToken
µµ< B
token
µµC H
,
µµH I
CancellationToken
µµJ [
cancellationToken
µµ\ m
)
µµm n
{
¶¶ 	
if
·· 
(
·· 
token
·· 
==
·· 
null
·· 
)
·· 
{
ΈΈ 
throw
ΉΉ 
new
ΉΉ #
ArgumentNullException
ΉΉ /
(
ΉΉ/ 0
nameof
ΉΉ0 6
(
ΉΉ6 7
token
ΉΉ7 <
)
ΉΉ< =
)
ΉΉ= >
;
ΉΉ> ?
}
ΊΊ 
return
ΌΌ 
new
ΌΌ 
	ValueTask
ΌΌ  
<
ΌΌ  !
string
ΌΌ! '
>
ΌΌ' (
(
ΌΌ( )
token
ΌΌ) .
.
ΌΌ. /
Id
ΌΌ/ 1
.
ΌΌ1 2
ToString
ΌΌ2 :
(
ΌΌ: ;
CultureInfo
ΌΌ; F
.
ΌΌF G
InvariantCulture
ΌΌG W
)
ΌΌW X
)
ΌΌX Y
;
ΌΌY Z
}
½½ 	
public
ΐΐ 
virtual
ΐΐ 
	ValueTask
ΐΐ  
<
ΐΐ  !!
ImmutableDictionary
ΐΐ! 4
<
ΐΐ4 5
string
ΐΐ5 ;
,
ΐΐ; <
JsonElement
ΐΐ= H
>
ΐΐH I
>
ΐΐI J 
GetPropertiesAsync
ΐΐK ]
(
ΐΐ] ^
TToken
ΐΐ^ d
token
ΐΐe j
,
ΐΐj k
CancellationToken
ΐΐl } 
cancellationTokenΐΐ~ 
)ΐΐ 
{
ΑΑ 	
if
ΒΒ 
(
ΒΒ 
token
ΒΒ 
==
ΒΒ 
null
ΒΒ 
)
ΒΒ 
{
ΓΓ 
throw
ΔΔ 
new
ΔΔ #
ArgumentNullException
ΔΔ /
(
ΔΔ/ 0
nameof
ΔΔ0 6
(
ΔΔ6 7
token
ΔΔ7 <
)
ΔΔ< =
)
ΔΔ= >
;
ΔΔ> ?
}
ΕΕ 
if
ΗΗ 
(
ΗΗ 
token
ΗΗ 
.
ΗΗ 

Properties
ΗΗ  
==
ΗΗ! #
null
ΗΗ$ (
)
ΗΗ( )
{
ΘΘ 
return
ΙΙ 
new
ΙΙ 
	ValueTask
ΙΙ $
<
ΙΙ$ %!
ImmutableDictionary
ΙΙ% 8
<
ΙΙ8 9
string
ΙΙ9 ?
,
ΙΙ? @
JsonElement
ΙΙA L
>
ΙΙL M
>
ΙΙM N
(
ΙΙN O!
ImmutableDictionary
ΙΙO b
.
ΙΙb c
Create
ΙΙc i
<
ΙΙi j
string
ΙΙj p
,
ΙΙp q
JsonElement
ΙΙr }
>
ΙΙ} ~
(
ΙΙ~ 
)ΙΙ €
)ΙΙ€ 
;ΙΙ ‚
}
ΚΚ 
return
ΜΜ 
new
ΜΜ 
	ValueTask
ΜΜ  
<
ΜΜ  !!
ImmutableDictionary
ΜΜ! 4
<
ΜΜ4 5
string
ΜΜ5 ;
,
ΜΜ; <
JsonElement
ΜΜ= H
>
ΜΜH I
>
ΜΜI J
(
ΜΜJ K
JsonSerializer
ΝΝ 
.
ΝΝ 
Deserialize
ΝΝ *
<
ΝΝ* +!
ImmutableDictionary
ΝΝ+ >
<
ΝΝ> ?
string
ΝΝ? E
,
ΝΝE F
JsonElement
ΝΝG R
>
ΝΝR S
>
ΝΝS T
(
ΝΝT U
token
ΝΝU Z
.
ΝΝZ [

Properties
ΝΝ[ e
.
ΝΝe f
ToString
ΝΝf n
(
ΝΝn o
)
ΝΝo p
)
ΝΝp q
)
ΝΝq r
;
ΝΝr s
}
ΞΞ 	
public
ΡΡ 
virtual
ΡΡ 
	ValueTask
ΡΡ  
<
ΡΡ  !
DateTimeOffset
ΡΡ! /
?
ΡΡ/ 0
>
ΡΡ0 1$
GetRedemptionDateAsync
ΡΡ2 H
(
ΡΡH I
TToken
ΡΡI O
token
ΡΡP U
,
ΡΡU V
CancellationToken
ΡΡW h
cancellationToken
ΡΡi z
)
ΡΡz {
{
ÒÒ 	
if
ΣΣ 
(
ΣΣ 
token
ΣΣ 
==
ΣΣ 
null
ΣΣ 
)
ΣΣ 
{
ΤΤ 
throw
ΥΥ 
new
ΥΥ #
ArgumentNullException
ΥΥ /
(
ΥΥ/ 0
nameof
ΥΥ0 6
(
ΥΥ6 7
token
ΥΥ7 <
)
ΥΥ< =
)
ΥΥ= >
;
ΥΥ> ?
}
ΦΦ 
if
ΨΨ 
(
ΨΨ 
token
ΨΨ 
.
ΨΨ 
RedemptionDate
ΨΨ $
is
ΨΨ% '
null
ΨΨ( ,
)
ΨΨ, -
{
ΩΩ 
return
ΪΪ 
new
ΪΪ 
	ValueTask
ΪΪ $
<
ΪΪ$ %
DateTimeOffset
ΪΪ% 3
?
ΪΪ3 4
>
ΪΪ4 5
(
ΪΪ5 6
result
ΪΪ6 <
:
ΪΪ< =
null
ΪΪ> B
)
ΪΪB C
;
ΪΪC D
}
ΫΫ 
return
έέ 
new
έέ 
	ValueTask
έέ  
<
έέ  !
DateTimeOffset
έέ! /
?
έέ/ 0
>
έέ0 1
(
έέ1 2
DateTime
έέ2 :
.
έέ: ;
SpecifyKind
έέ; F
(
έέF G
token
έέG L
.
έέL M
RedemptionDate
έέM [
.
έέ[ \
Value
έέ\ a
,
έέa b
DateTimeKind
έέc o
.
έέo p
Utc
έέp s
)
έέs t
)
έέt u
;
έέu v
}
ήή 	
public
αα 
virtual
αα 
	ValueTask
αα  
<
αα  !
string
αα! '
>
αα' (!
GetReferenceIdAsync
αα) <
(
αα< =
TToken
αα= C
token
ααD I
,
ααI J
CancellationToken
ααK \
cancellationToken
αα] n
)
ααn o
{
ββ 	
if
γγ 
(
γγ 
token
γγ 
==
γγ 
null
γγ 
)
γγ 
{
δδ 
throw
εε 
new
εε #
ArgumentNullException
εε /
(
εε/ 0
nameof
εε0 6
(
εε6 7
token
εε7 <
)
εε< =
)
εε= >
;
εε> ?
}
ζζ 
return
θθ 
new
θθ 
	ValueTask
θθ  
<
θθ  !
string
θθ! '
>
θθ' (
(
θθ( )
token
θθ) .
.
θθ. /
ReferenceId
θθ/ :
)
θθ: ;
;
θθ; <
}
ιι 	
public
μμ 
virtual
μμ 
	ValueTask
μμ  
<
μμ  !
string
μμ! '
>
μμ' (
GetStatusAsync
μμ) 7
(
μμ7 8
TToken
μμ8 >
token
μμ? D
,
μμD E
CancellationToken
μμF W
cancellationToken
μμX i
)
μμi j
{
νν 	
if
ξξ 
(
ξξ 
token
ξξ 
==
ξξ 
null
ξξ 
)
ξξ 
{
οο 
throw
ππ 
new
ππ #
ArgumentNullException
ππ /
(
ππ/ 0
nameof
ππ0 6
(
ππ6 7
token
ππ7 <
)
ππ< =
)
ππ= >
;
ππ> ?
}
ρρ 
return
σσ 
new
σσ 
	ValueTask
σσ  
<
σσ  !
string
σσ! '
>
σσ' (
(
σσ( )
token
σσ) .
.
σσ. /
Status
σσ/ 5
)
σσ5 6
;
σσ6 7
}
ττ 	
public
χχ 
virtual
χχ 
	ValueTask
χχ  
<
χχ  !
string
χχ! '
>
χχ' (
GetSubjectAsync
χχ) 8
(
χχ8 9
TToken
χχ9 ?
token
χχ@ E
,
χχE F
CancellationToken
χχG X
cancellationToken
χχY j
)
χχj k
{
ψψ 	
if
ωω 
(
ωω 
token
ωω 
==
ωω 
null
ωω 
)
ωω 
{
ϊϊ 
throw
ϋϋ 
new
ϋϋ #
ArgumentNullException
ϋϋ /
(
ϋϋ/ 0
nameof
ϋϋ0 6
(
ϋϋ6 7
token
ϋϋ7 <
)
ϋϋ< =
)
ϋϋ= >
;
ϋϋ> ?
}
όό 
return
ώώ 
new
ώώ 
	ValueTask
ώώ  
<
ώώ  !
string
ώώ! '
>
ώώ' (
(
ώώ( )
token
ώώ) .
.
ώώ. /
Subject
ώώ/ 6
)
ώώ6 7
;
ώώ7 8
}
ÿÿ 	
public
‚‚ 
virtual
‚‚ 
	ValueTask
‚‚  
<
‚‚  !
string
‚‚! '
>
‚‚' (
GetTypeAsync
‚‚) 5
(
‚‚5 6
TToken
‚‚6 <
token
‚‚= B
,
‚‚B C
CancellationToken
‚‚D U
cancellationToken
‚‚V g
)
‚‚g h
{
ƒƒ 	
if
„„ 
(
„„ 
token
„„ 
==
„„ 
null
„„ 
)
„„ 
{
…… 
throw
†† 
new
†† #
ArgumentNullException
†† /
(
††/ 0
nameof
††0 6
(
††6 7
token
††7 <
)
††< =
)
††= >
;
††> ?
}
‡‡ 
return
‰‰ 
new
‰‰ 
	ValueTask
‰‰  
<
‰‰  !
string
‰‰! '
>
‰‰' (
(
‰‰( )
token
‰‰) .
.
‰‰. /
Type
‰‰/ 3
)
‰‰3 4
;
‰‰4 5
}
 	
public
 
virtual
 
	ValueTask
  
<
  !
TToken
! '
>
' (
InstantiateAsync
) 9
(
9 :
CancellationToken
: K
cancellationToken
L ]
)
] ^
=>
 
new
 
	ValueTask
 
<
 
TToken
 #
>
# $
(
$ %
new
% (
TToken
) /
{
0 1
TokenId
2 9
=
: ;
Guid
< @
.
@ A
NewGuid
A H
(
H I
)
I J
.
J K
ToString
K S
(
S T
$str
T W
)
W X
}
Y Z
)
Z [
;
[ \
public
‘‘ 
virtual
‘‘ 
IAsyncEnumerable
‘‘ '
<
‘‘' (
TToken
‘‘( .
>
‘‘. /
	ListAsync
‘‘0 9
(
‘‘9 :
int
‘‘: =
?
‘‘= >
count
‘‘? D
,
‘‘D E
int
‘‘F I
?
‘‘I J
offset
‘‘K Q
,
‘‘Q R
CancellationToken
‘‘S d
cancellationToken
‘‘e v
)
‘‘v w
{
’’ 	
var
““ 
query
““ 
=
““ 
_session
““  
.
““  !
Query
““! &
<
““& '
TToken
““' -
>
““- .
(
““. /
)
““/ 0
;
““0 1
if
•• 
(
•• 
offset
•• 
.
•• 
HasValue
•• 
)
••  
{
–– 
query
—— 
=
—— 
query
—— 
.
—— 
Skip
—— "
(
——" #
offset
——# )
.
——) *
Value
——* /
)
——/ 0
;
——0 1
}
 
if
 
(
 
count
 
.
 
HasValue
 
)
 
{
›› 
query
 
=
 
query
 
.
 
Take
 "
(
" #
count
# (
.
( )
Value
) .
)
. /
;
/ 0
}
 
return
 
query
 
.
 
ToAsyncEnumerable
 *
(
* +
)
+ ,
;
, -
}
   	
public
££ 
virtual
££ 
IAsyncEnumerable
££ '
<
££' (
TResult
££( /
>
££/ 0
	ListAsync
££1 :
<
££: ;
TState
££; A
,
££A B
TResult
££C J
>
££J K
(
££K L
Func
¤¤ 
<
¤¤ 

IQueryable
¤¤ 
<
¤¤ 
TToken
¤¤ "
>
¤¤" #
,
¤¤# $
TState
¤¤% +
,
¤¤+ ,

IQueryable
¤¤- 7
<
¤¤7 8
TResult
¤¤8 ?
>
¤¤? @
>
¤¤@ A
query
¤¤B G
,
¤¤G H
TState
¥¥ 
state
¥¥ 
,
¥¥ 
CancellationToken
¥¥ +
cancellationToken
¥¥, =
)
¥¥= >
=>
¦¦ 
throw
¦¦ 
new
¦¦ #
NotSupportedException
¦¦ .
(
¦¦. /
)
¦¦/ 0
;
¦¦0 1
public
©© 
virtual
©© 
async
©© 
	ValueTask
©© &

PruneAsync
©©' 1
(
©©1 2
DateTimeOffset
©©2 @
	threshold
©©A J
,
©©J K
CancellationToken
©©L ]
cancellationToken
©©^ o
=
©©p q
default
©©r y
)
©©y z
{
ªª 	
IList
―― 
<
―― 
	Exception
―― 
>
―― 

exceptions
―― '
=
――( )
null
――* .
;
――. /
for
±± 
(
±± 
var
±± 
offset
±± 
=
±± 
$num
±± 
;
±±  
offset
±±! '
<
±±( )
$num
±±* 1
;
±±1 2
offset
±±3 9
+=
±±: <
$num
±±= B
)
±±B C
{
²² 
cancellationToken
³³ !
.
³³! "*
ThrowIfCancellationRequested
³³" >
(
³³> ?
)
³³? @
;
³³@ A
var
µµ 
tokens
µµ 
=
µµ 
await
µµ "
_session
µµ# +
.
µµ+ ,
Query
µµ, 1
<
µµ1 2
TToken
µµ2 8
,
µµ8 9
OpenIdTokenIndex
µµ: J
>
µµJ K
(
µµK L
token
¶¶ 
=>
¶¶ 
token
¶¶ "
.
¶¶" #
CreationDate
¶¶# /
<
¶¶0 1
	threshold
¶¶2 ;
.
¶¶; <
UtcDateTime
¶¶< G
&&
¶¶H J
(
·· 
(
·· 
token
·· "
.
··" #
Status
··# )
!=
··* ,
Statuses
··- 5
.
··5 6
Inactive
··6 >
&&
··? A
token
··B G
.
··G H
Status
··H N
!=
··O Q
Statuses
··R Z
.
··Z [
Valid
··[ `
)
··` a
||
··b d
token
ΈΈ "
.
ΈΈ" #
AuthorizationId
ΈΈ# 2
.
ΈΈ2 3
IsNotIn
ΈΈ3 :
<
ΈΈ: ;&
OpenIdAuthorizationIndex
ΈΈ; S
>
ΈΈS T
(
ΈΈT U
authorization
ΉΉ  -
=>
ΉΉ. 0
authorization
ΉΉ1 >
.
ΉΉ> ?
AuthorizationId
ΉΉ? N
,
ΉΉN O
authorization
ΊΊ  -
=>
ΊΊ. 0
authorization
ΊΊ1 >
.
ΊΊ> ?
Status
ΊΊ? E
==
ΊΊF H
Statuses
ΊΊI Q
.
ΊΊQ R
Valid
ΊΊR W
)
ΊΊW X
||
ΊΊY [
token
»» "
.
»»" #
ExpirationDate
»»# 1
<
»»2 3
DateTime
»»4 <
.
»»< =
UtcNow
»»= C
)
»»C D
)
»»D E
.
»»E F
Skip
»»F J
(
»»J K
offset
»»K Q
)
»»Q R
.
»»R S
Take
»»S W
(
»»W X
$num
»»X ]
)
»»] ^
.
»»^ _
	ListAsync
»»_ h
(
»»h i
)
»»i j
;
»»j k
foreach
½½ 
(
½½ 
var
½½ 
token
½½ "
in
½½# %
tokens
½½& ,
)
½½, -
{
ΎΎ 
_session
ΏΏ 
.
ΏΏ 
Delete
ΏΏ #
(
ΏΏ# $
token
ΏΏ$ )
)
ΏΏ) *
;
ΏΏ* +
}
ΐΐ 
try
ΒΒ 
{
ΓΓ 
await
ΔΔ 
_session
ΔΔ "
.
ΔΔ" #
CommitAsync
ΔΔ# .
(
ΔΔ. /
)
ΔΔ/ 0
;
ΔΔ0 1
}
ΕΕ 
catch
ΖΖ 
(
ΖΖ 
	Exception
ΖΖ  
	exception
ΖΖ! *
)
ΖΖ* +
{
ΗΗ 
if
ΘΘ 
(
ΘΘ 

exceptions
ΘΘ "
==
ΘΘ# %
null
ΘΘ& *
)
ΘΘ* +
{
ΙΙ 

exceptions
ΚΚ "
=
ΚΚ# $
new
ΚΚ% (
List
ΚΚ) -
<
ΚΚ- .
	Exception
ΚΚ. 7
>
ΚΚ7 8
(
ΚΚ8 9
capacity
ΚΚ9 A
:
ΚΚA B
$num
ΚΚC D
)
ΚΚD E
;
ΚΚE F
}
ΛΛ 

exceptions
ΝΝ 
.
ΝΝ 
Add
ΝΝ "
(
ΝΝ" #
	exception
ΝΝ# ,
)
ΝΝ, -
;
ΝΝ- .
}
ΞΞ 
}
ΟΟ 
if
ΡΡ 
(
ΡΡ 

exceptions
ΡΡ 
!=
ΡΡ 
null
ΡΡ "
)
ΡΡ" #
{
ÒÒ 
throw
ΣΣ 
new
ΣΣ  
AggregateException
ΣΣ ,
(
ΣΣ, -
$str
ΣΣ- ^
,
ΣΣ^ _

exceptions
ΣΣ` j
)
ΣΣj k
;
ΣΣk l
}
ΤΤ 
}
ΥΥ 	
public
ΨΨ 
virtual
ΨΨ 
	ValueTask
ΨΨ  #
SetApplicationIdAsync
ΨΨ! 6
(
ΨΨ6 7
TToken
ΨΨ7 =
token
ΨΨ> C
,
ΨΨC D
string
ΨΨE K

identifier
ΨΨL V
,
ΨΨV W
CancellationToken
ΨΨX i
cancellationToken
ΨΨj {
)
ΨΨ{ |
{
ΩΩ 	
if
ΪΪ 
(
ΪΪ 
token
ΪΪ 
==
ΪΪ 
null
ΪΪ 
)
ΪΪ 
{
ΫΫ 
throw
άά 
new
άά #
ArgumentNullException
άά /
(
άά/ 0
nameof
άά0 6
(
άά6 7
token
άά7 <
)
άά< =
)
άά= >
;
άά> ?
}
έέ 
if
ίί 
(
ίί 
string
ίί 
.
ίί 
IsNullOrEmpty
ίί $
(
ίί$ %

identifier
ίί% /
)
ίί/ 0
)
ίί0 1
{
ΰΰ 
token
αα 
.
αα 
ApplicationId
αα #
=
αα$ %
null
αα& *
;
αα* +
}
ββ 
else
γγ 
{
δδ 
token
εε 
.
εε 
ApplicationId
εε #
=
εε$ %

identifier
εε& 0
;
εε0 1
}
ζζ 
return
θθ 
default
θθ 
;
θθ 
}
ιι 	
public
μμ 
virtual
μμ 
	ValueTask
μμ  %
SetAuthorizationIdAsync
μμ! 8
(
μμ8 9
TToken
μμ9 ?
token
μμ@ E
,
μμE F
string
μμG M

identifier
μμN X
,
μμX Y
CancellationToken
μμZ k
cancellationToken
μμl }
)
μμ} ~
{
νν 	
if
ξξ 
(
ξξ 
token
ξξ 
==
ξξ 
null
ξξ 
)
ξξ 
{
οο 
throw
ππ 
new
ππ #
ArgumentNullException
ππ /
(
ππ/ 0
nameof
ππ0 6
(
ππ6 7
token
ππ7 <
)
ππ< =
)
ππ= >
;
ππ> ?
}
ρρ 
if
σσ 
(
σσ 
string
σσ 
.
σσ 
IsNullOrEmpty
σσ $
(
σσ$ %

identifier
σσ% /
)
σσ/ 0
)
σσ0 1
{
ττ 
token
υυ 
.
υυ 
AuthorizationId
υυ %
=
υυ& '
null
υυ( ,
;
υυ, -
}
φφ 
else
χχ 
{
ψψ 
token
ωω 
.
ωω 
AuthorizationId
ωω %
=
ωω& '

identifier
ωω( 2
;
ωω2 3
}
ϊϊ 
return
όό 
default
όό 
;
όό 
}
ύύ 	
public
€€ 
virtual
€€ 
	ValueTask
€€  "
SetCreationDateAsync
€€! 5
(
€€5 6
TToken
€€6 <
token
€€= B
,
€€B C
DateTimeOffset
€€D R
?
€€R S
date
€€T X
,
€€X Y
CancellationToken
€€Z k
cancellationToken
€€l }
)
€€} ~
{
 	
if
‚‚ 
(
‚‚ 
token
‚‚ 
==
‚‚ 
null
‚‚ 
)
‚‚ 
{
ƒƒ 
throw
„„ 
new
„„ #
ArgumentNullException
„„ /
(
„„/ 0
nameof
„„0 6
(
„„6 7
token
„„7 <
)
„„< =
)
„„= >
;
„„> ?
}
…… 
token
‡‡ 
.
‡‡ 
CreationDate
‡‡ 
=
‡‡  
date
‡‡! %
?
‡‡% &
.
‡‡& '
UtcDateTime
‡‡' 2
;
‡‡2 3
return
‰‰ 
default
‰‰ 
;
‰‰ 
}
 	
public
 
virtual
 
	ValueTask
  $
SetExpirationDateAsync
! 7
(
7 8
TToken
8 >
token
? D
,
D E
DateTimeOffset
F T
?
T U
date
V Z
,
Z [
CancellationToken
\ m
cancellationToken
n 
) €
{
 	
if
 
(
 
token
 
==
 
null
 
)
 
{
 
throw
‘‘ 
new
‘‘ #
ArgumentNullException
‘‘ /
(
‘‘/ 0
nameof
‘‘0 6
(
‘‘6 7
token
‘‘7 <
)
‘‘< =
)
‘‘= >
;
‘‘> ?
}
’’ 
token
”” 
.
”” 
ExpirationDate
””  
=
””! "
date
””# '
?
””' (
.
””( )
UtcDateTime
””) 4
;
””4 5
return
–– 
default
–– 
;
–– 
}
—— 	
public
 
virtual
 
	ValueTask
  
SetPayloadAsync
! 0
(
0 1
TToken
1 7
token
8 =
,
= >
string
? E
payload
F M
,
M N
CancellationToken
O `
cancellationToken
a r
)
r s
{
›› 	
if
 
(
 
token
 
==
 
null
 
)
 
{
 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
token
7 <
)
< =
)
= >
;
> ?
}
 
token
΅΅ 
.
΅΅ 
Payload
΅΅ 
=
΅΅ 
payload
΅΅ #
;
΅΅# $
return
££ 
default
££ 
;
££ 
}
¤¤ 	
public
§§ 
virtual
§§ 
	ValueTask
§§   
SetPropertiesAsync
§§! 3
(
§§3 4
TToken
§§4 :
token
§§; @
,
§§@ A!
ImmutableDictionary
§§B U
<
§§U V
string
§§V \
,
§§\ ]
JsonElement
§§^ i
>
§§i j

properties
§§k u
,
§§u v 
CancellationToken§§w !
cancellationToken§§‰ 
)§§ ›
{
¨¨ 	
if
©© 
(
©© 
token
©© 
==
©© 
null
©© 
)
©© 
{
ªª 
throw
«« 
new
«« #
ArgumentNullException
«« /
(
««/ 0
nameof
««0 6
(
««6 7
token
««7 <
)
««< =
)
««= >
;
««> ?
}
¬¬ 
if
®® 
(
®® 

properties
®® 
==
®® 
null
®® "
||
®®# %

properties
®®& 0
.
®®0 1
IsEmpty
®®1 8
)
®®8 9
{
―― 
token
°° 
.
°° 

Properties
°°  
=
°°! "
null
°°# '
;
°°' (
return
²² 
default
²² 
;
²² 
}
³³ 
token
µµ 
.
µµ 

Properties
µµ 
=
µµ 
JObject
µµ &
.
µµ& '
Parse
µµ' ,
(
µµ, -
JsonSerializer
µµ- ;
.
µµ; <
	Serialize
µµ< E
(
µµE F

properties
µµF P
,
µµP Q
new
µµR U#
JsonSerializerOptions
µµV k
{
¶¶ 
Encoder
·· 
=
·· 
JavaScriptEncoder
·· +
.
··+ ,'
UnsafeRelaxedJsonEscaping
··, E
,
··E F
WriteIndented
ΈΈ 
=
ΈΈ 
false
ΈΈ  %
}
ΉΉ 
)
ΉΉ 
)
ΉΉ 
;
ΉΉ 
return
»» 
default
»» 
;
»» 
}
ΌΌ 	
public
ΏΏ 
virtual
ΏΏ 
	ValueTask
ΏΏ  $
SetRedemptionDateAsync
ΏΏ! 7
(
ΏΏ7 8
TToken
ΏΏ8 >
token
ΏΏ? D
,
ΏΏD E
DateTimeOffset
ΏΏF T
?
ΏΏT U
date
ΏΏV Z
,
ΏΏZ [
CancellationToken
ΏΏ\ m
cancellationToken
ΏΏn 
)ΏΏ €
{
ΐΐ 	
if
ΑΑ 
(
ΑΑ 
token
ΑΑ 
==
ΑΑ 
null
ΑΑ 
)
ΑΑ 
{
ΒΒ 
throw
ΓΓ 
new
ΓΓ #
ArgumentNullException
ΓΓ /
(
ΓΓ/ 0
nameof
ΓΓ0 6
(
ΓΓ6 7
token
ΓΓ7 <
)
ΓΓ< =
)
ΓΓ= >
;
ΓΓ> ?
}
ΔΔ 
token
ΖΖ 
.
ΖΖ 
RedemptionDate
ΖΖ  
=
ΖΖ! "
date
ΖΖ# '
?
ΖΖ' (
.
ΖΖ( )
UtcDateTime
ΖΖ) 4
;
ΖΖ4 5
return
ΘΘ 
default
ΘΘ 
;
ΘΘ 
}
ΙΙ 	
public
ΜΜ 
virtual
ΜΜ 
	ValueTask
ΜΜ  !
SetReferenceIdAsync
ΜΜ! 4
(
ΜΜ4 5
TToken
ΜΜ5 ;
token
ΜΜ< A
,
ΜΜA B
string
ΜΜC I

identifier
ΜΜJ T
,
ΜΜT U
CancellationToken
ΜΜV g
cancellationToken
ΜΜh y
)
ΜΜy z
{
ΝΝ 	
if
ΞΞ 
(
ΞΞ 
token
ΞΞ 
==
ΞΞ 
null
ΞΞ 
)
ΞΞ 
{
ΟΟ 
throw
ΠΠ 
new
ΠΠ #
ArgumentNullException
ΠΠ /
(
ΠΠ/ 0
nameof
ΠΠ0 6
(
ΠΠ6 7
token
ΠΠ7 <
)
ΠΠ< =
)
ΠΠ= >
;
ΠΠ> ?
}
ΡΡ 
token
ΣΣ 
.
ΣΣ 
ReferenceId
ΣΣ 
=
ΣΣ 

identifier
ΣΣ  *
;
ΣΣ* +
return
ΥΥ 
default
ΥΥ 
;
ΥΥ 
}
ΦΦ 	
public
ΩΩ 
virtual
ΩΩ 
	ValueTask
ΩΩ  
SetStatusAsync
ΩΩ! /
(
ΩΩ/ 0
TToken
ΩΩ0 6
token
ΩΩ7 <
,
ΩΩ< =
string
ΩΩ> D
status
ΩΩE K
,
ΩΩK L
CancellationToken
ΩΩM ^
cancellationToken
ΩΩ_ p
)
ΩΩp q
{
ΪΪ 	
if
ΫΫ 
(
ΫΫ 
token
ΫΫ 
==
ΫΫ 
null
ΫΫ 
)
ΫΫ 
{
άά 
throw
έέ 
new
έέ #
ArgumentNullException
έέ /
(
έέ/ 0
nameof
έέ0 6
(
έέ6 7
token
έέ7 <
)
έέ< =
)
έέ= >
;
έέ> ?
}
ήή 
if
ΰΰ 
(
ΰΰ 
string
ΰΰ 
.
ΰΰ 
IsNullOrEmpty
ΰΰ $
(
ΰΰ$ %
status
ΰΰ% +
)
ΰΰ+ ,
)
ΰΰ, -
{
αα 
throw
ββ 
new
ββ 
ArgumentException
ββ +
(
ββ+ ,
$str
ββ, Q
,
ββQ R
nameof
ββS Y
(
ββY Z
status
ββZ `
)
ββ` a
)
ββa b
;
ββb c
}
γγ 
token
εε 
.
εε 
Status
εε 
=
εε 
status
εε !
;
εε! "
return
ηη 
default
ηη 
;
ηη 
}
θθ 	
public
λλ 
virtual
λλ 
	ValueTask
λλ  
SetSubjectAsync
λλ! 0
(
λλ0 1
TToken
λλ1 7
token
λλ8 =
,
λλ= >
string
λλ? E
subject
λλF M
,
λλM N
CancellationToken
λλO `
cancellationToken
λλa r
)
λλr s
{
μμ 	
if
νν 
(
νν 
token
νν 
==
νν 
null
νν 
)
νν 
{
ξξ 
throw
οο 
new
οο #
ArgumentNullException
οο /
(
οο/ 0
nameof
οο0 6
(
οο6 7
token
οο7 <
)
οο< =
)
οο= >
;
οο> ?
}
ππ 
if
ςς 
(
ςς 
string
ςς 
.
ςς 
IsNullOrEmpty
ςς $
(
ςς$ %
subject
ςς% ,
)
ςς, -
)
ςς- .
{
σσ 
throw
ττ 
new
ττ 
ArgumentException
ττ +
(
ττ+ ,
$str
ττ, R
,
ττR S
nameof
ττT Z
(
ττZ [
subject
ττ[ b
)
ττb c
)
ττc d
;
ττd e
}
υυ 
token
χχ 
.
χχ 
Subject
χχ 
=
χχ 
subject
χχ #
;
χχ# $
return
ωω 
default
ωω 
;
ωω 
}
ϊϊ 	
public
ύύ 
virtual
ύύ 
	ValueTask
ύύ  
SetTypeAsync
ύύ! -
(
ύύ- .
TToken
ύύ. 4
token
ύύ5 :
,
ύύ: ;
string
ύύ< B
type
ύύC G
,
ύύG H
CancellationToken
ύύI Z
cancellationToken
ύύ[ l
)
ύύl m
{
ώώ 	
if
ÿÿ 
(
ÿÿ 
token
ÿÿ 
==
ÿÿ 
null
ÿÿ 
)
ÿÿ 
{
€€ 
throw
 
new
 #
ArgumentNullException
 /
(
/ 0
nameof
0 6
(
6 7
token
7 <
)
< =
)
= >
;
> ?
}
‚‚ 
if
„„ 
(
„„ 
string
„„ 
.
„„ 
IsNullOrEmpty
„„ $
(
„„$ %
type
„„% )
)
„„) *
)
„„* +
{
…… 
throw
†† 
new
†† 
ArgumentException
†† +
(
††+ ,
$str
††, U
,
††U V
nameof
††W ]
(
††] ^
type
††^ b
)
††b c
)
††c d
;
††d e
}
‡‡ 
token
‰‰ 
.
‰‰ 
Type
‰‰ 
=
‰‰ 
type
‰‰ 
;
‰‰ 
return
‹‹ 
default
‹‹ 
;
‹‹ 
}
 	
public
 
virtual
 
async
 
	ValueTask
 &
UpdateAsync
' 2
(
2 3
TToken
3 9
token
: ?
,
? @
CancellationToken
A R
cancellationToken
S d
)
d e
{
 	
if
‘‘ 
(
‘‘ 
token
‘‘ 
==
‘‘ 
null
‘‘ 
)
‘‘ 
{
’’ 
throw
““ 
new
““ #
ArgumentNullException
““ /
(
““/ 0
nameof
““0 6
(
““6 7
token
““7 <
)
““< =
)
““= >
;
““> ?
}
”” 
cancellationToken
–– 
.
–– *
ThrowIfCancellationRequested
–– :
(
––: ;
)
––; <
;
––< =
_session
 
.
 
Save
 
(
 
token
 
,
  
checkConcurrency
! 1
:
1 2
true
3 7
)
7 8
;
8 9
try
 
{
›› 
await
 
_session
 
.
 
CommitAsync
 *
(
* +
)
+ ,
;
, -
}
 
catch
 
(
 "
ConcurrencyException
 '
	exception
( 1
)
1 2
{
 
throw
   
new
   "
OpenIddictExceptions
   .
.
  . /"
ConcurrencyException
  / C
(
  C D
new
  D G
StringBuilder
  H U
(
  U V
)
  V W
.
΅΅ 

AppendLine
΅΅ 
(
΅΅  
$str
΅΅  r
)
΅΅r s
.
ΆΆ 
Append
ΆΆ 
(
ΆΆ 
$str
ΆΆ Y
)
ΆΆY Z
.
££ 
ToString
££ 
(
££ 
)
££ 
,
££  
	exception
££! *
)
££* +
;
££+ ,
}
¤¤ 
}
¥¥ 	
}
¦¦ 
}§§ 