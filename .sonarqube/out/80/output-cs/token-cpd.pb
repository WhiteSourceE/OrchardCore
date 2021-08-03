�
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdApplicationDescriptor.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdAuthorizationDescriptor.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdScopeDescriptor.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Descriptors\OpenIdTokenDescriptor.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdApplicationManager.cs
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
)	 �
;
� �
} 
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdAuthorizationManager.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdScopeManager.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Managers\IOpenIdTokenManager.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdApplicationStore.cs
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
class			| �
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
} �

�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdAuthorizationStore.cs
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
TAuthorization	u �
:
� �
class
� �
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdScopeStore.cs
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
} �	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Abstractions\Stores\IOpenIdTokenStore.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\OpenIdConstants.cs
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
}## �L
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\OpenIdExtensions.cs
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
}dd ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdApplicationManager.cs
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
default	))~ �
)
))� �
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
default	>>| �
)
>>� �
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
�� 
yield
�� !
return
��" (
application
��) 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
SetRolesAsync
��' 4
(
��4 5
TApplication
��5 A
application
��B M
,
��M N
ImmutableArray
�� 
<
�� 
string
�� !
>
��! "
roles
��# (
,
��( )
CancellationToken
��* ;
cancellationToken
��< M
=
��N O
default
��P W
)
��W X
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 
roles
�� 
.
�� 
Any
�� 
(
�� 
role
�� 
=>
�� !
string
��" (
.
��( )
IsNullOrEmpty
��) 6
(
��6 7
role
��7 ;
)
��; <
)
��< =
)
��= >
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Q
,
��Q R
nameof
��S Y
(
��Y Z
roles
��Z _
)
��_ `
)
��` a
;
��a b
}
�� 
if
�� 
(
�� 
Store
�� 
is
�� %
IOpenIdApplicationStore
�� 0
<
��0 1
TApplication
��1 =
>
��= >
store
��? D
)
��D E
{
�� 
await
�� 
store
�� 
.
�� 
SetRolesAsync
�� )
(
��) *
application
��* 5
,
��5 6
roles
��7 <
,
��< =
cancellationToken
��> O
)
��O P
;
��P Q
}
�� 
else
�� 
{
�� 
var
�� 

properties
�� 
=
��  
await
��! &
Store
��' ,
.
��, - 
GetPropertiesAsync
��- ?
(
��? @
application
��@ K
,
��K L
cancellationToken
��M ^
)
��^ _
;
��_ `

properties
�� 
=
�� 

properties
�� '
.
��' (
SetItem
��( /
(
��/ 0
OpenIdConstants
��0 ?
.
��? @

Properties
��@ J
.
��J K
Roles
��K P
,
��P Q
JsonSerializer
��R `
.
��` a
Deserialize
��a l
<
��l m
JsonElement
��m x
>
��x y
(
��y z
JsonSerializer
�� "
.
��" #
	Serialize
��# ,
(
��, -
roles
��- 2
,
��2 3
new
��4 7#
JsonSerializerOptions
��8 M
{
�� 
Encoder
�� 
=
��  !
JavaScriptEncoder
��" 3
.
��3 4'
UnsafeRelaxedJsonEscaping
��4 M
}
�� 
)
�� 
)
�� 
)
�� 
;
�� 
await
�� 
Store
�� 
.
��  
SetPropertiesAsync
�� .
(
��. /
application
��/ :
,
��: ;

properties
��< F
,
��F G
cancellationToken
��H Y
)
��Y Z
;
��Z [
}
�� 
await
�� 
UpdateAsync
�� 
(
�� 
application
�� )
,
��) *
cancellationToken
��+ <
)
��< =
;
��= >
}
�� 	
public
�� 
override
�� 
async
�� 
	ValueTask
�� '
PopulateAsync
��( 5
(
��5 6
TApplication
��6 B
application
��C N
,
��N O-
OpenIddictApplicationDescriptor
�� +

descriptor
��, 6
,
��6 7
CancellationToken
��8 I
cancellationToken
��J [
=
��\ ]
default
��^ e
)
��e f
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 

descriptor
�� 
==
�� 
null
�� "
)
��" #
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7

descriptor
��7 A
)
��A B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 

descriptor
�� 
is
�� )
OpenIdApplicationDescriptor
�� 9
model
��: ?
)
��? @
{
�� 
if
�� 
(
�� 
Store
�� 
is
�� %
IOpenIdApplicationStore
�� 4
<
��4 5
TApplication
��5 A
>
��A B
store
��C H
)
��H I
{
�� 
await
�� 
store
�� 
.
��  
SetRolesAsync
��  -
(
��- .
application
��. 9
,
��9 :
model
��; @
.
��@ A
Roles
��A F
.
��F G
ToImmutableArray
��G W
(
��W X
)
��X Y
,
��Y Z
cancellationToken
��[ l
)
��l m
;
��m n
}
�� 
else
�� 
{
�� 
var
�� 

properties
�� "
=
��# $
await
��% *
Store
��+ 0
.
��0 1 
GetPropertiesAsync
��1 C
(
��C D
application
��D O
,
��O P
cancellationToken
��Q b
)
��b c
;
��c d

properties
�� 
=
��  

properties
��! +
.
��+ ,
SetItem
��, 3
(
��3 4
OpenIdConstants
��4 C
.
��C D

Properties
��D N
.
��N O
Roles
��O T
,
��T U
JsonSerializer
��V d
.
��d e
Deserialize
��e p
<
��p q
JsonElement
��q |
>
��| }
(
��} ~
JsonSerializer
�� &
.
��& '
	Serialize
��' 0
(
��0 1
model
��1 6
.
��6 7
Roles
��7 <
,
��< =
new
��> A#
JsonSerializerOptions
��B W
{
�� 
Encoder
�� #
=
��$ %
JavaScriptEncoder
��& 7
.
��7 8'
UnsafeRelaxedJsonEscaping
��8 Q
}
�� 
)
�� 
)
�� 
)
�� 
;
�� 
await
�� 
Store
�� 
.
��   
SetPropertiesAsync
��  2
(
��2 3
application
��3 >
,
��> ?

properties
��@ J
,
��J K
cancellationToken
��L ]
)
��] ^
;
��^ _
}
�� 
}
�� 
await
�� 
base
�� 
.
�� 
PopulateAsync
�� $
(
��$ %
application
��% 0
,
��0 1

descriptor
��2 <
,
��< =
cancellationToken
��> O
)
��O P
;
��P Q
}
�� 	
public
�� 
override
�� 
async
�� 
	ValueTask
�� '
PopulateAsync
��( 5
(
��5 6-
OpenIddictApplicationDescriptor
��6 U

descriptor
��V `
,
��` a
TApplication
�� 
application
�� $
,
��$ %
CancellationToken
��& 7
cancellationToken
��8 I
=
��J K
default
��L S
)
��S T
{
�� 	
if
�� 
(
�� 

descriptor
�� 
==
�� 
null
�� "
)
��" #
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7

descriptor
��7 A
)
��A B
)
��B C
;
��C D
}
�� 
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 

descriptor
�� 
is
�� )
OpenIdApplicationDescriptor
�� 9
model
��: ?
)
��? @
{
�� 
model
�� 
.
�� 
Roles
�� 
.
�� 
	UnionWith
�� %
(
��% &
await
��& +
GetRolesAsync
��, 9
(
��9 :
application
��: E
,
��E F
cancellationToken
��G X
)
��X Y
)
��Y Z
;
��Z [
}
�� 
await
�� 
base
�� 
.
�� 
PopulateAsync
�� $
(
��$ %

descriptor
��% /
,
��/ 0
application
��1 <
,
��< =
cancellationToken
��> O
)
��O P
;
��P Q
}
�� 	
public
�� 
override
�� 
IAsyncEnumerable
�� (
<
��( )
ValidationResult
��) 9
>
��9 :
ValidateAsync
��; H
(
��H I
TApplication
�� 
application
�� $
,
��$ %
CancellationToken
��& 7
cancellationToken
��8 I
=
��J K
default
��L S
)
��S T
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
ExecuteAsync
�� 
(
��  
)
��  !
;
��! "
async
�� 
IAsyncEnumerable
�� "
<
��" #
ValidationResult
��# 3
>
��3 4
ExecuteAsync
��5 A
(
��A B
)
��B C
{
�� 
await
�� 
foreach
�� 
(
�� 
var
�� "
result
��# )
in
��* ,
base
��- 1
.
��1 2
ValidateAsync
��2 ?
(
��? @
application
��@ K
,
��K L
cancellationToken
��M ^
)
��^ _
)
��_ `
{
�� 
yield
�� 
return
��  
result
��! '
;
��' (
}
�� 
foreach
�� 
(
�� 
var
�� 
role
�� !
in
��" $
await
��% *
GetRolesAsync
��+ 8
(
��8 9
application
��9 D
,
��D E
cancellationToken
��F W
)
��W X
)
��X Y
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
role
��- 1
)
��1 2
)
��2 3
{
�� 
yield
�� 
return
�� $
new
��% (
ValidationResult
��) 9
(
��9 :
$str
��: Z
)
��Z [
;
��[ \
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
async
�� 
	ValueTask
�� 
<
�� 
object
�� 
>
�� '
IOpenIdApplicationManager
��  9
.
��9 :#
FindByPhysicalIdAsync
��: O
(
��O P
string
��P V

identifier
��W a
,
��a b
CancellationToken
��c t 
cancellationToken��u �
)��� �
=>
�� 
await
�� #
FindByPhysicalIdAsync
�� *
(
��* +

identifier
��+ 5
,
��5 6
cancellationToken
��7 H
)
��H I
;
��I J
	ValueTask
�� 
<
�� 
string
�� 
>
�� '
IOpenIdApplicationManager
�� 3
.
��3 4 
GetPhysicalIdAsync
��4 F
(
��F G
object
��G M
application
��N Y
,
��Y Z
CancellationToken
��[ l
cancellationToken
��m ~
)
��~ 
=>
��  
GetPhysicalIdAsync
�� !
(
��! "
(
��" #
TApplication
��# /
)
��/ 0
application
��0 ;
,
��; <
cancellationToken
��= N
)
��N O
;
��O P
	ValueTask
�� 
<
�� 
ImmutableArray
��  
<
��  !
string
��! '
>
��' (
>
��( )'
IOpenIdApplicationManager
��* C
.
��C D
GetRolesAsync
��D Q
(
��Q R
object
��R X
application
��Y d
,
��d e
CancellationToken
��f w 
cancellationToken��x �
)��� �
=>
�� 
GetRolesAsync
�� 
(
�� 
(
�� 
TApplication
�� *
)
��* +
application
��+ 6
,
��6 7
cancellationToken
��8 I
)
��I J
;
��J K
IAsyncEnumerable
�� 
<
�� 
object
�� 
>
��  '
IOpenIdApplicationManager
��! :
.
��: ;
ListInRoleAsync
��; J
(
��J K
string
��K Q
role
��R V
,
��V W
CancellationToken
��X i
cancellationToken
��j {
)
��{ |
=>
�� 
ListInRoleAsync
�� 
(
�� 
role
�� #
,
��# $
cancellationToken
��% 6
)
��6 7
;
��7 8
	ValueTask
�� '
IOpenIdApplicationManager
�� +
.
��+ ,
SetRolesAsync
��, 9
(
��9 :
object
��: @
application
��A L
,
��L M
ImmutableArray
��N \
<
��\ ]
string
��] c
>
��c d
roles
��e j
,
��j k
CancellationToken
��l } 
cancellationToken��~ �
)��� �
=>
�� 
SetRolesAsync
�� 
(
�� 
(
�� 
TApplication
�� *
)
��* +
application
��+ 6
,
��6 7
roles
��8 =
,
��= >
cancellationToken
��? P
)
��P Q
;
��Q R
}
�� 
}�� �)
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdAuthorizationManager.cs
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
""� �
)
""� �
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
77� �
)
77� �
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
cancellationToken	CCw �
)
CC� �
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
cancellationToken	FFq �
)
FF� �
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
}II �'
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdScopeManager.cs
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
)	!! �
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
cancellationToken	BBo �
)
BB� �
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
}HH �'
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\Services\Managers\OpenIdTokenManager.cs
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
)	!! �
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
cancellationToken	BBo �
)
BB� �
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
}HH �F
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdApplicationIndex.cs
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
}aa �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdAuthorizationIndex.cs
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
}!! � 
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdScopeIndex.cs
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
}11 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Indexes\OpenIdTokenIndex.cs
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
}'' ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Migrations\OpenIdMigrations.cs
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
�� 
int
�� 
UpdateFrom2
�� 
(
�� 
)
��  
{
�� 	
SchemaBuilder
�� 
.
�� "
DropReduceIndexTable
�� .
<
��. /;
-OpenIdApplicationByPostLogoutRedirectUriIndex
��/ \
>
��\ ]
(
��] ^
null
��^ b
)
��b c
;
��c d
SchemaBuilder
�� 
.
�� "
DropReduceIndexTable
�� .
<
��. /1
#OpenIdApplicationByRedirectUriIndex
��/ R
>
��R S
(
��S T
null
��T X
)
��X Y
;
��Y Z
SchemaBuilder
�� 
.
�� "
DropReduceIndexTable
�� .
<
��. /.
 OpenIdApplicationByRoleNameIndex
��/ O
>
��O P
(
��P Q
null
��Q U
)
��U V
;
��V W
SchemaBuilder
�� 
.
�� $
CreateReduceIndexTable
�� 0
<
��0 1'
OpenIdAppByLogoutUriIndex
��1 J
>
��J K
(
��K L
table
��L Q
=>
��R T
table
��U Z
.
�� 
Column
�� 
<
�� 
string
�� 
>
�� 
(
��  
nameof
��  &
(
��& ''
OpenIdAppByLogoutUriIndex
��' @
.
��@ A
LogoutRedirectUri
��A R
)
��R S
)
��S T
.
�� 
Column
�� 
<
�� 
int
�� 
>
�� 
(
�� 
nameof
�� #
(
��# $'
OpenIdAppByLogoutUriIndex
��$ =
.
��= >
Count
��> C
)
��C D
)
��D E
)
��E F
;
��F G
SchemaBuilder
�� 
.
�� $
CreateReduceIndexTable
�� 0
<
��0 1)
OpenIdAppByRedirectUriIndex
��1 L
>
��L M
(
��M N
table
��N S
=>
��T V
table
��W \
.
�� 
Column
�� 
<
�� 
string
�� 
>
�� 
(
��  
nameof
��  &
(
��& ')
OpenIdAppByRedirectUriIndex
��' B
.
��B C
RedirectUri
��C N
)
��N O
)
��O P
.
�� 
Column
�� 
<
�� 
int
�� 
>
�� 
(
�� 
nameof
�� #
(
��# $)
OpenIdAppByRedirectUriIndex
��$ ?
.
��? @
Count
��@ E
)
��E F
)
��F G
)
��G H
;
��H I
SchemaBuilder
�� 
.
�� $
CreateReduceIndexTable
�� 0
<
��0 1&
OpenIdAppByRoleNameIndex
��1 I
>
��I J
(
��J K
table
��K P
=>
��Q S
table
��T Y
.
�� 
Column
�� 
<
�� 
string
�� 
>
�� 
(
��  
nameof
��  &
(
��& '&
OpenIdAppByRoleNameIndex
��' ?
.
��? @
RoleName
��@ H
)
��H I
)
��I J
.
�� 
Column
�� 
<
�� 
int
�� 
>
�� 
(
�� 
nameof
�� #
(
��# $&
OpenIdAppByRoleNameIndex
��$ <
.
��< =
Count
��= B
)
��B C
)
��C D
)
��D E
;
��E F
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
UpdateFrom3
�� 
(
�� 
)
��  
{
�� 	
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *&
OpenIdAuthorizationIndex
��* B
>
��B C
(
��C D
table
��D I
=>
��J L
table
��M R
.
�� 
	AddColumn
�� 
<
�� 
DateTime
�� #
>
��# $
(
��$ %
nameof
��% +
(
��+ ,&
OpenIdAuthorizationIndex
��, D
.
��D E
CreationDate
��E Q
)
��Q R
)
��R S
)
��S T
;
��T U
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
	AddColumn
�� 
<
�� 
DateTime
�� #
>
��# $
(
��$ %
nameof
��% +
(
��+ ,
OpenIdTokenIndex
��, <
.
��< =
CreationDate
��= I
)
��I J
)
��J K
)
��K L
;
��L M
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
UpdateFrom4
�� 
(
�� 
)
��  
{
�� 	
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *$
OpenIdApplicationIndex
��* @
>
��@ A
(
��A B
table
��B G
=>
��H J
table
��K P
.
�� 
CreateIndex
�� 
(
�� 
$str
�� D
,
��D E
$str
��  
,
��  !
nameof
�� 
(
�� $
OpenIdApplicationIndex
�� 1
.
��1 2
ApplicationId
��2 ?
)
��? @
,
��@ A
nameof
�� 
(
�� $
OpenIdApplicationIndex
�� 1
.
��1 2
ClientId
��2 :
)
��: ;
)
��; <
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *&
OpenIdAuthorizationIndex
��* B
>
��B C
(
��C D
table
��D I
=>
��J L
table
��M R
.
�� 
CreateIndex
�� 
(
�� 
$str
�� T
,
��T U
$str
��  
,
��  !
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
ApplicationId
��4 A
)
��A B
,
��B C
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
Status
��4 :
)
��: ;
,
��; <
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
Subject
��4 ;
)
��; <
)
��< =
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *&
OpenIdAuthorizationIndex
��* B
>
��B C
(
��C D
table
��D I
=>
��J L
table
��M R
.
�� 
CreateIndex
�� 
(
�� 
$str
�� V
,
��V W
$str
��  
,
��  !
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
AuthorizationId
��4 C
)
��C D
,
��D E
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
Status
��4 :
)
��: ;
,
��; <
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
Type
��4 8
)
��8 9
,
��9 :
nameof
�� 
(
�� &
OpenIdAuthorizationIndex
�� 3
.
��3 4
CreationDate
��4 @
)
��@ A
)
��A B
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
OpenIdScopeIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� >
,
��> ?
$str
��  
,
��  !
nameof
�� 
(
�� 
OpenIdScopeIndex
�� +
.
��+ ,
Name
��, 0
)
��0 1
,
��1 2
nameof
�� 
(
�� 
OpenIdScopeIndex
�� +
.
��+ ,
ScopeId
��, 3
)
��3 4
)
��4 5
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� L
,
��L M
$str
��  
,
��  !
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
ApplicationId
��, 9
)
��9 :
,
��: ;
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
Status
��, 2
)
��2 3
,
��3 4
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
Subject
��, 3
)
��3 4
)
��4 5
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� N
,
��N O
$str
��  
,
��  !
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
AuthorizationId
��, ;
)
��; <
,
��< =
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
Status
��, 2
)
��2 3
,
��3 4
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
Type
��, 0
)
��0 1
,
��1 2
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
CreationDate
��, 8
)
��8 9
,
��9 :
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
ExpirationDate
��, :
)
��: ;
)
��; <
)
�� 
;
�� 
SchemaBuilder
�� 
.
�� 
AlterIndexTable
�� )
<
��) *
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
table
��< A
=>
��B D
table
��E J
.
�� 
CreateIndex
�� 
(
�� 
$str
�� F
,
��F G
$str
��  
,
��  !
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
TokenId
��, 3
)
��3 4
,
��4 5
nameof
�� 
(
�� 
OpenIdTokenIndex
�� +
.
��+ ,
ReferenceId
��, 7
)
��7 8
)
��8 9
)
�� 
;
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� � 
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdApplication.cs
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
}WW �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdAuthorization.cs
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
}88 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdScope.cs
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
}99 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Models\OpenIdToken.cs
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
}QQ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdApplicationStoreResolver.cs
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
}88 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdAuthorizationStoreResolver.cs
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
}88 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdScopeStoreResolver.cs
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
}88 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Resolvers\OpenIdTokenStoreResolver.cs
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
}88 ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdApplicationStore.cs
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
CancellationToken	''v �
cancellationToken
''� �
)
''� �
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
FirstOrDefaultAsync	PPz �
(
PP� �
)
PP� �
;
PP� �
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
)	TT �
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
FirstOrDefaultAsync	]]u �
(
]]� �
)
]]� �
;
]]� �
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
cancellationToken	aap �
)
aa� �
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
cancellationToken	nny �
)
nn� �
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
cancellationToken	||o �
)
||� �
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
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
,
��R S
nameof
��T Z
(
��Z [
address
��[ b
)
��b c
)
��c d
;
��d e
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TApplication
��" .
,
��. /)
OpenIdAppByRedirectUriIndex
��0 K
>
��K L
(
��L M
index
�� 
=>
�� 
index
�� 
.
�� 
RedirectUri
�� *
==
��+ -
address
��. 5
)
��5 6
.
��6 7
ToAsyncEnumerable
��7 H
(
��H I
)
��I J
;
��J K
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TResult
��! (
>
��( )
GetAsync
��* 2
<
��2 3
TState
��3 9
,
��9 :
TResult
��; B
>
��B C
(
��C D
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TApplication
�� (
>
��( )
,
��) *
TState
��+ 1
,
��1 2

IQueryable
��3 =
<
��= >
TResult
��> E
>
��E F
>
��F G
query
��H M
,
��M N
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetClientIdAsync
��) 9
(
��9 :
TApplication
��: F
application
��G R
,
��R S
CancellationToken
��T e
cancellationToken
��f w
)
��w x
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
ClientId
��5 =
)
��= >
;
��> ?
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' ("
GetClientSecretAsync
��) =
(
��= >
TApplication
��> J
application
��K V
,
��V W
CancellationToken
��X i
cancellationToken
��j {
)
��{ |
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
ClientSecret
��5 A
)
��A B
;
��B C
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' ( 
GetClientTypeAsync
��) ;
(
��; <
TApplication
��< H
application
��I T
,
��T U
CancellationToken
��V g
cancellationToken
��h y
)
��y z
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
Type
��5 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (!
GetConsentTypeAsync
��) <
(
��< =
TApplication
��= I
application
��J U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
ConsentType
��5 @
)
��@ A
;
��A B
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (!
GetDisplayNameAsync
��) <
(
��< =
TApplication
��= I
application
��J U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
DisplayName
��5 @
)
��@ A
;
��A B
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
CultureInfo
��5 @
,
��@ A
string
��B H
>
��H I
>
��I J"
GetDisplayNamesAsync
��K _
(
��_ `
TApplication
�� 
application
�� $
,
��$ %
CancellationToken
��& 7
cancellationToken
��8 I
)
��I J
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 
application
�� 
.
�� 
DisplayNames
�� (
==
��) +
null
��, 0
)
��0 1
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
CultureInfo
��9 D
,
��D E
string
��F L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
CultureInfo
��j u
,
��u v
string
��w }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
CultureInfo
��5 @
,
��@ A
string
��B H
>
��H I
>
��I J
(
��J K
application
��K V
.
��V W
DisplayNames
��W c
)
��c d
;
��d e
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (

GetIdAsync
��) 3
(
��3 4
TApplication
��4 @
application
��A L
,
��L M
CancellationToken
��N _
cancellationToken
��` q
)
��q r
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
ApplicationId
��5 B
)
��B C
;
��C D
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8!
GetPermissionsAsync
��9 L
(
��L M
TApplication
��M Y
application
��Z e
,
��e f
CancellationToken
��g x 
cancellationToken��y �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
application
��9 D
.
��D E
Permissions
��E P
)
��P Q
;
��Q R
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' ( 
GetPhysicalIdAsync
��) ;
(
��; <
TApplication
��< H
application
��I T
,
��T U
CancellationToken
��V g
cancellationToken
��h y
)
��y z
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
application
��) 4
.
��4 5
Id
��5 7
.
��7 8
ToString
��8 @
(
��@ A
CultureInfo
��A L
.
��L M
InvariantCulture
��M ]
)
��] ^
)
��^ _
;
��_ `
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8,
GetPostLogoutRedirectUrisAsync
��9 W
(
��W X
TApplication
��X d
application
��e p
,
��p q 
CancellationToken��r �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
application
��9 D
.
��D E$
PostLogoutRedirectUris
��E [
)
��[ \
;
��\ ]
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J 
GetPropertiesAsync
��K ]
(
��] ^
TApplication
��^ j
application
��k v
,
��v w 
CancellationToken��x �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 
application
�� 
.
�� 

Properties
�� &
==
��' )
null
��* .
)
��. /
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
string
��9 ?
,
��? @
JsonElement
��A L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
string
��j p
,
��p q
JsonElement
��r }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J
(
��J K
JsonSerializer
�� 
.
�� 
Deserialize
�� *
<
��* +!
ImmutableDictionary
��+ >
<
��> ?
string
��? E
,
��E F
JsonElement
��G R
>
��R S
>
��S T
(
��T U
application
��U `
.
��` a

Properties
��a k
.
��k l
ToString
��l t
(
��t u
)
��u v
)
��v w
)
��w x
;
��x y
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8"
GetRedirectUrisAsync
��9 M
(
��M N
TApplication
��N Z
application
��[ f
,
��f g
CancellationToken
��h y 
cancellationToken��z �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
application
��9 D
.
��D E
RedirectUris
��E Q
)
��Q R
;
��R S
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8"
GetRequirementsAsync
��9 M
(
��M N
TApplication
��N Z
application
��[ f
,
��f g
CancellationToken
��h y 
cancellationToken��z �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
application
��9 D
.
��D E
Requirements
��E Q
)
��Q R
;
��R S
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TApplication
��! -
>
��- .
InstantiateAsync
��/ ?
(
��? @
CancellationToken
��@ Q
cancellationToken
��R c
)
��c d
=>
�� 
new
�� 
	ValueTask
�� 
<
�� 
TApplication
�� )
>
��) *
(
��* +
new
��+ .
TApplication
��/ ;
{
��< =
ApplicationId
��> K
=
��L M
Guid
��N R
.
��R S
NewGuid
��S Z
(
��Z [
)
��[ \
.
��\ ]
ToString
��] e
(
��e f
$str
��f i
)
��i j
}
��k l
)
��l m
;
��m n
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TApplication
��( 4
>
��4 5
	ListAsync
��6 ?
(
��? @
int
��@ C
?
��C D
count
��E J
,
��J K
int
��L O
?
��O P
offset
��Q W
,
��W X
CancellationToken
��Y j
cancellationToken
��k |
)
��| }
{
�� 	
var
�� 
query
�� 
=
�� 
_session
��  
.
��  !
Query
��! &
<
��& '
TApplication
��' 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
offset
�� 
.
�� 
HasValue
�� 
)
��  
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Skip
�� "
(
��" #
offset
��# )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
count
�� 
.
�� 
HasValue
�� 
)
�� 
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Take
�� "
(
��" #
count
��# (
.
��( )
Value
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
query
�� 
.
�� 
ToAsyncEnumerable
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TResult
��( /
>
��/ 0
	ListAsync
��1 :
<
��: ;
TState
��; A
,
��A B
TResult
��C J
>
��J K
(
��K L
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TApplication
�� (
>
��( )
,
��) *
TState
��+ 1
,
��1 2

IQueryable
��3 =
<
��= >
TResult
��> E
>
��E F
>
��F G
query
��H M
,
��M N
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
	ValueTask
��  
SetClientIdAsync
��! 1
(
��1 2
TApplication
��2 >
application
��? J
,
��J K
string
�� 

identifier
�� 
,
�� 
CancellationToken
�� 0
cancellationToken
��1 B
)
��B C
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
ClientId
��  
=
��! "

identifier
��# -
;
��- .
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetClientSecretAsync
��! 5
(
��5 6
TApplication
��6 B
application
��C N
,
��N O
string
��P V
secret
��W ]
,
��] ^
CancellationToken
��_ p 
cancellationToken��q �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
ClientSecret
�� $
=
��% &
secret
��' -
;
��- .
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��   
SetClientTypeAsync
��! 3
(
��3 4
TApplication
��4 @
application
��A L
,
��L M
string
��N T
type
��U Y
,
��Y Z
CancellationToken
��[ l
cancellationToken
��m ~
)
��~ 
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
Type
�� 
=
�� 
type
�� #
;
��# $
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  !
SetConsentTypeAsync
��! 4
(
��4 5
TApplication
��5 A
application
��B M
,
��M N
string
��O U
type
��V Z
,
��Z [
CancellationToken
��\ m
cancellationToken
��n 
)�� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
ConsentType
�� #
=
��$ %
type
��& *
;
��* +
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  !
SetDisplayNameAsync
��! 4
(
��4 5
TApplication
��5 A
application
��B M
,
��M N
string
��O U
name
��V Z
,
��Z [
CancellationToken
��\ m
cancellationToken
��n 
)�� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
DisplayName
�� #
=
��$ %
name
��& *
;
��* +
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetDisplayNamesAsync
��! 5
(
��5 6
TApplication
��6 B
application
��C N
,
��N O!
ImmutableDictionary
��P c
<
��c d
CultureInfo
��d o
,
��o p
string
��q w
>
��w x
names
��y ~
,
��~ !
CancellationToken��� �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
DisplayNames
�� $
=
��% &
names
��' ,
;
��, -
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  !
SetPermissionsAsync
��! 4
(
��4 5
TApplication
��5 A
application
��B M
,
��M N
ImmutableArray
��O ]
<
��] ^
string
��^ d
>
��d e
permissions
��f q
,
��q r 
CancellationToken��s �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
Permissions
�� #
=
��$ %
permissions
��& 1
;
��1 2
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  ,
SetPostLogoutRedirectUrisAsync
��! ?
(
��? @
TApplication
��@ L
application
��M X
,
��X Y
ImmutableArray
�� 
<
�� 
string
�� !
>
��! "
	addresses
��# ,
,
��, -
CancellationToken
��. ?
cancellationToken
��@ Q
)
��Q R
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� $
PostLogoutRedirectUris
�� .
=
��/ 0
	addresses
��1 :
;
��: ;
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��   
SetPropertiesAsync
��! 3
(
��3 4
TApplication
��4 @
application
��A L
,
��L M!
ImmutableDictionary
��N a
<
��a b
string
��b h
,
��h i
JsonElement
��j u
>
��u v

properties��w �
,��� �!
CancellationToken��� �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
if
�� 
(
�� 

properties
�� 
==
�� 
null
�� "
||
��# %

properties
��& 0
.
��0 1
IsEmpty
��1 8
)
��8 9
{
�� 
application
�� 
.
�� 

Properties
�� &
=
��' (
null
��) -
;
��- .
return
�� 
default
�� 
;
�� 
}
�� 
application
�� 
.
�� 

Properties
�� "
=
��# $
JObject
��% ,
.
��, -
Parse
��- 2
(
��2 3
JsonSerializer
��3 A
.
��A B
	Serialize
��B K
(
��K L

properties
��L V
,
��V W
new
��X [#
JsonSerializerOptions
��\ q
{
�� 
Encoder
�� 
=
�� 
JavaScriptEncoder
�� +
.
��+ ,'
UnsafeRelaxedJsonEscaping
��, E
,
��E F
WriteIndented
�� 
=
�� 
false
��  %
}
�� 
)
�� 
)
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetRedirectUrisAsync
��! 5
(
��5 6
TApplication
��6 B
application
��C N
,
��N O
ImmutableArray
�� 
<
�� 
string
�� !
>
��! "
	addresses
��# ,
,
��, -
CancellationToken
��. ?
cancellationToken
��@ Q
)
��Q R
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
RedirectUris
�� $
=
��% &
	addresses
��' 0
;
��0 1
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetRequirementsAsync
��! 5
(
��5 6
TApplication
��6 B
application
��C N
,
��N O
ImmutableArray
�� 
<
�� 
string
�� !
>
��! "
requirements
��# /
,
��/ 0
CancellationToken
��1 B
cancellationToken
��C T
)
��T U
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
Requirements
�� $
=
��% &
requirements
��' 3
;
��3 4
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
UpdateAsync
��' 2
(
��2 3
TApplication
��3 ?
application
��@ K
,
��K L
CancellationToken
��M ^
cancellationToken
��_ p
)
��p q
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
_session
�� 
.
�� 
Save
�� 
(
�� 
application
�� %
,
��% &
checkConcurrency
��' 7
:
��7 8
true
��9 =
)
��= >
;
��> ?
try
�� 
{
�� 
await
�� 
_session
�� 
.
�� 
CommitAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� "
ConcurrencyException
�� '
	exception
��( 1
)
��1 2
{
�� 
throw
�� 
new
�� "
OpenIddictExceptions
�� .
.
��. /"
ConcurrencyException
��/ C
(
��C D
new
��D G
StringBuilder
��H U
(
��U V
)
��V W
.
�� 

AppendLine
�� 
(
��  
$str
��  x
)
��x y
.
�� 
Append
�� 
(
�� 
$str
�� _
)
��_ `
.
�� 
ToString
�� 
(
�� 
)
�� 
,
��  
	exception
��! *
)
��* +
;
��+ ,
}
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
GetRolesAsync
��9 F
(
��F G
TApplication
��G S
application
��T _
,
��_ `
CancellationToken
��a r 
cancellationToken��s �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
application
��9 D
.
��D E
Roles
��E J
)
��J K
;
��K L
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TApplication
��( 4
>
��4 5
ListInRoleAsync
��6 E
(
��E F
string
��F L
role
��M Q
,
��Q R
CancellationToken
��S d
cancellationToken
��e v
)
��v w
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
role
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, T
,
��T U
nameof
��V \
(
��\ ]
role
��] a
)
��a b
)
��b c
;
��c d
}
�� 
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TApplication
��" .
,
��. /&
OpenIdAppByRoleNameIndex
��0 H
>
��H I
(
��I J
index
��J O
=>
��P R
index
��S X
.
��X Y
RoleName
��Y a
==
��b d
role
��e i
)
��i j
.
��j k
ToAsyncEnumerable
��k |
(
��| }
)
��} ~
;
��~ 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetRolesAsync
��! .
(
��. /
TApplication
��/ ;
application
��< G
,
��G H
ImmutableArray
��I W
<
��W X
string
��X ^
>
��^ _
roles
��` e
,
��e f
CancellationToken
��g x 
cancellationToken��y �
)��� �
{
�� 	
if
�� 
(
�� 
application
�� 
==
�� 
null
�� #
)
��# $
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
application
��7 B
)
��B C
)
��C D
;
��D E
}
�� 
application
�� 
.
�� 
Roles
�� 
=
�� 
roles
��  %
;
��% &
return
�� 
default
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdAuthorizationStore.cs
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
CancellationToken	))x �
cancellationToken
))� �
)
))� �
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
(	rr �
)
rr� �
;
rr� �
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
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, \
,
��\ ]
nameof
��^ d
(
��d e
client
��e k
)
��k l
)
��l m
;
��m n
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
status
��% +
)
��+ ,
)
��, -
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Q
,
��Q R
nameof
��S Y
(
��Y Z
client
��Z `
)
��` a
)
��a b
;
��b c
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
type
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, O
,
��O P
nameof
��Q W
(
��W X
client
��X ^
)
��^ _
)
��_ `
;
��` a
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TAuthorization
��" 0
,
��0 1&
OpenIdAuthorizationIndex
��2 J
>
��J K
(
��K L
index
�� 
=>
�� 
index
�� 
.
�� 
ApplicationId
�� ,
==
��- /
client
��0 6
&&
��7 9
index
��: ?
.
��? @
Subject
��@ G
==
��H J
subject
��K R
&&
��S U
index
�� 
.
�� 
Status
�� %
==
��& (
status
��) /
&&
��0 2
index
��3 8
.
��8 9
Type
��9 =
==
��> @
type
��A E
)
��E F
.
��F G
ToAsyncEnumerable
��G X
(
��X Y
)
��Y Z
;
��Z [
}
�� 	
public
�� 
virtual
�� 
async
�� 
IAsyncEnumerable
�� -
<
��- .
TAuthorization
��. <
>
��< =
	FindAsync
��> G
(
��G H
string
�� 
subject
�� 
,
�� 
string
�� "
client
��# )
,
��) *
string
��+ 1
status
��2 8
,
��8 9
string
��: @
type
��A E
,
��E F
ImmutableArray
�� 
<
�� 
string
�� !
>
��! "
scopes
��# )
,
��) *
[
��+ ,$
EnumeratorCancellation
��, B
]
��B C
CancellationToken
��D U
cancellationToken
��V g
)
��g h
{
�� 	
await
�� 
foreach
�� 
(
�� 
var
�� 
authorization
�� ,
in
��- /
	FindAsync
��0 9
(
��9 :
subject
��: A
,
��A B
client
��C I
,
��I J
status
��K Q
,
��Q R
type
��S W
,
��W X
cancellationToken
��Y j
)
��j k
)
��k l
{
�� 
if
�� 
(
�� 
new
�� 
HashSet
�� 
<
��  
string
��  &
>
��& '
(
��' (
await
��( -
GetScopesAsync
��. <
(
��< =
authorization
��= J
,
��J K
cancellationToken
��L ]
)
��] ^
,
��^ _
StringComparer
��` n
.
��n o
Ordinal
��o v
)
��v w
.
��w x
IsSupersetOf��x �
(��� �
scopes��� �
)��� �
)��� �
{
�� 
yield
�� 
return
��  
authorization
��! .
;
��. /
}
�� 
}
�� 
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TAuthorization
��( 6
>
��6 7&
FindByApplicationIdAsync
��8 P
(
��P Q
string
�� 

identifier
�� 
,
�� 
CancellationToken
�� 0
cancellationToken
��1 B
)
��B C
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TAuthorization
��" 0
,
��0 1&
OpenIdAuthorizationIndex
��2 J
>
��J K
(
��K L
index
�� 
=>
�� 
index
�� 
.
�� 
ApplicationId
�� ,
==
��- /

identifier
��0 :
)
��: ;
.
��; <
ToAsyncEnumerable
��< M
(
��M N
)
��N O
;
��O P
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
<
��& '
TAuthorization
��' 5
>
��5 6
FindByIdAsync
��7 D
(
��D E
string
��E K

identifier
��L V
,
��V W
CancellationToken
��X i
cancellationToken
��j {
)
��{ |
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
TAuthorization
��( 6
,
��6 7&
OpenIdAuthorizationIndex
��8 P
>
��P Q
(
��Q R
index
�� 
=>
�� 
index
�� 
.
�� 
AuthorizationId
�� .
==
��/ 1

identifier
��2 <
)
��< =
.
��= >!
FirstOrDefaultAsync
��> Q
(
��Q R
)
��R S
;
��S T
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
<
��& '
TAuthorization
��' 5
>
��5 6#
FindByPhysicalIdAsync
��7 L
(
��L M
string
��M S

identifier
��T ^
,
��^ _
CancellationToken
��` q 
cancellationToken��r �
)��� �
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
await
�� 
_session
�� !
.
��! "
GetAsync
��" *
<
��* +
TAuthorization
��+ 9
>
��9 :
(
��: ;
int
��; >
.
��> ?
Parse
��? D
(
��D E

identifier
��E O
,
��O P
CultureInfo
��Q \
.
��\ ]
InvariantCulture
��] m
)
��m n
)
��n o
;
��o p
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TAuthorization
��( 6
>
��6 7 
FindBySubjectAsync
��8 J
(
��J K
string
�� 
subject
�� 
,
�� 
CancellationToken
�� -
cancellationToken
��. ?
)
��? @
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
,
��R S
nameof
��T Z
(
��Z [
subject
��[ b
)
��b c
)
��c d
;
��d e
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TAuthorization
��" 0
,
��0 1&
OpenIdAuthorizationIndex
��2 J
>
��J K
(
��K L
index
�� 
=>
�� 
index
�� 
.
�� 
Subject
�� &
==
��' )
subject
��* 1
)
��1 2
.
��2 3
ToAsyncEnumerable
��3 D
(
��D E
)
��E F
;
��F G
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (#
GetApplicationIdAsync
��) >
(
��> ?
TAuthorization
��? M
authorization
��N [
,
��[ \
CancellationToken
��] n 
cancellationToken��o �
)��� �
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
authorization
��) 6
.
��6 7
ApplicationId
��7 D
)
��D E
;
��E F
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TResult
��! (
>
��( )
GetAsync
��* 2
<
��2 3
TState
��3 9
,
��9 :
TResult
��; B
>
��B C
(
��C D
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TAuthorization
�� *
>
��* +
,
��+ ,
TState
��- 3
,
��3 4

IQueryable
��5 ?
<
��? @
TResult
��@ G
>
��G H
>
��H I
query
��J O
,
��O P
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1"
GetCreationDateAsync
��2 F
(
��F G
TAuthorization
��G U
authorization
��V c
,
��c d
CancellationToken
��e v 
cancellationToken��w �
)��� �
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
authorization
�� 
.
�� 
CreationDate
�� *
is
��+ -
null
��. 2
)
��2 3
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %
DateTimeOffset
��% 3
?
��3 4
>
��4 5
(
��5 6
result
��6 <
:
��< =
null
��> B
)
��B C
;
��C D
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1
(
��1 2
DateTime
��2 :
.
��: ;
SpecifyKind
��; F
(
��F G
authorization
��G T
.
��T U
CreationDate
��U a
.
��a b
Value
��b g
,
��g h
DateTimeKind
��i u
.
��u v
Utc
��v y
)
��y z
)
��z {
;
��{ |
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (

GetIdAsync
��) 3
(
��3 4
TAuthorization
��4 B
authorization
��C P
,
��P Q
CancellationToken
��R c
cancellationToken
��d u
)
��u v
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
authorization
��) 6
.
��6 7
AuthorizationId
��7 F
)
��F G
;
��G H
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' ( 
GetPhysicalIdAsync
��) ;
(
��; <
TAuthorization
��< J
authorization
��K X
,
��X Y
CancellationToken
��Z k
cancellationToken
��l }
)
��} ~
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
authorization
��) 6
.
��6 7
Id
��7 9
.
��9 :
ToString
��: B
(
��B C
CultureInfo
��C N
.
��N O
InvariantCulture
��O _
)
��_ `
)
��` a
;
��a b
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J 
GetPropertiesAsync
��K ]
(
��] ^
TAuthorization
��^ l
authorization
��m z
,
��z { 
CancellationToken��| �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
authorization
�� 
.
�� 

Properties
�� (
==
��) +
null
��, 0
)
��0 1
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
string
��9 ?
,
��? @
JsonElement
��A L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
string
��j p
,
��p q
JsonElement
��r }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J
(
��J K
JsonSerializer
�� 
.
�� 
Deserialize
�� *
<
��* +!
ImmutableDictionary
��+ >
<
��> ?
string
��? E
,
��E F
JsonElement
��G R
>
��R S
>
��S T
(
��T U
authorization
��U b
.
��b c

Properties
��c m
.
��m n
ToString
��n v
(
��v w
)
��w x
)
��x y
)
��y z
;
��z {
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
GetScopesAsync
��9 G
(
��G H
TAuthorization
��H V
authorization
��W d
,
��d e
CancellationToken
��f w 
cancellationToken��x �
)��� �
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
authorization
��9 F
.
��F G
Scopes
��G M
)
��M N
;
��N O
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetStatusAsync
��) 7
(
��7 8
TAuthorization
��8 F
authorization
��G T
,
��T U
CancellationToken
��V g
cancellationToken
��h y
)
��y z
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
authorization
��) 6
.
��6 7
Status
��7 =
)
��= >
;
��> ?
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetSubjectAsync
��) 8
(
��8 9
TAuthorization
��9 G
authorization
��H U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
authorization
��) 6
.
��6 7
Subject
��7 >
)
��> ?
;
��? @
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetTypeAsync
��) 5
(
��5 6
TAuthorization
��6 D
authorization
��E R
,
��R S
CancellationToken
��T e
cancellationToken
��f w
)
��w x
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
authorization
��) 6
.
��6 7
Type
��7 ;
)
��; <
;
��< =
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TAuthorization
��! /
>
��/ 0
InstantiateAsync
��1 A
(
��A B
CancellationToken
��B S
cancellationToken
��T e
)
��e f
=>
�� 
new
�� 
	ValueTask
�� 
<
�� 
TAuthorization
�� +
>
��+ ,
(
��, -
new
��- 0
TAuthorization
��1 ?
{
��@ A
AuthorizationId
��B Q
=
��R S
Guid
��T X
.
��X Y
NewGuid
��Y `
(
��` a
)
��a b
.
��b c
ToString
��c k
(
��k l
$str
��l o
)
��o p
}
��q r
)
��r s
;
��s t
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TAuthorization
��( 6
>
��6 7
	ListAsync
��8 A
(
��A B
int
��B E
?
��E F
count
��G L
,
��L M
int
��N Q
?
��Q R
offset
��S Y
,
��Y Z
CancellationToken
��[ l
cancellationToken
��m ~
)
��~ 
{
�� 	
var
�� 
query
�� 
=
�� 
_session
��  
.
��  !
Query
��! &
<
��& '
TAuthorization
��' 5
>
��5 6
(
��6 7
)
��7 8
;
��8 9
if
�� 
(
�� 
offset
�� 
.
�� 
HasValue
�� 
)
��  
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Skip
�� "
(
��" #
offset
��# )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
count
�� 
.
�� 
HasValue
�� 
)
�� 
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Take
�� "
(
��" #
count
��# (
.
��( )
Value
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
query
�� 
.
�� 
ToAsyncEnumerable
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TResult
��( /
>
��/ 0
	ListAsync
��1 :
<
��: ;
TState
��; A
,
��A B
TResult
��C J
>
��J K
(
��K L
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TAuthorization
�� *
>
��* +
,
��+ ,
TState
��- 3
,
��3 4

IQueryable
��5 ?
<
��? @
TResult
��@ G
>
��G H
>
��H I
query
��J O
,
��O P
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &

PruneAsync
��' 1
(
��1 2
DateTimeOffset
��2 @
	threshold
��A J
,
��J K
CancellationToken
��L ]
cancellationToken
��^ o
)
��o p
{
�� 	
IList
�� 
<
�� 
	Exception
�� 
>
�� 

exceptions
�� '
=
��( )
null
��* .
;
��. /
for
�� 
(
�� 
var
�� 
offset
�� 
=
�� 
$num
�� 
;
��  
offset
��! '
<
��( )
$num
��* 1
;
��1 2
offset
��3 9
+=
��: <
$num
��= B
)
��B C
{
�� 
cancellationToken
�� !
.
��! "*
ThrowIfCancellationRequested
��" >
(
��> ?
)
��? @
;
��@ A
var
�� 
authorizations
�� "
=
��# $
await
��% *
_session
��+ 3
.
��3 4
Query
��4 9
<
��9 :
TAuthorization
��: H
,
��H I&
OpenIdAuthorizationIndex
��J b
>
��b c
(
��c d
authorization
�� !
=>
��" $
authorization
��% 2
.
��2 3
CreationDate
��3 ?
<
��@ A
	threshold
��B K
.
��K L
UtcDateTime
��L W
&&
��X Z
(
��$ %
authorization
��% 2
.
��2 3
Status
��3 9
!=
��: <!
OpenIddictConstants
��= P
.
��P Q
Statuses
��Q Y
.
��Y Z
Valid
��Z _
||
��` b
(
��$ %
authorization
��% 2
.
��2 3
Type
��3 7
==
��8 :!
OpenIddictConstants
��; N
.
��N O 
AuthorizationTypes
��O a
.
��a b
AdHoc
��b g
&&
��h j
authorization
��% 2
.
��2 3
AuthorizationId
��3 B
.
��B C
IsNotIn
��C J
<
��J K
OpenIdTokenIndex
��K [
>
��[ \
(
��\ ]
token
��) .
=>
��/ 1
token
��2 7
.
��7 8
AuthorizationId
��8 G
,
��G H
token
��) .
=>
��/ 1
token
��2 7
.
��7 8
Id
��8 :
!=
��; =
$num
��> ?
)
��? @
)
��@ A
)
��A B
)
��B C
.
��C D
Skip
��D H
(
��H I
offset
��I O
)
��O P
.
��P Q
Take
��Q U
(
��U V
$num
��V [
)
��[ \
.
��\ ]
	ListAsync
��] f
(
��f g
)
��g h
;
��h i
foreach
�� 
(
�� 
var
�� 
authorization
�� *
in
��+ -
authorizations
��. <
)
��< =
{
�� 
_session
�� 
.
�� 
Delete
�� #
(
��# $
authorization
��$ 1
)
��1 2
;
��2 3
}
�� 
try
�� 
{
�� 
await
�� 
_session
�� "
.
��" #
CommitAsync
��# .
(
��. /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
��  
	exception
��! *
)
��* +
{
�� 
if
�� 
(
�� 

exceptions
�� "
==
��# %
null
��& *
)
��* +
{
�� 

exceptions
�� "
=
��# $
new
��% (
List
��) -
<
��- .
	Exception
��. 7
>
��7 8
(
��8 9
capacity
��9 A
:
��A B
$num
��C D
)
��D E
;
��E F
}
�� 

exceptions
�� 
.
�� 
Add
�� "
(
��" #
	exception
��# ,
)
��, -
;
��- .
}
�� 
}
�� 
if
�� 
(
�� 

exceptions
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
throw
�� 
new
��  
AggregateException
�� ,
(
��, -
$str
��- ^
,
��^ _

exceptions
��` j
)
��j k
;
��k l
}
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  #
SetApplicationIdAsync
��! 6
(
��6 7
TAuthorization
��7 E
authorization
��F S
,
��S T
string
�� 

identifier
�� 
,
�� 
CancellationToken
�� 0
cancellationToken
��1 B
)
��B C
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
authorization
�� 
.
�� 
ApplicationId
�� +
=
��, -
null
��. 2
;
��2 3
}
�� 
else
�� 
{
�� 
authorization
�� 
.
�� 
ApplicationId
�� +
=
��, -

identifier
��. 8
;
��8 9
}
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
	ValueTask
�� "
SetCreationDateAsync
�� -
(
��- .
TAuthorization
��. <
authorization
��= J
,
��J K
DateTimeOffset
��L Z
?
��Z [
date
��\ `
,
��` a
CancellationToken
��b s 
cancellationToken��t �
)��� �
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
authorization
�� 
.
�� 
CreationDate
�� &
=
��' (
date
��) -
?
��- .
.
��. /
UtcDateTime
��/ :
;
��: ;
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��   
SetPropertiesAsync
��! 3
(
��3 4
TAuthorization
��4 B
authorization
��C P
,
��P Q!
ImmutableDictionary
��R e
<
��e f
string
��f l
,
��l m
JsonElement
��n y
>
��y z

properties��{ �
,��� �!
CancellationToken��� �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 

properties
�� 
==
�� 
null
�� "
||
��# %

properties
��& 0
.
��0 1
IsEmpty
��1 8
)
��8 9
{
�� 
authorization
�� 
.
�� 

Properties
�� (
=
��) *
null
��+ /
;
��/ 0
return
�� 
default
�� 
;
�� 
}
�� 
authorization
�� 
.
�� 

Properties
�� $
=
��% &
JObject
��' .
.
��. /
Parse
��/ 4
(
��4 5
JsonSerializer
��5 C
.
��C D
	Serialize
��D M
(
��M N

properties
��N X
,
��X Y
new
��Z ]#
JsonSerializerOptions
��^ s
{
�� 
Encoder
�� 
=
�� 
JavaScriptEncoder
�� +
.
��+ ,'
UnsafeRelaxedJsonEscaping
��, E
,
��E F
WriteIndented
�� 
=
�� 
false
��  %
}
�� 
)
�� 
)
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetScopesAsync
��! /
(
��/ 0
TAuthorization
��0 >
authorization
��? L
,
��L M
ImmutableArray
�� 
<
�� 
string
�� !
>
��! "
scopes
��# )
,
��) *
CancellationToken
��+ <
cancellationToken
��= N
)
��N O
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
authorization
�� 
.
�� 
Scopes
��  
=
��! "
scopes
��# )
;
��) *
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetStatusAsync
��! /
(
��/ 0
TAuthorization
��0 >
authorization
��? L
,
��L M
string
�� 
status
�� 
,
�� 
CancellationToken
�� ,
cancellationToken
��- >
)
��> ?
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
authorization
�� 
.
�� 
Status
��  
=
��! "
status
��# )
;
��) *
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetSubjectAsync
��! 0
(
��0 1
TAuthorization
��1 ?
authorization
��@ M
,
��M N
string
�� 
subject
�� 
,
�� 
CancellationToken
�� -
cancellationToken
��. ?
)
��? @
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
authorization
�� 
.
�� 
Subject
�� !
=
��" #
subject
��$ +
;
��+ ,
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetTypeAsync
��! -
(
��- .
TAuthorization
��. <
authorization
��= J
,
��J K
string
�� 
type
�� 
,
�� 
CancellationToken
�� *
cancellationToken
��+ <
)
��< =
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
authorization
�� 
.
�� 
Type
�� 
=
��  
type
��! %
;
��% &
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
UpdateAsync
��' 2
(
��2 3
TAuthorization
��3 A
authorization
��B O
,
��O P
CancellationToken
��Q b
cancellationToken
��c t
)
��t u
{
�� 	
if
�� 
(
�� 
authorization
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
authorization
��7 D
)
��D E
)
��E F
;
��F G
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
_session
�� 
.
�� 
Save
�� 
(
�� 
authorization
�� '
,
��' (
checkConcurrency
��) 9
:
��9 :
true
��; ?
)
��? @
;
��@ A
try
�� 
{
�� 
await
�� 
_session
�� 
.
�� 
CommitAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� "
ConcurrencyException
�� '
	exception
��( 1
)
��1 2
{
�� 
throw
�� 
new
�� "
OpenIddictExceptions
�� .
.
��. /"
ConcurrencyException
��/ C
(
��C D
new
��D G
StringBuilder
��H U
(
��U V
)
��V W
.
�� 

AppendLine
�� 
(
��  
$str
��  z
)
��z {
.
�� 
Append
�� 
(
�� 
$str
�� a
)
��a b
.
�� 
ToString
�� 
(
�� 
)
�� 
,
��  
	exception
��! *
)
��* +
;
��+ ,
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdScopeStore.cs
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
CancellationToken	((p �
cancellationToken
((� �
)
((� �
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
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, S
,
��S T
nameof
��U [
(
��[ \
resource
��\ d
)
��d e
)
��e f
;
��f g
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TScope
��" (
,
��( )(
OpenIdScopeByResourceIndex
��* D
>
��D E
(
��E F
index
�� 
=>
�� 
index
�� 
.
�� 
Resource
�� '
==
��( *
resource
��+ 3
)
��3 4
.
��4 5
ToAsyncEnumerable
��5 F
(
��F G
)
��G H
;
��H I
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TResult
��! (
>
��( )
GetAsync
��* 2
<
��2 3
TState
��3 9
,
��9 :
TResult
��; B
>
��B C
(
��C D
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TScope
�� "
>
��" #
,
��# $
TState
��% +
,
��+ ,

IQueryable
��- 7
<
��7 8
TResult
��8 ?
>
��? @
>
��@ A
query
��B G
,
��G H
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (!
GetDescriptionAsync
��) <
(
��< =
TScope
��= C
scope
��D I
,
��I J
CancellationToken
��K \
cancellationToken
��] n
)
��n o
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
scope
��) .
.
��. /
Description
��/ :
)
��: ;
;
��; <
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
CultureInfo
��5 @
,
��@ A
string
��B H
>
��H I
>
��I J"
GetDescriptionsAsync
��K _
(
��_ `
TScope
�� 
scope
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
scope
�� 
.
�� 
Descriptions
�� "
==
��# %
null
��& *
)
��* +
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
CultureInfo
��9 D
,
��D E
string
��F L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
CultureInfo
��j u
,
��u v
string
��w }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
CultureInfo
��5 @
,
��@ A
string
��B H
>
��H I
>
��I J
(
��J K
scope
��K P
.
��P Q
Descriptions
��Q ]
)
��] ^
;
��^ _
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (!
GetDisplayNameAsync
��) <
(
��< =
TScope
��= C
scope
��D I
,
��I J
CancellationToken
��K \
cancellationToken
��] n
)
��n o
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
scope
��) .
.
��. /
DisplayName
��/ :
)
��: ;
;
��; <
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
CultureInfo
��5 @
,
��@ A
string
��B H
>
��H I
>
��I J"
GetDisplayNamesAsync
��K _
(
��_ `
TScope
�� 
scope
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
scope
�� 
.
�� 
DisplayNames
�� "
==
��# %
null
��& *
)
��* +
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
CultureInfo
��9 D
,
��D E
string
��F L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
CultureInfo
��j u
,
��u v
string
��w }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
CultureInfo
��5 @
,
��@ A
string
��B H
>
��H I
>
��I J
(
��J K
scope
��K P
.
��P Q
DisplayNames
��Q ]
)
��] ^
;
��^ _
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (

GetIdAsync
��) 3
(
��3 4
TScope
��4 :
scope
��; @
,
��@ A
CancellationToken
��B S
cancellationToken
��T e
)
��e f
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
scope
��) .
.
��. /
ScopeId
��/ 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetNameAsync
��) 5
(
��5 6
TScope
��6 <
scope
��= B
,
��B C
CancellationToken
��D U
cancellationToken
��V g
)
��g h
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
scope
��) .
.
��. /
Name
��/ 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' ( 
GetPhysicalIdAsync
��) ;
(
��; <
TScope
��< B
scope
��C H
,
��H I
CancellationToken
��J [
cancellationToken
��\ m
)
��m n
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
scope
��) .
.
��. /
Id
��/ 1
.
��1 2
ToString
��2 :
(
��: ;
CultureInfo
��; F
.
��F G
InvariantCulture
��G W
)
��W X
)
��X Y
;
��Y Z
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J 
GetPropertiesAsync
��K ]
(
��] ^
TScope
��^ d
scope
��e j
,
��j k
CancellationToken
��l } 
cancellationToken��~ �
)��� �
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
scope
�� 
.
�� 

Properties
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
string
��9 ?
,
��? @
JsonElement
��A L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
string
��j p
,
��p q
JsonElement
��r }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J
(
��J K
JsonSerializer
�� 
.
�� 
Deserialize
�� *
<
��* +!
ImmutableDictionary
��+ >
<
��> ?
string
��? E
,
��E F
JsonElement
��G R
>
��R S
>
��S T
(
��T U
scope
��U Z
.
��Z [

Properties
��[ e
.
��e f
ToString
��f n
(
��n o
)
��o p
)
��p q
)
��q r
;
��r s
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
GetResourcesAsync
��9 J
(
��J K
TScope
��K Q
scope
��R W
,
��W X
CancellationToken
��Y j
cancellationToken
��k |
)
��| }
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
ImmutableArray
��! /
<
��/ 0
string
��0 6
>
��6 7
>
��7 8
(
��8 9
scope
��9 >
.
��> ?
	Resources
��? H
)
��H I
;
��I J
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TScope
��! '
>
��' (
InstantiateAsync
��) 9
(
��9 :
CancellationToken
��: K
cancellationToken
��L ]
)
��] ^
=>
�� 
new
�� 
	ValueTask
�� 
<
�� 
TScope
�� #
>
��# $
(
��$ %
new
��% (
TScope
��) /
{
��0 1
ScopeId
��2 9
=
��: ;
Guid
��< @
.
��@ A
NewGuid
��A H
(
��H I
)
��I J
.
��J K
ToString
��K S
(
��S T
$str
��T W
)
��W X
}
��Y Z
)
��Z [
;
��[ \
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TScope
��( .
>
��. /
	ListAsync
��0 9
(
��9 :
int
��: =
?
��= >
count
��? D
,
��D E
int
��F I
?
��I J
offset
��K Q
,
��Q R
CancellationToken
��S d
cancellationToken
��e v
)
��v w
{
�� 	
var
�� 
query
�� 
=
�� 
_session
��  
.
��  !
Query
��! &
<
��& '
TScope
��' -
>
��- .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
offset
�� 
.
�� 
HasValue
�� 
)
��  
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Skip
�� "
(
��" #
offset
��# )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
count
�� 
.
�� 
HasValue
�� 
)
�� 
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Take
�� "
(
��" #
count
��# (
.
��( )
Value
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
query
�� 
.
�� 
ToAsyncEnumerable
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TResult
��( /
>
��/ 0
	ListAsync
��1 :
<
��: ;
TState
��; A
,
��A B
TResult
��C J
>
��J K
(
��K L
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TScope
�� "
>
��" #
,
��# $
TState
��% +
,
��+ ,

IQueryable
��- 7
<
��7 8
TResult
��8 ?
>
��? @
>
��@ A
query
��B G
,
��G H
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
	ValueTask
��  !
SetDescriptionAsync
��! 4
(
��4 5
TScope
��5 ;
scope
��< A
,
��A B
string
��C I
description
��J U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
scope
�� 
.
�� 
Description
�� 
=
�� 
description
��  +
;
��+ ,
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetDescriptionsAsync
��! 5
(
��5 6
TScope
��6 <
scope
��= B
,
��B C!
ImmutableDictionary
�� 
<
��  
CultureInfo
��  +
,
��+ ,
string
��- 3
>
��3 4
descriptions
��5 A
,
��A B
CancellationToken
��C T
cancellationToken
��U f
)
��f g
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
scope
�� 
.
�� 
Descriptions
�� 
=
��  
descriptions
��! -
;
��- .
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  !
SetDisplayNameAsync
��! 4
(
��4 5
TScope
��5 ;
scope
��< A
,
��A B
string
��C I
name
��J N
,
��N O
CancellationToken
��P a
cancellationToken
��b s
)
��s t
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
scope
�� 
.
�� 
DisplayName
�� 
=
�� 
name
��  $
;
��$ %
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetDisplayNamesAsync
��! 5
(
��5 6
TScope
��6 <
scope
��= B
,
��B C!
ImmutableDictionary
�� 
<
��  
CultureInfo
��  +
,
��+ ,
string
��- 3
>
��3 4
names
��5 :
,
��: ;
CancellationToken
��< M
cancellationToken
��N _
)
��_ `
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
scope
�� 
.
�� 
DisplayNames
�� 
=
��  
names
��! &
;
��& '
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetNameAsync
��! -
(
��- .
TScope
��. 4
scope
��5 :
,
��: ;
string
��< B
name
��C G
,
��G H
CancellationToken
��I Z
cancellationToken
��[ l
)
��l m
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
scope
�� 
.
�� 
Name
�� 
=
�� 
name
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��   
SetPropertiesAsync
��! 3
(
��3 4
TScope
��4 :
scope
��; @
,
��@ A!
ImmutableDictionary
��B U
<
��U V
string
��V \
,
��\ ]
JsonElement
��^ i
>
��i j

properties
��k u
,
��u v 
CancellationToken��w �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 

properties
�� 
==
�� 
null
�� "
||
��# %

properties
��& 0
.
��0 1
IsEmpty
��1 8
)
��8 9
{
�� 
scope
�� 
.
�� 

Properties
��  
=
��! "
null
��# '
;
��' (
return
�� 
default
�� 
;
�� 
}
�� 
scope
�� 
.
�� 

Properties
�� 
=
�� 
JObject
�� &
.
��& '
Parse
��' ,
(
��, -
JsonSerializer
��- ;
.
��; <
	Serialize
��< E
(
��E F

properties
��F P
,
��P Q
new
��R U#
JsonSerializerOptions
��V k
{
�� 
Encoder
�� 
=
�� 
JavaScriptEncoder
�� +
.
��+ ,'
UnsafeRelaxedJsonEscaping
��, E
,
��E F
WriteIndented
�� 
=
�� 
false
��  %
}
�� 
)
�� 
)
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetResourcesAsync
��! 2
(
��2 3
TScope
��3 9
scope
��: ?
,
��? @
ImmutableArray
��A O
<
��O P
string
��P V
>
��V W
	resources
��X a
,
��a b
CancellationToken
��c t 
cancellationToken��u �
)��� �
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
scope
�� 
.
�� 
	Resources
�� 
=
�� 
	resources
�� '
;
��' (
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
UpdateAsync
��' 2
(
��2 3
TScope
��3 9
scope
��: ?
,
��? @
CancellationToken
��A R
cancellationToken
��S d
)
��d e
{
�� 	
if
�� 
(
�� 
scope
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
scope
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
_session
�� 
.
�� 
Save
�� 
(
�� 
scope
�� 
,
��  
checkConcurrency
��! 1
:
��1 2
true
��3 7
)
��7 8
;
��8 9
try
�� 
{
�� 
await
�� 
_session
�� 
.
�� 
CommitAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� "
ConcurrencyException
�� '
	exception
��( 1
)
��1 2
{
�� 
throw
�� 
new
�� "
OpenIddictExceptions
�� .
.
��. /"
ConcurrencyException
��/ C
(
��C D
new
��D G
StringBuilder
��H U
(
��U V
)
��V W
.
�� 

AppendLine
�� 
(
��  
$str
��  r
)
��r s
.
�� 
Append
�� 
(
�� 
$str
�� Y
)
��Y Z
.
�� 
ToString
�� 
(
�� 
)
�� 
,
��  
	exception
��! *
)
��* +
;
��+ ,
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.OpenId.Core\YesSql\Stores\OpenIdTokenStore.cs
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
CancellationToken	))p �
cancellationToken
))� �
)
))� �
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
(	rr �
)
rr� �
;
rr� �
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
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, \
,
��\ ]
nameof
��^ d
(
��d e
client
��e k
)
��k l
)
��l m
;
��m n
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
status
��% +
)
��+ ,
)
��, -
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Q
,
��Q R
nameof
��S Y
(
��Y Z
status
��Z `
)
��` a
)
��a b
;
��b c
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
type
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, O
,
��O P
nameof
��Q W
(
��W X
type
��X \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TToken
��" (
,
��( )
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
index
�� 
=>
�� 
index
�� 
.
�� 
ApplicationId
�� ,
==
��- /
client
��0 6
&&
��7 9
index
��: ?
.
��? @
Subject
��@ G
==
��H J
subject
��K R
&&
��S U
index
�� 
.
�� 
Status
�� %
==
��& (
status
��) /
&&
��0 2
index
��3 8
.
��8 9
Type
��9 =
==
��> @
type
��A E
)
��E F
.
��F G
ToAsyncEnumerable
��G X
(
��X Y
)
��Y Z
;
��Z [
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TToken
��( .
>
��. /&
FindByApplicationIdAsync
��0 H
(
��H I
string
��I O

identifier
��P Z
,
��Z [
CancellationToken
��\ m
cancellationToken
��n 
)�� �
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TToken
��" (
,
��( )
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
index
��< A
=>
��B D
index
��E J
.
��J K
ApplicationId
��K X
==
��Y [

identifier
��\ f
)
��f g
.
��g h
ToAsyncEnumerable
��h y
(
��y z
)
��z {
;
��{ |
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TToken
��( .
>
��. /(
FindByAuthorizationIdAsync
��0 J
(
��J K
string
��K Q

identifier
��R \
,
��\ ]
CancellationToken
��^ o 
cancellationToken��p �
)��� �
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TToken
��" (
,
��( )
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
index
��< A
=>
��B D
index
��E J
.
��J K
AuthorizationId
��K Z
==
��[ ]

identifier
��^ h
)
��h i
.
��i j
ToAsyncEnumerable
��j {
(
��{ |
)
��| }
;
��} ~
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
<
��& '
TToken
��' -
>
��- .$
FindByReferenceIdAsync
��/ E
(
��E F
string
��F L

identifier
��M W
,
��W X
CancellationToken
��Y j
cancellationToken
��k |
)
��| }
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
TToken
��( .
,
��. /
OpenIdTokenIndex
��0 @
>
��@ A
(
��A B
index
��B G
=>
��H J
index
��K P
.
��P Q
ReferenceId
��Q \
==
��] _

identifier
��` j
)
��j k
.
��k l!
FirstOrDefaultAsync
��l 
(�� �
)��� �
;��� �
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
<
��& '
TToken
��' -
>
��- .
FindByIdAsync
��/ <
(
��< =
string
��= C

identifier
��D N
,
��N O
CancellationToken
��P a
cancellationToken
��b s
)
��s t
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
await
�� 
_session
�� !
.
��! "
Query
��" '
<
��' (
TToken
��( .
,
��. /
OpenIdTokenIndex
��0 @
>
��@ A
(
��A B
index
��B G
=>
��H J
index
��K P
.
��P Q
TokenId
��Q X
==
��Y [

identifier
��\ f
)
��f g
.
��g h!
FirstOrDefaultAsync
��h {
(
��{ |
)
��| }
;
��} ~
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
<
��& '
TToken
��' -
>
��- .#
FindByPhysicalIdAsync
��/ D
(
��D E
string
��E K

identifier
��L V
,
��V W
CancellationToken
��X i
cancellationToken
��j {
)
��{ |
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^

identifier
��^ h
)
��h i
)
��i j
;
��j k
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
await
�� 
_session
�� !
.
��! "
GetAsync
��" *
<
��* +
TToken
��+ 1
>
��1 2
(
��2 3
int
��3 6
.
��6 7
Parse
��7 <
(
��< =

identifier
��= G
,
��G H
CultureInfo
��I T
.
��T U
InvariantCulture
��U e
)
��e f
)
��f g
;
��g h
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TToken
��( .
>
��. / 
FindBySubjectAsync
��0 B
(
��B C
string
��C I
subject
��J Q
,
��Q R
CancellationToken
��S d
cancellationToken
��e v
)
��v w
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
,
��R S
nameof
��T Z
(
��Z [
subject
��[ b
)
��b c
)
��c d
;
��d e
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
return
�� 
_session
�� 
.
�� 
Query
�� !
<
��! "
TToken
��" (
,
��( )
OpenIdTokenIndex
��* :
>
��: ;
(
��; <
index
��< A
=>
��B D
index
��E J
.
��J K
Subject
��K R
==
��S U
subject
��V ]
)
��] ^
.
��^ _
ToAsyncEnumerable
��_ p
(
��p q
)
��q r
;
��r s
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TResult
��! (
>
��( )
GetAsync
��* 2
<
��2 3
TState
��3 9
,
��9 :
TResult
��; B
>
��B C
(
��C D
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TToken
�� "
>
��" #
,
��# $
TState
��% +
,
��+ ,

IQueryable
��- 7
<
��7 8
TResult
��8 ?
>
��? @
>
��@ A
query
��B G
,
��G H
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (#
GetApplicationIdAsync
��) >
(
��> ?
TToken
��? E
token
��F K
,
��K L
CancellationToken
��M ^
cancellationToken
��_ p
)
��p q
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
ApplicationId
��/ <
?
��< =
.
��= >
ToString
��> F
(
��F G
CultureInfo
��G R
.
��R S
InvariantCulture
��S c
)
��c d
)
��d e
;
��e f
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (%
GetAuthorizationIdAsync
��) @
(
��@ A
TToken
��A G
token
��H M
,
��M N
CancellationToken
��O `
cancellationToken
��a r
)
��r s
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
AuthorizationId
��/ >
)
��> ?
;
��? @
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1"
GetCreationDateAsync
��2 F
(
��F G
TToken
��G M
token
��N S
,
��S T
CancellationToken
��U f
cancellationToken
��g x
)
��x y
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
CreationDate
�� "
is
��# %
null
��& *
)
��* +
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %
DateTimeOffset
��% 3
?
��3 4
>
��4 5
(
��5 6
result
��6 <
:
��< =
null
��> B
)
��B C
;
��C D
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1
(
��1 2
DateTime
��2 :
.
��: ;
SpecifyKind
��; F
(
��F G
token
��G L
.
��L M
CreationDate
��M Y
.
��Y Z
Value
��Z _
,
��_ `
DateTimeKind
��a m
.
��m n
Utc
��n q
)
��q r
)
��r s
;
��s t
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1$
GetExpirationDateAsync
��2 H
(
��H I
TToken
��I O
token
��P U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
ExpirationDate
�� $
is
��% '
null
��( ,
)
��, -
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %
DateTimeOffset
��% 3
?
��3 4
>
��4 5
(
��5 6
result
��6 <
:
��< =
null
��> B
)
��B C
;
��C D
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1
(
��1 2
DateTime
��2 :
.
��: ;
SpecifyKind
��; F
(
��F G
token
��G L
.
��L M
ExpirationDate
��M [
.
��[ \
Value
��\ a
,
��a b
DateTimeKind
��c o
.
��o p
Utc
��p s
)
��s t
)
��t u
;
��u v
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (

GetIdAsync
��) 3
(
��3 4
TToken
��4 :
token
��; @
,
��@ A
CancellationToken
��B S
cancellationToken
��T e
)
��e f
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
TokenId
��/ 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetPayloadAsync
��) 8
(
��8 9
TToken
��9 ?
token
��@ E
,
��E F
CancellationToken
��G X
cancellationToken
��Y j
)
��j k
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
Payload
��/ 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' ( 
GetPhysicalIdAsync
��) ;
(
��; <
TToken
��< B
token
��C H
,
��H I
CancellationToken
��J [
cancellationToken
��\ m
)
��m n
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
Id
��/ 1
.
��1 2
ToString
��2 :
(
��: ;
CultureInfo
��; F
.
��F G
InvariantCulture
��G W
)
��W X
)
��X Y
;
��Y Z
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J 
GetPropertiesAsync
��K ]
(
��] ^
TToken
��^ d
token
��e j
,
��j k
CancellationToken
��l } 
cancellationToken��~ �
)��� �
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 

Properties
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %!
ImmutableDictionary
��% 8
<
��8 9
string
��9 ?
,
��? @
JsonElement
��A L
>
��L M
>
��M N
(
��N O!
ImmutableDictionary
��O b
.
��b c
Create
��c i
<
��i j
string
��j p
,
��p q
JsonElement
��r }
>
��} ~
(
��~ 
)�� �
)��� �
;��� �
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !!
ImmutableDictionary
��! 4
<
��4 5
string
��5 ;
,
��; <
JsonElement
��= H
>
��H I
>
��I J
(
��J K
JsonSerializer
�� 
.
�� 
Deserialize
�� *
<
��* +!
ImmutableDictionary
��+ >
<
��> ?
string
��? E
,
��E F
JsonElement
��G R
>
��R S
>
��S T
(
��T U
token
��U Z
.
��Z [

Properties
��[ e
.
��e f
ToString
��f n
(
��n o
)
��o p
)
��p q
)
��q r
;
��r s
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1$
GetRedemptionDateAsync
��2 H
(
��H I
TToken
��I O
token
��P U
,
��U V
CancellationToken
��W h
cancellationToken
��i z
)
��z {
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
token
�� 
.
�� 
RedemptionDate
�� $
is
��% '
null
��( ,
)
��, -
{
�� 
return
�� 
new
�� 
	ValueTask
�� $
<
��$ %
DateTimeOffset
��% 3
?
��3 4
>
��4 5
(
��5 6
result
��6 <
:
��< =
null
��> B
)
��B C
;
��C D
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
DateTimeOffset
��! /
?
��/ 0
>
��0 1
(
��1 2
DateTime
��2 :
.
��: ;
SpecifyKind
��; F
(
��F G
token
��G L
.
��L M
RedemptionDate
��M [
.
��[ \
Value
��\ a
,
��a b
DateTimeKind
��c o
.
��o p
Utc
��p s
)
��s t
)
��t u
;
��u v
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (!
GetReferenceIdAsync
��) <
(
��< =
TToken
��= C
token
��D I
,
��I J
CancellationToken
��K \
cancellationToken
��] n
)
��n o
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
ReferenceId
��/ :
)
��: ;
;
��; <
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetStatusAsync
��) 7
(
��7 8
TToken
��8 >
token
��? D
,
��D E
CancellationToken
��F W
cancellationToken
��X i
)
��i j
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
Status
��/ 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetSubjectAsync
��) 8
(
��8 9
TToken
��9 ?
token
��@ E
,
��E F
CancellationToken
��G X
cancellationToken
��Y j
)
��j k
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
Subject
��/ 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
GetTypeAsync
��) 5
(
��5 6
TToken
��6 <
token
��= B
,
��B C
CancellationToken
��D U
cancellationToken
��V g
)
��g h
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
return
�� 
new
�� 
	ValueTask
��  
<
��  !
string
��! '
>
��' (
(
��( )
token
��) .
.
��. /
Type
��/ 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
<
��  !
TToken
��! '
>
��' (
InstantiateAsync
��) 9
(
��9 :
CancellationToken
��: K
cancellationToken
��L ]
)
��] ^
=>
�� 
new
�� 
	ValueTask
�� 
<
�� 
TToken
�� #
>
��# $
(
��$ %
new
��% (
TToken
��) /
{
��0 1
TokenId
��2 9
=
��: ;
Guid
��< @
.
��@ A
NewGuid
��A H
(
��H I
)
��I J
.
��J K
ToString
��K S
(
��S T
$str
��T W
)
��W X
}
��Y Z
)
��Z [
;
��[ \
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TToken
��( .
>
��. /
	ListAsync
��0 9
(
��9 :
int
��: =
?
��= >
count
��? D
,
��D E
int
��F I
?
��I J
offset
��K Q
,
��Q R
CancellationToken
��S d
cancellationToken
��e v
)
��v w
{
�� 	
var
�� 
query
�� 
=
�� 
_session
��  
.
��  !
Query
��! &
<
��& '
TToken
��' -
>
��- .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
offset
�� 
.
�� 
HasValue
�� 
)
��  
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Skip
�� "
(
��" #
offset
��# )
.
��) *
Value
��* /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
count
�� 
.
�� 
HasValue
�� 
)
�� 
{
�� 
query
�� 
=
�� 
query
�� 
.
�� 
Take
�� "
(
��" #
count
��# (
.
��( )
Value
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
query
�� 
.
�� 
ToAsyncEnumerable
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
virtual
�� 
IAsyncEnumerable
�� '
<
��' (
TResult
��( /
>
��/ 0
	ListAsync
��1 :
<
��: ;
TState
��; A
,
��A B
TResult
��C J
>
��J K
(
��K L
Func
�� 
<
�� 

IQueryable
�� 
<
�� 
TToken
�� "
>
��" #
,
��# $
TState
��% +
,
��+ ,

IQueryable
��- 7
<
��7 8
TResult
��8 ?
>
��? @
>
��@ A
query
��B G
,
��G H
TState
�� 
state
�� 
,
�� 
CancellationToken
�� +
cancellationToken
��, =
)
��= >
=>
�� 
throw
�� 
new
�� #
NotSupportedException
�� .
(
��. /
)
��/ 0
;
��0 1
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &

PruneAsync
��' 1
(
��1 2
DateTimeOffset
��2 @
	threshold
��A J
,
��J K
CancellationToken
��L ]
cancellationToken
��^ o
=
��p q
default
��r y
)
��y z
{
�� 	
IList
�� 
<
�� 
	Exception
�� 
>
�� 

exceptions
�� '
=
��( )
null
��* .
;
��. /
for
�� 
(
�� 
var
�� 
offset
�� 
=
�� 
$num
�� 
;
��  
offset
��! '
<
��( )
$num
��* 1
;
��1 2
offset
��3 9
+=
��: <
$num
��= B
)
��B C
{
�� 
cancellationToken
�� !
.
��! "*
ThrowIfCancellationRequested
��" >
(
��> ?
)
��? @
;
��@ A
var
�� 
tokens
�� 
=
�� 
await
�� "
_session
��# +
.
��+ ,
Query
��, 1
<
��1 2
TToken
��2 8
,
��8 9
OpenIdTokenIndex
��: J
>
��J K
(
��K L
token
�� 
=>
�� 
token
�� "
.
��" #
CreationDate
��# /
<
��0 1
	threshold
��2 ;
.
��; <
UtcDateTime
��< G
&&
��H J
(
�� 
(
�� 
token
�� "
.
��" #
Status
��# )
!=
��* ,
Statuses
��- 5
.
��5 6
Inactive
��6 >
&&
��? A
token
��B G
.
��G H
Status
��H N
!=
��O Q
Statuses
��R Z
.
��Z [
Valid
��[ `
)
��` a
||
��b d
token
�� "
.
��" #
AuthorizationId
��# 2
.
��2 3
IsNotIn
��3 :
<
��: ;&
OpenIdAuthorizationIndex
��; S
>
��S T
(
��T U
authorization
��  -
=>
��. 0
authorization
��1 >
.
��> ?
AuthorizationId
��? N
,
��N O
authorization
��  -
=>
��. 0
authorization
��1 >
.
��> ?
Status
��? E
==
��F H
Statuses
��I Q
.
��Q R
Valid
��R W
)
��W X
||
��Y [
token
�� "
.
��" #
ExpirationDate
��# 1
<
��2 3
DateTime
��4 <
.
��< =
UtcNow
��= C
)
��C D
)
��D E
.
��E F
Skip
��F J
(
��J K
offset
��K Q
)
��Q R
.
��R S
Take
��S W
(
��W X
$num
��X ]
)
��] ^
.
��^ _
	ListAsync
��_ h
(
��h i
)
��i j
;
��j k
foreach
�� 
(
�� 
var
�� 
token
�� "
in
��# %
tokens
��& ,
)
��, -
{
�� 
_session
�� 
.
�� 
Delete
�� #
(
��# $
token
��$ )
)
��) *
;
��* +
}
�� 
try
�� 
{
�� 
await
�� 
_session
�� "
.
��" #
CommitAsync
��# .
(
��. /
)
��/ 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
��  
	exception
��! *
)
��* +
{
�� 
if
�� 
(
�� 

exceptions
�� "
==
��# %
null
��& *
)
��* +
{
�� 

exceptions
�� "
=
��# $
new
��% (
List
��) -
<
��- .
	Exception
��. 7
>
��7 8
(
��8 9
capacity
��9 A
:
��A B
$num
��C D
)
��D E
;
��E F
}
�� 

exceptions
�� 
.
�� 
Add
�� "
(
��" #
	exception
��# ,
)
��, -
;
��- .
}
�� 
}
�� 
if
�� 
(
�� 

exceptions
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
throw
�� 
new
��  
AggregateException
�� ,
(
��, -
$str
��- ^
,
��^ _

exceptions
��` j
)
��j k
;
��k l
}
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  #
SetApplicationIdAsync
��! 6
(
��6 7
TToken
��7 =
token
��> C
,
��C D
string
��E K

identifier
��L V
,
��V W
CancellationToken
��X i
cancellationToken
��j {
)
��{ |
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
token
�� 
.
�� 
ApplicationId
�� #
=
��$ %
null
��& *
;
��* +
}
�� 
else
�� 
{
�� 
token
�� 
.
�� 
ApplicationId
�� #
=
��$ %

identifier
��& 0
;
��0 1
}
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  %
SetAuthorizationIdAsync
��! 8
(
��8 9
TToken
��9 ?
token
��@ E
,
��E F
string
��G M

identifier
��N X
,
��X Y
CancellationToken
��Z k
cancellationToken
��l }
)
��} ~
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

identifier
��% /
)
��/ 0
)
��0 1
{
�� 
token
�� 
.
�� 
AuthorizationId
�� %
=
��& '
null
��( ,
;
��, -
}
�� 
else
�� 
{
�� 
token
�� 
.
�� 
AuthorizationId
�� %
=
��& '

identifier
��( 2
;
��2 3
}
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  "
SetCreationDateAsync
��! 5
(
��5 6
TToken
��6 <
token
��= B
,
��B C
DateTimeOffset
��D R
?
��R S
date
��T X
,
��X Y
CancellationToken
��Z k
cancellationToken
��l }
)
��} ~
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
token
�� 
.
�� 
CreationDate
�� 
=
��  
date
��! %
?
��% &
.
��& '
UtcDateTime
��' 2
;
��2 3
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  $
SetExpirationDateAsync
��! 7
(
��7 8
TToken
��8 >
token
��? D
,
��D E
DateTimeOffset
��F T
?
��T U
date
��V Z
,
��Z [
CancellationToken
��\ m
cancellationToken
��n 
)�� �
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
token
�� 
.
�� 
ExpirationDate
��  
=
��! "
date
��# '
?
��' (
.
��( )
UtcDateTime
��) 4
;
��4 5
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetPayloadAsync
��! 0
(
��0 1
TToken
��1 7
token
��8 =
,
��= >
string
��? E
payload
��F M
,
��M N
CancellationToken
��O `
cancellationToken
��a r
)
��r s
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
token
�� 
.
�� 
Payload
�� 
=
�� 
payload
�� #
;
��# $
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��   
SetPropertiesAsync
��! 3
(
��3 4
TToken
��4 :
token
��; @
,
��@ A!
ImmutableDictionary
��B U
<
��U V
string
��V \
,
��\ ]
JsonElement
��^ i
>
��i j

properties
��k u
,
��u v 
CancellationToken��w �!
cancellationToken��� �
)��� �
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 

properties
�� 
==
�� 
null
�� "
||
��# %

properties
��& 0
.
��0 1
IsEmpty
��1 8
)
��8 9
{
�� 
token
�� 
.
�� 

Properties
��  
=
��! "
null
��# '
;
��' (
return
�� 
default
�� 
;
�� 
}
�� 
token
�� 
.
�� 

Properties
�� 
=
�� 
JObject
�� &
.
��& '
Parse
��' ,
(
��, -
JsonSerializer
��- ;
.
��; <
	Serialize
��< E
(
��E F

properties
��F P
,
��P Q
new
��R U#
JsonSerializerOptions
��V k
{
�� 
Encoder
�� 
=
�� 
JavaScriptEncoder
�� +
.
��+ ,'
UnsafeRelaxedJsonEscaping
��, E
,
��E F
WriteIndented
�� 
=
�� 
false
��  %
}
�� 
)
�� 
)
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  $
SetRedemptionDateAsync
��! 7
(
��7 8
TToken
��8 >
token
��? D
,
��D E
DateTimeOffset
��F T
?
��T U
date
��V Z
,
��Z [
CancellationToken
��\ m
cancellationToken
��n 
)�� �
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
token
�� 
.
�� 
RedemptionDate
��  
=
��! "
date
��# '
?
��' (
.
��( )
UtcDateTime
��) 4
;
��4 5
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  !
SetReferenceIdAsync
��! 4
(
��4 5
TToken
��5 ;
token
��< A
,
��A B
string
��C I

identifier
��J T
,
��T U
CancellationToken
��V g
cancellationToken
��h y
)
��y z
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
token
�� 
.
�� 
ReferenceId
�� 
=
�� 

identifier
��  *
;
��* +
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetStatusAsync
��! /
(
��/ 0
TToken
��0 6
token
��7 <
,
��< =
string
��> D
status
��E K
,
��K L
CancellationToken
��M ^
cancellationToken
��_ p
)
��p q
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
status
��% +
)
��+ ,
)
��, -
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Q
,
��Q R
nameof
��S Y
(
��Y Z
status
��Z `
)
��` a
)
��a b
;
��b c
}
�� 
token
�� 
.
�� 
Status
�� 
=
�� 
status
�� !
;
��! "
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetSubjectAsync
��! 0
(
��0 1
TToken
��1 7
token
��8 =
,
��= >
string
��? E
subject
��F M
,
��M N
CancellationToken
��O `
cancellationToken
��a r
)
��r s
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
subject
��% ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
,
��R S
nameof
��T Z
(
��Z [
subject
��[ b
)
��b c
)
��c d
;
��d e
}
�� 
token
�� 
.
�� 
Subject
�� 
=
�� 
subject
�� #
;
��# $
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
	ValueTask
��  
SetTypeAsync
��! -
(
��- .
TToken
��. 4
token
��5 :
,
��: ;
string
��< B
type
��C G
,
��G H
CancellationToken
��I Z
cancellationToken
��[ l
)
��l m
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
type
��% )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, U
,
��U V
nameof
��W ]
(
��] ^
type
��^ b
)
��b c
)
��c d
;
��d e
}
�� 
token
�� 
.
�� 
Type
�� 
=
�� 
type
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
async
�� 
	ValueTask
�� &
UpdateAsync
��' 2
(
��2 3
TToken
��3 9
token
��: ?
,
��? @
CancellationToken
��A R
cancellationToken
��S d
)
��d e
{
�� 	
if
�� 
(
�� 
token
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
nameof
��0 6
(
��6 7
token
��7 <
)
��< =
)
��= >
;
��> ?
}
�� 
cancellationToken
�� 
.
�� *
ThrowIfCancellationRequested
�� :
(
��: ;
)
��; <
;
��< =
_session
�� 
.
�� 
Save
�� 
(
�� 
token
�� 
,
��  
checkConcurrency
��! 1
:
��1 2
true
��3 7
)
��7 8
;
��8 9
try
�� 
{
�� 
await
�� 
_session
�� 
.
�� 
CommitAsync
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
catch
�� 
(
�� "
ConcurrencyException
�� '
	exception
��( 1
)
��1 2
{
�� 
throw
�� 
new
�� "
OpenIddictExceptions
�� .
.
��. /"
ConcurrencyException
��/ C
(
��C D
new
��D G
StringBuilder
��H U
(
��U V
)
��V W
.
�� 

AppendLine
�� 
(
��  
$str
��  r
)
��r s
.
�� 
Append
�� 
(
�� 
$str
�� Y
)
��Y Z
.
�� 
ToString
�� 
(
�� 
)
�� 
,
��  
	exception
��! *
)
��* +
;
��+ ,
}
�� 
}
�� 	
}
�� 
}�� 