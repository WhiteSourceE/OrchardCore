ф
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextManager.cs
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
class 
CacheContextManager $
:% & 
ICacheContextManager' ;
{ 
private		 
readonly		 
IEnumerable		 $
<		$ %!
ICacheContextProvider		% :
>		: ;"
_cacheContextProviders		< R
;		R S
public 
CacheContextManager "
(" #
IEnumerable# .
<. /!
ICacheContextProvider/ D
>D E!
cacheContextProvidersF [
)[ \
{ 	"
_cacheContextProviders "
=# $!
cacheContextProviders% :
;: ;
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
CacheContextEntry& 7
>7 8
>8 9"
GetDiscriminatorsAsync: P
(P Q
IEnumerableQ \
<\ ]
string] c
>c d
contextse m
)m n
{ 	
var 
entries 
= 
new 
List "
<" #
CacheContextEntry# 4
>4 5
(5 6
)6 7
;7 8
foreach 
( 
var 
provider !
in" $"
_cacheContextProviders% ;
.; <
Reverse< C
(C D
)D E
)E F
{ 
await 
provider 
. '
PopulateContextEntriesAsync :
(: ;
contexts; C
,C D
entriesE L
)L M
;M N
} 
return 
entries 
; 
} 	
} 
} ш
оD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextProviders\FeaturesCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{		 
public

 

class

 (
FeaturesCacheContextProvider

 -
:

. /!
ICacheContextProvider

0 E
{ 
private 
const 
string 
FeaturesPrefix +
=, -
$str. 9
;9 :
private 
readonly 
IFeatureHash %
_featureHash& 2
;2 3
public (
FeaturesCacheContextProvider +
(+ ,
IFeatureHash, 8
featureHash9 D
)D E
{ 	
_featureHash 
= 
featureHash &
;& '
} 	
public 
async 
Task '
PopulateContextEntriesAsync 5
(5 6
IEnumerable6 A
<A B
stringB H
>H I
contextsJ R
,R S
ListT X
<X Y
CacheContextEntryY j
>j k
entriesl s
)s t
{ 	
if 
( 
contexts 
. 
Any 
( 
ctx  
=>! #
string$ *
.* +
Equals+ 1
(1 2
ctx2 5
,5 6
$str7 A
,A B
StringComparisonC S
.S T
OrdinalIgnoreCaseT e
)e f
)f g
)g h
{ 
var 
hash 
= 
await  
_featureHash! -
.- .
GetFeatureHashAsync. A
(A B
)B C
;C D
entries 
. 
Add 
( 
new 
CacheContextEntry  1
(1 2
$str2 <
,< =
hash> B
.B C
ToStringC K
(K L
CultureInfoL W
.W X
InvariantCultureX h
)h i
)i j
)j k
;k l
} 
else 
{ 
foreach 
( 
var 
context $
in% '
contexts( 0
.0 1
Where1 6
(6 7
ctx7 :
=>; =
ctx> A
.A B

StartsWithB L
(L M
FeaturesPrefixM [
,[ \
StringComparison] m
.m n
OrdinalIgnoreCasen 
)	 А
)
А Б
)
Б В
{   
var!! 
featureName!! #
=!!$ %
context!!& -
.!!- .
	Substring!!. 7
(!!7 8
FeaturesPrefix!!8 F
.!!F G
Length!!G M
)!!M N
;!!N O
var"" 
hash"" 
="" 
await"" $
_featureHash""% 1
.""1 2
GetFeatureHashAsync""2 E
(""E F
featureName""F Q
)""Q R
;""R S
entries$$ 
.$$ 
Add$$ 
($$  
new$$  #
CacheContextEntry$$$ 5
($$5 6
$str$$6 @
,$$@ A
hash$$B F
.$$F G
ToString$$G O
($$O P
CultureInfo$$P [
.$$[ \
InvariantCulture$$\ l
)$$l m
)$$m n
)$$n o
;$$o p
}%% 
}&& 
}'' 	
}(( 
})) │

░D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextProviders\KnownValueCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{ 
public

 

class

 *
KnownValueCacheContextProvider

 /
:

0 1!
ICacheContextProvider

2 G
{ 
public 
Task '
PopulateContextEntriesAsync /
(/ 0
IEnumerable0 ;
<; <
string< B
>B C
contextsD L
,L M
ListN R
<R S
CacheContextEntryS d
>d e
entriesf m
)m n
{ 	
entries 
. 
Add 
( 
new 
CacheContextEntry -
(- .
$str. 0
,0 1
String2 8
.8 9
Join9 =
(= >
$str> A
,A B
contextsC K
)K L
)L M
)M N
;N O
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ы%
лD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextProviders\QueryCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{ 
public		 

class		 %
QueryCacheContextProvider		 *
:		+ ,!
ICacheContextProvider		- B
{

 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
const 
string 
QueryPrefix (
=) *
$str+ 3
;3 4
public %
QueryCacheContextProvider (
(( ) 
IHttpContextAccessor) =
httpContextAccessor> Q
)Q R
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
Task '
PopulateContextEntriesAsync /
(/ 0
IEnumerable0 ;
<; <
string< B
>B C
contextsD L
,L M
ListN R
<R S
CacheContextEntryS d
>d e
entriesf m
)m n
{ 	
if 
( 
contexts 
. 
Any 
( 
ctx  
=>! #
String$ *
.* +
Equals+ 1
(1 2
ctx2 5
,5 6
$str7 >
,> ?
StringComparison@ P
.P Q
OrdinalIgnoreCaseQ b
)b c
)c d
)d e
{ 
var 
httpContext 
=  ! 
_httpContextAccessor" 6
.6 7
HttpContext7 B
;B C
var 
query 
= 
httpContext '
.' (
Request( /
./ 0
Query0 5
;5 6
var 
allKeys 
= 
query #
.# $
Keys$ (
.( )
OrderBy) 0
(0 1
x1 2
=>3 5
x6 7
)7 8
.8 9
ToArray9 @
(@ A
)A B
;B C
entries 
. 
AddRange  
(  !
allKeys! (
. 
Select 
( 
x 
=>  
new! $
CacheContextEntry% 6
(6 7
key 
: 
x 
. 
ToLowerInvariant /
(/ 0
)0 1
,1 2
value 
: 
query $
[$ %
x% &
]& '
.' (
ToString( 0
(0 1
)1 2
.2 3
ToLowerInvariant3 C
(C D
)D E
)E F
) 
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! )
;!!) *
}"" 
foreach$$ 
($$ 
var$$ 
context$$  
in$$! #
contexts$$$ ,
.$$, -
Where$$- 2
($$2 3
ctx$$3 6
=>$$7 9
ctx$$: =
.$$= >

StartsWith$$> H
($$H I
QueryPrefix$$I T
,$$T U
StringComparison$$V f
.$$f g
OrdinalIgnoreCase$$g x
)$$x y
)$$y z
)$$z {
{%% 
var&& 
key&& 
=&& 
context&& !
.&&! "
	Substring&&" +
(&&+ ,
QueryPrefix&&, 7
.&&7 8
Length&&8 >
)&&> ?
;&&? @
var(( 
httpContext(( 
=((  ! 
_httpContextAccessor((" 6
.((6 7
HttpContext((7 B
;((B C
var)) 
query)) 
=)) 
httpContext)) '
.))' (
Request))( /
.))/ 0
Query))0 5
;))5 6
entries** 
.** 
Add** 
(** 
new** 
CacheContextEntry**  1
(**1 2
key++ 
:++ 
key++  
.++  !
ToLowerInvariant++! 1
(++1 2
)++2 3
,++3 4
value,, 
:,, 
query,, $
[,,$ %
key,,% (
],,( )
.,,) *
ToString,,* 2
(,,2 3
),,3 4
.,,4 5
ToLowerInvariant,,5 E
(,,E F
),,F G
),,G H
)-- 
;-- 
}.. 
return00 
Task00 
.00 
CompletedTask00 %
;00% &
}11 	
}22 
}33 ├
лD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextProviders\RolesCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{		 
public

 

class

 %
RolesCacheContextProvider

 *
:

+ ,!
ICacheContextProvider

- B
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public %
RolesCacheContextProvider (
(( ) 
IHttpContextAccessor) =
httpContextAccessor> Q
)Q R
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
Task '
PopulateContextEntriesAsync /
(/ 0
IEnumerable0 ;
<; <
string< B
>B C
contextsD L
,L M
ListN R
<R S
CacheContextEntryS d
>d e
entriesf m
)m n
{ 	
if 
( 
contexts 
. 
Any 
( 
ctx  
=>! #
String$ *
.* +
Equals+ 1
(1 2
ctx2 5
,5 6
$str7 C
,C D
StringComparisonE U
.U V
OrdinalIgnoreCaseV g
)g h
)h i
)i j
{ 
var 
user 
=  
_httpContextAccessor /
./ 0
HttpContext0 ;
.; <
User< @
;@ A
if 
( 
user 
. 
Identity !
.! "
IsAuthenticated" 1
)1 2
{ 
var 

roleClaims "
=# $
user% )
.) *
Claims* 0
.0 1
Where1 6
(6 7
x7 8
=>9 ;
x< =
.= >
Type> B
==C E

ClaimTypesF P
.P Q
RoleQ U
)U V
;V W
foreach 
( 
var  
	roleClaim! *
in+ -

roleClaims. 8
)8 9
{ 
entries 
.  
Add  #
(# $
new$ '
CacheContextEntry( 9
(9 :
$str: F
,F G
	roleClaimH Q
.Q R
ValueR W
)W X
)X Y
;Y Z
} 
return   
Task   
.    
CompletedTask    -
;  - .
}!! 
}"" 
return$$ 
Task$$ 
.$$ 
CompletedTask$$ %
;$$% &
}%% 	
}&& 
}'' Ч
лD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextProviders\RouteCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{ 
public		 

class		 %
RouteCacheContextProvider		 *
:		+ ,!
ICacheContextProvider		- B
{

 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public %
RouteCacheContextProvider (
(( ) 
IHttpContextAccessor) =
httpContextAccessor> Q
)Q R
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
Task '
PopulateContextEntriesAsync /
(/ 0
IEnumerable0 ;
<; <
string< B
>B C
contextsD L
,L M
ListN R
<R S
CacheContextEntryS d
>d e
entriesf m
)m n
{ 	
if 
( 
contexts 
. 
Any 
( 
ctx  
=>! #
String$ *
.* +
Equals+ 1
(1 2
ctx2 5
,5 6
$str7 >
,> ?
StringComparison@ P
.P Q
OrdinalIgnoreCaseQ b
)b c
)c d
)d e
{ 
var 
httpContext 
=  ! 
_httpContextAccessor" 6
.6 7
HttpContext7 B
;B C
entries 
. 
Add 
( 
new 
CacheContextEntry  1
(1 2
$str2 9
,9 :
httpContext; F
.F G
RequestG N
.N O
PathO S
.S T
ValueT Y
.Y Z
ToLowerInvariantZ j
(j k
)k l
)l m
)m n
;n o
return 
Task 
. 
CompletedTask )
;) *
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ╘
кD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheContextProviders\UserCacheContextProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
.' (!
CacheContextProviders( =
{ 
public		 

class		 $
UserCacheContextProvider		 )
:		* +!
ICacheContextProvider		, A
{

 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public $
UserCacheContextProvider '
(' ( 
IHttpContextAccessor( <
httpContextAccessor= P
)P Q
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
Task '
PopulateContextEntriesAsync /
(/ 0
IEnumerable0 ;
<; <
string< B
>B C
contextsD L
,L M
ListN R
<R S
CacheContextEntryS d
>d e
entriesf m
)m n
{ 	
if 
( 
contexts 
. 
Any 
( 
ctx  
=>! #
String$ *
.* +
Equals+ 1
(1 2
ctx2 5
,5 6
$str7 =
,= >
StringComparison? O
.O P
OrdinalIgnoreCaseP a
)a b
)b c
)c d
{ 
var 
httpContext 
=  ! 
_httpContextAccessor" 6
.6 7
HttpContext7 B
;B C
if 
( 
httpContext 
.  
User  $
.$ %
Identity% -
.- .
IsAuthenticated. =
)= >
{ 
entries 
. 
Add 
(  
new  #
CacheContextEntry$ 5
(5 6
$str6 <
,< =
httpContext> I
.I J
UserJ N
.N O
IdentityO W
.W X
NameX \
)\ ]
)] ^
;^ _
} 
else 
{ 
entries 
. 
Add 
(  
new  #
CacheContextEntry$ 5
(5 6
$str6 <
,< =
$str> @
)@ A
)A B
;B C
} 
} 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ еN
НD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\CacheScopeManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

class 
CacheScopeManager "
:# $
ICacheScopeManager% 7
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
 
CacheContext

 +
>

+ ,
_scopes

- 4
;

4 5
public 
CacheScopeManager  
(  !
)! "
{ 	
_scopes 
= 
new 
Stack 
<  
CacheContext  ,
>, -
(- .
). /
;/ 0
} 	
public 
void 

EnterScope 
( 
CacheContext +
context, 3
)3 4
{ 	
_scopes 
. 
Push 
( 
context  
)  !
;! "
} 	
public 
void 
	ExitScope 
( 
) 
{ 	
var 

childScope 
= 
_scopes $
.$ %
Pop% (
(( )
)) *
;* +
if 
( 
_scopes 
. 
Count 
> 
$num  !
)! "
{ 
MergeCacheContexts "
(" #
_scopes# *
.* +
Peek+ /
(/ 0
)0 1
,1 2

childScope3 =
)= >
;> ?
} 
} 	
public   
void   
AddDependencies   #
(  # $
params  $ *
string  + 1
[  1 2
]  2 3
dependencies  4 @
)  @ A
{!! 	
if"" 
("" 
_scopes"" 
."" 
Count"" 
>"" 
$num""  !
)""! "
{## 
_scopes$$ 
.$$ 
Peek$$ 
($$ 
)$$ 
.$$ 
AddTag$$ %
($$% &
dependencies$$& 2
)$$2 3
;$$3 4
}%% 
}&& 	
public(( 
void(( 
AddContexts(( 
(((  
params((  &
string((' -
[((- .
]((. /
contexts((0 8
)((8 9
{)) 	
if** 
(** 
_scopes** 
.** 
Count** 
>** 
$num**  !
)**! "
{++ 
_scopes,, 
.,, 
Peek,, 
(,, 
),, 
.,, 

AddContext,, )
(,,) *
contexts,,* 2
),,2 3
;,,3 4
}-- 
}.. 	
public00 
void00 
WithExpiryOn00  
(00  !
DateTimeOffset00! /
expiryOn000 8
)008 9
{11 	
if22 
(22 
_scopes22 
.22 
Count22 
<=22  
$num22! "
)22" #
{33 
return44 
;44 
}55 
var77 
scope77 
=77 
_scopes77 
.77  
Peek77  $
(77$ %
)77% &
;77& '
var88 
value88 
=88 ,
 GetMostRestrictiveDateTimeOffset88 8
(888 9
scope889 >
.88> ?
	ExpiresOn88? H
,88H I
expiryOn88J R
)88R S
;88S T
if:: 
(:: 
value:: 
.:: 
HasValue:: 
):: 
{;; 
scope<< 
.<< 
WithExpiryOn<< "
(<<" #
value<<# (
.<<( )
Value<<) .
)<<. /
;<</ 0
}== 
}>> 	
public@@ 
void@@ 
WithExpiryAfter@@ #
(@@# $
TimeSpan@@$ ,
expiryAfter@@- 8
)@@8 9
{AA 	
ifBB 
(BB 
_scopesBB 
.BB 
CountBB 
<=BB  
$numBB! "
)BB" #
{CC 
returnDD 
;DD 
}EE 
varGG 
scopeGG 
=GG 
_scopesGG 
.GG  
PeekGG  $
(GG$ %
)GG% &
;GG& '
varHH 
valueHH 
=HH &
GetMostRestrictiveTimespanHH 2
(HH2 3
scopeHH3 8
.HH8 9
ExpiresAfterHH9 E
,HHE F
expiryAfterHHG R
)HHR S
;HHS T
ifJJ 
(JJ 
valueJJ 
.JJ 
HasValueJJ 
)JJ 
{KK 
scopeLL 
.LL 
WithExpiryAfterLL %
(LL% &
valueLL& +
.LL+ ,
ValueLL, 1
)LL1 2
;LL2 3
}MM 
}NN 	
publicPP 
voidPP 
WithExpirySlidingPP %
(PP% &
TimeSpanPP& .
expirySlidingPP/ <
)PP< =
{QQ 	
ifRR 
(RR 
_scopesRR 
.RR 
CountRR 
<=RR  
$numRR! "
)RR" #
{SS 
returnTT 
;TT 
}UU 
varWW 
scopeWW 
=WW 
_scopesWW 
.WW  
PeekWW  $
(WW$ %
)WW% &
;WW& '
varXX 
valueXX 
=XX &
GetMostRestrictiveTimespanXX 2
(XX2 3
scopeXX3 8
.XX8 9
ExpiresSlidingXX9 G
,XXG H
expirySlidingXXI V
)XXV W
;XXW X
ifZZ 
(ZZ 
valueZZ 
.ZZ 
HasValueZZ 
)ZZ 
{[[ 
scope\\ 
.\\ 
WithExpirySliding\\ '
(\\' (
value\\( -
.\\- .
Value\\. 3
)\\3 4
;\\4 5
}]] 
}^^ 	
private`` 
void`` 
MergeCacheContexts`` '
(``' (
CacheContext``( 4
into``5 9
,``9 :
CacheContext``; G
from``H L
)``L M
{aa 	
intobb 
.bb 

AddContextbb 
(bb 
frombb  
.bb  !
Contextsbb! )
.bb) *
ToArraybb* 1
(bb1 2
)bb2 3
)bb3 4
;bb4 5
intocc 
.cc 
AddTagcc 
(cc 
fromcc 
.cc 
Tagscc !
.cc! "
ToArraycc" )
(cc) *
)cc* +
)cc+ ,
;cc, -
varee 
offsetee 
=ee ,
 GetMostRestrictiveDateTimeOffsetee 9
(ee9 :
intoee: >
.ee> ?
	ExpiresOnee? H
,eeH I
fromeeJ N
.eeN O
	ExpiresOneeO X
)eeX Y
;eeY Z
ifff 
(ff 
offsetff 
.ff 
HasValueff 
)ff  
{gg 
intohh 
.hh 
WithExpiryOnhh !
(hh! "
offsethh" (
.hh( )
Valuehh) .
)hh. /
;hh/ 0
}ii 
varkk 
slidingExpirationkk !
=kk" #&
GetMostRestrictiveTimespankk$ >
(kk> ?
intokk? C
.kkC D
ExpiresSlidingkkD R
,kkR S
fromkkT X
.kkX Y
ExpiresSlidingkkY g
)kkg h
;kkh i
ifll 
(ll 
slidingExpirationll !
.ll! "
HasValuell" *
)ll* +
{mm 
intonn 
.nn 
WithExpirySlidingnn &
(nn& '
slidingExpirationnn' 8
.nn8 9
Valuenn9 >
)nn> ?
;nn? @
}oo 
varqq 
durationqq 
=qq &
GetMostRestrictiveTimespanqq 5
(qq5 6
intoqq6 :
.qq: ;
ExpiresAfterqq; G
,qqG H
fromqqI M
.qqM N
ExpiresAfterqqN Z
)qqZ [
;qq[ \
ifrr 
(rr 
durationrr 
.rr 
HasValuerr !
)rr! "
{ss 
intott 
.tt 
WithExpiryAftertt $
(tt$ %
durationtt% -
.tt- .
Valuett. 3
)tt3 4
;tt4 5
}uu 
}vv 	
privatexx 
DateTimeOffsetxx 
?xx ,
 GetMostRestrictiveDateTimeOffsetxx  @
(xx@ A
DateTimeOffsetxxA O
?xxO P
axxQ R
,xxR S
DateTimeOffsetxxT b
?xxb c
bxxd e
)xxe f
{yy 	
ifzz 
(zz 
azz 
.zz 
HasValuezz 
&&zz 
bzz 
.zz  
HasValuezz  (
)zz( )
{{{ 
return|| 
b|| 
<|| 
a|| 
?|| 
b||  
:||! "
a||# $
;||$ %
}}} 
return 
a 
?? 
b 
; 
}
АА 	
private
ВВ 
TimeSpan
ВВ 
?
ВВ (
GetMostRestrictiveTimespan
ВВ 4
(
ВВ4 5
TimeSpan
ВВ5 =
?
ВВ= >
a
ВВ? @
,
ВВ@ A
TimeSpan
ВВB J
?
ВВJ K
b
ВВL M
)
ВВM N
{
ГГ 	
if
ДД 
(
ДД 
a
ДД 
.
ДД 
HasValue
ДД 
&&
ДД 
b
ДД 
.
ДД  
HasValue
ДД  (
)
ДД( )
{
ЕЕ 
return
ЖЖ 
b
ЖЖ 
<
ЖЖ 
a
ЖЖ 
?
ЖЖ 
b
ЖЖ  
:
ЖЖ! "
a
ЖЖ# $
;
ЖЖ$ %
}
ЗЗ 
return
ЙЙ 
a
ЙЙ 
??
ЙЙ 
b
ЙЙ 
;
ЙЙ 
}
КК 	
}
ЛЛ 
}ММ я-
ЛD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\DefaultTagCache.cs
	namespace

 	
OrchardCore


 
.

 
Environment

 !
.

! "
Cache

" '
{ 
public 

class 
DefaultTagCache  
:! "
	ITagCache# ,
{ 
private 
const 
string 
CacheKey %
=& '
nameof( .
(. /
DefaultTagCache/ >
)> ?
;? @
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
HashSet6 =
<= >
string> D
>D E
>E F
_dictionaryG R
;R S
private 
readonly 
IEnumerable $
<$ %#
ITagRemovedEventHandler% <
>< =$
_tagRemovedEventHandlers> V
;V W
private 
readonly 
ILogger  
_logger! (
;( )
public 
DefaultTagCache 
( 
IEnumerable 
< #
ITagRemovedEventHandler /
>/ 0#
tagRemovedEventHandlers1 H
,H I
IMemoryCache 
memoryCache $
,$ %
ILogger 
< 
DefaultTagCache #
># $
logger% +
)+ ,
{ 	
if 
( 
! 
memoryCache 
. 
TryGetValue (
(( )
CacheKey) 1
,1 2
out3 6
_dictionary7 B
)B C
)C D
{ 
_dictionary 
= 
new ! 
ConcurrentDictionary" 6
<6 7
string7 =
,= >
HashSet? F
<F G
stringG M
>M N
>N O
(O P
StringComparerP ^
.^ _
OrdinalIgnoreCase_ p
)p q
;q r
memoryCache 
. 
Set 
(  
CacheKey  (
,( )
_dictionary* 5
)5 6
;6 7
}   $
_tagRemovedEventHandlers"" $
=""% &#
tagRemovedEventHandlers""' >
;""> ?
_logger## 
=## 
logger## 
;## 
}$$ 	
public&& 
Task&& 
TagAsync&& 
(&& 
string&& #
key&&$ '
,&&' (
params&&) /
string&&0 6
[&&6 7
]&&7 8
tags&&9 =
)&&= >
{'' 	
foreach(( 
((( 
var(( 
tag(( 
in(( 
tags((  $
)(($ %
{)) 
var** 
set** 
=** 
_dictionary** %
.**% &
GetOrAdd**& .
(**. /
tag**/ 2
,**2 3
x**4 5
=>**6 8
new**9 <
HashSet**= D
<**D E
string**E K
>**K L
(**L M
)**M N
)**N O
;**O P
lock,, 
(,, 
set,, 
),, 
{-- 
set.. 
... 
Add.. 
(.. 
key.. 
)..  
;..  !
}// 
}00 
return22 
Task22 
.22 
CompletedTask22 %
;22% &
}33 	
public55 
Task55 
<55 
IEnumerable55 
<55  
string55  &
>55& '
>55' (
GetTaggedItemsAsync55) <
(55< =
string55= C
tag55D G
)55G H
{66 	
HashSet77 
<77 
string77 
>77 
set77 
;77  
if88 
(88 
_dictionary88 
.88 
TryGetValue88 '
(88' (
tag88( +
,88+ ,
out88- 0
set881 4
)884 5
)885 6
{99 
lock:: 
(:: 
set:: 
):: 
{;; 
return<< 
Task<< 
.<<  

FromResult<<  *
(<<* +
set<<+ .
.<<. /
AsEnumerable<</ ;
(<<; <
)<<< =
)<<= >
;<<> ?
}== 
}>> 
return@@ 
Task@@ 
.@@ 

FromResult@@ "
(@@" #

Enumerable@@# -
.@@- .
Empty@@. 3
<@@3 4
string@@4 :
>@@: ;
(@@; <
)@@< =
)@@= >
;@@> ?
}AA 	
publicCC 
TaskCC 
RemoveTagAsyncCC "
(CC" #
stringCC# )
tagCC* -
)CC- .
{DD 	
HashSetEE 
<EE 
stringEE 
>EE 
setEE 
;EE  
ifGG 
(GG 
_dictionaryGG 
.GG 
	TryRemoveGG %
(GG% &
tagGG& )
,GG) *
outGG+ .
setGG/ 2
)GG2 3
)GG3 4
{HH 
returnII $
_tagRemovedEventHandlersII /
.II/ 0
InvokeAsyncII0 ;
(II; <
(II< =
handlerII= D
,IID E
tagIIF I
,III J
setIIK N
)IIN O
=>IIP R
handlerIIS Z
.IIZ [
TagRemovedAsyncII[ j
(IIj k
tagIIk n
,IIn o
setIIp s
)IIs t
,IIt u
tagIIv y
,IIy z
setII{ ~
,II~ 
_logger
IIА З
)
IIЗ И
;
IIИ Й
}JJ 
returnLL 
TaskLL 
.LL 
CompletedTaskLL %
;LL% &
}MM 	
}NN 
}OO З$
ШD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Cache\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{		 
public

 

static

 
partial

 
class

 (
OrchardCoreBuilderExtensions

  <
{ 
public 
static 
OrchardCoreBuilder (

AddCaching) 3
(3 4
this4 8
OrchardCoreBuilder9 K
builderL S
)S T
{ 	
builder 
. 
ConfigureServices %
(% &
services& .
=>/ 1
{ 
services 
. 
AddSingleton %
<% &
ISignal& -
>- .
(. /
sp/ 1
=>2 4
{ 
var 

messageBus "
=# $
sp% '
.' (

GetService( 2
<2 3
IMessageBus3 >
>> ?
(? @
)@ A
;A B
if 
( 

messageBus "
==# %
null& *
)* +
{ 
return 
new "
Signal# )
() *
)* +
;+ ,
} 
else 
{ 
return 
new "
DistributedSignal# 4
(4 5

messageBus5 ?
)? @
;@ A
} 
} 
) 
; 
services!! 
.!! 
AddSingleton!! %
<!!% & 
IModularTenantEvents!!& :
>!!: ;
(!!; <
sp!!< >
=>!!? A
sp!!B D
.!!D E
GetRequiredService!!E W
<!!W X
ISignal!!X _
>!!_ `
(!!` a
)!!a b
)!!b c
;!!c d
services## 
.## 
	AddScoped## "
<##" #
	ITagCache### ,
,##, -
DefaultTagCache##. =
>##= >
(##> ?
)##? @
;##@ A
services$$ 
.$$ 
	AddScoped$$ "
<$$" # 
ICacheContextManager$$# 7
,$$7 8
CacheContextManager$$9 L
>$$L M
($$M N
)$$N O
;$$O P
services%% 
.%% 
	AddScoped%% "
<%%" #
ICacheScopeManager%%# 5
,%%5 6
CacheScopeManager%%7 H
>%%H I
(%%I J
)%%J K
;%%K L
services'' 
.'' 
	AddScoped'' "
<''" #!
ICacheContextProvider''# 8
,''8 9(
FeaturesCacheContextProvider'': V
>''V W
(''W X
)''X Y
;''Y Z
services(( 
.(( 
	AddScoped(( "
<((" #!
ICacheContextProvider((# 8
,((8 9%
QueryCacheContextProvider((: S
>((S T
(((T U
)((U V
;((V W
services)) 
.)) 
	AddScoped)) "
<))" #!
ICacheContextProvider))# 8
,))8 9%
RolesCacheContextProvider)): S
>))S T
())T U
)))U V
;))V W
services** 
.** 
	AddScoped** "
<**" #!
ICacheContextProvider**# 8
,**8 9%
RouteCacheContextProvider**: S
>**S T
(**T U
)**U V
;**V W
services++ 
.++ 
	AddScoped++ "
<++" #!
ICacheContextProvider++# 8
,++8 9$
UserCacheContextProvider++: R
>++R S
(++S T
)++T U
;++U V
services,, 
.,, 
	AddScoped,, "
<,," #!
ICacheContextProvider,,# 8
,,,8 9*
KnownValueCacheContextProvider,,: X
>,,X Y
(,,Y Z
),,Z [
;,,[ \
services// 
.// 
AddSingleton// %
<//% &
IMemoryCache//& 2
,//2 3
MemoryCache//4 ?
>//? @
(//@ A
)//A B
;//B C
services22 
.22 
AddSingleton22 %
<22% &
IDistributedCache22& 7
,227 8"
MemoryDistributedCache229 O
>22O P
(22P Q
)22Q R
;22R S
}33 
)33 
;33 
return66 
builder66 
.66 !
AddDocumentManagement66 0
(660 1
)661 2
;662 3
}77 	
}88 
}99 ╚9
ТD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\Builtin\HelpCommand.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
.* +
Builtin+ 2
{		 
public

 

class

 
HelpCommand

 
:

 !
DefaultCommandHandler

 4
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly +
CommandHandlerDescriptorBuilder 8
_builder9 A
=B C
newD G+
CommandHandlerDescriptorBuilderH g
(g h
)h i
;i j
public 
HelpCommand 
( 
IServiceProvider +
serviceProvider, ;
,; <
IStringLocalizer 
< 
HelpCommand (
>( )
	localizer* 3
)3 4
:5 6
base7 ;
(; <
	localizer< E
)E F
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
[ 	
CommandName	 
( 
$str $
)$ %
]% &
[ 	
CommandHelp	 
( 
$str $
,$ %
$str& V
)V W
]W X
public 
async 
Task 
AllCommandsAsync *
(* +
)+ ,
{ 	
await 
Context 
. 
Output  
.  !
WriteLineAsync! /
(/ 0
S0 1
[1 2
$str2 O
]O P
)P Q
;Q R
await 
Context 
. 
Output  
.  !
WriteLineAsync! /
(/ 0
$str0 M
)M N
;N O
await 
Context 
. 
Output  
.  !
WriteLineAsync! /
(/ 0
)0 1
;1 2
var 
descriptors 
= !
GetCommandDescriptors 3
(3 4
)4 5
.5 6
OrderBy6 =
(= >
d> ?
=>@ B
dC D
.D E
NamesE J
.J K
FirstK P
(P Q
)Q R
)R S
;S T
foreach 
( 
var 

descriptor #
in$ &
descriptors' 2
)2 3
{   
await!! 
Context!! 
.!! 
Output!! $
.!!$ %
WriteLineAsync!!% 3
(!!3 4
GetHelpText!!4 ?
(!!? @

descriptor!!@ J
)!!J K
)!!K L
;!!L M
await"" 
Context"" 
."" 
Output"" $
.""$ %
WriteLineAsync""% 3
(""3 4
)""4 5
;""5 6
}## 
}$$ 	
[&& 	
CommandName&&	 
(&& 
$str&& 
)&& 
]&& 
['' 	
CommandHelp''	 
('' 
$str'' %
,''% &
$str''' J
)''J K
]''K L
public(( 
async(( 
Task(( 
SingleCommandAsync(( ,
(((, -
string((- 3
[((3 4
]((4 5
commandNameStrings((6 H
)((H I
{)) 	
string** 
command** 
=** 
string** #
.**# $
Join**$ (
(**( )
$str**) ,
,**, -
commandNameStrings**. @
)**@ A
;**A B
var++ 
descriptors++ 
=++ !
GetCommandDescriptors++ 3
(++3 4
)++4 5
.,, 
Where,, 
(,, 
t,, 
=>,, 
t,, 
.,, 
Names,, #
.,,# $
Any,,$ '
(,,' (
x,,( )
=>,,* ,
x,,- .
.,,. /

StartsWith,,/ 9
(,,9 :
command,,: A
,,,A B
StringComparison,,C S
.,,S T
OrdinalIgnoreCase,,T e
),,e f
),,f g
),,g h
.-- 
OrderBy-- 
(-- 
d-- 
=>-- 
d-- 
.--  
Names--  %
)--% &
;--& '
if// 
(// 
!// 
descriptors// 
.// 
Any//  
(//  !
)//! "
)//" #
{00 
await11 
Context11 
.11 
Output11 $
.11$ %
WriteLineAsync11% 3
(113 4
S114 5
[115 6
$str116 Q
,11Q R
command11S Z
]11Z [
)11[ \
;11\ ]
}22 
else33 
{44 
foreach55 
(55 
var55 

descriptor55 '
in55( *
descriptors55+ 6
)556 7
{66 
await77 
Context77 !
.77! "
Output77" (
.77( )
WriteLineAsync77) 7
(777 8
GetHelpText778 C
(77C D

descriptor77D N
)77N O
)77O P
;77P Q
await88 
Context88 !
.88! "
Output88" (
.88( )
WriteLineAsync88) 7
(887 8
)888 9
;889 :
}99 
}:: 
};; 	
private<< 
IEnumerable<< 
<<< 
CommandDescriptor<< -
><<- .!
GetCommandDescriptors<</ D
(<<D E
)<<E F
{== 	
var>> 
commandhandlers>> 
=>>  !
_serviceProvider>>" 2
.>>2 3
GetServices>>3 >
<>>> ?
ICommandHandler>>? N
>>>N O
(>>O P
)>>P Q
;>>Q R
return?? 
commandhandlers?? "
.??" #

SelectMany??# -
(??- .
x??. /
=>??0 2
_builder??3 ;
.??; <
Build??< A
(??A B
x??B C
.??C D
GetType??D K
(??K L
)??L M
)??M N
.??N O
Commands??O W
)??W X
;??X Y
}@@ 	
privateBB 
LocalizedStringBB 
GetHelpTextBB  +
(BB+ ,
CommandDescriptorBB, =

descriptorBB> H
)BBH I
{CC 	
ifDD 
(DD 
stringDD 
.DD 
IsNullOrEmptyDD $
(DD$ %

descriptorDD% /
.DD/ 0
HelpTextDD0 8
)DD8 9
)DD9 :
{EE 
returnFF 
SFF 
[FF 
$strFF 0
,FF0 1

descriptorFF2 <
.FF< =

MethodInfoFF= G
.FFG H
DeclaringTypeFFH U
?FFU V
.FFV W
FullNameFFW _
,FF_ `

descriptorFFa k
.FFk l

MethodInfoFFl v
.FFv w
NameFFw {
]FF{ |
;FF| }
}GG 
returnII 
SII 
[II 

descriptorII 
.II  
HelpTextII  (
]II( )
;II) *
}JJ 	
}KK 
}LL ╓
НD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandContext.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

class 
CommandContext 
{ 
public 

TextReader 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public		 

TextWriter		 
Output		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public 
string 
Command 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IEnumerable 
< 
string !
>! "
	Arguments# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
IDictionary 
< 
string !
,! "
string# )
>) *
Switches+ 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
CommandDescriptor  
CommandDescriptor! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
} 
} Б
РD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandDescriptor.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

class 
CommandDescriptor "
{ 
public 
string 
[ 
] 
Names 
{ 
get  #
;# $
set% (
;( )
}* +
public 

MethodInfo 

MethodInfo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
string		 
HelpText		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} °
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandHandlerDescriptor.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

class $
CommandHandlerDescriptor )
{ 
public 
IEnumerable 
< 
CommandDescriptor ,
>, -
Commands. 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
}		 ─%
ЮD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandHandlerDescriptorBuilder.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

class +
CommandHandlerDescriptorBuilder 0
{		 
public

 $
CommandHandlerDescriptor

 '
Build

( -
(

- .
Type

. 2
type

3 7
)

7 8
{ 	
return 
new $
CommandHandlerDescriptor /
{0 1
Commands2 :
=; <
CollectMethods= K
(K L
typeL P
)P Q
}R S
;S T
} 	
private 
IEnumerable 
< 
CommandDescriptor -
>- .
CollectMethods/ =
(= >
Type> B
typeC G
)G H
{ 	
var 
methods 
= 
type 
. 

GetMethods 
( 
BindingFlags (
.( )
Instance) 1
|2 3
BindingFlags4 @
.@ A
PublicA G
|H I
BindingFlagsJ V
.V W
DeclaredOnlyW c
)c d
. 
Where 
( 
m 
=> 
! 
m 
. 
IsSpecialName ,
), -
;- .
foreach 
( 
var 

methodInfo #
in$ &
methods' .
). /
{ 
yield 
return 
BuildMethod (
(( )

methodInfo) 3
)3 4
;4 5
} 
} 	
private 
CommandDescriptor !
BuildMethod" -
(- .

MethodInfo. 8

methodInfo9 C
)C D
{ 	
return 
new 
CommandDescriptor (
{ 
Names 
= 
GetCommandNames '
(' (

methodInfo( 2
)2 3
,3 4

MethodInfo   
=   

methodInfo   '
,  ' (
HelpText!! 
=!! 
GetCommandHelpText!! -
(!!- .

methodInfo!!. 8
)!!8 9
}"" 
;"" 
}## 	
private%% 
string%% 
GetCommandHelpText%% )
(%%) *

MethodInfo%%* 4

methodInfo%%5 ?
)%%? @
{&& 	
var'' 

attributes'' 
='' 

methodInfo'' '
.''' (
GetCustomAttributes''( ;
(''; <
typeof''< B
(''B C 
CommandHelpAttribute''C W
)''W X
,''X Y
false''Z _
)''j k
;''k l
if(( 
((( 

attributes(( 
!=(( 
null(( "
&&((# %

attributes((& 0
.((0 1
Any((1 4
(((4 5
)((5 6
)((6 7
{)) 
return** 

attributes** !
.**! "
Cast**" &
<**& ' 
CommandHelpAttribute**' ;
>**; <
(**< =
)**= >
.**> ?
Single**? E
(**E F
)**F G
.**G H
HelpText**H P
;**P Q
}++ 
return,, 
string,, 
.,, 
Empty,, 
;,,  
}-- 	
private// 
string// 
[// 
]// 
GetCommandNames// (
(//( )

MethodInfo//) 3

methodInfo//4 >
)//> ?
{00 	
var11 

attributes11 
=11 

methodInfo11 '
.11' (
GetCustomAttributes11( ;
(11; <
typeof11< B
(11B C 
CommandNameAttribute11C W
)11W X
,11X Y
false11Z _
)11j k
;11k l
if22 
(22 

attributes22 
!=22 
null22 "
&&22# %

attributes22& 0
.220 1
Any221 4
(224 5
)225 6
)226 7
{33 
return44 

attributes44 !
.44! "
Cast44" &
<44& ' 
CommandNameAttribute44' ;
>44; <
(44< =
)44= >
.44> ?
Single44? E
(44E F
)44F G
.44G H
Commands44H P
;44P Q
}55 
return77 
new77 
[77 
]77 
{77 

methodInfo77 %
.77% &
Name77& *
}77+ ,
;77, -
}88 	
}99 
}:: м
УD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandNameAttribute.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Method% +
)+ ,
], -
public 

class  
CommandNameAttribute %
:& '
	Attribute( 1
{ 
public		  
CommandNameAttribute		 #
(		# $
params		$ *
string		+ 1
[		1 2
]		2 3
commandsAlias		4 A
)		A B
{

 	
Commands 
= 
commandsAlias $
;$ %
} 	
public 
string 
[ 
] 
Commands  
{! "
get# &
;& '
}( )
} 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Method% +
)+ ,
], -
public 

class  
CommandHelpAttribute %
:& '
	Attribute( 1
{ 
public  
CommandHelpAttribute #
(# $
string$ *
helpText+ 3
)3 4
{ 	
HelpText 
= 
helpText 
;  
} 	
public  
CommandHelpAttribute #
(# $
params$ *
string+ 1
[1 2
]2 3
helpText4 <
)< =
{ 	
if 
( 
helpText 
. 
Length 
==  "
$num# $
)$ %
{ 
return 
; 
} 
if   
(   
helpText   
.   
Length   
==    "
$num  # $
)  $ %
{!! 
HelpText"" 
="" 
helpText"" #
[""# $
$num""$ %
]""% &
;""& '
return## 
;## 
}$$ 
StringBuilder&& 
builder&& !
=&&" #
new&&$ '
StringBuilder&&( 5
(&&5 6
)&&6 7
;&&7 8
foreach(( 
((( 
var(( 
value(( 
in(( !
helpText((" *
)((* +
{)) 
builder** 
.** 

AppendLine** "
(**" #
value**# (
)**( )
;**) *
}++ 
HelpText-- 
=-- 
builder-- 
.-- 
ToString-- '
(--' (
)--( )
;--) *
}.. 	
public00 
string00 
HelpText00 
{00  
get00! $
;00$ %
}00& '
}11 
}22 С	
РD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandParameters.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

class 
CommandParameters "
{ 
public 
IEnumerable 
< 
string !
>! "
	Arguments# ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public		 
IDictionary		 
<		 
string		 !
,		! "
string		# )
>		) *
Switches		+ 3
{		4 5
get		6 9
;		9 :
set		; >
;		> ?
}		@ A
public 

TextReader 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 

TextWriter 
Output  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ├
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\CommandReturnCodes.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

enum 
CommandReturnCodes "
{ 
Ok 

= 
$num 
, 
Fail		 
=		 
$num		 
,		 
Retry

 
=

 
$num

 
} 
} ╠Х
ФD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\DefaultCommandHandler.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Commands		" *
{

 
public 

abstract 
class !
DefaultCommandHandler /
:0 1
ICommandHandler2 A
{ 
	protected 
readonly 
IStringLocalizer +
S, -
;- .
	protected !
DefaultCommandHandler '
(' (
IStringLocalizer( 8
	localizer9 B
)B C
{ 	
S 
= 
	localizer 
; 
} 	
public 
CommandContext 
Context %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
Task 
ExecuteAsync  
(  !
CommandContext! /
context0 7
)7 8
{ 	
SetSwitchValues 
( 
context #
)# $
;$ %
return 
InvokeAsync 
( 
context &
)& '
;' (
} 	
private 
void 
SetSwitchValues $
($ %
CommandContext% 3
context4 ;
); <
{ 	
if 
( 
context 
. 
Switches  
!=! #
null$ (
&&) +
context, 3
.3 4
Switches4 <
.< =
Count= B
>C D
$numE F
)F G
{ 
foreach   
(   
var   
commandSwitch   *
in  + -
context  . 5
.  5 6
Switches  6 >
)  > ?
{!! 
SetSwitchValue"" "
(""" #
commandSwitch""# 0
)""0 1
;""1 2
}## 
}$$ 
}%% 	
private'' 
void'' 
SetSwitchValue'' #
(''# $
KeyValuePair''$ 0
<''0 1
string''1 7
,''7 8
string''9 ?
>''? @
commandSwitch''A N
)''N O
{(( 	
PropertyInfo** 
propertyInfo** %
=**& '
GetType**( /
(**/ 0
)**0 1
.**1 2
GetProperty**2 =
(**= >
commandSwitch**> K
.**K L
Key**L O
,**O P
BindingFlags**Q ]
.**] ^
Instance**^ f
|**g h
BindingFlags**i u
.**u v
Public**v |
|**} ~
BindingFlags	** Л
.
**Л М

IgnoreCase
**М Ц
)
**Ц Ч
;
**Ч Ш
if++ 
(++ 
propertyInfo++ 
==++ 
null++  $
)++$ %
{,, 
throw-- 
new-- %
InvalidOperationException-- 3
(--3 4
S--4 5
[--5 6
$str--6 T
,--T U
commandSwitch--V c
.--c d
Key--d g
]--g h
)--h i
;--i j
}.. 
if// 
(// 
!// 
propertyInfo// 
.// 
GetCustomAttributes// 1
(//1 2
typeof//2 8
(//8 9"
OrchardSwitchAttribute//9 O
)//O P
,//P Q
false//R W
)//W X
.//X Y
Any//Y \
(//\ ]
)//] ^
)//^ _
{00 
throw11 
new11 %
InvalidOperationException11 3
(113 4
S114 5
[115 6
$str116 s
,11s t
commandSwitch	11u В
.
11В Г
Key
11Г Ж
,
11Ж З
typeof
11И О
(
11О П$
OrchardSwitchAttribute
11П е
)
11е ж
.
11ж з
Name
11з л
]
11л м
)
11м н
;
11н о
}22 
try55 
{66 
object77 
value77 
=77 
ConvertToType77 ,
(77, -
propertyInfo77- 9
.779 :
PropertyType77: F
,77F G
commandSwitch77H U
.77U V
Value77V [
)77[ \
;77\ ]
propertyInfo88 
.88 
SetValue88 %
(88% &
this88& *
,88* +
value88, 1
,881 2
null883 7
)88A B
;88B C
}99 
catch:: 
(:: 
	Exception:: 
ex:: 
)::  
when::! %
(::& '
!::' (
ex::( *
.::* +
IsFatal::+ 2
(::2 3
)::3 4
)::4 5
{;; 
string== 
message== 
===  
S==! "
[==" #
$str==# a
,==a b
commandSwitch>> !
.>>! "
Value>>" '
,>>' (
propertyInfo??  
.??  !
PropertyType??! -
.??- .
FullName??. 6
,??6 7
commandSwitch@@ !
.@@! "
Key@@" %
]@@% &
;@@& '
throwAA 
newAA %
InvalidOperationExceptionAA 3
(AA3 4
messageAA4 ;
,AA; <
exAA= ?
)AA? @
;AA@ A
}BB 
}CC 	
privateEE 
asyncEE 
TaskEE 
InvokeAsyncEE &
(EE& '
CommandContextEE' 5
contextEE6 =
)EE= >
{FF 	"
CheckMethodForSwitchesGG "
(GG" #
contextGG# *
.GG* +
CommandDescriptorGG+ <
.GG< =

MethodInfoGG= G
,GGG H
contextGGI P
.GGP Q
SwitchesGGQ Y
)GGY Z
;GGZ [
varII 
	argumentsII 
=II 
(II 
contextII $
.II$ %
	ArgumentsII% .
??II/ 1

EnumerableII2 <
.II< =
EmptyII= B
<IIB C
stringIIC I
>III J
(IIJ K
)IIK L
)IIL M
.IIM N
ToArrayIIN U
(IIU V
)IIV W
;IIW X
objectJJ 
[JJ 
]JJ 
invokeParametersJJ %
=JJ& '(
GetInvokeParametersForMethodJJ( D
(JJD E
contextJJE L
.JJL M
CommandDescriptorJJM ^
.JJ^ _

MethodInfoJJ_ i
,JJi j
	argumentsJJk t
)JJt u
;JJu v
ifKK 
(KK 
invokeParametersKK  
==KK! #
nullKK$ (
)KK( )
{LL 
throwMM 
newMM %
InvalidOperationExceptionMM 3
(MM3 4
SMM4 5
[MM5 6
$strMM6 p
,MMp q
stringMMr x
.MMx y
JoinMMy }
(MM} ~
$str	MM~ Б
,
MMБ В
	arguments
MMГ М
)
MMМ Н
]
MMН О
)
MMО П
;
MMП Р
}NN 
thisPP 
.PP 
ContextPP 
=PP 
contextPP "
;PP" #
ifRR 
(RR 
contextRR 
.RR 
CommandDescriptorRR )
.RR) *

MethodInfoRR* 4
.RR4 5

ReturnTypeRR5 ?
==RR@ B
typeofRRC I
(RRI J
TaskRRJ N
<RRN O
stringRRO U
>RRU V
)RRV W
)RRW X
{SS 
varTT 

taskResultTT 
=TT  
awaitTT! &
(TT' (
TaskTT( ,
<TT, -
stringTT- 3
>TT3 4
)TT4 5
contextTT5 <
.TT< =
CommandDescriptorTT= N
.TTN O

MethodInfoTTO Y
.TTY Z
InvokeTTZ `
(TT` a
thisTTa e
,TTe f
invokeParametersTTg w
)TTw x
;TTx y
awaitUU 
contextUU 
.UU 
OutputUU $
.UU$ %

WriteAsyncUU% /
(UU/ 0

taskResultUU0 :
)UU: ;
;UU; <
returnVV 
;VV 
}WW 
elseXX 
ifXX 
(XX 
typeofXX 
(XX 
TaskXX  
)XX  !
.XX! "
IsAssignableFromXX" 2
(XX2 3
contextXX3 :
.XX: ;
CommandDescriptorXX; L
.XXL M

MethodInfoXXM W
.XXW X

ReturnTypeXXX b
)XXb c
)XXc d
{YY 
awaitZZ 
(ZZ 
TaskZZ 
)ZZ 
contextZZ #
.ZZ# $
CommandDescriptorZZ$ 5
.ZZ5 6

MethodInfoZZ6 @
.ZZ@ A
InvokeZZA G
(ZZG H
thisZZH L
,ZZL M
invokeParametersZZN ^
)ZZ^ _
;ZZ_ `
return[[ 
;[[ 
}\\ 
var^^ 
result^^ 
=^^ 
context^^  
.^^  !
CommandDescriptor^^! 2
.^^2 3

MethodInfo^^3 =
.^^= >
Invoke^^> D
(^^D E
this^^E I
,^^I J
invokeParameters^^K [
)^^[ \
;^^\ ]
if__ 
(__ 
result__ 
is__ 
string__  
)__  !
{`` 
awaitaa 
contextaa 
.aa 
Outputaa $
.aa$ %

WriteAsyncaa% /
(aa/ 0
resultaa0 6
.aa6 7
ToStringaa7 ?
(aa? @
)aa@ A
)aaA B
;aaB C
}bb 
}cc 	
privateee 
staticee 
objectee 
[ee 
]ee (
GetInvokeParametersForMethodee  <
(ee< =

MethodInfoee= G

methodInfoeeH R
,eeR S
IListeeT Y
<eeY Z
stringeeZ `
>ee` a
	argumentseeb k
)eek l
{ff 	
vargg 
invokeParametersgg  
=gg! "
newgg# &
Listgg' +
<gg+ ,
objectgg, 2
>gg2 3
(gg3 4
)gg4 5
;gg5 6
varhh 
argshh 
=hh 
newhh 
Listhh 
<hh  
stringhh  &
>hh& '
(hh' (
	argumentshh( 1
)hh1 2
;hh2 3
varii 
methodParametersii  
=ii! "

methodInfoii# -
.ii- .
GetParametersii. ;
(ii; <
)ii< =
;ii= >
booljj 
methodHasParamsjj  
=jj! "
falsejj# (
;jj( )
ifll 
(ll 
methodParametersll  
.ll  !
Lengthll! '
==ll( *
$numll+ ,
)ll, -
{mm 
ifnn 
(nn 
argsnn 
.nn 
Countnn 
==nn !
$numnn" #
)nn# $
{oo 
returnpp 
invokeParameterspp +
.pp+ ,
ToArraypp, 3
(pp3 4
)pp4 5
;pp5 6
}qq 
returnrr 
nullrr 
;rr 
}ss 
ifuu 
(uu 
methodParametersuu  
[uu  !
methodParametersuu! 1
.uu1 2
Lengthuu2 8
-uu9 :
$numuu; <
]uu< =
.uu= >
ParameterTypeuu> K
.uuK L
IsAssignableFromuuL \
(uu\ ]
typeofuu] c
(uuc d
stringuud j
[uuj k
]uuk l
)uul m
)uum n
)uun o
{vv 
methodHasParamsww 
=ww  !
trueww" &
;ww& '
}xx 
varzz $
requiredMethodParameterszz (
=zz) *
methodParameterszz+ ;
.zz; <
Wherezz< A
(zzA B
xzzB C
=>zzD F
!zzG H
xzzH I
.zzI J
HasDefaultValuezzJ Y
)zzY Z
.zzZ [
ToArrayzz[ b
(zzb c
)zzc d
;zzd e
if|| 
(|| 
!|| 
methodHasParams||  
&&||! #
args||$ (
.||( )
Count||) .
<||/ 0$
requiredMethodParameters||1 I
.||I J
Length||J P
)||P Q
return||R X
null||Y ]
;||] ^
if}} 
(}} 
methodHasParams}} 
&&}}  "
(}}# $
methodParameters}}$ 4
.}}4 5
Length}}5 ;
-}}< =
args}}> B
.}}B C
Count}}C H
>=}}I K
$num}}L M
)}}M N
)}}N O
return}}P V
null}}W [
;}}[ \
for 
( 
int 
i 
= 
$num 
; 
i 
< 
methodParameters  0
.0 1
Length1 7
;7 8
i9 :
++: <
)< =
{
АА 
if
ББ 
(
ББ 
methodParameters
ББ $
[
ББ$ %
i
ББ% &
]
ББ& '
.
ББ' (
ParameterType
ББ( 5
.
ББ5 6
IsAssignableFrom
ББ6 F
(
ББF G
typeof
ББG M
(
ББM N
string
ББN T
[
ББT U
]
ББU V
)
ББV W
)
ББW X
)
ББX Y
{
ВВ 
invokeParameters
ГГ $
.
ГГ$ %
Add
ГГ% (
(
ГГ( )
args
ГГ) -
.
ГГ- .
GetRange
ГГ. 6
(
ГГ6 7
i
ГГ7 8
,
ГГ8 9
args
ГГ: >
.
ГГ> ?
Count
ГГ? D
-
ГГE F
i
ГГG H
)
ГГH I
.
ГГI J
ToArray
ГГJ Q
(
ГГQ R
)
ГГR S
)
ГГS T
;
ГГT U
break
ДД 
;
ДД 
}
ЕЕ 
if
ЗЗ 
(
ЗЗ 
i
ЗЗ 
<
ЗЗ 
	arguments
ЗЗ !
.
ЗЗ! "
Count
ЗЗ" '
)
ЗЗ' (
{
ИИ 
var
ЙЙ 
val
ЙЙ 
=
ЙЙ 
ConvertToType
ЙЙ +
(
ЙЙ+ ,
methodParameters
ЙЙ, <
[
ЙЙ< =
i
ЙЙ= >
]
ЙЙ> ?
.
ЙЙ? @
ParameterType
ЙЙ@ M
,
ЙЙM N
	arguments
ЙЙO X
[
ЙЙX Y
i
ЙЙY Z
]
ЙЙZ [
)
ЙЙ[ \
;
ЙЙ\ ]
if
КК 
(
КК 
val
КК 
==
КК 
null
КК #
)
КК# $
return
КК% +
null
КК, 0
;
КК0 1
invokeParameters
ММ $
.
ММ$ %
Add
ММ% (
(
ММ( )
val
ММ) ,
)
ММ, -
;
ММ- .
}
НН 
else
ОО 
{
ПП 
invokeParameters
РР $
.
РР$ %
Add
РР% (
(
РР( )
methodParameters
РР) 9
[
РР9 :
i
РР: ;
]
РР; <
.
РР< =
DefaultValue
РР= I
)
РРI J
;
РРJ K
}
СС 
}
ТТ 
if
ФФ 
(
ФФ 
methodHasParams
ФФ 
&&
ФФ  "
(
ФФ# $
methodParameters
ФФ$ 4
.
ФФ4 5
Length
ФФ5 ;
-
ФФ< =
args
ФФ> B
.
ФФB C
Count
ФФC H
==
ФФI K
$num
ФФL M
)
ФФM N
)
ФФN O
invokeParameters
ФФP `
.
ФФ` a
Add
ФФa d
(
ФФd e
new
ФФe h
string
ФФi o
[
ФФo p
]
ФФp q
{
ФФr s
}
ФФt u
)
ФФu v
;
ФФv w
return
ЦЦ 
invokeParameters
ЦЦ #
.
ЦЦ# $
ToArray
ЦЦ$ +
(
ЦЦ+ ,
)
ЦЦ, -
;
ЦЦ- .
}
ЧЧ 	
private
ЩЩ 
void
ЩЩ $
CheckMethodForSwitches
ЩЩ +
(
ЩЩ+ ,

MethodInfo
ЩЩ, 6

methodInfo
ЩЩ7 A
,
ЩЩA B
IDictionary
ЩЩC N
<
ЩЩN O
string
ЩЩO U
,
ЩЩU V
string
ЩЩW ]
>
ЩЩ] ^
switches
ЩЩ_ g
)
ЩЩg h
{
ЪЪ 	
if
ЫЫ 
(
ЫЫ 
switches
ЫЫ 
==
ЫЫ 
null
ЫЫ  
||
ЫЫ! #
switches
ЫЫ$ ,
.
ЫЫ, -
Count
ЫЫ- 2
==
ЫЫ3 5
$num
ЫЫ6 7
)
ЫЫ7 8
return
ЬЬ 
;
ЬЬ 
var
ЮЮ 
supportedSwitches
ЮЮ !
=
ЮЮ" #
new
ЮЮ$ '
HashSet
ЮЮ( /
<
ЮЮ/ 0
string
ЮЮ0 6
>
ЮЮ6 7
(
ЮЮ7 8
StringComparer
ЮЮ8 F
.
ЮЮF G
OrdinalIgnoreCase
ЮЮG X
)
ЮЮX Y
;
ЮЮY Z
foreach
ЯЯ 
(
ЯЯ &
OrchardSwitchesAttribute
ЯЯ -
switchesAttribute
ЯЯ. ?
in
ЯЯ@ B

methodInfo
ЯЯC M
.
ЯЯM N!
GetCustomAttributes
ЯЯN a
(
ЯЯa b
typeof
ЯЯb h
(
ЯЯh i'
OrchardSwitchesAttributeЯЯi Б
)ЯЯБ В
,ЯЯВ Г
falseЯЯД Й
)ЯЯЙ К
)ЯЯК Л
{
аа 
supportedSwitches
бб !
.
бб! "
	UnionWith
бб" +
(
бб+ ,
switchesAttribute
бб, =
.
бб= >
Switches
бб> F
)
ббF G
;
ббG H
}
вв 
foreach
дд 
(
дд 
var
дд 
commandSwitch
дд &
in
дд' )
switches
дд* 2
.
дд2 3
Keys
дд3 7
)
дд7 8
{
ее 
if
жж 
(
жж 
!
жж 
supportedSwitches
жж &
.
жж& '
Contains
жж' /
(
жж/ 0
commandSwitch
жж0 =
)
жж= >
)
жж> ?
{
зз 
throw
ии 
new
ии '
InvalidOperationException
ии 7
(
ии7 8
S
ии8 9
[
ии9 :
$str
ии: k
,
ииk l

methodInfo
ииm w
.
ииw x
Name
ииx |
,
ии| }
commandSwitchии~ Л
]ииЛ М
)ииМ Н
;ииН О
}
йй 
}
кк 
}
лл 	
private
нн 
static
нн 
object
нн 
ConvertToType
нн +
(
нн+ ,
Type
нн, 0
type
нн1 5
,
нн5 6
string
нн7 =
value
нн> C
)
ннC D
{
оо 	
if
пп 
(
пп 
type
пп 
.
пп 
IsEnum
пп 
)
пп 
{
░░ 
try
▒▒ 
{
▓▓ 
return
││ 
Enum
││ 
.
││  
Parse
││  %
(
││% &
type
││& *
,
││* +
value
││, 1
,
││1 2
true
││3 7
)
││7 8
;
││8 9
}
┤┤ 
catch
╡╡ 
(
╡╡ 
ArgumentException
╡╡ (
)
╡╡( )
{
╢╢ 
return
╖╖ 
null
╖╖ 
;
╖╖  
}
╕╕ 
}
╣╣ 
else
║║ 
{
╗╗ 
return
╝╝ 
Convert
╝╝ 
.
╝╝ 

ChangeType
╝╝ )
(
╝╝) *
value
╝╝* /
,
╝╝/ 0
type
╝╝1 5
)
╝╝5 6
;
╝╝6 7
}
╜╜ 
}
╛╛ 	
}
┐┐ 
}└└ ОK
ФD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\DefaultCommandManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public		 

class		 !
DefaultCommandManager		 &
:		' (
ICommandManager		) 8
{

 
private 
readonly 
IEnumerable $
<$ %
ICommandHandler% 4
>4 5
_commandHandlers6 F
;F G
private 
readonly +
CommandHandlerDescriptorBuilder 8
_builder9 A
=B C
newD G+
CommandHandlerDescriptorBuilderH g
(g h
)h i
;i j
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public !
DefaultCommandManager $
($ %
IEnumerable% 0
<0 1
ICommandHandler1 @
>@ A
commandHandlersB Q
,Q R
IStringLocalizer 
< !
DefaultCommandManager 2
>2 3
	localizer4 =
)= >
{ 	
_commandHandlers 
= 
commandHandlers .
;. /
S 
= 
	localizer 
; 
} 	
public 
async 
Task 
ExecuteAsync &
(& '
CommandParameters' 8

parameters9 C
)C D
{ 	
var 
matches 
= 
MatchCommands '
(' (

parameters( 2
)2 3
??4 6

Enumerable7 A
.A B
EmptyB G
<G H
MatchH M
>M N
(N O
)O P
;P Q
if 
( 
matches 
. 
Count 
( 
) 
==  "
$num# $
)$ %
{ 
var 
match 
= 
matches #
.# $
Single$ *
(* +
)+ ,
;, -
await 
match 
. 
CommandHandler *
.* +
ExecuteAsync+ 7
(7 8
match8 =
.= >
Context> E
)E F
;F G
} 
else   
{!! 
var"" 
commandMatch""  
=""! "
string""# )
."") *
Join""* .
("". /
$str""/ 2
,""2 3

parameters""4 >
.""> ?
	Arguments""? H
.""H I
ToArray""I P
(""P Q
)""Q R
)""R S
;""S T
var## 
commandList## 
=##  !
string##" (
.##( )
Join##) -
(##- .
$str##. 1
,##1 2!
GetCommandDescriptors##3 H
(##H I
)##I J
.##J K

SelectMany##K U
(##U V
d##V W
=>##X Z
d##[ \
.##\ ]
Names##] b
)##b c
.##c d
ToArray##d k
(##k l
)##l m
)##m n
;##n o
if$$ 
($$ 
matches$$ 
.$$ 
Any$$ 
($$  
)$$  !
)$$! "
{%% 
throw&& 
new&& 
	Exception&& '
(&&' (
S&&( )
[&&) *
$str&&* x
,&&x y
commandMatch'' $
,''$ %
commandList''& 1
]''1 2
)''2 3
;''3 4
}(( 
throw)) 
new)) 
	Exception)) #
())# $
S))$ %
[))% &
$str))& m
,))m n
commandMatch**  
,**  !
commandList**" -
]**- .
)**. /
;**/ 0
}++ 
},, 	
public.. 
IEnumerable.. 
<.. 
CommandDescriptor.. ,
>.., -!
GetCommandDescriptors... C
(..C D
)..D E
{// 	
return00 
_commandHandlers00 #
.00# $

SelectMany00$ .
(00. /
x00/ 0
=>001 3
_builder004 <
.00< =
Build00= B
(00B C
x00C D
.00D E
GetType00E L
(00L M
)00M N
)00N O
.00O P
Commands00P X
)00X Y
;00Y Z
}11 	
private33 
IEnumerable33 
<33 
Match33 !
>33! "
MatchCommands33# 0
(330 1
CommandParameters331 B

parameters33C M
)33M N
{44 	
return77 
_commandHandlers77 #
.77# $

SelectMany77$ .
(77. /
h77/ 0
=>771 3
MatchCommands88 !
(88! "

parameters88" ,
,88, -

parameters88. 8
.888 9
	Arguments889 B
.88B C
Count88C H
(88H I
)88I J
,88J K
_builder88L T
.88T U
Build88U Z
(88Z [
h88[ \
.88\ ]
GetType88] d
(88d e
)88e f
)88f g
,88g h
h88i j
)88j k
)88k l
.88l m
ToList88m s
(88s t
)88t u
;88u v
}99 	
private;; 
static;; 
IEnumerable;; "
<;;" #
Match;;# (
>;;( )
MatchCommands;;* 7
(;;7 8
CommandParameters;;8 I

parameters;;J T
,;;T U
int;;V Y
argCount;;Z b
,;;b c$
CommandHandlerDescriptor;;d |

descriptor	;;} З
,
;;З И
ICommandHandler
;;Й Ш
handler
;;Щ а
)
;;а б
{<< 	
foreach== 
(== 
var== 
commandDescriptor== *
in==+ -

descriptor==. 8
.==8 9
Commands==9 A
)==A B
{>> 
foreach?? 
(?? 
var?? 
name?? !
in??" $
commandDescriptor??% 6
.??6 7
Names??7 <
)??< =
{@@ 
varAA 
namesAA 
=AA 
nameAA  $
.AA$ %
SplitAA% *
(AA* +
$charAA+ .
)AA. /
;AA/ 0
varBB 

namesCountBB "
=BB# $
namesBB% *
.BB* +
CountBB+ 0
(BB0 1
)BB1 2
;BB2 3
ifFF 
(FF 
nameFF 
==FF 
stringFF  &
.FF& '
JoinFF' +
(FF+ ,
$strFF, /
,FF/ 0

parametersFF1 ;
.FF; <
	ArgumentsFF< E
.FFE F
TakeFFF J
(FFJ K

namesCountFFK U
)FFU V
)FFV W
&&FFX Z
commandDescriptorFF[ l
.FFl m

MethodInfoFFm w
.FFw x
GetParameters	FFx Е
(
FFЕ Ж
)
FFЖ З
.
FFЗ И
Length
FFИ О
==
FFП С
argCount
FFТ Ъ
-
FFЫ Ь

namesCount
FFЭ з
)
FFз и
{GG 
namesHH 
=HH 

parametersHH  *
.HH* +
	ArgumentsHH+ 4
.HH4 5
ToArrayHH5 <
(HH< =
)HH= >
;HH> ?
}II 
ifKK 
(KK 

parametersKK "
.KK" #
	ArgumentsKK# ,
.KK, -
TakeKK- 1
(KK1 2
argCountKK2 :
)KK: ;
.KK; <
SequenceEqualKK< I
(KKI J
namesKKJ O
,KKO P
StringComparerKKQ _
.KK_ `
OrdinalIgnoreCaseKK` q
)KKq r
)KKr s
{LL 
yieldMM 
returnMM $
newMM% (
MatchMM) .
{NN 
ContextOO #
=OO$ %
newOO& )
CommandContextOO* 8
{PP 
	ArgumentsQQ  )
=QQ* +

parametersQQ, 6
.QQ6 7
	ArgumentsQQ7 @
.QQ@ A
SkipQQA E
(QQE F
nameQQF J
.QQJ K
SplitQQK P
(QQP Q
$charQQQ T
)QQT U
.QQU V
CountQQV [
(QQ[ \
)QQ\ ]
)QQ] ^
,QQ^ _
CommandRR  '
=RR( )
stringRR* 0
.RR0 1
JoinRR1 5
(RR5 6
$strRR6 9
,RR9 :
namesRR; @
)RR@ A
,RRA B
CommandDescriptorSS  1
=SS2 3
commandDescriptorSS4 E
,SSE F
InputTT  %
=TT& '

parametersTT( 2
.TT2 3
InputTT3 8
,TT8 9
OutputUU  &
=UU' (

parametersUU) 3
.UU3 4
OutputUU4 :
,UU: ;
SwitchesVV  (
=VV) *

parametersVV+ 5
.VV5 6
SwitchesVV6 >
,VV> ?
}WW 
,WW 
CommandHandlerXX *
=XX+ ,
handlerXX- 4
}YY 
;YY 
}ZZ 
}[[ 
}\\ 
}]] 	
private__ 
class__ 
Match__ 
{`` 	
publicaa 
CommandContextaa !
Contextaa" )
{aa* +
getaa, /
;aa/ 0
setaa1 4
;aa4 5
}aa6 7
publicbb 
ICommandHandlerbb "
CommandHandlerbb# 1
{bb2 3
getbb4 7
;bb7 8
setbb9 <
;bb< =
}bb> ?
}cc 	
}dd 
}ee Ц
ОD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\ICommandHandler.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

	interface 
ICommandHandler $
{ 
Task 
ExecuteAsync 
( 
CommandContext (
context) 0
)0 1
;1 2
} 
}		 ┬
ОD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\ICommandManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
public 

	interface 
ICommandManager $
{ 
Task 
ExecuteAsync 
( 
CommandParameters +

parameters, 6
)6 7
;7 8
IEnumerable		 
<		 
CommandDescriptor		 %
>		% &!
GetCommandDescriptors		' <
(		< =
)		= >
;		> ?
}

 
} ╔
ЫD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
partial 
class (
OrchardCoreBuilderExtensions  <
{ 
public 
static 
OrchardCoreBuilder (
AddCommands) 4
(4 5
this5 9
OrchardCoreBuilder: L
builderM T
)T U
{ 	
var 
services 
= 
builder "
." #
ApplicationServices# 6
;6 7
services 
. 
	AddScoped 
< 
ICommandManager .
,. /!
DefaultCommandManager0 E
>E F
(F G
)G H
;H I
services 
. 
	AddScoped 
< 
ICommandHandler .
,. /
HelpCommand0 ;
>; <
(< =
)= >
;> ?
services 
. 
	AddScoped 
< $
ICommandParametersParser 7
,7 8#
CommandParametersParser9 P
>P Q
(Q R
)R S
;S T
services 
. 
	AddScoped 
< 
ICommandParser -
,- .
CommandParser/ <
>< =
(= >
)> ?
;? @
return 
builder 
; 
} 	
} 
} ╫
ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\OrchardSwitchAttribute.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Property% -
)- .
]. /
public 

class "
OrchardSwitchAttribute '
:( )
	Attribute* 3
{ 
} 
}		 е
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\OrchardSwitchesAttribute.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Method% +
)+ ,
], -
public 

class $
OrchardSwitchesAttribute )
:* +
	Attribute, 5
{		 
private

 
readonly

 
string

 
	_switches

  )
;

) *
public $
OrchardSwitchesAttribute '
(' (
string( .
switches/ 7
)7 8
{ 	
	_switches 
= 
switches  
;  !
} 	
public 
IEnumerable 
< 
string !
>! "
Switches# +
{ 	
get 
{ 
return 
( 
	_switches !
??" $
$str% '
)' (
.( )
Trim) -
(- .
). /
./ 0
Split0 5
(5 6
$char6 9
)9 :
.: ;
Select; A
(A B
sB C
=>D F
sG H
.H I
TrimI M
(M N
)N O
)O P
;P Q
} 
} 	
} 
} ╔
бD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\Parameters\CommandParametersParser.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
.* +

Parameters+ 5
{ 
public 

class #
CommandParametersParser (
:) *$
ICommandParametersParser+ C
{ 
[		 	
SecurityCritical			 
]		 
public

 
CommandParameters

  
Parse

! &
(

& '
IEnumerable

' 2
<

2 3
string

3 9
>

9 :
args

; ?
)

? @
{ 	
var 
	arguments 
= 
new 
List  $
<$ %
string% +
>+ ,
(, -
)- .
;. /
var 
switches 
= 
new 

Dictionary )
<) *
string* 0
,0 1
string2 8
>8 9
(9 :
): ;
;; <
foreach 
( 
var 
arg 
in 
args  $
)$ %
{ 
if 
( 
arg 
[ 
$num 
] 
== 
$char !
)! "
{ 
int 
index 
= 
arg  #
.# $
IndexOf$ +
(+ ,
$char, /
)/ 0
;0 1
var 

switchName "
=# $
(% &
index& +
<, -
$num. /
?0 1
arg2 5
.5 6
	Substring6 ?
(? @
$num@ A
)A B
:C D
argE H
.H I
	SubstringI R
(R S
$numS T
,T U
indexV [
-\ ]
$num^ _
)_ `
)` a
;a b
var 
switchValue #
=$ %
(& '
index' ,
<- .
$num/ 0
||1 3
index4 9
>=: <
arg= @
.@ A
LengthA G
?H I
stringJ P
.P Q
EmptyQ V
:W X
argY \
.\ ]
	Substring] f
(f g
indexg l
+m n
$numo p
)p q
)q r
;r s
if 
( 
string 
. 
IsNullOrEmpty ,
(, -

switchName- 7
)7 8
)8 9
{ 
throw 
new !
ArgumentException" 3
(3 4
string4 :
.: ;
Format; A
(A B
$str	B Т
,
Т У
arg
Ф Ч
)
Ч Ш
)
Ш Щ
;
Щ Ъ
} 
switches 
. 
Add  
(  !

switchName! +
,+ ,
switchValue- 8
)8 9
;9 :
} 
else 
{   
	arguments!! 
.!! 
Add!! !
(!!! "
arg!!" %
)!!% &
;!!& '
}"" 
}## 
return%% 
new%% 
CommandParameters%% (
{&& 
	Arguments'' 
='' 
	arguments'' %
,''% &
Switches(( 
=(( 
switches(( #
})) 
;)) 
}** 	
}++ 
},, М
вD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\Parameters\ICommandParametersParser.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
.* +

Parameters+ 5
{ 
public 

	interface $
ICommandParametersParser -
{ 
CommandParameters 
Parse 
(  
IEnumerable  +
<+ ,
string, 2
>2 3
args4 8
)8 9
;9 :
} 
}		 ╗F
ШD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Commands\Parameters\ICommandParser.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Commands" *
.* +

Parameters+ 5
{ 
public 

	interface 
ICommandParser #
{ 
IEnumerable		 
<		 
string		 
>		 
Parse		 !
(		! "
string		" (
commandLine		) 4
)		4 5
;		5 6
}

 
public 

class 
CommandParser 
:  
ICommandParser! /
{ 
[ 	
SecurityCritical	 
] 
public 
IEnumerable 
< 
string !
>! "
Parse# (
(( )
string) /
commandLine0 ;
); <
{ 	
return 
	SplitArgs 
( 
commandLine (
)( )
;) *
} 	
public 
class 
State 
{ 	
private 
readonly 
string #
_commandLine$ 0
;0 1
private 
readonly 
StringBuilder *
_stringBuilder+ 9
;9 :
private 
readonly 
List !
<! "
string" (
>( )

_arguments* 4
;4 5
private 
int 
_index 
; 
public 
State 
( 
string 
commandLine  +
)+ ,
{ 
_commandLine 
= 
commandLine *
;* +
_stringBuilder 
=  
new! $
StringBuilder% 2
(2 3
)3 4
;4 5

_arguments 
= 
new  
List! %
<% &
string& ,
>, -
(- .
). /
;/ 0
}   
public"" 
StringBuilder""  
StringBuilder""! .
{""/ 0
get""1 4
{""5 6
return""7 =
_stringBuilder""> L
;""L M
}""N O
}""P Q
public## 
bool## 
EOF## 
{## 
get## !
{##" #
return##$ *
_index##+ 1
>=##2 4
_commandLine##5 A
.##A B
Length##B H
;##H I
}##J K
}##L M
public$$ 
char$$ 
Current$$ 
{$$  !
get$$" %
{$$& '
return$$( .
_commandLine$$/ ;
[$$; <
_index$$< B
]$$B C
;$$C D
}$$E F
}$$G H
public%% 
IEnumerable%% 
<%% 
string%% %
>%%% &
	Arguments%%' 0
{%%1 2
get%%3 6
{%%7 8
return%%9 ?

_arguments%%@ J
;%%J K
}%%L M
}%%N O
public'' 
void'' 
AddArgument'' #
(''# $
)''$ %
{(( 

_arguments)) 
.)) 
Add)) 
()) 
StringBuilder)) ,
.)), -
ToString))- 5
())5 6
)))6 7
)))7 8
;))8 9
StringBuilder** 
.** 
Clear** #
(**# $
)**$ %
;**% &
}++ 
public-- 
void-- 
AppendCurrent-- %
(--% &
)--& '
{.. 
StringBuilder// 
.// 
Append// $
(//$ %
Current//% ,
)//, -
;//- .
}00 
public22 
void22 
Append22 
(22 
char22 #
ch22$ &
)22& '
{33 
StringBuilder44 
.44 
Append44 $
(44$ %
ch44% '
)44' (
;44( )
}55 
public77 
void77 
MoveNext77  
(77  !
)77! "
{88 
if99 
(99 
!99 
EOF99 
)99 
_index:: 
++:: 
;:: 
};; 
}<< 	
privateII 
IEnumerableII 
<II 
stringII "
>II" #
	SplitArgsII$ -
(II- .
stringII. 4
commandLineII5 @
)II@ A
{JJ 	
varKK 
stateKK 
=KK 
newKK 
StateKK !
(KK! "
commandLineKK" -
)KK- .
;KK. /
whileLL 
(LL 
!LL 
stateLL 
.LL 
EOFLL 
)LL 
{MM 
switchNN 
(NN 
stateNN 
.NN 
CurrentNN %
)NN% &
{OO 
casePP 
$charPP 
:PP 
ProcessQuoteQQ $
(QQ$ %
stateQQ% *
)QQ* +
;QQ+ ,
breakRR 
;RR 
caseTT 
$charTT 
:TT 
ProcessBackslashUU (
(UU( )
stateUU) .
)UU. /
;UU/ 0
breakVV 
;VV 
caseXX 
$charXX 
:XX 
caseYY 
$charYY 
:YY 
ifZZ 
(ZZ 
stateZZ !
.ZZ! "
StringBuilderZZ" /
.ZZ/ 0
LengthZZ0 6
>ZZ7 8
$numZZ9 :
)ZZ: ;
state[[ !
.[[! "
AddArgument[[" -
([[- .
)[[. /
;[[/ 0
state\\ 
.\\ 
MoveNext\\ &
(\\& '
)\\' (
;\\( )
break]] 
;]] 
default__ 
:__ 
state`` 
.`` 
AppendCurrent`` +
(``+ ,
)``, -
;``- .
stateaa 
.aa 
MoveNextaa &
(aa& '
)aa' (
;aa( )
breakbb 
;bb 
}cc 
}dd 
ifee 
(ee 
stateee 
.ee 
StringBuilderee #
.ee# $
Lengthee$ *
>ee+ ,
$numee- .
)ee. /
stateff 
.ff 
AddArgumentff !
(ff! "
)ff" #
;ff# $
returngg 
stategg 
.gg 
	Argumentsgg "
;gg" #
}hh 	
privatejj 
voidjj 
ProcessQuotejj !
(jj! "
Statejj" '
statejj( -
)jj- .
{kk 	
statell 
.ll 
MoveNextll 
(ll 
)ll 
;ll 
whilemm 
(mm 
!mm 
statemm 
.mm 
EOFmm 
)mm 
{nn 
ifoo 
(oo 
stateoo 
.oo 
Currentoo !
==oo" $
$charoo% (
)oo( )
{pp 
stateqq 
.qq 
MoveNextqq "
(qq" #
)qq# $
;qq$ %
breakrr 
;rr 
}ss 
statett 
.tt 
AppendCurrenttt #
(tt# $
)tt$ %
;tt% &
stateuu 
.uu 
MoveNextuu 
(uu 
)uu  
;uu  !
}vv 
statexx 
.xx 
AddArgumentxx 
(xx 
)xx 
;xx  
}yy 	
private{{ 
void{{ 
ProcessBackslash{{ %
({{% &
State{{& +
state{{, 1
){{1 2
{|| 	
state}} 
.}} 
MoveNext}} 
(}} 
)}} 
;}} 
if~~ 
(~~ 
state~~ 
.~~ 
EOF~~ 
)~~ 
{ 
state
АА 
.
АА 
Append
АА 
(
АА 
$char
АА !
)
АА! "
;
АА" #
return
ББ 
;
ББ 
}
ВВ 
if
ДД 
(
ДД 
state
ДД 
.
ДД 
Current
ДД 
==
ДД  
$char
ДД! $
)
ДД$ %
{
ЕЕ 
state
ЖЖ 
.
ЖЖ 
Append
ЖЖ 
(
ЖЖ 
$char
ЖЖ  
)
ЖЖ  !
;
ЖЖ! "
state
ЗЗ 
.
ЗЗ 
MoveNext
ЗЗ 
(
ЗЗ 
)
ЗЗ  
;
ЗЗ  !
}
ИИ 
else
ЙЙ 
{
КК 
state
ЛЛ 
.
ЛЛ 
Append
ЛЛ 
(
ЛЛ 
$char
ЛЛ !
)
ЛЛ! "
;
ЛЛ" #
state
ММ 
.
ММ 
AppendCurrent
ММ #
(
ММ# $
)
ММ$ %
;
ММ% &
state
НН 
.
НН 
MoveNext
НН 
(
НН 
)
НН  
;
НН  !
}
ОО 
}
ПП 	
}
РР 
}СС ъ:
ЩD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\DefaultDocumentSerializer.cs
	namespace		 	
OrchardCore		
 
.		 
	Documents		 
{

 
public 

class %
DefaultDocumentSerializer *
:+ ,
IDocumentSerialiser- @
{ 
public 
static %
DefaultDocumentSerializer /
Instance0 8
=9 :
new; >%
DefaultDocumentSerializer? X
(X Y
)Y Z
;Z [
private 
static 
readonly "
JsonSerializerSettings  6
_jsonSettings7 D
=E F
newG J"
JsonSerializerSettingsK a
{ 	
TypeNameHandling 
= 
TypeNameHandling /
./ 0
Auto0 4
,4 5 
DateTimeZoneHandling  
=! " 
DateTimeZoneHandling# 7
.7 8
Utc8 ;
} 	
;	 

public %
DefaultDocumentSerializer (
(( )
)) *
{ 	
} 	
public 
Task 
< 
byte 
[ 
] 
> 
SerializeAsync *
<* +
	TDocument+ 4
>4 5
(5 6
	TDocument6 ?
document@ H
,H I
intJ M
compressThresholdN _
=` a
Int32b g
.g h
MaxValueh p
)p q
wherer w
	TDocument	x Б
:
В Г
class
Д Й
,
Й К
	IDocument
Л Ф
,
Ф Х
new
Ц Щ
(
Щ Ъ
)
Ъ Ы
{ 	
var 
data 
= 
Encoding 
.  
UTF8  $
.$ %
GetBytes% -
(- .
JsonConvert. 9
.9 :
SerializeObject: I
(I J
documentJ R
,R S
_jsonSettingsT a
)a b
)b c
;c d
if   
(   
data   
.   
Length   
>=   
compressThreshold   0
)  0 1
{!! 
data"" 
="" 
Compress"" 
(""  
data""  $
)""$ %
;""% &
}## 
return%% 
Task%% 
.%% 

FromResult%% "
(%%" #
data%%# '
)%%' (
;%%( )
}&& 	
public(( 
Task(( 
<(( 
	TDocument(( 
>(( 
DeserializeAsync(( /
<((/ 0
	TDocument((0 9
>((9 :
(((: ;
byte((; ?
[((? @
]((@ A
data((B F
)((F G
where((H M
	TDocument((N W
:((X Y
class((Z _
,((_ `
	IDocument((a j
,((j k
new((l o
(((o p
)((p q
{)) 	
if** 
(** 
IsCompressed** 
(** 
data** !
)**! "
)**" #
{++ 
data,, 
=,, 

Decompress,, !
(,,! "
data,," &
),,& '
;,,' (
}-- 
var// 
document// 
=// 
JsonConvert// &
.//& '
DeserializeObject//' 8
<//8 9
	TDocument//9 B
>//B C
(//C D
Encoding//D L
.//L M
UTF8//M Q
.//Q R
	GetString//R [
(//[ \
data//\ `
)//` a
,//a b
_jsonSettings//c p
)//p q
;//q r
return11 
Task11 
.11 

FromResult11 "
(11" #
document11# +
)11+ ,
;11, -
}22 	
private44 
static44 
readonly44 
byte44  $
[44$ %
]44% &
GZipHeaderBytes44' 6
=447 8
{449 :
$num44; ?
,44? @
$num44A E
}44F G
;44G H
internal66 
static66 
bool66 
IsCompressed66 )
(66) *
byte66* .
[66. /
]66/ 0
data661 5
)665 6
{77 	
if88 
(88 
data88 
.88 
Length88 
<88 
GZipHeaderBytes88 -
.88- .
Length88. 4
)884 5
{99 
return:: 
false:: 
;:: 
};; 
for== 
(== 
var== 
i== 
=== 
$num== 
;== 
i== 
<== 
GZipHeaderBytes==  /
.==/ 0
Length==0 6
;==6 7
i==8 9
++==9 ;
)==; <
{>> 
if?? 
(?? 
data?? 
[?? 
i?? 
]?? 
!=?? 
GZipHeaderBytes?? .
[??. /
i??/ 0
]??0 1
)??1 2
{@@ 
returnAA 
falseAA  
;AA  !
}BB 
}CC 
returnEE 
trueEE 
;EE 
}FF 	
internalHH 
staticHH 
byteHH 
[HH 
]HH 
CompressHH '
(HH' (
byteHH( ,
[HH, -
]HH- .
dataHH/ 3
)HH3 4
{II 	
usingJJ 
varJJ 
inputJJ 
=JJ 
newJJ !
MemoryStreamJJ" .
(JJ. /
dataJJ/ 3
)JJ3 4
;JJ4 5
usingKK 
varKK 
outputKK 
=KK 
newKK "
MemoryStreamKK# /
(KK/ 0
)KK0 1
;KK1 2
usingLL 
(LL 
varLL 
gzipLL 
=LL 
newLL !

GZipStreamLL" ,
(LL, -
outputLL- 3
,LL3 4
CompressionModeLL5 D
.LLD E
CompressLLE M
)LLM N
)LLN O
{MM 
inputNN 
.NN 
CopyToNN 
(NN 
gzipNN !
)NN! "
;NN" #
}OO 
returnQQ 
outputQQ 
.QQ 
ToArrayQQ !
(QQ! "
)QQ" #
;QQ# $
}RR 	
internalTT 
staticTT 
byteTT 
[TT 
]TT 

DecompressTT )
(TT) *
byteTT* .
[TT. /
]TT/ 0
dataTT1 5
)TT5 6
{UU 	
usingVV 
varVV 
inputVV 
=VV 
newVV !
MemoryStreamVV" .
(VV. /
dataVV/ 3
)VV3 4
;VV4 5
usingWW 
varWW 
outputWW 
=WW 
newWW "
MemoryStreamWW# /
(WW/ 0
)WW0 1
;WW1 2
usingXX 
(XX 
varXX 
gzipXX 
=XX 
newXX !

GZipStreamXX" ,
(XX, -
inputXX- 2
,XX2 3
CompressionModeXX4 C
.XXC D

DecompressXXD N
)XXN O
)XXO P
{YY 
gzipZZ 
.ZZ 
CopyToZZ 
(ZZ 
outputZZ "
)ZZ" #
;ZZ# $
}[[ 
return]] 
output]] 
.]] 
ToArray]] !
(]]! "
)]]" #
;]]# $
}^^ 	
}__ 
}`` а
ХD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\DocumentEntityManager.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public

 

class

 !
DocumentEntityManager

 &
<

& '
TDocumentEntity

' 6
>

6 7
:

8 9"
IDocumentEntityManager

: P
<

P Q
TDocumentEntity

Q `
>

` a
where

b g
TDocumentEntity

h w
:

x y
class

z 
,	

 А
IDocumentEntity


Б Р
,


Р С
new


Т Х
(


Х Ц
)


Ц Ч
{ 
private 
readonly 
IDocumentManager )
<) *
TDocumentEntity* 9
>9 :
_documentManager; K
;K L
public !
DocumentEntityManager $
($ %
IDocumentManager% 5
<5 6
TDocumentEntity6 E
>E F
documentManagerG V
)V W
=>X Z
_documentManager[ k
=l m
documentManagern }
;} ~
public 
async 
Task 
< 
T 
> 
GetAsync %
<% &
T& '
>' (
(( )
string) /
key0 3
)3 4
where5 :
T; <
:= >
new? B
(B C
)C D
{ 	
var 
document 
= 
await  
_documentManager! 1
.1 2%
GetOrCreateImmutableAsync2 K
(K L
)L M
;M N
if 
( 
document 
. 

Properties #
.# $
TryGetValue$ /
(/ 0
key0 3
,3 4
out5 8
var9 <
value= B
)B C
)C D
{ 
return 
value 
. 
ToObject %
<% &
T& '
>' (
(( )
)) *
;* +
} 
return 
new 
T 
( 
) 
; 
} 	
public 
async 
Task 
SetAsync "
<" #
T# $
>$ %
(% &
string& ,
key- 0
,0 1
T2 3
value4 9
)9 :
where; @
TA B
:C D
newE H
(H I
)I J
{ 	
var 
document 
= 
await  
_documentManager! 1
.1 2#
GetOrCreateMutableAsync2 I
(I J
)J K
;K L
document 
. 

Properties 
[  
key  #
]# $
=% &
JObject' .
.. /

FromObject/ 9
(9 :
value: ?
)? @
;@ A
await   
_documentManager   "
.  " #
UpdateAsync  # .
(  . /
document  / 7
)  7 8
;  8 9
}!! 	
public## 
async## 
Task## 
RemoveAsync## %
(##% &
string##& ,
key##- 0
)##0 1
{$$ 	
var%% 
document%% 
=%% 
await%%  
_documentManager%%! 1
.%%1 2#
GetOrCreateMutableAsync%%2 I
(%%I J
)%%J K
;%%K L
document&& 
.&& 

Properties&& 
.&&  
Remove&&  &
(&&& '
key&&' *
)&&* +
;&&+ ,
await'' 
_documentManager'' "
.''" #
UpdateAsync''# .
(''. /
document''/ 7
)''7 8
;''8 9
}(( 	
})) 
}** ├

ШD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\DocumentEntityManagerOfT.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

class !
DocumentEntityManager &
<& '
TDocumentStore' 5
,5 6
TDocumentEntity7 F
>F G
:H I!
DocumentEntityManagerJ _
<_ `
TDocumentEntity` o
>o p
,p q#
IDocumentEntityManager	r И
<
И Й
TDocumentStore
Й Ч
,
Ч Ш
TDocumentEntity
Щ и
>
и й
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
 
public !
DocumentEntityManager $
($ %
IDocumentManager% 5
<5 6
TDocumentEntity6 E
>E F
documentManagerG V
)V W
:X Y
baseZ ^
(^ _
documentManager_ n
)n o
{ 	
} 	
} 
} же
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\DocumentManager.cs
	namespace		 	
OrchardCore		
 
.		 
	Documents		 
{

 
public 

class 
DocumentManager  
<  !
	TDocument! *
>* +
:, -
IDocumentManager. >
<> ?
	TDocument? H
>H I
whereJ O
	TDocumentP Y
:Z [
class\ a
,a b
	IDocumentc l
,l m
newn q
(q r
)r s
{ 
	protected 
readonly 
IDocumentStore )
_documentStore* 8
;8 9
private 
readonly 
IDistributedCache *
_distributedCache+ <
;< =
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
	protected 
readonly 
DocumentOptions *
_options+ 3
;3 4
private 
	TDocument 
_scopedCache &
;& '
private 
	TDocument 
_volatileCache (
;( )
private 
readonly 
bool 
_isDistributed ,
;, -
	protected 
bool 
_isVolatile "
;" #
public 
DocumentManager 
( 
IDocumentStore 
documentStore (
,( )
IDistributedCache 
distributedCache .
,. /
IMemoryCache 
memoryCache $
,$ %
IOptionsSnapshot 
< 
DocumentOptions ,
>, -
options. 5
)5 6
{ 	
_documentStore   
=   
documentStore   *
;  * +
_distributedCache!! 
=!! 
distributedCache!!  0
;!!0 1
_memoryCache"" 
="" 
memoryCache"" &
;""& '
_options## 
=## 
options## 
.## 
Get## "
(##" #
typeof### )
(##) *
	TDocument##* 3
)##3 4
.##4 5
FullName##5 =
)##= >
;##> ?
if%% 
(%% 
!%% 
(%% 
_distributedCache%% #
is%%$ &"
MemoryDistributedCache%%' =
)%%= >
)%%> ?
{&& 
_isDistributed'' 
=''  
true''! %
;''% &
}(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
	TDocument++ #
>++# $#
GetOrCreateMutableAsync++% <
(++< =
Func++= A
<++A B
Task++B F
<++F G
	TDocument++G P
>++P Q
>++Q R
factoryAsync++S _
=++` a
null++b f
)++f g
{,, 	
	TDocument-- 
document-- 
=--  
null--! %
;--% &
if// 
(// 
!// 
_isVolatile// 
)// 
{00 
document11 
=11 
await11  
_documentStore11! /
.11/ 0#
GetOrCreateMutableAsync110 G
(11G H
factoryAsync11H T
)11T U
;11U V
if33 
(33 
_memoryCache33  
.33  !
TryGetValue33! ,
<33, -
	TDocument33- 6
>336 7
(337 8
_options338 @
.33@ A
CacheKey33A I
,33I J
out33K N
var33O R
cached33S Y
)33Y Z
&&33[ ]
document33^ f
==33g i
cached33j p
)33p q
{44 
throw55 
new55 %
InvalidOperationException55 7
(557 8
$str558 _
)55_ `
;55` a
}66 
}77 
else88 
{99 
if:: 
(:: 
_volatileCache:: "
!=::# %
null::& *
)::* +
{;; 
document<< 
=<< 
_volatileCache<< -
;<<- .
}== 
else>> 
{?? 
document@@ 
=@@ 
_volatileCache@@ -
=@@. /
await@@0 5(
GetFromDistributedCacheAsync@@6 R
(@@R S
)@@S T
??AA 
awaitAA  
(AA! "
factoryAsyncAA" .
?AA. /
.AA/ 0
InvokeAA0 6
(AA6 7
)AA7 8
??AA9 ;
TaskAA< @
.AA@ A

FromResultAAA K
(AAK L
(AAL M
	TDocumentAAM V
)AAV W
nullAAW [
)AA[ \
)AA\ ]
??BB 
newBB 
	TDocumentBB (
(BB( )
)BB) *
;BB* +
}CC 
}DD 
documentFF 
.FF 

IdentifierFF 
=FF  !
IdGeneratorFF" -
.FF- .

GenerateIdFF. 8
(FF8 9
)FF9 :
;FF: ;
returnHH 
documentHH 
;HH 
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
	TDocumentKK #
>KK# $%
GetOrCreateImmutableAsyncKK% >
(KK> ?
FuncKK? C
<KKC D
TaskKKD H
<KKH I
	TDocumentKKI R
>KKR S
>KKS T
factoryAsyncKKU a
=KKb c
nullKKd h
)KKh i
{LL 	
varMM 
documentMM 
=MM 
awaitMM  
GetInternalAsyncMM! 1
(MM1 2
)MM2 3
;MM3 4
ifOO 
(OO 
documentOO 
==OO 
nullOO  
)OO  !
{PP 
varQQ 
	cacheableQQ 
=QQ 
trueQQ  $
;QQ$ %
ifSS 
(SS 
!SS 
_isVolatileSS  
)SS  !
{TT 
(UU 
	cacheableUU 
,UU 
documentUU  (
)UU( )
=UU* +
awaitUU, 1
_documentStoreUU2 @
.UU@ A%
GetOrCreateImmutableAsyncUUA Z
(UUZ [
factoryAsyncUU[ g
)UUg h
;UUh i
}VV 
elseWW 
{XX 
documentYY 
=YY 
awaitYY $
(YY% &
factoryAsyncYY& 2
?YY2 3
.YY3 4
InvokeYY4 :
(YY: ;
)YY; <
??ZZ 
TaskZZ 
.ZZ  

FromResultZZ  *
(ZZ* +
(ZZ+ ,
	TDocumentZZ, 5
)ZZ5 6
nullZZ6 :
)ZZ: ;
)ZZ; <
??[[ 
new[[ 
	TDocument[[ (
([[( )
)[[) *
;[[* +
}\\ 
if^^ 
(^^ 
	cacheable^^ 
)^^ 
{__ 
await`` 
SetInternalAsync`` *
(``* +
document``+ 3
)``3 4
;``4 5
}aa 
}bb 
returndd 
documentdd 
;dd 
}ee 	
publicgg 
Taskgg 
UpdateAsyncgg 
(gg  
	TDocumentgg  )
documentgg* 2
,gg2 3
Funcgg4 8
<gg8 9
	TDocumentgg9 B
,ggB C
TaskggD H
>ggH I
afterUpdateAsyncggJ Z
=gg[ \
nullgg] a
)gga b
{hh 	
ifii 
(ii 
_memoryCacheii 
.ii 
TryGetValueii (
<ii( )
	TDocumentii) 2
>ii2 3
(ii3 4
_optionsii4 <
.ii< =
CacheKeyii= E
,iiE F
outiiG J
variiK N
cachediiO U
)iiU V
&&iiW Y
documentiiZ b
==iic e
cachediif l
)iil m
{jj 
throwkk 
newkk %
InvalidOperationExceptionkk 3
(kk3 4
$strkk4 R
)kkR S
;kkS T
}ll 
documentnn 
.nn 

Identifiernn 
??=nn  #
IdGeneratornn$ /
.nn/ 0

GenerateIdnn0 :
(nn: ;
)nn; <
;nn< =
ifpp 
(pp 
!pp 
_isVolatilepp 
)pp 
{qq 
returnrr 
_documentStorerr %
.rr% &
UpdateAsyncrr& 1
(rr1 2
documentrr2 :
,rr: ;
asyncrr< A
documentrrB J
=>rrK M
{ss 
awaittt 
SetInternalAsynctt *
(tt* +
documenttt+ 3
)tt3 4
;tt4 5
ifvv 
(vv 
afterUpdateAsyncvv (
!=vv) +
nullvv, 0
)vv0 1
{ww 
awaitxx 
afterUpdateAsyncxx .
(xx. /
documentxx/ 7
)xx7 8
;xx8 9
}yy 
}zz 
,zz 
_options{{ 
.{{ 
CheckConcurrency{{ )
.{{) *
Value{{* /
){{/ 0
;{{0 1
}|| 
_volatileCache 
= 
document %
;% &
_documentStore
ВВ 
.
ВВ  
AfterCommitSuccess
ВВ -
<
ВВ- .
	TDocument
ВВ. 7
>
ВВ7 8
(
ВВ8 9
async
ВВ9 >
(
ВВ? @
)
ВВ@ A
=>
ВВB D
{
ГГ 
await
ДД 
SetInternalAsync
ДД &
(
ДД& '
document
ДД' /
)
ДД/ 0
;
ДД0 1
if
ЖЖ 
(
ЖЖ 
afterUpdateAsync
ЖЖ $
!=
ЖЖ% '
null
ЖЖ( ,
)
ЖЖ, -
{
ЗЗ 
await
ИИ 
afterUpdateAsync
ИИ *
(
ИИ* +
document
ИИ+ 3
)
ИИ3 4
;
ИИ4 5
}
ЙЙ 
}
КК 
)
КК 
;
КК 
return
ММ 
Task
ММ 
.
ММ 
CompletedTask
ММ %
;
ММ% &
}
НН 	
private
ПП 
async
ПП 
Task
ПП 
<
ПП 
	TDocument
ПП $
>
ПП$ %
GetInternalAsync
ПП& 6
(
ПП6 7
)
ПП7 8
{
РР 	
if
СС 
(
СС 
_scopedCache
СС 
!=
СС 
null
СС  $
)
СС$ %
{
ТТ 
return
УУ 
_scopedCache
УУ #
;
УУ# $
}
ФФ 
string
ЦЦ 
id
ЦЦ 
;
ЦЦ 
if
ЧЧ 
(
ЧЧ 
_isDistributed
ЧЧ 
)
ЧЧ 
{
ШШ 
id
ЪЪ 
=
ЪЪ 
await
ЪЪ 
_memoryCache
ЪЪ '
.
ЪЪ' (
GetOrCreateAsync
ЪЪ( 8
(
ЪЪ8 9
_options
ЪЪ9 A
.
ЪЪA B

CacheIdKey
ЪЪB L
,
ЪЪL M
entry
ЪЪN S
=>
ЪЪT V
{
ЫЫ 
entry
ЬЬ 
.
ЬЬ -
AbsoluteExpirationRelativeToNow
ЬЬ 9
=
ЬЬ: ;
_options
ЬЬ< D
.
ЬЬD E$
SynchronizationLatency
ЬЬE [
;
ЬЬ[ \
return
ЭЭ 
_distributedCache
ЭЭ ,
.
ЭЭ, -
GetStringAsync
ЭЭ- ;
(
ЭЭ; <
_options
ЭЭ< D
.
ЭЭD E

CacheIdKey
ЭЭE O
)
ЭЭO P
;
ЭЭP Q
}
ЮЮ 
)
ЮЮ 
;
ЮЮ 
}
ЯЯ 
else
аа 
{
бб 
id
гг 
=
гг 
await
гг 
_distributedCache
гг ,
.
гг, -
GetStringAsync
гг- ;
(
гг; <
_options
гг< D
.
ггD E

CacheIdKey
ггE O
)
ггO P
;
ггP Q
}
дд 
if
жж 
(
жж 
id
жж 
==
жж 
null
жж 
)
жж 
{
зз 
return
ии 
null
ии 
;
ии 
}
йй 
if
лл 
(
лл 
id
лл 
==
лл 
$str
лл 
)
лл 
{
мм 
id
нн 
=
нн 
null
нн 
;
нн 
}
оо 
if
░░ 
(
░░ 
_memoryCache
░░ 
.
░░ 
TryGetValue
░░ (
<
░░( )
	TDocument
░░) 2
>
░░2 3
(
░░3 4
_options
░░4 <
.
░░< =
CacheKey
░░= E
,
░░E F
out
░░G J
var
░░K N
document
░░O W
)
░░W X
)
░░X Y
{
▒▒ 
if
▓▓ 
(
▓▓ 
document
▓▓ 
.
▓▓ 

Identifier
▓▓ '
==
▓▓( *
id
▓▓+ -
)
▓▓- .
{
││ 
if
┤┤ 
(
┤┤ 
_isDistributed
┤┤ &
&&
┤┤' )
(
┤┤* +
_options
┤┤+ 3
?
┤┤3 4
.
┤┤4 5
SlidingExpiration
┤┤5 F
.
┤┤F G
HasValue
┤┤G O
??
┤┤P R
false
┤┤S X
)
┤┤X Y
)
┤┤Y Z
{
╡╡ 
await
╢╢ 
_distributedCache
╢╢ /
.
╢╢/ 0
RefreshAsync
╢╢0 <
(
╢╢< =
_options
╢╢= E
.
╢╢E F
CacheKey
╢╢F N
)
╢╢N O
;
╢╢O P
}
╖╖ 
return
╣╣ 
_scopedCache
╣╣ '
=
╣╣( )
document
╣╣* 2
;
╣╣2 3
}
║║ 
}
╗╗ 
if
╜╜ 
(
╜╜ 
!
╜╜ 
_isDistributed
╜╜ 
)
╜╜  
{
╛╛ 
return
┐┐ 
null
┐┐ 
;
┐┐ 
}
└└ 
document
┬┬ 
=
┬┬ 
await
┬┬ *
GetFromDistributedCacheAsync
┬┬ 9
(
┬┬9 :
)
┬┬: ;
;
┬┬; <
if
── 
(
── 
document
── 
==
── 
null
──  
)
──  !
{
┼┼ 
return
╞╞ 
null
╞╞ 
;
╞╞ 
}
╟╟ 
if
╔╔ 
(
╔╔ 
document
╔╔ 
.
╔╔ 

Identifier
╔╔ #
!=
╔╔$ &
id
╔╔' )
)
╔╔) *
{
╩╩ 
return
╦╦ 
null
╦╦ 
;
╦╦ 
}
╠╠ 
_memoryCache
╬╬ 
.
╬╬ 
Set
╬╬ 
(
╬╬ 
_options
╬╬ %
.
╬╬% &
CacheKey
╬╬& .
,
╬╬. /
document
╬╬0 8
,
╬╬8 9
new
╬╬: =%
MemoryCacheEntryOptions
╬╬> U
(
╬╬U V
)
╬╬V W
{
╧╧  
AbsoluteExpiration
╨╨ "
=
╨╨# $
_options
╨╨% -
.
╨╨- . 
AbsoluteExpiration
╨╨. @
,
╨╨@ A-
AbsoluteExpirationRelativeToNow
╤╤ /
=
╤╤0 1
_options
╤╤2 :
.
╤╤: ;-
AbsoluteExpirationRelativeToNow
╤╤; Z
,
╤╤Z [
SlidingExpiration
╥╥ !
=
╥╥" #
_options
╥╥$ ,
.
╥╥, -
SlidingExpiration
╥╥- >
}
╙╙ 
)
╙╙ 
;
╙╙ 
if
╒╒ 
(
╒╒ 
_isDistributed
╒╒ 
)
╒╒ 
{
╓╓ 
_memoryCache
╪╪ 
.
╪╪ 
Remove
╪╪ #
(
╪╪# $
_options
╪╪$ ,
.
╪╪, -

CacheIdKey
╪╪- 7
)
╪╪7 8
;
╪╪8 9
}
┘┘ 
return
██ 
_scopedCache
██ 
=
██  !
document
██" *
;
██* +
}
▄▄ 	
	protected
▐▐ 
async
▐▐ 
Task
▐▐ 
SetInternalAsync
▐▐ -
(
▐▐- .
	TDocument
▐▐. 7
document
▐▐8 @
)
▐▐@ A
{
▀▀ 	
await
рр )
UpdateDistributedCacheAsync
рр -
(
рр- .
document
рр. 6
)
рр6 7
;
рр7 8
_memoryCache
тт 
.
тт 
Set
тт 
(
тт 
_options
тт %
.
тт% &
CacheKey
тт& .
,
тт. /
document
тт0 8
,
тт8 9
new
тт: =%
MemoryCacheEntryOptions
тт> U
(
ттU V
)
ттV W
{
уу  
AbsoluteExpiration
фф "
=
фф# $
_options
фф% -
.
фф- . 
AbsoluteExpiration
фф. @
,
фф@ A-
AbsoluteExpirationRelativeToNow
хх /
=
хх0 1
_options
хх2 :
.
хх: ;-
AbsoluteExpirationRelativeToNow
хх; Z
,
ххZ [
SlidingExpiration
цц !
=
цц" #
_options
цц$ ,
.
цц, -
SlidingExpiration
цц- >
}
чч 
)
чч 
;
чч 
if
щщ 
(
щщ 
_isDistributed
щщ 
)
щщ 
{
ъъ 
_memoryCache
ьь 
.
ьь 
Remove
ьь #
(
ьь# $
_options
ьь$ ,
.
ьь, -

CacheIdKey
ьь- 7
)
ьь7 8
;
ьь8 9
}
ээ 
if
ЁЁ 
(
ЁЁ 
!
ЁЁ 
_isVolatile
ЁЁ 
&&
ЁЁ 
_options
ЁЁ  (
.
ЁЁ( )
CheckConsistency
ЁЁ) 9
.
ЁЁ9 :
Value
ЁЁ: ?
)
ЁЁ? @
{
ёё 
(
ЄЄ 
_
ЄЄ 
,
ЄЄ 
var
ЄЄ 
stored
ЄЄ 
)
ЄЄ 
=
ЄЄ  !
await
ЄЄ" '
_documentStore
ЄЄ( 6
.
ЄЄ6 7'
GetOrCreateImmutableAsync
ЄЄ7 P
<
ЄЄP Q
	TDocument
ЄЄQ Z
>
ЄЄZ [
(
ЄЄ[ \
)
ЄЄ\ ]
;
ЄЄ] ^
if
ЇЇ 
(
ЇЇ 
stored
ЇЇ 
.
ЇЇ 

Identifier
ЇЇ %
!=
ЇЇ& (
document
ЇЇ) 1
.
ЇЇ1 2

Identifier
ЇЇ2 <
)
ЇЇ< =
{
її 
await
ЎЎ 
_distributedCache
ЎЎ +
.
ЎЎ+ ,
RemoveAsync
ЎЎ, 7
(
ЎЎ7 8
_options
ЎЎ8 @
.
ЎЎ@ A

CacheIdKey
ЎЎA K
)
ЎЎK L
;
ЎЎL M
}
ўў 
}
°° 
}
∙∙ 	
private
√√ 
async
√√ 
Task
√√ 
<
√√ 
	TDocument
√√ $
>
√√$ %*
GetFromDistributedCacheAsync
√√& B
(
√√B C
)
√√C D
{
№№ 	
byte
¤¤ 
[
¤¤ 
]
¤¤ 
data
¤¤ 
=
¤¤ 
null
¤¤ 
;
¤¤ 
if
   
(
   
_isDistributed
   
)
   
{
АА 
data
ББ 
=
ББ 
await
ББ 
_distributedCache
ББ .
.
ББ. /
GetAsync
ББ/ 7
(
ББ7 8
_options
ББ8 @
.
ББ@ A
CacheKey
ББA I
)
ББI J
;
ББJ K
}
ВВ 
else
ГГ 
if
ГГ 
(
ГГ 
_memoryCache
ГГ !
.
ГГ! "
TryGetValue
ГГ" -
<
ГГ- .
	TDocument
ГГ. 7
>
ГГ7 8
(
ГГ8 9
_options
ГГ9 A
.
ГГA B
CacheKey
ГГB J
,
ГГJ K
out
ГГL O
var
ГГP S
cached
ГГT Z
)
ГГZ [
)
ГГ[ \
{
ДД 
data
ЕЕ 
=
ЕЕ 
await
ЕЕ 
_options
ЕЕ %
.
ЕЕ% &

Serializer
ЕЕ& 0
.
ЕЕ0 1
SerializeAsync
ЕЕ1 ?
(
ЕЕ? @
cached
ЕЕ@ F
)
ЕЕF G
;
ЕЕG H
}
ЖЖ 
if
ИИ 
(
ИИ 
data
ИИ 
==
ИИ 
null
ИИ 
)
ИИ 
{
ЙЙ 
return
КК 
null
КК 
;
КК 
}
ЛЛ 
return
НН 
await
НН 
_options
НН !
.
НН! "

Serializer
НН" ,
.
НН, -
DeserializeAsync
НН- =
<
НН= >
	TDocument
НН> G
>
ННG H
(
ННH I
data
ННI M
)
ННM N
;
ННN O
}
ОО 	
private
РР 
async
РР 
Task
РР )
UpdateDistributedCacheAsync
РР 6
(
РР6 7
	TDocument
РР7 @
document
РРA I
)
РРI J
{
СС 	
if
ТТ 
(
ТТ 
_isDistributed
ТТ 
)
ТТ 
{
УУ 
var
ФФ 
data
ФФ 
=
ФФ 
await
ФФ  
_options
ФФ! )
.
ФФ) *

Serializer
ФФ* 4
.
ФФ4 5
SerializeAsync
ФФ5 C
(
ФФC D
document
ФФD L
,
ФФL M
_options
ФФN V
.
ФФV W
CompressThreshold
ФФW h
)
ФФh i
;
ФФi j
await
ХХ 
_distributedCache
ХХ '
.
ХХ' (
SetAsync
ХХ( 0
(
ХХ0 1
_options
ХХ1 9
.
ХХ9 :
CacheKey
ХХ: B
,
ХХB C
data
ХХD H
,
ХХH I
_options
ХХJ R
)
ХХR S
;
ХХS T
}
ЦЦ 
await
ШШ 
_distributedCache
ШШ #
.
ШШ# $
SetStringAsync
ШШ$ 2
(
ШШ2 3
_options
ШШ3 ;
.
ШШ; <

CacheIdKey
ШШ< F
,
ШШF G
document
ШШH P
.
ШШP Q

Identifier
ШШQ [
??
ШШ\ ^
$str
ШШ_ e
,
ШШe f
_options
ШШg o
)
ШШo p
;
ШШp q
}
ЩЩ 	
}
ЪЪ 
}ЫЫ ┬
ТD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\DocumentManagerOfT.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

class 
DocumentManager  
<  !
TDocumentStore! /
,/ 0
	TDocument1 :
>: ;
:< =
DocumentManager> M
<M N
	TDocumentN W
>W X
,X Y
IDocumentManagerZ j
<j k
TDocumentStorek y
,y z
	TDocument	{ Д
>
Д Е
where 
TDocumentStore 
: 
IDocumentStore -
where. 3
	TDocument4 =
:> ?
class@ E
,E F
	IDocumentG P
,P Q
newR U
(U V
)V W
{ 
public 
DocumentManager 
( 
TDocumentStore 
documentStore (
,( )
IDistributedCache 
distributedCache .
,. /
IMemoryCache 
memoryCache $
,$ %
IOptionsSnapshot 
< 
DocumentOptions ,
>, -
options. 5
)5 6
: 
base 
( 
documentStore  
,  !
distributedCache" 2
,2 3
memoryCache4 ?
,? @
optionsA H
)H I
{ 	
} 	
} 
} ┬,
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\Options\DocumentOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
	Documents 
.  
Options  '
{		 
public

 

class

  
DocumentOptionsSetup

 %
:

& '"
IConfigureNamedOptions

( >
<

> ?
DocumentOptions

? N
>

N O
{ 
private 
readonly 
IShellConfiguration ,
_shellConfiguration- @
;@ A
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
DocumentOptions6 E
>E F
_cacheG M
=N O
newP S 
ConcurrentDictionaryT h
<h i
stringi o
,o p
DocumentOptions	q А
>
А Б
(
Б В
)
В Г
;
Г Д
public  
DocumentOptionsSetup #
(# $
IShellConfiguration$ 7
shellConfiguration8 J
)J K
{ 	
_shellConfiguration 
=  !
shellConfiguration" 4
;4 5
} 	
public 
void 
	Configure 
( 
DocumentOptions -
options. 5
)5 6
=>7 9
	Configure: C
(C D
StringD J
.J K
EmptyK P
,P Q
optionsR Y
)Y Z
;Z [
public 
void 
	Configure 
( 
string $
name% )
,) *
DocumentOptions+ :
options; B
)B C
{ 	
var 
config 
= 
_cache 
.  
GetOrAdd  (
(( )
name) -
,- .
name/ 3
=>4 6
{ 
var 
options 
= 
_shellConfiguration 1
.1 2

GetSection2 <
(< =
name= A
)A B
.B C
GetC F
<F G
DocumentOptionsG V
>V W
(W X
)X Y
??Z \
new] `
DocumentOptionsa p
(p q
)q r
;r s
options 
. 
CacheKey  
??=! $
name% )
;) *
options 
. 

CacheIdKey "
??=# &
$str' ,
+- .
name/ 3
;3 4
options 
. 
CheckConcurrency (
??=) ,
true- 1
;1 2
options   
.   
CheckConsistency   (
??=  ) ,
true  - 1
;  1 2
options!! 
.!! "
SynchronizationLatency!! .
??=!!/ 2
TimeSpan!!3 ;
.!!; <
FromSeconds!!< G
(!!G H
$num!!H I
)!!I J
;!!J K
options## 
.## 

Serializer## "
=### $%
DefaultDocumentSerializer##% >
.##> ?
Instance##? G
;##G H
if%% 
(%% 
options%% 
.%% 
CompressThreshold%% -
==%%. 0
$num%%1 2
)%%2 3
{&& 
options'' 
.'' 
CompressThreshold'' -
=''. /
$num''0 6
;''6 7
}(( 
if++ 
(++ 
options++ 
.++ 
LockTimeout++ '
<=++( *
$num+++ ,
)++, -
{,, 
options-- 
.-- 
LockTimeout-- '
=--( )
$num--* 0
;--0 1
}.. 
if00 
(00 
options00 
.00 
LockExpiration00 *
<=00+ -
$num00. /
)00/ 0
{11 
options22 
.22 
LockExpiration22 *
=22+ ,
$num22- 3
;223 4
}33 
return55 
options55 
;55 
}66 
)66 
;66 
options88 
.88 
CacheKey88 
=88 
config88 %
.88% &
CacheKey88& .
;88. /
options99 
.99 

CacheIdKey99 
=99  
config99! '
.99' (

CacheIdKey99( 2
;992 3
options:: 
.:: 
CheckConcurrency:: $
=::% &
config::' -
.::- .
CheckConcurrency::. >
;::> ?
options;; 
.;; 
CheckConsistency;; $
=;;% &
config;;' -
.;;- .
CheckConsistency;;. >
;;;> ?
options<< 
.<< "
SynchronizationLatency<< *
=<<+ ,
config<<- 3
.<<3 4"
SynchronizationLatency<<4 J
;<<J K
options== 
.== 

Serializer== 
===  
config==! '
.==' (

Serializer==( 2
;==2 3
options>> 
.>> 
CompressThreshold>> %
=>>& '
config>>( .
.>>. /
CompressThreshold>>/ @
;>>@ A
optionsAA 
.AA 
LockTimeoutAA 
=AA  !
configAA" (
.AA( )
LockTimeoutAA) 4
;AA4 5
optionsBB 
.BB 
LockExpirationBB "
=BB# $
configBB% +
.BB+ ,
LockExpirationBB, :
;BB: ;
}CC 	
}DD 
}EE  
ЬD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public		 

static		 
partial		 
class		 (
OrchardCoreBuilderExtensions		  <
{

 
public 
static 
OrchardCoreBuilder (!
AddDocumentManagement) >
(> ?
this? C
OrchardCoreBuilderD V
builderW ^
)^ _
{ 	
return 
builder 
. 
ConfigureServices ,
(, -
services- 5
=>6 8
{ 
services 
. 
	AddScoped "
(" #
typeof# )
() *
IDocumentManager* :
<: ;
>; <
)< =
,= >
typeof? E
(E F
DocumentManagerF U
<U V
>V W
)W X
)X Y
;Y Z
services 
. 
	AddScoped "
(" #
typeof# )
() *$
IVolatileDocumentManager* B
<B C
>C D
)D E
,E F
typeofG M
(M N#
VolatileDocumentManagerN e
<e f
>f g
)g h
)h i
;i j
services 
. 
	AddScoped "
(" #
typeof# )
() *
IDocumentManager* :
<: ;
,; <
>< =
)= >
,> ?
typeof@ F
(F G
DocumentManagerG V
<V W
,W X
>X Y
)Y Z
)Z [
;[ \
services 
. 
TryAddEnumerable )
() *
ServiceDescriptor* ;
.; <
	Singleton< E
<E F
IConfigureOptionsF W
<W X
DocumentOptionsX g
>g h
,h i 
DocumentOptionsSetupj ~
>~ 
(	 А
)
А Б
)
Б В
;
В Г
services 
. 
	AddScoped "
(" #
typeof# )
() *"
IDocumentEntityManager* @
<@ A
>A B
)B C
,C D
typeofE K
(K L!
DocumentEntityManagerL a
<a b
>b c
)c d
)d e
;e f
services 
. 
	AddScoped "
(" #
typeof# )
() **
IVolatileDocumentEntityManager* H
<H I
>I J
)J K
,K L
typeofM S
(S T)
VolatileDocumentEntityManagerT q
<q r
>r s
)s t
)t u
;u v
services 
. 
	AddScoped "
(" #
typeof# )
() *"
IDocumentEntityManager* @
<@ A
,A B
>B C
)C D
,D E
typeofF L
(L M!
DocumentEntityManagerM b
<b c
,c d
>d e
)e f
)f g
;g h
} 
) 
; 
} 	
} 
} ╚	
ЭD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\VolatileDocumentEntityManager.cs
	namespace 	
OrchardCore
 
. 
	Documents 
{ 
public 

class )
VolatileDocumentEntityManager .
<. /
TDocumentEntity/ >
>> ?
:@ A!
DocumentEntityManagerB W
<W X
TDocumentEntityX g
>g h
,h i+
IVolatileDocumentEntityManager	j И
<
И Й
TDocumentEntity
Й Ш
>
Ш Щ
where
Ъ Я
TDocumentEntity
а п
:
░ ▒
class
▓ ╖
,
╖ ╕
IDocumentEntity
╣ ╚
,
╚ ╔
new
╩ ═
(
═ ╬
)
╬ ╧
{ 
public )
VolatileDocumentEntityManager ,
(, -$
IVolatileDocumentManager- E
<E F
TDocumentEntityF U
>U V
documentManagerW f
)f g
:h i
basej n
(n o
documentManagero ~
)~ 
{		 	
}

 	
} 
} ▐1
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Documents\VolatileDocumentManager.cs
	namespace

 	
OrchardCore


 
.

 
	Documents

 
{ 
public 

class #
VolatileDocumentManager (
<( )
	TDocument) 2
>2 3
:4 5
DocumentManager6 E
<E F
	TDocumentF O
>O P
,P Q$
IVolatileDocumentManagerR j
<j k
	TDocumentk t
>t u
wherev {
	TDocument	| Е
:
Ж З
class
И Н
,
Н О
	IDocument
П Ш
,
Ш Щ
new
Ъ Э
(
Э Ю
)
Ю Я
{ 
private 
readonly 
IDistributedLock )
_distributedLock* :
;: ;
private 
delegate 
Task 
< 
	TDocument '
>' (
UpdateDelegate) 7
(7 8
)8 9
;9 :
private 
UpdateDelegate  
_updateDelegateAsync 3
;3 4
private 
delegate 
Task 
AfterUpdateDelegate 1
(1 2
	TDocument2 ;
document< D
)D E
;E F
private 
AfterUpdateDelegate #%
_afterUpdateDelegateAsync$ =
;= >
public #
VolatileDocumentManager &
(& '
IDocumentStore 
documentStore (
,( )
IDistributedCache 
distributedCache .
,. /
IDistributedLock 
distributedLock ,
,, -
IMemoryCache 
memoryCache $
,$ %
IOptionsSnapshot 
< 
DocumentOptions ,
>, -
options. 5
)5 6
: 
base 
( 
documentStore  
,  !
distributedCache" 2
,2 3
memoryCache4 ?
,? @
optionsA H
)H I
{   	
_isVolatile!! 
=!! 
true!! 
;!! 
_distributedLock"" 
="" 
distributedLock"" .
;"". /
}## 	
public%% 
Task%% 
UpdateAtomicAsync%% %
(%%% &
Func%%& *
<%%* +
Task%%+ /
<%%/ 0
	TDocument%%0 9
>%%9 :
>%%: ;
updateAsync%%< G
,%%G H
Func%%I M
<%%M N
	TDocument%%N W
,%%W X
Task%%Y ]
>%%] ^
afterUpdateAsync%%_ o
=%%p q
null%%r v
)%%v w
{&& 	
if'' 
('' 
updateAsync'' 
=='' 
null'' #
)''# $
{(( 
return)) 
Task)) 
.)) 
CompletedTask)) )
;))) *
}**  
_updateDelegateAsync,,  
+=,,! #
(,,$ %
),,% &
=>,,' )
updateAsync,,* 5
(,,5 6
),,6 7
;,,7 8
if.. 
(.. 
afterUpdateAsync..  
!=..! #
null..$ (
)..( )
{// %
_afterUpdateDelegateAsync00 )
+=00* ,
document00- 5
=>006 8
afterUpdateAsync009 I
(00I J
document00J R
)00R S
;00S T
}11 
_documentStore33 
.33 
AfterCommitSuccess33 -
<33- .
	TDocument33. 7
>337 8
(338 9
async339 >
(33? @
)33@ A
=>33B D
{44 
(55 
var55 
locker55 
,55 
var55  
locked55! '
)55' (
=55) *
await55+ 0
_distributedLock551 A
.55A B
TryAcquireLockAsync55B U
(55U V
_options66 
.66 
CacheKey66 %
+66& '
$str66( /
,66/ 0
TimeSpan77 
.77 
FromMilliseconds77 -
(77- .
_options77. 6
.776 7
LockTimeout777 B
)77B C
,77C D
TimeSpan88 
.88 
FromMilliseconds88 -
(88- .
_options88. 6
.886 7
LockExpiration887 E
)88E F
)88F G
;88G H
if:: 
(:: 
!:: 
locked:: 
):: 
{;; 
return<< 
;<< 
}== 
await?? 
using?? 
var?? 
acquiredLock??  ,
=??- .
locker??/ 5
;??5 6
	TDocumentAA 
documentAA "
=AA# $
nullAA% )
;AA) *
foreachBB 
(BB 
varBB 
dBB 
inBB ! 
_updateDelegateAsyncBB" 6
.BB6 7
GetInvocationListBB7 H
(BBH I
)BBI J
)BBJ K
{CC 
documentDD 
=DD 
awaitDD $
(DD% &
(DD& '
UpdateDelegateDD' 5
)DD5 6
dDD6 7
)DD7 8
(DD8 9
)DD9 :
;DD: ;
}EE 
documentGG 
.GG 

IdentifierGG #
??=GG$ '
IdGeneratorGG( 3
.GG3 4

GenerateIdGG4 >
(GG> ?
)GG? @
;GG@ A
awaitII 
SetInternalAsyncII &
(II& '
documentII' /
)II/ 0
;II0 1
ifKK 
(KK %
_afterUpdateDelegateAsyncKK -
!=KK. 0
nullKK1 5
)KK5 6
{LL 
foreachMM 
(MM 
varMM  
dMM! "
inMM# %%
_afterUpdateDelegateAsyncMM& ?
.MM? @
GetInvocationListMM@ Q
(MMQ R
)MMR S
)MMS T
{NN 
awaitOO 
(OO 
(OO  
AfterUpdateDelegateOO  3
)OO3 4
dOO4 5
)OO5 6
(OO6 7
documentOO7 ?
)OO? @
;OO@ A
}PP 
}QQ 
}RR 
)RR 
;RR 
returnTT 
TaskTT 
.TT 
CompletedTaskTT %
;TT% &
}UU 	
}VV 
}WW ж
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Email\EmailAddressValidator.cs
	namespace 	
OrchardCore
 
. 
Email 
{ 
public 

class !
EmailAddressValidator &
:' ("
IEmailAddressValidator) ?
{		 
public 
bool 
Validate 
( 
string #
emailAddress$ 0
)0 1
=> 
emailAddress 
? 
. 
IndexOf $
($ %
$char% (
)( )
>* +
-, -
$num- .
&&/ 1
MailboxAddress2 @
.@ A
TryParseA I
(I J
emailAddressJ V
,V W
outX [
_\ ]
)] ^
;^ _
} 
} Н	
ШD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Email\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
partial 
class (
OrchardCoreBuilderExtensions  <
{		 
public 
static 
OrchardCoreBuilder ($
AddEmailAddressValidator) A
(A B
thisB F
OrchardCoreBuilderG Y
builderZ a
)a b
{ 	
builder 
. 
ConfigureServices %
(% &
services& .
=>/ 1
{ 
services 
. 
AddTransient %
<% &"
IEmailAddressValidator& <
,< =!
EmailAddressValidator> S
>S T
(T U
)U V
;V W
} 
) 
; 
return 
builder 
; 
} 	
} 
} зO
СD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Entities\DefaultIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Entities 
{ 
public 

class 
DefaultIdGenerator #
:$ %
IIdGenerator& 2
{ 
private 
static 
readonly 
string  &
_encode32Chars' 5
=6 7
$str8 Z
;Z [
public

 
string

 
GenerateUniqueId

 &
(

& '
)

' (
{ 	
var 
guid 
= 
Guid 
. 
NewGuid #
(# $
)$ %
.% &
ToByteArray& 1
(1 2
)2 3
;3 4
var 
hs 
= 
BitConverter !
.! "
ToInt64" )
() *
guid* .
,. /
$num0 1
)1 2
;2 3
var 
ls 
= 
BitConverter !
.! "
ToInt64" )
() *
guid* .
,. /
$num0 1
)1 2
;2 3
return 
ToBase32 
( 
hs 
, 
ls  "
)" #
;# $
} 	
private 
static 
string 
ToBase32 &
(& '
long' +
hs, .
,. /
long0 4
ls5 7
)7 8
{ 	
var 

charBuffer 
= 
new  
char! %
[% &
$num& (
]( )
;) *

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer 
[ 
$num 
] 
= 
_encode32Chars *
[* +
(+ ,
int, /
)/ 0
(0 1
hs1 3
>>4 6
$num7 9
)9 :
&; <
$num= ?
]? @
;@ A

charBuffer   
[   
$num   
]   
=   
_encode32Chars   *
[  * +
(  + ,
int  , /
)  / 0
(  0 1
hs  1 3
>>  4 6
$num  7 9
)  9 :
&  ; <
$num  = ?
]  ? @
;  @ A

charBuffer!! 
[!! 
$num!! 
]!! 
=!! 
_encode32Chars!! *
[!!* +
(!!+ ,
int!!, /
)!!/ 0
(!!0 1
hs!!1 3
>>!!4 6
$num!!7 9
)!!9 :
&!!; <
$num!!= ?
]!!? @
;!!@ A

charBuffer"" 
["" 
$num"" 
]"" 
="" 
_encode32Chars"" *
[""* +
(""+ ,
int"", /
)""/ 0
(""0 1
hs""1 3
>>""4 6
$num""7 9
)""9 :
&""; <
$num""= ?
]""? @
;""@ A

charBuffer## 
[## 
$num## 
]## 
=## 
_encode32Chars## +
[##+ ,
(##, -
int##- 0
)##0 1
(##1 2
hs##2 4
>>##5 7
$num##8 :
)##: ;
&##< =
$num##> @
]##@ A
;##A B

charBuffer$$ 
[$$ 
$num$$ 
]$$ 
=$$ 
_encode32Chars$$ +
[$$+ ,
($$, -
int$$- 0
)$$0 1
($$1 2
hs$$2 4
>>$$5 7
$num$$8 9
)$$9 :
&$$; <
$num$$= ?
]$$? @
;$$@ A

charBuffer%% 
[%% 
$num%% 
]%% 
=%% 
_encode32Chars%% +
[%%+ ,
(%%, -
int%%- 0
)%%0 1
hs%%1 3
&%%4 5
$num%%6 8
]%%8 9
;%%9 :

charBuffer'' 
['' 
$num'' 
]'' 
='' 
_encode32Chars'' +
[''+ ,
('', -
int''- 0
)''0 1
(''1 2
ls''2 4
>>''5 7
$num''8 :
)'': ;
&''< =
$num''> @
]''@ A
;''A B

charBuffer(( 
[(( 
$num(( 
](( 
=(( 
_encode32Chars(( +
[((+ ,
(((, -
int((- 0
)((0 1
(((1 2
ls((2 4
>>((5 7
$num((8 :
)((: ;
&((< =
$num((> @
]((@ A
;((A B

charBuffer)) 
[)) 
$num)) 
])) 
=)) 
_encode32Chars)) +
[))+ ,
()), -
int))- 0
)))0 1
())1 2
ls))2 4
>>))5 7
$num))8 :
))): ;
&))< =
$num))> @
]))@ A
;))A B

charBuffer** 
[** 
$num** 
]** 
=** 
_encode32Chars** +
[**+ ,
(**, -
int**- 0
)**0 1
(**1 2
ls**2 4
>>**5 7
$num**8 :
)**: ;
&**< =
$num**> @
]**@ A
;**A B

charBuffer++ 
[++ 
$num++ 
]++ 
=++ 
_encode32Chars++ +
[+++ ,
(++, -
int++- 0
)++0 1
(++1 2
ls++2 4
>>++5 7
$num++8 :
)++: ;
&++< =
$num++> @
]++@ A
;++A B

charBuffer,, 
[,, 
$num,, 
],, 
=,, 
_encode32Chars,, +
[,,+ ,
(,,, -
int,,- 0
),,0 1
(,,1 2
ls,,2 4
>>,,5 7
$num,,8 :
),,: ;
&,,< =
$num,,> @
],,@ A
;,,A B

charBuffer-- 
[-- 
$num-- 
]-- 
=-- 
_encode32Chars-- +
[--+ ,
(--, -
int--- 0
)--0 1
(--1 2
ls--2 4
>>--5 7
$num--8 :
)--: ;
&--< =
$num--> @
]--@ A
;--A B

charBuffer.. 
[.. 
$num.. 
].. 
=.. 
_encode32Chars.. +
[..+ ,
(.., -
int..- 0
)..0 1
(..1 2
ls..2 4
>>..5 7
$num..8 :
)..: ;
&..< =
$num..> @
]..@ A
;..A B

charBuffer// 
[// 
$num// 
]// 
=// 
_encode32Chars// +
[//+ ,
(//, -
int//- 0
)//0 1
(//1 2
ls//2 4
>>//5 7
$num//8 :
)//: ;
&//< =
$num//> @
]//@ A
;//A B

charBuffer00 
[00 
$num00 
]00 
=00 
_encode32Chars00 +
[00+ ,
(00, -
int00- 0
)000 1
(001 2
ls002 4
>>005 7
$num008 :
)00: ;
&00< =
$num00> @
]00@ A
;00A B

charBuffer11 
[11 
$num11 
]11 
=11 
_encode32Chars11 +
[11+ ,
(11, -
int11- 0
)110 1
(111 2
ls112 4
>>115 7
$num118 :
)11: ;
&11< =
$num11> @
]11@ A
;11A B

charBuffer22 
[22 
$num22 
]22 
=22 
_encode32Chars22 +
[22+ ,
(22, -
int22- 0
)220 1
(221 2
ls222 4
>>225 7
$num228 9
)229 :
&22; <
$num22= ?
]22? @
;22@ A

charBuffer33 
[33 
$num33 
]33 
=33 
_encode32Chars33 +
[33+ ,
(33, -
int33- 0
)330 1
ls331 3
&334 5
$num336 8
]338 9
;339 :
return55 
new55 
string55 
(55 

charBuffer55 (
)55( )
;55) *
}66 	
}77 
}88 ╥
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Entities\Scripting\IdGeneratorMethod.cs
	namespace 	
OrchardCore
 
. 
Entities 
. 
	Scripting (
{ 
public 

class 
IdGeneratorMethod "
:# $!
IGlobalMethodProvider% :
{		 
private

 
static

 
GlobalMethod

 #
Uuid

$ (
=

) *
new

+ .
GlobalMethod

/ ;
{ 	
Name 
= 
$str 
, 
Method 
= 
serviceProvider $
=>% '
(( )
Func) -
<- .
string. 4
>4 5
)5 6
(6 7
(7 8
)8 9
=>: <
{ 
var 
idGenerator 
=  
serviceProvider! 0
.0 1
GetRequiredService1 C
<C D
IIdGeneratorD P
>P Q
(Q R
)R S
;S T
return 
idGenerator !
.! "
GenerateUniqueId" 2
(2 3
)3 4
;4 5
} 
) 
} 	
;	 

public 
IEnumerable 
< 
GlobalMethod '
>' (

GetMethods) 3
(3 4
)4 5
{ 	
yield 
return 
Uuid 
; 
} 	
} 
} ╞	
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Entities\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Entities 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{		 
public

 
static

 
IServiceCollection

 (
AddIdGeneration

) 8
(

8 9
this

9 =
IServiceCollection

> P
services

Q Y
)

Y Z
{ 	
services 
. 
TryAddSingleton $
<$ %
IIdGenerator% 1
,1 2
DefaultIdGenerator3 E
>E F
(F G
)G H
;H I
services 
. 
TryAddEnumerable %
(% &
ServiceDescriptor& 7
.7 8
	Singleton8 A
<A B!
IGlobalMethodProviderB W
,W X
IdGeneratorMethodY j
>j k
(k l
)l m
)m n
;n o
return 
services 
; 
} 	
} 
} ╜
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Html\HtmlSanitizerOptions.cs
	namespace 	
OrchardCore
 
. 
Infrastructure $
.$ %
Html% )
{ 
public 

class  
HtmlSanitizerOptions %
{ 
public		 
List		 
<		 
Action		 
<		 
HtmlSanitizer		 (
>		( )
>		) *
	Configure		+ 4
{		5 6
get		7 :
;		: ;
}		< =
=		> ?
new		@ C
List		D H
<		H I
Action		I O
<		O P
HtmlSanitizer		P ]
>		] ^
>		^ _
(		_ `
)		` a
;		a b
}

 
} М	
ЩD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Html\HtmlSanitizerOptionsExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class *
HtmlSanitizerOptionsExtensions 6
{ 
public 
static 
void "
ConfigureHtmlSanitizer 1
(1 2
this2 6
IServiceCollection7 I
servicesJ R
,R S
ActionT Z
<Z [
HtmlSanitizer[ h
>h i
actionj p
)p q
{ 	
services 
. 
	Configure 
<  
HtmlSanitizerOptions 3
>3 4
(4 5
o5 6
=>7 9
{ 
o 
. 
	Configure 
. 
Add 
(  
action  &
)& '
;' (
} 
) 
; 
} 	
} 
} И	
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Html\HtmlSanitizerRazorExtensions.cs
public 
static 
class (
HtmlSanitizerRazorExtensions 0
{ 
public 

static 
IHtmlContent 
SanitizeHtml +
(+ ,
this, 0
IOrchardHelper1 ?
orchardHelper@ M
,M N
stringO U
htmlV Z
)Z [
{ 
var 
	sanitizer 
= 
orchardHelper %
.% &
HttpContext& 1
.1 2
RequestServices2 A
.A B
GetRequiredServiceB T
<T U!
IHtmlSanitizerServiceU j
>j k
(k l
)l m
;m n
html 
= 
	sanitizer 
. 
Sanitize !
(! "
html" &
)& '
;' (
return 
new 

HtmlString 
( 
html "
)" #
;# $
} 
} А
ПD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Html\HtmlSanitizerService.cs
	namespace 	
OrchardCore
 
. 
Infrastructure $
.$ %
Html% )
{ 
public 

class  
HtmlSanitizerService %
:& '!
IHtmlSanitizerService( =
{ 
private 
readonly 
HtmlSanitizer &

_sanitizer' 1
=2 3
new4 7
HtmlSanitizer8 E
(E F
)F G
;G H
public

  
HtmlSanitizerService

 #
(

# $
IOptions

$ ,
<

, - 
HtmlSanitizerOptions

- A
>

A B
options

C J
)

J K
{ 	
foreach 
( 
var 
action 
in  "
options# *
.* +
Value+ 0
.0 1
	Configure1 :
): ;
{ 
action 
? 
. 
Invoke 
( 

_sanitizer )
)) *
;* +
} 
} 	
public 
string 
Sanitize 
( 
string %
html& *
)* +
{ 	
return 

_sanitizer 
. 
Sanitize &
(& '
html' +
)+ ,
;, -
} 	
} 
} ж
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Html\OrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
partial 
class (
OrchardCoreBuilderExtensions  <
{ 
public 
static 
OrchardCoreBuilder (
AddHtmlSanitizer) 9
(9 :
this: >
OrchardCoreBuilder? Q
builderR Y
)Y Z
{ 	
builder 
. 
ConfigureServices %
(% &
services& .
=>/ 1
{ 
services 
. 

AddOptions #
<# $ 
HtmlSanitizerOptions$ 8
>8 9
(9 :
): ;
;; <
services 
. "
ConfigureHtmlSanitizer /
(/ 0
(0 1
	sanitizer1 :
): ;
=>< >
{ 
	sanitizer 
. 
AllowedAttributes /
./ 0
Add0 3
(3 4
$str4 ;
); <
;< =
} 
) 
; 
services 
. 
	AddScoped "
<" #!
IHtmlSanitizerService# 8
,8 9 
HtmlSanitizerService: N
>N O
(O P
)P Q
;Q R
} 
) 
; 
return 
builder 
; 
} 	
} 
} Й$
ЦD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Scripting\CommonGeneratorMethods.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{		 
public

 

class

 "
CommonGeneratorMethods

 '
:

( )!
IGlobalMethodProvider

* ?
{ 
private 
static 
GlobalMethod #
Base64$ *
=+ ,
new- 0
GlobalMethod1 =
{ 	
Name 
= 
$str 
, 
Method 
= 
serviceProvider $
=>% '
(( )
Func) -
<- .
string. 4
,4 5
string6 <
>< =
)= >
(> ?
encoded? F
=>G I
{ 
return 
Encoding 
.  
UTF8  $
.$ %
	GetString% .
(. /
Convert/ 6
.6 7
FromBase64String7 G
(G H
encodedH O
)O P
)P Q
;Q R
} 
) 
} 	
;	 

private 
static 
GlobalMethod #
Html$ (
=) *
new+ .
GlobalMethod/ ;
{ 	
Name 
= 
$str 
, 
Method 
= 
serviceProvider $
=>% '
(( )
Func) -
<- .
string. 4
,4 5
string6 <
>< =
)= >
(> ?
encoded? F
=>G I
{ 
return 

WebUtility !
.! "

HtmlDecode" ,
(, -
encoded- 4
)4 5
;5 6
} 
) 
} 	
;	 

private"" 
static"" 
GlobalMethod"" #
GZip""$ (
="") *
new""+ .
GlobalMethod""/ ;
{## 	
Name$$ 
=$$ 
$str$$ 
,$$ 
Method%% 
=%% 
serviceProvider%% $
=>%%% '
(%%( )
Func%%) -
<%%- .
string%%. 4
,%%4 5
string%%6 <
>%%< =
)%%= >
(%%> ?
encoded%%? F
=>%%G I
{&& 
var'' 
bytes'' 
='' 
Convert'' #
.''# $
FromBase64String''$ 4
(''4 5
encoded''5 <
)''< =
;''= >
using(( 
((( 
var(( 
gzip(( 
=((  !
new((" %

GZipStream((& 0
(((0 1
new((1 4
MemoryStream((5 A
(((A B
bytes((B G
)((G H
,((H I
CompressionMode((J Y
.((Y Z

Decompress((Z d
)((d e
)((e f
{)) 
var** 
decompressed** $
=**% &
new**' *
MemoryStream**+ 7
(**7 8
)**8 9
;**9 :
var++ 
buffer++ 
=++  
new++! $
byte++% )
[++) *
$num++* .
]++. /
;++/ 0
int,, 
nRead,, 
;,, 
while-- 
(-- 
(-- 
nRead-- !
=--" #
gzip--$ (
.--( )
Read--) -
(--- .
buffer--. 4
,--4 5
$num--6 7
,--7 8
buffer--9 ?
.--? @
Length--@ F
)--F G
)--G H
>--I J
$num--K L
)--L M
{.. 
decompressed// $
.//$ %
Write//% *
(//* +
buffer//+ 1
,//1 2
$num//3 4
,//4 5
nRead//6 ;
)//; <
;//< =
}00 
return22 
Convert22 "
.22" #
ToBase64String22# 1
(221 2
decompressed222 >
.22> ?
ToArray22? F
(22F G
)22G H
)22H I
;22I J
}33 
}44 
)44 
}55 	
;55	 

public77 
IEnumerable77 
<77 
GlobalMethod77 '
>77' (

GetMethods77) 3
(773 4
)774 5
{88 	
return99 
new99 
[99 
]99 
{99 
Base6499 !
,99! "
Html99# '
,99' (
GZip99) -
}99. /
;99/ 0
}:: 	
};; 
}<< Ф%
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Scripting\DefaultScriptingManager.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

class #
DefaultScriptingManager (
:) *
IScriptingManager+ <
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
$ %
IScriptingEngine

% 5
>

5 6
_engines

7 ?
;

? @
public #
DefaultScriptingManager &
(& '
IEnumerable 
< 
IScriptingEngine (
>( )
engines* 1
,1 2
IEnumerable 
< !
IGlobalMethodProvider -
>- .!
globalMethodProviders/ D
)D E
{ 	
_engines 
= 
engines 
; !
GlobalMethodProviders !
=" #
new$ '
List( ,
<, -!
IGlobalMethodProvider- B
>B C
(C D!
globalMethodProvidersD Y
)Y Z
.Z [

AsReadOnly[ e
(e f
)f g
;g h
} 	
public 
IReadOnlyList 
< !
IGlobalMethodProvider 2
>2 3!
GlobalMethodProviders4 I
{J K
getL O
;O P
}Q R
public 
object 
Evaluate 
( 
string %
	directive& /
,/ 0
IFileProvider 
fileProvider &
,& '
string 
basePath 
, 
IEnumerable 
< !
IGlobalMethodProvider -
>- .!
scopedMethodProviders/ D
)D E
{ 	
var 
directiveIndex 
=  
	directive! *
.* +
IndexOf+ 2
(2 3
$char3 6
)6 7
;7 8
if 
( 
directiveIndex 
== !
-" #
$num# $
||% '
directiveIndex( 6
>=7 9
	directive: C
.C D
LengthD J
-K L
$numM N
)N O
{ 
return 
	directive  
;  !
}   
var"" 
prefix"" 
="" 
	directive"" "
.""" #
	Substring""# ,
("", -
$num""- .
,"". /
directiveIndex""0 >
)""> ?
;""? @
var## 
script## 
=## 
	directive## "
.##" #
	Substring### ,
(##, -
directiveIndex##- ;
+##< =
$num##> ?
)##? @
;##@ A
var%% 
engine%% 
=%% 
GetScriptingEngine%% +
(%%+ ,
prefix%%, 2
)%%2 3
;%%3 4
if&& 
(&& 
engine&& 
==&& 
null&& 
)&& 
{'' 
return(( 
	directive((  
;((  !
})) 
var++ 
methodProviders++ 
=++  !!
scopedMethodProviders++" 7
!=++8 :
null++; ?
?++@ A!
GlobalMethodProviders++B W
.++W X
Concat++X ^
(++^ _!
scopedMethodProviders++_ t
)++t u
:++v w"
GlobalMethodProviders	++x Н
;
++Н О
var,, 
scope,, 
=,, 
engine,, 
.,, 
CreateScope,, *
(,,* +
methodProviders,,+ :
.,,: ;

SelectMany,,; E
(,,E F
x,,F G
=>,,H J
x,,K L
.,,L M

GetMethods,,M W
(,,W X
),,X Y
),,Y Z
,,,Z [

ShellScope,,\ f
.,,f g
Services,,g o
,,,o p
fileProvider,,q }
,,,} ~
basePath	,, З
)
,,З И
;
,,И Й
return-- 
engine-- 
.-- 
Evaluate-- "
(--" #
scope--# (
,--( )
script--* 0
)--0 1
;--1 2
}.. 	
public00 
IScriptingEngine00 
GetScriptingEngine00  2
(002 3
string003 9
prefix00: @
)00@ A
{11 	
return22 
_engines22 
.22 
FirstOrDefault22 *
(22* +
x22+ ,
=>22- /
x220 1
.221 2
Prefix222 8
==229 ;
prefix22< B
)22B C
;22C D
}33 	
}44 
}55 ы3
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Scripting\Files\FilesScriptEngine.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
.  
Files  %
{ 
public 

class 
FilesScriptEngine "
:# $
IScriptingEngine% 5
{ 
public 
string 
Prefix 
=> 
$str  &
;& '
public 
IScriptingScope 
CreateScope *
(* +
IEnumerable+ 6
<6 7
GlobalMethod7 C
>C D
methodsE L
,L M
IServiceProviderN ^
serviceProvider_ n
,n o
IFileProviderp }
fileProvider	~ К
,
К Л
string
М Т
basePath
У Ы
)
Ы Ь
{ 	
return 
new 
FilesScriptScope '
(' (
fileProvider( 4
,4 5
basePath6 >
)> ?
;? @
} 	
public 
object 
Evaluate 
( 
IScriptingScope .
scope/ 4
,4 5
string6 <
script= C
)C D
{ 	
if 
( 
scope 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
scope7 <
)< =
)= >
;> ?
} 
if 
( 
! 
( 
scope 
is 
FilesScriptScope +
	fileScope, 5
)5 6
)6 7
{ 
throw 
new 
ArgumentException +
(+ ,
$", .%
Expected a scope of type . G
{G H
nameofH N
(N O
FilesScriptScopeO _
)_ `
}` a
"a b
,b c
nameofd j
(j k
scopek p
)p q
)q r
;r s
} 
if   
(   
script   
.   

StartsWith   !
(  ! "
$str  " *
,  * +
StringComparison  , <
.  < =
Ordinal  = D
)  D E
&&  F H
script  I O
.  O P
EndsWith  P X
(  X Y
$str  Y ]
,  ] ^
StringComparison  _ o
.  o p
Ordinal  p w
)  w x
)  x y
{!! 
var"" 
filePath"" 
="" 
script"" %
.""% &
	Substring""& /
(""/ 0
$num""0 1
,""1 2
script""3 9
.""9 :
Length"": @
-""A B
$num""C D
)""D E
;""E F
var## 
fileInfo## 
=## 
	fileScope## (
.##( )
FileProvider##) 5
.##5 6
GetRelativeFileInfo##6 I
(##I J
	fileScope##J S
.##S T
BasePath##T \
,##\ ]
filePath##^ f
)##f g
;##g h
if$$ 
($$ 
!$$ 
fileInfo$$ 
.$$ 
Exists$$ $
)$$$ %
{%% 
throw&& 
new&& !
FileNotFoundException&& 3
(&&3 4
filePath&&4 <
)&&< =
;&&= >
}'' 
using)) 
()) 
var)) 

fileStream)) %
=))& '
fileInfo))( 0
.))0 1
CreateReadStream))1 A
())A B
)))B C
)))C D
{** 
using++ 
(++ 
var++ 
streamReader++ +
=++, -
new++. 1
StreamReader++2 >
(++> ?

fileStream++? I
)++I J
)++J K
{,, 
return-- 
streamReader-- +
.--+ ,
	ReadToEnd--, 5
(--5 6
)--6 7
;--7 8
}.. 
}// 
}00 
else11 
if11 
(11 
script11 
.11 

StartsWith11 &
(11& '
$str11' 1
,111 2
StringComparison113 C
.11C D
Ordinal11D K
)11K L
&&11M O
script11P V
.11V W
EndsWith11W _
(11_ `
$str11` d
,11d e
StringComparison11f v
.11v w
Ordinal11w ~
)11~ 
)	11 А
{22 
var33 
filePath33 
=33 
script33 %
.33% &
	Substring33& /
(33/ 0
$num330 1
,331 2
script333 9
.339 :
Length33: @
-33A B
$num33C E
)33E F
;33F G
var44 
fileInfo44 
=44 
	fileScope44 (
.44( )
FileProvider44) 5
.445 6
GetRelativeFileInfo446 I
(44I J
	fileScope44J S
.44S T
BasePath44T \
,44\ ]
filePath44^ f
)44f g
;44g h
if55 
(55 
!55 
fileInfo55 
.55 
Exists55 $
)55$ %
{66 
throw77 
new77 !
FileNotFoundException77 3
(773 4
filePath774 <
)77< =
;77= >
}88 
using:: 
(:: 
var:: 

fileStream:: %
=::& '
fileInfo::( 0
.::0 1
CreateReadStream::1 A
(::A B
)::B C
)::C D
{;; 
using<< 
(<< 
var<< 
ms<< !
=<<" #
new<<$ '
MemoryStream<<( 4
(<<4 5
)<<5 6
)<<6 7
{== 

fileStream>> "
.>>" #
CopyTo>># )
(>>) *
ms>>* ,
)>>, -
;>>- .
return?? 
Convert?? &
.??& '
ToBase64String??' 5
(??5 6
ms??6 8
.??8 9
ToArray??9 @
(??@ A
)??A B
)??B C
;??C D
}@@ 
}AA 
}BB 
elseCC 
{DD 
throwEE 
newEE 
ArgumentExceptionEE +
(EE+ ,
$"EE, .
Unknown command 'EE. ?
{EE? @
scriptEE@ F
}EEF G
'EEG H
"EEH I
)EEI J
;EEJ K
}FF 
}GG 	
}HH 
}II │
ЦD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Scripting\Files\FilesScriptScope.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
.  
Files  %
{ 
public 

class 
FilesScriptScope !
:" #
IScriptingScope$ 3
{ 
public 
FilesScriptScope 
(  
IFileProvider  -
fileProvider. :
,: ;
string< B
basePathC K
)K L
{ 	
FileProvider		 
=		 
fileProvider		 '
;		' (
BasePath

 
=

 
basePath

 
;

  
} 	
public 
IFileProvider 
FileProvider )
{* +
get, /
;/ 0
}1 2
public 
string 
BasePath 
{  
get! $
;$ %
}& '
} 
} └

ЫD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Scripting\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
	Scripting 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddScripting) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
)V W
{		 	
services

 
.

 
AddSingleton

 !
<

! "
IScriptingManager

" 3
,

3 4#
DefaultScriptingManager

5 L
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
O P
services 
. 
AddSingleton !
<! "!
IGlobalMethodProvider" 7
,7 8"
CommonGeneratorMethods9 O
>O P
(P Q
)Q R
;R S
services 
. 
AddSingleton !
<! "
IScriptingEngine" 2
,2 3
FilesScriptEngine4 E
>E F
(F G
)G H
;H I
return 
services 
; 
} 	
} 
} х,
ЧD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Security\ApiAuthenticationHandler.cs
	namespace 	
OrchardCore
 
. 
Security 
{		 
public 

class $
ApiAuthenticationHandler )
:* +!
AuthenticationHandler, A
<A B#
ApiAuthorizationOptionsB Y
>Y Z
{ 
private 
readonly 
IOptions !
<! "!
AuthenticationOptions" 7
>7 8"
_authenticationOptions9 O
;O P
public $
ApiAuthenticationHandler '
(' (
IOptions 
< !
AuthenticationOptions *
>* +!
authenticationOptions, A
,A B
IOptionsMonitor 
< #
ApiAuthorizationOptions 3
>3 4
options5 <
,< =
ILoggerFactory 
logger !
,! "

UrlEncoder 
encoder 
, 
ISystemClock 
clock 
) 
: 
base 
( 
options 
, 
logger "
," #
encoder$ +
,+ ,
clock- 2
)2 3
{ 	"
_authenticationOptions "
=# $!
authenticationOptions% :
;: ;
} 	
	protected 
override 
Task 
<  
AuthenticateResult  2
>2 3#
HandleAuthenticateAsync4 K
(K L
)L M
{ 	
if 
( 
! "
_authenticationOptions '
.' (
Value( -
.- .
	SchemeMap. 7
.7 8
ContainsKey8 C
(C D
OptionsD K
.K L#
ApiAuthenticationSchemeL c
)c d
)d e
{   
return!! 
Task!! 
.!! 

FromResult!! &
<!!& '
AuthenticateResult!!' 9
>!!9 :
(!!: ;
AuthenticateResult!!; M
.!!M N
NoResult!!N V
(!!V W
)!!W X
)!!X Y
;!!Y Z
}"" 
return$$ 
Context$$ 
.$$ 
AuthenticateAsync$$ ,
($$, -
Options$$- 4
.$$4 5#
ApiAuthenticationScheme$$5 L
)$$L M
;$$M N
}%% 	
	protected'' 
override'' 
Task''  
HandleChallengeAsync''  4
(''4 5$
AuthenticationProperties''5 M

properties''N X
)''X Y
{(( 	
if)) 
()) 
!)) "
_authenticationOptions)) '
.))' (
Value))( -
.))- .
	SchemeMap)). 7
.))7 8
ContainsKey))8 C
())C D
Options))D K
.))K L#
ApiAuthenticationScheme))L c
)))c d
)))d e
{** 
return++ 
Task++ 
.++ 
CompletedTask++ )
;++) *
},, 
var.. "
statusCodePagesFeature.. &
=..' (
Context..) 0
...0 1
Features..1 9
...9 :
Get..: =
<..= >#
IStatusCodePagesFeature..> U
>..U V
(..V W
)..W X
;..X Y
if// 
(// "
statusCodePagesFeature// &
!=//' )
null//* .
)//. /
{00 "
statusCodePagesFeature11 &
.11& '
Enabled11' .
=11/ 0
false111 6
;116 7
}22 
return44 
Context44 
.44 
ChallengeAsync44 )
(44) *
Options44* 1
.441 2#
ApiAuthenticationScheme442 I
)44I J
;44J K
}55 	
	protected77 
override77 
Task77  
HandleForbiddenAsync77  4
(774 5$
AuthenticationProperties775 M

properties77N X
)77X Y
{88 	
if99 
(99 
!99 "
_authenticationOptions99 '
.99' (
Value99( -
.99- .
	SchemeMap99. 7
.997 8
ContainsKey998 C
(99C D
Options99D K
.99K L#
ApiAuthenticationScheme99L c
)99c d
)99d e
{:: 
return;; 
Task;; 
.;; 
CompletedTask;; )
;;;) *
}<< 
var>> "
statusCodePagesFeature>> &
=>>' (
Context>>) 0
.>>0 1
Features>>1 9
.>>9 :
Get>>: =
<>>= >#
IStatusCodePagesFeature>>> U
>>>U V
(>>V W
)>>W X
;>>X Y
if?? 
(?? "
statusCodePagesFeature?? &
!=??' )
null??* .
)??. /
{@@ "
statusCodePagesFeatureAA &
.AA& '
EnabledAA' .
=AA/ 0
falseAA1 6
;AA6 7
}BB 
returnDD 
ContextDD 
.DD 
ForbidAsyncDD &
(DD& '
OptionsDD' .
.DD. /#
ApiAuthenticationSchemeDD/ F
)DDF G
;DDG H
}EE 	
}FF 
publicHH 

classHH #
ApiAuthorizationOptionsHH (
:HH) *'
AuthenticationSchemeOptionsHH+ F
{II 
publicJJ 
stringJJ #
ApiAuthenticationSchemeJJ -
{JJ. /
getJJ0 3
;JJ3 4
setJJ5 8
;JJ8 9
}JJ: ;
=JJ< =
$strJJ> F
;JJF G
}KK 
}LL ╪
жD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Security\AuthorizationHandlers\PermissionHandler.cs
	namespace 	
OrchardCore
 
. 
Security 
. !
AuthorizationHandlers 4
{ 
public

 

class

 
PermissionHandler

 "
:

# $ 
AuthorizationHandler

% 9
<

9 :!
PermissionRequirement

: O
>

O P
{ 
	protected 
override 
Task "
HandleRequirementAsync  6
(6 7'
AuthorizationHandlerContext7 R
contextS Z
,Z [!
PermissionRequirement\ q
requirementr }
)} ~
{ 	
if 
( 
! 
( 
context 
? 
. 
User 
?  
.  !
Identity! )
?) *
.* +
IsAuthenticated+ :
??; =
false> C
)C D
)D E
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
else 
if 
( 
context 
. 
User !
.! "
HasClaim" *
(* +

Permission+ 5
.5 6
	ClaimType6 ?
,? @
requirementA L
.L M

PermissionM W
.W X
NameX \
)\ ]
)] ^
{ 
context 
. 
Succeed 
(  
requirement  +
)+ ,
;, -
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} э
еD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Security\AuthorizationHandlers\SuperUserHandler.cs
	namespace 	
OrchardCore
 
. 
Security 
. !
AuthorizationHandlers 4
{		 
public 

class 
SuperUserHandler !
:" #!
IAuthorizationHandler$ 9
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
SuperUserHandler 
(  
ISiteService  ,
siteService- 8
)8 9
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
HandleAsync %
(% &'
AuthorizationHandlerContext& A
contextB I
)I J
{ 	
var 
userId 
= 
context  
?  !
.! "
User" &
?& '
.' (
FindFirstValue( 6
(6 7

ClaimTypes7 A
.A B
NameIdentifierB P
)P Q
;Q R
if 
( 
userId 
== 
null 
) 
{ 
return 
; 
} 
var 
site 
= 
await 
_siteService )
.) * 
GetSiteSettingsAsync* >
(> ?
)? @
;@ A
if   
(   
String   
.   
Equals   
(   
userId   $
,  $ %
site  & *
.  * +
	SuperUser  + 4
,  4 5
StringComparison  6 F
.  F G
OrdinalIgnoreCase  G X
)  X Y
)  Y Z
{!! "
SucceedAllRequirements"" &
(""& '
context""' .
)"". /
;""/ 0
}## 
}$$ 	
private&& 
static&& 
void&& "
SucceedAllRequirements&& 2
(&&2 3'
AuthorizationHandlerContext&&3 N
context&&O V
)&&V W
{'' 	
foreach(( 
((( 
var(( 
requirement(( $
in((% '
context((( /
.((/ 0
Requirements((0 <
.((< =
OfType((= C
<((C D!
PermissionRequirement((D Y
>((Y Z
(((Z [
)(([ \
)((\ ]
{)) 
context** 
.** 
Succeed** 
(**  
requirement**  +
)**+ ,
;**, -
}++ 
},, 	
}-- 
}.. ╜
ЭD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Security\AuthorizationServiceExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Authorization ,
{ 
public 

static 
class *
AuthorizationServiceExtensions 6
{		 
public

 
static

 
Task

 
<

 
bool

 
>

  
AuthorizeAsync

! /
(

/ 0
this

0 4!
IAuthorizationService

5 J
service

K R
,

R S
ClaimsPrincipal

T c
user

d h
,

h i

Permission

j t

permission

u 
)	

 А
{ 	
return 
AuthorizeAsync !
(! "
service" )
,) *
user+ /
,/ 0

permission1 ;
,; <
null= A
)A B
;B C
} 	
public 
static 
async 
Task  
<  !
bool! %
>% &
AuthorizeAsync' 5
(5 6
this6 :!
IAuthorizationService; P
serviceQ X
,X Y
ClaimsPrincipalZ i
userj n
,n o

Permissionp z

permission	{ Е
,
Е Ж
object
З Н
resource
О Ц
)
Ц Ч
{ 	
if 
( 
user 
== 
null 
) 
{ 
return 
false 
; 
} 
return 
( 
await 
service !
.! "
AuthorizeAsync" 0
(0 1
user1 5
,5 6
resource7 ?
,? @
newA D!
PermissionRequirementE Z
(Z [

permission[ e
)e f
)f g
)g h
.h i
	Succeededi r
;r s
} 	
} 
} ∙
ФD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Security\PermissionRequirement.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public 

class !
PermissionRequirement &
:' (%
IAuthorizationRequirement) B
{ 
public		 !
PermissionRequirement		 $
(		$ %

Permission		% /

permission		0 :
)		: ;
{

 	
if 
( 

permission 
== 
null "
)" #
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7

permission7 A
)A B
)B C
;C D
} 

Permission 
= 

permission #
;# $
} 	
public 

Permission 

Permission $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} Ў
ЪD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Security\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Security 
{ 
public		 

static		 
class		 '
ServiceCollectionExtensions		 3
{

 
public 
static 
IServiceCollection (
AddSecurity) 4
(4 5
this5 9
IServiceCollection: L
servicesM U
)U V
{ 	
services 
. 
AddAuthorization %
(% &
)& '
;' (
services 
. 
	Configure 
< !
AuthenticationOptions 4
>4 5
(5 6
(6 7
options7 >
)> ?
=>@ B
{ 
if 
( 
! 
options 
. 
Schemes $
.$ %
Any% (
(( )
x) *
=>+ -
x. /
./ 0
Name0 4
==5 7
$str8 =
)= >
)> ?
{ 
options 
. 
	AddScheme %
<% &$
ApiAuthenticationHandler& >
>> ?
(? @
$str@ E
,E F
nullG K
)K L
;L M
} 
} 
) 
; 
services 
. 
	AddScoped 
< !
IAuthorizationHandler 4
,4 5
SuperUserHandler6 F
>F G
(G H
)H I
;I J
services 
. 
	AddScoped 
< !
IAuthorizationHandler 4
,4 5
PermissionHandler6 G
>G H
(H I
)I J
;J K
return 
services 
; 
} 	
} 
}   юZ
╡D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Configuration\DatabaseShellConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Database %
.% &
Configuration& 3
{ 
public 

class -
!DatabaseShellConfigurationSources 2
:3 4&
IShellConfigurationSources5 O
{ 
private 
readonly (
DatabaseShellsStorageOptions 5
_options6 >
;> ?
private 
readonly  
IShellContextFactory - 
_shellContextFactory. B
;B C
private 
readonly 
string 

_container  *
;* +
public -
!DatabaseShellConfigurationSources 0
(0 1
	Microsoft 
. 

Extensions  
.  !
Configuration! .
.. /
IConfiguration/ =
configuration> K
,K L 
IShellContextFactory  
shellContextFactory! 4
,4 5
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
)/ 0
{ 	
_options 
= 
configuration $
.   

GetSection   
(   
$str   )
)  ) *
.!! 
GetSectionCompat!! !
(!!! "
$str!!" ?
)!!? @
."" 
Get"" 
<"" (
DatabaseShellsStorageOptions"" 1
>""1 2
(""2 3
)""3 4
??## 
new## (
DatabaseShellsStorageOptions## 3
(##3 4
)##4 5
;##5 6 
_shellContextFactory%%  
=%%! "
shellContextFactory%%# 6
;%%6 7

_container'' 
='' 
Path'' 
.'' 
Combine'' %
(''% &
shellOptions''& 2
.''2 3
Value''3 8
.''8 9%
ShellsApplicationDataPath''9 R
,''R S
shellOptions''T `
.''` a
Value''a f
.''f g
ShellsContainerName''g z
)''z {
;''{ |
}(( 	
public** 
async** 
Task** 
AddSourcesAsync** )
(**) *
string*** 0
tenant**1 7
,**7 8!
IConfigurationBuilder**9 N
builder**O V
)**V W
{++ 	
JObject,, 
configurations,, "
=,,# $
null,,% )
;,,) *
using.. 
var.. 
context.. 
=.. 
await..  % 
_shellContextFactory..& :
...: ;#
GetDatabaseContextAsync..; R
(..R S
_options..S [
)..[ \
;..\ ]
await// 
context// 
.// 
CreateScope// %
(//% &
)//& '
.//' ("
UsingServiceScopeAsync//( >
(//> ?
async//? D
scope//E J
=>//K M
{00 
var11 
session11 
=11 
scope11 #
.11# $
ServiceProvider11$ 3
.113 4
GetRequiredService114 F
<11F G
ISession11G O
>11O P
(11P Q
)11Q R
;11R S
var33 
document33 
=33 
await33 $
session33% ,
.33, -
Query33- 2
<332 3'
DatabaseShellConfigurations333 N
>33N O
(33O P
)33P Q
.33Q R
FirstOrDefaultAsync33R e
(33e f
)33f g
;33g h
if55 
(55 
document55 
!=55 
null55  $
)55$ %
{66 
configurations77 "
=77# $
document77% -
.77- .
ShellConfigurations77. A
;77A B
}88 
else99 
{:: 
document;; 
=;; 
new;; "'
DatabaseShellConfigurations;;# >
(;;> ?
);;? @
;;;@ A
configurations<< "
=<<# $
new<<% (
JObject<<) 0
(<<0 1
)<<1 2
;<<2 3
}== 
if?? 
(?? 
!?? 
configurations?? #
.??# $
ContainsKey??$ /
(??/ 0
tenant??0 6
)??6 7
)??7 8
{@@ 
ifAA 
(AA 
!AA 
_optionsAA !
.AA! "
MigrateFromFilesAA" 2
||AA3 5
!AA6 7
awaitAA7 <#
TryMigrateFromFileAsyncAA= T
(AAT U
tenantAAU [
,AA[ \
configurationsAA] k
)AAk l
)AAl m
{BB 
returnCC 
;CC 
}DD 
documentFF 
.FF 
ShellConfigurationsFF 0
=FF1 2
configurationsFF3 A
;FFA B
sessionHH 
.HH 
SaveHH  
(HH  !
documentHH! )
,HH) *
checkConcurrencyHH+ ;
:HH; <
trueHH= A
)HHA B
;HHB C
}II 
}JJ 
)JJ 
;JJ 
varLL 
configurationLL 
=LL 
configurationsLL  .
.LL. /
GetValueLL/ 7
(LL7 8
tenantLL8 >
)LL> ?
asLL@ B
JObjectLLC J
;LLJ K
ifMM 
(MM 
configurationMM 
!=MM  
nullMM! %
)MM% &
{NN 
builderOO 
.OO 
AddJsonStreamOO %
(OO% &
newOO& )
MemoryStreamOO* 6
(OO6 7
EncodingOO7 ?
.OO? @
UTF8OO@ D
.OOD E
GetBytesOOE M
(OOM N
configurationOON [
.OO[ \
ToStringOO\ d
(OOd e

FormattingOOe o
.OOo p
NoneOOp t
)OOt u
)OOu v
)OOv w
)OOw x
;OOx y
}PP 
}QQ 	
publicSS 
asyncSS 
TaskSS 
	SaveAsyncSS #
(SS# $
stringSS$ *
tenantSS+ 1
,SS1 2
IDictionarySS3 >
<SS> ?
stringSS? E
,SSE F
stringSSG M
>SSM N
dataSSO S
)SSS T
{TT 	
usingUU 
varUU 
contextUU 
=UU 
awaitUU  % 
_shellContextFactoryUU& :
.UU: ;#
GetDatabaseContextAsyncUU; R
(UUR S
_optionsUUS [
)UU[ \
;UU\ ]
awaitVV 
contextVV 
.VV 
CreateScopeVV %
(VV% &
)VV& '
.VV' ("
UsingServiceScopeAsyncVV( >
(VV> ?
asyncVV? D
scopeVVE J
=>VVK M
{WW 
varXX 
sessionXX 
=XX 
scopeXX #
.XX# $
ServiceProviderXX$ 3
.XX3 4
GetRequiredServiceXX4 F
<XXF G
ISessionXXG O
>XXO P
(XXP Q
)XXQ R
;XXR S
varZZ 
documentZZ 
=ZZ 
awaitZZ $
sessionZZ% ,
.ZZ, -
QueryZZ- 2
<ZZ2 3'
DatabaseShellConfigurationsZZ3 N
>ZZN O
(ZZO P
)ZZP Q
.ZZQ R
FirstOrDefaultAsyncZZR e
(ZZe f
)ZZf g
;ZZg h
JObject\\ 
configurations\\ &
;\\& '
if]] 
(]] 
document]] 
!=]] 
null]]  $
)]]$ %
{^^ 
configurations__ "
=__# $
document__% -
.__- .
ShellConfigurations__. A
;__A B
}`` 
elseaa 
{bb 
documentcc 
=cc 
newcc "'
DatabaseShellConfigurationscc# >
(cc> ?
)cc? @
;cc@ A
configurationsdd "
=dd# $
newdd% (
JObjectdd) 0
(dd0 1
)dd1 2
;dd2 3
}ee 
vargg 
configgg 
=gg 
configurationsgg +
.gg+ ,
GetValuegg, 4
(gg4 5
tenantgg5 ;
)gg; <
asgg= ?
JObjectgg@ G
??ggH J
newggK N
JObjectggO V
(ggV W
)ggW X
;ggX Y
foreachii 
(ii 
varii 
keyii  
inii! #
dataii$ (
.ii( )
Keysii) -
)ii- .
{jj 
ifkk 
(kk 
datakk 
[kk 
keykk  
]kk  !
!=kk" $
nullkk% )
)kk) *
{ll 
configmm 
[mm 
keymm "
]mm" #
=mm$ %
datamm& *
[mm* +
keymm+ .
]mm. /
;mm/ 0
}nn 
elseoo 
{pp 
configqq 
.qq 
Removeqq %
(qq% &
keyqq& )
)qq) *
;qq* +
}rr 
}ss 
configurationsuu 
[uu 
tenantuu %
]uu% &
=uu' (
configuu) /
;uu/ 0
documentww 
.ww 
ShellConfigurationsww ,
=ww- .
configurationsww/ =
;ww= >
sessionyy 
.yy 
Saveyy 
(yy 
documentyy %
,yy% &
checkConcurrencyyy' 7
:yy7 8
trueyy9 =
)yy= >
;yy> ?
}zz 
)zz 
;zz 
}{{ 	
private}} 
async}} 
Task}} 
<}} 
bool}} 
>}}  #
TryMigrateFromFileAsync}}! 8
(}}8 9
string}}9 ?
tenant}}@ F
,}}F G
JObject}}H O
configurations}}P ^
)}}^ _
{~~ 	
var 
tenantFolder 
= 
Path #
.# $
Combine$ +
(+ ,

_container, 6
,6 7
tenant8 >
)> ?
;? @
var
АА 
appsettings
АА 
=
АА 
Path
АА "
.
АА" #
Combine
АА# *
(
АА* +
tenantFolder
АА+ 7
,
АА7 8
$str
АА9 K
)
ААK L
;
ААL M
if
ВВ 
(
ВВ 
!
ВВ 
File
ВВ 
.
ВВ 
Exists
ВВ 
(
ВВ 
appsettings
ВВ (
)
ВВ( )
)
ВВ) *
{
ГГ 
return
ДД 
false
ДД 
;
ДД 
}
ЕЕ 
using
ЗЗ 
(
ЗЗ 
var
ЗЗ 
file
ЗЗ 
=
ЗЗ 
File
ЗЗ "
.
ЗЗ" #
OpenText
ЗЗ# +
(
ЗЗ+ ,
appsettings
ЗЗ, 7
)
ЗЗ7 8
)
ЗЗ8 9
{
ИИ 
var
ЙЙ 
configuration
ЙЙ !
=
ЙЙ" #
await
ЙЙ$ )
file
ЙЙ* .
.
ЙЙ. /
ReadToEndAsync
ЙЙ/ =
(
ЙЙ= >
)
ЙЙ> ?
;
ЙЙ? @
if
ЛЛ 
(
ЛЛ 
configuration
ЛЛ !
!=
ЛЛ" $
null
ЛЛ% )
)
ЛЛ) *
{
ММ 
configurations
НН "
[
НН" #
tenant
НН# )
]
НН) *
=
НН+ ,
JObject
НН- 4
.
НН4 5
Parse
НН5 :
(
НН: ;
configuration
НН; H
)
ННH I
;
ННI J
}
ОО 
}
ПП 
return
СС 
true
СС 
;
СС 
}
ТТ 	
}
УУ 
}ФФ уL
▒D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Configuration\DatabaseShellsSettingsSources.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Database %
.% &
Configuration& 3
{ 
public 

class )
DatabaseShellsSettingsSources .
:/ 0"
IShellsSettingsSources1 G
{ 
private 
readonly (
DatabaseShellsStorageOptions 5
_options6 >
;> ?
private 
readonly  
IShellContextFactory - 
_shellContextFactory. B
;B C
private 
readonly 
string 
_tenants  (
;( )
public )
DatabaseShellsSettingsSources ,
(, -
	Microsoft 
. 

Extensions  
.  !
Configuration! .
.. /
IConfiguration/ =
configuration> K
,K L 
IShellContextFactory  
shellContextFactory! 4
,4 5
IOptions 
< 
ShellOptions !
>! "
shellOptions# /
)/ 0
{ 	
_options 
= 
configuration $
.   

GetSection   
(   
$str   )
)  ) *
.!! 
GetSectionCompat!! !
(!!! "
$str!!" ?
)!!? @
."" 
Get"" 
<"" (
DatabaseShellsStorageOptions"" 1
>""1 2
(""2 3
)""3 4
??## 
new## (
DatabaseShellsStorageOptions## 3
(##3 4
)##4 5
;##5 6 
_shellContextFactory%%  
=%%! "
shellContextFactory%%# 6
;%%6 7
_tenants'' 
='' 
Path'' 
.'' 
Combine'' #
(''# $
shellOptions''$ 0
.''0 1
Value''1 6
.''6 7%
ShellsApplicationDataPath''7 P
,''P Q
$str''R `
)''` a
;''a b
}(( 	
public** 
async** 
Task** 
AddSourcesAsync** )
(**) *!
IConfigurationBuilder*** ?
builder**@ G
)**G H
{++ 	"
DatabaseShellsSettings,, "
document,,# +
=,,, -
null,,. 2
;,,2 3
using.. 
var.. 
context.. 
=.. 
await..  % 
_shellContextFactory..& :
...: ;#
GetDatabaseContextAsync..; R
(..R S
_options..S [
)..[ \
;..\ ]
await// 
context// 
.// 
CreateScope// %
(//% &
)//& '
.//' ("
UsingServiceScopeAsync//( >
(//> ?
async//? D
scope//E J
=>//K M
{00 
var11 
session11 
=11 
scope11 #
.11# $
ServiceProvider11$ 3
.113 4
GetRequiredService114 F
<11F G
ISession11G O
>11O P
(11P Q
)11Q R
;11R S
document33 
=33 
await33  
session33! (
.33( )
Query33) .
<33. /"
DatabaseShellsSettings33/ E
>33E F
(33F G
)33G H
.33H I
FirstOrDefaultAsync33I \
(33\ ]
)33] ^
;33^ _
if55 
(55 
document55 
==55 
null55  $
)55$ %
{66 
document77 
=77 
new77 ""
DatabaseShellsSettings77# 9
(779 :
)77: ;
;77; <
if99 
(99 
!99 
_options99 !
.99! "
MigrateFromFiles99" 2
||993 5
!996 7
await997 <#
TryMigrateFromFileAsync99= T
(99T U
document99U ]
)99] ^
)99^ _
{:: 
return;; 
;;; 
}<< 
session>> 
.>> 
Save>>  
(>>  !
document>>! )
,>>) *
checkConcurrency>>+ ;
:>>; <
true>>= A
)>>A B
;>>B C
}?? 
}@@ 
)@@ 
;@@ 
ifBB 
(BB 
documentBB 
.BB 
ShellsSettingsBB '
!=BB( *
nullBB+ /
)BB/ 0
{CC 
builderDD 
.DD 
AddJsonStreamDD %
(DD% &
newDD& )
MemoryStreamDD* 6
(DD6 7
EncodingDD7 ?
.DD? @
UTF8DD@ D
.DDD E
GetBytesDDE M
(DDM N
documentDDN V
.DDV W
ShellsSettingsDDW e
.DDe f
ToStringDDf n
(DDn o

FormattingDDo y
.DDy z
NoneDDz ~
)DD~ 
)	DD А
)
DDА Б
)
DDБ В
;
DDВ Г
}EE 
}FF 	
publicHH 
asyncHH 
TaskHH 
	SaveAsyncHH #
(HH# $
stringHH$ *
tenantHH+ 1
,HH1 2
IDictionaryHH3 >
<HH> ?
stringHH? E
,HHE F
stringHHG M
>HHM N
dataHHO S
)HHS T
{II 	
usingJJ 
varJJ 
contextJJ 
=JJ 
awaitJJ  % 
_shellContextFactoryJJ& :
.JJ: ;#
GetDatabaseContextAsyncJJ; R
(JJR S
_optionsJJS [
)JJ[ \
;JJ\ ]
awaitKK 
contextKK 
.KK 
CreateScopeKK %
(KK% &
)KK& '
.KK' ("
UsingServiceScopeAsyncKK( >
(KK> ?
asyncKK? D
scopeKKE J
=>KKK M
{LL 
varMM 
sessionMM 
=MM 
scopeMM #
.MM# $
ServiceProviderMM$ 3
.MM3 4
GetRequiredServiceMM4 F
<MMF G
ISessionMMG O
>MMO P
(MMP Q
)MMQ R
;MMR S
varOO 
documentOO 
=OO 
awaitOO $
sessionOO% ,
.OO, -
QueryOO- 2
<OO2 3"
DatabaseShellsSettingsOO3 I
>OOI J
(OOJ K
)OOK L
.OOL M
FirstOrDefaultAsyncOOM `
(OO` a
)OOa b
;OOb c
JObjectQQ 
tenantsSettingsQQ '
;QQ' (
ifRR 
(RR 
documentRR 
!=RR 
nullRR  $
)RR$ %
{SS 
tenantsSettingsTT #
=TT$ %
documentTT& .
.TT. /
ShellsSettingsTT/ =
;TT= >
}UU 
elseVV 
{WW 
documentXX 
=XX 
newXX ""
DatabaseShellsSettingsXX# 9
(XX9 :
)XX: ;
;XX; <
tenantsSettingsYY #
=YY$ %
newYY& )
JObjectYY* 1
(YY1 2
)YY2 3
;YY3 4
}ZZ 
var\\ 
settings\\ 
=\\ 
tenantsSettings\\ .
.\\. /
GetValue\\/ 7
(\\7 8
tenant\\8 >
)\\> ?
as\\@ B
JObject\\C J
??\\K M
new\\N Q
JObject\\R Y
(\\Y Z
)\\Z [
;\\[ \
foreach^^ 
(^^ 
var^^ 
key^^  
in^^! #
data^^$ (
.^^( )
Keys^^) -
)^^- .
{__ 
if`` 
(`` 
data`` 
[`` 
key``  
]``  !
!=``" $
null``% )
)``) *
{aa 
settingsbb  
[bb  !
keybb! $
]bb$ %
=bb& '
databb( ,
[bb, -
keybb- 0
]bb0 1
;bb1 2
}cc 
elsedd 
{ee 
settingsff  
.ff  !
Removeff! '
(ff' (
keyff( +
)ff+ ,
;ff, -
}gg 
}hh 
tenantsSettingsjj 
[jj  
tenantjj  &
]jj& '
=jj( )
settingsjj* 2
;jj2 3
documentll 
.ll 
ShellsSettingsll '
=ll( )
tenantsSettingsll* 9
;ll9 :
sessionnn 
.nn 
Savenn 
(nn 
documentnn %
,nn% &
checkConcurrencynn' 7
:nn7 8
truenn9 =
)nn= >
;nn> ?
}oo 
)oo 
;oo 
}pp 	
privaterr 
asyncrr 
Taskrr 
<rr 
boolrr 
>rr  #
TryMigrateFromFileAsyncrr! 8
(rr8 9"
DatabaseShellsSettingsrr9 O
documentrrP X
)rrX Y
{ss 	
iftt 
(tt 
!tt 
Filett 
.tt 
Existstt 
(tt 
_tenantstt %
)tt% &
)tt& '
{uu 
returnvv 
falsevv 
;vv 
}ww 
usingyy 
(yy 
varyy 
fileyy 
=yy 
Fileyy "
.yy" #
OpenTextyy# +
(yy+ ,
_tenantsyy, 4
)yy4 5
)yy5 6
{zz 
var{{ 
settings{{ 
={{ 
await{{ $
file{{% )
.{{) *
ReadToEndAsync{{* 8
({{8 9
){{9 :
;{{: ;
document|| 
.|| 
ShellsSettings|| '
=||( )
JObject||* 1
.||1 2
Parse||2 7
(||7 8
settings||8 @
)||@ A
;||A B
}}} 
return 
true 
; 
}
АА 	
}
ББ 
}ВВ х
░D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Configuration\DatabaseShellsStorageOptions.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Database %
.% &
Configuration& 3
{ 
public 

class (
DatabaseShellsStorageOptions -
{ 
public 
bool 
MigrateFromFiles $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
DatabaseProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
ConnectionString &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
TablePrefix !
{" #
get$ '
;' (
set) ,
;, -
}. /
}		 
}

 м
╢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Extensions\DatabaseShellContextFactoryExtensions.cs
	namespace		 	
OrchardCore		
 
.		 
Shells		 
.		 
Database		 %
.		% &

Extensions		& 0
{

 
public 

static 
class 1
%DatabaseShellContextFactoryExtensions =
{ 
internal 
static 
Task 
< 
ShellContext )
>) *#
GetDatabaseContextAsync+ B
(B C
thisC G 
IShellContextFactoryH \
shellContextFactory] p
,p q)
DatabaseShellsStorageOptions	r О
options
П Ц
)
Ц Ч
{ 	
if 
( 
options 
. 
DatabaseProvider (
==) +
null, 0
)0 1
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
options7 >
.> ?
DatabaseProvider? O
)O P
,P Q
$str p
)p q
;q r
} 
var 
settings 
= 
new 
ShellSettings ,
(, -
)- .
{ 
Name 
= 
ShellHelper "
." #
DefaultShellName# 3
,3 4
State 
= 
TenantState #
.# $
Running$ +
} 
; 
settings 
[ 
$str '
]' (
=) *
options+ 2
.2 3
DatabaseProvider3 C
;C D
settings 
[ 
$str '
]' (
=) *
options+ 2
.2 3
ConnectionString3 C
;C D
settings 
[ 
$str "
]" #
=$ %
options& -
.- .
TablePrefix. 9
;9 :
return 
shellContextFactory &
.& ''
CreateDescribedContextAsync' B
(B C
settingsC K
,K L
newM P
ShellDescriptorQ `
(` a
)a b
)b c
;c d
}   	
}!! 
}"" ╣
╗D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Extensions\DatabaseShellsOrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public 

static 
class 6
*DatabaseShellsOrchardCoreBuilderExtensions B
{ 
public 
static 
OrchardCoreBuilder (*
AddDatabaseShellsConfiguration) G
(G H
thisH L
OrchardCoreBuilderM _
builder` g
)g h
{ 	
var 
services 
= 
builder "
." #
ApplicationServices# 6
;6 7
services 
. 
Replace 
( 
ServiceDescriptor .
.. /
	Singleton/ 8
<8 9"
IShellsSettingsSources9 O
,O P)
DatabaseShellsSettingsSourcesQ n
>n o
(o p
)p q
)q r
;r s
services 
. 
Replace 
( 
ServiceDescriptor .
.. /
	Singleton/ 8
<8 9&
IShellConfigurationSources9 S
,S T-
!DatabaseShellConfigurationSourcesU v
>v w
(w x
)x y
)y z
;z {
return 
builder 
; 
} 	
} 
} Ї
иD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Models\DatabaseShellConfigurations.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Database %
.% &
Models& ,
{ 
public 

class '
DatabaseShellConfigurations ,
{ 
public 
JObject 
ShellConfigurations *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
}		 х
гD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shells.Database\Models\DatabaseShellsSettings.cs
	namespace 	
OrchardCore
 
. 
Shells 
. 
Database %
.% &
Models& ,
{ 
public 

class "
DatabaseShellsSettings '
{ 
public 
JObject 
ShellsSettings %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 ЛJ
ТD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shell\ShellDescriptorManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Data( ,
., -
Descriptors- 8
{ 
public 

class "
ShellDescriptorManager '
:( )#
IShellDescriptorManager* A
{ 
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
IShellConfiguration ,
_shellConfiguration- @
;@ A
private 
readonly 
IEnumerable $
<$ %
ShellFeature% 1
>1 2"
_alwaysEnabledFeatures3 I
;I J
private 
readonly 
IEnumerable $
<$ %/
#IShellDescriptorManagerEventHandler% H
>H I0
$_shellDescriptorManagerEventHandlersJ n
;n o
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
private 
ShellDescriptor 
_shellDescriptor  0
;0 1
public "
ShellDescriptorManager %
(% &
ShellSettings   
shellSettings   '
,  ' (
IShellConfiguration!! 
shellConfiguration!!  2
,!!2 3
IEnumerable"" 
<"" 
ShellFeature"" $
>""$ %
shellFeatures""& 3
,""3 4
IEnumerable## 
<## /
#IShellDescriptorManagerEventHandler## ;
>##; </
#shellDescriptorManagerEventHandlers##= `
,##` a
ISession$$ 
session$$ 
,$$ 
ILogger%% 
<%% "
ShellDescriptorManager%% *
>%%* +
logger%%, 2
)%%2 3
{&& 	
_shellSettings'' 
='' 
shellSettings'' *
;''* +
_shellConfiguration(( 
=((  !
shellConfiguration((" 4
;((4 5"
_alwaysEnabledFeatures)) "
=))# $
shellFeatures))% 2
.))2 3
Where))3 8
())8 9
f))9 :
=>)); =
f))> ?
.))? @
AlwaysEnabled))@ M
)))M N
.))N O
ToArray))O V
())V W
)))W X
;))X Y0
$_shellDescriptorManagerEventHandlers** 0
=**1 2/
#shellDescriptorManagerEventHandlers**3 V
;**V W
_session++ 
=++ 
session++ 
;++ 
_logger,, 
=,, 
logger,, 
;,, 
}-- 	
public// 
async// 
Task// 
<// 
ShellDescriptor// )
>//) *#
GetShellDescriptorAsync//+ B
(//B C
)//C D
{00 	
if22 
(22 
_shellDescriptor22  
==22! #
null22$ (
)22( )
{33 
_shellDescriptor44  
=44! "
await44# (
_session44) 1
.441 2
Query442 7
<447 8
ShellDescriptor448 G
>44G H
(44H I
)44I J
.44J K
FirstOrDefaultAsync44K ^
(44^ _
)44_ `
;44` a
if66 
(66 
_shellDescriptor66 $
!=66% '
null66( ,
)66, -
{77 
var88 
configuredFeatures88 *
=88+ ,
new88- 0
ConfiguredFeatures881 C
(88C D
)88D E
;88E F
_shellConfiguration99 '
.99' (
Bind99( ,
(99, -
configuredFeatures99- ?
)99? @
;99@ A
var;; 
features;;  
=;;! ""
_alwaysEnabledFeatures;;# 9
.;;9 :
Concat;;: @
(;;@ A
configuredFeatures;;A S
.;;S T
Features;;T \
.<< 
Select<< 
(<<  
id<<  "
=><<# %
new<<& )
ShellFeature<<* 6
(<<6 7
id<<7 9
)<<9 :
{<<; <
AlwaysEnabled<<= J
=<<K L
true<<M Q
}<<R S
)<<S T
)<<T U
.<<U V
Distinct<<V ^
(<<^ _
)<<_ `
;<<` a
_shellDescriptor>> $
.>>$ %
Features>>% -
=>>. /
features>>0 8
.?? 
Concat?? 
(??  
_shellDescriptor??  0
.??0 1
Features??1 9
)??9 :
.@@ 
Distinct@@ !
(@@! "
)@@" #
.AA 
ToListAA 
(AA  
)AA  !
;AA! "
}BB 
}CC 
returnEE 
_shellDescriptorEE #
;EE# $
}FF 	
publicHH 
asyncHH 
TaskHH &
UpdateShellDescriptorAsyncHH 4
(HH4 5
intHH5 8
priorSerialNumberHH9 J
,HHJ K
IEnumerableHHL W
<HHW X
ShellFeatureHHX d
>HHd e
enabledFeaturesHHf u
,HHu v
IEnumerable	HHw В
<
HHВ Г
ShellParameter
HHГ С
>
HHС Т

parameters
HHУ Э
)
HHЭ Ю
{II 	
varJJ !
shellDescriptorRecordJJ %
=JJ& '
awaitJJ( -#
GetShellDescriptorAsyncJJ. E
(JJE F
)JJF G
;JJG H
varKK 
serialNumberKK 
=KK !
shellDescriptorRecordKK 4
==KK5 7
nullKK8 <
?LL 
$numLL 
:MM !
shellDescriptorRecordMM '
.MM' (
SerialNumberMM( 4
;MM4 5
ifOO 
(OO 
priorSerialNumberOO !
!=OO" $
serialNumberOO% 1
)OO1 2
{PP 
throwQQ 
newQQ %
InvalidOperationExceptionQQ 3
(QQ3 4
$strQQ4 `
)QQ` a
;QQa b
}RR 
ifTT 
(TT 
_loggerTT 
.TT 
	IsEnabledTT !
(TT! "
LogLevelTT" *
.TT* +
InformationTT+ 6
)TT6 7
)TT7 8
{UU 
_loggerVV 
.VV 
LogInformationVV &
(VV& '
$strVV' `
,VV` a
_shellSettingsVVb p
.VVp q
NameVVq u
)VVu v
;VVv w
}WW 
ifYY 
(YY !
shellDescriptorRecordYY %
==YY& (
nullYY) -
)YY- .
{ZZ !
shellDescriptorRecord[[ %
=[[& '
new[[( +
ShellDescriptor[[, ;
{[[< =
SerialNumber[[> J
=[[K L
$num[[M N
}[[O P
;[[P Q
}\\ 
else]] 
{^^ !
shellDescriptorRecord__ %
.__% &
SerialNumber__& 2
++__2 4
;__4 5
}`` !
shellDescriptorRecordbb !
.bb! "
Featuresbb" *
=bb+ ,"
_alwaysEnabledFeaturesbb- C
.bbC D
ConcatbbD J
(bbJ K
enabledFeaturesbbK Z
)bbZ [
.bb[ \
Distinctbb\ d
(bbd e
)bbe f
.bbf g
ToListbbg m
(bbm n
)bbn o
;bbo p!
shellDescriptorRecordcc !
.cc! "

Parameterscc" ,
=cc- .

parameterscc/ 9
.cc9 :
ToListcc: @
(cc@ A
)ccA B
;ccB C
ifee 
(ee 
_loggeree 
.ee 
	IsEnabledee !
(ee! "
LogLevelee" *
.ee* +
Informationee+ 6
)ee6 7
)ee7 8
{ff 
_loggergg 
.gg 
LogInformationgg &
(gg& '
$strgg' \
,gg\ ]
_shellSettingsgg^ l
.ggl m
Nameggm q
)ggq r
;ggr s
}hh 
_sessionjj 
.jj 
Savejj 
(jj !
shellDescriptorRecordjj /
)jj/ 0
;jj0 1
awaitoo 
_sessionoo 
.oo 
CommitAsyncoo &
(oo& '
)oo' (
;oo( )
awaitqq 0
$_shellDescriptorManagerEventHandlersqq 6
.qq6 7
InvokeAsyncqq7 B
(qqB C
(qqC D
handlerqqD K
,qqK L!
shellDescriptorRecordqqM b
,qqb c
_shellSettingsqqd r
)qqr s
=>qqt v
handlerrr 
.rr 
ChangedAsyncrr $
(rr$ %!
shellDescriptorRecordrr% :
,rr: ;
_shellSettingsrr< J
)rrJ K
,rrK L!
shellDescriptorRecordrrM b
,rrb c
_shellSettingsrrd r
,rrr s
_loggerrrt {
)rr{ |
;rr| }
}ss 	
privateuu 
classuu 
ConfiguredFeaturesuu (
{vv 	
publicww 
stringww 
[ww 
]ww 
Featuresww $
{ww% &
getww' *
;ww* +
setww, /
;ww/ 0
}ww1 2
=ww3 4
Arrayww5 :
.ww: ;
Emptyww; @
<ww@ A
stringwwA G
>wwG H
(wwH I
)wwI J
;wwJ K
}xx 	
}yy 
}zz з
ЭD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shell\ShellOrchardCoreBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public		 

static		 
class		 -
!ShellOrchardCoreBuilderExtensions		 9
{

 
public 
static 
OrchardCoreBuilder (
AddDataStorage) 7
(7 8
this8 <
OrchardCoreBuilder= O
builderP W
)W X
{ 	
builder 
. 
AddSitesFolder "
(" #
)# $
. 
ConfigureServices "
(" #
services# +
=>, .
{ 
services 
. 
	AddScoped &
<& '#
IShellDescriptorManager' >
,> ?"
ShellDescriptorManager@ V
>V W
(W X
)X Y
;Y Z
services 
. 
	AddScoped &
<& '
IShellStateManager' 9
,9 :
ShellStateManager; L
>L M
(M N
)N O
;O P
services 
. 
	AddScoped &
<& '!
IShellFeaturesManager' <
,< = 
ShellFeaturesManager> R
>R S
(S T
)T U
;U V
services 
. 
	AddScoped &
<& '+
IShellDescriptorFeaturesManager' F
,F G*
ShellDescriptorFeaturesManagerH f
>f g
(g h
)h i
;i j
} 
) 
; 
return 
builder 
; 
} 	
public   
static   
OrchardCoreBuilder   (
AddSitesFolder  ) 7
(  7 8
this  8 <
OrchardCoreBuilder  = O
builder  P W
)  W X
{!! 	
var"" 
services"" 
="" 
builder"" "
.""" #
ApplicationServices""# 6
;""6 7
services$$ 
.$$ 
AddSingleton$$ !
<$$! ""
IShellsSettingsSources$$" 8
,$$8 9!
ShellsSettingsSources$$: O
>$$O P
($$P Q
)$$Q R
;$$R S
services%% 
.%% 
AddSingleton%% !
<%%! "'
IShellsConfigurationSources%%" =
,%%= >&
ShellsConfigurationSources%%? Y
>%%Y Z
(%%Z [
)%%[ \
;%%\ ]
services&& 
.&& 
AddSingleton&& !
<&&! "&
IShellConfigurationSources&&" <
,&&< =%
ShellConfigurationSources&&> W
>&&W X
(&&X Y
)&&Y Z
;&&Z [
services'' 
.'' 
AddTransient'' !
<''! "
IConfigureOptions''" 3
<''3 4
ShellOptions''4 @
>''@ A
,''A B
ShellOptionsSetup''C T
>''T U
(''U V
)''V W
;''W X
services(( 
.(( 
AddSingleton(( !
<((! "!
IShellSettingsManager((" 7
,((7 8 
ShellSettingsManager((9 M
>((M N
(((N O
)((O P
;((P Q
return** 
builder** 
;** 
}++ 	
},, 
}-- Ч@
НD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Infrastructure\Shell\ShellStateManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class 
ShellStateManager "
:# $
IShellStateManager% 7
{ 
private 

ShellState 
_shellState &
;& '
private 
readonly 
ISession !
_session" *
;* +
private 
readonly 
ILogger  
_logger! (
;( )
public 
ShellStateManager  
(  !
ISession! )
session* 1
,1 2
ILogger3 :
<: ;
ShellStateManager; L
>L M
loggerN T
)T U
{ 	
_session 
= 
session 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 

ShellState $
>$ %
GetShellStateAsync& 8
(8 9
)9 :
{ 	
if 
( 
_shellState 
!= 
null #
)# $
{ 
return 
_shellState "
;" #
} 
_shellState 
= 
await 
_session  (
.( )
Query) .
<. /

ShellState/ 9
>9 :
(: ;
); <
.< =
FirstOrDefaultAsync= P
(P Q
)Q R
;R S
if!! 
(!! 
_shellState!! 
==!! 
null!! #
)!!# $
{"" 
_shellState## 
=## 
new## !

ShellState##" ,
(##, -
)##- .
;##. /
UpdateShellState$$  
($$  !
)$$! "
;$$" #
}%% 
return'' 
_shellState'' 
;'' 
}(( 	
public** 
async** 
Task** #
UpdateEnabledStateAsync** 1
(**1 2
ShellFeatureState**2 C
featureState**D P
,**P Q
ShellFeatureState**R c
.**c d
State**d i
value**j o
)**o p
{++ 	
if,, 
(,, 
_logger,, 
.,, 
	IsEnabled,, !
(,,! "
LogLevel,," *
.,,* +
Debug,,+ 0
),,0 1
),,1 2
{-- 
_logger.. 
... 
LogDebug..  
(..  !
$str..! x
,..x y
featureState// )
.//) *
Id//* ,
,//, -
featureState//. :
.//: ;
EnableState//; F
,//F G
value//H M
)//M N
;//N O
}00 
var22  
previousFeatureState22 $
=22% &
await22' ,(
GetOrCreateFeatureStateAsync22- I
(22I J
featureState22J V
.22V W
Id22W Y
)22Y Z
;22Z [
if33 
(33  
previousFeatureState33 $
.33$ %
EnableState33% 0
!=331 3
featureState334 @
.33@ A
EnableState33A L
)33L M
{44 
if55 
(55 
_logger55 
.55 
	IsEnabled55 %
(55% &
LogLevel55& .
.55. /
Warning55/ 6
)556 7
)557 8
{66 
_logger77 
.77 

LogWarning77 &
(77& '
$str	77' К
,
77К Л
featureState88 +
.88+ ,
Id88, .
,88. / 
previousFeatureState880 D
.88D E
EnableState88E P
,88P Q
featureState88R ^
.88^ _
EnableState88_ j
)88j k
;88k l
}99 
}::  
previousFeatureState<<  
.<<  !
EnableState<<! ,
=<<- .
value<</ 4
;<<4 5
featureState== 
.== 
EnableState== $
===% &
value==' ,
;==, -
UpdateShellState?? 
(?? 
)?? 
;?? 
}@@ 	
publicBB 
asyncBB 
TaskBB %
UpdateInstalledStateAsyncBB 3
(BB3 4
ShellFeatureStateBB4 E
featureStateBBF R
,BBR S
ShellFeatureStateBBT e
.BBe f
StateBBf k
valueBBl q
)BBq r
{CC 	
ifDD 
(DD 
_loggerDD 
.DD 
	IsEnabledDD !
(DD! "
LogLevelDD" *
.DD* +
DebugDD+ 0
)DD0 1
)DD1 2
{EE 
_loggerFF 
.FF 
LogDebugFF  
(FF  !
$strFF! y
,FFy z
featureState	FF{ З
.
FFЗ И
Id
FFИ К
,
FFК Л
featureState
FFМ Ш
.
FFШ Щ
InstallState
FFЩ е
,
FFе ж
value
FFз м
)
FFм н
;
FFн о
}GG 
varII  
previousFeatureStateII $
=II% &
awaitII' ,(
GetOrCreateFeatureStateAsyncII- I
(III J
featureStateIIJ V
.IIV W
IdIIW Y
)IIY Z
;IIZ [
ifJJ 
(JJ  
previousFeatureStateJJ $
.JJ$ %
InstallStateJJ% 1
!=JJ2 4
featureStateJJ5 A
.JJA B
InstallStateJJB N
)JJN O
{KK 
ifLL 
(LL 
_loggerLL 
.LL 
	IsEnabledLL %
(LL% &
LogLevelLL& .
.LL. /
WarningLL/ 6
)LL6 7
)LL7 8
{MM 
_loggerNN 
.NN 

LogWarningNN &
(NN& '
$str	NN' Л
,
NNЛ М
featureStateOO +
.OO+ ,
IdOO, .
,OO. / 
previousFeatureStateOO0 D
.OOD E
InstallStateOOE Q
,OOQ R
featureStateOOS _
.OO_ `
InstallStateOO` l
)OOl m
;OOm n
}PP 
}QQ  
previousFeatureStateSS  
.SS  !
InstallStateSS! -
=SS. /
valueSS0 5
;SS5 6
featureStateTT 
.TT 
InstallStateTT %
=TT& '
valueTT( -
;TT- .
UpdateShellStateVV 
(VV 
)VV 
;VV 
}WW 	
privateYY 
asyncYY 
TaskYY 
<YY 
ShellFeatureStateYY ,
>YY, -(
GetOrCreateFeatureStateAsyncYY. J
(YYJ K
stringYYK Q
idYYR T
)YYT U
{ZZ 	
var[[ 

shellState[[ 
=[[ 
await[[ "
GetShellStateAsync[[# 5
([[5 6
)[[6 7
;[[7 8
var\\ 
featureState\\ 
=\\ 

shellState\\ )
.\\) *
Features\\* 2
.\\2 3
FirstOrDefault\\3 A
(\\A B
x\\B C
=>\\D F
x\\G H
.\\H I
Id\\I K
==\\L N
id\\O Q
)\\Q R
;\\R S
if^^ 
(^^ 
featureState^^ 
==^^ 
null^^  $
)^^$ %
{__ 
featureState`` 
=`` 
new`` "
ShellFeatureState``# 4
(``4 5
)``5 6
{``7 8
Id``9 ;
=``< =
id``> @
}``A B
;``B C
_shellStateaa 
.aa 
Featuresaa $
.aa$ %
Addaa% (
(aa( )
featureStateaa) 5
)aa5 6
;aa6 7
}bb 
returndd 
featureStatedd 
;dd  
}ee 	
privategg 
voidgg 
UpdateShellStategg %
(gg% &
)gg& '
{hh 	
_sessionii 
.ii 
Saveii 
(ii 
_shellStateii %
)ii% &
;ii& '
}jj 	
}kk 
}ll 