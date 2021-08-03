Ç
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\CacheContextEntryExtensions.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
{ 
public 

static 
class '
CacheContextEntryExtensions 3
{		 
public

 
static

 
string

 
GetContextHash

 +
(

+ ,
this

, 0
IEnumerable

1 <
<

< =
CacheContextEntry

= N
>

N O
entries

P W
)

W X
{ 	
var 
sb 
= 
new 
StringBuilder &
(& '
)' (
;( )
foreach 
( 
var 
entry 
in !
entries" )
.) *
OrderBy* 1
(1 2
x2 3
=>4 6
x7 8
.8 9
Key9 <
)< =
.= >
ThenBy> D
(D E
xE F
=>G I
xJ K
.K L
ValueL Q
)Q R
)R S
{ 
var 
part 
= 
entry  
.  !
Key! $
+% &
entry' ,
., -
Value- 2
;2 3
sb 
. 
Append 
( 
part 
) 
;  
} 
return 
sb 
. 
ToString 
( 
)  
;  !
} 	
} 
} Ê
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\CachedShapeWrapperShapes.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
{ 
public		 

class		 $
CachedShapeWrapperShapes		 )
:		* +#
IShapeAttributeProvider		, C
{

 
[ 	
Shape	 
] 
public 
IHtmlContent 
CachedShapeWrapper .
(. /
IShape/ 5
Shape6 ;
); <
{ 	
var 
contentBuilder 
=  
new! $
HtmlContentBuilder% 7
(7 8
)8 9
;9 :
var 
metadata 
= 
Shape  
.  !
Metadata! )
;) *
var 
cache 
= 
metadata  
.  !
Cache! &
(& '
)' (
;( )
contentBuilder 
. 

AppendLine %
(% &
)& '
;' (
contentBuilder 
. 
AppendHtmlLine )
() *
$"* ,
<!-- CACHED SHAPE: , ?
{? @
cache@ E
.E F
CacheIdF M
}M N
 (N P
{P Q
GuidQ U
.U V
NewGuidV ]
(] ^
)^ _
}_ `
)` a
"a b
)b c
;c d
contentBuilder 
. 
AppendHtmlLine )
() *
$"* ,
          VARY BY: , ?
{? @
String@ F
.F G
JoinG K
(K L
$strL P
,P Q
cacheR W
.W X
ContextsX `
)` a
}a b
"b c
)c d
;d e
contentBuilder 
. 
AppendHtmlLine )
() *
$"* ,
     DEPENDENCIES: , ?
{? @
String@ F
.F G
JoinG K
(K L
$strL P
,P Q
cacheR W
.W X
TagsX \
)\ ]
}] ^
"^ _
)_ `
;` a
contentBuilder 
. 
AppendHtmlLine )
() *
$"* ,
       EXPIRES ON: , ?
{? @
cache@ E
.E F
	ExpiresOnF O
}O P
"P Q
)Q R
;R S
contentBuilder 
. 
AppendHtmlLine )
() *
$"* ,
    EXPIRES AFTER: , ?
{? @
cache@ E
.E F
ExpiresAfterF R
}R S
"S T
)T U
;U V
contentBuilder 
. 
AppendHtmlLine )
() *
$"* ,
  EXPIRES SLIDING: , ?
{? @
cache@ E
.E F
ExpiresSlidingF T
}T U
"U V
)V W
;W X
contentBuilder 
. 
AppendHtmlLine )
() *
$str* /
)/ 0
;0 1
contentBuilder 
. 

AppendHtml %
(% &
metadata& .
.. /
ChildContent/ ;
); <
;< =
contentBuilder 
. 

AppendLine %
(% &
)& '
;' (
contentBuilder   
.   
AppendHtmlLine   )
(  ) *
$"  * ,#
<!-- END CACHED SHAPE:   , C
{  C D
cache  D I
.  I J
CacheId  J Q
}  Q R
 -->  R V
"  V W
)  W X
;  X Y
return"" 
contentBuilder"" !
;""! "
}## 	
}$$ 
}%% ˜
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\CacheOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
{ 
public 

class %
CacheOptionsConfiguration *
:+ ,
IConfigureOptions- >
<> ?
CacheOptions? K
>K L
{		 
private

 
readonly

 
ISiteService

 %
_siteService

& 2
;

2 3
private 
readonly 
IHostEnvironment )
_env* .
;. /
public %
CacheOptionsConfiguration (
(( )
ISiteService) 5
siteService6 A
,A B
IHostEnvironmentC S
envT W
)W X
{ 	
_siteService 
= 
siteService &
;& '
_env 
= 
env 
; 
} 	
public 
void 
	Configure 
( 
CacheOptions *
options+ 2
)2 3
{ 	
var 
settings 
= 
_siteService '
.' ( 
GetSiteSettingsAsync( <
(< =
)= >
.> ?

GetAwaiter? I
(I J
)J K
.K L
	GetResultL U
(U V
)V W
;W X
switch 
( 
settings 
. 
	CacheMode &
)& '
{ 
case 
	CacheMode 
. 
Enabled &
:& '
options 
. 
Enabled #
=$ %
true& *
;* +
break 
; 
case 
	CacheMode 
. 
DebugEnabled +
:+ ,
options 
. 
Enabled #
=$ %
true& *
;* +
options 
. 
	DebugMode %
=& '
true( ,
;, -
break   
;   
case"" 
	CacheMode"" 
."" 
Disabled"" '
:""' (
options## 
.## 
Enabled## #
=##$ %
false##& +
;##+ ,
break$$ 
;$$ 
case&& 
	CacheMode&& 
.&& 
FromConfiguration&& 0
:&&0 1
options'' 
.'' 
Enabled'' #
=''$ %
_env''& *
.''* +
IsProduction''+ 7
(''7 8
)''8 9
;''9 :
break(( 
;(( 
})) 
}** 	
}++ 
},, ⁄?
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\EventHandlers\DynamicCacheShapeDisplayEvents.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
EventHandlers# 0
{ 
public 

class *
DynamicCacheShapeDisplayEvents /
:0 1
IShapeDisplayEvents2 E
{ 
private 
readonly 

Dictionary #
<# $
string$ *
,* +
CacheContext, 8
>8 9
_cached: A
=B C
newD G

DictionaryH R
<R S
stringS Y
,Y Z
CacheContext[ g
>g h
(h i
)i j
;j k
private 
readonly 

Dictionary #
<# $
string$ *
,* +
CacheContext, 8
>8 9
_openScopes: E
=F G
newH K

DictionaryL V
<V W
stringW ]
,] ^
CacheContext_ k
>k l
(l m
)m n
;n o
private 
readonly  
IDynamicCacheService - 
_dynamicCacheService. B
;B C
private 
readonly 
ICacheScopeManager +
_cacheScopeManager, >
;> ?
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
private 
readonly 
CacheOptions %
_cacheOptions& 3
;3 4
public *
DynamicCacheShapeDisplayEvents -
(- . 
IDynamicCacheService  
dynamicCacheService! 4
,4 5
ICacheScopeManager 
cacheScopeManager 0
,0 1
HtmlEncoder 
htmlEncoder #
,# $
IOptions 
< 
CacheOptions !
>! "
options# *
)* +
{   	 
_dynamicCacheService!!  
=!!! "
dynamicCacheService!!# 6
;!!6 7
_cacheScopeManager"" 
=""  
cacheScopeManager""! 2
;""2 3
_htmlEncoder## 
=## 
htmlEncoder## &
;##& '
_cacheOptions$$ 
=$$ 
options$$ #
.$$# $
Value$$$ )
;$$) *
}%% 	
public'' 
async'' 
Task'' 
DisplayingAsync'' )
('') *
ShapeDisplayContext''* =
context''> E
)''E F
{(( 	
if** 
(** 
context** 
.** 
Shape** 
.** 
Metadata** &
.**& '
IsCached**' /
&&**0 2
context**3 :
.**: ;
ChildContent**; G
==**H J
null**K O
)**O P
{++ 
var,, 
cacheContext,,  
=,,! "
context,,# *
.,,* +
Shape,,+ 0
.,,0 1
Metadata,,1 9
.,,9 :
Cache,,: ?
(,,? @
),,@ A
;,,A B
_cacheScopeManager-- "
.--" #

EnterScope--# -
(--- .
cacheContext--. :
)--: ;
;--; <
_openScopes.. 
[.. 
cacheContext.. (
...( )
CacheId..) 0
]..0 1
=..2 3
cacheContext..4 @
;..@ A
var00 
cachedContent00 !
=00" #
await00$ ) 
_dynamicCacheService00* >
.00> ?
GetCachedValueAsync00? R
(00R S
cacheContext00S _
)00_ `
;00` a
if22 
(22 
cachedContent22 !
!=22" $
null22% )
)22) *
{33 
_cached66 
[66 
cacheContext66 (
.66( )
CacheId66) 0
]660 1
=662 3
cacheContext664 @
;66@ A
context77 
.77 
ChildContent77 (
=77) *
new77+ .

HtmlString77/ 9
(779 :
cachedContent77: G
)77G H
;77H I
}88 
else99 
if99 
(99 
_cacheOptions99 &
.99& '
	DebugMode99' 0
)990 1
{:: 
context;; 
.;; 
Shape;; !
.;;! "
Metadata;;" *
.;;* +
Wrappers;;+ 3
.;;3 4
Add;;4 7
(;;7 8
$str;;8 L
);;L M
;;;M N
}<< 
}== 
}>> 	
public@@ 
async@@ 
Task@@ 
DisplayedAsync@@ (
(@@( )
ShapeDisplayContext@@) <
context@@= D
)@@D E
{AA 	
varBB 
cacheContextBB 
=BB 
contextBB &
.BB& '
ShapeBB' ,
.BB, -
MetadataBB- 5
.BB5 6
CacheBB6 ;
(BB; <
)BB< =
;BB= >
ifEE 
(EE 
cacheContextEE 
==EE 
nullEE  $
)EE$ %
{FF 
ifGG 
(GG 
contextGG 
.GG 
ChildContentGG (
==GG) +
nullGG, 0
)GG0 1
{HH 
contextII 
.II 
ChildContentII (
=II) *

HtmlStringII+ 5
.II5 6
EmptyII6 ;
;II; <
}JJ 
returnLL 
;LL 
}MM 
ifVV 
(VV 
!VV 
_cachedVV 
.VV 
ContainsKeyVV $
(VV$ %
cacheContextVV% 1
.VV1 2
CacheIdVV2 9
)VV9 :
&&VV; =
contextVV> E
.VVE F
ChildContentVVF R
!=VVS U
nullVVV Z
)VVZ [
{WW 
usingYY 
(YY 
varYY 
sbYY 
=YY 
StringBuilderPoolYY  1
.YY1 2
GetInstanceYY2 =
(YY= >
)YY> ?
)YY? @
{ZZ 
using[[ 
([[ 
var[[ 
sw[[ !
=[[" #
new[[$ '
StringWriter[[( 4
([[4 5
sb[[5 7
.[[7 8
Builder[[8 ?
)[[? @
)[[@ A
{\\ 
context]] 
.]]  
ChildContent]]  ,
.]], -
WriteTo]]- 4
(]]4 5
sw]]5 7
,]]7 8
_htmlEncoder]]9 E
)]]E F
;]]F G
await^^  
_dynamicCacheService^^ 2
.^^2 3
SetCachedValueAsync^^3 F
(^^F G
cacheContext^^G S
,^^S T
sw^^U W
.^^W X
ToString^^X `
(^^` a
)^^a b
)^^b c
;^^c d
await__ 
sw__  
.__  !

FlushAsync__! +
(__+ ,
)__, -
;__- .
}`` 
}aa 
}bb 
}cc 	
publicee 
Taskee $
DisplayingFinalizedAsyncee ,
(ee, -
ShapeDisplayContextee- @
contexteeA H
)eeH I
{ff 	
vargg 
cacheContextgg 
=gg 
contextgg &
.gg& '
Shapegg' ,
.gg, -
Metadatagg- 5
.gg5 6
Cachegg6 ;
(gg; <
)gg< =
;gg= >
ifii 
(ii 
cacheContextii 
!=ii 
nullii  $
&&ii% '
_openScopesii( 3
.ii3 4
ContainsKeyii4 ?
(ii? @
cacheContextii@ L
.iiL M
CacheIdiiM T
)iiT U
)iiU V
{jj 
_cacheScopeManagerkk "
.kk" #
	ExitScopekk# ,
(kk, -
)kk- .
;kk. /
_openScopesll 
.ll 
Removell "
(ll" #
cacheContextll# /
.ll/ 0
CacheIdll0 7
)ll7 8
;ll8 9
}mm 
returnoo 
Taskoo 
.oo 
CompletedTaskoo %
;oo% &
}pp 	
}qq 
}rr π
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str Y
,Y Z
Category		 
=		 
$str		 
)

 
]

 § 
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\Models\CacheContextModel.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Models# )
{ 
public 

class 
CacheContextModel "
{ 
public 
string 
CacheId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
ICollection 
< 
string !
>! "
Contexts# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
IEnumerable 
< 
string !
>! "
Tags# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
DateTimeOffset 
? 
	ExpiresOn (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
TimeSpan 
? 
ExpiresAfter %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
TimeSpan 
? 
ExpiresSliding '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
internal 
static 
CacheContextModel )
FromCacheContext* :
(: ;
CacheContext; G
cacheContextH T
)T U
{ 	
return 
new 
CacheContextModel (
{ 
CacheId 
= 
cacheContext &
.& '
CacheId' .
,. /
Contexts 
= 
cacheContext '
.' (
Contexts( 0
,0 1
Tags 
= 
cacheContext #
.# $
Tags$ (
,( )
	ExpiresOn 
= 
cacheContext (
.( )
	ExpiresOn) 2
,2 3
ExpiresAfter 
= 
cacheContext +
.+ ,
ExpiresAfter, 8
,8 9
ExpiresSliding 
=  
cacheContext! -
.- .
ExpiresSliding. <
} 
; 
} 	
internal!! 
CacheContext!! 
ToCacheContext!! ,
(!!, -
)!!- .
{"" 	
var## 
cacheContext## 
=## 
new## "
CacheContext### /
(##/ 0
CacheId##0 7
)##7 8
.$$ 

AddContext$$ 
($$ 
Contexts$$ $
.$$$ %
ToArray$$% ,
($$, -
)$$- .
)$$. /
.%% 
AddTag%% 
(%% 
Tags%% 
.%% 
ToArray%% $
(%%$ %
)%%% &
)%%& '
;%%' (
if'' 
('' 
	ExpiresOn'' 
.'' 
HasValue'' "
)''" #
{(( 
cacheContext)) 
.)) 
WithExpiryOn)) )
())) *
	ExpiresOn))* 3
.))3 4
Value))4 9
)))9 :
;)): ;
}** 
if,, 
(,, 
ExpiresAfter,, 
.,, 
HasValue,, %
),,% &
{-- 
cacheContext.. 
... 
WithExpiryAfter.. ,
(.., -
ExpiresAfter..- 9
...9 :
Value..: ?
)..? @
;..@ A
}// 
if11 
(11 
ExpiresSliding11 
.11 
HasValue11 '
)11' (
{22 
cacheContext33 
.33 
WithExpirySliding33 .
(33. /
ExpiresSliding33/ =
.33= >
Value33> C
)33C D
;33D E
}44 
return66 
cacheContext66 
;66  
}77 	
}88 
}99 ï
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\Services\DefaultDynamicCache.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Services# +
{ 
public 

class 
DefaultDynamicCache $
:% &
IDynamicCache' 4
{ 
private 
readonly 
IDistributedCache *
_distributedCache+ <
;< =
public

 
DefaultDynamicCache

 "
(

" #
IDistributedCache

# 4
distributedCache

5 E
)

E F
{ 	
_distributedCache 
= 
distributedCache  0
;0 1
} 	
public 
Task 
< 
byte 
[ 
] 
> 
GetAsync $
($ %
string% +
key, /
)/ 0
{ 	
return 
_distributedCache $
.$ %
GetAsync% -
(- .
key. 1
)1 2
;2 3
} 	
public 
Task 
RemoveAsync 
(  
string  &
key' *
)* +
{ 	
return 
_distributedCache $
.$ %
RemoveAsync% 0
(0 1
key1 4
)4 5
;5 6
} 	
public 
Task 
SetAsync 
( 
string #
key$ '
,' (
byte) -
[- .
]. /
value0 5
,5 6(
DistributedCacheEntryOptions7 S
optionsT [
)[ \
{ 	
return 
_distributedCache $
.$ %
SetAsync% -
(- .
key. 1
,1 2
value3 8
,8 9
options: A
)A B
;B C
} 	
} 
} Ù]
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\Services\DefaultDynamicCacheService.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #
Services# +
{ 
public 

class &
DefaultDynamicCacheService +
:, - 
IDynamicCacheService. B
{ 
private 
readonly  
ICacheContextManager - 
_cacheContextManager. B
;B C
private 
readonly 
IDynamicCache &
_dynamicCache' 4
;4 5
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
CacheOptions %
_cacheOptions& 3
;3 4
private 
readonly 

Dictionary #
<# $
string$ *
,* +
string, 2
>2 3
_localCache4 ?
=@ A
newB E

DictionaryF P
<P Q
stringQ W
,W X
stringY _
>_ `
(` a
)a b
;b c
public &
DefaultDynamicCacheService )
() * 
ICacheContextManager  
cacheContextManager! 4
,4 5
IDynamicCache 
dynamicCache &
,& '
IServiceProvider 
serviceProvider ,
,, -
IOptions 
< 
CacheOptions !
>! "
options# *
)* +
{ 	 
_cacheContextManager  
=! "
cacheContextManager# 6
;6 7
_dynamicCache 
= 
dynamicCache (
;( )
_serviceProvider   
=   
serviceProvider   .
;  . /
_cacheOptions!! 
=!! 
options!! #
.!!# $
Value!!$ )
;!!) *
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
string$$  
>$$  !
GetCachedValueAsync$$" 5
($$5 6
CacheContext$$6 B
context$$C J
)$$J K
{%% 	
if&& 
(&& 
!&& 
_cacheOptions&& 
.&& 
Enabled&& &
)&&& '
{'' 
return(( 
null(( 
;(( 
})) 
var++ 
cacheKey++ 
=++ 
await++  
GetCacheKey++! ,
(++, -
context++- 4
)++4 5
;++5 6
context-- 
=-- 
await-- !
GetCachedContextAsync-- 1
(--1 2
cacheKey--2 :
)--: ;
;--; <
if.. 
(.. 
context.. 
==.. 
null.. 
)..  
{// 
return11 
null11 
;11 
}22 
var44 
content44 
=44 
await44  
GetCachedStringAsync44  4
(444 5
cacheKey445 =
)44= >
;44> ?
return66 
content66 
;66 
}77 	
public99 
async99 
Task99 
SetCachedValueAsync99 -
(99- .
CacheContext99. :
context99; B
,99B C
string99D J
value99K P
)99P Q
{:: 	
if;; 
(;; 
!;; 
_cacheOptions;; 
.;; 
Enabled;; &
);;& '
{<< 
return== 
;== 
}>> 
var@@ 
cacheKey@@ 
=@@ 
await@@  
GetCacheKey@@! ,
(@@, -
context@@- 4
)@@4 5
;@@5 6
_localCacheBB 
[BB 
cacheKeyBB  
]BB  !
=BB" #
valueBB$ )
;BB) *
varCC 
esiCC 
=CC 
JsonConvertCC !
.CC! "
SerializeObjectCC" 1
(CC1 2
CacheContextModelCC2 C
.CCC D
FromCacheContextCCD T
(CCT U
contextCCU \
)CC\ ]
)CC] ^
;CC^ _
awaitEE 
TaskEE 
.EE 
WhenAllEE 
(EE 
SetCachedValueAsyncFF #
(FF# $
cacheKeyFF$ ,
,FF, -
valueFF. 3
,FF3 4
contextFF5 <
)FF< =
,FF= >
SetCachedValueAsyncGG #
(GG# $#
GetCacheContextCacheKeyGG$ ;
(GG; <
cacheKeyGG< D
)GGD E
,GGE F
esiGGG J
,GGJ K
contextGGL S
)GGS T
)HH 
;HH 
}II 	
publicKK 
TaskKK 
TagRemovedAsyncKK #
(KK# $
stringKK$ *
tagKK+ .
,KK. /
IEnumerableKK0 ;
<KK; <
stringKK< B
>KKB C
keysKKD H
)KKH I
{LL 	
returnMM 
TaskMM 
.MM 
WhenAllMM 
(MM  
keysMM  $
.MM$ %
SelectMM% +
(MM+ ,
keyMM, /
=>MM0 2
_dynamicCacheMM3 @
.MM@ A
RemoveAsyncMMA L
(MML M
keyMMM P
)MMP Q
)MMQ R
)MMR S
;MMS T
}NN 	
privatePP 
asyncPP 
TaskPP 
SetCachedValueAsyncPP .
(PP. /
stringPP/ 5
cacheKeyPP6 >
,PP> ?
stringPP@ F
valuePPG L
,PPL M
CacheContextPPN Z
contextPP[ b
)PPb c
{QQ 	
varRR 
bytesRR 
=RR 
EncodingRR  
.RR  !
UTF8RR! %
.RR% &
GetBytesRR& .
(RR. /
valueRR/ 4
)RR4 5
;RR5 6
varTT 
optionsTT 
=TT 
newTT (
DistributedCacheEntryOptionsTT :
{UU 
AbsoluteExpirationVV "
=VV# $
contextVV% ,
.VV, -
	ExpiresOnVV- 6
,VV6 7
SlidingExpirationWW !
=WW" #
contextWW$ +
.WW+ ,
ExpiresSlidingWW, :
,WW: ;+
AbsoluteExpirationRelativeToNowXX /
=XX0 1
contextXX2 9
.XX9 :
ExpiresAfterXX: F
}YY 
;YY 
if\\ 
(\\ 
!\\ 
options\\ 
.\\ 
AbsoluteExpiration\\ +
.\\+ ,
HasValue\\, 4
&&\\5 7
!\\8 9
options\\9 @
.\\@ A
SlidingExpiration\\A R
.\\R S
HasValue\\S [
&&\\\ ^
!\\_ `
options\\` g
.\\g h,
AbsoluteExpirationRelativeToNow	\\h á
.
\\á à
HasValue
\\à ê
)
\\ê ë
{]] 
options^^ 
.^^ 
SlidingExpiration^^ )
=^^* +
new^^, /
TimeSpan^^0 8
(^^8 9
$num^^9 :
,^^: ;
$num^^< =
,^^= >
$num^^? @
)^^@ A
;^^A B
}__ 
awaitaa 
_dynamicCacheaa 
.aa  
SetAsyncaa  (
(aa( )
cacheKeyaa) 1
,aa1 2
bytesaa3 8
,aa8 9
optionsaa: A
)aaA B
;aaB C
vardd 
tagCachedd 
=dd 
_serviceProviderdd +
.dd+ ,
GetRequiredServicedd, >
<dd> ?
	ITagCachedd? H
>ddH I
(ddI J
)ddJ K
;ddK L
awaitee 
tagCacheee 
.ee 
TagAsyncee #
(ee# $
cacheKeyee$ ,
,ee, -
contextee. 5
.ee5 6
Tagsee6 :
.ee: ;
ToArrayee; B
(eeB C
)eeC D
)eeD E
;eeE F
}ff 	
privatehh 
asynchh 
Taskhh 
<hh 
stringhh !
>hh! "
GetCacheKeyhh# .
(hh. /
CacheContexthh/ ;
contexthh< C
)hhC D
{ii 	
varjj 
cacheEntriesjj 
=jj 
contextjj &
.jj& '
Contextsjj' /
.jj/ 0
Countjj0 5
>jj6 7
$numjj8 9
?kk 
awaitkk  
_cacheContextManagerkk ,
.kk, -"
GetDiscriminatorsAsynckk- C
(kkC D
contextkkD K
.kkK L
ContextskkL T
)kkT U
:ll 

Enumerablell 
.ll 
Emptyll "
<ll" #
CacheContextEntryll# 4
>ll4 5
(ll5 6
)ll6 7
;ll7 8
ifnn 
(nn 
!nn 
cacheEntriesnn 
.nn 
Anynn !
(nn! "
)nn" #
)nn# $
{oo 
returnpp 
contextpp 
.pp 
CacheIdpp &
;pp& '
}qq 
varss 
keyss 
=ss 
contextss 
.ss 
CacheIdss %
+ss& '
$strss( +
+ss, -
cacheEntriesss. :
.ss: ;
GetContextHashss; I
(ssI J
)ssJ K
;ssK L
returntt 
keytt 
;tt 
}uu 	
privateww 
stringww #
GetCacheContextCacheKeyww .
(ww. /
stringww/ 5
cacheKeyww6 >
)ww> ?
{xx 	
returnyy 
$stryy "
+yy# $
cacheKeyyy% -
;yy- .
}zz 	
private|| 
async|| 
Task|| 
<|| 
string|| !
>||! " 
GetCachedStringAsync||# 7
(||7 8
string||8 >
cacheKey||? G
)||G H
{}} 	
if~~ 
(~~ 
_localCache~~ 
.~~ 
TryGetValue~~ '
(~~' (
cacheKey~~( 0
,~~0 1
out~~2 5
var~~6 9
content~~: A
)~~A B
)~~B C
{ 
return
ÄÄ 
content
ÄÄ 
;
ÄÄ 
}
ÅÅ 
var
ÉÉ 
bytes
ÉÉ 
=
ÉÉ 
await
ÉÉ 
_dynamicCache
ÉÉ +
.
ÉÉ+ ,
GetAsync
ÉÉ, 4
(
ÉÉ4 5
cacheKey
ÉÉ5 =
)
ÉÉ= >
;
ÉÉ> ?
if
ÑÑ 
(
ÑÑ 
bytes
ÑÑ 
==
ÑÑ 
null
ÑÑ 
)
ÑÑ 
{
ÖÖ 
return
ÜÜ 
null
ÜÜ 
;
ÜÜ 
}
áá 
return
ââ 
Encoding
ââ 
.
ââ 
UTF8
ââ  
.
ââ  !
	GetString
ââ! *
(
ââ* +
bytes
ââ+ 0
)
ââ0 1
;
ââ1 2
}
ää 	
private
åå 
async
åå 
Task
åå 
<
åå 
CacheContext
åå '
>
åå' (#
GetCachedContextAsync
åå) >
(
åå> ?
string
åå? E
cacheKey
ååF N
)
ååN O
{
çç 	
var
éé 
cachedValue
éé 
=
éé 
await
éé #"
GetCachedStringAsync
éé$ 8
(
éé8 9%
GetCacheContextCacheKey
éé9 P
(
ééP Q
cacheKey
ééQ Y
)
ééY Z
)
ééZ [
;
éé[ \
if
êê 
(
êê 
cachedValue
êê 
==
êê 
null
êê #
)
êê# $
{
ëë 
return
íí 
null
íí 
;
íí 
}
ìì 
var
ïï 
esiModel
ïï 
=
ïï 
JsonConvert
ïï &
.
ïï& '
DeserializeObject
ïï' 8
<
ïï8 9
CacheContextModel
ïï9 J
>
ïïJ K
(
ïïK L
cachedValue
ïïL W
)
ïïW X
;
ïïX Y
return
ññ 
esiModel
ññ 
.
ññ 
ToCacheContext
ññ *
(
ññ* +
)
ññ+ ,
;
ññ, -
}
óó 	
}
òò 
}ôô ß
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\Startup.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
<  
IDynamicCacheService 3
,3 4&
DefaultDynamicCacheService5 O
>O P
(P Q
)Q R
;R S
services 
. 
	AddScoped 
< #
ITagRemovedEventHandler 6
>6 7
(7 8
sp8 :
=>; =
sp> @
.@ A
GetRequiredServiceA S
<S T 
IDynamicCacheServiceT h
>h i
(i j
)j k
)k l
;l m
services 
. 
	AddScoped 
< 
IShapeDisplayEvents 2
,2 3*
DynamicCacheShapeDisplayEvents4 R
>R S
(S T
)T U
;U V
services 
. 
AddShapeAttributes '
<' ($
CachedShapeWrapperShapes( @
>@ A
(A B
)B C
;C D
services 
. 
AddSingleton !
<! "
IDynamicCache" /
,/ 0
DefaultDynamicCache1 D
>D E
(E F
)F G
;G H
services 
. 
AddSingleton !
<! "(
DynamicCacheTagHelperService" >
>> ?
(? @
)@ A
;A B
services 
. 
AddTagHelpers "
<" #!
DynamicCacheTagHelper# 8
>8 9
(9 :
): ;
;; <
services 
. 
AddTagHelpers "
<" #$
CacheDependencyTagHelper# ;
>; <
(< =
)= >
;> ?
services 
. 
AddTransient !
<! "
IConfigureOptions" 3
<3 4
CacheOptions4 @
>@ A
,A B%
CacheOptionsConfigurationC \
>\ ]
(] ^
)^ _
;_ `
} 	
}   
}!! î
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\TagHelpers\CacheDependencyTagHelper.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #

TagHelpers# -
{ 
[ 
HtmlTargetElement 
( 
$str )
,) *

Attributes+ 5
=6 7#
DependencyAttributeName8 O
)O P
]P Q
public 

class $
CacheDependencyTagHelper )
:* +
	TagHelper, 5
{		 
private

 
const

 
string

 #
DependencyAttributeName

 4
=

5 6
$str

7 C
;

C D
[ 	
HtmlAttributeName	 
( #
DependencyAttributeName 2
)2 3
]3 4
public 
string 

Dependency  
{! "
get# &
;& '
set( +
;+ ,
}- .
private 
readonly 
ICacheScopeManager +
_cacheScopeManager, >
;> ?
public $
CacheDependencyTagHelper '
(' (
ICacheScopeManager 
cacheScopeManager 0
)0 1
{ 	
_cacheScopeManager 
=  
cacheScopeManager! 2
;2 3
} 	
public 
override 
void 
Process $
($ %
TagHelperContext% 5
context6 =
,= >
TagHelperOutput? N
outputO U
)U V
{ 	
if 
( 
context 
== 
null 
)  
{   
throw!! 
new!! !
ArgumentNullException!! /
(!!/ 0
nameof!!0 6
(!!6 7
context!!7 >
)!!> ?
)!!? @
;!!@ A
}"" 
if$$ 
($$ 
output$$ 
==$$ 
null$$ 
)$$ 
{%% 
throw&& 
new&& !
ArgumentNullException&& /
(&&/ 0
nameof&&0 6
(&&6 7
output&&7 =
)&&= >
)&&> ?
;&&? @
}'' 
if)) 
()) 
!)) 
String)) 
.)) 
IsNullOrEmpty)) %
())% &

Dependency))& 0
)))0 1
)))1 2
{** 
_cacheScopeManager++ "
.++" #
AddDependencies++# 2
(++2 3

Dependency++3 =
)++= >
;++> ?
},, 
output// 
.// 
SuppressOutput// !
(//! "
)//" #
;//# $
}00 	
}11 
}22 ïô
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\TagHelpers\DynamicCacheTagHelper.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #

TagHelpers# -
{ 
[ 
HtmlTargetElement 
( 
$str &
,& '

Attributes( 2
=3 4 
CacheIdAttributeName5 I
)I J
]J K
public 

class !
DynamicCacheTagHelper &
:' (
	TagHelper) 2
{ 
private 
const 
string  
CacheIdAttributeName 1
=2 3
$str4 >
;> ?
private 
const 
string 
VaryByAttributeName 0
=1 2
$str3 <
;< =
private 
const 
string %
DependenciesAttributeNAme 6
=7 8
$str9 G
;G H
private 
const 
string "
ExpiresOnAttributeName 3
=4 5
$str6 B
;B C
private 
const 
string %
ExpiresAfterAttributeName 6
=7 8
$str9 H
;H I
private 
const 
string '
ExpiresSlidingAttributeName 8
=9 :
$str; L
;L M
private 
const 
string  
EnabledAttributeName 1
=2 3
$str4 =
;= >
private 
static 
readonly 
char  $
[$ %
]% &

SplitChars' 1
=2 3
new4 7
[7 8
]8 9
{: ;
$char< ?
,? @
$charA D
}E F
;F G
public   
static   
readonly   
TimeSpan   '
DefaultExpiration  ( 9
=  : ;
TimeSpan  < D
.  D E
FromSeconds  E P
(  P Q
$num  Q S
)  S T
;  T U
	protected%% 
HtmlEncoder%% 
HtmlEncoder%% )
{%%* +
get%%, /
;%%/ 0
}%%1 2
[** 	
HtmlAttributeName**	 
(**  
CacheIdAttributeName** /
)**/ 0
]**0 1
public++ 
string++ 
CacheId++ 
{++ 
get++  #
;++# $
set++% (
;++( )
}++* +
[00 	
HtmlAttributeName00	 
(00 
VaryByAttributeName00 .
)00. /
]00/ 0
public11 
string11 
VaryBy11 
{11 
get11 "
;11" #
set11$ '
;11' (
}11) *
[66 	
HtmlAttributeName66	 
(66 %
DependenciesAttributeNAme66 4
)664 5
]665 6
public77 
string77 
Dependencies77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
[<< 	
HtmlAttributeName<<	 
(<< "
ExpiresOnAttributeName<< 1
)<<1 2
]<<2 3
public== 
DateTimeOffset== 
?== 
	ExpiresOn== (
{==) *
get==+ .
;==. /
set==0 3
;==3 4
}==5 6
[BB 	
HtmlAttributeNameBB	 
(BB %
ExpiresAfterAttributeNameBB 4
)BB4 5
]BB5 6
publicCC 
TimeSpanCC 
?CC 
ExpiresAfterCC %
{CC& '
getCC( +
;CC+ ,
setCC- 0
;CC0 1
}CC2 3
[HH 	
HtmlAttributeNameHH	 
(HH '
ExpiresSlidingAttributeNameHH 6
)HH6 7
]HH7 8
publicII 
TimeSpanII 
?II 
ExpiresSlidingII '
{II( )
getII* -
;II- .
setII/ 2
;II2 3
}II4 5
[NN 	
HtmlAttributeNameNN	 
(NN  
EnabledAttributeNameNN /
)NN/ 0
]NN0 1
publicOO 
boolOO 
EnabledOO 
{OO 
getOO !
;OO! "
setOO# &
;OO& '
}OO( )
=OO* +
trueOO, 0
;OO0 1
publicTT 
staticTT 
readonlyTT 
stringTT %
CacheKeyPrefixTT& 4
=TT5 6
nameofTT7 =
(TT= >!
DynamicCacheTagHelperTT> S
)TTS T
;TTT U
privateVV 
readonlyVV  
IDynamicCacheServiceVV - 
_dynamicCacheServiceVV. B
;VVB C
privateWW 
readonlyWW 
ICacheScopeManagerWW +
_cacheScopeManagerWW, >
;WW> ?
privateXX 
readonlyXX (
DynamicCacheTagHelperServiceXX 5)
_dynamicCacheTagHelperServiceXX6 S
;XXS T
privateYY 
readonlyYY 
CacheOptionsYY %
_cacheOptionsYY& 3
;YY3 4
public[[ !
DynamicCacheTagHelper[[ $
([[$ % 
IDynamicCacheService\\  
dynamicCacheService\\! 4
,\\4 5
ICacheScopeManager]] 
cacheScopeManager]] 0
,]]0 1
HtmlEncoder^^ 
htmlEncoder^^ #
,^^# $(
DynamicCacheTagHelperService__ ((
dynamicCacheTagHelperService__) E
,__E F
IOptions`` 
<`` 
CacheOptions`` !
>``! "
cacheOptions``# /
)``/ 0
{aa 	 
_dynamicCacheServicebb  
=bb! "
dynamicCacheServicebb# 6
;bb6 7
_cacheScopeManagercc 
=cc  
cacheScopeManagercc! 2
;cc2 3
HtmlEncoderdd 
=dd 
htmlEncoderdd %
;dd% &)
_dynamicCacheTagHelperServiceee )
=ee* +(
dynamicCacheTagHelperServiceee, H
;eeH I
_cacheOptionsff 
=ff 
cacheOptionsff (
.ff( )
Valueff) .
;ff. /
}gg 	
publicjj 
overridejj 
asyncjj 
Taskjj "
ProcessAsyncjj# /
(jj/ 0
TagHelperContextjj0 @
contextjjA H
,jjH I
TagHelperOutputjjJ Y
outputjjZ `
)jj` a
{kk 	
ifll 
(ll 
contextll 
==ll 
nullll 
)ll  
{mm 
thrownn 
newnn !
ArgumentNullExceptionnn /
(nn/ 0
nameofnn0 6
(nn6 7
contextnn7 >
)nn> ?
)nn? @
;nn@ A
}oo 
ifqq 
(qq 
outputqq 
==qq 
nullqq 
)qq 
{rr 
throwss 
newss !
ArgumentNullExceptionss /
(ss/ 0
nameofss0 6
(ss6 7
outputss7 =
)ss= >
)ss> ?
;ss? @
}tt 
IHtmlContentvv 
contentvv  
;vv  !
ifxx 
(xx 
Enabledxx 
)xx 
{yy 
varzz 
cacheContextzz  
=zz! "
newzz# &
CacheContextzz' 3
(zz3 4
CacheIdzz4 ;
)zz; <
;zz< =
if|| 
(|| 
!|| 
String|| 
.|| 
IsNullOrEmpty|| )
(||) *
VaryBy||* 0
)||0 1
)||1 2
{}} 
cacheContext~~  
.~~  !

AddContext~~! +
(~~+ ,
VaryBy~~, 2
.~~2 3
Split~~3 8
(~~8 9

SplitChars~~9 C
,~~C D
StringSplitOptions~~E W
.~~W X
RemoveEmptyEntries~~X j
)~~j k
)~~k l
;~~l m
} 
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
String
ÅÅ 
.
ÅÅ 
IsNullOrEmpty
ÅÅ )
(
ÅÅ) *
Dependencies
ÅÅ* 6
)
ÅÅ6 7
)
ÅÅ7 8
{
ÇÇ 
cacheContext
ÉÉ  
.
ÉÉ  !
AddTag
ÉÉ! '
(
ÉÉ' (
Dependencies
ÉÉ( 4
.
ÉÉ4 5
Split
ÉÉ5 :
(
ÉÉ: ;

SplitChars
ÉÉ; E
,
ÉÉE F 
StringSplitOptions
ÉÉG Y
.
ÉÉY Z 
RemoveEmptyEntries
ÉÉZ l
)
ÉÉl m
)
ÉÉm n
;
ÉÉn o
}
ÑÑ 
var
ÜÜ !
hasEvictionCriteria
ÜÜ '
=
ÜÜ( )
false
ÜÜ* /
;
ÜÜ/ 0
if
àà 
(
àà 
	ExpiresOn
àà 
.
àà 
HasValue
àà &
)
àà& '
{
ââ !
hasEvictionCriteria
ää '
=
ää( )
true
ää* .
;
ää. /
cacheContext
ãã  
.
ãã  !
WithExpiryOn
ãã! -
(
ãã- .
	ExpiresOn
ãã. 7
.
ãã7 8
Value
ãã8 =
)
ãã= >
;
ãã> ?
}
åå 
if
éé 
(
éé 
ExpiresAfter
éé  
.
éé  !
HasValue
éé! )
)
éé) *
{
èè !
hasEvictionCriteria
êê '
=
êê( )
true
êê* .
;
êê. /
cacheContext
ëë  
.
ëë  !
WithExpiryAfter
ëë! 0
(
ëë0 1
ExpiresAfter
ëë1 =
.
ëë= >
Value
ëë> C
)
ëëC D
;
ëëD E
}
íí 
if
îî 
(
îî 
ExpiresSliding
îî "
.
îî" #
HasValue
îî# +
)
îî+ ,
{
ïï !
hasEvictionCriteria
ññ '
=
ññ( )
true
ññ* .
;
ññ. /
cacheContext
óó  
.
óó  !
WithExpirySliding
óó! 2
(
óó2 3
ExpiresSliding
óó3 A
.
óóA B
Value
óóB G
)
óóG H
;
óóH I
}
òò 
if
öö 
(
öö 
!
öö !
hasEvictionCriteria
öö (
)
öö( )
{
õõ 
cacheContext
úú  
.
úú  !
WithExpirySliding
úú! 2
(
úú2 3
DefaultExpiration
úú3 D
)
úúD E
;
úúE F
}
ùù  
_cacheScopeManager
üü "
.
üü" #

EnterScope
üü# -
(
üü- .
cacheContext
üü. :
)
üü: ;
;
üü; <
try
°° 
{
¢¢ 
content
££ 
=
££ 
await
££ #!
ProcessContentAsync
££$ 7
(
££7 8
output
££8 >
,
££> ?
cacheContext
££@ L
)
££L M
;
££M N
}
§§ 
finally
•• 
{
¶¶  
_cacheScopeManager
ßß &
.
ßß& '
	ExitScope
ßß' 0
(
ßß0 1
)
ßß1 2
;
ßß2 3
}
®® 
}
©© 
else
™™ 
{
´´ 
content
¨¨ 
=
¨¨ 
await
¨¨ 
output
¨¨  &
.
¨¨& '"
GetChildContentAsync
¨¨' ;
(
¨¨; <
)
¨¨< =
;
¨¨= >
}
≠≠ 
output
∞∞ 
.
∞∞ 
SuppressOutput
∞∞ !
(
∞∞! "
)
∞∞" #
;
∞∞# $
output
≤≤ 
.
≤≤ 
Content
≤≤ 
.
≤≤ 
SetHtmlContent
≤≤ )
(
≤≤) *
content
≤≤* 1
)
≤≤1 2
;
≤≤2 3
}
≥≥ 	
public
µµ 
async
µµ 
Task
µµ 
<
µµ 
IHtmlContent
µµ &
>
µµ& '!
ProcessContentAsync
µµ( ;
(
µµ; <
TagHelperOutput
µµ< K
output
µµL R
,
µµR S
CacheContext
µµT `
cacheContext
µµa m
)
µµm n
{
∂∂ 	
IHtmlContent
∑∑ 
content
∑∑  
=
∑∑! "
null
∑∑# '
;
∑∑' (
while
ππ 
(
ππ 
content
ππ 
==
ππ 
null
ππ "
)
ππ" #
{
∫∫ 
Task
ªª 
<
ªª 
IHtmlContent
ªª !
>
ªª! "
result
ªª# )
;
ªª) *
if
ææ 
(
ææ 
!
ææ +
_dynamicCacheTagHelperService
ææ 2
.
ææ2 3
Workers
ææ3 :
.
ææ: ;
TryGetValue
ææ; F
(
ææF G
CacheId
ææG N
,
ææN O
out
ææP S
result
ææT Z
)
ææZ [
)
ææ[ \
{
øø 
var
√√ 
tcs
√√ 
=
√√ 
new
√√ !"
TaskCompletionSource
√√" 6
<
√√6 7
IHtmlContent
√√7 C
>
√√C D
(
√√D E
)
√√E F
;
√√F G+
_dynamicCacheTagHelperService
≈≈ 1
.
≈≈1 2
Workers
≈≈2 9
.
≈≈9 :
TryAdd
≈≈: @
(
≈≈@ A
CacheId
≈≈A H
,
≈≈H I
tcs
≈≈J M
.
≈≈M N
Task
≈≈N R
)
≈≈R S
;
≈≈S T
try
«« 
{
»» 
var
…… 
value
…… !
=
……" #
await
……$ )"
_dynamicCacheService
……* >
.
……> ?!
GetCachedValueAsync
……? R
(
……R S
cacheContext
……S _
)
……_ `
;
……` a
if
ÀÀ 
(
ÀÀ 
value
ÀÀ !
==
ÀÀ" $
null
ÀÀ% )
)
ÀÀ) *
{
ÃÃ 
var
ŒŒ 
processedContent
ŒŒ  0
=
ŒŒ1 2
await
ŒŒ3 8
output
ŒŒ9 ?
.
ŒŒ? @"
GetChildContentAsync
ŒŒ@ T
(
ŒŒT U
)
ŒŒU V
;
ŒŒV W
using
–– !
(
––" #
var
––# &
sb
––' )
=
––* +
StringBuilderPool
––, =
.
––= >
GetInstance
––> I
(
––I J
)
––J K
)
––K L
{
—— 
using
““  %
(
““& '
var
““' *
writer
““+ 1
=
““2 3
new
““4 7
StringWriter
““8 D
(
““D E
sb
““E G
.
““G H
Builder
““H O
)
““O P
)
““P Q
{
””  !
if
’’$ &
(
’’' (
_cacheOptions
’’( 5
.
’’5 6
	DebugMode
’’6 ?
)
’’? @
{
÷÷$ %
writer
ÿÿ( .
.
ÿÿ. /
	WriteLine
ÿÿ/ 8
(
ÿÿ8 9
)
ÿÿ9 :
;
ÿÿ: ;
writer
ŸŸ( .
.
ŸŸ. /
	WriteLine
ŸŸ/ 8
(
ŸŸ8 9
$"
ŸŸ9 ; 
<!-- CACHE BLOCK: 
ŸŸ; M
{
ŸŸM N
cacheContext
ŸŸN Z
.
ŸŸZ [
CacheId
ŸŸ[ b
}
ŸŸb c
 (
ŸŸc e
{
ŸŸe f
Guid
ŸŸf j
.
ŸŸj k
NewGuid
ŸŸk r
(
ŸŸr s
)
ŸŸs t
}
ŸŸt u
)
ŸŸu v
"
ŸŸv w
)
ŸŸw x
;
ŸŸx y
writer
⁄⁄( .
.
⁄⁄. /
	WriteLine
⁄⁄/ 8
(
⁄⁄8 9
$"
⁄⁄9 ; 
         VARY BY: 
⁄⁄; M
{
⁄⁄M N
String
⁄⁄N T
.
⁄⁄T U
Join
⁄⁄U Y
(
⁄⁄Y Z
$str
⁄⁄Z ^
,
⁄⁄^ _
cacheContext
⁄⁄` l
.
⁄⁄l m
Contexts
⁄⁄m u
)
⁄⁄u v
}
⁄⁄v w
"
⁄⁄w x
)
⁄⁄x y
;
⁄⁄y z
writer
€€( .
.
€€. /
	WriteLine
€€/ 8
(
€€8 9
$"
€€9 ; 
    DEPENDENCIES: 
€€; M
{
€€M N
String
€€N T
.
€€T U
Join
€€U Y
(
€€Y Z
$str
€€Z ^
,
€€^ _
cacheContext
€€` l
.
€€l m
Tags
€€m q
)
€€q r
}
€€r s
"
€€s t
)
€€t u
;
€€u v
writer
‹‹( .
.
‹‹. /
	WriteLine
‹‹/ 8
(
‹‹8 9
$"
‹‹9 ; 
      EXPIRES ON: 
‹‹; M
{
‹‹M N
cacheContext
‹‹N Z
.
‹‹Z [
	ExpiresOn
‹‹[ d
}
‹‹d e
"
‹‹e f
)
‹‹f g
;
‹‹g h
writer
››( .
.
››. /
	WriteLine
››/ 8
(
››8 9
$"
››9 ; 
   EXPIRES AFTER: 
››; M
{
››M N
cacheContext
››N Z
.
››Z [
ExpiresAfter
››[ g
}
››g h
"
››h i
)
››i j
;
››j k
writer
ﬁﬁ( .
.
ﬁﬁ. /
	WriteLine
ﬁﬁ/ 8
(
ﬁﬁ8 9
$"
ﬁﬁ9 ; 
 EXPIRES SLIDING: 
ﬁﬁ; M
{
ﬁﬁM N
cacheContext
ﬁﬁN Z
.
ﬁﬁZ [
ExpiresSliding
ﬁﬁ[ i
}
ﬁﬁi j
"
ﬁﬁj k
)
ﬁﬁk l
;
ﬁﬁl m
writer
ﬂﬂ( .
.
ﬂﬂ. /
	WriteLine
ﬂﬂ/ 8
(
ﬂﬂ8 9
$str
ﬂﬂ9 >
)
ﬂﬂ> ?
;
ﬂﬂ? @
}
‡‡$ %
processedContent
„„$ 4
.
„„4 5
WriteTo
„„5 <
(
„„< =
writer
„„= C
,
„„C D
HtmlEncoder
„„E P
)
„„P Q
;
„„Q R
if
ÊÊ$ &
(
ÊÊ' (
_cacheOptions
ÊÊ( 5
.
ÊÊ5 6
	DebugMode
ÊÊ6 ?
)
ÊÊ? @
{
ÁÁ$ %
writer
ËË( .
.
ËË. /
	WriteLine
ËË/ 8
(
ËË8 9
)
ËË9 :
;
ËË: ;
writer
ÈÈ( .
.
ÈÈ. /
	WriteLine
ÈÈ/ 8
(
ÈÈ8 9
$"
ÈÈ9 ;$
<!-- END CACHE BLOCK: 
ÈÈ; Q
{
ÈÈQ R
cacheContext
ÈÈR ^
.
ÈÈ^ _
CacheId
ÈÈ_ f
}
ÈÈf g
 -->
ÈÈg k
"
ÈÈk l
)
ÈÈl m
;
ÈÈm n
}
ÍÍ$ %
await
ÏÏ$ )
writer
ÏÏ* 0
.
ÏÏ0 1

FlushAsync
ÏÏ1 ;
(
ÏÏ; <
)
ÏÏ< =
;
ÏÏ= >
}
ÌÌ  !
var
ÔÔ  #
html
ÔÔ$ (
=
ÔÔ) *
sb
ÔÔ+ -
.
ÔÔ- .
Builder
ÔÔ. 5
.
ÔÔ5 6
ToString
ÔÔ6 >
(
ÔÔ> ?
)
ÔÔ? @
;
ÔÔ@ A
var
ÒÒ  #
formattingContext
ÒÒ$ 5
=
ÒÒ6 7
new
ÒÒ8 ;8
*DistributedCacheTagHelperFormattingContext
ÒÒ< f
{
ÚÚ  !
Html
ÛÛ$ (
=
ÛÛ) *
new
ÛÛ+ .

HtmlString
ÛÛ/ 9
(
ÛÛ9 :
html
ÛÛ: >
)
ÛÛ> ?
}
ÙÙ  !
;
ÙÙ! "
await
ˆˆ  %"
_dynamicCacheService
ˆˆ& :
.
ˆˆ: ;!
SetCachedValueAsync
ˆˆ; N
(
ˆˆN O
cacheContext
ˆˆO [
,
ˆˆ[ \
html
ˆˆ] a
)
ˆˆa b
;
ˆˆb c
content
¯¯  '
=
¯¯( )
formattingContext
¯¯* ;
.
¯¯; <
Html
¯¯< @
;
¯¯@ A
}
˘˘ 
}
˙˙ 
else
˚˚ 
{
¸¸ 
content
˝˝ #
=
˝˝$ %
new
˝˝& )

HtmlString
˝˝* 4
(
˝˝4 5
value
˝˝5 :
)
˝˝: ;
;
˝˝; <
}
˛˛ 
}
ˇˇ 
catch
ÄÄ 
{
ÅÅ 
content
ÇÇ 
=
ÇÇ  !
null
ÇÇ" &
;
ÇÇ& '
throw
ÉÉ 
;
ÉÉ 
}
ÑÑ 
finally
ÖÖ 
{
ÜÜ +
_dynamicCacheTagHelperService
ää 5
.
ää5 6
Workers
ää6 =
.
ää= >
	TryRemove
ää> G
(
ääG H
CacheId
ääH O
,
ääO P
out
ääQ T
result
ääU [
)
ää[ \
;
ää\ ]
tcs
çç 
.
çç 
TrySetResult
çç (
(
çç( )
content
çç) 0
)
çç0 1
;
çç1 2
}
éé 
}
èè 
else
êê 
{
ëë 
content
íí 
=
íí 
await
íí #
result
íí$ *
;
íí* +
}
ìì 
}
îî 
return
ññ 
content
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô Ä
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.DynamicCache\TagHelpers\DynamicCacheTagHelperService.cs
	namespace 	
OrchardCore
 
. 
DynamicCache "
." #

TagHelpers# -
{ 
public 

class (
DynamicCacheTagHelperService -
{ 
public		  
ConcurrentDictionary		 #
<		# $
string		$ *
,		* +
Task		, 0
<		0 1
IHtmlContent		1 =
>		= >
>		> ?
Workers		@ G
=		H I
new		J M 
ConcurrentDictionary		N b
<		b c
string		c i
,		i j
Task		k o
<		o p
IHtmlContent		p |
>		| }
>		} ~
(		~ 
)			 Ä
;
		Ä Å
}

 
} 