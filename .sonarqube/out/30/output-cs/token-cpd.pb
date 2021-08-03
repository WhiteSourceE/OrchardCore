√&
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\BackgroundTasks\BackgroundTaskScheduler.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class #
BackgroundTaskScheduler (
{ 
private		 
readonly		 
IClock		 
_clock		  &
;		& '
public #
BackgroundTaskScheduler &
(& '
string' -
tenant. 4
,4 5
string6 <
name= A
,A B
DateTimeC K
referenceTimeL Y
,Y Z
IClock[ a
clockb g
)g h
{ 	
Name 
= 
name 
; 
Tenant 
= 
tenant 
; 
ReferenceTime 
= 
referenceTime )
;) *
Settings 
= 
new "
BackgroundTaskSettings 1
(1 2
)2 3
{4 5
Name6 :
=; <
name= A
}B C
;C D
State 
= 
new 
BackgroundTaskState +
(+ ,
), -
{. /
Name0 4
=5 6
name7 ;
}< =
;= >
_clock 
= 
clock 
; 
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
Tenant 
{ 
get "
;" #
}$ %
public 
DateTime 
ReferenceTime %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public "
BackgroundTaskSettings %
Settings& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
BackgroundTaskState "
State# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
	ITimeZone 
TimeZone !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Released 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
Updated 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
CanRun 
( 
) 
{ 	
var   
now   
=   
DateTime   
.   
UtcNow   %
;  % &
var!! 
referenceTime!! 
=!! 
ReferenceTime!!  -
;!!- .
if## 
(## 
TimeZone## 
!=## 
null##  
)##  !
{$$ 
now%% 
=%% 
_clock%% 
.%% 
ConvertToTimeZone%% .
(%%. /
DateTime%%/ 7
.%%7 8
UtcNow%%8 >
,%%> ?
TimeZone%%@ H
)%%H I
.%%I J
DateTime%%J R
;%%R S
referenceTime&& 
=&& 
_clock&&  &
.&&& '
ConvertToTimeZone&&' 8
(&&8 9
ReferenceTime&&9 F
,&&F G
TimeZone&&H P
)&&P Q
.&&Q R
DateTime&&R Z
;&&Z [
}'' 
var)) 
nextStartTime)) 
=)) 
CrontabSchedule))  /
.))/ 0
Parse))0 5
())5 6
Settings))6 >
.))> ?
Schedule))? G
)))G H
.))H I
GetNextOccurrence))I Z
())Z [
referenceTime))[ h
)))h i
;))i j
if++ 
(++ 
now++ 
>=++ 
nextStartTime++ $
)++$ %
{,, 
if-- 
(-- 
Settings-- 
.-- 
Enable-- #
&&--$ &
!--' (
Released--( 0
&&--1 3
Updated--4 ;
)--; <
{.. 
return// 
true// 
;//  
}00 
ReferenceTime22 
=22 
DateTime22  (
.22( )
UtcNow22) /
;22/ 0
}33 
return55 
false55 
;55 
}66 	
public88 
void88 
Run88 
(88 
)88 
{99 	
State:: 
.:: 
LastStartTime:: 
=::  !
ReferenceTime::" /
=::0 1
DateTime::2 :
.::: ;
UtcNow::; A
;::A B
};; 	
}<< 
}== ß
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Caching\Distributed\DistributedSignal.cs
	namespace 	
OrchardCore
 
. 
Caching 
. 
Distributed )
{ 
public

 

class

 
DistributedSignal

 "
:

# $
Signal

% +
,

+ ,
ISignal

- 4
{ 
private 
readonly 
IMessageBus $
_messageBus% 0
;0 1
public 
DistributedSignal  
(  !
IMessageBus! ,

messageBus- 7
)7 8
=>9 ;
_messageBus< G
=H I

messageBusJ T
;T U
IChangeToken 
ISignal 
. 
GetToken %
(% &
string& ,
key- 0
)0 1
=>2 4
GetToken5 =
(= >
key> A
)A B
;B C
Task 
ISignal 
. 
SignalTokenAsync %
(% &
string& ,
key- 0
)0 1
{ 	
SignalToken 
( 
key 
) 
; 
return 
_messageBus 
. 
PublishAsync +
(+ ,
$str, 4
,4 5
key6 9
)9 :
;: ;
} 	
public 
override 
Task 
ActivatedAsync +
(+ ,
), -
=>. 0
_messageBus1 <
.< =
SubscribeAsync= K
(K L
$strL T
,T U
(V W
channelW ^
,^ _
message` g
)g h
=>i k
SignalTokenl w
(w x
messagex 
)	 Ä
)
Ä Å
;
Å Ç
} 
} È
uD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Caching\Signal.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

class 
Signal 
: 
ModularTenantEvents -
,- .
ISignal/ 6
{ 
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
ChangeTokenInfo6 E
>E F
_changeTokensG T
;T U
public 
Signal 
( 
) 
{ 	
_changeTokens 
= 
new  
ConcurrentDictionary  4
<4 5
string5 ;
,; <
ChangeTokenInfo= L
>L M
(M N
)N O
;O P
} 	
public 
IChangeToken 
GetToken $
($ %
string% +
key, /
)/ 0
{ 	
return 
_changeTokens  
.  !
GetOrAdd! )
() *
key 
, 
_ 
=> 
{ 
var #
cancellationTokenSource /
=0 1
new2 5#
CancellationTokenSource6 M
(M N
)N O
;O P
var 
changeToken #
=$ %
new& )#
CancellationChangeToken* A
(A B#
cancellationTokenSourceB Y
.Y Z
TokenZ _
)_ `
;` a
return 
new 
ChangeTokenInfo .
(. /
changeToken/ :
,: ;#
cancellationTokenSource< S
)S T
;T U
} 
) 
. 
ChangeToken 
; 
}   	
public"" 
void"" 
SignalToken"" 
(""  
string""  &
key""' *
)""* +
{## 	
if$$ 
($$ 
_changeTokens$$ 
.$$ 
	TryRemove$$ '
($$' (
key$$( +
,$$+ ,
out$$- 0
var$$1 4
changeTokenInfo$$5 D
)$$D E
)$$E F
{%% 
changeTokenInfo&& 
.&&  
TokenSource&&  +
.&&+ ,
Cancel&&, 2
(&&2 3
)&&3 4
;&&4 5
}'' 
}(( 	
public** 
Task** 
SignalTokenAsync** $
(**$ %
string**% +
key**, /
)**/ 0
{++ 	
SignalToken,, 
(,, 
key,, 
),, 
;,, 
return-- 
Task-- 
.-- 
CompletedTask-- %
;--% &
}.. 	
private00 
struct00 
ChangeTokenInfo00 &
{11 	
public22 
ChangeTokenInfo22 "
(22" #
IChangeToken22# /
changeToken220 ;
,22; <#
CancellationTokenSource22= T
tokenSource22U `
)22` a
{33 
ChangeToken44 
=44 
changeToken44 )
;44) *
TokenSource55 
=55 
tokenSource55 )
;55) *
}66 
public88 
IChangeToken88 
ChangeToken88  +
{88, -
get88. 1
;881 2
}883 4
public:: #
CancellationTokenSource:: *
TokenSource::+ 6
{::7 8
get::9 <
;::< =
}::> ?
};; 	
}<< 
}== í
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionDependencyStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class '
ExtensionDependencyStrategy ,
:- .(
IExtensionDependencyStrategy/ K
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
{		 	
return

 
observer

 
.

 
Dependencies

 (
.

( )
Contains

) 1
(

1 2
subject

2 9
.

9 :
Id

: <
)

< =
;

= >
} 	
} 
} ´
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class 
ExtensionInfo 
:  
IExtensionInfo! /
{ 
public		 
ExtensionInfo		 
(		 
string

 
subPath

 
,

 
IManifestInfo 
manifestInfo &
,& '
Func 
< 
IManifestInfo 
, 
IExtensionInfo  .
,. /
IEnumerable0 ;
<; <
IFeatureInfo< H
>H I
>I J
featuresK S
)S T
{ 	
SubPath 
= 
subPath 
; 
Manifest 
= 
manifestInfo #
;# $
Features 
= 
features 
(  
manifestInfo  ,
,, -
this. 2
)2 3
;3 4
} 	
public 
string 
Id 
=> 
Manifest $
.$ %

ModuleInfo% /
./ 0
Id0 2
;2 3
public 
string 
SubPath 
{ 
get  #
;# $
}% &
public 
IManifestInfo 
Manifest %
{& '
get( +
;+ ,
}- .
public 
IEnumerable 
< 
IFeatureInfo '
>' (
Features) 1
{2 3
get4 7
;7 8
}9 :
public 
bool 
Exists 
=> 
Manifest &
.& '
Exists' -
;- .
} 
} Îê
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class 
ExtensionManager !
:" #
IExtensionManager$ 5
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
private 
readonly 
IEnumerable $
<$ %(
IExtensionDependencyStrategy% A
>A B*
_extensionDependencyStrategiesC a
;a b
private 
readonly 
IEnumerable $
<$ %&
IExtensionPriorityStrategy% ?
>? @(
_extensionPriorityStrategiesA ]
;] ^
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IFeaturesProvider *
_featuresProvider+ <
;< =
private 
IDictionary 
< 
string "
," #
ExtensionEntry$ 2
>2 3
_extensions4 ?
;? @
private 
IEnumerable 
< 
IExtensionInfo *
>* +
_extensionsInfos, <
;< =
private 
IDictionary 
< 
string "
," #
FeatureEntry$ 0
>0 1
	_features2 ;
;; <
private 
IFeatureInfo 
[ 
] 
_featureInfos ,
;, -
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
Lazy6 :
<: ;
IEnumerable; F
<F G
IFeatureInfoG S
>S T
>T U
>U V 
_featureDependenciesW k
=   
new    
ConcurrentDictionary   &
<  & '
string  ' -
,  - .
Lazy  / 3
<  3 4
IEnumerable  4 ?
<  ? @
IFeatureInfo  @ L
>  L M
>  M N
>  N O
(  O P
)  P Q
;  Q R
private"" 
readonly""  
ConcurrentDictionary"" -
<""- .
string"". 4
,""4 5
Lazy""6 :
<"": ;
IEnumerable""; F
<""F G
IFeatureInfo""G S
>""S T
>""T U
>""U V
_dependentFeatures""W i
=## 
new##  
ConcurrentDictionary## &
<##& '
string##' -
,##- .
Lazy##/ 3
<##3 4
IEnumerable##4 ?
<##? @
IFeatureInfo##@ L
>##L M
>##M N
>##N O
(##O P
)##P Q
;##Q R
private%% 
static%% 
readonly%% 
Func%%  $
<%%$ %
IFeatureInfo%%% 1
,%%1 2
IFeatureInfo%%3 ?
[%%? @
]%%@ A
,%%A B
IFeatureInfo%%C O
[%%O P
]%%P Q
>%%Q R$
GetDependentFeaturesFunc%%S k
=%%l m
new&& 
Func&& 
<&& 
IFeatureInfo&& !
,&&! "
IFeatureInfo&&# /
[&&/ 0
]&&0 1
,&&1 2
IFeatureInfo&&3 ?
[&&? @
]&&@ A
>&&A B
(&&B C
('' 
currentFeature'' 
,''  
fs''! #
)''# $
=>''% '
fs''( *
.(( 
Where(( 
((( 
f(( 
=>(( 
f((  !
.((! "
Dependencies((" .
.((. /
Any((/ 2
(((2 3
dep((3 6
=>((7 9
dep((: =
==((> @
currentFeature((A O
.((O P
Id((P R
)((R S
)((S T
.)) 
ToArray)) 
()) 
))) 
))) 
;))  
private++ 
static++ 
readonly++ 
Func++  $
<++$ %
IFeatureInfo++% 1
,++1 2
IFeatureInfo++3 ?
[++? @
]++@ A
,++A B
IFeatureInfo++C O
[++O P
]++P Q
>++Q R&
GetFeatureDependenciesFunc++S m
=++n o
new,, 
Func,, 
<,, 
IFeatureInfo,, !
,,,! "
IFeatureInfo,,# /
[,,/ 0
],,0 1
,,,1 2
IFeatureInfo,,3 ?
[,,? @
],,@ A
>,,A B
(,,B C
(-- 
currentFeature-- 
,--  
fs--! #
)--# $
=>--% '
fs--( *
... 
Where.. 
(.. 
f.. 
=>.. 
currentFeature..  .
.... /
Dependencies../ ;
...; <
Any..< ?
(..? @
dep..@ C
=>..D F
dep..G J
==..K M
f..N O
...O P
Id..P R
)..R S
)..S T
.// 
ToArray// 
(// 
)// 
)// 
;//  
private11 
bool11 
_isInitialized11 #
=11$ %
false11& +
;11+ ,
private22 
readonly22 
SemaphoreSlim22 &

_semaphore22' 1
=222 3
new224 7
SemaphoreSlim228 E
(22E F
$num22F G
)22G H
;22H I
public44 
ExtensionManager44 
(44  
IApplicationContext55 
applicationContext55  2
,552 3
IEnumerable66 
<66 (
IExtensionDependencyStrategy66 4
>664 5)
extensionDependencyStrategies666 S
,66S T
IEnumerable77 
<77 &
IExtensionPriorityStrategy77 2
>772 3'
extensionPriorityStrategies774 O
,77O P 
ITypeFeatureProvider88  
typeFeatureProvider88! 4
,884 5
IFeaturesProvider99 
featuresProvider99 .
,99. /
ILogger:: 
<:: 
ExtensionManager:: $
>::$ %
logger::& ,
)::, -
{;; 	
_applicationContext<< 
=<<  !
applicationContext<<" 4
;<<4 5*
_extensionDependencyStrategies== *
===+ ,)
extensionDependencyStrategies==- J
;==J K(
_extensionPriorityStrategies>> (
=>>) *'
extensionPriorityStrategies>>+ F
;>>F G 
_typeFeatureProvider??  
=??! "
typeFeatureProvider??# 6
;??6 7
_featuresProvider@@ 
=@@ 
featuresProvider@@  0
;@@0 1
LAA 
=AA 
loggerAA 
;AA 
}BB 	
publicDD 
ILoggerDD 
LDD 
{DD 
getDD 
;DD 
setDD  #
;DD# $
}DD% &
publicFF 
IExtensionInfoFF 
GetExtensionFF *
(FF* +
stringFF+ 1
extensionIdFF2 =
)FF= >
{GG 	
EnsureInitializedHH 
(HH 
)HH 
;HH  
ExtensionEntryJJ 
	extensionJJ $
;JJ$ %
ifKK 
(KK 
!KK 
StringKK 
.KK 
IsNullOrEmptyKK %
(KK% &
extensionIdKK& 1
)KK1 2
&&KK3 5
_extensionsKK6 A
.KKA B
TryGetValueKKB M
(KKM N
extensionIdKKN Y
,KKY Z
outKK[ ^
	extensionKK_ h
)KKh i
)KKi j
{LL 
returnMM 
	extensionMM  
.MM  !
ExtensionInfoMM! .
;MM. /
}NN 
returnPP 
newPP !
NotFoundExtensionInfoPP ,
(PP, -
extensionIdPP- 8
)PP8 9
;PP9 :
}QQ 	
publicSS 
IEnumerableSS 
<SS 
IExtensionInfoSS )
>SS) *
GetExtensionsSS+ 8
(SS8 9
)SS9 :
{TT 	
EnsureInitializedUU 
(UU 
)UU 
;UU  
returnWW 
_extensionsInfosWW #
;WW# $
}XX 	
publicZZ 
IEnumerableZZ 
<ZZ 
IFeatureInfoZZ '
>ZZ' (
GetFeaturesZZ) 4
(ZZ4 5
stringZZ5 ;
[ZZ; <
]ZZ< =
featureIdsToLoadZZ> N
)ZZN O
{[[ 	
EnsureInitialized\\ 
(\\ 
)\\ 
;\\  
var^^ 
allDependencies^^ 
=^^  !
featureIdsToLoad^^" 2
.__ 

SelectMany__ 
(__ 
	featureId__ %
=>__& ("
GetFeatureDependencies__) ?
(__? @
	featureId__@ I
)__I J
)__J K
.`` 
Distinct`` 
(`` 
)`` 
;`` 
returnbb 
_featureInfosbb  
.cc 
Wherecc 
(cc 
fcc 
=>cc 
allDependenciescc +
.cc+ ,
Anycc, /
(cc/ 0
dcc0 1
=>cc2 4
dcc5 6
.cc6 7
Idcc7 9
==cc: <
fcc= >
.cc> ?
Idcc? A
)ccA B
)ccB C
;ccC D
}dd 	
publicff 
Taskff 
<ff 
ExtensionEntryff "
>ff" #
LoadExtensionAsyncff$ 6
(ff6 7
IExtensionInfoff7 E
extensionInfoffF S
)ffS T
{gg 	
EnsureInitializedhh 
(hh 
)hh 
;hh  
ExtensionEntryjj 
	extensionjj $
;jj$ %
ifkk 
(kk 
_extensionskk 
.kk 
TryGetValuekk '
(kk' (
extensionInfokk( 5
.kk5 6
Idkk6 8
,kk8 9
outkk: =
	extensionkk> G
)kkG H
)kkH I
{ll 
returnmm 
Taskmm 
.mm 

FromResultmm &
(mm& '
	extensionmm' 0
)mm0 1
;mm1 2
}nn 
returnpp 
Taskpp 
.pp 

FromResultpp "
<pp" #
ExtensionEntrypp# 1
>pp1 2
(pp2 3
nullpp3 7
)pp7 8
;pp8 9
}qq 	
publicss 
asyncss 
Taskss 
<ss 
IEnumerabless %
<ss% &
FeatureEntryss& 2
>ss2 3
>ss3 4
LoadFeaturesAsyncss5 F
(ssF G
)ssG H
{tt 	
awaituu "
EnsureInitializedAsyncuu (
(uu( )
)uu) *
;uu* +
returnvv 
	_featuresvv 
.vv 
Valuesvv #
;vv# $
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy 
IEnumerableyy %
<yy% &
FeatureEntryyy& 2
>yy2 3
>yy3 4
LoadFeaturesAsyncyy5 F
(yyF G
stringyyG M
[yyM N
]yyN O
featureIdsToLoadyyP `
)yy` a
{zz 	
await{{ "
EnsureInitializedAsync{{ (
({{( )
){{) *
;{{* +
var}} 
features}} 
=}} 
GetFeatures}} &
(}}& '
featureIdsToLoad}}' 7
)}}7 8
.}}8 9
Select}}9 ?
(}}? @
f}}@ A
=>}}B D
f}}E F
.}}F G
Id}}G I
)}}I J
.}}J K
ToList}}K Q
(}}Q R
)}}R S
;}}S T
var 
loadedFeatures 
=  
	_features! *
.* +
Values+ 1
.
ÄÄ 
Where
ÄÄ 
(
ÄÄ 
f
ÄÄ 
=>
ÄÄ 
features
ÄÄ $
.
ÄÄ$ %
Contains
ÄÄ% -
(
ÄÄ- .
f
ÄÄ. /
.
ÄÄ/ 0
FeatureInfo
ÄÄ0 ;
.
ÄÄ; <
Id
ÄÄ< >
)
ÄÄ> ?
)
ÄÄ? @
;
ÄÄ@ A
return
ÇÇ 
loadedFeatures
ÇÇ !
;
ÇÇ! "
}
ÉÉ 	
public
ÖÖ 
IEnumerable
ÖÖ 
<
ÖÖ 
IFeatureInfo
ÖÖ '
>
ÖÖ' ($
GetFeatureDependencies
ÖÖ) ?
(
ÖÖ? @
string
ÖÖ@ F
	featureId
ÖÖG P
)
ÖÖP Q
{
ÜÜ 	
EnsureInitialized
áá 
(
áá 
)
áá 
;
áá  
return
ââ "
_featureDependencies
ââ '
.
ââ' (
GetOrAdd
ââ( 0
(
ââ0 1
	featureId
ââ1 :
,
ââ: ;
(
ââ< =
key
ââ= @
)
ââ@ A
=>
ââB D
new
ââE H
Lazy
ââI M
<
ââM N
IEnumerable
ââN Y
<
ââY Z
IFeatureInfo
ââZ f
>
ââf g
>
ââg h
(
ââh i
(
ââi j
)
ââj k
=>
ââl n
{
ää 
if
ãã 
(
ãã 
!
ãã 
	_features
ãã 
.
ãã 
ContainsKey
ãã *
(
ãã* +
key
ãã+ .
)
ãã. /
)
ãã/ 0
{
åå 
return
çç 

Enumerable
çç %
.
çç% &
Empty
çç& +
<
çç+ ,
IFeatureInfo
çç, 8
>
çç8 9
(
çç9 :
)
çç: ;
;
çç; <
}
éé 
var
êê 
feature
êê 
=
êê 
	_features
êê '
[
êê' (
key
êê( +
]
êê+ ,
.
êê, -
FeatureInfo
êê- 8
;
êê8 9
return
íí $
GetFeatureDependencies
íí -
(
íí- .
feature
íí. 5
,
íí5 6
_featureInfos
íí7 D
)
ííD E
;
ííE F
}
ìì 
)
ìì 
)
ìì 
.
ìì 
Value
ìì 
;
ìì 
}
îî 	
public
ññ 
IEnumerable
ññ 
<
ññ 
IFeatureInfo
ññ '
>
ññ' ("
GetDependentFeatures
ññ) =
(
ññ= >
string
ññ> D
	featureId
ññE N
)
ññN O
{
óó 	
EnsureInitialized
òò 
(
òò 
)
òò 
;
òò  
return
öö  
_dependentFeatures
öö %
.
öö% &
GetOrAdd
öö& .
(
öö. /
	featureId
öö/ 8
,
öö8 9
(
öö: ;
key
öö; >
)
öö> ?
=>
öö@ B
new
ööC F
Lazy
ööG K
<
ööK L
IEnumerable
ööL W
<
ööW X
IFeatureInfo
ööX d
>
ööd e
>
ööe f
(
ööf g
(
öög h
)
ööh i
=>
ööj l
{
õõ 
if
úú 
(
úú 
!
úú 
	_features
úú 
.
úú 
ContainsKey
úú *
(
úú* +
key
úú+ .
)
úú. /
)
úú/ 0
{
ùù 
return
ûû 

Enumerable
ûû %
.
ûû% &
Empty
ûû& +
<
ûû+ ,
IFeatureInfo
ûû, 8
>
ûû8 9
(
ûû9 :
)
ûû: ;
;
ûû; <
}
üü 
var
°° 
feature
°° 
=
°° 
	_features
°° '
[
°°' (
key
°°( +
]
°°+ ,
.
°°, -
FeatureInfo
°°- 8
;
°°8 9
return
££ "
GetDependentFeatures
££ +
(
££+ ,
feature
££, 3
,
££3 4
_featureInfos
££5 B
)
££B C
;
££C D
}
§§ 
)
§§ 
)
§§ 
.
§§ 
Value
§§ 
;
§§ 
}
•• 	
private
ßß 
IEnumerable
ßß 
<
ßß 
IFeatureInfo
ßß (
>
ßß( )$
GetFeatureDependencies
ßß* @
(
ßß@ A
IFeatureInfo
®® 
feature
®®  
,
®®  !
IFeatureInfo
©© 
[
©© 
]
©© 
features
©© #
)
©©# $
{
™™ 	
var
´´ 
dependencies
´´ 
=
´´ 
new
´´ "
HashSet
´´# *
<
´´* +
IFeatureInfo
´´+ 7
>
´´7 8
(
´´8 9
)
´´9 :
{
´´; <
feature
´´= D
}
´´E F
;
´´F G
var
¨¨ 
stack
¨¨ 
=
¨¨ 
new
¨¨ 
Stack
¨¨ !
<
¨¨! "
IFeatureInfo
¨¨" .
[
¨¨. /
]
¨¨/ 0
>
¨¨0 1
(
¨¨1 2
)
¨¨2 3
;
¨¨3 4
stack
ÆÆ 
.
ÆÆ 
Push
ÆÆ 
(
ÆÆ (
GetFeatureDependenciesFunc
ÆÆ 1
(
ÆÆ1 2
feature
ÆÆ2 9
,
ÆÆ9 :
features
ÆÆ; C
)
ÆÆC D
)
ÆÆD E
;
ÆÆE F
while
∞∞ 
(
∞∞ 
stack
∞∞ 
.
∞∞ 
Count
∞∞ 
>
∞∞  
$num
∞∞! "
)
∞∞" #
{
±± 
var
≤≤ 
next
≤≤ 
=
≤≤ 
stack
≤≤  
.
≤≤  !
Pop
≤≤! $
(
≤≤$ %
)
≤≤% &
;
≤≤& '
foreach
≥≥ 
(
≥≥ 
var
≥≥ 

dependency
≥≥ '
in
≥≥( *
next
≥≥+ /
.
≥≥/ 0
Where
≥≥0 5
(
≥≥5 6

dependency
≥≥6 @
=>
≥≥A C
!
≥≥D E
dependencies
≥≥E Q
.
≥≥Q R
Contains
≥≥R Z
(
≥≥Z [

dependency
≥≥[ e
)
≥≥e f
)
≥≥f g
)
≥≥g h
{
¥¥ 
dependencies
µµ  
.
µµ  !
Add
µµ! $
(
µµ$ %

dependency
µµ% /
)
µµ/ 0
;
µµ0 1
stack
∂∂ 
.
∂∂ 
Push
∂∂ 
(
∂∂ (
GetFeatureDependenciesFunc
∂∂ 9
(
∂∂9 :

dependency
∂∂: D
,
∂∂D E
features
∂∂F N
)
∂∂N O
)
∂∂O P
;
∂∂P Q
}
∑∑ 
}
∏∏ 
return
ªª 
_featureInfos
ªª  
.
ªª  !
Where
ªª! &
(
ªª& '
f
ªª' (
=>
ªª) +
dependencies
ªª, 8
.
ªª8 9
Any
ªª9 <
(
ªª< =
d
ªª= >
=>
ªª? A
d
ªªB C
.
ªªC D
Id
ªªD F
==
ªªG I
f
ªªJ K
.
ªªK L
Id
ªªL N
)
ªªN O
)
ªªO P
;
ªªP Q
}
ºº 	
private
ææ 
IEnumerable
ææ 
<
ææ 
IFeatureInfo
ææ (
>
ææ( )"
GetDependentFeatures
ææ* >
(
ææ> ?
IFeatureInfo
øø 
feature
øø  
,
øø  !
IFeatureInfo
¿¿ 
[
¿¿ 
]
¿¿ 
features
¿¿ #
)
¿¿# $
{
¡¡ 	
var
¬¬ 
dependencies
¬¬ 
=
¬¬ 
new
¬¬ "
HashSet
¬¬# *
<
¬¬* +
IFeatureInfo
¬¬+ 7
>
¬¬7 8
(
¬¬8 9
)
¬¬9 :
{
¬¬; <
feature
¬¬= D
}
¬¬E F
;
¬¬F G
var
√√ 
stack
√√ 
=
√√ 
new
√√ 
Stack
√√ !
<
√√! "
IFeatureInfo
√√" .
[
√√. /
]
√√/ 0
>
√√0 1
(
√√1 2
)
√√2 3
;
√√3 4
stack
≈≈ 
.
≈≈ 
Push
≈≈ 
(
≈≈ &
GetDependentFeaturesFunc
≈≈ /
(
≈≈/ 0
feature
≈≈0 7
,
≈≈7 8
features
≈≈9 A
)
≈≈A B
)
≈≈B C
;
≈≈C D
while
«« 
(
«« 
stack
«« 
.
«« 
Count
«« 
>
««  
$num
««! "
)
««" #
{
»» 
var
…… 
next
…… 
=
…… 
stack
……  
.
……  !
Pop
……! $
(
……$ %
)
……% &
;
……& '
foreach
   
(
   
var
   

dependency
   '
in
  ( *
next
  + /
.
  / 0
Where
  0 5
(
  5 6

dependency
  6 @
=>
  A C
!
  D E
dependencies
  E Q
.
  Q R
Contains
  R Z
(
  Z [

dependency
  [ e
)
  e f
)
  f g
)
  g h
{
ÀÀ 
dependencies
ÃÃ  
.
ÃÃ  !
Add
ÃÃ! $
(
ÃÃ$ %

dependency
ÃÃ% /
)
ÃÃ/ 0
;
ÃÃ0 1
stack
ÕÕ 
.
ÕÕ 
Push
ÕÕ 
(
ÕÕ &
GetDependentFeaturesFunc
ÕÕ 7
(
ÕÕ7 8

dependency
ÕÕ8 B
,
ÕÕB C
features
ÕÕD L
)
ÕÕL M
)
ÕÕM N
;
ÕÕN O
}
ŒŒ 
}
œœ 
return
““ 
_featureInfos
““  
.
““  !
Where
““! &
(
““& '
f
““' (
=>
““) +
dependencies
““, 8
.
““8 9
Any
““9 <
(
““< =
d
““= >
=>
““? A
d
““B C
.
““C D
Id
““D F
==
““G I
f
““J K
.
““K L
Id
““L N
)
““N O
)
““O P
;
““P Q
}
”” 	
public
’’ 
IEnumerable
’’ 
<
’’ 
IFeatureInfo
’’ '
>
’’' (
GetFeatures
’’) 4
(
’’4 5
)
’’5 6
{
÷÷ 	
EnsureInitialized
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊  
return
ŸŸ 
_featureInfos
ŸŸ  
;
ŸŸ  !
}
⁄⁄ 	
private
‹‹ 
static
‹‹ 
string
‹‹ )
GetSourceFeatureNameForType
‹‹ 9
(
‹‹9 :
Type
‹‹: >
type
‹‹? C
,
‹‹C D
string
‹‹E K
extensionId
‹‹L W
)
‹‹W X
{
›› 	
var
ﬁﬁ 
	attribute
ﬁﬁ 
=
ﬁﬁ 
type
ﬁﬁ  
.
ﬁﬁ  !!
GetCustomAttributes
ﬁﬁ! 4
<
ﬁﬁ4 5
FeatureAttribute
ﬁﬁ5 E
>
ﬁﬁE F
(
ﬁﬁF G
false
ﬁﬁG L
)
ﬁﬁL M
.
ﬁﬁM N
FirstOrDefault
ﬁﬁN \
(
ﬁﬁ\ ]
)
ﬁﬁ] ^
;
ﬁﬁ^ _
return
‡‡ 
	attribute
‡‡ 
?
‡‡ 
.
‡‡ 
FeatureName
‡‡ )
??
‡‡* ,
extensionId
‡‡- 8
;
‡‡8 9
}
·· 	
private
„„ 
void
„„ 
EnsureInitialized
„„ &
(
„„& '
)
„„' (
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
_isInitialized
ÂÂ 
)
ÂÂ 
{
ÊÊ 
return
ÁÁ 
;
ÁÁ 
}
ËË $
EnsureInitializedAsync
ÍÍ "
(
ÍÍ" #
)
ÍÍ# $
.
ÍÍ$ %

GetAwaiter
ÍÍ% /
(
ÍÍ/ 0
)
ÍÍ0 1
.
ÍÍ1 2
	GetResult
ÍÍ2 ;
(
ÍÍ; <
)
ÍÍ< =
;
ÍÍ= >
}
ÎÎ 	
private
ÌÌ 
async
ÌÌ 
Task
ÌÌ $
EnsureInitializedAsync
ÌÌ 1
(
ÌÌ1 2
)
ÌÌ2 3
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
_isInitialized
ÔÔ 
)
ÔÔ 
{
 
return
ÒÒ 
;
ÒÒ 
}
ÚÚ 
await
ÙÙ 

_semaphore
ÙÙ 
.
ÙÙ 
	WaitAsync
ÙÙ &
(
ÙÙ& '
)
ÙÙ' (
;
ÙÙ( )
try
ˆˆ 
{
˜˜ 
if
¯¯ 
(
¯¯ 
_isInitialized
¯¯ "
)
¯¯" #
{
˘˘ 
return
˙˙ 
;
˙˙ 
}
˚˚ 
var
˝˝ 
modules
˝˝ 
=
˝˝ !
_applicationContext
˝˝ 1
.
˝˝1 2
Application
˝˝2 =
.
˝˝= >
Modules
˝˝> E
;
˝˝E F
var
˛˛ 
loadedExtensions
˛˛ $
=
˛˛% &
new
˛˛' *"
ConcurrentDictionary
˛˛+ ?
<
˛˛? @
string
˛˛@ F
,
˛˛F G
ExtensionEntry
˛˛H V
>
˛˛V W
(
˛˛W X
)
˛˛X Y
;
˛˛Y Z
await
ÅÅ 
modules
ÅÅ 
.
ÅÅ 
ForEachAsync
ÅÅ *
(
ÅÅ* +
(
ÅÅ+ ,
module
ÅÅ, 2
)
ÅÅ2 3
=>
ÅÅ4 6
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
module
ÉÉ 
.
ÉÉ  

ModuleInfo
ÉÉ  *
.
ÉÉ* +
Exists
ÉÉ+ 1
)
ÉÉ1 2
{
ÑÑ 
return
ÖÖ 
Task
ÖÖ #
.
ÖÖ# $
CompletedTask
ÖÖ$ 1
;
ÖÖ1 2
}
ÜÜ 
var
áá 
manifestInfo
áá $
=
áá% &
new
áá' *
ManifestInfo
áá+ 7
(
áá7 8
module
áá8 >
.
áá> ?

ModuleInfo
áá? I
)
ááI J
;
ááJ K
var
ââ 
extensionInfo
ââ %
=
ââ& '
new
ââ( +
ExtensionInfo
ââ, 9
(
ââ9 :
module
ââ: @
.
ââ@ A
SubPath
ââA H
,
ââH I
manifestInfo
ââJ V
,
ââV W
(
ââX Y
mi
ââY [
,
ââ[ \
ei
ââ] _
)
ââ_ `
=>
ââa c
{
ää 
return
ãã 
_featuresProvider
ãã 0
.
ãã0 1
GetFeatures
ãã1 <
(
ãã< =
ei
ãã= ?
,
ãã? @
mi
ããA C
)
ããC D
;
ããD E
}
åå 
)
åå 
;
åå 
var
éé 
entry
éé 
=
éé 
new
éé  #
ExtensionEntry
éé$ 2
{
èè 
ExtensionInfo
êê %
=
êê& '
extensionInfo
êê( 5
,
êê5 6
Assembly
ëë  
=
ëë! "
module
ëë# )
.
ëë) *
Assembly
ëë* 2
,
ëë2 3
ExportedTypes
íí %
=
íí& '
module
íí( .
.
íí. /
Assembly
íí/ 7
.
íí7 8
ExportedTypes
íí8 E
}
ìì 
;
ìì 
loadedExtensions
ïï $
.
ïï$ %
TryAdd
ïï% +
(
ïï+ ,
module
ïï, 2
.
ïï2 3
Name
ïï3 7
,
ïï7 8
entry
ïï9 >
)
ïï> ?
;
ïï? @
return
óó 
Task
óó 
.
óó  
CompletedTask
óó  -
;
óó- .
}
òò 
)
òò 
;
òò 
var
öö 
loadedFeatures
öö "
=
öö# $
new
öö% (

Dictionary
öö) 3
<
öö3 4
string
öö4 :
,
öö: ;
FeatureEntry
öö< H
>
ööH I
(
ööI J
)
ööJ K
;
ööK L
var
ùù !
allTypesByExtension
ùù '
=
ùù( )
loadedExtensions
ùù* :
.
ùù: ;

SelectMany
ùù; E
(
ùùE F
	extension
ùùF O
=>
ùùP R
	extension
ûû 
.
ûû 
Value
ûû #
.
ûû# $
ExportedTypes
ûû$ 1
.
ûû1 2
Where
ûû2 7
(
ûû7 8
IsComponentType
ûû8 G
)
ûûG H
.
üü 
Select
üü 
(
üü 
type
üü  
=>
üü! #
new
üü$ '
{
†† 
ExtensionEntry
°° &
=
°°' (
	extension
°°) 2
.
°°2 3
Value
°°3 8
,
°°8 9
Type
¢¢ 
=
¢¢ 
type
¢¢ #
}
££ 
)
££ 
)
££ 
.
££ 
ToArray
££ 
(
££  
)
££  !
;
££! "
var
•• 
typesByFeature
•• "
=
••# $!
allTypesByExtension
••% 8
.
¶¶ 
GroupBy
¶¶ 
(
¶¶ 
typeByExtension
¶¶ ,
=>
¶¶- /)
GetSourceFeatureNameForType
¶¶0 K
(
¶¶K L
typeByExtension
ßß '
.
ßß' (
Type
ßß( ,
,
ßß, -
typeByExtension
®® '
.
®®' (
ExtensionEntry
®®( 6
.
®®6 7
ExtensionInfo
®®7 D
.
®®D E
Id
®®E G
)
®®G H
)
®®H I
.
©© 
ToDictionary
©© !
(
©©! "
group
™™ 
=>
™™  
group
™™! &
.
™™& '
Key
™™' *
,
™™* +
group
´´ 
=>
´´  
group
´´! &
.
´´& '
Select
´´' -
(
´´- .
typesByExtension
´´. >
=>
´´? A
typesByExtension
´´B R
.
´´R S
Type
´´S W
)
´´W X
.
´´X Y
ToArray
´´Y `
(
´´` a
)
´´a b
)
´´b c
;
´´c d
foreach
≠≠ 
(
≠≠ 
var
≠≠ 
loadedExtension
≠≠ ,
in
≠≠- /
loadedExtensions
≠≠0 @
)
≠≠@ A
{
ÆÆ 
var
ØØ 
	extension
ØØ !
=
ØØ" #
loadedExtension
ØØ$ 3
.
ØØ3 4
Value
ØØ4 9
;
ØØ9 :
foreach
±± 
(
±± 
var
±±  
feature
±±! (
in
±±) +
	extension
±±, 5
.
±±5 6
ExtensionInfo
±±6 C
.
±±C D
Features
±±D L
)
±±L M
{
≤≤ 
if
¥¥ 
(
¥¥ 
typesByFeature
¥¥ *
.
¥¥* +
TryGetValue
¥¥+ 6
(
¥¥6 7
feature
¥¥7 >
.
¥¥> ?
Id
¥¥? A
,
¥¥A B
out
¥¥C F
var
¥¥G J
featureTypes
¥¥K W
)
¥¥W X
)
¥¥X Y
{
µµ 
foreach
∂∂ #
(
∂∂$ %
var
∂∂% (
type
∂∂) -
in
∂∂. 0
featureTypes
∂∂1 =
)
∂∂= >
{
∑∑ "
_typeFeatureProvider
∏∏  4
.
∏∏4 5
TryAdd
∏∏5 ;
(
∏∏; <
type
∏∏< @
,
∏∏@ A
feature
∏∏B I
)
∏∏I J
;
∏∏J K
}
ππ 
}
∫∫ 
else
ªª 
{
ºº 
featureTypes
ΩΩ (
=
ΩΩ) *
Array
ΩΩ+ 0
.
ΩΩ0 1
Empty
ΩΩ1 6
<
ΩΩ6 7
Type
ΩΩ7 ;
>
ΩΩ; <
(
ΩΩ< =
)
ΩΩ= >
;
ΩΩ> ?
}
ææ 
loadedFeatures
¿¿ &
.
¿¿& '
Add
¿¿' *
(
¿¿* +
feature
¿¿+ 2
.
¿¿2 3
Id
¿¿3 5
,
¿¿5 6
new
¿¿7 :"
CompiledFeatureEntry
¿¿; O
(
¿¿O P
feature
¿¿P W
,
¿¿W X
featureTypes
¿¿Y e
)
¿¿e f
)
¿¿f g
;
¿¿g h
}
¡¡ 
}
¬¬ 
;
¬¬ 
_featureInfos
≈≈ 
=
≈≈ 
Order
≈≈  %
(
≈≈% &
loadedFeatures
≈≈& 4
.
≈≈4 5
Values
≈≈5 ;
.
≈≈; <
Select
≈≈< B
(
≈≈B C
f
≈≈C D
=>
≈≈E G
f
≈≈H I
.
≈≈I J
FeatureInfo
≈≈J U
)
≈≈U V
)
≈≈V W
;
≈≈W X
	_features
∆∆ 
=
∆∆ 
_featureInfos
∆∆ )
.
∆∆) *
ToDictionary
∆∆* 6
(
∆∆6 7
f
∆∆7 8
=>
∆∆9 ;
f
∆∆< =
.
∆∆= >
Id
∆∆> @
,
∆∆@ A
f
∆∆B C
=>
∆∆D F
loadedFeatures
∆∆G U
[
∆∆U V
f
∆∆V W
.
∆∆W X
Id
∆∆X Z
]
∆∆Z [
)
∆∆[ \
;
∆∆\ ]
_extensionsInfos
……  
=
……! "
_featureInfos
……# 0
.
……0 1
Where
……1 6
(
……6 7
f
……7 8
=>
……9 ;
f
……< =
.
……= >
Id
……> @
==
……A C
f
……D E
.
……E F
	Extension
……F O
.
……O P
Features
……P X
.
……X Y
First
……Y ^
(
……^ _
)
……_ `
.
……` a
Id
……a c
)
……c d
.
   
Select
   
(
   
f
   
=>
    
f
  ! "
.
  " #
	Extension
  # ,
)
  , -
;
  - .
_extensions
ÃÃ 
=
ÃÃ 
_extensionsInfos
ÃÃ .
.
ÃÃ. /
ToDictionary
ÃÃ/ ;
(
ÃÃ; <
e
ÃÃ< =
=>
ÃÃ> @
e
ÃÃA B
.
ÃÃB C
Id
ÃÃC E
,
ÃÃE F
e
ÃÃG H
=>
ÃÃI K
loadedExtensions
ÃÃL \
[
ÃÃ\ ]
e
ÃÃ] ^
.
ÃÃ^ _
Id
ÃÃ_ a
]
ÃÃa b
)
ÃÃb c
;
ÃÃc d
_isInitialized
ŒŒ 
=
ŒŒ  
true
ŒŒ! %
;
ŒŒ% &
}
œœ 
finally
–– 
{
—— 

_semaphore
““ 
.
““ 
Release
““ "
(
““" #
)
““# $
;
““$ %
}
”” 
}
‘‘ 	
private
÷÷ 
bool
÷÷ 
IsComponentType
÷÷ $
(
÷÷$ %
Type
÷÷% )
type
÷÷* .
)
÷÷. /
{
◊◊ 	
return
ÿÿ 
type
ÿÿ 
.
ÿÿ 
IsClass
ÿÿ 
&&
ÿÿ  "
!
ÿÿ# $
type
ÿÿ$ (
.
ÿÿ( )

IsAbstract
ÿÿ) 3
&&
ÿÿ4 6
type
ÿÿ7 ;
.
ÿÿ; <
IsPublic
ÿÿ< D
;
ÿÿD E
}
ŸŸ 	
private
€€ 
IFeatureInfo
€€ 
[
€€ 
]
€€ 
Order
€€ $
(
€€$ %
IEnumerable
€€% 0
<
€€0 1
IFeatureInfo
€€1 =
>
€€= >
featuresToOrder
€€? N
)
€€N O
{
‹‹ 	
return
›› 
featuresToOrder
›› "
.
ﬁﬁ 
OrderBy
ﬁﬁ 
(
ﬁﬁ 
x
ﬁﬁ 
=>
ﬁﬁ 
x
ﬁﬁ 
.
ﬁﬁ  
Id
ﬁﬁ  "
)
ﬁﬁ" #
.
ﬂﬂ .
 OrderByDependenciesAndPriorities
ﬂﬂ 1
(
ﬂﬂ1 2
HasDependency
ﬂﬂ2 ?
,
ﬂﬂ? @
GetPriority
ﬂﬂA L
)
ﬂﬂL M
.
‡‡ 
ToArray
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 	
private
„„ 
bool
„„ 
HasDependency
„„ "
(
„„" #
IFeatureInfo
„„# /
f1
„„0 2
,
„„2 3
IFeatureInfo
„„4 @
f2
„„A C
)
„„C D
{
‰‰ 	
return
ÂÂ ,
_extensionDependencyStrategies
ÂÂ 1
.
ÂÂ1 2
Any
ÂÂ2 5
(
ÂÂ5 6
s
ÂÂ6 7
=>
ÂÂ8 :
s
ÂÂ; <
.
ÂÂ< =
HasDependency
ÂÂ= J
(
ÂÂJ K
f1
ÂÂK M
,
ÂÂM N
f2
ÂÂO Q
)
ÂÂQ R
)
ÂÂR S
;
ÂÂS T
}
ÊÊ 	
private
ËË 
int
ËË 
GetPriority
ËË 
(
ËË  
IFeatureInfo
ËË  ,
feature
ËË- 4
)
ËË4 5
{
ÈÈ 	
return
ÍÍ *
_extensionPriorityStrategies
ÍÍ /
.
ÍÍ/ 0
Sum
ÍÍ0 3
(
ÍÍ3 4
s
ÍÍ4 5
=>
ÍÍ6 8
s
ÍÍ9 :
.
ÍÍ: ;
GetPriority
ÍÍ; F
(
ÍÍF G
feature
ÍÍG N
)
ÍÍN O
)
ÍÍO P
;
ÍÍP Q
}
ÎÎ 	
}
ÏÏ 
}ÌÌ Œ
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionPriorityStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class %
ExtensionPriorityStrategy *
:+ ,&
IExtensionPriorityStrategy- G
{ 
public 
int 
GetPriority 
( 
IFeatureInfo +
feature, 3
)3 4
{ 	
return		 
feature		 
.		 
Priority		 #
;		# $
}

 	
} 
} Ê"
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\FeatureHash.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

class 
FeatureHash 
: 
IFeatureHash +
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
FeatureHashCacheKey

 0
=

1 2
$str

3 I
;

I J
private 
readonly !
IShellFeaturesManager .
_featureManager/ >
;> ?
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
public 
FeatureHash 
( !
IShellFeaturesManager 0
featureManager1 ?
,? @
IMemoryCacheA M
memoryCacheN Y
)Y Z
{ 	
_memoryCache 
= 
memoryCache &
;& '
_featureManager 
= 
featureManager ,
;, -
} 	
public 
async 
Task 
< 
int 
> 
GetFeatureHashAsync 2
(2 3
)3 4
{ 	
if 
( 
_memoryCache 
. 
TryGetValue (
<( )
int) ,
>, -
(- .
FeatureHashCacheKey. A
,A B
outC F
varG J
serialK Q
)Q R
)R S
{ 
return 
serial 
; 
} 
var 
enabledFeatures 
=  !
await" '
_featureManager( 7
.7 8#
GetEnabledFeaturesAsync8 O
(O P
)P Q
;Q R
serial 
= 
enabledFeatures $
.   
OrderBy   
(   
x   
=>   
x   
.    
Id    "
)  " #
.!! 
	Aggregate!! 
(!! 
$num!! 
,!! 
(!! 
a!!  
,!!  !
f!!" #
)!!# $
=>!!% '
a!!( )
*!!* +
$num!!, -
+!!. /
f!!0 1
.!!1 2
Id!!2 4
.!!4 5
GetHashCode!!5 @
(!!@ A
)!!A B
)!!B C
;!!C D
_memoryCache## 
.## 
Set## 
(## 
FeatureHashCacheKey## 0
,##0 1
serial##2 8
)##8 9
;##9 :
return%% 
serial%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
int(( 
>(( 
GetFeatureHashAsync(( 2
(((2 3
string((3 9
	featureId((: C
)((C D
{)) 	
var** 
cacheKey** 
=** 
string** !
.**! "
Format**" (
(**( )
$str**) 2
,**2 3
FeatureHashCacheKey**4 G
,**G H
	featureId**I R
)**R S
;**S T
if,, 
(,, 
!,, 
_memoryCache,, 
.,, 
TryGetValue,, )
<,,) *
bool,,* .
>,,. /
(,,/ 0
cacheKey,,0 8
,,,8 9
out,,: =
var,,> A
enabled,,B I
),,I J
),,J K
{-- 
var.. 
enabledFeatures.. #
=..$ %
await..& +
_featureManager.., ;
...; <#
GetEnabledFeaturesAsync..< S
(..S T
)..T U
;..U V
enabled00 
=00 
enabledFeatures00 )
.00) *
Any00* -
(00- .
x00. /
=>000 2
x003 4
.004 5
Id005 7
.007 8
Equals008 >
(00> ?
	featureId00? H
)00H I
)00I J
;00J K
_memoryCache22 
.22 
Set22  
(22  !
cacheKey22! )
,22) *
enabled22+ 2
)222 3
;223 4
}33 
return55 
enabled55 
?55 
$num55 
:55  
$num55! "
;55" #
}66 	
}77 
}88 ì
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\FeatureInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

class 
FeatureInfo 
: 
IFeatureInfo +
{ 
public 
FeatureInfo 
( 
string 
id 
, 
string 
name 
, 
int 
priority 
, 
string		 
category		 
,		 
string

 
description

 
,

 
IExtensionInfo 
	extension $
,$ %
string 
[ 
] 
dependencies !
,! "
bool 
defaultTenantOnly "
," #
bool 
isAlwaysEnabled  
)  !
{ 	
Id 
= 
id 
; 
Name 
= 
name 
; 
Priority 
= 
priority 
;  
Category 
= 
category 
;  
Description 
= 
description %
;% &
	Extension 
= 
	extension !
;! "
Dependencies 
= 
dependencies '
;' (
DefaultTenantOnly 
= 
defaultTenantOnly  1
;1 2
IsAlwaysEnabled 
= 
isAlwaysEnabled -
;- .
} 	
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Name 
{ 
get  
;  !
}" #
public 
int 
Priority 
{ 
get !
;! "
}# $
public 
string 
Category 
{  
get! $
;$ %
}& '
public 
string 
Description !
{" #
get$ '
;' (
}) *
public   
bool   
DefaultTenantOnly   %
{  & '
get  ( +
;  + ,
}  - .
public!! 
IExtensionInfo!! 
	Extension!! '
{!!( )
get!!* -
;!!- .
}!!/ 0
public"" 
string"" 
["" 
]"" 
Dependencies"" $
{""% &
get""' *
;""* +
}"", -
public## 
bool## 
IsAlwaysEnabled## #
{##$ %
get##& )
;##) *
}##+ ,
}$$ 
}%% £[
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\FeaturesProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

class 
FeaturesProvider !
:" #
IFeaturesProvider$ 5
{ 
public		 
const		 
string		 #
FeatureProviderStateKey		 3
=		4 5
$str		6 P
;		P Q
private 
readonly 
IEnumerable $
<$ %!
IFeatureBuilderEvents% :
>: ;!
_featureBuilderEvents< Q
;Q R
public 
FeaturesProvider 
(  
IEnumerable  +
<+ ,!
IFeatureBuilderEvents, A
>A B 
featureBuilderEventsC W
)W X
{ 	!
_featureBuilderEvents !
=" # 
featureBuilderEvents$ 8
;8 9
} 	
public 
IEnumerable 
< 
IFeatureInfo '
>' (
GetFeatures) 4
(4 5
IExtensionInfo 
extensionInfo (
,( )
IManifestInfo 
manifestInfo &
)& '
{ 	
var 
featuresInfos 
= 
new  #
List$ (
<( )
IFeatureInfo) 5
>5 6
(6 7
)7 8
;8 9
var 
features 
= 
manifestInfo '
.' (

ModuleInfo( 2
.2 3
Features3 ;
.; <
ToList< B
(B C
)C D
;D E
if 
( 
features 
. 
Count 
>  
$num! "
)" #
{ 
foreach 
( 
var 
feature $
in% '
features( 0
)0 1
{ 
if 
( 
String 
. 
IsNullOrWhiteSpace 1
(1 2
feature2 9
.9 :
Id: <
)< =
)= >
{ 
throw   
new   !
ArgumentException  " 3
(  3 4
$"!! J
>A feature is missing a mandatory 'Id' property in the Module '!! \
{!!\ ]
extensionInfo!!] j
.!!j k
Id!!k m
}!!m n
'!!n o
"!!o p
)!!p q
;!!q r
}"" 
var$$ 
	featureId$$ !
=$$" #
feature$$$ +
.$$+ ,
Id$$, .
;$$. /
var%% 
featureName%% #
=%%$ %
feature%%& -
.%%- .
Name%%. 2
??%%3 5
feature%%6 =
.%%= >
Id%%> @
;%%@ A
var''  
featureDependencyIds'' ,
=''- .
feature''/ 6
.''6 7
Dependencies''7 C
.(( 
Select(( 
(((  
e((  !
=>((" $
e((% &
.((& '
Trim((' +
(((+ ,
)((, -
)((- .
.((. /
ToArray((/ 6
(((6 7
)((7 8
;((8 9
if** 
(** 
!** 
int** 
.** 
TryParse** %
(**% &
feature**& -
.**- .
Priority**. 6
??**7 9
manifestInfo**: F
.**F G

ModuleInfo**G Q
.**Q R
Priority**R Z
,**Z [
out**\ _
int**` c
featurePriority**d s
)**s t
)**t u
{++ 
featurePriority,, '
=,,( )
$num,,* +
;,,+ ,
}-- 
var// 
featureCategory// '
=//( )
feature//* 1
.//1 2
Category//2 :
??//; =
manifestInfo//> J
.//J K

ModuleInfo//K U
.//U V
Category//V ^
;//^ _
var00 
featureDescription00 *
=00+ ,
feature00- 4
.004 5
Description005 @
??00A C
manifestInfo00D P
.00P Q

ModuleInfo00Q [
.00[ \
Description00\ g
;00g h
var11 $
featureDefaultTenantOnly11 0
=111 2
feature113 :
.11: ;
DefaultTenantOnly11; L
;11L M
var22 "
featureIsAlwaysEnabled22 .
=22/ 0
feature221 8
.228 9
IsAlwaysEnabled229 H
;22H I
var44 
context44 
=44  !
new44" %"
FeatureBuildingContext44& <
{55 
	FeatureId66 !
=66" #
	featureId66$ -
,66- .
FeatureName77 #
=77$ %
featureName77& 1
,771 2
Category88  
=88! "
featureCategory88# 2
,882 3
Description99 #
=99$ %
featureDescription99& 8
,998 9
ExtensionInfo:: %
=::& '
extensionInfo::( 5
,::5 6
ManifestInfo;; $
=;;% &
manifestInfo;;' 3
,;;3 4
Priority<<  
=<<! "
featurePriority<<# 2
,<<2 3 
FeatureDependencyIds== ,
===- . 
featureDependencyIds==/ C
,==C D
DefaultTenantOnly>> )
=>>* +$
featureDefaultTenantOnly>>, D
,>>D E
IsAlwaysEnabled?? '
=??( )"
featureIsAlwaysEnabled??* @
}@@ 
;@@ 
foreachBB 
(BB 
varBB  
builderBB! (
inBB) +!
_featureBuilderEventsBB, A
)BBA B
{CC 
builderDD 
.DD  
BuildingDD  (
(DD( )
contextDD) 0
)DD0 1
;DD1 2
}EE 
varGG 
featureInfoGG #
=GG$ %
newGG& )
FeatureInfoGG* 5
(GG5 6
	featureIdHH !
,HH! "
featureNameII #
,II# $
featurePriorityJJ '
,JJ' (
featureCategoryKK '
,KK' (
featureDescriptionLL *
,LL* +
extensionInfoMM %
,MM% & 
featureDependencyIdsNN ,
,NN, -$
featureDefaultTenantOnlyOO 0
,OO0 1"
featureIsAlwaysEnabledPP .
)PP. /
;PP/ 0
foreachRR 
(RR 
varRR  
builderRR! (
inRR) +!
_featureBuilderEventsRR, A
)RRA B
{SS 
builderTT 
.TT  
BuiltTT  %
(TT% &
featureInfoTT& 1
)TT1 2
;TT2 3
}UU 
featuresInfosWW !
.WW! "
AddWW" %
(WW% &
featureInfoWW& 1
)WW1 2
;WW2 3
}XX 
}YY 
elseZZ 
{[[ 
var]] 
	featureId]] 
=]] 
extensionInfo]]  -
.]]- .
Id]]. 0
;]]0 1
var^^ 
featureName^^ 
=^^  !
manifestInfo^^" .
.^^. /
Name^^/ 3
;^^3 4
var``  
featureDependencyIds`` (
=``) *
manifestInfo``+ 7
.``7 8

ModuleInfo``8 B
.``B C
Dependencies``C O
.aa 
Selectaa 
(aa 
eaa 
=>aa  
eaa! "
.aa" #
Trimaa# '
(aa' (
)aa( )
)aa) *
.aa* +
ToArrayaa+ 2
(aa2 3
)aa3 4
;aa4 5
ifcc 
(cc 
!cc 
intcc 
.cc 
TryParsecc !
(cc! "
manifestInfocc" .
.cc. /

ModuleInfocc/ 9
.cc9 :
Prioritycc: B
,ccB C
outccD G
intccH K
featurePriorityccL [
)cc[ \
)cc\ ]
{dd 
featurePriorityee #
=ee$ %
$numee& '
;ee' (
}ff 
varhh 
featureCategoryhh #
=hh$ %
manifestInfohh& 2
.hh2 3

ModuleInfohh3 =
.hh= >
Categoryhh> F
;hhF G
varii 
featureDescriptionii &
=ii' (
manifestInfoii) 5
.ii5 6

ModuleInfoii6 @
.ii@ A
DescriptioniiA L
;iiL M
varjj $
featureDefaultTenantOnlyjj ,
=jj- .
manifestInfojj/ ;
.jj; <

ModuleInfojj< F
.jjF G
DefaultTenantOnlyjjG X
;jjX Y
varkk "
featureIsAlwaysEnabledkk *
=kk+ ,
manifestInfokk- 9
.kk9 :

ModuleInfokk: D
.kkD E
IsAlwaysEnabledkkE T
;kkT U
varmm 
contextmm 
=mm 
newmm !"
FeatureBuildingContextmm" 8
{nn 
	FeatureIdoo 
=oo 
	featureIdoo  )
,oo) *
FeatureNamepp 
=pp  !
featureNamepp" -
,pp- .
Categoryqq 
=qq 
featureCategoryqq .
,qq. /
Descriptionrr 
=rr  !
featureDescriptionrr" 4
,rr4 5
ExtensionInfoss !
=ss" #
extensionInfoss$ 1
,ss1 2
ManifestInfott  
=tt! "
manifestInfott# /
,tt/ 0
Priorityuu 
=uu 
featurePriorityuu .
,uu. / 
FeatureDependencyIdsvv (
=vv) * 
featureDependencyIdsvv+ ?
,vv? @
DefaultTenantOnlyww %
=ww& '$
featureDefaultTenantOnlyww( @
,ww@ A
IsAlwaysEnabledxx #
=xx$ %"
featureIsAlwaysEnabledxx& <
}yy 
;yy 
foreach{{ 
({{ 
var{{ 
builder{{ $
in{{% '!
_featureBuilderEvents{{( =
){{= >
{|| 
builder}} 
.}} 
Building}} $
(}}$ %
context}}% ,
)}}, -
;}}- .
}~~ 
var
ÄÄ 
featureInfo
ÄÄ 
=
ÄÄ  !
new
ÄÄ" %
FeatureInfo
ÄÄ& 1
(
ÄÄ1 2
context
ÅÅ 
.
ÅÅ 
	FeatureId
ÅÅ %
,
ÅÅ% &
context
ÇÇ 
.
ÇÇ 
FeatureName
ÇÇ '
,
ÇÇ' (
context
ÉÉ 
.
ÉÉ 
Priority
ÉÉ $
,
ÉÉ$ %
context
ÑÑ 
.
ÑÑ 
Category
ÑÑ $
,
ÑÑ$ %
context
ÖÖ 
.
ÖÖ 
Description
ÖÖ '
,
ÖÖ' (
context
ÜÜ 
.
ÜÜ 
ExtensionInfo
ÜÜ )
,
ÜÜ) *
context
áá 
.
áá "
FeatureDependencyIds
áá 0
,
áá0 1
context
àà 
.
àà 
DefaultTenantOnly
àà -
,
àà- .
context
ââ 
.
ââ 
IsAlwaysEnabled
ââ +
)
ââ+ ,
;
ââ, -
foreach
ãã 
(
ãã 
var
ãã 
builder
ãã $
in
ãã% '#
_featureBuilderEvents
ãã( =
)
ãã= >
{
åå 
builder
çç 
.
çç 
Built
çç !
(
çç! "
featureInfo
çç" -
)
çç- .
;
çç. /
}
éé 
featuresInfos
êê 
.
êê 
Add
êê !
(
êê! "
featureInfo
êê" -
)
êê- .
;
êê. /
}
ëë 
return
ìì 
featuresInfos
ìì  
;
ìì  !
}
îî 	
}
ïï 
}ññ û
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\TypeFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class 
TypeFeatureProvider $
:% & 
ITypeFeatureProvider' ;
{ 
private		 
readonly		  
ConcurrentDictionary		 -
<		- .
Type		. 2
,		2 3
IFeatureInfo		4 @
>		@ A
	_features		B K
=

 
new

  
ConcurrentDictionary

 &
<

& '
Type

' +
,

+ ,
IFeatureInfo

- 9
>

9 :
(

: ;
)

; <
;

< =
public 
IFeatureInfo #
GetFeatureForDependency 3
(3 4
Type4 8

dependency9 C
)C D
{ 	
IFeatureInfo 
feature  
=! "
null# '
;' (
if 
( 
	_features 
. 
TryGetValue %
(% &

dependency& 0
,0 1
out2 5
feature6 =
)= >
)> ?
{ 
return 
feature 
; 
} 
throw 
new %
InvalidOperationException /
(/ 0
$"0 2/
#Could not resolve feature for type 2 U
{U V

dependencyV `
.` a
Namea e
}e f
"f g
)g h
;h i
} 	
public 
void 
TryAdd 
( 
Type 
type  $
,$ %
IFeatureInfo& 2
feature3 :
): ;
{ 	
	_features 
. 
TryAdd 
( 
type !
,! "
feature# *
)* +
;+ ,
} 	
} 
} Û
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Manifests\ManifestInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
	Manifests- 6
{ 
public 

class 
ManifestInfo 
: 
IManifestInfo  -
{ 
public 
ManifestInfo 
( 
ModuleAttribute +

moduleInfo, 6
)6 7
{		 	

ModuleInfo

 
=

 

moduleInfo

 #
;

# $
} 	
public 
bool 
Exists 
=> 

ModuleInfo (
.( )
Exists) /
;/ 0
public 
string 
Name 
=> 

ModuleInfo (
.( )
Name) -
??. 0

ModuleInfo1 ;
.; <
Id< >
;> ?
public 
string 
Description !
=>" $

ModuleInfo% /
./ 0
Description0 ;
;; <
public 
string 
Type 
=> 

ModuleInfo (
.( )
Type) -
;- .
public 
string 
Author 
=> 

ModuleInfo  *
.* +
Author+ 1
;1 2
public 
string 
Website 
=>  

ModuleInfo! +
.+ ,
Website, 3
;3 4
public 
string 
Version 
=>  

ModuleInfo! +
.+ ,
Version, 3
;3 4
public 
IEnumerable 
< 
string !
>! "
Tags# '
=>( *

ModuleInfo+ 5
.5 6
Tags6 :
;: ;
public 
ModuleAttribute 

ModuleInfo )
{* +
get, /
;/ 0
}1 2
} 
} ¬
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public		 
static		 
IServiceCollection		 (#
AddExtensionManagerHost		) @
(		@ A
this		A E
IServiceCollection		F X
services		Y a
)		a b
{

 	
services 
. 
AddSingleton !
<! "
IExtensionManager" 3
,3 4
ExtensionManager5 E
>E F
(F G
)G H
;H I
{ 
services 
. 
AddSingleton %
<% & 
ITypeFeatureProvider& :
,: ;
TypeFeatureProvider< O
>O P
(P Q
)Q R
;R S
services 
. 
AddSingleton %
<% &
IFeaturesProvider& 7
,7 8
FeaturesProvider9 I
>I J
(J K
)K L
;L M
services 
. 
AddSingleton %
<% &(
IExtensionDependencyStrategy& B
,B C'
ExtensionDependencyStrategyD _
>_ `
(` a
)a b
;b c
services 
. 
AddSingleton %
<% &&
IExtensionPriorityStrategy& @
,@ A%
ExtensionPriorityStrategyB [
>[ \
(\ ]
)] ^
;^ _
} 
return 
services 
; 
} 	
public 
static 
IServiceCollection (
AddExtensionManager) <
(< =
this= A
IServiceCollectionB T
servicesU ]
)] ^
{ 	
services 
. 
TryAddTransient $
<$ %
IFeatureHash% 1
,1 2
FeatureHash3 >
>> ?
(? @
)@ A
;A B
return 
services 
; 
} 	
} 
} ≤G
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\BclCalendars.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
internal 
static 
class 
BclCalendars &
{ 
public		 
readonly		 
static		 
Calendar		 '
Hebrew		( .
=		/ 0
new		1 4
HebrewCalendar		5 C
(		C D
)		D E
;		E F
public

 
readonly

 
static

 
Calendar

 '
Hijri

( -
=

. /
new

0 3
HijriCalendar

4 A
(

A B
)

B C
;

C D
public 
readonly 
static 
Calendar '
	Gregorian( 1
=2 3
new4 7
GregorianCalendar8 I
(I J
)J K
;K L
public 
readonly 
static 
Calendar '
Julian( .
=/ 0
new1 4
JulianCalendar5 C
(C D
)D E
;E F
public 
readonly 
static 
Calendar '
Persian( /
=0 1
new2 5
PersianCalendar6 E
(E F
)F G
;G H
public 
readonly 
static 
Calendar '
UmAlQura( 0
=1 2
new3 6
UmAlQuraCalendar7 G
(G H
)H I
;I J
public 
static 
CalendarSystem $
GetCalendarByName% 6
(6 7
CalendarName7 C
calendarNameD P
)P Q
{ 	
switch 
( 
calendarName  
)  !
{ 
case 
CalendarName !
.! "
Hebrew" (
:( )
return 
CalendarSystem )
.) *
HebrewCivil* 5
;5 6
case 
CalendarName !
.! "
Hijri" '
:' (
return 
CalendarSystem )
.) *

IslamicBcl* 4
;4 5
case 
CalendarName !
.! "
	Gregorian" +
:+ ,
return 
CalendarSystem )
.) *
Iso* -
;- .
case 
CalendarName !
.! "
Julian" (
:( )
return 
CalendarSystem )
.) *
Julian* 0
;0 1
case 
CalendarName !
.! "
Persian" )
:) *
return 
CultureInfo &
.& '
CurrentUICulture' 7
.7 8
Calendar8 @
.@ A

IsLeapYearA K
(K L
$numL M
)M N
? 
CalendarSystem (
.( )
PersianSimple) 6
: 
CalendarSystem (
.( )
PersianAstronomical) <
;< =
case   
CalendarName   !
.  ! "
UmAlQura  " *
:  * +
return!! 
CalendarSystem!! )
.!!) *
UmAlQura!!* 2
;!!2 3
default"" 
:"" 
throw## 
new## !
NotSupportedException## 3
(##3 4
$"##4 6*
The calendar is not supported.##6 T
"##T U
)##U V
;##V W
}$$ 
}%% 	
public'' 
static'' 
CalendarName'' "
GetCalendarName''# 2
(''2 3
Calendar''3 ;
calendar''< D
)''D E
{(( 	
if)) 
()) 
calendar)) 
==)) 
null))  
)))  !
{** 
throw++ 
new++ !
ArgumentNullException++ /
(++/ 0
nameof++0 6
(++6 7
calendar++7 ?
)++? @
)++@ A
;++A B
},, 
var.. 
calendarType.. 
=.. 
calendar.. '
...' (
GetType..( /
(../ 0
)..0 1
;..1 2
if// 
(// 
calendarType// 
==// 
typeof//  &
(//& '
GregorianCalendar//' 8
)//8 9
)//9 :
{00 
return11 
CalendarName11 #
.11# $
	Gregorian11$ -
;11- .
}22 
else33 
if33 
(33 
calendarType33 !
==33" $
typeof33% +
(33+ ,
HebrewCalendar33, :
)33: ;
)33; <
{44 
return55 
CalendarName55 #
.55# $
Hebrew55$ *
;55* +
}66 
else77 
if77 
(77 
calendarType77 !
==77" $
typeof77% +
(77+ ,
HijriCalendar77, 9
)779 :
)77: ;
{88 
return99 
CalendarName99 #
.99# $
Hijri99$ )
;99) *
}:: 
else;; 
if;; 
(;; 
calendarType;; !
==;;" $
typeof;;% +
(;;+ ,
JulianCalendar;;, :
);;: ;
);;; <
{<< 
return== 
CalendarName== #
.==# $
Julian==$ *
;==* +
}>> 
else?? 
if?? 
(?? 
calendarType?? !
==??" $
typeof??% +
(??+ ,
PersianCalendar??, ;
)??; <
)??< =
{@@ 
returnAA 
CalendarNameAA #
.AA# $
PersianAA$ +
;AA+ ,
}BB 
elseCC 
ifCC 
(CC 
calendarTypeCC !
==CC" $
typeofCC% +
(CC+ ,
UmAlQuraCalendarCC, <
)CC< =
)CC= >
{DD 
returnEE 
CalendarNameEE #
.EE# $
UmAlQuraEE$ ,
;EE, -
}FF 
elseGG 
returnHH 
CalendarNameHH #
.HH# $
UnknownHH$ +
;HH+ ,
}II 	
publicKK 
staticKK 
CalendarSystemKK $#
ConvertToCalendarSystemKK% <
(KK< =
CalendarKK= E
calendarKKF N
)KKN O
{LL 	
ifMM 
(MM 
calendarMM 
==MM 
nullMM  
)MM  !
{NN 
throwOO 
newOO !
ArgumentNullExceptionOO /
(OO/ 0
nameofOO0 6
(OO6 7
calendarOO7 ?
)OO? @
)OO@ A
;OOA B
}PP 
varRR 
calendarTypeRR 
=RR 
calendarRR '
.RR' (
GetTypeRR( /
(RR/ 0
)RR0 1
;RR1 2
ifSS 
(SS 
calendarTypeSS 
==SS 
typeofSS  &
(SS& '
GregorianCalendarSS' 8
)SS8 9
)SS9 :
{TT 
returnUU 
CalendarSystemUU %
.UU% &
IsoUU& )
;UU) *
}VV 
elseWW 
ifWW 
(WW 
calendarTypeWW !
==WW" $
typeofWW% +
(WW+ ,
HebrewCalendarWW, :
)WW: ;
)WW; <
{XX 
returnYY 
CalendarSystemYY %
.YY% &
HebrewCivilYY& 1
;YY1 2
}ZZ 
else[[ 
if[[ 
([[ 
calendarType[[ !
==[[" $
typeof[[% +
([[+ ,
HijriCalendar[[, 9
)[[9 :
)[[: ;
{\\ 
return]] 
CalendarSystem]] %
.]]% &

IslamicBcl]]& 0
;]]0 1
}^^ 
else__ 
if__ 
(__ 
calendarType__ !
==__" $
typeof__% +
(__+ ,
JulianCalendar__, :
)__: ;
)__; <
{`` 
returnaa 
CalendarSystemaa %
.aa% &
Julianaa& ,
;aa, -
}bb 
elsecc 
ifcc 
(cc 
calendarTypecc !
==cc" $
typeofcc% +
(cc+ ,
PersianCalendarcc, ;
)cc; <
)cc< =
{dd 
returnee 
calendaree 
.ee  

IsLeapYearee  *
(ee* +
$numee+ ,
)ee, -
?ff 
CalendarSystemff $
.ff$ %
PersianSimpleff% 2
:gg 
CalendarSystemgg $
.gg$ %
PersianAstronomicalgg% 8
;gg8 9
}hh 
elseii 
ifii 
(ii 
calendarTypeii !
==ii" $
typeofii% +
(ii+ ,
UmAlQuraCalendarii, <
)ii< =
)ii= >
{jj 
returnkk 
CalendarSystemkk %
.kk% &
UmAlQurakk& .
;kk. /
}ll 
elsemm 
returnnn 
nullnn 
;nn 
}oo 	
}pp 
}qq è
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\DefaultCalendarManager.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public

 

class

 "
DefaultCalendarManager

 '
:

( )
ICalendarManager

* :
{ 
private 
readonly 
IEnumerable $
<$ %
ICalendarSelector% 6
>6 7
_calendarSelectors8 J
;J K
private 
CalendarName 
? 
_calendarName +
;+ ,
public "
DefaultCalendarManager %
(% &
IEnumerable& 1
<1 2
ICalendarSelector2 C
>C D
calendarSelectorsE V
)V W
{ 	
_calendarSelectors 
=  
calendarSelectors! 2
;2 3
} 	
public 
async 
Task 
< 
CalendarName &
>& '
GetCurrentCalendar( :
(: ;
); <
{ 	
if 
( 
_calendarName 
. 
HasValue &
)& '
{ 
return 
_calendarName $
.$ %
Value% *
;* +
} 
var!! 
calendarResults!! 
=!!  !
new!!" %
List!!& *
<!!* +"
CalendarSelectorResult!!+ A
>!!A B
(!!B C
)!!C D
;!!D E
foreach## 
(## 
var## 
calendarSelector## )
in##* ,
_calendarSelectors##- ?
)##? @
{$$ 
var%% 
calendarResult%% "
=%%# $
await%%% *
calendarSelector%%+ ;
.%%; <
GetCalendarAsync%%< L
(%%L M
)%%M N
;%%N O
if'' 
('' 
calendarResult'' "
!=''# %
null''& *
)''* +
{(( 
calendarResults)) #
.))# $
Add))$ '
())' (
calendarResult))( 6
)))6 7
;))7 8
}** 
}++ 
if-- 
(-- 
calendarResults-- 
.--  
Count--  %
==--& (
$num--) *
)--* +
{.. 
return// 
CalendarName// #
.//# $
Unknown//$ +
;//+ ,
}00 
else11 
if11 
(11 
calendarResults11 $
.11$ %
Count11% *
>11+ ,
$num11- .
)11. /
{22 
calendarResults33 
.33  
Sort33  $
(33$ %
(33% &
x33& '
,33' (
y33) *
)33* +
=>33, .
y33/ 0
.330 1
Priority331 9
.339 :
	CompareTo33: C
(33C D
x33D E
.33E F
Priority33F N
)33N O
)33O P
;33P Q
}44 
_calendarName66 
=66 
await66 !
calendarResults66" 1
.661 2
First662 7
(667 8
)668 9
.669 :
CalendarName66: F
(66F G
)66G H
;66H I
return88 
_calendarName88  
.88  !
Value88! &
;88& '
}99 	
}:: 
};; ì
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\DefaultCalendarSelector.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public		 

class		 #
DefaultCalendarSelector		 (
:		) *
ICalendarSelector		+ <
{

 
private 
static 
readonly 
Task  $
<$ %"
CalendarSelectorResult% ;
>; <
CalendarResult= K
=L M
Task 
. 

FromResult 
( 
new "
CalendarSelectorResult  6
{ 
Priority 
= 
$num 
, 
CalendarName 
= 
(  
)  !
=>" $
{ 
return 
Task 
.  

FromResult  *
(* +
BclCalendars+ 7
.7 8
GetCalendarName8 G
(G H
CultureInfoH S
.S T
CurrentUICultureT d
.d e
Calendare m
)m n
)n o
;o p
} 
} 
) 
; 
public 
Task 
< "
CalendarSelectorResult *
>* +
GetCalendarAsync, <
(< =
)= >
{ 	
return 
CalendarResult !
;! "
} 	
} 
} €
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\DefaultLocalizationService.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public		 

class		 &
DefaultLocalizationService		 +
:		, - 
ILocalizationService		. B
{

 
private 
static 
readonly 
Task  $
<$ %
string% +
>+ ,
DefaultCulture- ;
=< =
Task> B
.B C

FromResultC M
(M N
CultureInfoN Y
.Y Z
InstalledUICultureZ l
.l m
Namem q
)q r
;r s
private 
static 
readonly 
Task  $
<$ %
string% +
[+ ,
], -
>- .
SupportedCultures/ @
=A B
TaskC G
.G H

FromResultH R
(R S
newS V
[V W
]W X
{Y Z
CultureInfo[ f
.f g
InstalledUICultureg y
.y z
Namez ~
}	 Ä
)
Ä Å
;
Å Ç
public 
Task 
< 
string 
> "
GetDefaultCultureAsync 2
(2 3
)3 4
=>5 7
DefaultCulture8 F
;F G
public 
Task 
< 
string 
[ 
] 
> %
GetSupportedCulturesAsync 7
(7 8
)8 9
=>: <
SupportedCultures= N
;N O
} 
} •,
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\NullHtmlLocalizerFactory.cs
	namespace 	
OrchardCore
 
. 
Localization "
{		 
public 

class $
NullHtmlLocalizerFactory )
:* +!
IHtmlLocalizerFactory, A
{ 
public 
IHtmlLocalizer 
Create $
($ %
string% +
baseName, 4
,4 5
string6 <
location= E
)E F
=>G I
NullLocalizerJ W
.W X
InstanceX `
;` a
public 
IHtmlLocalizer 
Create $
($ %
Type% )
resourceSource* 8
)8 9
=>: <
NullLocalizer= J
.J K
InstanceK S
;S T
private 
class 
NullLocalizer #
:$ %
IHtmlLocalizer& 4
{ 	
private 
static 
readonly #%
PluralizationRuleDelegate$ =
_defaultPluralRule> P
=Q R
nS T
=>U W
(X Y
nY Z
==[ ]
$num^ _
)_ `
?a b
$numc d
:e f
$numg h
;h i
public 
static 
NullLocalizer '
Instance( 0
{1 2
get3 6
;6 7
}8 9
=: ;
new< ?
NullLocalizer@ M
(M N
)N O
;O P
public 
IEnumerable 
< 
LocalizedString .
>. /
GetAllStrings0 =
(= >
bool> B!
includeParentCulturesC X
)X Y
=> 

Enumerable 
. 
Empty #
<# $
LocalizedString$ 3
>3 4
(4 5
)5 6
;6 7
public   
LocalizedHtmlString   &
this  ' +
[  + ,
string  , 2
name  3 7
]  7 8
=>  9 ;
new  < ?
LocalizedHtmlString  @ S
(  S T
name  T X
,  X Y
name  Z ^
,  ^ _
true  ` d
)  d e
;  e f
public"" 
LocalizedHtmlString"" &
this""' +
[""+ ,
string"", 2
name""3 7
,""7 8
params""9 ?
object""@ F
[""F G
]""G H
	arguments""I R
]""R S
{## 
get$$ 
{%% 
var&& 
translation&& #
=&&$ %
name&&& *
;&&* +
if(( 
((( 
	arguments(( !
.((! "
Length((" (
==(() +
$num((, -
&&((. 0
	arguments((1 :
[((: ;
$num((; <
]((< =
is((> @!
PluralizationArgument((A V
pluralArgument((W e
)((e f
{)) 
translation** #
=**$ %
pluralArgument**& 4
.**4 5
Forms**5 :
[**: ;
_defaultPluralRule**; M
(**M N
pluralArgument**N \
.**\ ]
Count**] b
)**b c
]**c d
;**d e
	arguments,, !
=,," #
new,,$ '
object,,( .
[,,. /
pluralArgument,,/ =
.,,= >
	Arguments,,> G
.,,G H
Length,,H N
+,,O P
$num,,Q R
],,R S
;,,S T
	arguments-- !
[--! "
$num--" #
]--# $
=--% &
pluralArgument--' 5
.--5 6
Count--6 ;
;--; <
Array.. 
... 
Copy.. "
(.." #
pluralArgument..# 1
...1 2
	Arguments..2 ;
,..; <
$num..= >
,..> ?
	arguments..@ I
,..I J
$num..K L
,..L M
pluralArgument..N \
...\ ]
	Arguments..] f
...f g
Length..g m
)..m n
;..n o
}// 
return11 
new11 
LocalizedHtmlString11 2
(112 3
name113 7
,117 8
translation119 D
,11D E
false11F K
,11K L
	arguments11M V
)11V W
;11W X
}22 
}33 
public55 
LocalizedString55 "
	GetString55# ,
(55, -
string55- 3
name554 8
)558 9
=>55: <&
NullStringLocalizerFactory66 *
.66* +
NullLocalizer66+ 8
.668 9
Instance669 A
.66A B
	GetString66B K
(66K L
name66L P
)66P Q
;66Q R
public88 
LocalizedString88 "
	GetString88# ,
(88, -
string88- 3
name884 8
,888 9
params88: @
object88A G
[88G H
]88H I
	arguments88J S
)88S T
=>88U W&
NullStringLocalizerFactory99 *
.99* +
NullLocalizer99+ 8
.998 9
Instance999 A
.99A B
	GetString99B K
(99K L
name99L P
,99P Q
	arguments99R [
)99[ \
;99\ ]
[;; 
Obsolete;; 
(;; 
$str;; _
);;_ `
];;` a
public<< 
IHtmlLocalizer<< !
WithCulture<<" -
(<<- .
CultureInfo<<. 9
culture<<: A
)<<A B
=><<C E
Instance<<F N
;<<N O
}== 	
}>> 
}?? –*
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\NullStringLocalizerFactory.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

class &
NullStringLocalizerFactory +
:, -#
IStringLocalizerFactory. E
{ 
public 
IStringLocalizer 
Create  &
(& '
Type' +
resourceSource, :
): ;
=>< >
NullLocalizer? L
.L M
InstanceM U
;U V
public 
IStringLocalizer 
Create  &
(& '
string' -
baseName. 6
,6 7
string8 >
location? G
)G H
=>I K
NullLocalizerL Y
.Y Z
InstanceZ b
;b c
internal 
class 
NullLocalizer $
:% &
IStringLocalizer' 7
{ 	
private 
static 
readonly #%
PluralizationRuleDelegate$ =
_defaultPluralRule> P
=Q R
nS T
=>U W
(X Y
nY Z
==[ ]
$num^ _
)_ `
?a b
$numc d
:e f
$numg h
;h i
public 
static 
NullLocalizer '
Instance( 0
{1 2
get3 6
;6 7
}8 9
=: ;
new< ?
NullLocalizer@ M
(M N
)N O
;O P
public 
LocalizedString "
this# '
[' (
string( .
name/ 3
]3 4
=>5 7
new8 ;
LocalizedString< K
(K L
nameL P
,P Q
nameR V
,V W
falseX ]
)] ^
;^ _
public 
LocalizedString "
this# '
[' (
string( .
name/ 3
,3 4
params5 ;
object< B
[B C
]C D
	argumentsE N
]N O
{ 
get   
{!! 
var"" 
translation"" #
=""$ %
name""& *
;""* +
if$$ 
($$ 
	arguments$$ !
.$$! "
Length$$" (
==$$) +
$num$$, -
&&$$. 0
	arguments$$1 :
[$$: ;
$num$$; <
]$$< =
is$$> @!
PluralizationArgument$$A V
pluralArgument$$W e
)$$e f
{%% 
translation&& #
=&&$ %
pluralArgument&&& 4
.&&4 5
Forms&&5 :
[&&: ;
_defaultPluralRule&&; M
(&&M N
pluralArgument&&N \
.&&\ ]
Count&&] b
)&&b c
]&&c d
;&&d e
	arguments(( !
=((" #
new(($ '
object((( .
[((. /
pluralArgument((/ =
.((= >
	Arguments((> G
.((G H
Length((H N
+((O P
$num((Q R
]((R S
;((S T
	arguments)) !
[))! "
$num))" #
]))# $
=))% &
pluralArgument))' 5
.))5 6
Count))6 ;
;)); <
Array** 
.** 
Copy** "
(**" #
pluralArgument**# 1
.**1 2
	Arguments**2 ;
,**; <
$num**= >
,**> ?
	arguments**@ I
,**I J
$num**K L
,**L M
pluralArgument**N \
.**\ ]
	Arguments**] f
.**f g
Length**g m
)**m n
;**n o
}++ 
translation-- 
=--  !
String--" (
.--( )
Format--) /
(--/ 0
translation--0 ;
,--; <
	arguments--= F
)--F G
;--G H
return// 
new// 
LocalizedString// .
(//. /
name/// 3
,//3 4
translation//5 @
,//@ A
false//B G
)//G H
;//H I
}00 
}11 
public33 
IEnumerable33 
<33 
LocalizedString33 .
>33. /
GetAllStrings330 =
(33= >
bool33> B!
includeParentCultures33C X
)33X Y
=>44 

Enumerable44 
.44 
Empty44 #
<44# $
LocalizedString44$ 3
>443 4
(444 5
)445 6
;446 7
public66 
IStringLocalizer66 #
WithCulture66$ /
(66/ 0
CultureInfo660 ;
culture66< C
)66C D
=>66E G
Instance66H P
;66P Q
public88 
LocalizedString88 "
	GetString88# ,
(88, -
string88- 3
name884 8
)888 9
=>88: <
this88= A
[88A B
name88B F
]88F G
;88G H
public:: 
LocalizedString:: "
	GetString::# ,
(::, -
string::- 3
name::4 8
,::8 9
params::: @
object::A G
[::G H
]::H I
	arguments::J S
)::S T
=>::U W
this::X \
[::\ ]
name::] a
,::a b
	arguments::c l
]::l m
;::m n
};; 	
}<< 
}== ô\
xD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Locking\LocalLock.cs
	namespace		 	
OrchardCore		
 
.		 
Locking		 
{

 
public 

class 
	LocalLock 
: 
IDistributedLock -
,- .

ILocalLock/ 9
,9 :
IDisposable; F
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 

Dictionary #
<# $
string$ *
,* +
	Semaphore, 5
>5 6
_semaphores7 B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
	Semaphore\ e
>e f
(f g
)g h
;h i
public 
	LocalLock 
( 
ILogger  
<  !
	LocalLock! *
>* +
logger, 2
)2 3
{ 	
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
ILocker !
>! "
AcquireLockAsync# 3
(3 4
string4 :
key; >
,> ?
TimeSpan@ H
?H I

expirationJ T
=U V
nullW [
)[ \
{ 	
var 
	semaphore 
=  
GetOrCreateSemaphore 0
(0 1
key1 4
)4 5
;5 6
await   
	semaphore   
.   
Value   !
.  ! "
	WaitAsync  " +
(  + ,
)  , -
;  - .
return"" 
new"" 
Locker"" 
("" 
this"" "
,""" #
	semaphore""$ -
,""- .

expiration""/ 9
)""9 :
;"": ;
}## 	
public)) 
async)) 
Task)) 
<)) 
()) 
ILocker)) "
locker))# )
,))) *
bool))+ /
locked))0 6
)))6 7
>))7 8
TryAcquireLockAsync))9 L
())L M
string))M S
key))T W
,))W X
TimeSpan))Y a
timeout))b i
,))i j
TimeSpan))k s
?))s t

expiration))u 
=
))Ä Å
null
))Ç Ü
)
))Ü á
{** 	
var++ 
	semaphore++ 
=++  
GetOrCreateSemaphore++ 0
(++0 1
key++1 4
)++4 5
;++5 6
if-- 
(-- 
await-- 
	semaphore-- 
.--  
Value--  %
.--% &
	WaitAsync--& /
(--/ 0
timeout--0 7
!=--8 :
TimeSpan--; C
.--C D
MaxValue--D L
?--M N
timeout--O V
:--W X
Timeout--Y `
.--` a
InfiniteTimeSpan--a q
)--q r
)--r s
{.. 
return// 
(// 
new// 
Locker// "
(//" #
this//# '
,//' (
	semaphore//) 2
,//2 3

expiration//4 >
)//> ?
,//? @
true//A E
)//E F
;//F G
}00 
if22 
(22 
_logger22 
.22 
	IsEnabled22 !
(22! "
LogLevel22" *
.22* +
Debug22+ 0
)220 1
)221 2
{33 
_logger44 
.44 

LogWarning44 "
(44" #
$str	44# â
,
44â ä
key55 
,55 
timeout55  
.55  !
ToString55! )
(55) *
)55* +
)55+ ,
;55, -
}66 
return88 
(88 
null88 
,88 
false88 
)88  
;88  !
}99 	
public;; 
Task;; 
<;; 
bool;; 
>;; 
IsLockAcquiredAsync;; -
(;;- .
string;;. 4
key;;5 8
);;8 9
{<< 	
lock== 
(== 
_semaphores== 
)== 
{>> 
if?? 
(?? 
_semaphores?? 
.??  
TryGetValue??  +
(??+ ,
key??, /
,??/ 0
out??1 4
var??5 8
	semaphore??9 B
)??B C
)??C D
{@@ 
returnAA 
TaskAA 
.AA  

FromResultAA  *
(AA* +
	semaphoreAA+ 4
.AA4 5
ValueAA5 :
.AA: ;
CurrentCountAA; G
==AAH J
$numAAK L
)AAL M
;AAM N
}BB 
returnDD 
TaskDD 
.DD 

FromResultDD &
(DD& '
falseDD' ,
)DD, -
;DD- .
}EE 
}FF 	
privateHH 
	SemaphoreHH  
GetOrCreateSemaphoreHH .
(HH. /
stringHH/ 5
keyHH6 9
)HH9 :
{II 	
lockJJ 
(JJ 
_semaphoresJJ 
)JJ 
{KK 
ifLL 
(LL 
_semaphoresLL 
.LL  
TryGetValueLL  +
(LL+ ,
keyLL, /
,LL/ 0
outLL1 4
varLL5 8
	semaphoreLL9 B
)LLB C
)LLC D
{MM 
	semaphoreNN 
.NN 
RefCountNN &
++NN& (
;NN( )
}OO 
elsePP 
{QQ 
	semaphoreRR 
=RR 
newRR  #
	SemaphoreRR$ -
(RR- .
keyRR. 1
,RR1 2
newRR3 6
SemaphoreSlimRR7 D
(RRD E
$numRRE F
)RRF G
)RRG H
;RRH I
_semaphoresSS 
[SS  
keySS  #
]SS# $
=SS% &
	semaphoreSS' 0
;SS0 1
}TT 
returnVV 
	semaphoreVV  
;VV  !
}WW 
}XX 	
privateZZ 
classZZ 
	SemaphoreZZ 
{[[ 	
public\\ 
	Semaphore\\ 
(\\ 
string\\ #
key\\$ '
,\\' (
SemaphoreSlim\\) 6
value\\7 <
)\\< =
{]] 
Key^^ 
=^^ 
key^^ 
;^^ 
Value__ 
=__ 
value__ 
;__ 
RefCount`` 
=`` 
$num`` 
;`` 
}aa 
internalcc 
stringcc 
Keycc 
{cc  !
getcc" %
;cc% &
}cc' (
internaldd 
SemaphoreSlimdd "
Valuedd# (
{dd) *
getdd+ .
;dd. /
}dd0 1
internalee 
intee 
RefCountee !
{ee" #
getee$ '
;ee' (
setee) ,
;ee, -
}ee. /
}ff 	
privatehh 
classhh 
Lockerhh 
:hh 
ILockerhh &
{ii 	
privatejj 
readonlyjj 
	LocalLockjj &

_localLockjj' 1
;jj1 2
privatekk 
readonlykk 
	Semaphorekk &

_semaphorekk' 1
;kk1 2
privatell 
readonlyll #
CancellationTokenSourcell 4
_ctsll5 9
;ll9 :
privatemm 
volatilemm 
intmm  
	_releasedmm! *
;mm* +
privatenn 
boolnn 
	_disposednn "
;nn" #
publicpp 
Lockerpp 
(pp 
	LocalLockpp #
	localLockpp$ -
,pp- .
	Semaphorepp/ 8
	semaphorepp9 B
,ppB C
TimeSpanppD L
?ppL M

expirationppN X
)ppX Y
{qq 

_localLockrr 
=rr 
	localLockrr &
;rr& '

_semaphoress 
=ss 
	semaphoress &
;ss& '
ifuu 
(uu 

expirationuu 
.uu 
HasValueuu '
&&uu( *

expirationuu+ 5
.uu5 6
Valueuu6 ;
!=uu< >
TimeSpanuu? G
.uuG H
MaxValueuuH P
)uuP Q
{vv 
_ctsww 
=ww 
newww #
CancellationTokenSourceww 6
(ww6 7

expirationww7 A
.wwA B
ValuewwB G
)wwG H
;wwH I
_ctsxx 
.xx 
Tokenxx 
.xx 
Registerxx '
(xx' (
Releasexx( /
)xx/ 0
;xx0 1
}yy 
}zz 
private|| 
void|| 
Release||  
(||  !
)||! "
{}} 
if~~ 
(~~ 
Interlocked~~ 
.~~  
Exchange~~  (
(~~( )
ref~~) ,
	_released~~- 6
,~~6 7
$num~~8 9
)~~9 :
==~~; =
$num~~> ?
)~~? @
{ 
lock
ÄÄ 
(
ÄÄ 

_localLock
ÄÄ $
.
ÄÄ$ %
_semaphores
ÄÄ% 0
)
ÄÄ0 1
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 

_localLock
ÇÇ &
.
ÇÇ& '
_semaphores
ÇÇ' 2
.
ÇÇ2 3
TryGetValue
ÇÇ3 >
(
ÇÇ> ?

_semaphore
ÇÇ? I
.
ÇÇI J
Key
ÇÇJ M
,
ÇÇM N
out
ÇÇO R
var
ÇÇS V
	semaphore
ÇÇW `
)
ÇÇ` a
)
ÇÇa b
{
ÉÉ 
	semaphore
ÑÑ %
.
ÑÑ% &
RefCount
ÑÑ& .
--
ÑÑ. 0
;
ÑÑ0 1
if
ÜÜ 
(
ÜÜ  
	semaphore
ÜÜ  )
.
ÜÜ) *
RefCount
ÜÜ* 2
==
ÜÜ3 5
$num
ÜÜ6 7
)
ÜÜ7 8
{
áá 

_localLock
àà  *
.
àà* +
_semaphores
àà+ 6
.
àà6 7
Remove
àà7 =
(
àà= >

_semaphore
àà> H
.
ààH I
Key
ààI L
)
ààL M
;
ààM N
}
ââ 
}
ää 
}
ãã 

_semaphore
çç 
.
çç 
Value
çç $
.
çç$ %
Release
çç% ,
(
çç, -
)
çç- .
;
çç. /
}
éé 
}
èè 
public
ëë 
	ValueTask
ëë 
DisposeAsync
ëë )
(
ëë) *
)
ëë* +
{
íí 
Dispose
ìì 
(
ìì 
)
ìì 
;
ìì 
return
îî 
default
îî 
;
îî 
}
ïï 
public
óó 
void
óó 
Dispose
óó 
(
óó  
)
óó  !
{
òò 
if
ôô 
(
ôô 
	_disposed
ôô 
)
ôô 
{
öö 
return
õõ 
;
õõ 
}
úú 
	_disposed
ûû 
=
ûû 
true
ûû  
;
ûû  !
_cts
†† 
?
†† 
.
†† 
Dispose
†† 
(
†† 
)
†† 
;
††  
Release
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 
}
§§ 	
public
¶¶ 
void
¶¶ 
Dispose
¶¶ 
(
¶¶ 
)
¶¶ 
{
ßß 	
var
®® 

semaphores
®® 
=
®® 
_semaphores
®® (
.
®®( )
Values
®®) /
.
®®/ 0
ToArray
®®0 7
(
®®7 8
)
®®8 9
;
®®9 :
foreach
™™ 
(
™™ 
var
™™ 
	semaphore
™™ "
in
™™# %

semaphores
™™& 0
)
™™0 1
{
´´ 
	semaphore
¨¨ 
.
¨¨ 
Value
¨¨ 
.
¨¨  
Dispose
¨¨  '
(
¨¨' (
)
¨¨( )
;
¨¨) *
}
≠≠ 
}
ÆÆ 	
}
ØØ 
}∞∞ ›
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\DefaultOrchardHelper.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class  
DefaultOrchardHelper %
:& '
IOrchardHelper( 6
{ 
public  
DefaultOrchardHelper #
(# $ 
IHttpContextAccessor$ 8
httpContextAccessor9 L
)L M
{ 	
HttpContext		 
=		 
httpContextAccessor		 -
.		- .
HttpContext		. 9
;		9 :
}

 	
public 
HttpContext 
HttpContext &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ¨
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\ApplicationBuilderExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Builder &
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
 (
ApplicationBuilderExtensions

 4
{ 
public 
static 
IApplicationBuilder )
UseOrchardCore* 8
(8 9
this9 =
IApplicationBuilder> Q
appR U
,U V
ActionW ]
<] ^
IApplicationBuilder^ q
>q r
	configures |
=} ~
null	 É
)
É Ñ
{ 	
var 
env 
= 
app 
. 
ApplicationServices -
.- .
GetRequiredService. @
<@ A
IHostEnvironmentA Q
>Q R
(R S
)S T
;T U
var 

appContext 
= 
app  
.  !
ApplicationServices! 4
.4 5
GetRequiredService5 G
<G H
IApplicationContextH [
>[ \
(\ ]
)] ^
;^ _
env 
. #
ContentRootFileProvider '
=( )
new* -!
CompositeFileProvider. C
(C D
new &
ModuleEmbeddedFileProvider .
(. /

appContext/ 9
)9 :
,: ;
env 
. #
ContentRootFileProvider +
)+ ,
;, -
app 
. 
ApplicationServices #
.# $
GetRequiredService$ 6
<6 7
IWebHostEnvironment7 J
>J K
(K L
)L M
. #
ContentRootFileProvider (
=) *
env+ .
.. /#
ContentRootFileProvider/ F
;F G
app 
. 
UseMiddleware 
< 
PoweredByMiddleware 1
>1 2
(2 3
)3 4
;4 5
app   
.   
UseMiddleware   
<   ,
 ModularTenantContainerMiddleware   >
>  > ?
(  ? @
)  @ A
;  A B
	configure"" 
?"" 
."" 
Invoke"" 
("" 
app"" !
)""! "
;""" #
app$$ 
.$$ 
UseMiddleware$$ 
<$$ )
ModularTenantRouterMiddleware$$ ;
>$$; <
($$< =
app$$= @
.$$@ A
ServerFeatures$$A O
)$$O P
;$$P Q
return&& 
app&& 
;&& 
}'' 	
}(( 
})) ù5
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\OrchardCoreBuilderExtensions.cs
	namespace

 	
	Microsoft


 
.

 

Extensions

 
.

 
DependencyInjection

 2
{ 
public 

static 
partial 
class (
OrchardCoreBuilderExtensions  <
{ 
public 
static 
OrchardCoreBuilder (
AddGlobalFeatures) :
(: ;
this; ?
OrchardCoreBuilder@ R
builderS Z
,Z [
params\ b
stringc i
[i j
]j k

featureIdsl v
)v w
{ 	
foreach 
( 
var 
	featureId "
in# %

featureIds& 0
)0 1
{ 
builder 
. 
ApplicationServices +
.+ ,
AddTransient, 8
(8 9
sp9 ;
=>< >
new? B
ShellFeatureC O
(O P
	featureIdP Y
,Y Z
alwaysEnabled[ h
:h i
truej n
)n o
)o p
;p q
} 
return 
builder 
; 
} 	
public 
static 
OrchardCoreBuilder (
AddTenantFeatures) :
(: ;
this; ?
OrchardCoreBuilder@ R
builderS Z
,Z [
params\ b
stringc i
[i j
]j k

featureIdsl v
)v w
{ 	
builder   
.   
ConfigureServices   %
(  % &
services  & .
=>  / 1
{!! 
foreach"" 
("" 
var"" 
	featureId"" &
in""' )

featureIds""* 4
)""4 5
{## 
services$$ 
.$$ 
AddTransient$$ )
($$) *
sp$$* ,
=>$$- /
new$$0 3
ShellFeature$$4 @
($$@ A
	featureId$$A J
,$$J K
alwaysEnabled$$L Y
:$$Y Z
true$$[ _
)$$_ `
)$$` a
;$$a b
}%% 
}&& 
)&& 
;&& 
return(( 
builder(( 
;(( 
})) 	
public// 
static// 
OrchardCoreBuilder// (
AddSetupFeatures//) 9
(//9 :
this//: >
OrchardCoreBuilder//? Q
builder//R Y
,//Y Z
params//[ a
string//b h
[//h i
]//i j

featureIds//k u
)//u v
{00 	
foreach11 
(11 
var11 
	featureId11 "
in11# %

featureIds11& 0
)110 1
{22 
builder33 
.33 
ApplicationServices33 +
.33+ ,
AddTransient33, 8
(338 9
sp339 ;
=>33< >
new33? B
ShellFeature33C O
(33O P
	featureId33P Y
)33Y Z
)33Z [
;33[ \
}44 
return66 
builder66 
;66 
}77 	
public<< 
static<< 
OrchardCoreBuilder<< (
WithTenants<<) 4
(<<4 5
this<<5 9
OrchardCoreBuilder<<: L
builder<<M T
)<<T U
{== 	
var>> 
services>> 
=>> 
builder>> "
.>>" #
ApplicationServices>># 6
;>>6 7
services@@ 
.@@ 
AddSingleton@@ !
<@@! ""
IShellsSettingsSources@@" 8
,@@8 9!
ShellsSettingsSources@@: O
>@@O P
(@@P Q
)@@Q R
;@@R S
servicesAA 
.AA 
AddSingletonAA !
<AA! "'
IShellsConfigurationSourcesAA" =
,AA= >&
ShellsConfigurationSourcesAA? Y
>AAY Z
(AAZ [
)AA[ \
;AA\ ]
servicesBB 
.BB 
AddSingletonBB !
<BB! "&
IShellConfigurationSourcesBB" <
,BB< =%
ShellConfigurationSourcesBB> W
>BBW X
(BBX Y
)BBY Z
;BBZ [
servicesCC 
.CC 
AddTransientCC !
<CC! "
IConfigureOptionsCC" 3
<CC3 4
ShellOptionsCC4 @
>CC@ A
,CCA B
ShellOptionsSetupCCC T
>CCT U
(CCU V
)CCV W
;CCW X
servicesDD 
.DD 
AddSingletonDD !
<DD! "!
IShellSettingsManagerDD" 7
,DD7 8 
ShellSettingsManagerDD9 M
>DDM N
(DDN O
)DDO P
;DDP Q
returnFF 
builderFF 
.FF 
ConfigureServicesFF ,
(FF, -
sFF- .
=>FF/ 1
{GG 
sHH 
.HH 
	AddScopedHH 
<HH #
IShellDescriptorManagerHH 3
,HH3 44
(ConfiguredFeaturesShellDescriptorManagerHH5 ]
>HH] ^
(HH^ _
)HH_ `
;HH` a
}II 
)II 
;II 
}JJ 	
publicOO 
staticOO 
OrchardCoreBuilderOO (
WithFeaturesOO) 5
(OO5 6
thisOO6 :
OrchardCoreBuilderOO; M
builderOON U
,OOU V
paramsOOW ]
stringOO^ d
[OOd e
]OOe f

featureIdsOOg q
)OOq r
{PP 	
foreachQQ 
(QQ 
varQQ 
	featureIdQQ "
inQQ# %

featureIdsQQ& 0
)QQ0 1
{RR 
builderSS 
.SS 
ApplicationServicesSS +
.SS+ ,
AddTransientSS, 8
(SS8 9
spSS9 ;
=>SS< >
newSS? B
ShellFeatureSSC O
(SSO P
	featureIdSSP Y
)SSY Z
)SSZ [
;SS[ \
}TT 
builderVV 
.VV 
ApplicationServicesVV '
.VV' ($
AddSetFeaturesDescriptorVV( @
(VV@ A
)VVA B
;VVB C
returnXX 
builderXX 
;XX 
}YY 	
public^^ 
static^^ 
OrchardCoreBuilder^^ ( 
AddBackgroundService^^) =
(^^= >
this^^> B
OrchardCoreBuilder^^C U
builder^^V ]
)^^] ^
{__ 	
builder`` 
.`` 
ApplicationServices`` '
.``' (
AddSingleton``( 4
<``4 5
IHostedService``5 C
,``C D$
ModularBackgroundService``E ]
>``] ^
(``^ _
)``_ `
;``` a
returnbb 
builderbb 
;bb 
}cc 	
}dd 
}ee ê
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\PoweredByOrchardCoreExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Builder &
{ 
public 

static 
class *
PoweredByOrchardCoreExtensions 6
{ 
public 
static 
IApplicationBuilder )#
UsePoweredByOrchardCore* A
(A B
thisB F
IApplicationBuilderG Z
app[ ^
,^ _
bool` d
enablede l
)l m
{ 	
var 
options 
= 
app 
. 
ApplicationServices 1
.1 2
GetRequiredService2 D
<D E'
IPoweredByMiddlewareOptionsE `
>` a
(a b
)b c
;c d
options 
. 
Enabled 
= 
enabled %
;% &
return 
app 
; 
} 	
public 
static 
IApplicationBuilder )
UsePoweredBy* 6
(6 7
this7 ;
IApplicationBuilder< O
appP S
,S T
boolU Y
enabledZ a
,a b
stringc i
headerValuej u
)u v
{   	
var!! 
options!! 
=!! 
app!! 
.!! 
ApplicationServices!! 1
.!!1 2
GetRequiredService!!2 D
<!!D E'
IPoweredByMiddlewareOptions!!E `
>!!` a
(!!a b
)!!b c
;!!c d
options"" 
."" 
Enabled"" 
="" 
enabled"" %
;""% &
options## 
.## 
HeaderValue## 
=##  !
headerValue##" -
;##- .
return%% 
app%% 
;%% 
}&& 	
}'' 
}(( É
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\RunningShellTableExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class '
RunningShellTableExtensions 3
{ 
public		 
static		 
ShellSettings		 #
Match		$ )
(		) *
this		* .
IRunningShellTable		/ A
table		B G
,		G H
HttpContext		I T
httpContext		U `
)		` a
{

 	
if 
( 
httpContext 
== 
null #
)# $
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
httpContext7 B
)B C
)C D
;D E
} 
var 
httpRequest 
= 
httpContext )
.) *
Request* 1
;1 2
return 
table 
. 
Match 
( 
httpRequest *
.* +
Host+ /
,/ 0
httpRequest1 <
.< =
Path= A
,A B
trueC G
)G H
;H I
} 	
} 
} ´˜
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\ServiceCollectionExtensions.cs
	namespace"" 	
	Microsoft""
 
."" 

Extensions"" 
."" 
DependencyInjection"" 2
{## 
public$$ 

static$$ 
class$$ '
ServiceCollectionExtensions$$ 3
{%% 
public)) 
static)) 
OrchardCoreBuilder)) (
AddOrchardCore))) 7
())7 8
this))8 <
IServiceCollection))= O
services))P X
)))X Y
{** 	
if++ 
(++ 
services++ 
==++ 
null++  
)++  !
{,, 
throw-- 
new-- !
ArgumentNullException-- /
(--/ 0
nameof--0 6
(--6 7
services--7 ?
)--? @
)--@ A
;--A B
}.. 
var22 
builder22 
=22 
services22 "
.33 
LastOrDefault33 
(33 
d33  
=>33! #
d33$ %
.33% &
ServiceType33& 1
==332 4
typeof335 ;
(33; <
OrchardCoreBuilder33< N
)33N O
)33O P
?33P Q
.44 "
ImplementationInstance44 '
as44( *
OrchardCoreBuilder44+ =
;44= >
if66 
(66 
builder66 
==66 
null66 
)66  
{77 
builder88 
=88 
new88 
OrchardCoreBuilder88 0
(880 1
services881 9
)889 :
;88: ;
services99 
.99 
AddSingleton99 %
(99% &
builder99& -
)99- .
;99. /
AddDefaultServices;; "
(;;" #
builder;;# *
);;* +
;;;+ ,
AddShellServices<<  
(<<  !
services<<! )
)<<) *
;<<* + 
AddExtensionServices== $
(==$ %
builder==% ,
)==, -
;==- .
AddStaticFiles>> 
(>> 
builder>> &
)>>& '
;>>' (

AddRouting@@ 
(@@ 
builder@@ "
)@@" #
;@@# $
AddAntiForgeryAA 
(AA 
builderAA &
)AA& '
;AA' (3
'AddSameSiteCookieBackwardsCompatibilityBB 7
(BB7 8
builderBB8 ?
)BB? @
;BB@ A
AddAuthenticationCC !
(CC! "
builderCC" )
)CC) *
;CC* +
AddDataProtectionDD !
(DD! "
builderDD" )
)DD) *
;DD* +
servicesGG 
.GG 
AddSingletonGG %
(GG% &
servicesGG& .
)GG. /
;GG/ 0
}HH 
returnJJ 
builderJJ 
;JJ 
}KK 	
publicQQ 
staticQQ 
IServiceCollectionQQ (
AddOrchardCoreQQ) 7
(QQ7 8
thisQQ8 <
IServiceCollectionQQ= O
servicesQQP X
,QQX Y
ActionQQZ `
<QQ` a
OrchardCoreBuilderQQa s
>QQs t
	configureQQu ~
)QQ~ 
{RR 	
varSS 
builderSS 
=SS 
servicesSS "
.SS" #
AddOrchardCoreSS# 1
(SS1 2
)SS2 3
;SS3 4
	configureUU 
?UU 
.UU 
InvokeUU 
(UU 
builderUU %
)UU% &
;UU& '
returnWW 
servicesWW 
;WW 
}XX 	
privateZZ 
staticZZ 
voidZZ 
AddDefaultServicesZZ .
(ZZ. /
OrchardCoreBuilderZZ/ A
builderZZB I
)ZZI J
{[[ 	
var\\ 
services\\ 
=\\ 
builder\\ "
.\\" #
ApplicationServices\\# 6
;\\6 7
services^^ 
.^^ 

AddLogging^^ 
(^^  
)^^  !
;^^! "
services__ 
.__ 

AddOptions__ 
(__  
)__  !
;__! "
servicesbb 
.bb 
AddLocalizationbb $
(bb$ %
)bb% &
;bb& '
servicesff 
.ff 
AddSingletonff !
<ff! "#
IStringLocalizerFactoryff" 9
,ff9 :&
NullStringLocalizerFactoryff; U
>ffU V
(ffV W
)ffW X
;ffX Y
servicesgg 
.gg 
AddSingletongg !
<gg! "!
IHtmlLocalizerFactorygg" 7
,gg7 8$
NullHtmlLocalizerFactorygg9 Q
>ggQ R
(ggR S
)ggS T
;ggT U
servicesii 
.ii 
AddWebEncodersii #
(ii# $
)ii$ %
;ii% &
serviceskk 
.kk "
AddHttpContextAccessorkk +
(kk+ ,
)kk, -
;kk- .
servicesll 
.ll 
AddSingletonll !
<ll! "
IClockll" (
,ll( )
Clockll* /
>ll/ 0
(ll0 1
)ll1 2
;ll2 3
servicesmm 
.mm 
	AddScopedmm 
<mm 
ILocalClockmm *
,mm* +

LocalClockmm, 6
>mm6 7
(mm7 8
)mm8 9
;mm9 :
servicesoo 
.oo 
	AddScopedoo 
<oo  
ILocalizationServiceoo 3
,oo3 4&
DefaultLocalizationServiceoo5 O
>ooO P
(ooP Q
)ooQ R
;ooR S
servicespp 
.pp 
	AddScopedpp 
<pp 
ICalendarManagerpp /
,pp/ 0"
DefaultCalendarManagerpp1 G
>ppG H
(ppH I
)ppI J
;ppJ K
servicesqq 
.qq 
	AddScopedqq 
<qq 
ICalendarSelectorqq 0
,qq0 1#
DefaultCalendarSelectorqq2 I
>qqI J
(qqJ K
)qqK L
;qqL M
servicesss 
.ss 
AddSingletonss !
<ss! "'
IPoweredByMiddlewareOptionsss" =
,ss= >&
PoweredByMiddlewareOptionsss? Y
>ssY Z
(ssZ [
)ss[ \
;ss\ ]
servicesuu 
.uu 
	AddScopeduu 
<uu 
IOrchardHelperuu -
,uu- . 
DefaultOrchardHelperuu/ C
>uuC D
(uuD E
)uuE F
;uuF G
builderww 
.ww 
ConfigureServicesww %
(ww% &
sww& '
=>ww( *
{xx 
syy 
.yy 
AddSingletonyy 
<yy 
	LocalLockyy (
>yy( )
(yy) *
)yy* +
;yy+ ,
szz 
.zz 
AddSingletonzz 
<zz 

ILocalLockzz )
>zz) *
(zz* +
spzz+ -
=>zz. 0
spzz1 3
.zz3 4
GetRequiredServicezz4 F
<zzF G
	LocalLockzzG P
>zzP Q
(zzQ R
)zzR S
)zzS T
;zzT U
s{{ 
.{{ 
AddSingleton{{ 
<{{ 
IDistributedLock{{ /
>{{/ 0
({{0 1
sp{{1 3
=>{{4 6
sp{{7 9
.{{9 :
GetRequiredService{{: L
<{{L M
	LocalLock{{M V
>{{V W
({{W X
){{X Y
){{Y Z
;{{Z [
}|| 
)|| 
;|| 
}}} 	
private 
static 
void 
AddShellServices ,
(, -
IServiceCollection- ?
services@ H
)H I
{
ÄÄ 	
services
ÇÇ 
.
ÇÇ %
AddHostingShellServices
ÇÇ ,
(
ÇÇ, -
)
ÇÇ- .
;
ÇÇ. /
services
ÉÉ 
.
ÉÉ &
AddAllFeaturesDescriptor
ÉÉ -
(
ÉÉ- .
)
ÉÉ. /
;
ÉÉ/ 0
services
ÜÜ 
.
ÜÜ 
AddTransient
ÜÜ !
(
ÜÜ! "
sp
ÜÜ" $
=>
ÜÜ% '
new
ÜÜ( +
ShellFeature
ÜÜ, 8
(
áá 
sp
àà 
.
àà  
GetRequiredService
àà %
<
àà% &
IHostEnvironment
àà& 6
>
àà6 7
(
àà7 8
)
àà8 9
.
àà9 :
ApplicationName
àà: I
,
ààI J
alwaysEnabled
ààK X
:
ààX Y
true
ààZ ^
)
àà^ _
)
ââ 
;
ââ 
services
åå 
.
åå 
AddTransient
åå !
(
åå! "
sp
åå" $
=>
åå% '
new
åå( +
ShellFeature
åå, 8
(
çç 
Application
éé 
.
éé 
DefaultFeatureId
éé ,
,
éé, -
alwaysEnabled
éé. ;
:
éé; <
true
éé= A
)
ééA B
)
èè 
;
èè 
}
êê 	
private
íí 
static
íí 
void
íí "
AddExtensionServices
íí 0
(
íí0 1 
OrchardCoreBuilder
íí1 C
builder
ííD K
)
ííK L
{
ìì 	
builder
îî 
.
îî !
ApplicationServices
îî '
.
îî' (
AddSingleton
îî( 4
<
îî4 5"
IModuleNamesProvider
îî5 I
,
îîI J2
$AssemblyAttributeModuleNamesProvider
îîK o
>
îîo p
(
îîp q
)
îîq r
;
îîr s
builder
ïï 
.
ïï !
ApplicationServices
ïï '
.
ïï' (
AddSingleton
ïï( 4
<
ïï4 5!
IApplicationContext
ïï5 H
,
ïïH I'
ModularApplicationContext
ïïJ c
>
ïïc d
(
ïïd e
)
ïïe f
;
ïïf g
builder
óó 
.
óó !
ApplicationServices
óó '
.
óó' (%
AddExtensionManagerHost
óó( ?
(
óó? @
)
óó@ A
;
óóA B
builder
ôô 
.
ôô 
ConfigureServices
ôô %
(
ôô% &
services
ôô& .
=>
ôô/ 1
{
öö 
services
õõ 
.
õõ !
AddExtensionManager
õõ ,
(
õõ, -
)
õõ- .
;
õõ. /
}
úú 
)
úú 
;
úú 
}
ùù 	
private
¢¢ 
static
¢¢ 
void
¢¢ 
AddStaticFiles
¢¢ *
(
¢¢* + 
OrchardCoreBuilder
¢¢+ =
builder
¢¢> E
)
¢¢E F
{
££ 	
builder
§§ 
.
§§ 
ConfigureServices
§§ %
(
§§% &
services
§§& .
=>
§§/ 1
{
•• 
services
¶¶ 
.
¶¶ 
AddSingleton
¶¶ %
<
¶¶% &'
IModuleStaticFileProvider
¶¶& ?
>
¶¶? @
(
¶¶@ A
serviceProvider
¶¶A P
=>
¶¶Q S
{
ßß 
var
®® 
env
®® 
=
®® 
serviceProvider
®® -
.
®®- . 
GetRequiredService
®®. @
<
®®@ A
IHostEnvironment
®®A Q
>
®®Q R
(
®®R S
)
®®S T
;
®®T U
var
©© 

appContext
©© "
=
©©# $
serviceProvider
©©% 4
.
©©4 5 
GetRequiredService
©©5 G
<
©©G H!
IApplicationContext
©©H [
>
©©[ \
(
©©\ ]
)
©©] ^
;
©©^ _'
IModuleStaticFileProvider
´´ -
fileProvider
´´. :
;
´´: ;
if
¨¨ 
(
¨¨ 
env
¨¨ 
.
¨¨ 
IsDevelopment
¨¨ )
(
¨¨) *
)
¨¨* +
)
¨¨+ ,
{
≠≠ 
var
ÆÆ 
fileProviders
ÆÆ )
=
ÆÆ* +
new
ÆÆ, /
List
ÆÆ0 4
<
ÆÆ4 5!
IStaticFileProvider
ÆÆ5 H
>
ÆÆH I
{
ØØ 
new
∞∞ -
ModuleProjectStaticFileProvider
∞∞  ?
(
∞∞? @

appContext
∞∞@ J
)
∞∞J K
,
∞∞K L
new
±± .
 ModuleEmbeddedStaticFileProvider
±±  @
(
±±@ A

appContext
±±A K
)
±±K L
}
≤≤ 
;
≤≤ 
fileProvider
≥≥ $
=
≥≥% &
new
≥≥' */
!ModuleCompositeStaticFileProvider
≥≥+ L
(
≥≥L M
fileProviders
≥≥M Z
)
≥≥Z [
;
≥≥[ \
}
¥¥ 
else
µµ 
{
∂∂ 
fileProvider
∑∑ $
=
∑∑% &
new
∑∑' *.
 ModuleEmbeddedStaticFileProvider
∑∑+ K
(
∑∑K L

appContext
∑∑L V
)
∑∑V W
;
∑∑W X
}
∏∏ 
return
ππ 
fileProvider
ππ '
;
ππ' (
}
∫∫ 
)
∫∫ 
;
∫∫ 
services
ºº 
.
ºº 
AddSingleton
ºº %
<
ºº% &!
IStaticFileProvider
ºº& 9
>
ºº9 :
(
ºº: ;
serviceProvider
ºº; J
=>
ººK M
{
ΩΩ 
return
ææ 
serviceProvider
ææ *
.
ææ* + 
GetRequiredService
ææ+ =
<
ææ= >'
IModuleStaticFileProvider
ææ> W
>
ææW X
(
ææX Y
)
ææY Z
;
ææZ [
}
øø 
)
øø 
;
øø 
}
¿¿ 
)
¿¿ 
;
¿¿ 
builder
¬¬ 
.
¬¬ 
	Configure
¬¬ 
(
¬¬ 
(
¬¬ 
app
¬¬ "
,
¬¬" #
routes
¬¬$ *
,
¬¬* +
serviceProvider
¬¬, ;
)
¬¬; <
=>
¬¬= ?
{
√√ 
var
ƒƒ 
fileProvider
ƒƒ  
=
ƒƒ! "
serviceProvider
ƒƒ# 2
.
ƒƒ2 3 
GetRequiredService
ƒƒ3 E
<
ƒƒE F'
IModuleStaticFileProvider
ƒƒF _
>
ƒƒ_ `
(
ƒƒ` a
)
ƒƒa b
;
ƒƒb c
var
∆∆ 
options
∆∆ 
=
∆∆ 
serviceProvider
∆∆ -
.
∆∆- . 
GetRequiredService
∆∆. @
<
∆∆@ A
IOptions
∆∆A I
<
∆∆I J
StaticFileOptions
∆∆J [
>
∆∆[ \
>
∆∆\ ]
(
∆∆] ^
)
∆∆^ _
.
∆∆_ `
Value
∆∆` e
;
∆∆e f
options
»» 
.
»» 
RequestPath
»» #
=
»»$ %
$str
»»& (
;
»»( )
options
…… 
.
…… 
FileProvider
…… $
=
……% &
fileProvider
……' 3
;
……3 4
var
ÀÀ  
shellConfiguration
ÀÀ &
=
ÀÀ' (
serviceProvider
ÀÀ) 8
.
ÀÀ8 9 
GetRequiredService
ÀÀ9 K
<
ÀÀK L!
IShellConfiguration
ÀÀL _
>
ÀÀ_ `
(
ÀÀ` a
)
ÀÀa b
;
ÀÀb c
var
ÕÕ 
cacheControl
ÕÕ  
=
ÕÕ! " 
shellConfiguration
ÕÕ# 5
.
ÕÕ5 6
GetValue
ÕÕ6 >
(
ÕÕ> ?
$str
ÕÕ? _
,
ÕÕ_ `
$strÕÕa é
)ÕÕé è
;ÕÕè ê
options
–– 
.
–– 
OnPrepareResponse
–– )
=
––* +
ctx
––, /
=>
––0 2
{
—— 
ctx
““ 
.
““ 
Context
““ 
.
““  
Response
““  (
.
““( )
Headers
““) 0
[
““0 1
HeaderNames
““1 <
.
““< =
CacheControl
““= I
]
““I J
=
““K L
cacheControl
““M Y
;
““Y Z
}
”” 
;
”” 
app
’’ 
.
’’ 
UseStaticFiles
’’ "
(
’’" #
options
’’# *
)
’’* +
;
’’+ ,
}
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 	
private
‹‹ 
static
‹‹ 
void
‹‹ 

AddRouting
‹‹ &
(
‹‹& ' 
OrchardCoreBuilder
‹‹' 9
builder
‹‹: A
)
‹‹A B
{
›› 	
builder
‡‡ 
.
‡‡ 
ConfigureServices
‡‡ %
(
‡‡% &

collection
‡‡& 0
=>
‡‡1 3
{
·· 
var
ÊÊ )
implementationTypesToRemove
ÊÊ /
=
ÊÊ0 1
new
ÊÊ2 5
ServiceCollection
ÊÊ6 G
(
ÊÊG H
)
ÊÊH I
.
ÊÊI J

AddRouting
ÊÊJ T
(
ÊÊT U
)
ÊÊU V
.
ÁÁ 
Where
ÁÁ 
(
ÁÁ 
sd
ÁÁ 
=>
ÁÁ  
sd
ÁÁ! #
.
ÁÁ# $
Lifetime
ÁÁ$ ,
==
ÁÁ- /
ServiceLifetime
ÁÁ0 ?
.
ÁÁ? @
	Singleton
ÁÁ@ I
||
ÁÁJ L
sd
ÁÁM O
.
ÁÁO P
ServiceType
ÁÁP [
==
ÁÁ\ ^
typeof
ÁÁ_ e
(
ÁÁe f
IConfigureOptions
ÁÁf w
<
ÁÁw x
RouteOptionsÁÁx Ñ
>ÁÁÑ Ö
)ÁÁÖ Ü
)ÁÁÜ á
.
ËË 
Select
ËË 
(
ËË 
sd
ËË 
=>
ËË !
sd
ËË" $
.
ËË$ %#
GetImplementationType
ËË% :
(
ËË: ;
)
ËË; <
)
ËË< =
.
ÈÈ 
ToArray
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ 
var
ÎÎ !
descriptorsToRemove
ÎÎ '
=
ÎÎ( )

collection
ÎÎ* 4
.
ÏÏ 
Where
ÏÏ 
(
ÏÏ 
sd
ÏÏ 
=>
ÏÏ  
(
ÏÏ! "
sd
ÏÏ" $
is
ÏÏ% ''
ClonedSingletonDescriptor
ÏÏ( A
||
ÏÏB D
sd
ÏÏE G
.
ÏÏG H
ServiceType
ÏÏH S
==
ÏÏT V
typeof
ÏÏW ]
(
ÏÏ] ^
IConfigureOptions
ÏÏ^ o
<
ÏÏo p
RouteOptions
ÏÏp |
>
ÏÏ| }
)
ÏÏ} ~
)
ÏÏ~ 
&&ÏÏÄ Ç)
implementationTypesToRemove
ÌÌ 3
.
ÌÌ3 4
Contains
ÌÌ4 <
(
ÌÌ< =
sd
ÌÌ= ?
.
ÌÌ? @#
GetImplementationType
ÌÌ@ U
(
ÌÌU V
)
ÌÌV W
)
ÌÌW X
)
ÌÌX Y
.
ÓÓ 
ToArray
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
foreach
 
(
 
var
 

descriptor
 '
in
( *!
descriptorsToRemove
+ >
)
> ?
{
ÒÒ 

collection
ÚÚ 
.
ÚÚ 
Remove
ÚÚ %
(
ÚÚ% &

descriptor
ÚÚ& 0
)
ÚÚ0 1
;
ÚÚ1 2
}
ÛÛ 

collection
ıı 
.
ıı 

AddRouting
ıı %
(
ıı% &
)
ıı& '
;
ıı' (
}
ˆˆ 
,
ˆˆ 
order
˜˜ 
:
˜˜ 
int
˜˜ 
.
˜˜ 
MinValue
˜˜ 
+
˜˜  !
$num
˜˜" %
)
˜˜% &
;
˜˜& '
}
¯¯ 	
private
˝˝ 
static
˝˝ 
void
˝˝ 
AddAntiForgery
˝˝ *
(
˝˝* + 
OrchardCoreBuilder
˝˝+ =
builder
˝˝> E
)
˝˝E F
{
˛˛ 	
builder
ˇˇ 
.
ˇˇ !
ApplicationServices
ˇˇ '
.
ˇˇ' (
AddAntiforgery
ˇˇ( 6
(
ˇˇ6 7
)
ˇˇ7 8
;
ˇˇ8 9
builder
ÅÅ 
.
ÅÅ 
ConfigureServices
ÅÅ %
(
ÅÅ% &
(
ÅÅ& '
services
ÅÅ' /
,
ÅÅ/ 0
serviceProvider
ÅÅ1 @
)
ÅÅ@ A
=>
ÅÅB D
{
ÇÇ 
var
ÉÉ 
settings
ÉÉ 
=
ÉÉ 
serviceProvider
ÉÉ .
.
ÉÉ. / 
GetRequiredService
ÉÉ/ A
<
ÉÉA B
ShellSettings
ÉÉB O
>
ÉÉO P
(
ÉÉP Q
)
ÉÉQ R
;
ÉÉR S
var
ÑÑ 
environment
ÑÑ 
=
ÑÑ  !
serviceProvider
ÑÑ" 1
.
ÑÑ1 2 
GetRequiredService
ÑÑ2 D
<
ÑÑD E
IHostEnvironment
ÑÑE U
>
ÑÑU V
(
ÑÑV W
)
ÑÑW X
;
ÑÑX Y
var
ÜÜ 

cookieName
ÜÜ 
=
ÜÜ  
$str
ÜÜ! 3
+
ÜÜ4 5
HttpUtility
ÜÜ6 A
.
ÜÜA B
	UrlEncode
ÜÜB K
(
ÜÜK L
settings
ÜÜL T
.
ÜÜT U
Name
ÜÜU Y
+
ÜÜZ [
environment
ÜÜ\ g
.
ÜÜg h
ContentRootPath
ÜÜh w
)
ÜÜw x
;
ÜÜx y
if
ââ 
(
ââ 
settings
ââ 
.
ââ 
State
ââ "
==
ââ# %
TenantState
ââ& 1
.
ââ1 2
Uninitialized
ââ2 ?
)
ââ? @
{
ää 
var
åå !
httpContextAccessor
åå +
=
åå, -
serviceProvider
åå. =
.
åå= > 
GetRequiredService
åå> P
<
ååP Q"
IHttpContextAccessor
ååQ e
>
ååe f
(
ååf g
)
ååg h
;
ååh i
if
èè 
(
èè !
httpContextAccessor
èè +
.
èè+ ,
HttpContext
èè, 7
==
èè8 :
null
èè; ?
)
èè? @
{
êê 
return
ëë 
;
ëë 
}
íí 
if
ïï 
(
ïï !
httpContextAccessor
ïï +
.
ïï+ ,
HttpContext
ïï, 7
.
ïï7 8
Response
ïï8 @
.
ïï@ A

HasStarted
ïïA K
)
ïïK L
{
ññ 
return
óó 
;
óó 
}
òò !
httpContextAccessor
öö '
.
öö' (
HttpContext
öö( 3
.
öö3 4
Response
öö4 <
.
öö< =
Cookies
öö= D
.
ööD E
Delete
ööE K
(
ööK L

cookieName
ööL V
)
ööV W
;
ööW X
return
úú 
;
úú 
}
ùù 
var
†† 

collection
†† 
=
††  
new
††! $
ServiceCollection
††% 6
(
††6 7
)
††7 8
.
°° 
AddAntiforgery
°° #
(
°°# $
options
°°$ +
=>
°°, .
{
¢¢ 
options
££ 
.
££  
Cookie
££  &
.
££& '
Name
££' +
=
££, -

cookieName
££. 8
;
££8 9
}
®® 
)
®® 
;
®® 
services
™™ 
.
™™ 
Add
™™ 
(
™™ 

collection
™™ '
)
™™' (
;
™™( )
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
private
±± 
static
±± 
void
±± 5
'AddSameSiteCookieBackwardsCompatibility
±± C
(
±±C D 
OrchardCoreBuilder
±±D V
builder
±±W ^
)
±±^ _
{
≤≤ 	
builder
≥≥ 
.
≥≥ 
ConfigureServices
≥≥ %
(
≥≥% &
services
≥≥& .
=>
≥≥/ 1
{
¥¥ 
services
µµ 
.
µµ 
	Configure
µµ &
<
µµ& '!
CookiePolicyOptions
µµ' :
>
µµ: ;
(
µµ; <
options
µµ< C
=>
µµD F
{
∂∂ 
options
∑∑ 
.
∑∑  #
MinimumSameSitePolicy
∑∑  5
=
∑∑6 7
SameSiteMode
∑∑8 D
.
∑∑D E
Unspecified
∑∑E P
;
∑∑P Q
options
∏∏ 
.
∏∏  
OnAppendCookie
∏∏  .
=
∏∏/ 0
cookieContext
∏∏1 >
=>
∏∏? A0
"CheckSameSiteBackwardsCompatiblity
∏∏B d
(
∏∏d e
cookieContext
∏∏e r
.
∏∏r s
Context
∏∏s z
,
∏∏z {
cookieContext∏∏| â
.∏∏â ä
CookieOptions∏∏ä ó
)∏∏ó ò
;∏∏ò ô
options
ππ 
.
ππ  
OnDeleteCookie
ππ  .
=
ππ/ 0
cookieContext
ππ1 >
=>
ππ? A0
"CheckSameSiteBackwardsCompatiblity
ππB d
(
ππd e
cookieContext
ππe r
.
ππr s
Context
ππs z
,
ππz {
cookieContextππ| â
.ππâ ä
CookieOptionsππä ó
)ππó ò
;ππò ô
}
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 
)
ªª 
.
ºº 
	Configure
ºº 
(
ºº 
app
ºº 
=>
ºº !
{
ΩΩ 
app
ææ 
.
ææ 
UseCookiePolicy
ææ '
(
ææ' (
)
ææ( )
;
ææ) *
}
øø 
)
øø 
;
øø 
}
¿¿ 	
private
¬¬ 
static
¬¬ 
void
¬¬ 0
"CheckSameSiteBackwardsCompatiblity
¬¬ >
(
¬¬> ?
HttpContext
¬¬? J
httpContext
¬¬K V
,
¬¬V W
CookieOptions
¬¬X e
options
¬¬f m
)
¬¬m n
{
√√ 	
var
ƒƒ 
	userAgent
ƒƒ 
=
ƒƒ 
httpContext
ƒƒ '
.
ƒƒ' (
Request
ƒƒ( /
.
ƒƒ/ 0
Headers
ƒƒ0 7
[
ƒƒ7 8
$str
ƒƒ8 D
]
ƒƒD E
.
ƒƒE F
ToString
ƒƒF N
(
ƒƒN O
)
ƒƒO P
;
ƒƒP Q
if
∆∆ 
(
∆∆ 
options
∆∆ 
.
∆∆ 
SameSite
∆∆  
==
∆∆! #
SameSiteMode
∆∆$ 0
.
∆∆0 1
None
∆∆1 5
)
∆∆5 6
{
«« 
if
»» 
(
»» 
string
»» 
.
»» 
IsNullOrEmpty
»» (
(
»»( )
	userAgent
»») 2
)
»»2 3
)
»»3 4
{
…… 
return
   
;
   
}
ÀÀ 
if
““ 
(
““ 
	userAgent
““ 
.
““ 
Contains
““ &
(
““& '
$str
““' 9
)
““9 :
||
““; =
	userAgent
““> G
.
““G H
Contains
““H P
(
““P Q
$str
““Q b
)
““b c
)
““c d
{
”” 
options
‘‘ 
.
‘‘ 
SameSite
‘‘ $
=
‘‘% &

AspNetCore
‘‘' 1
.
‘‘1 2
Http
‘‘2 6
.
‘‘6 7
SameSiteMode
‘‘7 C
.
‘‘C D
Unspecified
‘‘D O
;
‘‘O P
return
’’ 
;
’’ 
}
÷÷ 
if
›› 
(
›› 
	userAgent
›› 
.
›› 
Contains
›› &
(
››& '
$str
››' H
)
››H I
&&
››J L
	userAgent
ﬁﬁ 
.
ﬁﬁ 
Contains
ﬁﬁ &
(
ﬁﬁ& '
$str
ﬁﬁ' 1
)
ﬁﬁ1 2
&&
ﬁﬁ3 5
	userAgent
ﬁﬁ6 ?
.
ﬁﬁ? @
Contains
ﬁﬁ@ H
(
ﬁﬁH I
$str
ﬁﬁI Q
)
ﬁﬁQ R
)
ﬁﬁR S
{
ﬂﬂ 
options
‡‡ 
.
‡‡ 
SameSite
‡‡ $
=
‡‡% &

AspNetCore
‡‡' 1
.
‡‡1 2
Http
‡‡2 6
.
‡‡6 7
SameSiteMode
‡‡7 C
.
‡‡C D
Unspecified
‡‡D O
;
‡‡O P
return
·· 
;
·· 
}
‚‚ 
if
ËË 
(
ËË 
	userAgent
ËË 
.
ËË 
Contains
ËË &
(
ËË& '
$str
ËË' 1
)
ËË1 2
||
ËË3 5
	userAgent
ËË6 ?
.
ËË? @
Contains
ËË@ H
(
ËËH I
$str
ËËI S
)
ËËS T
)
ËËT U
{
ÈÈ 
options
ÍÍ 
.
ÍÍ 
SameSite
ÍÍ $
=
ÍÍ% &

AspNetCore
ÍÍ' 1
.
ÍÍ1 2
Http
ÍÍ2 6
.
ÍÍ6 7
SameSiteMode
ÍÍ7 C
.
ÍÍC D
Unspecified
ÍÍD O
;
ÍÍO P
}
ÎÎ 
}
ÏÏ 
}
ÌÌ 	
private
ÚÚ 
static
ÚÚ 
void
ÚÚ 
AddAuthentication
ÚÚ -
(
ÚÚ- . 
OrchardCoreBuilder
ÚÚ. @
builder
ÚÚA H
)
ÚÚH I
{
ÛÛ 	
builder
ÙÙ 
.
ÙÙ !
ApplicationServices
ÙÙ '
.
ÙÙ' (
AddAuthentication
ÙÙ( 9
(
ÙÙ9 :
)
ÙÙ: ;
;
ÙÙ; <
builder
ˆˆ 
.
ˆˆ 
ConfigureServices
ˆˆ %
(
ˆˆ% &
services
ˆˆ& .
=>
ˆˆ/ 1
{
˜˜ 
services
¯¯ 
.
¯¯ 
AddAuthentication
¯¯ *
(
¯¯* +
)
¯¯+ ,
;
¯¯, -
services
˛˛ 
.
˛˛ 
AddSingleton
˛˛ %
<
˛˛% &+
IAuthenticationSchemeProvider
˛˛& C
,
˛˛C D*
AuthenticationSchemeProvider
˛˛E a
>
˛˛a b
(
˛˛b c
)
˛˛c d
;
˛˛d e
}
ˇˇ 
)
ˇˇ 
.
ÄÄ 
	Configure
ÄÄ 
(
ÄÄ 
app
ÄÄ 
=>
ÄÄ 
{
ÅÅ 
app
ÇÇ 
.
ÇÇ 
UseAuthentication
ÇÇ %
(
ÇÇ% &
)
ÇÇ& '
;
ÇÇ' (
}
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
private
ââ 
static
ââ 
void
ââ 
AddDataProtection
ââ -
(
ââ- . 
OrchardCoreBuilder
ââ. @
builder
ââA H
)
ââH I
{
ää 	
builder
ãã 
.
ãã 
ConfigureServices
ãã %
(
ãã% &
(
ãã& '
services
ãã' /
,
ãã/ 0
serviceProvider
ãã1 @
)
ãã@ A
=>
ããB D
{
åå 
var
çç 
settings
çç 
=
çç 
serviceProvider
çç .
.
çç. / 
GetRequiredService
çç/ A
<
ççA B
ShellSettings
ççB O
>
ççO P
(
ççP Q
)
ççQ R
;
ççR S
var
éé 
options
éé 
=
éé 
serviceProvider
éé -
.
éé- . 
GetRequiredService
éé. @
<
éé@ A
IOptions
ééA I
<
ééI J
ShellOptions
ééJ V
>
ééV W
>
ééW X
(
ééX Y
)
ééY Z
;
ééZ [
var
ëë 
	directory
ëë 
=
ëë 
new
ëë  #
DirectoryInfo
ëë$ 1
(
ëë1 2
Path
ëë2 6
.
ëë6 7
Combine
ëë7 >
(
ëë> ?
options
íí 
.
íí 
Value
íí !
.
íí! "'
ShellsApplicationDataPath
íí" ;
,
íí; <
options
ìì 
.
ìì 
Value
ìì !
.
ìì! "!
ShellsContainerName
ìì" 5
,
ìì5 6
settings
îî 
.
îî 
Name
îî !
,
îî! "
$str
îî# 8
)
îî8 9
)
îî9 :
;
îî: ;
var
öö 

collection
öö 
=
öö  
new
öö! $
ServiceCollection
öö% 6
(
öö6 7
)
öö7 8
.
õõ 
AddDataProtection
õõ &
(
õõ& '
)
õõ' (
.
úú %
PersistKeysToFileSystem
úú ,
(
úú, -
	directory
úú- 6
)
úú6 7
.
ùù  
SetApplicationName
ùù '
(
ùù' (
settings
ùù( 0
.
ùù0 1
Name
ùù1 5
)
ùù5 6
.
ûû %
AddKeyManagementOptions
ûû ,
(
ûû, -
o
ûû- .
=>
ûû/ 1
o
ûû2 3
.
ûû3 4
XmlEncryptor
ûû4 @
=
ûûA B
o
ûûC D
.
ûûD E
XmlEncryptor
ûûE Q
??
ûûR T
new
ûûU X
NullXmlEncryptor
ûûY i
(
ûûi j
)
ûûj k
)
ûûk l
.
üü 
Services
üü 
;
üü 
services
¢¢ 
.
¢¢ 
	RemoveAll
¢¢ "
<
¢¢" #
IConfigureOptions
¢¢# 4
<
¢¢4 5"
KeyManagementOptions
¢¢5 I
>
¢¢I J
>
¢¢J K
(
¢¢K L
)
¢¢L M
;
¢¢M N
services
££ 
.
££ 
	RemoveAll
££ "
<
££" #
IConfigureOptions
££# 4
<
££4 5#
DataProtectionOptions
££5 J
>
££J K
>
££K L
(
££L M
)
££M N
;
££N O
services
•• 
.
•• 
Add
•• 
(
•• 

collection
•• '
)
••' (
;
••( )
}
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 	
}
®® 
}©© ﬂ
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Model\TimeZone.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class 
TimeZone 
: 
	ITimeZone %
{ 
public 
string 

TimeZoneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
Offset		 
StandardOffset		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public 
Offset 

WallOffset  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTimeZone 
DateTimeZone (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
TimeZone 
( 
string 

timeZoneId )
,) *
Offset+ 1
standardOffset2 @
,@ A
OffsetB H

wallOffsetI S
,S T
DateTimeZoneU a
dateTimeZoneb n
)n o
{ 	

TimeZoneId 
= 

timeZoneId #
;# $
StandardOffset 
= 
standardOffset +
;+ ,

WallOffset 
= 

wallOffset #
;# $
DateTimeZone 
= 
dateTimeZone '
;' (
} 	
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
$" 
(GMT 
{ 
StandardOffset (
}( )
) ) +
{+ ,

TimeZoneId, 6
}6 7
 (7 9
{9 :

WallOffset: D
:D E
+HH:mmE K
}K L
)L M
"M N
;N O
} 	
} 
} µ§
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\ModularBackgroundService.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
internal 
class $
ModularBackgroundService +
:, -
BackgroundService. ?
{ 
private 
static 
readonly 
TimeSpan  (
PollingTime) 4
=5 6
TimeSpan7 ?
.? @
FromMinutes@ K
(K L
$numL M
)M N
;N O
private 
static 
readonly 
TimeSpan  (
MinIdleTime) 4
=5 6
TimeSpan7 ?
.? @
FromSeconds@ K
(K L
$numL N
)N O
;O P
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5#
BackgroundTaskScheduler6 M
>M N
_schedulersO Z
=[ \
new  
ConcurrentDictionary $
<$ %
string% +
,+ ,#
BackgroundTaskScheduler- D
>D E
(E F
)F G
;G H
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
IChangeToken6 B
>B C
_changeTokensD Q
=R S
new  
ConcurrentDictionary $
<$ %
string% +
,+ ,
IChangeToken- 9
>9 :
(: ;
); <
;< =
private   
readonly   

IShellHost   #

_shellHost  $ .
;  . /
private!! 
readonly!!  
IHttpContextAccessor!! - 
_httpContextAccessor!!. B
;!!B C
private"" 
readonly"" 
ILogger""  
_logger""! (
;""( )
private## 
readonly## 
IClock## 
_clock##  &
;##& '
public%% $
ModularBackgroundService%% '
(%%' (

IShellHost&& 
	shellHost&&  
,&&  ! 
IHttpContextAccessor''  
httpContextAccessor''! 4
,''4 5
ILogger(( 
<(( $
ModularBackgroundService(( ,
>((, -
logger((. 4
,((4 5
IClock)) 
clock)) 
))) 
{** 	

_shellHost++ 
=++ 
	shellHost++ "
;++" # 
_httpContextAccessor,,  
=,,! "
httpContextAccessor,,# 6
;,,6 7
_logger-- 
=-- 
logger-- 
;-- 
_clock.. 
=.. 
clock.. 
;.. 
}// 	
	protected11 
override11 
async11  
Task11! %
ExecuteAsync11& 2
(112 3
CancellationToken113 D
stoppingToken11E R
)11R S
{22 	
stoppingToken33 
.33 
Register33 "
(33" #
(33# $
)33$ %
=>33& (
{44 
_logger55 
.55 
LogInformation55 &
(55& '
$str55' E
,55E F
nameof55G M
(55M N$
ModularBackgroundService55N f
)55f g
)55g h
;55h i
}66 
)66 
;66 
while88 
(88 
GetRunningShells88 #
(88# $
)88$ %
.88% &
Count88& +
(88+ ,
)88, -
<88. /
$num880 1
)881 2
{99 
try:: 
{;; 
await<< 
Task<< 
.<< 
Delay<< $
(<<$ %
MinIdleTime<<% 0
,<<0 1
stoppingToken<<2 ?
)<<? @
;<<@ A
}== 
catch>> 
(>> !
TaskCanceledException>> ,
)>>, -
{?? 
break@@ 
;@@ 
}AA 
}BB 
varDD 
previousShellsDD 
=DD  

EnumerableDD! +
.DD+ ,
EmptyDD, 1
<DD1 2
ShellContextDD2 >
>DD> ?
(DD? @
)DD@ A
;DDA B
whileFF 
(FF 
!FF 
stoppingTokenFF !
.FF! "#
IsCancellationRequestedFF" 9
)FF9 :
{GG 
tryHH 
{II 
varJJ 
runningShellsJJ %
=JJ& '
GetRunningShellsJJ( 8
(JJ8 9
)JJ9 :
;JJ: ;
awaitKK 
UpdateAsyncKK %
(KK% &
previousShellsKK& 4
,KK4 5
runningShellsKK6 C
,KKC D
stoppingTokenKKE R
)KKR S
;KKS T
previousShellsLL "
=LL# $
runningShellsLL% 2
;LL2 3
varNN 
pollingDelayNN $
=NN% &
TaskNN' +
.NN+ ,
DelayNN, 1
(NN1 2
PollingTimeNN2 =
,NN= >
stoppingTokenNN? L
)NNL M
;NNM N
awaitPP 
RunAsyncPP "
(PP" #
runningShellsPP# 0
,PP0 1
stoppingTokenPP2 ?
)PP? @
;PP@ A
awaitQQ 
	WaitAsyncQQ #
(QQ# $
pollingDelayQQ$ 0
,QQ0 1
stoppingTokenQQ2 ?
)QQ? @
;QQ@ A
}RR 
catchSS 
(SS 
	ExceptionSS  
exSS! #
)SS# $
whenSS% )
(SS* +
!SS+ ,
exSS, .
.SS. /
IsFatalSS/ 6
(SS6 7
)SS7 8
)SS8 9
{TT 
_loggerUU 
.UU 
LogErrorUU $
(UU$ %
exUU% '
,UU' (
$strUU) P
,UUP Q
nameofUUR X
(UUX Y$
ModularBackgroundServiceUUY q
)UUq r
)UUr s
;UUs t
}VV 
}WW 
}XX 	
privateZZ 
asyncZZ 
TaskZZ 
RunAsyncZZ #
(ZZ# $
IEnumerableZZ$ /
<ZZ/ 0
ShellContextZZ0 <
>ZZ< =
runningShellsZZ> K
,ZZK L
CancellationTokenZZM ^
stoppingTokenZZ_ l
)ZZl m
{[[ 	
await\\ 
GetShellsToRun\\  
(\\  !
runningShells\\! .
)\\. /
.\\/ 0
ForEachAsync\\0 <
(\\< =
async\\= B
shell\\C H
=>\\I K
{]] 
var^^ 
tenant^^ 
=^^ 
shell^^ "
.^^" #
Settings^^# +
.^^+ ,
Name^^, 0
;^^0 1
var`` 

schedulers`` 
=``  
GetSchedulersToRun``! 3
(``3 4
tenant``4 :
)``: ;
;``; < 
_httpContextAccessorbb $
.bb$ %
HttpContextbb% 0
=bb1 2
shellbb3 8
.bb8 9
CreateHttpContextbb9 J
(bbJ K
)bbK L
;bbL M
foreachdd 
(dd 
vardd 
	schedulerdd &
indd' )

schedulersdd* 4
)dd4 5
{ee 
ifff 
(ff 
stoppingTokenff %
.ff% &#
IsCancellationRequestedff& =
)ff= >
{gg 
breakhh 
;hh 
}ii 
varkk 

shellScopekk "
=kk# $
awaitkk% *

_shellHostkk+ 5
.kk5 6
GetScopeAsynckk6 C
(kkC D
shellkkD I
.kkI J
SettingskkJ R
)kkR S
;kkS T
ifmm 
(mm 

shellScopemm "
.mm" #
ShellContextmm# /
.mm/ 0
Pipelinemm0 8
==mm9 ;
nullmm< @
)mm@ A
{nn 
breakoo 
;oo 
}pp 
awaitrr 

shellScoperr $
.rr$ %

UsingAsyncrr% /
(rr/ 0
asyncrr0 5
scoperr6 ;
=>rr< >
{ss 
vartt 
taskNamett $
=tt% &
	schedulertt' 0
.tt0 1
Namett1 5
;tt5 6
varvv 
taskvv  
=vv! "
scopevv# (
.vv( )
ServiceProvidervv) 8
.vv8 9
GetServicesvv9 D
<vvD E
IBackgroundTaskvvE T
>vvT U
(vvU V
)vvV W
.vvW X
GetTaskByNamevvX e
(vve f
taskNamevvf n
)vvn o
;vvo p
ifxx 
(xx 
taskxx  
==xx! #
nullxx$ (
)xx( )
{yy 
returnzz "
;zz" #
}{{ 
var}} 
siteService}} '
=}}( )
scope}}* /
.}}/ 0
ServiceProvider}}0 ?
.}}? @

GetService}}@ J
<}}J K
ISiteService}}K W
>}}W X
(}}X Y
)}}Y Z
;}}Z [
if~~ 
(~~ 
siteService~~ '
!=~~( *
null~~+ /
)~~/ 0
{ 
try
ÄÄ 
{
ÅÅ "
_httpContextAccessor
ÇÇ  4
.
ÇÇ4 5
HttpContext
ÇÇ5 @
.
ÇÇ@ A

SetBaseUrl
ÇÇA K
(
ÇÇK L
(
ÇÇL M
await
ÇÇM R
siteService
ÇÇS ^
.
ÇÇ^ _"
GetSiteSettingsAsync
ÇÇ_ s
(
ÇÇs t
)
ÇÇt u
)
ÇÇu v
.
ÇÇv w
BaseUrl
ÇÇw ~
)
ÇÇ~ 
;ÇÇ Ä
}
ÉÉ 
catch
ÑÑ !
(
ÑÑ" #
	Exception
ÑÑ# ,
ex
ÑÑ- /
)
ÑÑ/ 0
when
ÑÑ1 5
(
ÑÑ6 7
!
ÑÑ7 8
ex
ÑÑ8 :
.
ÑÑ: ;
IsFatal
ÑÑ; B
(
ÑÑB C
)
ÑÑC D
)
ÑÑD E
{
ÖÖ 
_logger
ÜÜ  '
.
ÜÜ' (
LogError
ÜÜ( 0
(
ÜÜ0 1
ex
ÜÜ1 3
,
ÜÜ3 4
$strÜÜ5 å
,ÜÜå ç
tenantÜÜé î
)ÜÜî ï
;ÜÜï ñ
}
áá 
}
àà 
try
ää 
{
ãã 
_logger
åå #
.
åå# $
LogInformation
åå$ 2
(
åå2 3
$str
åå3 |
,
åå| }
taskNameåå~ Ü
,ååÜ á
tenantååà é
)ååé è
;ååè ê
	scheduler
éé %
.
éé% &
Run
éé& )
(
éé) *
)
éé* +
;
éé+ ,
await
èè !
task
èè" &
.
èè& '
DoWorkAsync
èè' 2
(
èè2 3
scope
èè3 8
.
èè8 9
ServiceProvider
èè9 H
,
èèH I
stoppingToken
èèJ W
)
èèW X
;
èèX Y
_logger
ëë #
.
ëë# $
LogInformation
ëë$ 2
(
ëë2 3
$str
ëë3 
,ëë Ä
taskNameëëÅ â
,ëëâ ä
tenantëëã ë
)ëëë í
;ëëí ì
}
íí 
catch
ìì 
(
ìì 
	Exception
ìì (
ex
ìì) +
)
ìì+ ,
when
ìì- 1
(
ìì2 3
!
ìì3 4
ex
ìì4 6
.
ìì6 7
IsFatal
ìì7 >
(
ìì> ?
)
ìì? @
)
ìì@ A
{
îî 
_logger
ïï #
.
ïï# $
LogError
ïï$ ,
(
ïï, -
ex
ïï- /
,
ïï/ 0
$strïï1 Ä
,ïïÄ Å
taskNameïïÇ ä
,ïïä ã
tenantïïå í
)ïïí ì
;ïïì î
}
ññ 
}
óó 
)
óó 
;
óó 
}
òò 
}
ôô 
)
ôô 
;
ôô 
}
öö 	
private
úú 
async
úú 
Task
úú 
UpdateAsync
úú &
(
úú& '
IEnumerable
úú' 2
<
úú2 3
ShellContext
úú3 ?
>
úú? @
previousShells
úúA O
,
úúO P
IEnumerable
úúQ \
<
úú\ ]
ShellContext
úú] i
>
úúi j
runningShells
úúk x
,
úúx y 
CancellationTokenúúz ã
stoppingTokenúúå ô
)úúô ö
{
ùù 	
var
ûû 
referenceTime
ûû 
=
ûû 
DateTime
ûû  (
.
ûû( )
UtcNow
ûû) /
;
ûû/ 0
await
†† 
GetShellsToUpdate
†† #
(
††# $
previousShells
††$ 2
,
††2 3
runningShells
††4 A
)
††A B
.
††B C
ForEachAsync
††C O
(
††O P
async
††P U
shell
††V [
=>
††\ ^
{
°° 
var
¢¢ 
tenant
¢¢ 
=
¢¢ 
shell
¢¢ "
.
¢¢" #
Settings
¢¢# +
.
¢¢+ ,
Name
¢¢, 0
;
¢¢0 1
if
§§ 
(
§§ 
stoppingToken
§§ !
.
§§! "%
IsCancellationRequested
§§" 9
)
§§9 :
{
•• 
return
¶¶ 
;
¶¶ 
}
ßß "
_httpContextAccessor
©© $
.
©©$ %
HttpContext
©©% 0
=
©©1 2
shell
©©3 8
.
©©8 9
CreateHttpContext
©©9 J
(
©©J K
)
©©K L
;
©©L M
var
´´ 

shellScope
´´ 
=
´´  
await
´´! &

_shellHost
´´' 1
.
´´1 2
GetScopeAsync
´´2 ?
(
´´? @
shell
´´@ E
.
´´E F
Settings
´´F N
)
´´N O
;
´´O P
if
≠≠ 
(
≠≠ 

shellScope
≠≠ 
.
≠≠ 
ShellContext
≠≠ +
.
≠≠+ ,
Pipeline
≠≠, 4
==
≠≠5 7
null
≠≠8 <
)
≠≠< =
{
ÆÆ 
return
ØØ 
;
ØØ 
}
∞∞ 
await
≤≤ 

shellScope
≤≤  
.
≤≤  !

UsingAsync
≤≤! +
(
≤≤+ ,
async
≤≤, 1
scope
≤≤2 7
=>
≤≤8 :
{
≥≥ 
var
¥¥ 
tasks
¥¥ 
=
¥¥ 
scope
¥¥  %
.
¥¥% &
ServiceProvider
¥¥& 5
.
¥¥5 6
GetServices
¥¥6 A
<
¥¥A B
IBackgroundTask
¥¥B Q
>
¥¥Q R
(
¥¥R S
)
¥¥S T
;
¥¥T U
CleanSchedulers
∂∂ #
(
∂∂# $
tenant
∂∂$ *
,
∂∂* +
tasks
∂∂, 1
)
∂∂1 2
;
∂∂2 3
if
∏∏ 
(
∏∏ 
!
∏∏ 
tasks
∏∏ 
.
∏∏ 
Any
∏∏ "
(
∏∏" #
)
∏∏# $
)
∏∏$ %
{
ππ 
return
∫∫ 
;
∫∫ 
}
ªª 
var
ΩΩ 
settingsProvider
ΩΩ (
=
ΩΩ) *
scope
ΩΩ+ 0
.
ΩΩ0 1
ServiceProvider
ΩΩ1 @
.
ΩΩ@ A

GetService
ΩΩA K
<
ΩΩK L-
IBackgroundTaskSettingsProvider
ΩΩL k
>
ΩΩk l
(
ΩΩl m
)
ΩΩm n
;
ΩΩn o
_changeTokens
ææ !
[
ææ! "
tenant
ææ" (
]
ææ( )
=
ææ* +
settingsProvider
ææ, <
?
ææ< =
.
ææ= >
ChangeToken
ææ> I
??
ææJ L
NullChangeToken
ææM \
.
ææ\ ]
	Singleton
ææ] f
;
ææf g
	ITimeZone
¿¿ 
timeZone
¿¿ &
=
¿¿' (
null
¿¿) -
;
¿¿- .
var
¬¬ 
siteService
¬¬ #
=
¬¬$ %
scope
¬¬& +
.
¬¬+ ,
ServiceProvider
¬¬, ;
.
¬¬; <

GetService
¬¬< F
<
¬¬F G
ISiteService
¬¬G S
>
¬¬S T
(
¬¬T U
)
¬¬U V
;
¬¬V W
if
√√ 
(
√√ 
siteService
√√ #
!=
√√$ &
null
√√' +
)
√√+ ,
{
ƒƒ 
try
≈≈ 
{
∆∆ 
timeZone
«« $
=
««% &
_clock
««' -
.
««- .
GetTimeZone
««. 9
(
««9 :
(
««: ;
await
««; @
siteService
««A L
.
««L M"
GetSiteSettingsAsync
««M a
(
««a b
)
««b c
)
««c d
.
««d e

TimeZoneId
««e o
)
««o p
;
««p q
}
»» 
catch
…… 
(
…… 
	Exception
…… (
ex
……) +
)
……+ ,
when
……- 1
(
……2 3
!
……3 4
ex
……4 6
.
……6 7
IsFatal
……7 >
(
……> ?
)
……? @
)
……@ A
{
   
_logger
ÀÀ #
.
ÀÀ# $
LogError
ÀÀ$ ,
(
ÀÀ, -
ex
ÀÀ- /
,
ÀÀ/ 0
$strÀÀ1 â
,ÀÀâ ä
tenantÀÀã ë
)ÀÀë í
;ÀÀí ì
}
ÃÃ 
}
ÕÕ 
foreach
œœ 
(
œœ 
var
œœ  
task
œœ! %
in
œœ& (
tasks
œœ) .
)
œœ. /
{
–– 
var
—— 
taskName
—— $
=
——% &
task
——' +
.
——+ ,
GetTaskName
——, 7
(
——7 8
)
——8 9
;
——9 :
if
”” 
(
”” 
!
”” 
_schedulers
”” (
.
””( )
TryGetValue
””) 4
(
””4 5
tenant
””5 ;
+
””< =
taskName
””> F
,
””F G
out
””H K
var
””L O
	scheduler
””P Y
)
””Y Z
)
””Z [
{
‘‘ 
_schedulers
’’ '
[
’’' (
tenant
’’( .
+
’’/ 0
taskName
’’1 9
]
’’9 :
=
’’; <
	scheduler
’’= F
=
’’G H
new
’’I L%
BackgroundTaskScheduler
’’M d
(
’’d e
tenant
’’e k
,
’’k l
taskName
’’m u
,
’’u v
referenceTime’’w Ñ
,’’Ñ Ö
_clock’’Ü å
)’’å ç
;’’ç é
}
÷÷ 
	scheduler
ÿÿ !
.
ÿÿ! "
TimeZone
ÿÿ" *
=
ÿÿ+ ,
timeZone
ÿÿ- 5
;
ÿÿ5 6
if
⁄⁄ 
(
⁄⁄ 
!
⁄⁄ 
	scheduler
⁄⁄ &
.
⁄⁄& '
Released
⁄⁄' /
&&
⁄⁄0 2
	scheduler
⁄⁄3 <
.
⁄⁄< =
Updated
⁄⁄= D
)
⁄⁄D E
{
€€ 
continue
‹‹ $
;
‹‹$ %
}
›› $
BackgroundTaskSettings
ﬂﬂ .
settings
ﬂﬂ/ 7
=
ﬂﬂ8 9
null
ﬂﬂ: >
;
ﬂﬂ> ?
if
·· 
(
·· 
settingsProvider
·· ,
!=
··- /
null
··0 4
)
··4 5
{
‚‚ 
try
„„ 
{
‰‰ 
settings
ÂÂ  (
=
ÂÂ) *
await
ÂÂ+ 0
settingsProvider
ÂÂ1 A
.
ÂÂA B
GetSettingsAsync
ÂÂB R
(
ÂÂR S
task
ÂÂS W
)
ÂÂW X
;
ÂÂX Y
}
ÊÊ 
catch
ÁÁ !
(
ÁÁ" #
	Exception
ÁÁ# ,
ex
ÁÁ- /
)
ÁÁ/ 0
when
ÁÁ1 5
(
ÁÁ6 7
!
ÁÁ7 8
ex
ÁÁ8 :
.
ÁÁ: ;
IsFatal
ÁÁ; B
(
ÁÁB C
)
ÁÁC D
)
ÁÁD E
{
ËË 
_logger
ÈÈ  '
.
ÈÈ' (
LogError
ÈÈ( 0
(
ÈÈ0 1
ex
ÈÈ1 3
,
ÈÈ3 4
$strÈÈ5 é
,ÈÈé è
taskNameÈÈê ò
,ÈÈò ô
tenantÈÈö †
)ÈÈ† °
;ÈÈ° ¢
}
ÍÍ 
}
ÎÎ 
settings
ÌÌ  
??=
ÌÌ! $
task
ÌÌ% )
.
ÌÌ) * 
GetDefaultSettings
ÌÌ* <
(
ÌÌ< =
)
ÌÌ= >
;
ÌÌ> ?
if
ÔÔ 
(
ÔÔ 
	scheduler
ÔÔ %
.
ÔÔ% &
Released
ÔÔ& .
||
ÔÔ/ 1
!
ÔÔ2 3
	scheduler
ÔÔ3 <
.
ÔÔ< =
Settings
ÔÔ= E
.
ÔÔE F
Schedule
ÔÔF N
.
ÔÔN O
Equals
ÔÔO U
(
ÔÔU V
settings
ÔÔV ^
.
ÔÔ^ _
Schedule
ÔÔ_ g
)
ÔÔg h
)
ÔÔh i
{
 
	scheduler
ÒÒ %
.
ÒÒ% &
ReferenceTime
ÒÒ& 3
=
ÒÒ4 5
referenceTime
ÒÒ6 C
;
ÒÒC D
}
ÚÚ 
	scheduler
ÙÙ !
.
ÙÙ! "
Settings
ÙÙ" *
=
ÙÙ+ ,
settings
ÙÙ- 5
;
ÙÙ5 6
	scheduler
ıı !
.
ıı! "
Released
ıı" *
=
ıı+ ,
false
ıı- 2
;
ıı2 3
	scheduler
ˆˆ !
.
ˆˆ! "
Updated
ˆˆ" )
=
ˆˆ* +
true
ˆˆ, 0
;
ˆˆ0 1
}
˜˜ 
}
¯¯ 
)
¯¯ 
;
¯¯ 
}
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 	
private
¸¸ 
async
¸¸ 
Task
¸¸ 
	WaitAsync
¸¸ $
(
¸¸$ %
Task
¸¸% )
pollingDelay
¸¸* 6
,
¸¸6 7
CancellationToken
¸¸8 I
stoppingToken
¸¸J W
)
¸¸W X
{
˝˝ 	
try
˛˛ 
{
ˇˇ 
await
ÄÄ 
Task
ÄÄ 
.
ÄÄ 
Delay
ÄÄ  
(
ÄÄ  !
MinIdleTime
ÄÄ! ,
,
ÄÄ, -
stoppingToken
ÄÄ. ;
)
ÄÄ; <
;
ÄÄ< =
await
ÅÅ 
pollingDelay
ÅÅ "
;
ÅÅ" #
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ (
OperationCanceledException
ÉÉ -
)
ÉÉ- .
{
ÑÑ 
}
ÖÖ 
}
ÜÜ 	
private
àà 
IEnumerable
àà 
<
àà 
ShellContext
àà (
>
àà( )
GetRunningShells
àà* :
(
àà: ;
)
àà; <
{
ââ 	
return
ää 

_shellHost
ää 
.
ää 
ListShellContexts
ää /
(
ää/ 0
)
ää0 1
.
ää1 2
Where
ää2 7
(
ää7 8
s
ää8 9
=>
ää: <
s
ää= >
.
ää> ?
Settings
ää? G
.
ääG H
State
ääH M
==
ääN P
TenantState
ääQ \
.
ää\ ]
Running
ää] d
&&
ääe g
s
ääh i
.
ääi j
Pipeline
ääj r
!=
ääs u
null
ääv z
)
ääz {
.
ää{ |
ToArrayää| É
(ääÉ Ñ
)ääÑ Ö
;ääÖ Ü
}
ãã 	
private
çç 
IEnumerable
çç 
<
çç 
ShellContext
çç (
>
çç( )
GetShellsToRun
çç* 8
(
çç8 9
IEnumerable
çç9 D
<
ççD E
ShellContext
ççE Q
>
ççQ R
shells
ççS Y
)
ççY Z
{
éé 	
var
èè 
tenantsToRun
èè 
=
èè 
_schedulers
èè *
.
èè* +
Where
èè+ 0
(
èè0 1
s
èè1 2
=>
èè3 5
s
èè6 7
.
èè7 8
Value
èè8 =
.
èè= >
CanRun
èè> D
(
èèD E
)
èèE F
)
èèF G
.
èèG H
Select
èèH N
(
èèN O
s
èèO P
=>
èèQ S
s
èèT U
.
èèU V
Value
èèV [
.
èè[ \
Tenant
èè\ b
)
èèb c
.
èèc d
Distinct
èèd l
(
èèl m
)
èèm n
.
èèn o
ToArray
èèo v
(
èèv w
)
èèw x
;
èèx y
return
êê 
shells
êê 
.
êê 
Where
êê 
(
êê  
s
êê  !
=>
êê" $
tenantsToRun
êê% 1
.
êê1 2
Contains
êê2 :
(
êê: ;
s
êê; <
.
êê< =
Settings
êê= E
.
êêE F
Name
êêF J
)
êêJ K
)
êêK L
.
êêL M
ToArray
êêM T
(
êêT U
)
êêU V
;
êêV W
}
ëë 	
private
ìì 
IEnumerable
ìì 
<
ìì 
ShellContext
ìì (
>
ìì( )
GetShellsToUpdate
ìì* ;
(
ìì; <
IEnumerable
ìì< G
<
ììG H
ShellContext
ììH T
>
ììT U
previousShells
ììV d
,
ììd e
IEnumerable
ììf q
<
ììq r
ShellContext
ììr ~
>
ìì~ 
runningShellsììÄ ç
)ììç é
{
îî 	
var
ïï 
released
ïï 
=
ïï 
previousShells
ïï )
.
ïï) *
Where
ïï* /
(
ïï/ 0
s
ïï0 1
=>
ïï2 4
s
ïï5 6
.
ïï6 7
Released
ïï7 ?
)
ïï? @
.
ïï@ A
Select
ïïA G
(
ïïG H
s
ïïH I
=>
ïïJ L
s
ïïM N
.
ïïN O
Settings
ïïO W
.
ïïW X
Name
ïïX \
)
ïï\ ]
.
ïï] ^
ToArray
ïï^ e
(
ïïe f
)
ïïf g
;
ïïg h
if
óó 
(
óó 
released
óó 
.
óó 
Any
óó 
(
óó 
)
óó 
)
óó 
{
òò 
UpdateSchedulers
ôô  
(
ôô  !
released
ôô! )
,
ôô) *
s
ôô+ ,
=>
ôô- /
s
ôô0 1
.
ôô1 2
Released
ôô2 :
=
ôô; <
true
ôô= A
)
ôôA B
;
ôôB C
}
öö 
var
úú 
changed
úú 
=
úú 
_changeTokens
úú '
.
úú' (
Where
úú( -
(
úú- .
t
úú. /
=>
úú0 2
t
úú3 4
.
úú4 5
Value
úú5 :
.
úú: ;

HasChanged
úú; E
)
úúE F
.
úúF G
Select
úúG M
(
úúM N
t
úúN O
=>
úúP R
t
úúS T
.
úúT U
Key
úúU X
)
úúX Y
.
úúY Z
ToArray
úúZ a
(
úúa b
)
úúb c
;
úúc d
if
ûû 
(
ûû 
changed
ûû 
.
ûû 
Any
ûû 
(
ûû 
)
ûû 
)
ûû 
{
üü 
UpdateSchedulers
††  
(
††  !
changed
††! (
,
††( )
s
††* +
=>
††, .
s
††/ 0
.
††0 1
Updated
††1 8
=
††9 :
false
††; @
)
††@ A
;
††A B
}
°° 
var
££ 
valid
££ 
=
££ 
previousShells
££ &
.
££& '
Select
££' -
(
££- .
s
££. /
=>
££0 2
s
££3 4
.
££4 5
Settings
££5 =
.
££= >
Name
££> B
)
££B C
.
££C D
Except
££D J
(
££J K
released
££K S
)
££S T
.
££T U
Except
££U [
(
££[ \
changed
££\ c
)
££c d
;
££d e
var
§§ 
tenantsToUpdate
§§ 
=
§§  !
runningShells
§§" /
.
§§/ 0
Select
§§0 6
(
§§6 7
s
§§7 8
=>
§§9 ;
s
§§< =
.
§§= >
Settings
§§> F
.
§§F G
Name
§§G K
)
§§K L
.
§§L M
Except
§§M S
(
§§S T
valid
§§T Y
)
§§Y Z
.
§§Z [
ToArray
§§[ b
(
§§b c
)
§§c d
;
§§d e
return
¶¶ 
runningShells
¶¶  
.
¶¶  !
Where
¶¶! &
(
¶¶& '
s
¶¶' (
=>
¶¶) +
tenantsToUpdate
¶¶, ;
.
¶¶; <
Contains
¶¶< D
(
¶¶D E
s
¶¶E F
.
¶¶F G
Settings
¶¶G O
.
¶¶O P
Name
¶¶P T
)
¶¶T U
)
¶¶U V
.
¶¶V W
ToArray
¶¶W ^
(
¶¶^ _
)
¶¶_ `
;
¶¶` a
}
ßß 	
private
©© 
IEnumerable
©© 
<
©© %
BackgroundTaskScheduler
©© 3
>
©©3 4 
GetSchedulersToRun
©©5 G
(
©©G H
string
©©H N
tenant
©©O U
)
©©U V
{
™™ 	
return
´´ 
_schedulers
´´ 
.
´´ 
Where
´´ $
(
´´$ %
s
´´% &
=>
´´' )
s
´´* +
.
´´+ ,
Value
´´, 1
.
´´1 2
Tenant
´´2 8
==
´´9 ;
tenant
´´< B
&&
´´C E
s
´´F G
.
´´G H
Value
´´H M
.
´´M N
CanRun
´´N T
(
´´T U
)
´´U V
)
´´V W
.
´´W X
Select
´´X ^
(
´´^ _
s
´´_ `
=>
´´a c
s
´´d e
.
´´e f
Value
´´f k
)
´´k l
.
´´l m
ToArray
´´m t
(
´´t u
)
´´u v
;
´´v w
}
¨¨ 	
private
ÆÆ 
void
ÆÆ 
UpdateSchedulers
ÆÆ %
(
ÆÆ% &
IEnumerable
ÆÆ& 1
<
ÆÆ1 2
string
ÆÆ2 8
>
ÆÆ8 9
tenants
ÆÆ: A
,
ÆÆA B
Action
ÆÆC I
<
ÆÆI J%
BackgroundTaskScheduler
ÆÆJ a
>
ÆÆa b
action
ÆÆc i
)
ÆÆi j
{
ØØ 	
var
∞∞ 
keys
∞∞ 
=
∞∞ 
_schedulers
∞∞ "
.
∞∞" #
Where
∞∞# (
(
∞∞( )
kv
∞∞) +
=>
∞∞, .
tenants
∞∞/ 6
.
∞∞6 7
Contains
∞∞7 ?
(
∞∞? @
kv
∞∞@ B
.
∞∞B C
Value
∞∞C H
.
∞∞H I
Tenant
∞∞I O
)
∞∞O P
)
∞∞P Q
.
∞∞Q R
Select
∞∞R X
(
∞∞X Y
kv
∞∞Y [
=>
∞∞\ ^
kv
∞∞_ a
.
∞∞a b
Key
∞∞b e
)
∞∞e f
.
∞∞f g
ToArray
∞∞g n
(
∞∞n o
)
∞∞o p
;
∞∞p q
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
key
≤≤ 
in
≤≤ 
keys
≤≤  $
)
≤≤$ %
{
≥≥ 
if
¥¥ 
(
¥¥ 
_schedulers
¥¥ 
.
¥¥  
TryGetValue
¥¥  +
(
¥¥+ ,
key
¥¥, /
,
¥¥/ 0
out
¥¥1 4%
BackgroundTaskScheduler
¥¥5 L
	scheduler
¥¥M V
)
¥¥V W
)
¥¥W X
{
µµ 
action
∂∂ 
(
∂∂ 
	scheduler
∂∂ $
)
∂∂$ %
;
∂∂% &
}
∑∑ 
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª 
CleanSchedulers
ªª $
(
ªª$ %
string
ªª% +
tenant
ªª, 2
,
ªª2 3
IEnumerable
ªª4 ?
<
ªª? @
IBackgroundTask
ªª@ O
>
ªªO P
tasks
ªªQ V
)
ªªV W
{
ºº 	
var
ΩΩ 
	validKeys
ΩΩ 
=
ΩΩ 
tasks
ΩΩ !
.
ΩΩ! "
Select
ΩΩ" (
(
ΩΩ( )
task
ΩΩ) -
=>
ΩΩ. 0
tenant
ΩΩ1 7
+
ΩΩ8 9
task
ΩΩ: >
.
ΩΩ> ?
GetTaskName
ΩΩ? J
(
ΩΩJ K
)
ΩΩK L
)
ΩΩL M
.
ΩΩM N
ToArray
ΩΩN U
(
ΩΩU V
)
ΩΩV W
;
ΩΩW X
var
øø 
keys
øø 
=
øø 
_schedulers
øø "
.
øø" #
Where
øø# (
(
øø( )
kv
øø) +
=>
øø, .
kv
øø/ 1
.
øø1 2
Value
øø2 7
.
øø7 8
Tenant
øø8 >
==
øø? A
tenant
øøB H
)
øøH I
.
øøI J
Select
øøJ P
(
øøP Q
kv
øøQ S
=>
øøT V
kv
øøW Y
.
øøY Z
Key
øøZ ]
)
øø] ^
.
øø^ _
ToArray
øø_ f
(
øøf g
)
øøg h
;
øøh i
foreach
¡¡ 
(
¡¡ 
var
¡¡ 
key
¡¡ 
in
¡¡ 
keys
¡¡  $
)
¡¡$ %
{
¬¬ 
if
√√ 
(
√√ 
!
√√ 
	validKeys
√√ 
.
√√ 
Contains
√√ '
(
√√' (
key
√√( +
)
√√+ ,
)
√√, -
{
ƒƒ 
_schedulers
≈≈ 
.
≈≈  
	TryRemove
≈≈  )
(
≈≈) *
key
≈≈* -
,
≈≈- .
out
≈≈/ 2
var
≈≈3 6
	scheduler
≈≈7 @
)
≈≈@ A
;
≈≈A B
}
∆∆ 
}
«« 
}
»» 	
}
…… 
internal
ÀÀ 
static
ÀÀ 
class
ÀÀ #
HttpContextExtensions
ÀÀ /
{
ÃÃ 
public
ÕÕ 
static
ÕÕ 
void
ÕÕ 

SetBaseUrl
ÕÕ %
(
ÕÕ% &
this
ÕÕ& *
HttpContext
ÕÕ+ 6
context
ÕÕ7 >
,
ÕÕ> ?
string
ÕÕ@ F
baseUrl
ÕÕG N
)
ÕÕN O
{
ŒŒ 	
if
œœ 
(
œœ 
Uri
œœ 
.
œœ 
	TryCreate
œœ 
(
œœ 
baseUrl
œœ %
,
œœ% &
UriKind
œœ' .
.
œœ. /
Absolute
œœ/ 7
,
œœ7 8
out
œœ9 <
var
œœ= @
uri
œœA D
)
œœD E
)
œœE F
{
–– 
context
—— 
.
—— 
Request
—— 
.
——  
Scheme
——  &
=
——' (
uri
——) ,
.
——, -
Scheme
——- 3
;
——3 4
context
““ 
.
““ 
Request
““ 
.
““  
Host
““  $
=
““% &
new
““' *

HostString
““+ 5
(
““5 6
uri
““6 9
.
““9 :
Host
““: >
,
““> ?
uri
““@ C
.
““C D
Port
““D H
)
““H I
;
““I J
context
”” 
.
”” 
Request
”” 
.
””  
PathBase
””  (
=
””) *
uri
””+ .
.
””. /
AbsolutePath
””/ ;
;
””; <
if
’’ 
(
’’ 
!
’’ 
String
’’ 
.
’’  
IsNullOrWhiteSpace
’’ .
(
’’. /
uri
’’/ 2
.
’’2 3
Query
’’3 8
)
’’8 9
)
’’9 :
{
÷÷ 
context
◊◊ 
.
◊◊ 
Request
◊◊ #
.
◊◊# $
QueryString
◊◊$ /
=
◊◊0 1
new
◊◊2 5
QueryString
◊◊6 A
(
◊◊A B
uri
◊◊B E
.
◊◊E F
Query
◊◊F K
)
◊◊K L
;
◊◊L M
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
}
€€ 
internal
›› 
static
›› 
class
›› 
ShellExtensions
›› )
{
ﬁﬁ 
public
ﬂﬂ 
static
ﬂﬂ 
HttpContext
ﬂﬂ !
CreateHttpContext
ﬂﬂ" 3
(
ﬂﬂ3 4
this
ﬂﬂ4 8
ShellContext
ﬂﬂ9 E
shell
ﬂﬂF K
)
ﬂﬂK L
{
‡‡ 	
var
·· 
context
·· 
=
·· 
shell
·· 
.
··  
Settings
··  (
.
··( )
CreateHttpContext
··) :
(
··: ;
)
··; <
;
··< =
context
„„ 
.
„„ 
Features
„„ 
.
„„ 
Set
„„  
(
„„  !
new
„„! $!
ShellContextFeature
„„% 8
{
‰‰ 
ShellContext
ÂÂ 
=
ÂÂ 
shell
ÂÂ $
,
ÂÂ$ %
OriginalPathBase
ÊÊ  
=
ÊÊ! "
String
ÊÊ# )
.
ÊÊ) *
Empty
ÊÊ* /
,
ÊÊ/ 0
OriginalPath
ÁÁ 
=
ÁÁ 
$str
ÁÁ "
}
ËË 
)
ËË 
;
ËË 
return
ÍÍ 
context
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
public
ÌÌ 
static
ÌÌ 
HttpContext
ÌÌ !
CreateHttpContext
ÌÌ" 3
(
ÌÌ3 4
this
ÌÌ4 8
ShellSettings
ÌÌ9 F
settings
ÌÌG O
)
ÌÌO P
{
ÓÓ 	
var
ÔÔ 
context
ÔÔ 
=
ÔÔ 
new
ÔÔ  
DefaultHttpContext
ÔÔ 0
(
ÔÔ0 1
)
ÔÔ1 2
.
ÔÔ2 3#
UseShellScopeServices
ÔÔ3 H
(
ÔÔH I
)
ÔÔI J
;
ÔÔJ K
context
ÒÒ 
.
ÒÒ 
Request
ÒÒ 
.
ÒÒ 
Scheme
ÒÒ "
=
ÒÒ# $
$str
ÒÒ% ,
;
ÒÒ, -
var
ÛÛ 
urlHost
ÛÛ 
=
ÛÛ 
settings
ÛÛ "
.
ÛÛ" #
RequestUrlHost
ÛÛ# 1
?
ÛÛ1 2
.
ÛÛ2 3
Split
ÛÛ3 8
(
ÛÛ8 9
$char
ÛÛ9 <
,
ÛÛ< = 
StringSplitOptions
ÙÙ "
.
ÙÙ" # 
RemoveEmptyEntries
ÙÙ# 5
)
ÙÙ5 6
.
ÙÙ6 7
FirstOrDefault
ÙÙ7 E
(
ÙÙE F
)
ÙÙF G
;
ÙÙG H
context
ˆˆ 
.
ˆˆ 
Request
ˆˆ 
.
ˆˆ 
Host
ˆˆ  
=
ˆˆ! "
new
ˆˆ# &

HostString
ˆˆ' 1
(
ˆˆ1 2
urlHost
ˆˆ2 9
??
ˆˆ: <
$str
ˆˆ= H
)
ˆˆH I
;
ˆˆI J
if
¯¯ 
(
¯¯ 
!
¯¯ 
String
¯¯ 
.
¯¯  
IsNullOrWhiteSpace
¯¯ *
(
¯¯* +
settings
¯¯+ 3
.
¯¯3 4
RequestUrlPrefix
¯¯4 D
)
¯¯D E
)
¯¯E F
{
˘˘ 
context
˙˙ 
.
˙˙ 
Request
˙˙ 
.
˙˙  
PathBase
˙˙  (
=
˙˙) *
$str
˙˙+ .
+
˙˙/ 0
settings
˙˙1 9
.
˙˙9 :
RequestUrlPrefix
˙˙: J
;
˙˙J K
}
˚˚ 
context
˝˝ 
.
˝˝ 
Request
˝˝ 
.
˝˝ 
Path
˝˝  
=
˝˝! "
$str
˝˝# &
;
˝˝& '
context
˛˛ 
.
˛˛ 
Items
˛˛ 
[
˛˛ 
$str
˛˛ (
]
˛˛( )
=
˛˛* +
true
˛˛, 0
;
˛˛0 1
return
ÄÄ 
context
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ ﬁ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\ModularTenantContainerMiddleware.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class ,
 ModularTenantContainerMiddleware 1
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
IRunningShellTable +
_runningShellTable, >
;> ?
public ,
 ModularTenantContainerMiddleware /
(/ 0
RequestDelegate 
next  
,  !

IShellHost 
	shellHost  
,  !
IRunningShellTable 
runningShellTable 0
)0 1
{ 	
_next 
= 
next 
; 

_shellHost 
= 
	shellHost "
;" #
_runningShellTable 
=  
runningShellTable! 2
;2 3
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
httpContext- 8
)8 9
{ 	
await 

_shellHost 
. 
InitializeAsync ,
(, -
)- .
;. /
var!! 
shellSettings!! 
=!! 
_runningShellTable!!  2
.!!2 3
Match!!3 8
(!!8 9
httpContext!!9 D
)!!D E
;!!E F
if$$ 
($$ 
shellSettings$$ 
!=$$  
null$$! %
)$$% &
{%% 
if&& 
(&& 
shellSettings&& !
.&&! "
State&&" '
==&&( *
TenantState&&+ 6
.&&6 7
Initializing&&7 C
)&&C D
{'' 
httpContext(( 
.((  
Response((  (
.((( )
Headers(() 0
.((0 1
Add((1 4
(((4 5
HeaderNames((5 @
.((@ A

RetryAfter((A K
,((K L
$str((M Q
)((Q R
;((R S
httpContext)) 
.))  
Response))  (
.))( )

StatusCode))) 3
=))4 5
StatusCodes))6 A
.))A B'
Status503ServiceUnavailable))B ]
;))] ^
await** 
httpContext** %
.**% &
Response**& .
.**. /

WriteAsync**/ 9
(**9 :
$str**: k
)**k l
;**l m
return++ 
;++ 
},, 
httpContext// 
.// !
UseShellScopeServices// 1
(//1 2
)//2 3
;//3 4
var11 

shellScope11 
=11  
await11! &

_shellHost11' 1
.111 2
GetScopeAsync112 ?
(11? @
shellSettings11@ M
)11M N
;11N O
httpContext44 
.44 
Features44 $
.44$ %
Set44% (
(44( )
new44) ,
ShellContextFeature44- @
{55 
ShellContext66  
=66! "

shellScope66# -
.66- .
ShellContext66. :
,66: ;
OriginalPath77  
=77! "
httpContext77# .
.77. /
Request77/ 6
.776 7
Path777 ;
,77; <
OriginalPathBase88 $
=88% &
httpContext88' 2
.882 3
Request883 :
.88: ;
PathBase88; C
}99 
)99 
;99 
await;; 

shellScope;;  
.;;  !

UsingAsync;;! +
(;;+ ,
scope;;, 1
=>;;2 4
_next;;5 :
.;;: ;
Invoke;;; A
(;;A B
httpContext;;B M
);;M N
);;N O
;;;O P
}<< 
}== 	
}>> 
}?? √A
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\ModularTenantRouterMiddleware.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class )
ModularTenantRouterMiddleware .
{ 
private 
readonly 
IFeatureCollection +
	_features, 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
SemaphoreSlim6 C
>C D
_semaphoresE P
=Q R
newS V 
ConcurrentDictionaryW k
<k l
stringl r
,r s
SemaphoreSlim	t Å
>
Å Ç
(
Ç É
)
É Ñ
;
Ñ Ö
public )
ModularTenantRouterMiddleware ,
(, -
IFeatureCollection 
features '
,' (
RequestDelegate 
next  
,  !
ILogger 
< )
ModularTenantRouterMiddleware 1
>1 2
logger3 9
)9 :
{   	
	_features!! 
=!! 
features!!  
;!!  !
_logger"" 
="" 
logger"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
Invoke%%  
(%%  !
HttpContext%%! ,
httpContext%%- 8
)%%8 9
{&& 	
if'' 
('' 
_logger'' 
.'' 
	IsEnabled'' !
(''! "
LogLevel''" *
.''* +
Information''+ 6
)''6 7
)''7 8
{(( 
_logger)) 
.)) 
LogInformation)) &
())& '
$str))' >
)))> ?
;))? @
}** 
var,, 
shellContext,, 
=,, 

ShellScope,, )
.,,) *
Context,,* 1
;,,1 2
if11 
(11 
!11 
String11 
.11 
IsNullOrEmpty11 %
(11% &
shellContext11& 2
.112 3
Settings113 ;
.11; <
RequestUrlPrefix11< L
)11L M
)11M N
{22 

PathString33 
prefix33 !
=33" #
$str33$ '
+33( )
shellContext33* 6
.336 7
Settings337 ?
.33? @
RequestUrlPrefix33@ P
;33P Q
httpContext44 
.44 
Request44 #
.44# $
PathBase44$ ,
+=44- /
prefix440 6
;446 7
httpContext55 
.55 
Request55 #
.55# $
Path55$ (
.55( )
StartsWithSegments55) ;
(55; <
prefix55< B
,55B C
StringComparison55D T
.55T U
OrdinalIgnoreCase55U f
,55f g
out55h k

PathString55l v
remainingPath	55w Ñ
)
55Ñ Ö
;
55Ö Ü
httpContext66 
.66 
Request66 #
.66# $
Path66$ (
=66) *
remainingPath66+ 8
;668 9
}77 
if:: 
(:: 
shellContext:: 
.:: 
Pipeline:: %
==::& (
null::) -
)::- .
{;; 
await<< #
InitializePipelineAsync<< -
(<<- .
shellContext<<. :
)<<: ;
;<<; <
}== 
await?? 
shellContext?? 
.?? 
Pipeline?? '
.??' (
Invoke??( .
(??. /
httpContext??/ :
)??: ;
;??; <
}@@ 	
privateBB 
asyncBB 
TaskBB #
InitializePipelineAsyncBB 2
(BB2 3
ShellContextBB3 ?
shellContextBB@ L
)BBL M
{CC 	
varDD 
	semaphoreDD 
=DD 
_semaphoresDD '
.DD' (
GetOrAddDD( 0
(DD0 1
shellContextDD1 =
.DD= >
SettingsDD> F
.DDF G
NameDDG K
,DDK L
_DDM N
=>DDO Q
newDDR U
SemaphoreSlimDDV c
(DDc d
$numDDd e
)DDe f
)DDf g
;DDg h
awaitGG 
	semaphoreGG 
.GG 
	WaitAsyncGG %
(GG% &
)GG& '
;GG' (
tryII 
{JJ 
ifKK 
(KK 
shellContextKK  
.KK  !
PipelineKK! )
==KK* ,
nullKK- 1
)KK1 2
{LL 
shellContextMM  
.MM  !
PipelineMM! )
=MM* +
BuildTenantPipelineMM, ?
(MM? @
)MM@ A
;MMA B
}NN 
}OO 
finallyPP 
{QQ 
	semaphoreRR 
.RR 
ReleaseRR !
(RR! "
)RR" #
;RR# $
}SS 
}TT 	
privateWW 
IShellPipelineWW 
BuildTenantPipelineWW 2
(WW2 3
)WW3 4
{XX 	
varYY 

appBuilderYY 
=YY 
newYY  
ApplicationBuilderYY! 3
(YY3 4

ShellScopeYY4 >
.YY> ?
ContextYY? F
.YYF G
ServiceProviderYYG V
,YYV W
	_featuresYYX a
)YYa b
;YYb c
var\\ 
startupFilters\\ 
=\\  

appBuilder\\! +
.\\+ ,
ApplicationServices\\, ?
.\\? @

GetService\\@ J
<\\J K
IEnumerable\\K V
<\\V W
IStartupFilter\\W e
>\\e f
>\\f g
(\\g h
)\\h i
;\\i j
var^^ 
shellPipeline^^ 
=^^ 
new^^  # 
ShellRequestPipeline^^$ 8
(^^8 9
)^^9 :
;^^: ;
Action`` 
<`` 
IApplicationBuilder`` &
>``& '
	configure``( 1
=``2 3
builder``4 ;
=>``< >
{aa #
ConfigureTenantPipelinebb '
(bb' (
builderbb( /
)bb/ 0
;bb0 1
}cc 
;cc 
foreachee 
(ee 
varee 
filteree 
inee  "
startupFiltersee# 1
.ee1 2
Reverseee2 9
(ee9 :
)ee: ;
)ee; <
{ff 
	configuregg 
=gg 
filtergg "
.gg" #
	Configuregg# ,
(gg, -
	configuregg- 6
)gg6 7
;gg7 8
}hh 
	configurejj 
(jj 

appBuilderjj  
)jj  !
;jj! "
shellPipelinell 
.ll 
Nextll 
=ll  

appBuilderll! +
.ll+ ,
Buildll, 1
(ll1 2
)ll2 3
;ll3 4
returnnn 
shellPipelinenn  
;nn  !
}oo 	
privateqq 
voidqq #
ConfigureTenantPipelineqq ,
(qq, -
IApplicationBuilderqq- @

appBuilderqqA K
)qqK L
{rr 	
varss 
startupsss 
=ss 

appBuilderss %
.ss% &
ApplicationServicesss& 9
.ss9 :
GetServicesss: E
<ssE F
IStartupssF N
>ssN O
(ssO P
)ssP Q
;ssQ R
startupsww 
=ww 
startupsww 
.ww  
OrderByww  '
(ww' (
sww( )
=>ww* ,
sww- .
.ww. /
ConfigureOrderww/ =
)ww= >
;ww> ?

appBuilderyy 
.yy 

UseRoutingyy !
(yy! "
)yy" #
.yy# $
UseEndpointsyy$ 0
(yy0 1
routesyy1 7
=>yy8 :
{zz 
foreach{{ 
({{ 
var{{ 
startup{{ $
in{{% '
startups{{( 0
){{0 1
{|| 
startup}} 
.}} 
	Configure}} %
(}}% &

appBuilder}}& 0
,}}0 1
routes}}2 8
,}}8 9

ShellScope}}: D
.}}D E
Services}}E M
)}}M N
;}}N O
}~~ 
} 
) 
; 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ‡
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\PoweredByMiddleware.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

class		 
PoweredByMiddleware		 $
{

 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly '
IPoweredByMiddlewareOptions 4
_options5 =
;= >
public 
PoweredByMiddleware "
(" #
RequestDelegate# 2
next3 7
,7 8'
IPoweredByMiddlewareOptions9 T
optionsU \
)\ ]
{ 	
_next 
= 
next 
; 
_options 
= 
options 
; 
} 	
public 
Task 
Invoke 
( 
HttpContext &
httpContext' 2
)2 3
{ 	
if 
( 
_options 
. 
Enabled  
)  !
{ 
httpContext 
. 
Response $
.$ %
Headers% ,
[, -
_options- 5
.5 6

HeaderName6 @
]@ A
=B C
_optionsD L
.L M
HeaderValueM X
;X Y
} 
return 
_next 
. 
Invoke 
(  
httpContext  +
)+ ,
;, -
} 	
} 
public 

	interface '
IPoweredByMiddlewareOptions 0
{   
bool!! 
Enabled!! 
{!! 
get!! 
;!! 
set!! 
;!!  
}!!! "
string"" 

HeaderName"" 
{"" 
get"" 
;""  
}""! "
string## 
HeaderValue## 
{## 
get##  
;##  !
set##" %
;##% &
}##' (
}$$ 
internal&& 
class&& &
PoweredByMiddlewareOptions&& -
:&&. /'
IPoweredByMiddlewareOptions&&0 K
{'' 
private(( 
const(( 
string(( 
PoweredByHeaderName(( 0
=((1 2
$str((3 A
;((A B
private)) 
const)) 
string))  
PoweredByHeaderValue)) 1
=))2 3
$str))4 A
;))A B
public++ 
string++ 

HeaderName++  
=>++! #
PoweredByHeaderName++$ 7
;++7 8
public,, 
string,, 
HeaderValue,, !
{,," #
get,,$ '
;,,' (
set,,) ,
;,,, -
},,. /
=,,0 1 
PoweredByHeaderValue,,2 F
;,,F G
public.. 
bool.. 
Enabled.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
=..* +
true.., 0
;..0 1
}// 
}00 ›9
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Services\Clock.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class 
Clock 
: 
IClock 
{		 
private

 
static

 
Instant

 
CurrentInstant

 -
=>

. 0
SystemClock

1 <
.

< =
Instance

= E
.

E F
GetCurrentInstant

F W
(

W X
)

X Y
;

Y Z
public 
DateTime 
UtcNow 
=> !
CurrentInstant" 0
.0 1
ToDateTimeUtc1 >
(> ?
)? @
;@ A
public 
	ITimeZone 
[ 
] 
GetTimeZones '
(' (
)( )
{ 	
var 
list 
= 
from 
location 
in  "
TzdbDateTimeZoneSource! 7
.7 8
Default8 ?
.? @
ZoneLocations@ M
let 
zoneId 
= 
location %
.% &
ZoneId& ,
let 
tz 
= !
DateTimeZoneProviders .
.. /
Tzdb/ 3
[3 4
zoneId4 :
]: ;
let 
zoneInterval  
=! "
tz# %
.% &
GetZoneInterval& 5
(5 6
CurrentInstant6 D
)D E
orderby 
zoneInterval $
.$ %
StandardOffset% 3
,3 4
zoneId5 ;
select   
new   
TimeZone   #
(  # $
zoneId  $ *
,  * +
zoneInterval  , 8
.  8 9
StandardOffset  9 G
,  G H
zoneInterval  I U
.  U V

WallOffset  V `
,  ` a
tz  b d
)  d e
;  e f
return"" 
list"" 
."" 
ToArray"" 
(""  
)""  !
;""! "
}## 	
public%% 
	ITimeZone%% 
GetTimeZone%% $
(%%$ %
string%%% +

timeZoneId%%, 6
)%%6 7
{&& 	
if'' 
('' 
String'' 
.'' 
IsNullOrEmpty'' $
(''$ %

timeZoneId''% /
)''/ 0
)''0 1
{(( 
return)) 
GetSystemTimeZone)) (
())( )
)))) *
;))* +
}** 
var,, 
dateTimeZone,, 
=,, 
GetDateTimeZone,, .
(,,. /

timeZoneId,,/ 9
),,9 :
;,,: ;
return.. 
CreateTimeZone.. !
(..! "
dateTimeZone.." .
)... /
;../ 0
}// 	
public11 
	ITimeZone11 
GetSystemTimeZone11 *
(11* +
)11+ ,
{22 	
var33 
timezone33 
=33 !
DateTimeZoneProviders33 0
.330 1
Tzdb331 5
.335 6
GetSystemDefault336 F
(33F G
)33G H
;33H I
if44 
(44 "
TzdbDateTimeZoneSource44 &
.44& '
Default44' .
.44. /
CanonicalIdMap44/ =
.44= >
ContainsKey44> I
(44I J
timezone44J R
.44R S
Id44S U
)44U V
)44V W
{55 
var66 
canonicalTimeZoneId66 '
=66( )"
TzdbDateTimeZoneSource66* @
.66@ A
Default66A H
.66H I
CanonicalIdMap66I W
[66W X
timezone66X `
.66` a
Id66a c
]66c d
;66d e
timezone77 
=77 
GetDateTimeZone77 *
(77* +
canonicalTimeZoneId77+ >
)77> ?
;77? @
}88 
return99 
CreateTimeZone99 !
(99! "
timezone99" *
)99* +
;99+ ,
}:: 	
public<< 
DateTimeOffset<< 
ConvertToTimeZone<< /
(<</ 0
DateTimeOffset<<0 >
dateTimeOffSet<<? M
,<<M N
	ITimeZone<<O X
timeZone<<Y a
)<<a b
{== 	
var>> 
offsetDateTime>> 
=>>  
OffsetDateTime>>! /
.>>/ 0
FromDateTimeOffset>>0 B
(>>B C
dateTimeOffSet>>C Q
)>>Q R
;>>R S
return?? 
offsetDateTime?? !
.??! "
InZone??" (
(??( )
(??) *
(??* +
TimeZone??+ 3
)??3 4
timeZone??4 <
)??< =
.??= >
DateTimeZone??> J
)??J K
.??K L
ToDateTimeOffset??L \
(??\ ]
)??] ^
;??^ _
}@@ 	
internalBB 
staticBB 
DateTimeZoneBB $
GetDateTimeZoneBB% 4
(BB4 5
stringBB5 ;
timeZoneBB< D
)BBD E
{CC 	
ifDD 
(DD 
!DD 
StringDD 
.DD 
IsNullOrEmptyDD %
(DD% &
timeZoneDD& .
)DD. /
&&DD0 2
IsValidTimeZoneDD3 B
(DDB C!
DateTimeZoneProvidersDDC X
.DDX Y
TzdbDDY ]
,DD] ^
timeZoneDD_ g
)DDg h
)DDh i
{EE 
returnFF !
DateTimeZoneProvidersFF ,
.FF, -
TzdbFF- 1
[FF1 2
timeZoneFF2 :
]FF: ;
;FF; <
}GG 
returnII !
DateTimeZoneProvidersII (
.II( )
TzdbII) -
.II- .
GetSystemDefaultII. >
(II> ?
)II? @
;II@ A
}JJ 	
privateLL 
	ITimeZoneLL 
CreateTimeZoneLL (
(LL( )
DateTimeZoneLL) 5
dateTimeZoneLL6 B
)LLB C
{MM 	
ifNN 
(NN 
dateTimeZoneNN 
==NN 
nullNN  $
)NN$ %
{OO 
throwPP 
newPP 
ArgumentExceptionPP +
(PP+ ,
nameofPP, 2
(PP2 3
DateTimeZonePP3 ?
)PP? @
)PP@ A
;PPA B
}QQ 
varSS 
zoneIntervalSS 
=SS 
dateTimeZoneSS +
.SS+ ,
GetZoneIntervalSS, ;
(SS; <
CurrentInstantSS< J
)SSJ K
;SSK L
returnUU 
newUU 
TimeZoneUU 
(UU  
dateTimeZoneUU  ,
.UU, -
IdUU- /
,UU/ 0
zoneIntervalUU1 =
.UU= >
StandardOffsetUU> L
,UUL M
zoneIntervalUUN Z
.UUZ [

WallOffsetUU[ e
,UUe f
dateTimeZoneUUg s
)UUs t
;UUt u
}VV 	
privateXX 
staticXX 
boolXX 
IsValidTimeZoneXX +
(XX+ ,!
IDateTimeZoneProviderXX, A
providerXXB J
,XXJ K
stringXXL R

timeZoneIdXXS ]
)XX] ^
{YY 	
returnZZ 
providerZZ 
.ZZ 
GetZoneOrNullZZ )
(ZZ) *

timeZoneIdZZ* 4
)ZZ4 5
!=ZZ6 8
nullZZ9 =
;ZZ= >
}[[ 	
}\\ 
}]] ·>
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Services\LocalClock.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

class		 

LocalClock		 
:		 
ILocalClock		 )
{

 
private 
readonly 
IEnumerable $
<$ %
ITimeZoneSelector% 6
>6 7
_timeZoneSelectors8 J
;J K
private 
readonly 
IClock 
_clock  &
;& '
private 
readonly 
ICalendarManager )
_calendarManager* :
;: ;
private 
	ITimeZone 
	_timeZone #
;# $
public 

LocalClock 
( 
IEnumerable %
<% &
ITimeZoneSelector& 7
>7 8
timeZoneSelectors9 J
,J K
IClockL R
clockS X
,X Y
ICalendarManagerZ j
calendarManagerk z
)z {
{ 	
_timeZoneSelectors 
=  
timeZoneSelectors! 2
;2 3
_clock 
= 
clock 
; 
_calendarManager 
= 
calendarManager .
;. /
} 	
public 
Task 
< 
DateTimeOffset "
>" #
LocalNowAsync$ 1
{ 	
get 
{ 
return 
GetLocalNowAsync '
(' (
)( )
;) *
} 
} 	
private 
async 
Task 
< 
DateTimeOffset )
>) *
GetLocalNowAsync+ ;
(; <
)< =
{   	
return!! 
_clock!! 
.!! 
ConvertToTimeZone!! +
(!!+ ,
_clock!!, 2
.!!2 3
UtcNow!!3 9
,!!9 :
await!!; @!
GetLocalTimeZoneAsync!!A V
(!!V W
)!!W X
)!!X Y
;!!Y Z
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
	ITimeZone$$ #
>$$# $!
GetLocalTimeZoneAsync$$% :
($$: ;
)$$; <
{%% 	
if'' 
('' 
	_timeZone'' 
=='' 
null'' !
)''! "
{(( 
	_timeZone)) 
=)) 
await)) !"
LoadLocalTimeZoneAsync))" 8
())8 9
)))9 :
;)): ;
}** 
return,, 
	_timeZone,, 
;,, 
}-- 	
public// 
async// 
Task// 
<// 
DateTimeOffset// (
>//( )
ConvertToLocalAsync//* =
(//= >
DateTimeOffset//> L
dateTimeOffSet//M [
)//[ \
{00 	
var11 
localTimeZone11 
=11 
await11  %!
GetLocalTimeZoneAsync11& ;
(11; <
)11< =
;11= >
var22 
dateTimeZone22 
=22 
(22  
(22  !
TimeZone22! )
)22) *
localTimeZone22* 7
)227 8
.228 9
DateTimeZone229 E
;22E F
var33 
offsetDateTime33 
=33  
OffsetDateTime33! /
.33/ 0
FromDateTimeOffset330 B
(33B C
dateTimeOffSet33C Q
)33Q R
;33R S
var44 
currentCalendar44 
=44  !
BclCalendars44" .
.44. /
GetCalendarByName44/ @
(44@ A
await44A F
_calendarManager44G W
.44W X
GetCurrentCalendar44X j
(44j k
)44k l
)44l m
;44m n
return66 
offsetDateTime66 !
.66! "
InZone66" (
(66( )
dateTimeZone66) 5
)665 6
.666 7
WithCalendar667 C
(66C D
currentCalendar66D S
)66S T
.66T U
ToDateTimeOffset66U e
(66e f
)66f g
;66g h
}77 	
public99 
async99 
Task99 
<99 
DateTime99 "
>99" #
ConvertToUtcAsync99$ 5
(995 6
DateTime996 >
dateTime99? G
)99G H
{:: 	
var;; 
localTimeZone;; 
=;; 
await;;  %!
GetLocalTimeZoneAsync;;& ;
(;;; <
);;< =
;;;= >
var<< 
dateTimeZone<< 
=<< 
(<<  
(<<  !
TimeZone<<! )
)<<) *
localTimeZone<<* 7
)<<7 8
.<<8 9
DateTimeZone<<9 E
;<<E F
var== 
	localDate== 
=== 
LocalDateTime== )
.==) *
FromDateTime==* 6
(==6 7
dateTime==7 ?
)==? @
;==@ A
return>> 
dateTimeZone>> 
.>>  

AtStrictly>>  *
(>>* +
	localDate>>+ 4
)>>4 5
.>>5 6
ToDateTimeUtc>>6 C
(>>C D
)>>D E
;>>E F
}?? 	
privateAA 
asyncAA 
TaskAA 
<AA 
	ITimeZoneAA $
>AA$ %"
LoadLocalTimeZoneAsyncAA& <
(AA< =
)AA= >
{BB 	
varCC 
timeZoneResultsCC 
=CC  !
newCC" %
ListCC& *
<CC* +"
TimeZoneSelectorResultCC+ A
>CCA B
(CCB C
)CCC D
;CCD E
foreachEE 
(EE 
varEE 
timeZoneSelectorEE )
inEE* ,
_timeZoneSelectorsEE- ?
)EE? @
{FF 
varGG 
timeZoneResultGG "
=GG# $
awaitGG% *
timeZoneSelectorGG+ ;
.GG; <
GetTimeZoneAsyncGG< L
(GGL M
)GGM N
;GGN O
ifII 
(II 
timeZoneResultII "
!=II# %
nullII& *
)II* +
{JJ 
timeZoneResultsKK #
.KK# $
AddKK$ '
(KK' (
timeZoneResultKK( 6
)KK6 7
;KK7 8
}LL 
}MM 
ifOO 
(OO 
timeZoneResultsOO 
.OO  
CountOO  %
==OO& (
$numOO) *
)OO* +
{PP 
returnQQ 
_clockQQ 
.QQ 
GetSystemTimeZoneQQ /
(QQ/ 0
)QQ0 1
;QQ1 2
}RR 
elseSS 
ifSS 
(SS 
timeZoneResultsSS $
.SS$ %
CountSS% *
>SS+ ,
$numSS- .
)SS. /
{TT 
timeZoneResultsUU 
.UU  
SortUU  $
(UU$ %
(UU% &
xUU& '
,UU' (
yUU) *
)UU* +
=>UU, .
yUU/ 0
.UU0 1
PriorityUU1 9
.UU9 :
	CompareToUU: C
(UUC D
xUUD E
.UUE F
PriorityUUF N
)UUN O
)UUO P
;UUP Q
}VV 
foreachXX 
(XX 
varXX 
resultXX 
inXX  "
timeZoneResultsXX# 2
)XX2 3
{YY 
varZZ 
valueZZ 
=ZZ 
awaitZZ !
resultZZ" (
.ZZ( )

TimeZoneIdZZ) 3
(ZZ3 4
)ZZ4 5
;ZZ5 6
if\\ 
(\\ 
!\\ 
String\\ 
.\\ 
IsNullOrEmpty\\ )
(\\) *
value\\* /
)\\/ 0
)\\0 1
{]] 
return^^ 
_clock^^ !
.^^! "
GetTimeZone^^" -
(^^- .
value^^. 3
)^^3 4
;^^4 5
}__ 
}`` 
returnbb 
_clockbb 
.bb 
GetSystemTimeZonebb +
(bb+ ,
)bb, -
;bb- .
}cc 	
}dd 
}ee ∫"
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\CompositionStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class 
CompositionStrategy $
:% & 
ICompositionStrategy' ;
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ILogger  
_logger! (
;( )
public 
CompositionStrategy "
(" #
IExtensionManager 
extensionManager .
,. /
ILogger 
< 
CompositionStrategy '
>' (
logger) /
)/ 0
{ 	
_extensionManager 
= 
extensionManager  0
;0 1
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
ShellBlueprint (
>( )
ComposeAsync* 6
(6 7
ShellSettings7 D
settingsE M
,M N
ShellDescriptorO ^

descriptor_ i
)i j
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Debug+ 0
)0 1
)1 2
{ 
_logger 
. 
LogDebug  
(  !
$str! 6
)6 7
;7 8
}   
var"" 
featureNames"" 
="" 

descriptor"" )
."") *
Features""* 2
.""2 3
Select""3 9
(""9 :
x"": ;
=>""< >
x""? @
.""@ A
Id""A C
)""C D
.""D E
ToArray""E L
(""L M
)""M N
;""N O
var$$ 
features$$ 
=$$ 
await$$  
_extensionManager$$! 2
.$$2 3
LoadFeaturesAsync$$3 D
($$D E
featureNames$$E Q
)$$Q R
;$$R S
var&& 
entries&& 
=&& 
new&& 

Dictionary&& (
<&&( )
Type&&) -
,&&- .
FeatureEntry&&/ ;
>&&; <
(&&< =
)&&= >
;&&> ?
foreach(( 
((( 
var(( 
feature((  
in((! #
features(($ ,
)((, -
{)) 
foreach** 
(** 
var** 
exportedType** )
in*** ,
feature**- 4
.**4 5
ExportedTypes**5 B
)**B C
{++ 
var,, 
requiredFeatures,, (
=,,) *$
RequireFeaturesAttribute,,+ C
.,,C D*
GetRequiredFeatureNamesForType,,D b
(,,b c
exportedType,,c o
),,o p
;,,p q
if.. 
(.. 
requiredFeatures.. (
...( )
All..) ,
(.., -
x..- .
=>../ 1
featureNames..2 >
...> ?
Contains..? G
(..G H
x..H I
)..I J
)..J K
)..K L
{// 
entries00 
.00  
Add00  #
(00# $
exportedType00$ 0
,000 1
feature002 9
)009 :
;00: ;
}11 
}22 
}33 
var55 
result55 
=55 
new55 
ShellBlueprint55 +
{66 
Settings77 
=77 
settings77 #
,77# $

Descriptor88 
=88 

descriptor88 '
,88' (
Dependencies99 
=99 
entries99 &
}:: 
;:: 
if<< 
(<< 
_logger<< 
.<< 
	IsEnabled<< !
(<<! "
LogLevel<<" *
.<<* +
Debug<<+ 0
)<<0 1
)<<1 2
{== 
_logger>> 
.>> 
LogDebug>>  
(>>  !
$str>>! ;
)>>; <
;>>< =
}?? 
return@@ 
result@@ 
;@@ 
}AA 	
}BB 
}CC Ω
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\Extensions\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
internal 
static 
class '
ServiceCollectionExtensions 5
{ 
public 
static 
IServiceCollection (
CloneSingleton) 7
(7 8
this		 
IServiceCollection		 #
services		$ ,
,		, -
ServiceDescriptor

 
parent

 $
,

$ %
object "
implementationInstance )
)) *
{ 	
var 
cloned 
= 
new %
ClonedSingletonDescriptor 6
(6 7
parent7 =
,= >"
implementationInstance? U
)U V
;V W
services 
. 
Add 
( 
cloned 
)  
;  !
return 
services 
; 
} 	
public 
static 
IServiceCollection (
CloneSingleton) 7
(7 8
this 
IServiceCollection #

collection$ .
,. /
ServiceDescriptor 
parent $
,$ %
Func 
< 
IServiceProvider !
,! "
object# )
>) *!
implementationFactory+ @
)@ A
{ 	
var 
cloned 
= 
new %
ClonedSingletonDescriptor 6
(6 7
parent7 =
,= >!
implementationFactory? T
)T U
;U V

collection 
. 
Add 
( 
cloned !
)! "
;" #
return 

collection 
; 
} 	
} 
} ë<
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\Extensions\ServiceProviderExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

static 
class %
ServiceProviderExtensions 1
{		 
public 
static 
IServiceCollection ( 
CreateChildContainer) =
(= >
this> B
IServiceProviderC S
serviceProviderT c
,c d
IServiceCollectione w
serviceCollection	x â
)
â ä
{ 	
IServiceCollection 
clonedCollection /
=0 1
new2 5
ServiceCollection6 G
(G H
)H I
;I J
var 
servicesByType 
=  
serviceCollection! 2
.2 3
GroupBy3 :
(: ;
s; <
=>= ?
s@ A
.A B
ServiceTypeB M
)M N
;N O
foreach 
( 
var 
services !
in" $
servicesByType% 3
)3 4
{ 
if 
( 
services 
. 
Key  
==! #
typeof$ *
(* +
IStartupFilter+ 9
)9 :
): ;
{ 
} 
else 
if 
( 
services !
.! "
Key" %
.% &#
IsGenericTypeDefinition& =
)= >
{ 
foreach 
( 
var  
service! (
in) +
services, 4
)4 5
{   
clonedCollection!! (
.!!( )
Add!!) ,
(!!, -
service!!- 4
)!!4 5
;!!5 6
}"" 
}## 
else&& 
if&& 
(&& 
services&& !
.&&! "
Count&&" '
(&&' (
)&&( )
==&&* ,
$num&&- .
)&&. /
{'' 
var(( 
service(( 
=((  !
services((" *
.((* +
First((+ 0
(((0 1
)((1 2
;((2 3
if** 
(** 
service** 
.**  
Lifetime**  (
==**) +
ServiceLifetime**, ;
.**; <
	Singleton**< E
)**E F
{++ 
if// 
(// 
typeof// "
(//" #
IDisposable//# .
)//. /
./// 0
IsAssignableFrom//0 @
(//@ A
service//A H
.//H I!
GetImplementationType//I ^
(//^ _
)//_ `
)//` a
||//b d
service//e l
.//l m"
ImplementationFactory	//m Ç
!=
//É Ö
null
//Ü ä
)
//ä ã
{00 
clonedCollection22 ,
.22, -
CloneSingleton22- ;
(22; <
service22< C
,22C D
serviceProvider22E T
.22T U

GetService22U _
(22_ `
service22` g
.22g h
ServiceType22h s
)22s t
)22t u
;22u v
}33 
else44 
{55 
clonedCollection77 ,
.77, -
CloneSingleton77- ;
(77; <
service77< C
,77C D
sp77E G
=>77H J
serviceProvider77K Z
.77Z [

GetService77[ e
(77e f
service77f m
.77m n
ServiceType77n y
)77y z
)77z {
;77{ |
};; 
}<< 
else== 
{>> 
clonedCollection?? (
.??( )
Add??) ,
(??, -
service??- 4
)??4 5
;??5 6
}@@ 
}AA 
elseDD 
ifDD 
(DD 
servicesDD !
.DD! "
AllDD" %
(DD% &
sDD& '
=>DD( *
sDD+ ,
.DD, -
LifetimeDD- 5
!=DD6 8
ServiceLifetimeDD9 H
.DDH I
	SingletonDDI R
)DDR S
)DDS T
{EE 
foreachGG 
(GG 
varGG  
serviceGG! (
inGG) +
servicesGG, 4
)GG4 5
{HH 
clonedCollectionII (
.II( )
AddII) ,
(II, -
serviceII- 4
)II4 5
;II5 6
}JJ 
}KK 
elseNN 
ifNN 
(NN 
servicesNN !
.NN! "
AllNN" %
(NN% &
sNN& '
=>NN( *
sNN+ ,
.NN, -
LifetimeNN- 5
==NN6 8
ServiceLifetimeNN9 H
.NNH I
	SingletonNNI R
)NNR S
)NNS T
{OO 
varQQ 
	instancesQQ !
=QQ" #
serviceProviderQQ$ 3
.QQ3 4
GetServicesQQ4 ?
(QQ? @
servicesQQ@ H
.QQH I
KeyQQI L
)QQL M
;QQM N
forSS 
(SS 
varSS 
iSS 
=SS  
$numSS! "
;SS" #
iSS$ %
<SS& '
servicesSS( 0
.SS0 1
CountSS1 6
(SS6 7
)SS7 8
;SS8 9
iSS: ;
++SS; =
)SS= >
{TT 
clonedCollectionUU (
.UU( )
CloneSingletonUU) 7
(UU7 8
servicesUU8 @
.UU@ A
	ElementAtUUA J
(UUJ K
iUUK L
)UUL M
,UUM N
	instancesUUO X
.UUX Y
	ElementAtUUY b
(UUb c
iUUc d
)UUd e
)UUe f
;UUf g
}VV 
}WW 
elseZZ 
{[[ 
using]] 
(]] 
var]] 
scope]] $
=]]% &
serviceProvider]]' 6
.]]6 7
CreateScope]]7 B
(]]B C
)]]C D
)]]D E
{^^ 
var__ 
	instances__ %
=__& '
scope__( -
.__- .
ServiceProvider__. =
.__= >
GetServices__> I
(__I J
services__J R
.__R S
Key__S V
)__V W
;__W X
forbb 
(bb 
varbb  
ibb! "
=bb# $
$numbb% &
;bb& '
ibb( )
<bb* +
servicesbb, 4
.bb4 5
Countbb5 :
(bb: ;
)bb; <
;bb< =
ibb> ?
++bb? A
)bbA B
{cc 
ifdd 
(dd  
servicesdd  (
.dd( )
	ElementAtdd) 2
(dd2 3
idd3 4
)dd4 5
.dd5 6
Lifetimedd6 >
==dd? A
ServiceLifetimeddB Q
.ddQ R
	SingletonddR [
)dd[ \
{ee 
clonedCollectionff  0
.ff0 1
CloneSingletonff1 ?
(ff? @
servicesff@ H
.ffH I
	ElementAtffI R
(ffR S
iffS T
)ffT U
,ffU V
	instancesffW `
.ff` a
	ElementAtffa j
(ffj k
iffk l
)ffl m
)ffm n
;ffn o
}gg 
elsehh  
{ii 
clonedCollectionjj  0
.jj0 1
Addjj1 4
(jj4 5
servicesjj5 =
.jj= >
	ElementAtjj> G
(jjG H
ijjH I
)jjI J
)jjJ K
;jjK L
}kk 
}ll 
}mm 
}nn 
}oo 
returnqq 
clonedCollectionqq #
;qq# $
}rr 	
}ss 
}tt ≤6
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\FeatureAwareServiceCollection.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class )
FeatureAwareServiceCollection .
:/ 0
IServiceCollection1 C
{ 
private 
readonly 
IServiceCollection +#
_innerServiceCollection, C
;C D
private 
readonly 

Dictionary #
<# $
IFeatureInfo$ 0
,0 1
ServiceCollection2 C
>C D&
_featureServiceCollectionsE _
=` a
newb e

Dictionaryf p
<p q
IFeatureInfoq }
,} ~
ServiceCollection	 ê
>
ê ë
(
ë í
)
í ì
;
ì î
private 
ServiceCollection !,
 _currentFeatureServiceCollection" B
;B C
public )
FeatureAwareServiceCollection ,
(, -
IServiceCollection- ?"
innerServiceCollection@ V
)V W
{ 	#
_innerServiceCollection #
=$ %"
innerServiceCollection& <
;< =
} 	
public 
IDictionary 
< 
IFeatureInfo '
,' (
ServiceCollection) :
>: ;
FeatureCollections< N
=>O Q&
_featureServiceCollectionsR l
;l m
public!! 
void!! 
SetCurrentFeature!! %
(!!% &
IFeatureInfo!!& 2
feature!!3 :
)!!: ;
{"" 	
if## 
(## 
!## &
_featureServiceCollections## +
.##+ ,
TryGetValue##, 7
(##7 8
feature##8 ?
,##? @
out##A D,
 _currentFeatureServiceCollection##E e
)##e f
)##f g
{$$ &
_featureServiceCollections%% *
.%%* +
Add%%+ .
(%%. /
feature%%/ 6
,%%6 7,
 _currentFeatureServiceCollection%%8 X
=%%Y Z
new%%[ ^
ServiceCollection%%_ p
(%%p q
)%%q r
)%%r s
;%%s t
}&& 
}'' 	
public)) 
IEnumerator)) 
<)) 
ServiceDescriptor)) ,
>)), -
GetEnumerator)). ;
()); <
)))< =
{** 	
return++ #
_innerServiceCollection++ *
.++* +
GetEnumerator+++ 8
(++8 9
)++9 :
;++: ;
},, 	
IEnumerator.. 
IEnumerable.. 
...  
GetEnumerator..  -
(..- .
)... /
{// 	
return00 
GetEnumerator00  
(00  !
)00! "
;00" #
}11 	
void33 
ICollection33 
<33 
ServiceDescriptor33 *
>33* +
.33+ ,
Add33, /
(33/ 0
ServiceDescriptor330 A
item33B F
)33F G
{44 	#
_innerServiceCollection55 #
.55# $
Add55$ '
(55' (
item55( ,
)55, -
;55- .,
 _currentFeatureServiceCollection66 ,
?66, -
.66- .
Add66. 1
(661 2
item662 6
)666 7
;667 8
}77 	
public99 
void99 
Clear99 
(99 
)99 
{:: 	#
_innerServiceCollection;; #
.;;# $
Clear;;$ )
(;;) *
);;* +
;;;+ ,&
_featureServiceCollections<< &
.<<& '
Clear<<' ,
(<<, -
)<<- .
;<<. /
}== 	
public?? 
bool?? 
Contains?? 
(?? 
ServiceDescriptor?? .
item??/ 3
)??3 4
{@@ 	
returnAA #
_innerServiceCollectionAA *
.AA* +
ContainsAA+ 3
(AA3 4
itemAA4 8
)AA8 9
;AA9 :
}BB 	
publicDD 
voidDD 
CopyToDD 
(DD 
ServiceDescriptorDD ,
[DD, -
]DD- .
arrayDD/ 4
,DD4 5
intDD6 9

arrayIndexDD: D
)DDD E
{EE 	#
_innerServiceCollectionFF #
.FF# $
CopyToFF$ *
(FF* +
arrayFF+ 0
,FF0 1

arrayIndexFF2 <
)FF< =
;FF= >
}GG 	
publicII 
boolII 
RemoveII 
(II 
ServiceDescriptorII ,
itemII- 1
)II1 2
{JJ 	
returnKK #
_innerServiceCollectionKK *
.KK* +
RemoveKK+ 1
(KK1 2
itemKK2 6
)KK6 7
;KK7 8
}LL 	
publicNN 
intNN 
CountNN 
=>NN #
_innerServiceCollectionNN 3
.NN3 4
CountNN4 9
;NN9 :
publicPP 
boolPP 

IsReadOnlyPP 
=>PP !#
_innerServiceCollectionPP" 9
.PP9 :

IsReadOnlyPP: D
;PPD E
publicRR 
intRR 
IndexOfRR 
(RR 
ServiceDescriptorRR ,
itemRR- 1
)RR1 2
{SS 	
returnTT #
_innerServiceCollectionTT *
.TT* +
IndexOfTT+ 2
(TT2 3
itemTT3 7
)TT7 8
;TT8 9
}UU 	
publicWW 
voidWW 
InsertWW 
(WW 
intWW 
indexWW $
,WW$ %
ServiceDescriptorWW& 7
itemWW8 <
)WW< =
{XX 	#
_innerServiceCollectionYY #
.YY# $
InsertYY$ *
(YY* +
indexYY+ 0
,YY0 1
itemYY2 6
)YY6 7
;YY7 8,
 _currentFeatureServiceCollectionZZ ,
?ZZ, -
.ZZ- .
AddZZ. 1
(ZZ1 2
itemZZ2 6
)ZZ6 7
;ZZ7 8
}[[ 	
public]] 
void]] 
RemoveAt]] 
(]] 
int]]  
index]]! &
)]]& '
{^^ 	#
_innerServiceCollection__ #
.__# $
RemoveAt__$ ,
(__, -
index__- 2
)__2 3
;__3 4
}`` 	
publicbb 
ServiceDescriptorbb  
thisbb! %
[bb% &
intbb& )
indexbb* /
]bb/ 0
{cc 	
getdd 
=>dd #
_innerServiceCollectiondd *
[dd* +
indexdd+ 0
]dd0 1
;dd1 2
setee 
=>ee #
_innerServiceCollectionee *
[ee* +
indexee+ 0
]ee0 1
=ee2 3
valueee4 9
;ee9 :
}ff 	
}gg 
}hh ¸ã
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\ShellContainerFactory.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class !
ShellContainerFactory &
:' ("
IShellContainerFactory) ?
{ 
private 
IFeatureInfo 
_applicationFeature 0
;0 1
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
IServiceCollection + 
_applicationServices, @
;@ A
public !
ShellContainerFactory $
($ %
IHostEnvironment 
hostingEnvironment /
,/ 0
IExtensionManager 
extensionManager .
,. /
IServiceProvider 
serviceProvider ,
,, -
IServiceCollection 
applicationServices 2
)2 3
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_extensionManager 
= 
extensionManager  0
;0 1 
_applicationServices  
=! "
applicationServices# 6
;6 7
_serviceProvider   
=   
serviceProvider   .
;  . /
}!! 	
public## 
void## 
AddCoreServices## #
(### $
IServiceCollection##$ 6
services##7 ?
)##? @
{$$ 	
services%% 
.%% 
TryAddScoped%% !
<%%! "
IShellStateUpdater%%" 4
,%%4 5
ShellStateUpdater%%6 G
>%%G H
(%%H I
)%%I J
;%%J K
services&& 
.&& 
TryAddScoped&& !
<&&! "
IShellStateManager&&" 4
,&&4 5!
NullShellStateManager&&6 K
>&&K L
(&&L M
)&&M N
;&&N O
services'' 
.'' 
	AddScoped'' 
<'' /
#IShellDescriptorManagerEventHandler'' B
,''B C!
ShellStateCoordinator''D Y
>''Y Z
(''Z [
)''[ \
;''\ ]
}(( 	
public** 
IServiceProvider** 
CreateContainer**  /
(**/ 0
ShellSettings**0 =
settings**> F
,**F G
ShellBlueprint**H V
	blueprint**W `
)**` a
{++ 	
var,, #
tenantServiceCollection,, '
=,,( )
_serviceProvider,,* :
.,,: ; 
CreateChildContainer,,; O
(,,O P 
_applicationServices,,P d
),,d e
;,,e f#
tenantServiceCollection.. #
...# $
AddSingleton..$ 0
(..0 1
settings..1 9
)..9 :
;..: ;#
tenantServiceCollection// #
.//# $
AddSingleton//$ 0
(//0 1
sp//1 3
=>//4 6
{00 
var22 
shellSettings22 !
=22" #
sp22$ &
.22& '
GetRequiredService22' 9
<229 :
ShellSettings22: G
>22G H
(22H I
)22I J
;22J K
return33 
shellSettings33 $
.33$ %
ShellConfiguration33% 7
;337 8
}44 
)44 
;44 #
tenantServiceCollection66 #
.66# $
AddSingleton66$ 0
(660 1
	blueprint661 :
.66: ;

Descriptor66; E
)66E F
;66F G#
tenantServiceCollection77 #
.77# $
AddSingleton77$ 0
(770 1
	blueprint771 :
)77: ;
;77; <
AddCoreServices99 
(99 #
tenantServiceCollection99 3
)993 4
;994 5
var== #
moduleServiceCollection== '
===( )
_serviceProvider==* :
.==: ; 
CreateChildContainer==; O
(==O P 
_applicationServices==P d
)==d e
;==e f
foreach?? 
(?? 
var?? 

dependency?? #
in??$ &
	blueprint??' 0
.??0 1
Dependencies??1 =
.??= >
Where??> C
(??C D
t??D E
=>??F H
typeof??I O
(??O P
IStartup??P X
)??X Y
.??Y Z
IsAssignableFrom??Z j
(??j k
t??k l
.??l m
Key??m p
)??p q
)??q r
)??r s
{@@ #
moduleServiceCollectionAA '
.AA' (
TryAddEnumerableAA( 8
(AA8 9
ServiceDescriptorAA9 J
.AAJ K
	SingletonAAK T
(AAT U
typeofAAU [
(AA[ \
IStartupAA\ d
)AAd e
,AAe f

dependencyAAg q
.AAq r
KeyAAr u
)AAu v
)AAv w
;AAw x#
tenantServiceCollectionBB '
.BB' (
TryAddEnumerableBB( 8
(BB8 9
ServiceDescriptorBB9 J
.BBJ K
	SingletonBBK T
(BBT U
typeofBBU [
(BB[ \
IStartupBB\ d
)BBd e
,BBe f

dependencyBBg q
.BBq r
KeyBBr u
)BBu v
)BBv w
;BBw x
}CC $
EnsureApplicationFeatureGG $
(GG$ %
)GG% &
;GG& '
foreachII 
(II 
varII 

rawStartupII #
inII$ &
	blueprintII' 0
.II0 1
DependenciesII1 =
.II= >
KeysII> B
.IIB C
WhereIIC H
(IIH I
tIII J
=>IIK M
tIIN O
.IIO P
NameIIP T
==IIU W
$strIIX a
)IIa b
)IIb c
{JJ 
ifLL 
(LL 
typeofLL 
(LL 
IStartupLL #
)LL# $
.LL$ %
IsAssignableFromLL% 5
(LL5 6

rawStartupLL6 @
)LL@ A
)LLA B
{MM 
continueNN 
;NN 
}OO 
ifRR 
(RR 
	blueprintRR 
.RR 
DependenciesRR *
.RR* +
TryGetValueRR+ 6
(RR6 7

rawStartupRR7 A
,RRA B
outRRC F
varRRG J
startupFeatureRRK Y
)RRY Z
&&RR[ ]
startupFeatureRR^ l
.RRl m
FeatureInfoRRm x
.RRx y
IdRRy {
==RR| ~ 
_applicationFeature	RR í
.
RRí ì
Id
RRì ï
)
RRï ñ
{SS 
continueTT 
;TT 
}UU 
varXX #
configureServicesMethodXX +
=XX, -

rawStartupXX. 8
.XX8 9
	GetMethodXX9 B
(XXB C
nameofYY 
(YY 
IStartupYY #
.YY# $
ConfigureServicesYY$ 5
)YY5 6
,YY6 7
BindingFlagsZZ  
.ZZ  !
PublicZZ! '
|ZZ( )
BindingFlagsZZ* 6
.ZZ6 7
InstanceZZ7 ?
,ZZ? @
null[[ 
,[[ 
CallingConventions\\ &
.\\& '
Any\\' *
,\\* +
new]] 
Type]] 
[]] 
]]] 
{]]  
typeof]]! '
(]]' (
IServiceCollection]]( :
)]]: ;
}]]< =
,]]= >
null^^ 
)^^ 
;^^ 
var`` 
configureMethod`` #
=``$ %

rawStartup``& 0
.``0 1
	GetMethod``1 :
(``: ;
nameofaa 
(aa 
IStartupaa #
.aa# $
	Configureaa$ -
)aa- .
,aa. /
BindingFlagsbb  
.bb  !
Publicbb! '
|bb( )
BindingFlagsbb* 6
.bb6 7
Instancebb7 ?
)bb? @
;bb@ A
vardd 
orderPropertydd !
=dd" #

rawStartupdd$ .
.dd. /
GetPropertydd/ :
(dd: ;
nameofee 
(ee 
IStartupee #
.ee# $
Orderee$ )
)ee) *
,ee* +
BindingFlagsff  
.ff  !
Publicff! '
|ff( )
BindingFlagsff* 6
.ff6 7
Instanceff7 ?
)ff? @
;ff@ A
varhh "
configureOrderPropertyhh *
=hh+ ,

rawStartuphh- 7
.hh7 8
GetPropertyhh8 C
(hhC D
nameofii 
(ii 
IStartupii #
.ii# $
ConfigureOrderii$ 2
)ii2 3
,ii3 4
BindingFlagsjj  
.jj  !
Publicjj! '
|jj( )
BindingFlagsjj* 6
.jj6 7
Instancejj7 ?
)jj? @
;jj@ A#
moduleServiceCollectionnn '
.nn' (
AddSingletonnn( 4
(nn4 5

rawStartupnn5 ?
)nn? @
;nn@ A#
tenantServiceCollectionoo '
.oo' (
AddSingletonoo( 4
(oo4 5

rawStartupoo5 ?
)oo? @
;oo@ A#
moduleServiceCollectionqq '
.qq' (
AddSingletonqq( 4
<qq4 5
IStartupqq5 =
>qq= >
(qq> ?
spqq? A
=>qqB D
{rr 
varss 
startupInstancess '
=ss( )
spss* ,
.ss, -

GetServicess- 7
(ss7 8

rawStartupss8 B
)ssB C
;ssC D
returntt 
newtt 
StartupBaseMocktt .
(tt. /
startupInstancett/ >
,tt> ?#
configureServicesMethodtt@ W
,ttW X
configureMethodttY h
,tth i
orderPropertyttj w
,ttw x#
configureOrderProperty	tty è
)
ttè ê
;
ttê ë
}uu 
)uu 
;uu #
tenantServiceCollectionww '
.ww' (
AddSingletonww( 4
<ww4 5
IStartupww5 =
>ww= >
(ww> ?
spww? A
=>wwB D
{xx 
varyy 
startupInstanceyy '
=yy( )
spyy* ,
.yy, -

GetServiceyy- 7
(yy7 8

rawStartupyy8 B
)yyB C
;yyC D
returnzz 
newzz 
StartupBaseMockzz .
(zz. /
startupInstancezz/ >
,zz> ?#
configureServicesMethodzz@ W
,zzW X
configureMethodzzY h
,zzh i
orderPropertyzzj w
,zzw x#
configureOrderProperty	zzy è
)
zzè ê
;
zzê ë
}{{ 
){{ 
;{{ 
}|| #
moduleServiceCollection #
.# $
AddSingleton$ 0
(0 1
settings1 9
)9 :
;: ;%
moduleServiceCollection
ÄÄ #
.
ÄÄ# $
AddSingleton
ÄÄ$ 0
(
ÄÄ0 1
sp
ÄÄ1 3
=>
ÄÄ4 6
{
ÅÅ 
var
ÉÉ 
shellSettings
ÉÉ !
=
ÉÉ" #
sp
ÉÉ$ &
.
ÉÉ& ' 
GetRequiredService
ÉÉ' 9
<
ÉÉ9 :
ShellSettings
ÉÉ: G
>
ÉÉG H
(
ÉÉH I
)
ÉÉI J
;
ÉÉJ K
return
ÑÑ 
shellSettings
ÑÑ $
.
ÑÑ$ % 
ShellConfiguration
ÑÑ% 7
;
ÑÑ7 8
}
ÖÖ 
)
ÖÖ 
;
ÖÖ 
var
áá #
moduleServiceProvider
áá %
=
áá& '%
moduleServiceCollection
áá( ?
.
áá? @"
BuildServiceProvider
áá@ T
(
ááT U
true
ááU Y
)
ááY Z
;
ááZ [
var
ää +
featureAwareServiceCollection
ää -
=
ää. /
new
ää0 3+
FeatureAwareServiceCollection
ää4 Q
(
ääQ R%
tenantServiceCollection
ääR i
)
ääi j
;
ääj k
var
åå 
startups
åå 
=
åå #
moduleServiceProvider
åå 0
.
åå0 1
GetServices
åå1 <
<
åå< =
IStartup
åå= E
>
ååE F
(
ååF G
)
ååG H
;
ååH I
startups
êê 
=
êê 
startups
êê 
.
êê  
OrderBy
êê  '
(
êê' (
s
êê( )
=>
êê* ,
s
êê- .
.
êê. /
Order
êê/ 4
)
êê4 5
;
êê5 6
foreach
ìì 
(
ìì 
var
ìì 
startup
ìì  
in
ìì! #
startups
ìì$ ,
)
ìì, -
{
îî 
var
ïï 
feature
ïï 
=
ïï 
	blueprint
ïï '
.
ïï' (
Dependencies
ïï( 4
.
ïï4 5
FirstOrDefault
ïï5 C
(
ïïC D
x
ïïD E
=>
ïïF H
x
ïïI J
.
ïïJ K
Key
ïïK N
==
ïïO Q
startup
ïïR Y
.
ïïY Z
GetType
ïïZ a
(
ïïa b
)
ïïb c
)
ïïc d
.
ïïd e
Value
ïïe j
?
ïïj k
.
ïïk l
FeatureInfo
ïïl w
;
ïïw x+
featureAwareServiceCollection
öö -
.
öö- .
SetCurrentFeature
öö. ?
(
öö? @
feature
öö@ G
??
ööH J!
_applicationFeature
ööK ^
)
öö^ _
;
öö_ `
startup
õõ 
.
õõ 
ConfigureServices
õõ )
(
õõ) *+
featureAwareServiceCollection
õõ* G
)
õõG H
;
õõH I
}
úú 
(
ûû #
moduleServiceProvider
ûû "
as
ûû# %
IDisposable
ûû& 1
)
ûû1 2
.
ûû2 3
Dispose
ûû3 :
(
ûû: ;
)
ûû; <
;
ûû< =
var
†† "
shellServiceProvider
†† $
=
††% &%
tenantServiceCollection
††' >
.
††> ?"
BuildServiceProvider
††? S
(
††S T
true
††T X
)
††X Y
;
††Y Z
var
££ !
typeFeatureProvider
££ #
=
££$ %"
shellServiceProvider
££& :
.
££: ; 
GetRequiredService
££; M
<
££M N"
ITypeFeatureProvider
££N b
>
££b c
(
££c d
)
££d e
;
££e f
foreach
•• 
(
•• 
var
•• &
featureServiceCollection
•• 1
in
••2 4+
featureAwareServiceCollection
••5 R
.
••R S 
FeatureCollections
••S e
)
••e f
{
¶¶ 
foreach
ßß 
(
ßß 
var
ßß 
serviceDescriptor
ßß .
in
ßß/ 1&
featureServiceCollection
ßß2 J
.
ßßJ K
Value
ßßK P
)
ßßP Q
{
®® 
var
©© 
type
©© 
=
©© 
serviceDescriptor
©© 0
.
©©0 1#
GetImplementationType
©©1 F
(
©©F G
)
©©G H
;
©©H I
if
´´ 
(
´´ 
type
´´ 
!=
´´ 
null
´´  $
)
´´$ %
{
¨¨ 
var
≠≠ 
feature
≠≠ #
=
≠≠$ %&
featureServiceCollection
≠≠& >
.
≠≠> ?
Key
≠≠? B
;
≠≠B C
if
ØØ 
(
ØØ 
feature
ØØ #
==
ØØ$ &!
_applicationFeature
ØØ' :
)
ØØ: ;
{
∞∞ 
var
±± 
	attribute
±±  )
=
±±* +
type
±±, 0
.
±±0 1!
GetCustomAttributes
±±1 D
<
±±D E
FeatureAttribute
±±E U
>
±±U V
(
±±V W
false
±±W \
)
±±\ ]
.
±±] ^
FirstOrDefault
±±^ l
(
±±l m
)
±±m n
;
±±n o
if
≥≥ 
(
≥≥  
	attribute
≥≥  )
!=
≥≥* ,
null
≥≥- 1
)
≥≥1 2
{
¥¥ 
feature
µµ  '
=
µµ( )&
featureServiceCollection
µµ* B
.
µµB C
Key
µµC F
.
µµF G
	Extension
µµG P
.
µµP Q
Features
µµQ Y
.
∂∂$ %
FirstOrDefault
∂∂% 3
(
∂∂3 4
f
∂∂4 5
=>
∂∂6 8
f
∂∂9 :
.
∂∂: ;
Id
∂∂; =
==
∂∂> @
	attribute
∂∂A J
.
∂∂J K
FeatureName
∂∂K V
)
∂∂V W
??
∑∑$ &
feature
∑∑' .
;
∑∑. /
}
∏∏ 
}
ππ !
typeFeatureProvider
ªª +
.
ªª+ ,
TryAdd
ªª, 2
(
ªª2 3
type
ªª3 7
,
ªª7 8
feature
ªª9 @
)
ªª@ A
;
ªªA B
}
ºº 
}
ΩΩ 
}
ææ 
return
¿¿ "
shellServiceProvider
¿¿ '
;
¿¿' (
}
¡¡ 	
private
√√ 
void
√√ &
EnsureApplicationFeature
√√ -
(
√√- .
)
√√. /
{
ƒƒ 	
if
≈≈ 
(
≈≈ !
_applicationFeature
≈≈ #
==
≈≈$ &
null
≈≈' +
)
≈≈+ ,
{
∆∆ 
lock
«« 
(
«« 
this
«« 
)
«« 
{
»» 
if
…… 
(
…… !
_applicationFeature
…… +
==
……, .
null
……/ 3
)
……3 4
{
   !
_applicationFeature
ÀÀ +
=
ÀÀ, -
_extensionManager
ÀÀ. ?
.
ÀÀ? @
GetFeatures
ÀÀ@ K
(
ÀÀK L
)
ÀÀL M
.
ÃÃ 
FirstOrDefault
ÃÃ +
(
ÃÃ+ ,
f
ÃÃ, -
=>
ÃÃ. 0
f
ÃÃ1 2
.
ÃÃ2 3
Id
ÃÃ3 5
==
ÃÃ6 8!
_hostingEnvironment
ÃÃ9 L
.
ÃÃL M
ApplicationName
ÃÃM \
)
ÃÃ\ ]
;
ÃÃ] ^
}
ÕÕ 
}
ŒŒ 
}
œœ 
}
–– 	
}
—— 
}““ ∫;
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\ShellContextFactory.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{		 
public

 

class

 
ShellContextFactory

 $
:

% & 
IShellContextFactory

' ;
{ 
private 
readonly  
ICompositionStrategy - 
_compositionStrategy. B
;B C
private 
readonly "
IShellContainerFactory /"
_shellContainerFactory0 F
;F G
private 
readonly 
IEnumerable $
<$ %
ShellFeature% 1
>1 2
_shellFeatures3 A
;A B
private 
readonly 
ILogger  
_logger! (
;( )
public 
ShellContextFactory "
(" # 
ICompositionStrategy  
compositionStrategy! 4
,4 5"
IShellContainerFactory "!
shellContainerFactory# 8
,8 9
IEnumerable 
< 
ShellFeature $
>$ %
shellFeatures& 3
,3 4
ILogger 
< 
ShellContextFactory '
>' (
logger) /
)/ 0
{ 	 
_compositionStrategy  
=! "
compositionStrategy# 6
;6 7"
_shellContainerFactory "
=# $!
shellContainerFactory% :
;: ;
_shellFeatures 
= 
shellFeatures *
;* +
_logger 
= 
logger 
; 
} 	
async 
Task 
< 
ShellContext 
>   
IShellContextFactory! 5
.5 6#
CreateShellContextAsync6 M
(M N
ShellSettingsN [
settings\ d
)d e
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Information+ 6
)6 7
)7 8
{   
_logger!! 
.!! 
LogInformation!! &
(!!& '
$str!!' Y
,!!Y Z
settings!![ c
.!!c d
Name!!d h
)!!h i
;!!i j
}"" 
var$$ 
describedContext$$  
=$$! "
await$$# ('
CreateDescribedContextAsync$$) D
($$D E
settings$$E M
,$$M N"
MinimumShellDescriptor$$O e
($$e f
)$$f g
)$$g h
;$$h i
ShellDescriptor&& 
currentDescriptor&& -
=&&. /
null&&0 4
;&&4 5
await'' 
describedContext'' "
.''" #
CreateScope''# .
(''. /
)''/ 0
.''0 1"
UsingServiceScopeAsync''1 G
(''G H
async''H M
scope''N S
=>''T V
{(( 
var)) "
shellDescriptorManager)) *
=))+ ,
scope))- 2
.))2 3
ServiceProvider))3 B
.))B C

GetService))C M
<))M N#
IShellDescriptorManager))N e
>))e f
())f g
)))g h
;))h i
currentDescriptor** !
=**" #
await**$ )"
shellDescriptorManager*** @
.**@ A#
GetShellDescriptorAsync**A X
(**X Y
)**Y Z
;**Z [
}++ 
)++ 
;++ 
if-- 
(-- 
currentDescriptor-- !
!=--" $
null--% )
)--) *
{.. 
describedContext//  
.//  !
Dispose//! (
(//( )
)//) *
;//* +
return00 
await00 '
CreateDescribedContextAsync00 8
(008 9
settings009 A
,00A B
currentDescriptor00C T
)00T U
;00U V
}11 
return33 
describedContext33 #
;33# $
}44 	
async77 
Task77 
<77 
ShellContext77 
>77   
IShellContextFactory77! 5
.775 6#
CreateSetupContextAsync776 M
(77M N
ShellSettings77N [
settings77\ d
)77d e
{88 	
if99 
(99 
_logger99 
.99 
	IsEnabled99 !
(99! "
LogLevel99" *
.99* +
Debug99+ 0
)990 1
)991 2
{:: 
_logger;; 
.;; 
LogDebug;;  
(;;  !
$str;;! `
);;` a
;;;a b
}<< 
var== 

descriptor== 
=== "
MinimumShellDescriptor== 3
(==3 4
)==4 5
;==5 6
return?? 
await?? '
CreateDescribedContextAsync?? 4
(??4 5
settings??5 =
,??= >

descriptor??? I
)??I J
;??J K
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
ShellContextBB &
>BB& ''
CreateDescribedContextAsyncBB( C
(BBC D
ShellSettingsBBD Q
settingsBBR Z
,BBZ [
ShellDescriptorBB\ k
shellDescriptorBBl {
)BB{ |
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
$strFF! W
,FFW X
settingsFFY a
.FFa b
NameFFb f
)FFf g
;FFg h
}GG 
awaitII 
settingsII 
.II $
EnsureConfigurationAsyncII 3
(II3 4
)II4 5
;II5 6
varKK 
	blueprintKK 
=KK 
awaitKK ! 
_compositionStrategyKK" 6
.KK6 7
ComposeAsyncKK7 C
(KKC D
settingsKKD L
,KKL M
shellDescriptorKKN ]
)KK] ^
;KK^ _
varLL 
providerLL 
=LL "
_shellContainerFactoryLL 1
.LL1 2
CreateContainerLL2 A
(LLA B
settingsLLB J
,LLJ K
	blueprintLLL U
)LLU V
;LLV W
returnNN 
newNN 
ShellContextNN #
{OO 
SettingsPP 
=PP 
settingsPP #
,PP# $
	BlueprintQQ 
=QQ 
	blueprintQQ %
,QQ% &
ServiceProviderRR 
=RR  !
providerRR" *
}SS 
;SS 
}TT 	
private\\ 
ShellDescriptor\\ "
MinimumShellDescriptor\\  6
(\\6 7
)\\7 8
{]] 	
return`` 
new`` 
ShellDescriptor`` &
{aa 
SerialNumberbb 
=bb 
-bb  
$numbb  !
,bb! "
Featurescc 
=cc 
newcc 
Listcc #
<cc# $
ShellFeaturecc$ 0
>cc0 1
(cc1 2
_shellFeaturescc2 @
)cc@ A
,ccA B

Parametersdd 
=dd 
newdd  
Listdd! %
<dd% &
ShellParameterdd& 4
>dd4 5
(dd5 6
)dd6 7
}ee 
;ee 
}ff 	
}gg 
}hh Ì)
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\StartupBaseMock.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Shell		" '
.		' (
Builders		( 0
{

 
internal 
class 
StartupBaseMock "
:# $
StartupBase% 0
{ 
private 
readonly 
object 
_startup  (
;( )
private 
readonly 

MethodInfo #
_configureService$ 5
;5 6
private 
readonly 

MethodInfo #

_configure$ .
;. /
public 
StartupBaseMock 
( 
object 
startup 
, 

MethodInfo 
configureService '
,' (

MethodInfo 
	configure  
,  !
PropertyInfo 
order 
, 
PropertyInfo 
configureOrder '
)' (
{ 	
_startup 
= 
startup 
; 
_configureService 
= 
configureService  0
;0 1

_configure 
= 
	configure "
;" #
var 

orderValue 
= 
order "
?" #
.# $
GetValue$ ,
(, -
_startup- 5
)5 6
;6 7
var 
configureOrderValue #
=$ %
configureOrder& 4
?4 5
.5 6
GetValue6 >
(> ?
_startup? G
)G H
;H I
Order 
= 

orderValue 
!= !
null" &
?' (
() *
int* -
)- .

orderValue. 8
:9 :
default; B
;B C
ConfigureOrder   
=   
configureOrderValue   0
!=  1 3
null  4 8
?  9 :
(  ; <
int  < ?
)  ? @
configureOrderValue  @ S
:  T U
Order  V [
;  [ \
}!! 	
public$$ 
override$$ 
int$$ 
Order$$ !
{$$" #
get$$$ '
;$$' (
}$$) *
public'' 
override'' 
int'' 
ConfigureOrder'' *
{''+ ,
get''- 0
;''0 1
}''2 3
public)) 
override)) 
void)) 
ConfigureServices)) .
()). /
IServiceCollection))/ A
services))B J
)))J K
{** 	
if++ 
(++ 
_configureService++ !
==++" $
null++% )
)++) *
{,, 
return-- 
;-- 
}.. 
_configureService00 
.00 
Invoke00 $
(00$ %
_startup00% -
,00- .
new00/ 2
[002 3
]003 4
{005 6
services007 ?
}00@ A
)00A B
;00B C
}11 	
public33 
override33 
void33 
	Configure33 &
(33& '
IApplicationBuilder33' :
app33; >
,33> ?!
IEndpointRouteBuilder33@ U
routes33V \
,33\ ]
IServiceProvider33^ n
serviceProvider33o ~
)33~ 
{44 	
if55 
(55 

_configure55 
==55 
null55 "
)55" #
{66 
return77 
;77 
}88 
var<< 

parameters<< 
=<< 

_configure<< '
.<<' (
GetParameters<<( 5
(<<5 6
)<<6 7
.<<7 8
Select<<8 >
(<<> ?
x<<? @
=><<A C
{== 
if>> 
(>> 
x>> 
.>> 
ParameterType>> #
==>>$ &
typeof>>' -
(>>- .
IServiceProvider>>. >
)>>> ?
)>>? @
{?? 
return@@ 
serviceProvider@@ *
;@@* +
}AA 
elseBB 
ifBB 
(BB 
xBB 
.BB 
ParameterTypeBB (
==BB) +
typeofBB, 2
(BB2 3
IApplicationBuilderBB3 F
)BBF G
)BBG H
{CC 
returnDD 
appDD 
;DD 
}EE 
elseFF 
ifFF 
(FF 
xFF 
.FF 
ParameterTypeFF (
==FF) +
typeofFF, 2
(FF2 3!
IEndpointRouteBuilderFF3 H
)FFH I
)FFI J
{GG 
returnHH 
routesHH !
;HH! "
}II 
returnKK 
serviceProviderKK &
.KK& '

GetServiceKK' 1
(KK1 2
xKK2 3
.KK3 4
ParameterTypeKK4 A
)KKA B
;KKB C
}LL 
)LL 
;LL 

_configureNN 
.NN 
InvokeNN 
(NN 
_startupNN &
,NN& '

parametersNN( 2
.NN2 3
ToArrayNN3 :
(NN: ;
)NN; <
)NN< =
;NN= >
}OO 	
}PP 
}QQ ä*
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Configuration\ShellConfigurationSources.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Shell		" '
.		' (
Configuration		( 5
{

 
public 

class %
ShellConfigurationSources *
:+ ,&
IShellConfigurationSources- G
{ 
private 
readonly 
string 

_container  *
;* +
public %
ShellConfigurationSources (
(( )
IOptions) 1
<1 2
ShellOptions2 >
>> ?
shellOptions@ L
)L M
{ 	

_container 
= 
Path 
. 
Combine %
(% &
shellOptions& 2
.2 3
Value3 8
.8 9%
ShellsApplicationDataPath9 R
,R S
shellOptionsT `
.` a
Valuea f
.f g
ShellsContainerNameg z
)z {
;{ |
	Directory 
. 
CreateDirectory %
(% &

_container& 0
)0 1
;1 2
} 	
public 
Task 
AddSourcesAsync #
(# $
string$ *
tenant+ 1
,1 2!
IConfigurationBuilder3 H
builderI P
)P Q
{ 	
builder 
. 
AddJsonFile 
( 
Path !
.! "
Combine" )
() *

_container* 4
,4 5
tenant6 <
,< =
$str> P
)P Q
,Q R
optionalS [
:[ \
true] a
)a b
;b c
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
async 
Task 
	SaveAsync #
(# $
string$ *
tenant+ 1
,1 2
IDictionary3 >
<> ?
string? E
,E F
stringG M
>M N
dataO S
)S T
{ 	
var   
tenantFolder   
=   
Path   #
.  # $
Combine  $ +
(  + ,

_container  , 6
,  6 7
tenant  8 >
)  > ?
;  ? @
var!! 
appsettings!! 
=!! 
Path!! "
.!!" #
Combine!!# *
(!!* +
tenantFolder!!+ 7
,!!7 8
$str!!9 K
)!!K L
;!!L M
JObject## 
config## 
;## 
if$$ 
($$ 
File$$ 
.$$ 
Exists$$ 
($$ 
appsettings$$ '
)$$' (
)$$( )
{%% 
using&& 
(&& 
var&& 
file&& 
=&&  !
File&&" &
.&&& '
OpenText&&' /
(&&/ 0
appsettings&&0 ;
)&&; <
)&&< =
{'' 
using(( 
((( 
var(( 
reader(( %
=((& '
new((( +
JsonTextReader((, :
(((: ;
file((; ?
)((? @
)((@ A
{)) 
config** 
=**  
await**! &
JObject**' .
.**. /
	LoadAsync**/ 8
(**8 9
reader**9 ?
)**? @
;**@ A
}++ 
},, 
}-- 
else.. 
{// 
config00 
=00 
new00 
JObject00 $
(00$ %
)00% &
;00& '
}11 
foreach33 
(33 
var33 
key33 
in33 
data33  $
.33$ %
Keys33% )
)33) *
{44 
if55 
(55 
data55 
[55 
key55 
]55 
!=55  
null55! %
)55% &
{66 
config77 
[77 
key77 
]77 
=77  !
data77" &
[77& '
key77' *
]77* +
;77+ ,
}88 
else99 
{:: 
config;; 
.;; 
Remove;; !
(;;! "
key;;" %
);;% &
;;;& '
}<< 
}== 
	Directory?? 
.?? 
CreateDirectory?? %
(??% &
tenantFolder??& 2
)??2 3
;??3 4
usingAA 
(AA 
varAA 
fileAA 
=AA 
FileAA "
.AA" #

CreateTextAA# -
(AA- .
appsettingsAA. 9
)AA9 :
)AA: ;
{BB 
usingCC 
(CC 
varCC 
writerCC !
=CC" #
newCC$ '
JsonTextWriterCC( 6
(CC6 7
fileCC7 ;
)CC; <
{CC= >

FormattingCC? I
=CCJ K

FormattingCCL V
.CCV W
IndentedCCW _
}CC` a
)CCa b
{DD 
awaitEE 
configEE  
.EE  !
WriteToAsyncEE! -
(EE- .
writerEE. 4
)EE4 5
;EE5 6
}FF 
}GG 
}HH 	
}II 
}JJ Ü
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Configuration\ShellsConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public		 

class		 &
ShellsConfigurationSources		 +
:		, -'
IShellsConfigurationSources		. I
{

 
private 
readonly 
string 
_environment  ,
;, -
private 
readonly 
string 
_appsettings  ,
;, -
public &
ShellsConfigurationSources )
() *
IHostEnvironment* :
hostingEnvironment; M
,M N
IOptionsO W
<W X
ShellOptionsX d
>d e
shellOptionsf r
)r s
{ 	
_environment 
= 
hostingEnvironment -
.- .
EnvironmentName. =
;= >
_appsettings 
= 
Path 
.  
Combine  '
(' (
shellOptions( 4
.4 5
Value5 :
.: ;%
ShellsApplicationDataPath; T
,T U
$strV c
)c d
;d e
} 	
public 
Task 
AddSourcesAsync #
(# $!
IConfigurationBuilder$ 9
builder: A
)A B
{ 	
builder 
. 
AddJsonFile 
( 
$" 
{  
_appsettings  ,
}, -
.json- 2
"2 3
,3 4
optional5 =
:= >
true? C
)C D
. 
AddJsonFile 
( 
$" 
{  
_appsettings  ,
}, -
.- .
{. /
_environment/ ;
}; <
.json< A
"A B
,B C
optionalD L
:L M
trueN R
)R S
;S T
return 
Task 
. 
CompletedTask %
;% &
} 	
} 
} ﬁ%
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Configuration\ShellsSettingsSources.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Shell		" '
.		' (
Configuration		( 5
{

 
public 

class !
ShellsSettingsSources &
:' ("
IShellsSettingsSources) ?
{ 
private 
readonly 
string 
_tenants  (
;( )
public !
ShellsSettingsSources $
($ %
IOptions% -
<- .
ShellOptions. :
>: ;
shellOptions< H
)H I
{ 	
_tenants 
= 
Path 
. 
Combine #
(# $
shellOptions$ 0
.0 1
Value1 6
.6 7%
ShellsApplicationDataPath7 P
,P Q
$strR `
)` a
;a b
} 	
public 
Task 
AddSourcesAsync #
(# $!
IConfigurationBuilder$ 9
builder: A
)A B
{ 	
builder 
. 
AddJsonFile 
(  
_tenants  (
,( )
optional* 2
:2 3
true4 8
)8 9
;9 :
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
async 
Task 
	SaveAsync #
(# $
string$ *
tenant+ 1
,1 2
IDictionary3 >
<> ?
string? E
,E F
stringG M
>M N
dataO S
)S T
{ 	
JObject 
tenantsSettings #
;# $
if 
( 
File 
. 
Exists 
( 
_tenants $
)$ %
)% &
{ 
using 
( 
var 
file 
=  !
File" &
.& '
OpenText' /
(/ 0
_tenants0 8
)8 9
)9 :
{   
using!! 
(!! 
var!! 
reader!! %
=!!& '
new!!( +
JsonTextReader!!, :
(!!: ;
file!!; ?
)!!? @
)!!@ A
{"" 
tenantsSettings## '
=##( )
await##* /
JObject##0 7
.##7 8
	LoadAsync##8 A
(##A B
reader##B H
)##H I
;##I J
}$$ 
}%% 
}&& 
else'' 
{(( 
tenantsSettings)) 
=))  !
new))" %
JObject))& -
())- .
))). /
;))/ 0
}** 
var,, 
settings,, 
=,, 
tenantsSettings,, *
.,,* +
GetValue,,+ 3
(,,3 4
tenant,,4 :
),,: ;
as,,< >
JObject,,? F
??,,G I
new,,J M
JObject,,N U
(,,U V
),,V W
;,,W X
foreach.. 
(.. 
var.. 
key.. 
in.. 
data..  $
...$ %
Keys..% )
)..) *
{// 
if00 
(00 
data00 
[00 
key00 
]00 
!=00  
null00! %
)00% &
{11 
settings22 
[22 
key22  
]22  !
=22" #
data22$ (
[22( )
key22) ,
]22, -
;22- .
}33 
else44 
{55 
settings66 
.66 
Remove66 #
(66# $
key66$ '
)66' (
;66( )
}77 
}88 
tenantsSettings:: 
[:: 
tenant:: "
]::" #
=::$ %
settings::& .
;::. /
using<< 
(<< 
var<< 
file<< 
=<< 
File<< "
.<<" #

CreateText<<# -
(<<- .
_tenants<<. 6
)<<6 7
)<<7 8
{== 
using>> 
(>> 
var>> 
writer>> !
=>>" #
new>>$ '
JsonTextWriter>>( 6
(>>6 7
file>>7 ;
)>>; <
{>>= >

Formatting>>? I
=>>J K

Formatting>>L V
.>>V W
Indented>>W _
}>>` a
)>>a b
{?? 
await@@ 
tenantsSettings@@ )
.@@) *
WriteToAsync@@* 6
(@@6 7
writer@@7 =
)@@= >
;@@> ?
}AA 
}BB 
}CC 	
}DD 
}EE ﬂ
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Descriptor\Settings\AllFeaturesShellDescriptorManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Settings3 ;
{ 
public 

class -
!AllFeaturesShellDescriptorManager 2
:3 4#
IShellDescriptorManager5 L
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
ShellDescriptor 
_shellDescriptor  0
;0 1
public -
!AllFeaturesShellDescriptorManager 0
(0 1
IExtensionManager1 B
extensionManagerC S
)S T
{ 	
_extensionManager 
= 
extensionManager  0
;0 1
} 	
public 
Task 
< 
ShellDescriptor #
># $#
GetShellDescriptorAsync% <
(< =
)= >
{ 	
if 
( 
_shellDescriptor  
==! #
null$ (
)( )
{ 
_shellDescriptor  
=! "
new# &
ShellDescriptor' 6
{ 
Features 
= 
_extensionManager 0
.0 1
GetFeatures1 <
(< =
)= >
.> ?
Select? E
(E F
xF G
=>H J
newK N
ShellFeatureO [
{\ ]
Id^ `
=a b
xc d
.d e
Ide g
}h i
)i j
.j k
ToListk q
(q r
)r s
} 
; 
} 
return!! 
Task!! 
.!! 

FromResult!! "
(!!" #
_shellDescriptor!!# 3
)!!3 4
;!!4 5
}"" 	
public$$ 
Task$$ &
UpdateShellDescriptorAsync$$ .
($$. /
int$$/ 2
priorSerialNumber$$3 D
,$$D E
IEnumerable$$F Q
<$$Q R
ShellFeature$$R ^
>$$^ _
enabledFeatures$$` o
,$$o p
IEnumerable$$q |
<$$| }
ShellParameter	$$} ã
>
$$ã å

parameters
$$ç ó
)
$$ó ò
{%% 	
return&& 
Task&& 
.&& 
CompletedTask&& %
;&&% &
}'' 	
}(( 
})) Æ!
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Descriptor\Settings\ConfiguredFeaturesShellDescriptorManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Settings3 ;
{		 
public 

class 4
(ConfiguredFeaturesShellDescriptorManager 9
:: ;#
IShellDescriptorManager< S
{ 
private 
readonly 
IShellConfiguration ,
_shellConfiguration- @
;@ A
private 
readonly 
IEnumerable $
<$ %
ShellFeature% 1
>1 2"
_alwaysEnabledFeatures3 I
;I J
private 
ShellDescriptor 
_shellDescriptor  0
;0 1
public 4
(ConfiguredFeaturesShellDescriptorManager 7
(7 8
IShellConfiguration 
shellConfiguration  2
,2 3
IEnumerable 
< 
ShellFeature $
>$ %
shellFeatures& 3
)3 4
{ 	
_shellConfiguration 
=  !
shellConfiguration" 4
;4 5"
_alwaysEnabledFeatures "
=# $
shellFeatures% 2
.2 3
Where3 8
(8 9
f9 :
=>; =
f> ?
.? @
AlwaysEnabled@ M
)M N
.N O
ToArrayO V
(V W
)W X
;X Y
} 	
public 
Task 
< 
ShellDescriptor #
># $#
GetShellDescriptorAsync% <
(< =
)= >
{ 	
if 
( 
_shellDescriptor  
==! #
null$ (
)( )
{ 
var 
configuredFeatures &
=' (
new) ,
ConfiguredFeatures- ?
(? @
)@ A
;A B
_shellConfiguration   #
.  # $
Bind  $ (
(  ( )
configuredFeatures  ) ;
)  ; <
;  < =
var"" 
features"" 
="" "
_alwaysEnabledFeatures"" 5
.""5 6
Concat""6 <
(""< =
configuredFeatures""= O
.""O P
Features""P X
.## 
Select## 
(## 
id## 
=>## !
new##" %
ShellFeature##& 2
(##2 3
id##3 5
)##5 6
{##7 8
AlwaysEnabled##9 F
=##G H
true##I M
}##N O
)##O P
)##P Q
.##Q R
Distinct##R Z
(##Z [
)##[ \
;##\ ]
_shellDescriptor%%  
=%%! "
new%%# &
ShellDescriptor%%' 6
{&& 
Features'' 
='' 
features'' '
.''' (
ToList''( .
(''. /
)''/ 0
}(( 
;(( 
})) 
return++ 
Task++ 
.++ 

FromResult++ "
(++" #
_shellDescriptor++# 3
)++3 4
;++4 5
},, 	
public.. 
Task.. &
UpdateShellDescriptorAsync.. .
(... /
int../ 2
priorSerialNumber..3 D
,..D E
IEnumerable..F Q
<..Q R
ShellFeature..R ^
>..^ _
enabledFeatures..` o
,..o p
IEnumerable..q |
<..| }
ShellParameter	..} ã
>
..ã å

parameters
..ç ó
)
..ó ò
{// 	
return00 
Task00 
.00 
CompletedTask00 %
;00% &
}11 	
private33 
class33 
ConfiguredFeatures33 (
{44 	
public55 
string55 
[55 
]55 
Features55 $
{55% &
get55' *
;55* +
set55, /
;55/ 0
}551 2
=553 4
new555 8
string559 ?
[55? @
]55@ A
{55B C
}55D E
;55E F
}66 	
}77 
}88 ª
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Descriptor\Settings\SetFeaturesShellDescriptorManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Settings3 ;
{ 
public 

class -
!SetFeaturesShellDescriptorManager 2
:3 4#
IShellDescriptorManager5 L
{ 
private 
readonly 
IEnumerable $
<$ %
ShellFeature% 1
>1 2
_shellFeatures3 A
;A B
private 
ShellDescriptor 
_shellDescriptor  0
;0 1
public -
!SetFeaturesShellDescriptorManager 0
(0 1
IEnumerable1 <
<< =
ShellFeature= I
>I J
shellFeaturesK X
)X Y
{ 	
_shellFeatures 
= 
shellFeatures *
;* +
} 	
public 
Task 
< 
ShellDescriptor #
># $#
GetShellDescriptorAsync% <
(< =
)= >
{ 	
if 
( 
_shellDescriptor  
==! #
null$ (
)( )
{ 
_shellDescriptor  
=! "
new# &
ShellDescriptor' 6
{ 
Features 
= 
_shellFeatures -
.- .
Distinct. 6
(6 7
)7 8
.8 9
ToList9 ?
(? @
)@ A
} 
; 
} 
return   
Task   
.   

FromResult   "
(  " #
_shellDescriptor  # 3
)  3 4
;  4 5
}!! 	
public## 
Task## &
UpdateShellDescriptorAsync## .
(##. /
int##/ 2
priorSerialNumber##3 D
,##D E
IEnumerable##F Q
<##Q R
ShellFeature##R ^
>##^ _
enabledFeatures##` o
,##o p
IEnumerable##q |
<##| }
ShellParameter	##} ã
>
##ã å

parameters
##ç ó
)
##ó ò
{$$ 	
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
}'' 
}(( ≈
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Distributed\DistributedContext.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Distributed( 3
{ 
internal		 
class		 
DistributedContext		 %
:		& '
IDisposable		( 3
{

 
private 
ShellContext 
_context %
;% &
private 
volatile 
int 
_count #
;# $
private 
bool 
	_released 
; 
public 
DistributedContext !
(! "
ShellContext" .
context/ 6
)6 7
{ 	
Interlocked 
. 
	Increment !
(! "
ref" %
_count& ,
), -
;- .
_context 
= 
context 
; 
if 
( 
context 
. 
ServiceProvider '
.' (

GetService( 2
<2 3)
DistributedShellMarkerService3 P
>P Q
(Q R
)R S
==T V
nullW [
)[ \
{ 
return 
; 
} 
var 
distributedCache  
=! "
context# *
.* +
ServiceProvider+ :
.: ;

GetService; E
<E F
IDistributedCacheF W
>W X
(X Y
)Y Z
;Z [
if 
( 
distributedCache  
==! #
null$ (
||) +
distributedCache, <
is= ?"
MemoryDistributedCache@ V
)V W
{ 
return 
; 
} 
DistributedCache!! 
=!! 
distributedCache!! /
;!!/ 0
}"" 	
public$$ 
IDistributedCache$$  
DistributedCache$$! 1
{$$2 3
get$$4 7
;$$7 8
}$$9 :
public&& 
DistributedContext&& !
Acquire&&" )
(&&) *
)&&* +
{'' 	
if)) 
()) 
	_released)) 
))) 
{** 
return++ 
null++ 
;++ 
},, 
Interlocked.. 
... 
	Increment.. !
(..! "
ref.." %
_count..& ,
).., -
;..- .
if11 
(11 
	_released11 
)11 
{22 
Dispose33 
(33 
)33 
;33 
return44 
null44 
;44 
}55 
return77 
this77 
;77 
}88 	
public:: 
void:: 
Release:: 
(:: 
):: 
{;; 	
	_released<< 
=<< 
true<< 
;<< 
Dispose== 
(== 
)== 
;== 
}>> 	
public@@ 
void@@ 
Dispose@@ 
(@@ 
)@@ 
{AA 	
ifCC 
(CC 
InterlockedCC 
.CC 
	DecrementCC %
(CC% &
refCC& )
_countCC* 0
)CC0 1
==CC2 4
$numCC5 6
)CC6 7
{DD 
_contextEE 
.EE 
DisposeEE  
(EE  !
)EE! "
;EE" #
}FF 
}GG 	
}HH 
}II ç™
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Distributed\DistributedShellHostedService.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Distributed( 3
{ 
internal 
class )
DistributedShellHostedService 0
:1 2
BackgroundService3 D
{ 
private 
const 
string 
ShellChangedIdKey .
=/ 0
$str1 C
;C D
private 
const 
string 
ShellCreatedIdKey .
=/ 0
$str1 C
;C D
private 
const 
string 
ReleaseIdKeySuffix /
=0 1
$str2 ?
;? @
private 
const 
string 
ReloadIdKeySuffix .
=/ 0
$str1 =
;= >
private 
static 
readonly 
TimeSpan  (
MinIdleTime) 4
=5 6
TimeSpan7 ?
.? @
FromSeconds@ K
(K L
$numL M
)M N
;N O
private 
static 
readonly 
TimeSpan  (
MaxRetryTime) 5
=6 7
TimeSpan8 @
.@ A
FromMinutesA L
(L M
$numM N
)N O
;O P
private 
static 
readonly 
TimeSpan  (
MaxBusyTime) 4
=5 6
TimeSpan7 ?
.? @
FromSeconds@ K
(K L
$numL M
)M N
;N O
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly  
IShellContextFactory - 
_shellContextFactory. B
;B C
private 
readonly !
IShellSettingsManager .!
_shellSettingsManager/ D
;D E
private   
readonly   
ILogger    
_logger  ! (
;  ( )
private"" 
readonly""  
ConcurrentDictionary"" -
<""- .
string"". 4
,""4 5
ShellIdentifier""6 E
>""E F
_identifiers""G S
=""T U
new""V Y 
ConcurrentDictionary""Z n
<""n o
string""o u
,""u v
ShellIdentifier	""w Ü
>
""Ü á
(
""á à
)
""à â
;
""â ä
private## 
readonly##  
ConcurrentDictionary## -
<##- .
string##. 4
,##4 5
SemaphoreSlim##6 C
>##C D
_semaphores##E P
=##Q R
new##S V 
ConcurrentDictionary##W k
<##k l
string##l r
,##r s
SemaphoreSlim	##t Å
>
##Å Ç
(
##Ç É
)
##É Ñ
;
##Ñ Ö
private%% 
string%% 
_shellChangedId%% &
;%%& '
private&& 
string&& 
_shellCreatedId&& &
;&&& '
private(( 
ShellContext(( 
_defaultContext(( ,
;((, -
private)) 
DistributedContext)) "
_context))# +
;))+ ,
private++ 
DateTime++ 
_busyStartTime++ '
;++' (
private,, 
bool,, 
_terminated,,  
;,,  !
public.. )
DistributedShellHostedService.. ,
(.., -

IShellHost// 
	shellHost//  
,//  ! 
IShellContextFactory00  
shellContextFactory00! 4
,004 5!
IShellSettingsManager11 ! 
shellSettingsManager11" 6
,116 7
ILogger22 
<22 )
DistributedShellHostedService22 1
>221 2
logger223 9
)229 :
{33 	

_shellHost44 
=44 
	shellHost44 "
;44" # 
_shellContextFactory55  
=55! "
shellContextFactory55# 6
;556 7!
_shellSettingsManager66 !
=66" # 
shellSettingsManager66$ 8
;668 9
_logger77 
=77 
logger77 
;77 
	shellHost99 
.99 
LoadingAsync99 "
+=99# %
LoadingAsync99& 2
;992 3
	shellHost:: 
.:: 
ReleasingAsync:: $
+=::% '
ReleasingAsync::( 6
;::6 7
	shellHost;; 
.;; 
ReloadingAsync;; $
+=;;% '
ReloadingAsync;;( 6
;;;6 7
}<< 	
	protectedAA 
overrideAA 
asyncAA  
TaskAA! %
ExecuteAsyncAA& 2
(AA2 3
CancellationTokenAA3 D
stoppingTokenAAE R
)AAR S
{BB 	
stoppingTokenCC 
.CC 
RegisterCC "
(CC" #
(CC# $
)CC$ %
=>CC& (
{DD 
_loggerEE 
.EE 
LogInformationEE &
(EE& '
$strEE' E
,EEE F
nameofEEG M
(EEM N)
DistributedShellHostedServiceEEN k
)EEk l
)EEl m
;EEm n
}FF 
)FF 
;FF 
varII 
idleTimeII 
=II 
MinIdleTimeII &
;II& '
whileKK 
(KK 
!KK 
stoppingTokenKK !
.KK! "#
IsCancellationRequestedKK" 9
)KK9 :
{LL 
tryMM 
{NN 
ifPP 
(PP 
!PP 
awaitPP 
TryWaitAsyncPP +
(PP+ ,
idleTimePP, 4
,PP4 5
stoppingTokenPP6 C
)PPC D
)PPD E
{QQ 
breakRR 
;RR 
}SS 
ifVV 
(VV 
!VV 

_shellHostVV #
.VV# $
TryGetShellContextVV$ 6
(VV6 7
ShellHelperVV7 B
.VVB C
DefaultShellNameVVC S
,VVS T
outVVU X
varVVY \
defaultContextVV] k
)VVk l
||VVm o
defaultContextWW &
.WW& '
SettingsWW' /
.WW/ 0
StateWW0 5
!=WW6 8
TenantStateWW9 D
.WWD E
RunningWWE L
)WWL M
{XX 
continueYY  
;YY  !
}ZZ 
var]] 
context]] 
=]]  !
await]]" '.
"GetOrCreateDistributedContextAsync]]( J
(]]J K
defaultContext]]K Y
)]]Y Z
;]]Z [
var`` 
distributedCache`` (
=``) *
context``+ 2
?``2 3
.``3 4
DistributedCache``4 D
;``D E
ifaa 
(aa 
distributedCacheaa (
==aa) +
nullaa, 0
)aa0 1
{bb 
continuecc  
;cc  !
}dd 
stringgg 
shellChangedIdgg )
;gg) *
tryhh 
{ii 
shellChangedIdjj &
=jj' (
awaitjj) .
distributedCachejj/ ?
.jj? @
GetStringAsyncjj@ N
(jjN O
ShellChangedIdKeyjjO `
)jj` a
;jja b
}kk 
catchll 
(ll 
	Exceptionll $
exll% '
)ll' (
whenll) -
(ll. /
!ll/ 0
exll0 2
.ll2 3
IsFatalll3 :
(ll: ;
)ll; <
)ll< =
{mm 
idleTimeoo  
=oo! "#
NextIdleTimeBeforeRetryoo# :
(oo: ;
idleTimeoo; C
,ooC D
exooE G
)ooG H
;ooH I
continuepp  
;pp  !
}qq 
idleTimett 
=tt 
MinIdleTimett *
;tt* +
ifww 
(ww 
shellChangedIdww &
==ww' )
nullww* .
||ww/ 1
_shellChangedIdww2 A
==wwB D
shellChangedIdwwE S
)wwS T
{xx 
continueyy  
;yy  !
}zz 
string}} 
shellCreatedId}} )
;}}) *
try~~ 
{ 
shellCreatedId
ÄÄ &
=
ÄÄ' (
await
ÄÄ) .
distributedCache
ÄÄ/ ?
.
ÄÄ? @
GetStringAsync
ÄÄ@ N
(
ÄÄN O
ShellCreatedIdKey
ÄÄO `
)
ÄÄ` a
;
ÄÄa b
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ $
ex
ÇÇ% '
)
ÇÇ' (
when
ÇÇ) -
(
ÇÇ. /
!
ÇÇ/ 0
ex
ÇÇ0 2
.
ÇÇ2 3
IsFatal
ÇÇ3 :
(
ÇÇ: ;
)
ÇÇ; <
)
ÇÇ< =
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ  
LogError
ÑÑ  (
(
ÑÑ( )
ex
ÑÑ) +
,
ÑÑ+ ,
$strÑÑ- Å
)ÑÑÅ Ç
;ÑÑÇ É
continue
ÖÖ  
;
ÖÖ  !
}
ÜÜ 
var
ââ 
allSettings
ââ #
=
ââ$ %

_shellHost
ââ& 0
.
ââ0 1
GetAllSettings
ââ1 ?
(
ââ? @
)
ââ@ A
.
ââA B
ToList
ââB H
(
ââH I
)
ââI J
;
ââJ K
if
åå 
(
åå 
shellCreatedId
åå &
!=
åå' )
null
åå* .
&&
åå/ 1
_shellCreatedId
åå2 A
!=
ååB D
shellCreatedId
ååE S
)
ååS T
{
çç 
var
èè 
names
èè !
=
èè" #
(
èè$ %
await
èè% *#
_shellSettingsManager
èè+ @
.
èè@ A$
LoadSettingsNamesAsync
èèA W
(
èèW X
)
èèX Y
)
èèY Z
.
êê 
Except
êê #
(
êê# $
allSettings
êê$ /
.
êê/ 0
Select
êê0 6
(
êê6 7
s
êê7 8
=>
êê9 ;
s
êê< =
.
êê= >
Name
êê> B
)
êêB C
)
êêC D
.
ëë 
ToArray
ëë $
(
ëë$ %
)
ëë% &
;
ëë& '
foreach
îî 
(
îî  !
var
îî! $
name
îî% )
in
îî* ,
names
îî- 2
)
îî2 3
{
ïï 
allSettings
ññ '
.
ññ' (
Add
ññ( +
(
ññ+ ,
await
ññ, 1#
_shellSettingsManager
ññ2 G
.
ññG H
LoadSettingsAsync
ññH Y
(
ññY Z
name
ññZ ^
)
ññ^ _
)
ññ_ `
;
ññ` a
}
óó 
}
òò 
var
õõ 
_busyStartTime
õõ &
=
õõ' (
DateTime
õõ) 1
.
õõ1 2
UtcNow
õõ2 8
;
õõ8 9
var
úú 
syncingSuccess
úú &
=
úú' (
true
úú) -
;
úú- .
foreach
üü 
(
üü 
var
üü  
settings
üü! )
in
üü* ,
allSettings
üü- 8
)
üü8 9
{
†† 
if
¢¢ 
(
¢¢ 
!
¢¢ 
await
¢¢ ""
TryWaitAfterBusyTime
¢¢# 7
(
¢¢7 8
stoppingToken
¢¢8 E
)
¢¢E F
)
¢¢F G
{
££ 
break
§§ !
;
§§! "
}
•• 
var
ßß 
	semaphore
ßß %
=
ßß& '
_semaphores
ßß( 3
.
ßß3 4
GetOrAdd
ßß4 <
(
ßß< =
settings
ßß= E
.
ßßE F
Name
ßßF J
,
ßßJ K
name
ßßL P
=>
ßßQ S
new
ßßT W
SemaphoreSlim
ßßX e
(
ßße f
$num
ßßf g
)
ßßg h
)
ßßh i
;
ßßi j
await
®® 
	semaphore
®® '
.
®®' (
	WaitAsync
®®( 1
(
®®1 2
)
®®2 3
;
®®3 4
try
©© 
{
™™ 
var
¨¨ 
	releaseId
¨¨  )
=
¨¨* +
await
¨¨, 1
distributedCache
¨¨2 B
.
¨¨B C
GetStringAsync
¨¨C Q
(
¨¨Q R
ReleaseIdKey
¨¨R ^
(
¨¨^ _
settings
¨¨_ g
.
¨¨g h
Name
¨¨h l
)
¨¨l m
)
¨¨m n
;
¨¨n o
if
≠≠ 
(
≠≠  
	releaseId
≠≠  )
!=
≠≠* ,
null
≠≠- 1
)
≠≠1 2
{
ÆÆ 
var
∞∞  #

identifier
∞∞$ .
=
∞∞/ 0
_identifiers
∞∞1 =
.
∞∞= >
GetOrAdd
∞∞> F
(
∞∞F G
settings
∞∞G O
.
∞∞O P
Name
∞∞P T
,
∞∞T U
name
∞∞V Z
=>
∞∞[ ]
new
∞∞^ a
ShellIdentifier
∞∞b q
(
∞∞q r
)
∞∞r s
)
∞∞s t
;
∞∞t u
if
±±  "
(
±±# $

identifier
±±$ .
.
±±. /
	ReleaseId
±±/ 8
!=
±±9 ;
	releaseId
±±< E
)
±±E F
{
≤≤  !

identifier
¥¥$ .
.
¥¥. /
	ReleaseId
¥¥/ 8
=
¥¥9 :
	releaseId
¥¥; D
;
¥¥D E
await
∑∑$ )

_shellHost
∑∑* 4
.
∑∑4 5&
ReleaseShellContextAsync
∑∑5 M
(
∑∑M N
settings
∑∑N V
,
∑∑V W
eventSource
∑∑X c
:
∑∑c d
false
∑∑e j
)
∑∑j k
;
∑∑k l
}
∏∏  !
}
ππ 
var
ºº 
reloadId
ºº  (
=
ºº) *
await
ºº+ 0
distributedCache
ºº1 A
.
ººA B
GetStringAsync
ººB P
(
ººP Q
ReloadIdKey
ººQ \
(
ºº\ ]
settings
ºº] e
.
ººe f
Name
ººf j
)
ººj k
)
ººk l
;
ººl m
if
ΩΩ 
(
ΩΩ  
reloadId
ΩΩ  (
!=
ΩΩ) +
null
ΩΩ, 0
)
ΩΩ0 1
{
ææ 
var
¿¿  #

identifier
¿¿$ .
=
¿¿/ 0
_identifiers
¿¿1 =
.
¿¿= >
GetOrAdd
¿¿> F
(
¿¿F G
settings
¿¿G O
.
¿¿O P
Name
¿¿P T
,
¿¿T U
name
¿¿V Z
=>
¿¿[ ]
new
¿¿^ a
ShellIdentifier
¿¿b q
(
¿¿q r
)
¿¿r s
)
¿¿s t
;
¿¿t u
if
¡¡  "
(
¡¡# $

identifier
¡¡$ .
.
¡¡. /
ReloadId
¡¡/ 7
!=
¡¡8 :
reloadId
¡¡; C
)
¡¡C D
{
¬¬  !

identifier
ƒƒ$ .
.
ƒƒ. /
ReloadId
ƒƒ/ 7
=
ƒƒ8 9
reloadId
ƒƒ: B
;
ƒƒB C
await
««$ )

_shellHost
««* 4
.
««4 5%
ReloadShellContextAsync
««5 L
(
««L M
settings
««M U
,
««U V
eventSource
««W b
:
««b c
false
««d i
)
««i j
;
««j k
}
»»  !
}
…… 
}
   
catch
ÀÀ 
(
ÀÀ 
	Exception
ÀÀ (
ex
ÀÀ) +
)
ÀÀ+ ,
when
ÀÀ- 1
(
ÀÀ2 3
!
ÀÀ3 4
ex
ÀÀ4 6
.
ÀÀ6 7
IsFatal
ÀÀ7 >
(
ÀÀ> ?
)
ÀÀ? @
)
ÀÀ@ A
{
ÃÃ 
syncingSuccess
ÕÕ *
=
ÕÕ+ ,
false
ÕÕ- 2
;
ÕÕ2 3
_logger
ŒŒ #
.
ŒŒ# $
LogError
ŒŒ$ ,
(
ŒŒ, -
ex
ŒŒ- /
,
ŒŒ/ 0
$strŒŒ1 Ä
,ŒŒÄ Å
settingsŒŒÇ ä
.ŒŒä ã
NameŒŒã è
)ŒŒè ê
;ŒŒê ë
break
œœ !
;
œœ! "
}
–– 
finally
—— 
{
““ 
	semaphore
”” %
.
””% &
Release
””& -
(
””- .
)
””. /
;
””/ 0
}
‘‘ 
}
’’ 
if
ÿÿ 
(
ÿÿ 
syncingSuccess
ÿÿ &
)
ÿÿ& '
{
ŸŸ 
_shellChangedId
⁄⁄ '
=
⁄⁄( )
shellChangedId
⁄⁄* 8
;
⁄⁄8 9
_shellCreatedId
€€ '
=
€€( )
shellCreatedId
€€* 8
;
€€8 9
}
‹‹ 
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
	Exception
ﬁﬁ  
ex
ﬁﬁ! #
)
ﬁﬁ# $
when
ﬁﬁ% )
(
ﬁﬁ* +
!
ﬁﬁ+ ,
ex
ﬁﬁ, .
.
ﬁﬁ. /
IsFatal
ﬁﬁ/ 6
(
ﬁﬁ6 7
)
ﬁﬁ7 8
)
ﬁﬁ8 9
{
ﬂﬂ 
_logger
‡‡ 
.
‡‡ 
LogError
‡‡ $
(
‡‡$ %
ex
‡‡% '
,
‡‡' (
$str
‡‡) P
,
‡‡P Q
nameof
‡‡R X
(
‡‡X Y+
DistributedShellHostedService
‡‡Y v
)
‡‡v w
)
‡‡w x
;
‡‡x y
}
·· 
}
‚‚ 
_terminated
‰‰ 
=
‰‰ 
true
‰‰ 
;
‰‰ 
_context
ÂÂ 
?
ÂÂ 
.
ÂÂ 
Release
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ  
_defaultContext
ÊÊ 
=
ÊÊ 
null
ÊÊ "
;
ÊÊ" #
_context
ÁÁ 
=
ÁÁ 
null
ÁÁ 
;
ÁÁ 
}
ËË 	
public
ÌÌ 
async
ÌÌ 
Task
ÌÌ 
LoadingAsync
ÌÌ &
(
ÌÌ& '
)
ÌÌ' (
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
_terminated
ÔÔ 
)
ÔÔ 
{
 
return
ÒÒ 
;
ÒÒ 
}
ÚÚ 
var
ıı 
defautSettings
ıı 
=
ıı  
await
ıı! &#
_shellSettingsManager
ıı' <
.
ıı< =
LoadSettingsAsync
ıı= N
(
ııN O
ShellHelper
ııO Z
.
ııZ [
DefaultShellName
ıı[ k
)
ıık l
;
ııl m
if
ˆˆ 
(
ˆˆ 
defautSettings
ˆˆ 
?
ˆˆ 
.
ˆˆ  
State
ˆˆ  %
!=
ˆˆ& (
TenantState
ˆˆ) 4
.
ˆˆ4 5
Running
ˆˆ5 <
)
ˆˆ< =
{
˜˜ 
return
¯¯ 
;
¯¯ 
}
˘˘ 
using
¸¸ 
var
¸¸ 
context
¸¸ 
=
¸¸ 
await
¸¸  %+
CreateDistributedContextAsync
¸¸& C
(
¸¸C D
defautSettings
¸¸D R
)
¸¸R S
;
¸¸S T
var
ˇˇ 
distributedCache
ˇˇ  
=
ˇˇ! "
context
ˇˇ# *
?
ˇˇ* +
.
ˇˇ+ ,
DistributedCache
ˇˇ, <
;
ˇˇ< =
if
ÄÄ 
(
ÄÄ 
distributedCache
ÄÄ  
==
ÄÄ! #
null
ÄÄ$ (
)
ÄÄ( )
{
ÅÅ 
return
ÇÇ 
;
ÇÇ 
}
ÉÉ 
try
ÖÖ 
{
ÜÜ 
var
àà 
shellChangedId
àà "
=
àà# $
await
àà% *
distributedCache
àà+ ;
.
àà; <
GetStringAsync
àà< J
(
ààJ K
ShellChangedIdKey
ààK \
)
àà\ ]
;
àà] ^
var
ââ 
shellCreatedId
ââ "
=
ââ# $
await
ââ% *
distributedCache
ââ+ ;
.
ââ; <
GetStringAsync
ââ< J
(
ââJ K
ShellCreatedIdKey
ââK \
)
ââ\ ]
;
ââ] ^
var
åå 
names
åå 
=
åå 
await
åå !#
_shellSettingsManager
åå" 7
.
åå7 8$
LoadSettingsNamesAsync
åå8 N
(
ååN O
)
ååO P
;
ååP Q
foreach
çç 
(
çç 
var
çç 
name
çç !
in
çç" $
names
çç% *
)
çç* +
{
éé 
var
êê 
	releaseId
êê !
=
êê" #
await
êê$ )
distributedCache
êê* :
.
êê: ;
GetStringAsync
êê; I
(
êêI J
ReleaseIdKey
êêJ V
(
êêV W
name
êêW [
)
êê[ \
)
êê\ ]
;
êê] ^
if
ëë 
(
ëë 
	releaseId
ëë !
!=
ëë" $
null
ëë% )
)
ëë) *
{
íí 
var
îî 

identifier
îî &
=
îî' (
_identifiers
îî) 5
.
îî5 6
GetOrAdd
îî6 >
(
îî> ?
name
îî? C
,
îîC D
name
îîE I
=>
îîJ L
new
îîM P
ShellIdentifier
îîQ `
(
îî` a
)
îîa b
)
îîb c
;
îîc d

identifier
ïï "
.
ïï" #
	ReleaseId
ïï# ,
=
ïï- .
	releaseId
ïï/ 8
;
ïï8 9
}
ññ 
var
ôô 
reloadId
ôô  
=
ôô! "
await
ôô# (
distributedCache
ôô) 9
.
ôô9 :
GetStringAsync
ôô: H
(
ôôH I
ReloadIdKey
ôôI T
(
ôôT U
name
ôôU Y
)
ôôY Z
)
ôôZ [
;
ôô[ \
if
öö 
(
öö 
reloadId
öö  
!=
öö! #
null
öö$ (
)
öö( )
{
õõ 
var
ùù 

identifier
ùù &
=
ùù' (
_identifiers
ùù) 5
.
ùù5 6
GetOrAdd
ùù6 >
(
ùù> ?
name
ùù? C
,
ùùC D
name
ùùE I
=>
ùùJ L
new
ùùM P
ShellIdentifier
ùùQ `
(
ùù` a
)
ùùa b
)
ùùb c
;
ùùc d

identifier
ûû "
.
ûû" #
ReloadId
ûû# +
=
ûû, -
reloadId
ûû. 6
;
ûû6 7
}
üü 
}
†† 
_shellChangedId
££ 
=
££  !
shellChangedId
££" 0
;
££0 1
_shellCreatedId
§§ 
=
§§  !
shellCreatedId
§§" 0
;
§§0 1
}
•• 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ 
ex
¶¶ 
)
¶¶  
when
¶¶! %
(
¶¶& '
!
¶¶' (
ex
¶¶( *
.
¶¶* +
IsFatal
¶¶+ 2
(
¶¶2 3
)
¶¶3 4
)
¶¶4 5
{
ßß 
_logger
®® 
.
®® 
LogError
®®  
(
®®  !
ex
®®! #
,
®®# $
$str
®®% g
)
®®g h
;
®®h i
}
©© 
}
™™ 	
public
ØØ 
async
ØØ 
Task
ØØ 
ReleasingAsync
ØØ (
(
ØØ( )
string
ØØ) /
name
ØØ0 4
)
ØØ4 5
{
∞∞ 	
if
±± 
(
±± 
_terminated
±± 
)
±± 
{
≤≤ 
return
≥≥ 
;
≥≥ 
}
¥¥ 
if
∑∑ 
(
∑∑ 
!
∑∑ 

_shellHost
∑∑ 
.
∑∑  
TryGetShellContext
∑∑ .
(
∑∑. /
ShellHelper
∑∑/ :
.
∑∑: ;
DefaultShellName
∑∑; K
,
∑∑K L
out
∑∑M P
var
∑∑Q T
defaultContext
∑∑U c
)
∑∑c d
||
∑∑e g
defaultContext
∏∏ 
.
∏∏ 
Settings
∏∏ '
.
∏∏' (
State
∏∏( -
!=
∏∏. 0
TenantState
∏∏1 <
.
∏∏< =
Running
∏∏= D
)
∏∏D E
{
ππ 
return
∫∫ 
;
∫∫ 
}
ªª 
using
ææ 
var
ææ 
context
ææ 
=
ææ 
await
ææ  %4
&AcquireOrCreateDistributedContextAsync
ææ& L
(
ææL M
defaultContext
ææM [
)
ææ[ \
;
ææ\ ]
var
¡¡ 
distributedCache
¡¡  
=
¡¡! "
context
¡¡# *
?
¡¡* +
.
¡¡+ ,
DistributedCache
¡¡, <
;
¡¡< =
if
¬¬ 
(
¬¬ 
distributedCache
¬¬  
==
¬¬! #
null
¬¬$ (
)
¬¬( )
{
√√ 
return
ƒƒ 
;
ƒƒ 
}
≈≈ 
var
«« 
	semaphore
«« 
=
«« 
_semaphores
«« '
.
««' (
GetOrAdd
««( 0
(
««0 1
name
««1 5
,
««5 6
name
««7 ;
=>
««< >
new
««? B
SemaphoreSlim
««C P
(
««P Q
$num
««Q R
)
««R S
)
««S T
;
««T U
await
»» 
	semaphore
»» 
.
»» 
	WaitAsync
»» %
(
»»% &
)
»»& '
;
»»' (
try
…… 
{
   
var
ÃÃ 

identifier
ÃÃ 
=
ÃÃ  
_identifiers
ÃÃ! -
.
ÃÃ- .
GetOrAdd
ÃÃ. 6
(
ÃÃ6 7
name
ÃÃ7 ;
,
ÃÃ; <
name
ÃÃ= A
=>
ÃÃB D
new
ÃÃE H
ShellIdentifier
ÃÃI X
(
ÃÃX Y
)
ÃÃY Z
)
ÃÃZ [
;
ÃÃ[ \

identifier
ÕÕ 
.
ÕÕ 
	ReleaseId
ÕÕ $
=
ÕÕ% &
IdGenerator
ÕÕ' 2
.
ÕÕ2 3

GenerateId
ÕÕ3 =
(
ÕÕ= >
)
ÕÕ> ?
;
ÕÕ? @
await
–– 
distributedCache
–– &
.
––& '
SetStringAsync
––' 5
(
––5 6
ReleaseIdKey
––6 B
(
––B C
name
––C G
)
––G H
,
––H I

identifier
––J T
.
––T U
	ReleaseId
––U ^
)
––^ _
;
––_ `
await
”” 
distributedCache
”” &
.
””& '
SetStringAsync
””' 5
(
””5 6
ShellChangedIdKey
””6 G
,
””G H

identifier
””I S
.
””S T
	ReleaseId
””T ]
)
””] ^
;
””^ _
}
‘‘ 
catch
’’ 
(
’’ 
	Exception
’’ 
ex
’’ 
)
’’  
when
’’! %
(
’’& '
!
’’' (
ex
’’( *
.
’’* +
IsFatal
’’+ 2
(
’’2 3
)
’’3 4
)
’’4 5
{
÷÷ 
_logger
◊◊ 
.
◊◊ 
LogError
◊◊  
(
◊◊  !
ex
◊◊! #
,
◊◊# $
$str
◊◊% y
,
◊◊y z
name
◊◊{ 
)◊◊ Ä
;◊◊Ä Å
}
ÿÿ 
finally
ŸŸ 
{
⁄⁄ 
	semaphore
€€ 
.
€€ 
Release
€€ !
(
€€! "
)
€€" #
;
€€# $
}
‹‹ 
}
›› 	
public
‚‚ 
async
‚‚ 
Task
‚‚ 
ReloadingAsync
‚‚ (
(
‚‚( )
string
‚‚) /
name
‚‚0 4
)
‚‚4 5
{
„„ 	
if
‰‰ 
(
‰‰ 
_terminated
‰‰ 
)
‰‰ 
{
ÂÂ 
return
ÊÊ 
;
ÊÊ 
}
ÁÁ 
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 

_shellHost
ÍÍ 
.
ÍÍ  
TryGetShellContext
ÍÍ .
(
ÍÍ. /
ShellHelper
ÍÍ/ :
.
ÍÍ: ;
DefaultShellName
ÍÍ; K
,
ÍÍK L
out
ÍÍM P
var
ÍÍQ T
defaultContext
ÍÍU c
)
ÍÍc d
||
ÍÍe g
defaultContext
ÎÎ 
.
ÎÎ 
Settings
ÎÎ '
.
ÎÎ' (
State
ÎÎ( -
!=
ÎÎ. 0
TenantState
ÎÎ1 <
.
ÎÎ< =
Running
ÎÎ= D
)
ÎÎD E
{
ÏÏ 
return
ÌÌ 
;
ÌÌ 
}
ÓÓ 
using
ÒÒ 
var
ÒÒ 
context
ÒÒ 
=
ÒÒ 
await
ÒÒ  %4
&AcquireOrCreateDistributedContextAsync
ÒÒ& L
(
ÒÒL M
defaultContext
ÒÒM [
)
ÒÒ[ \
;
ÒÒ\ ]
var
ÙÙ 
distributedCache
ÙÙ  
=
ÙÙ! "
context
ÙÙ# *
?
ÙÙ* +
.
ÙÙ+ ,
DistributedCache
ÙÙ, <
;
ÙÙ< =
if
ıı 
(
ıı 
distributedCache
ıı  
==
ıı! #
null
ıı$ (
)
ıı( )
{
ˆˆ 
return
˜˜ 
;
˜˜ 
}
¯¯ 
var
˙˙ 
	semaphore
˙˙ 
=
˙˙ 
_semaphores
˙˙ '
.
˙˙' (
GetOrAdd
˙˙( 0
(
˙˙0 1
name
˙˙1 5
,
˙˙5 6
name
˙˙7 ;
=>
˙˙< >
new
˙˙? B
SemaphoreSlim
˙˙C P
(
˙˙P Q
$num
˙˙Q R
)
˙˙R S
)
˙˙S T
;
˙˙T U
await
˚˚ 
	semaphore
˚˚ 
.
˚˚ 
	WaitAsync
˚˚ %
(
˚˚% &
)
˚˚& '
;
˚˚' (
try
¸¸ 
{
˝˝ 
var
ˇˇ 

identifier
ˇˇ 
=
ˇˇ  
_identifiers
ˇˇ! -
.
ˇˇ- .
GetOrAdd
ˇˇ. 6
(
ˇˇ6 7
name
ˇˇ7 ;
,
ˇˇ; <
name
ˇˇ= A
=>
ˇˇB D
new
ˇˇE H
ShellIdentifier
ˇˇI X
(
ˇˇX Y
)
ˇˇY Z
)
ˇˇZ [
;
ˇˇ[ \

identifier
ÄÄ 
.
ÄÄ 
ReloadId
ÄÄ #
=
ÄÄ$ %
IdGenerator
ÄÄ& 1
.
ÄÄ1 2

GenerateId
ÄÄ2 <
(
ÄÄ< =
)
ÄÄ= >
;
ÄÄ> ?
await
ÉÉ 
distributedCache
ÉÉ &
.
ÉÉ& '
SetStringAsync
ÉÉ' 5
(
ÉÉ5 6
ReloadIdKey
ÉÉ6 A
(
ÉÉA B
name
ÉÉB F
)
ÉÉF G
,
ÉÉG H

identifier
ÉÉI S
.
ÉÉS T
ReloadId
ÉÉT \
)
ÉÉ\ ]
;
ÉÉ] ^
if
ÜÜ 
(
ÜÜ 
name
ÜÜ 
!=
ÜÜ 
ShellHelper
ÜÜ '
.
ÜÜ' (
DefaultShellName
ÜÜ( 8
&&
ÜÜ9 ;
!
ÜÜ< =

_shellHost
ÜÜ= G
.
ÜÜG H
TryGetSettings
ÜÜH V
(
ÜÜV W
name
ÜÜW [
,
ÜÜ[ \
out
ÜÜ] `
_
ÜÜa b
)
ÜÜb c
)
ÜÜc d
{
áá 
await
ââ 
distributedCache
ââ *
.
ââ* +
SetStringAsync
ââ+ 9
(
ââ9 :
ShellCreatedIdKey
ââ: K
,
ââK L

identifier
ââM W
.
ââW X
ReloadId
ââX `
)
ââ` a
;
ââa b
}
ää 
await
çç 
distributedCache
çç &
.
çç& '
SetStringAsync
çç' 5
(
çç5 6
ShellChangedIdKey
çç6 G
,
ççG H

identifier
ççI S
.
ççS T
ReloadId
ççT \
)
çç\ ]
;
çç] ^
}
éé 
catch
èè 
(
èè 
	Exception
èè 
ex
èè 
)
èè  
when
èè! %
(
èè& '
!
èè' (
ex
èè( *
.
èè* +
IsFatal
èè+ 2
(
èè2 3
)
èè3 4
)
èè4 5
{
êê 
_logger
ëë 
.
ëë 
LogError
ëë  
(
ëë  !
ex
ëë! #
,
ëë# $
$str
ëë% y
,
ëëy z
name
ëë{ 
)ëë Ä
;ëëÄ Å
}
íí 
finally
ìì 
{
îî 
	semaphore
ïï 
.
ïï 
Release
ïï !
(
ïï! "
)
ïï" #
;
ïï# $
}
ññ 
}
óó 	
private
ôô 
string
ôô 
ReleaseIdKey
ôô #
(
ôô# $
string
ôô$ *
name
ôô+ /
)
ôô/ 0
=>
ôô1 3
name
ôô4 8
+
ôô9 : 
ReleaseIdKeySuffix
ôô; M
;
ôôM N
private
öö 
string
öö 
ReloadIdKey
öö "
(
öö" #
string
öö# )
name
öö* .
)
öö. /
=>
öö0 2
name
öö3 7
+
öö8 9
ReloadIdKeySuffix
öö: K
;
ööK L
private
üü 
async
üü 
Task
üü 
<
üü  
DistributedContext
üü -
>
üü- .+
CreateDistributedContextAsync
üü/ L
(
üüL M
ShellContext
üüM Y
defaultShell
üüZ f
)
üüf g
{
†† 	
var
¢¢ 

descriptor
¢¢ 
=
¢¢ 
defaultShell
¢¢ )
.
¢¢) *
	Blueprint
¢¢* 3
?
¢¢3 4
.
¢¢4 5

Descriptor
¢¢5 ?
;
¢¢? @
if
££ 
(
££ 

descriptor
££ 
!=
££ 
null
££ "
)
££" #
{
§§ 
try
ßß 
{
®® 
return
©© 
new
©©  
DistributedContext
©© 1
(
©©1 2
await
©©2 7"
_shellContextFactory
©©8 L
.
©©L M)
CreateDescribedContextAsync
©©M h
(
©©h i
defaultShell
©©i u
.
©©u v
Settings
©©v ~
,
©©~ 

descriptor©©Ä ä
)©©ä ã
)©©ã å
;©©å ç
}
™™ 
catch
´´ 
{
¨¨ 
return
≠≠ 
null
≠≠ 
;
≠≠  
}
ÆÆ 
}
ØØ 
return
±± 
await
±± +
CreateDistributedContextAsync
±± 6
(
±±6 7
defaultShell
±±7 C
.
±±C D
Settings
±±D L
)
±±L M
;
±±M N
}
≤≤ 	
private
∑∑ 
async
∑∑ 
Task
∑∑ 
<
∑∑  
DistributedContext
∑∑ -
>
∑∑- .+
CreateDistributedContextAsync
∑∑/ L
(
∑∑L M
ShellSettings
∑∑M Z
defaultSettings
∑∑[ j
)
∑∑j k
{
∏∏ 	
try
ππ 
{
∫∫ 
return
ªª 
new
ªª  
DistributedContext
ªª -
(
ªª- .
await
ªª. 3"
_shellContextFactory
ªª4 H
.
ªªH I%
CreateShellContextAsync
ªªI `
(
ªª` a
defaultSettings
ªªa p
)
ªªp q
)
ªªq r
;
ªªr s
}
ºº 
catch
ΩΩ 
{
ææ 
return
øø 
null
øø 
;
øø 
}
¿¿ 
}
¡¡ 	
private
∆∆ 
async
∆∆ 
Task
∆∆ 
<
∆∆  
DistributedContext
∆∆ -
>
∆∆- .0
"GetOrCreateDistributedContextAsync
∆∆/ Q
(
∆∆Q R
ShellContext
∆∆R ^
defaultContext
∆∆_ m
)
∆∆m n
{
«« 	
if
…… 
(
…… 
_defaultContext
…… 
!=
……  "
defaultContext
……# 1
)
……1 2
{
   
var
ÀÀ 
previousContext
ÀÀ #
=
ÀÀ$ %
_context
ÀÀ& .
;
ÀÀ. /
_context
ŒŒ 
=
ŒŒ 
await
ŒŒ  +
CreateDistributedContextAsync
ŒŒ! >
(
ŒŒ> ?
defaultContext
ŒŒ? M
)
ŒŒM N
;
ŒŒN O
if
–– 
(
–– 
_context
–– 
!=
–– 
null
––  $
)
––$ %
{
—— 
_defaultContext
““ #
=
““$ %
defaultContext
““& 4
;
““4 5
}
”” 
previousContext
÷÷ 
?
÷÷  
.
÷÷  !
Release
÷÷! (
(
÷÷( )
)
÷÷) *
;
÷÷* +
}
◊◊ 
return
ŸŸ 
_context
ŸŸ 
;
ŸŸ 
}
⁄⁄ 	
private
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ  
DistributedContext
ﬂﬂ '
>
ﬂﬂ' (4
&AcquireOrCreateDistributedContextAsync
ﬂﬂ) O
(
ﬂﬂO P
ShellContext
ﬂﬂP \
defaultContext
ﬂﬂ] k
)
ﬂﬂk l
{
‡‡ 	
var
··  
distributedContext
·· "
=
··# $
_context
··% -
?
··- .
.
··. /
Acquire
··/ 6
(
··6 7
)
··7 8
;
··8 9
if
‚‚ 
(
‚‚  
distributedContext
‚‚ "
==
‚‚# %
null
‚‚& *
)
‚‚* +
{
„„ 
return
‰‰ +
CreateDistributedContextAsync
‰‰ 4
(
‰‰4 5
defaultContext
‰‰5 C
)
‰‰C D
;
‰‰D E
}
ÂÂ 
return
ÁÁ 
Task
ÁÁ 
.
ÁÁ 

FromResult
ÁÁ "
(
ÁÁ" # 
distributedContext
ÁÁ# 5
)
ÁÁ5 6
;
ÁÁ6 7
}
ËË 	
private
ÌÌ 
TimeSpan
ÌÌ %
NextIdleTimeBeforeRetry
ÌÌ 0
(
ÌÌ0 1
TimeSpan
ÌÌ1 9
idleTime
ÌÌ: B
,
ÌÌB C
	Exception
ÌÌD M
ex
ÌÌN P
)
ÌÌP Q
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
idleTime
ÔÔ 
<
ÔÔ 
MaxRetryTime
ÔÔ '
)
ÔÔ' (
{
 
_logger
ÚÚ 
.
ÚÚ 
LogError
ÚÚ  
(
ÚÚ  !
ex
ÚÚ! #
,
ÚÚ# $
$str
ÚÚ% t
)
ÚÚt u
;
ÚÚu v
idleTime
ÙÙ 
*=
ÙÙ 
$num
ÙÙ 
;
ÙÙ 
if
ıı 
(
ıı 
idleTime
ıı 
>
ıı 
MaxRetryTime
ıı +
)
ıı+ ,
{
ˆˆ 
idleTime
˜˜ 
=
˜˜ 
MaxRetryTime
˜˜ +
;
˜˜+ ,
}
¯¯ 
}
˘˘ 
return
˚˚ 
idleTime
˚˚ 
;
˚˚ 
}
¸¸ 	
private
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
bool
ÅÅ 
>
ÅÅ  "
TryWaitAfterBusyTime
ÅÅ! 5
(
ÅÅ5 6
CancellationToken
ÅÅ6 G
stoppingToken
ÅÅH U
)
ÅÅU V
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
DateTime
ÉÉ 
.
ÉÉ 
UtcNow
ÉÉ 
-
ÉÉ  !
_busyStartTime
ÉÉ" 0
>
ÉÉ1 2
MaxBusyTime
ÉÉ3 >
)
ÉÉ> ?
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
await
ÖÖ 
TryWaitAsync
ÖÖ '
(
ÖÖ' (
MinIdleTime
ÖÖ( 3
,
ÖÖ3 4
stoppingToken
ÖÖ5 B
)
ÖÖB C
)
ÖÖC D
{
ÜÜ 
return
áá 
false
áá  
;
áá  !
}
àà 
_busyStartTime
ää 
=
ää  
DateTime
ää! )
.
ää) *
UtcNow
ää* 0
;
ää0 1
}
ãã 
return
çç 
true
çç 
;
çç 
}
éé 	
private
ìì 
async
ìì 
Task
ìì 
<
ìì 
bool
ìì 
>
ìì  
TryWaitAsync
ìì! -
(
ìì- .
TimeSpan
ìì. 6
delay
ìì7 <
,
ìì< =
CancellationToken
ìì> O
stoppingToken
ììP ]
)
ìì] ^
{
îî 	
try
ïï 
{
ññ 
await
óó 
Task
óó 
.
óó 
Delay
óó  
(
óó  !
delay
óó! &
,
óó& '
stoppingToken
óó( 5
)
óó5 6
;
óó6 7
return
òò 
true
òò 
;
òò 
}
ôô 
catch
öö 
(
öö #
TaskCanceledException
öö (
)
öö( )
{
õõ 
return
úú 
false
úú 
;
úú 
}
ùù 
}
ûû 	
}
üü 
}†† ‚
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Distributed\ShellIdentifier.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Distributed( 3
{ 
internal 
class 
ShellIdentifier "
{ 
public 
string 
	ReleaseId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ReloadId 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ì
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\NullShellStateManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class !
NullShellStateManager &
:' (
IShellStateManager) ;
{ 
private		 
readonly		 
ILogger		  
_logger		! (
;		( )
public !
NullShellStateManager $
($ %
ILogger% ,
<, -!
NullShellStateManager- B
>B C
loggerD J
)J K
{ 	
_logger 
= 
logger 
; 
} 	
public 
Task 
< 

ShellState 
> 
GetShellStateAsync  2
(2 3
)3 4
{ 	
return 
Task 
. 

FromResult "
(" #
new# &

ShellState' 1
(1 2
)2 3
)3 4
;4 5
} 	
public 
Task #
UpdateEnabledStateAsync +
(+ ,
ShellFeatureState, =
featureState> J
,J K
ShellFeatureStateL ]
.] ^
State^ c
valued i
)i j
{ 	
if 
( 
_logger 
. 
	IsEnabled !
(! "
LogLevel" *
.* +
Debug+ 0
)0 1
)1 2
{ 
_logger 
. 
LogDebug  
(  !
$str! x
,x y
featureState )
.) *
Id* ,
,, -
featureState. :
.: ;
EnableState; F
,F G
valueH M
)M N
;N O
} 
return 
Task 
. 
CompletedTask %
;% &
} 	
public   
Task   %
UpdateInstalledStateAsync   -
(  - .
ShellFeatureState  . ?
featureState  @ L
,  L M
ShellFeatureState  N _
.  _ `
State  ` e
value  f k
)  k l
{!! 	
if"" 
("" 
_logger"" 
."" 
	IsEnabled"" !
(""! "
LogLevel""" *
.""* +
Debug""+ 0
)""0 1
)""1 2
{## 
_logger$$ 
.$$ 
LogDebug$$  
($$  !
$str$$! y
,$$y z
featureState	$${ á
.
$$á à
Id
$$à ä
,
$$ä ã
featureState
$$å ò
.
$$ò ô
InstallState
$$ô •
,
$$• ¶
value
$$ß ¨
)
$$¨ ≠
;
$$≠ Æ
}%% 
return'' 
Task'' 
.'' 
CompletedTask'' %
;''% &
}(( 	
})) 
}** µs
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\RunningShellTable.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{		 
public

 

class

 
RunningShellTable

 "
:

# $
IRunningShellTable

% 7
{ 
private 
static 
readonly 
char  $
[$ %
]% &
HostSeparators' 5
=6 7
new8 ;
[; <
]< =
{> ?
$char@ C
,C D
$charE H
}I J
;J K
private 
ImmutableDictionary #
<# $
string$ *
,* +
ShellSettings, 9
>9 :"
_shellsByHostAndPrefix; Q
=R S
ImmutableDictionaryT g
<g h
stringh n
,n o
ShellSettingsp }
>} ~
.~ 
Empty	 Ñ
.
Ñ Ö
WithComparers
Ö í
(
í ì
StringComparer
ì °
.
° ¢
OrdinalIgnoreCase
¢ ≥
)
≥ ¥
;
¥ µ
private 
ShellSettings 
_default &
;& '
private 
bool 
_hasStarMapping $
=% &
false' ,
;, -
public 
void 
Add 
( 
ShellSettings %
settings& .
). /
{ 	
if 
( 
ShellHelper 
. 
DefaultShellName ,
==- /
settings0 8
.8 9
Name9 =
)= >
{ 
_default 
= 
settings #
;# $
} 
var 
allHostsAndPrefix !
=" # 
GetAllHostsAndPrefix$ 8
(8 9
settings9 A
)A B
;B C
var #
settingsByHostAndPrefix '
=( )
new* -

Dictionary. 8
<8 9
string9 ?
,? @
ShellSettingsA N
>N O
(O P
)P Q
;Q R
foreach 
( 
var 
hostAndPrefix &
in' )
allHostsAndPrefix* ;
); <
{ 
_hasStarMapping 
=  !
_hasStarMapping" 1
||2 4
hostAndPrefix5 B
.B C

StartsWithC M
(M N
$charN Q
)Q R
;R S#
settingsByHostAndPrefix   '
.  ' (
TryAdd  ( .
(  . /
hostAndPrefix  / <
,  < =
settings  > F
)  F G
;  G H
}!! 
lock## 
(## 
this## 
)## 
{$$ "
_shellsByHostAndPrefix%% &
=%%' ("
_shellsByHostAndPrefix%%) ?
.%%? @
SetItems%%@ H
(%%H I#
settingsByHostAndPrefix%%I `
)%%` a
;%%a b
}&& 
}'' 	
public)) 
void)) 
Remove)) 
()) 
ShellSettings)) (
settings))) 1
)))1 2
{** 	
var++ 
allHostsAndPrefix++ !
=++" #"
_shellsByHostAndPrefix++$ :
.,, 
Where,, 
(,, 
kv,, 
=>,, 
kv,, 
.,,  
Value,,  %
.,,% &
Name,,& *
==,,+ -
settings,,. 6
.,,6 7
Name,,7 ;
),,; <
.-- 
Select-- 
(-- 
kv-- 
=>-- 
kv--  
.--  !
Key--! $
)--$ %
... 
ToArray.. 
(.. 
).. 
;.. 
lock00 
(00 
this00 
)00 
{11 "
_shellsByHostAndPrefix22 &
=22' ("
_shellsByHostAndPrefix22) ?
.22? @
RemoveRange22@ K
(22K L
allHostsAndPrefix22L ]
)22] ^
;22^ _
}33 
if55 
(55 
_default55 
==55 
settings55 $
)55$ %
{66 
_default77 
=77 
null77 
;77  
}88 
}99 	
public;; 
ShellSettings;; 
Match;; "
(;;" #

HostString;;# -
host;;. 2
,;;2 3

PathString;;4 >
path;;? C
,;;C D
bool;;E I
fallbackToDefault;;J [
=;;\ ]
true;;^ b
);;b c
{<< 	
var>> 
hostOnly>> 
=>> 
host>> 
.>>  
Host>>  $
;>>$ %
ifAA 
(AA 
TryMatchInternalAA  
(AA  !
hostAA! %
.AA% &
ValueAA& +
,AA+ ,
hostOnlyAA- 5
,AA5 6
pathAA7 ;
.AA; <
ValueAA< A
,AAA B
outAAC F
varAAG J
resultAAK Q
)AAQ R
)AAR S
{BB 
returnCC 
resultCC 
;CC 
}DD 
ifII 
(II 
_hasStarMappingII 
&&II  "
TryMatchStarMappingII# 6
(II6 7
hostII7 ;
.II; <
ValueII< A
,IIA B
hostOnlyIIC K
,IIK L
pathIIM Q
.IIQ R
ValueIIR W
,IIW X
outIIY \
resultII] c
)IIc d
)IId e
{JJ 
returnKK 
resultKK 
;KK 
}LL 
ifOO 
(OO 
fallbackToDefaultOO !
&&OO" $
DefaultIsCatchAllOO% 6
(OO6 7
)OO7 8
)OO8 9
{PP 
returnQQ 
_defaultQQ 
;QQ  
}RR 
ifUU 
(UU 
fallbackToDefaultUU !
&&UU" $
TryMatchInternalUU% 5
(UU5 6
$strUU6 8
,UU8 9
$strUU: <
,UU< =
$strUU> A
,UUA B
outUUC F
resultUUG M
)UUM N
)UUN O
{VV 
returnWW 
resultWW 
;WW 
}XX 
returnZZ 
nullZZ 
;ZZ 
}[[ 	
private]] 
bool]] 
TryMatchInternal]] %
(]]% &
StringSegment]]& 3
host]]4 8
,]]8 9
StringSegment]]: G
hostOnly]]H P
,]]P Q
StringSegment]]R _
path]]` d
,]]d e
out]]f i
ShellSettings]]j w
result]]x ~
)]]~ 
{^^ 	
ifaa 
(aa 
hostaa 
.aa 
Lengthaa 
==aa 
$numaa  
||aa! #
!aa$ %"
_shellsByHostAndPrefixaa% ;
.aa; <
TryGetValueaa< G
(aaG H
GetHostAndPrefixaaH X
(aaX Y
hostaaY ]
,aa] ^
pathaa_ c
)aac d
,aad e
outaaf i
resultaaj p
)aap q
)aaq r
{bb 
ifee 
(ee 
hostee 
.ee 
Lengthee 
==ee  "
hostOnlyee# +
.ee+ ,
Lengthee, 2
||ee3 5
!ee6 7"
_shellsByHostAndPrefixee7 M
.eeM N
TryGetValueeeN Y
(eeY Z
GetHostAndPrefixeeZ j
(eej k
hostOnlyeek s
,ees t
patheeu y
)eey z
,eez {
outee| 
result
eeÄ Ü
)
eeÜ á
)
eeá à
{ff 
ifii 
(ii 
hostii 
.ii 
Lengthii #
==ii$ &
$numii' (
||ii) +
!ii, -"
_shellsByHostAndPrefixii- C
.iiC D
TryGetValueiiD O
(iiO P
GetHostAndPrefixiiP `
(ii` a
hostiia e
,iie f
$striig j
)iij k
,iik l
outiim p
resultiiq w
)iiw x
)iix y
{jj 
ifmm 
(mm 
hostmm  
.mm  !
Lengthmm! '
==mm( *
hostOnlymm+ 3
.mm3 4
Lengthmm4 :
||mm; =
!mm> ?"
_shellsByHostAndPrefixmm? U
.mmU V
TryGetValuemmV a
(mma b
GetHostAndPrefixmmb r
(mmr s
hostOnlymms {
,mm{ |
$str	mm} Ä
)
mmÄ Å
,
mmÅ Ç
out
mmÉ Ü
result
mmá ç
)
mmç é
)
mmé è
{nn 
ifqq 
(qq  
!qq  !"
_shellsByHostAndPrefixqq! 7
.qq7 8
TryGetValueqq8 C
(qqC D
GetHostAndPrefixqqD T
(qqT U
$strqqU W
,qqW X
pathqqY ]
)qq] ^
,qq^ _
outqq` c
resultqqd j
)qqj k
)qqk l
{rr 
resultss  &
=ss' (
nullss) -
;ss- .
returntt  &
falsett' ,
;tt, -
}uu 
}vv 
}ww 
}xx 
}yy 
return{{ 
true{{ 
;{{ 
}|| 	
private~~ 
bool~~ 
TryMatchStarMapping~~ (
(~~( )
StringSegment~~) 6
host~~7 ;
,~~; <
StringSegment~~= J
hostOnly~~K S
,~~S T
StringSegment~~U b
path~~c g
,~~g h
out~~i l
ShellSettings~~m z
result	~~{ Å
)
~~Å Ç
{ 	
if
ÄÄ 
(
ÄÄ 
TryMatchInternal
ÄÄ  
(
ÄÄ  !
$str
ÄÄ! %
+
ÄÄ& '
host
ÄÄ( ,
,
ÄÄ, -
$str
ÄÄ. 2
+
ÄÄ3 4
hostOnly
ÄÄ5 =
,
ÄÄ= >
path
ÄÄ? C
,
ÄÄC D
out
ÄÄE H
result
ÄÄI O
)
ÄÄO P
)
ÄÄP Q
{
ÅÅ 
return
ÇÇ 
true
ÇÇ 
;
ÇÇ 
}
ÉÉ 
var
ÖÖ 
index
ÖÖ 
=
ÖÖ 
-
ÖÖ 
$num
ÖÖ 
;
ÖÖ 
while
àà 
(
àà 
-
àà 
$num
àà 
!=
àà 
(
àà 
index
àà 
=
àà  !
host
àà" &
.
àà& '
IndexOf
àà' .
(
àà. /
$char
àà/ 2
,
àà2 3
index
àà4 9
+
àà: ;
$num
àà< =
)
àà= >
)
àà> ?
)
àà? @
{
ââ 
if
ää 
(
ää 
TryMatchInternal
ää $
(
ää$ %
$str
ää% (
+
ää) *
host
ää+ /
.
ää/ 0

Subsegment
ää0 :
(
ää: ;
index
ää; @
)
ää@ A
,
ääA B
$str
ääC F
+
ääG H
hostOnly
ääI Q
.
ääQ R

Subsegment
ääR \
(
ää\ ]
index
ää] b
)
ääb c
,
ääc d
path
ääe i
,
ääi j
out
ääk n
result
ääo u
)
ääu v
)
ääv w
{
ãã 
return
åå 
true
åå 
;
åå  
}
çç 
}
éé 
result
êê 
=
êê 
null
êê 
;
êê 
return
ëë 
false
ëë 
;
ëë 
}
íí 	
private
îî 
string
îî 
GetHostAndPrefix
îî '
(
îî' (
StringSegment
îî( 5
host
îî6 :
,
îî: ;
StringSegment
îî< I
path
îîJ N
)
îîN O
{
ïï 	
var
óó 
firstSegmentIndex
óó !
=
óó" #
path
óó$ (
.
óó( )
Length
óó) /
>
óó0 1
$num
óó2 3
?
óó4 5
path
óó6 :
.
óó: ;
IndexOf
óó; B
(
óóB C
$char
óóC F
,
óóF G
$num
óóH I
)
óóI J
:
óóK L
-
óóM N
$num
óóN O
;
óóO P
if
òò 
(
òò 
firstSegmentIndex
òò !
>
òò" #
-
òò$ %
$num
òò% &
)
òò& '
{
ôô 
return
öö 
host
öö 
+
öö 
path
öö "
.
öö" #

Subsegment
öö# -
(
öö- .
$num
öö. /
,
öö/ 0
firstSegmentIndex
öö1 B
)
ööB C
.
ööC D
Value
ööD I
;
ööI J
}
õõ 
else
úú 
{
ùù 
return
ûû 
host
ûû 
+
ûû 
path
ûû "
.
ûû" #
Value
ûû# (
;
ûû( )
}
üü 
}
†† 	
private
¢¢ 
string
¢¢ 
[
¢¢ 
]
¢¢ "
GetAllHostsAndPrefix
¢¢ -
(
¢¢- .
ShellSettings
¢¢. ;
shellSettings
¢¢< I
)
¢¢I J
{
££ 	
if
¶¶ 
(
¶¶ 
string
¶¶ 
.
¶¶  
IsNullOrWhiteSpace
¶¶ )
(
¶¶) *
shellSettings
¶¶* 7
.
¶¶7 8
RequestUrlHost
¶¶8 F
)
¶¶F G
)
¶¶G H
{
ßß 
return
®® 
new
®® 
string
®® !
[
®®! "
]
®®" #
{
®®$ %
$str
®®& )
+
®®* +
shellSettings
®®, 9
.
®®9 :
RequestUrlPrefix
®®: J
}
®®K L
;
®®L M
}
©© 
return
´´ 
shellSettings
´´  
.
¨¨ 
RequestUrlHost
¨¨ 
.
≠≠ 
Split
≠≠ 
(
≠≠ 
HostSeparators
≠≠ %
,
≠≠% & 
StringSplitOptions
≠≠' 9
.
≠≠9 : 
RemoveEmptyEntries
≠≠: L
)
≠≠L M
.
ÆÆ 
Select
ÆÆ 
(
ÆÆ 
ruh
ÆÆ 
=>
ÆÆ 
ruh
ÆÆ "
+
ÆÆ# $
$str
ÆÆ% (
+
ÆÆ) *
shellSettings
ÆÆ+ 8
.
ÆÆ8 9
RequestUrlPrefix
ÆÆ9 I
)
ÆÆI J
.
ØØ 
ToArray
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
private
≤≤ 
bool
≤≤ 
DefaultIsCatchAll
≤≤ &
(
≤≤& '
)
≤≤' (
{
≥≥ 	
return
¥¥ 
_default
¥¥ 
!=
¥¥ 
null
¥¥ #
&&
¥¥$ &
string
¥¥' -
.
¥¥- .
IsNullOrEmpty
¥¥. ;
(
¥¥; <
_default
¥¥< D
.
¥¥D E
RequestUrlHost
¥¥E S
)
¥¥S T
&&
¥¥U W
string
¥¥X ^
.
¥¥^ _
IsNullOrEmpty
¥¥_ l
(
¥¥l m
_default
¥¥m u
.
¥¥u v
RequestUrlPrefix¥¥v Ü
)¥¥Ü á
;¥¥á à
}
µµ 	
}
∂∂ 
}∑∑ ¢"
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (#
AddHostingShellServices) @
(@ A
thisA E
IServiceCollectionF X
servicesY a
)a b
{ 	
services 
. 
AddSingleton !
<! "

IShellHost" ,
,, -
	ShellHost. 7
>7 8
(8 9
)9 :
;: ;
services 
. 
AddSingleton !
<! "/
#IShellDescriptorManagerEventHandler" E
>E F
(F G
spG I
=>J L
spM O
.O P
GetRequiredServiceP b
<b c

IShellHostc m
>m n
(n o
)o p
)p q
;q r
{ 
services 
. 
TryAddSingleton (
<( )!
IShellSettingsManager) >
,> ?&
SingleShellSettingsManager@ Z
>Z [
([ \
)\ ]
;] ^
services 
. 
AddTransient %
<% &
IConfigureOptions& 7
<7 8
ShellOptions8 D
>D E
,E F
ShellOptionsSetupG X
>X Y
(Y Z
)Z [
;[ \
services 
. 
AddSingleton %
<% & 
IShellContextFactory& :
,: ;
ShellContextFactory< O
>O P
(P Q
)Q R
;R S
{ 
services 
. 
AddSingleton )
<) * 
ICompositionStrategy* >
,> ?
CompositionStrategy@ S
>S T
(T U
)U V
;V W
services 
. 
AddSingleton )
<) *"
IShellContainerFactory* @
,@ A!
ShellContainerFactoryB W
>W X
(X Y
)Y Z
;Z [
} 
} 
services!! 
.!! 
AddSingleton!! !
<!!! "
IRunningShellTable!!" 4
,!!4 5
RunningShellTable!!6 G
>!!G H
(!!H I
)!!I J
;!!J K
services## 
.## 
AddSingleton## !
<##! "
IHostedService##" 0
,##0 1)
DistributedShellHostedService##2 O
>##O P
(##P Q
)##Q R
;##R S
return%% 
services%% 
;%% 
}&& 	
public(( 
static(( 
IServiceCollection(( ($
AddAllFeaturesDescriptor(() A
(((A B
this((B F
IServiceCollection((G Y
services((Z b
)((b c
{)) 	
services** 
.** 
	AddScoped** 
<** #
IShellDescriptorManager** 6
,**6 7-
!AllFeaturesShellDescriptorManager**8 Y
>**Y Z
(**Z [
)**[ \
;**\ ]
return,, 
services,, 
;,, 
}-- 	
public// 
static// 
IServiceCollection// ($
AddSetFeaturesDescriptor//) A
(//A B
this//B F
IServiceCollection//G Y
services//Z b
)//b c
{00 	
services11 
.11 
AddSingleton11 !
<11! "#
IShellDescriptorManager11" 9
>119 :
(11: ;
sp11; =
=>11> @
{22 
var33 
shellFeatures33 !
=33" #
sp33$ &
.33& '
GetServices33' 2
<332 3
ShellFeature333 ?
>33? @
(33@ A
)33A B
;33B C
return44 
new44 -
!SetFeaturesShellDescriptorManager44 <
(44< =
shellFeatures44= J
)44J K
;44K L
}55 
)55 
;55 
return77 
services77 
;77 
}88 	
}99 
}:: ≥l
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellDescriptorFeaturesManager.cs
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
Shell

" '
{ 
public 

class *
ShellDescriptorFeaturesManager /
:0 1+
IShellDescriptorFeaturesManager2 Q
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
IEnumerable $
<$ %
ShellFeature% 1
>1 2"
_alwaysEnabledFeatures3 I
;I J
private 
readonly #
IShellDescriptorManager 0#
_shellDescriptorManager1 H
;H I
private 
readonly 
ILogger  
_logger! (
;( )
public 0
$FeatureDependencyNotificationHandler 3)
FeatureDependencyNotification4 Q
{R S
getT W
;W X
setY \
;\ ]
}^ _
public *
ShellDescriptorFeaturesManager -
(- .
IExtensionManager 
extensionManager .
,. /
IEnumerable 
< 
ShellFeature $
>$ %
shellFeatures& 3
,3 4#
IShellDescriptorManager #"
shellDescriptorManager$ :
,: ;
ILogger 
<  
ShellFeaturesManager (
>( )
logger* 0
)0 1
{ 	
_extensionManager 
= 
extensionManager  0
;0 1"
_alwaysEnabledFeatures "
=# $
shellFeatures% 2
.2 3
Where3 8
(8 9
f9 :
=>; =
f> ?
.? @
AlwaysEnabled@ M
)M N
.N O
ToArrayO V
(V W
)W X
;X Y#
_shellDescriptorManager #
=$ %"
shellDescriptorManager& <
;< =
_logger 
= 
logger 
; 
} 	
public!! 
async!! 
Task!! 
<!! 
(!! 
IEnumerable!! &
<!!& '
IFeatureInfo!!' 3
>!!3 4
,!!4 5
IEnumerable!!6 A
<!!A B
IFeatureInfo!!B N
>!!N O
)!!O P
>!!P Q
UpdateFeaturesAsync!!R e
(!!e f
ShellDescriptor!!f u
shellDescriptor	!!v Ö
,
!!Ö Ü
IEnumerable"" 
<"" 
IFeatureInfo"" $
>""$ %
featuresToDisable""& 7
,""7 8
IEnumerable""9 D
<""D E
IFeatureInfo""E Q
>""Q R
featuresToEnable""S c
,""c d
bool""e i
force""j o
)""o p
{## 	
var$$ 
alwaysEnabledIds$$  
=$$! ""
_alwaysEnabledFeatures$$# 9
.$$9 :
Select$$: @
($$@ A
sf$$A C
=>$$D F
sf$$G I
.$$I J
Id$$J L
)$$L M
.$$M N
ToArray$$N U
($$U V
)$$V W
;$$W X
var&& 
enabledFeatures&& 
=&&  !
_extensionManager&&" 3
.&&3 4
GetFeatures&&4 ?
(&&? @
)&&@ A
.&&A B
Where&&B G
(&&G H
f&&H I
=>&&J L
shellDescriptor'' 
.''  
Features''  (
.''( )
Any'') ,
('', -
sf''- /
=>''0 2
sf''3 5
.''5 6
Id''6 8
==''9 ;
f''< =
.''= >
Id''> @
)''@ A
)''A B
.''B C
ToList''C I
(''I J
)''J K
;''K L
var)) 
enabledFeatureIds)) !
=))" #
enabledFeatures))$ 3
.))3 4
Select))4 :
()): ;
f)); <
=>))= ?
f))@ A
.))A B
Id))B D
)))D E
.))E F
ToArray))F M
())M N
)))N O
;))O P
var++  
AllFeaturesToDisable++ $
=++% &
featuresToDisable++' 8
.,, 
Where,, 
(,, 
f,, 
=>,, 
!,, 
alwaysEnabledIds,, -
.,,- .
Contains,,. 6
(,,6 7
f,,7 8
.,,8 9
Id,,9 ;
),,; <
),,< =
.-- 

SelectMany-- 
(-- 
feature-- #
=>--$ & 
GetFeaturesToDisable--' ;
(--; <
feature--< C
,--C D
enabledFeatureIds--E V
,--V W
force--X ]
)--] ^
)--^ _
... 
Distinct.. 
(.. 
).. 
.// 
ToList// 
(// 
)// 
;// 
if11 
(11  
AllFeaturesToDisable11 $
.11$ %
Count11% *
>11+ ,
$num11- .
)11. /
{22 
foreach33 
(33 
var33 
feature33 $
in33% ' 
AllFeaturesToDisable33( <
)33< =
{44 
enabledFeatures55 #
.55# $
Remove55$ *
(55* +
feature55+ 2
)552 3
;553 4
if77 
(77 
_logger77 
.77  
	IsEnabled77  )
(77) *
LogLevel77* 2
.772 3
Information773 >
)77> ?
)77? @
{88 
_logger99 
.99  
LogInformation99  .
(99. /
$str99/ U
,99U V
feature99W ^
.99^ _
Id99_ a
)99a b
;99b c
}:: 
};; 
}<< 
enabledFeatureIds>> 
=>> 
enabledFeatures>>  /
.>>/ 0
Select>>0 6
(>>6 7
f>>7 8
=>>>9 ;
f>>< =
.>>= >
Id>>> @
)>>@ A
.>>A B
ToArray>>B I
(>>I J
)>>J K
;>>K L
var@@ 
AllFeaturesToEnable@@ #
=@@$ %
featuresToEnable@@& 6
.AA 

SelectManyAA 
(AA 
featureAA #
=>AA$ &
GetFeaturesToEnableAA' :
(AA: ;
featureAA; B
,AAB C
enabledFeatureIdsAAD U
,AAU V
forceAAW \
)AA\ ]
)AA] ^
.BB 
DistinctBB 
(BB 
)BB 
.CC 
ToListCC 
(CC 
)CC 
;CC 
ifEE 
(EE 
AllFeaturesToEnableEE #
.EE# $
CountEE$ )
>EE* +
$numEE, -
)EE- .
{FF 
ifGG 
(GG 
_loggerGG 
.GG 
	IsEnabledGG %
(GG% &
LogLevelGG& .
.GG. /
InformationGG/ :
)GG: ;
)GG; <
{HH 
foreachII 
(II 
varII  
featureII! (
inII) +
AllFeaturesToEnableII, ?
)II? @
{JJ 
_loggerKK 
.KK  
LogInformationKK  .
(KK. /
$strKK/ Q
,KKQ R
featureKKS Z
.KKZ [
IdKK[ ]
)KK] ^
;KK^ _
}LL 
}MM 
enabledFeaturesOO 
=OO  !
enabledFeaturesOO" 1
.OO1 2
ConcatOO2 8
(OO8 9
AllFeaturesToEnableOO9 L
)OOL M
.OOM N
DistinctOON V
(OOV W
)OOW X
.OOX Y
ToListOOY _
(OO_ `
)OO` a
;OOa b
}PP 
ifRR 
(RR  
AllFeaturesToDisableRR $
.RR$ %
CountRR% *
>RR+ ,
$numRR- .
||RR/ 1
AllFeaturesToEnableRR2 E
.RRE F
CountRRF K
>RRL M
$numRRN O
)RRO P
{SS 
awaitTT #
_shellDescriptorManagerTT -
.TT- .&
UpdateShellDescriptorAsyncTT. H
(TTH I
shellDescriptorUU #
.UU# $
SerialNumberUU$ 0
,UU0 1
enabledFeaturesVV #
.VV# $
SelectVV$ *
(VV* +
xVV+ ,
=>VV- /
newVV0 3
ShellFeatureVV4 @
(VV@ A
xVVA B
.VVB C
IdVVC E
)VVE F
)VVF G
.VVG H
ToListVVH N
(VVN O
)VVO P
,VVP Q
shellDescriptorWW #
.WW# $

ParametersWW$ .
)WW. /
;WW/ 0
}XX 
returnZZ 
(ZZ  
AllFeaturesToDisableZZ (
,ZZ( )
AllFeaturesToEnableZZ* =
)ZZ= >
;ZZ> ?
}[[ 	
privatedd 
IEnumerabledd 
<dd 
IFeatureInfodd (
>dd( )
GetFeaturesToEnabledd* =
(dd= >
IFeatureInfodd> J
featureInfoddK V
,ddV W
IEnumerableddX c
<ddc d
stringddd j
>ddj k
enabledFeatureIdsddl }
,dd} ~
bool	dd É
force
ddÑ â
)
ddâ ä
{ee 	
varff 
featuresToEnableff  
=ff! "
_extensionManagerff# 4
.gg "
GetFeatureDependenciesgg '
(gg' (
featureInfogg( 3
.gg3 4
Idgg4 6
)gg6 7
.hh 
Wherehh 
(hh 
fhh 
=>hh 
!hh 
enabledFeatureIdshh .
.hh. /
Containshh/ 7
(hh7 8
fhh8 9
.hh9 :
Idhh: <
)hh< =
)hh= >
.ii 
ToListii 
(ii 
)ii 
;ii 
ifkk 
(kk 
featuresToEnablekk  
.kk  !
Countkk! &
>kk' (
$numkk) *
&&kk+ -
!kk. /
forcekk/ 4
)kk4 5
{ll 
ifmm 
(mm 
_loggermm 
.mm 
	IsEnabledmm %
(mm% &
LogLevelmm& .
.mm. /
Warningmm/ 6
)mm6 7
)mm7 8
{nn 
_loggeroo 
.oo 

LogWarningoo &
(oo& '
$stroo' j
,ooj k
featureInfoool w
.oow x
Idoox z
)ooz {
;oo{ |
}pp )
FeatureDependencyNotificationrr -
?rr- .
.rr. /
Invokerr/ 5
(rr5 6
$strrr6 o
,rro p
featureInforrq |
,rr| }
featuresToEnable	rr~ é
.
rré è
Where
rrè î
(
rrî ï
f
rrï ñ
=>
rró ô
f
rrö õ
.
rrõ ú
Id
rrú û
!=
rrü °
featureInfo
rr¢ ≠
.
rr≠ Æ
Id
rrÆ ∞
)
rr∞ ±
)
rr± ≤
;
rr≤ ≥
returntt 

Enumerablett !
.tt! "
Emptytt" '
<tt' (
IFeatureInfott( 4
>tt4 5
(tt5 6
)tt6 7
;tt7 8
}uu 
returnww 
featuresToEnableww #
;ww# $
}xx 	
private
ÅÅ 
IEnumerable
ÅÅ 
<
ÅÅ 
IFeatureInfo
ÅÅ (
>
ÅÅ( )"
GetFeaturesToDisable
ÅÅ* >
(
ÅÅ> ?
IFeatureInfo
ÅÅ? K
featureInfo
ÅÅL W
,
ÅÅW X
IEnumerable
ÅÅY d
<
ÅÅd e
string
ÅÅe k
>
ÅÅk l
enabledFeatureIds
ÅÅm ~
,
ÅÅ~ 
boolÅÅÄ Ñ
forceÅÅÖ ä
)ÅÅä ã
{
ÇÇ 	
var
ÉÉ 
featuresToDisable
ÉÉ !
=
ÉÉ" #
_extensionManager
ÉÉ$ 5
.
ÑÑ "
GetDependentFeatures
ÑÑ %
(
ÑÑ% &
featureInfo
ÑÑ& 1
.
ÑÑ1 2
Id
ÑÑ2 4
)
ÑÑ4 5
.
ÖÖ 
Where
ÖÖ 
(
ÖÖ 
f
ÖÖ 
=>
ÖÖ 
enabledFeatureIds
ÖÖ -
.
ÖÖ- .
Contains
ÖÖ. 6
(
ÖÖ6 7
f
ÖÖ7 8
.
ÖÖ8 9
Id
ÖÖ9 ;
)
ÖÖ; <
)
ÖÖ< =
.
ÜÜ 
ToList
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
if
àà 
(
àà 
featuresToDisable
àà !
.
àà! "
Count
àà" '
>
àà( )
$num
àà* +
&&
àà, .
!
àà/ 0
force
àà0 5
)
àà5 6
{
ââ 
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
ää. /
Warning
ää/ 6
)
ää6 7
)
ää7 8
{
ãã 
_logger
åå 
.
åå 

LogWarning
åå &
(
åå& '
$str
åå' l
,
åål m
featureInfo
åån y
.
ååy z
Id
ååz |
)
åå| }
;
åå} ~
}
çç +
FeatureDependencyNotification
èè -
?
èè- .
.
èè. /
Invoke
èè/ 5
(
èè5 6
$str
èè6 q
,
èèq r
featureInfo
èès ~
,
èè~ !
featuresToDisableèèÄ ë
.èèë í
Whereèèí ó
(èèó ò
fèèò ô
=>èèö ú
fèèù û
.èèû ü
Idèèü °
!=èè¢ §
featureInfoèè• ∞
.èè∞ ±
Idèè± ≥
)èè≥ ¥
)èè¥ µ
;èèµ ∂
return
ëë 

Enumerable
ëë !
.
ëë! "
Empty
ëë" '
<
ëë' (
IFeatureInfo
ëë( 4
>
ëë4 5
(
ëë5 6
)
ëë6 7
;
ëë7 8
}
íí 
return
îî 
featuresToDisable
îî $
;
îî$ %
}
ïï 	
}
ññ 
}óó  4
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellFeaturesManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{		 
public

 

class

  
ShellFeaturesManager

 %
:

& '!
IShellFeaturesManager

( =
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly +
IShellDescriptorFeaturesManager 8+
_shellDescriptorFeaturesManager9 X
;X Y
public  
ShellFeaturesManager #
(# $
IExtensionManager 
extensionManager .
,. /
ShellDescriptor 
shellDescriptor +
,+ ,+
IShellDescriptorFeaturesManager +*
shellDescriptorFeaturesManager, J
)J K
{ 	
_extensionManager 
= 
extensionManager  0
;0 1
_shellDescriptor 
= 
shellDescriptor .
;. /+
_shellDescriptorFeaturesManager +
=, -*
shellDescriptorFeaturesManager. L
;L M
} 	
public 
Task 
< 
IEnumerable 
<  
IFeatureInfo  ,
>, -
>- .#
GetEnabledFeaturesAsync/ F
(F G
)G H
{ 	
return 
Task 
. 

FromResult "
(" #
_extensionManager# 4
.4 5
GetFeatures5 @
(@ A
)A B
.B C
WhereC H
(H I
fI J
=>K M
_shellDescriptorN ^
.^ _
Features_ g
.g h
Anyh k
(k l
sfl n
=>o q
sfr t
.t u
Idu w
==x z
f{ |
.| }
Id} 
)	 Ä
)
Ä Å
)
Å Ç
;
Ç É
} 	
public 
Task 
< 
IEnumerable 
<  
IFeatureInfo  ,
>, -
>- .)
GetAlwaysEnabledFeaturesAsync/ L
(L M
)M N
{   	
return!! 
Task!! 
.!! 

FromResult!! "
(!!" #
_extensionManager!!# 4
.!!4 5
GetFeatures!!5 @
(!!@ A
)!!A B
.!!B C
Where!!C H
(!!H I
f!!I J
=>!!K M
f!!N O
.!!O P
IsAlwaysEnabled!!P _
||!!` b
_shellDescriptor!!c s
.!!s t
Features!!t |
.!!| }
Any	!!} Ä
(
!!Ä Å
sf
!!Å É
=>
!!Ñ Ü
sf
!!á â
.
!!â ä
Id
!!ä å
==
!!ç è
f
!!ê ë
.
!!ë í
Id
!!í î
&&
!!ï ó
sf
!!ò ö
.
!!ö õ
AlwaysEnabled
!!õ ®
)
!!® ©
)
!!© ™
)
!!™ ´
;
!!´ ¨
}"" 	
public$$ 
Task$$ 
<$$ 
IEnumerable$$ 
<$$  
IFeatureInfo$$  ,
>$$, -
>$$- .$
GetDisabledFeaturesAsync$$/ G
($$G H
)$$H I
{%% 	
return&& 
Task&& 
.&& 

FromResult&& "
(&&" #
_extensionManager&&# 4
.&&4 5
GetFeatures&&5 @
(&&@ A
)&&A B
.&&B C
Where&&C H
(&&H I
f&&I J
=>&&K M
_shellDescriptor&&N ^
.&&^ _
Features&&_ g
.&&g h
All&&h k
(&&k l
sf&&l n
=>&&o q
sf&&r t
.&&t u
Id&&u w
!=&&x z
f&&{ |
.&&| }
Id&&} 
)	&& Ä
)
&&Ä Å
)
&&Å Ç
;
&&Ç É
}'' 	
public)) 
Task)) 
<)) 
()) 
IEnumerable))  
<))  !
IFeatureInfo))! -
>))- .
,)). /
IEnumerable))0 ;
<)); <
IFeatureInfo))< H
>))H I
)))I J
>))J K
UpdateFeaturesAsync))L _
())_ `
IEnumerable))` k
<))k l
IFeatureInfo))l x
>))x y
featuresToDisable	))z ã
,
))ã å
IEnumerable
))ç ò
<
))ò ô
IFeatureInfo
))ô •
>
))• ¶
featuresToEnable
))ß ∑
,
))∑ ∏
bool
))π Ω
force
))æ √
)
))√ ƒ
{** 	
return++ +
_shellDescriptorFeaturesManager++ 2
.++2 3
UpdateFeaturesAsync++3 F
(++F G
_shellDescriptor++G W
,++W X
featuresToDisable++Y j
,++j k
featuresToEnable++l |
,++| }
force	++~ É
)
++É Ñ
;
++Ñ Ö
},, 	
public.. 
Task.. 
<.. 
IEnumerable.. 
<..  
IExtensionInfo..  .
>... /
>../ 0%
GetEnabledExtensionsAsync..1 J
(..J K
)..K L
{// 	
var11 

enabledIds11 
=11 
_extensionManager11 .
.11. /
GetFeatures11/ :
(11: ;
)11; <
.11< =
Where11= B
(11B C
f11C D
=>11E G
_shellDescriptor11H X
.22 
Features22 
.22 
Any22 
(22 
sf22  
=>22! #
sf22$ &
.22& '
Id22' )
==22* ,
f22- .
.22. /
Id22/ 1
)221 2
)222 3
.223 4
Select224 :
(22: ;
f22; <
=>22= ?
f22@ A
.22A B
	Extension22B K
.22K L
Id22L N
)22N O
.22O P
Distinct22P X
(22X Y
)22Y Z
.22Z [
ToArray22[ b
(22b c
)22c d
;22d e
return55 
Task55 
.55 

FromResult55 "
(55" #
_extensionManager55# 4
.554 5
GetExtensions555 B
(55B C
)55C D
.55D E
Where55E J
(55J K
e55K L
=>55M O

enabledIds55P Z
.55Z [
Contains55[ c
(55c d
e55d e
.55e f
Id55f h
)55h i
)55i j
)55j k
;55k l
}66 	
}77 
}88 ≥å
vD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellHost.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class 
	ShellHost 
: 

IShellHost '
,' (
IDisposable) 4
{ 
private 
const 
int &
ReloadShellMaxRetriesCount 4
=5 6
$num7 8
;8 9
private 
readonly !
IShellSettingsManager .!
_shellSettingsManager/ D
;D E
private 
readonly  
IShellContextFactory - 
_shellContextFactory. B
;B C
private 
readonly 
IRunningShellTable +
_runningShellTable, >
;> ?
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
ILogger  
_logger! (
;( )
private   
bool   
_initialized   !
;  ! "
private!! 
readonly!!  
ConcurrentDictionary!! -
<!!- .
string!!. 4
,!!4 5
ShellContext!!6 B
>!!B C
_shellContexts!!D R
=!!S T
new!!U X 
ConcurrentDictionary!!Y m
<!!m n
string!!n t
,!!t u
ShellContext	!!v Ç
>
!!Ç É
(
!!É Ñ
)
!!Ñ Ö
;
!!Ö Ü
private"" 
readonly""  
ConcurrentDictionary"" -
<""- .
string"". 4
,""4 5
ShellSettings""6 C
>""C D
_shellSettings""E S
=""T U
new""V Y 
ConcurrentDictionary""Z n
<""n o
string""o u
,""u v
ShellSettings	""w Ñ
>
""Ñ Ö
(
""Ö Ü
)
""Ü á
;
""á à
private## 
readonly##  
ConcurrentDictionary## -
<##- .
string##. 4
,##4 5
SemaphoreSlim##6 C
>##C D
_shellSemaphores##E U
=##V W
new##X [ 
ConcurrentDictionary##\ p
<##p q
string##q w
,##w x
SemaphoreSlim	##y Ü
>
##Ü á
(
##á à
)
##à â
;
##â ä
private$$ 
SemaphoreSlim$$ "
_initializingSemaphore$$ 4
=$$5 6
new$$7 :
SemaphoreSlim$$; H
($$H I
$num$$I J
)$$J K
;$$K L
public&& 
	ShellHost&& 
(&& !
IShellSettingsManager'' ! 
shellSettingsManager''" 6
,''6 7 
IShellContextFactory((  
shellContextFactory((! 4
,((4 5
IRunningShellTable)) 
runningShellTable)) 0
,))0 1
IExtensionManager** 
extensionManager** .
,**. /
ILogger++ 
<++ 
	ShellHost++ 
>++ 
logger++ %
)++% &
{,, 	!
_shellSettingsManager-- !
=--" # 
shellSettingsManager--$ 8
;--8 9 
_shellContextFactory..  
=..! "
shellContextFactory..# 6
;..6 7
_runningShellTable// 
=//  
runningShellTable//! 2
;//2 3
_extensionManager00 
=00 
extensionManager00  0
;000 1
_logger11 
=11 
logger11 
;11 
}22 	
public44 
ShellsEvent44 
LoadingAsync44 '
{44( )
get44* -
;44- .
set44/ 2
;442 3
}444 5
public55 

ShellEvent55 
ReleasingAsync55 (
{55) *
get55+ .
;55. /
set550 3
;553 4
}555 6
public66 

ShellEvent66 
ReloadingAsync66 (
{66) *
get66+ .
;66. /
set660 3
;663 4
}665 6
public88 
async88 
Task88 
InitializeAsync88 )
(88) *
)88* +
{99 	
if:: 
(:: 
!:: 
_initialized:: 
):: 
{;; 
await== "
_initializingSemaphore== ,
.==, -
	WaitAsync==- 6
(==6 7
)==7 8
;==8 9
try>> 
{?? 
if@@ 
(@@ 
!@@ 
_initialized@@ %
)@@% &
{AA 
awaitBB +
PreCreateAndRegisterShellsAsyncBB =
(BB= >
)BB> ?
;BB? @
}CC 
}DD 
finallyEE 
{FF 
_initializedGG  
=GG! "
trueGG# '
;GG' ("
_initializingSemaphoreHH *
.HH* +
ReleaseHH+ 2
(HH2 3
)HH3 4
;HH4 5
}II 
}JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
ShellContextMM &
>MM& '(
GetOrCreateShellContextAsyncMM( D
(MMD E
ShellSettingsMME R
settingsMMS [
)MM[ \
{NN 	
ShellContextOO 
shellOO 
=OO  
nullOO! %
;OO% &
whileQQ 
(QQ 
shellQQ 
==QQ 
nullQQ  
)QQ  !
{RR 
ifSS 
(SS 
!SS 
_shellContextsSS #
.SS# $
TryGetValueSS$ /
(SS/ 0
settingsSS0 8
.SS8 9
NameSS9 =
,SS= >
outSS? B
shellSSC H
)SSH I
)SSI J
{TT 
varUU 
	semaphoreUU !
=UU" #
_shellSemaphoresUU$ 4
.UU4 5
GetOrAddUU5 =
(UU= >
settingsUU> F
.UUF G
NameUUG K
,UUK L
(UUM N
nameUUN R
)UUR S
=>UUT V
newUUW Z
SemaphoreSlimUU[ h
(UUh i
$numUUi j
)UUj k
)UUk l
;UUl m
awaitWW 
	semaphoreWW #
.WW# $
	WaitAsyncWW$ -
(WW- .
)WW. /
;WW/ 0
tryYY 
{ZZ 
if[[ 
([[ 
![[ 
_shellContexts[[ +
.[[+ ,
TryGetValue[[, 7
([[7 8
settings[[8 @
.[[@ A
Name[[A E
,[[E F
out[[G J
shell[[K P
)[[P Q
)[[Q R
{\\ 
shell]] !
=]]" #
await]]$ )#
CreateShellContextAsync]]* A
(]]A B
settings]]B J
)]]J K
;]]K L
AddAndRegisterShell^^ /
(^^/ 0
shell^^0 5
)^^5 6
;^^6 7
}__ 
}`` 
finallyaa 
{bb 
	semaphorecc !
.cc! "
Releasecc" )
(cc) *
)cc* +
;cc+ ,
}dd 
}ee 
ifgg 
(gg 
shellgg 
.gg 
Releasedgg "
)gg" #
{hh 
_shellContextskk "
.kk" #
	TryRemovekk# ,
(kk, -
settingskk- 5
.kk5 6
Namekk6 :
,kk: ;
outkk< ?
_kk@ A
)kkA B
;kkB C
shellll 
=ll 
nullll  
;ll  !
}mm 
}nn 
returnpp 
shellpp 
;pp 
}qq 	
publicss 
asyncss 
Taskss 
<ss 

ShellScopess $
>ss$ %
GetScopeAsyncss& 3
(ss3 4
ShellSettingsss4 A
settingsssB J
)ssJ K
{tt 	

ShellScopeuu 
scopeuu 
=uu 
nulluu #
;uu# $
whileww 
(ww 
scopeww 
==ww 
nullww  
)ww  !
{xx 
ifyy 
(yy 
!yy 
_shellContextsyy #
.yy# $
TryGetValueyy$ /
(yy/ 0
settingsyy0 8
.yy8 9
Nameyy9 =
,yy= >
outyy? B
varyyC F
shellContextyyG S
)yyS T
)yyT U
{zz 
shellContext{{  
={{! "
await{{# ((
GetOrCreateShellContextAsync{{) E
({{E F
settings{{F N
){{N O
;{{O P
}|| 
scope 
= 
shellContext $
.$ %
CreateScope% 0
(0 1
)1 2
;2 3
if
ÉÉ 
(
ÉÉ 
scope
ÉÉ 
==
ÉÉ 
null
ÉÉ !
)
ÉÉ! "
{
ÑÑ 
_shellContexts
áá "
.
áá" #
	TryRemove
áá# ,
(
áá, -
settings
áá- 5
.
áá5 6
Name
áá6 :
,
áá: ;
out
áá< ?
_
áá@ A
)
ááA B
;
ááB C
}
àà 
}
ââ 
return
ãã 
scope
ãã 
;
ãã 
}
åå 	
public
éé 
async
éé 
Task
éé &
UpdateShellSettingsAsync
éé 2
(
éé2 3
ShellSettings
éé3 @
settings
ééA I
)
ééI J
{
èè 	
settings
êê 
.
êê 
	VersionId
êê 
=
êê  
IdGenerator
êê! ,
.
êê, -

GenerateId
êê- 7
(
êê7 8
)
êê8 9
;
êê9 :
await
ëë #
_shellSettingsManager
ëë '
.
ëë' (
SaveSettingsAsync
ëë( 9
(
ëë9 :
settings
ëë: B
)
ëëB C
;
ëëC D
await
íí %
ReloadShellContextAsync
íí )
(
íí) *
settings
íí* 2
)
íí2 3
;
íí3 4
}
ìì 	
public
òò 
Task
òò 
ChangedAsync
òò  
(
òò  !
ShellDescriptor
òò! 0

descriptor
òò1 ;
,
òò; <
ShellSettings
òò= J
settings
òòK S
)
òòS T
=>
ôô &
ReleaseShellContextAsync
ôô '
(
ôô' (
settings
ôô( 0
)
ôô0 1
;
ôô1 2
public
££ 
async
££ 
Task
££ %
ReloadShellContextAsync
££ 1
(
££1 2
ShellSettings
££2 ?
settings
££@ H
,
££H I
bool
££J N
eventSource
££O Z
=
££[ \
true
££] a
)
££a b
{
§§ 	
if
•• 
(
•• 
ReloadingAsync
•• 
!=
•• !
null
••" &
&&
••' )
eventSource
••* 5
&&
••6 8
settings
••9 A
.
••A B
State
••B G
!=
••H J
TenantState
••K V
.
••V W
Initializing
••W c
)
••c d
{
¶¶ 
foreach
ßß 
(
ßß 
var
ßß 
d
ßß 
in
ßß !
ReloadingAsync
ßß" 0
.
ßß0 1
GetInvocationList
ßß1 B
(
ßßB C
)
ßßC D
)
ßßD E
{
®® 
await
©© 
(
©© 
(
©© 

ShellEvent
©© &
)
©©& '
d
©©' (
)
©©( )
(
©©) *
settings
©©* 2
.
©©2 3
Name
©©3 7
)
©©7 8
;
©©8 9
}
™™ 
}
´´ 
if
ÆÆ 
(
ÆÆ 
!
ÆÆ 
CanReleaseShell
ÆÆ  
(
ÆÆ  !
settings
ÆÆ! )
)
ÆÆ) *
)
ÆÆ* +
{
ØØ  
_runningShellTable
∞∞ "
.
∞∞" #
Remove
∞∞# )
(
∞∞) *
settings
∞∞* 2
)
∞∞2 3
;
∞∞3 4
return
±± 
;
±± 
}
≤≤ 
if
¥¥ 
(
¥¥ 
settings
¥¥ 
.
¥¥ 
State
¥¥ 
!=
¥¥ !
TenantState
¥¥" -
.
¥¥- .
Initializing
¥¥. :
)
¥¥: ;
{
µµ 
settings
∂∂ 
=
∂∂ 
await
∂∂  #
_shellSettingsManager
∂∂! 6
.
∂∂6 7
LoadSettingsAsync
∂∂7 H
(
∂∂H I
settings
∂∂I Q
.
∂∂Q R
Name
∂∂R V
)
∂∂V W
;
∂∂W X
}
∑∑ 
var
ππ 
count
ππ 
=
ππ 
$num
ππ 
;
ππ 
while
∫∫ 
(
∫∫ 
count
∫∫ 
<
∫∫ (
ReloadShellMaxRetriesCount
∫∫ 5
)
∫∫5 6
{
ªª 
count
ºº 
++
ºº 
;
ºº 
if
ææ 
(
ææ 
_shellContexts
ææ "
.
ææ" #
	TryRemove
ææ# ,
(
ææ, -
settings
ææ- 5
.
ææ5 6
Name
ææ6 :
,
ææ: ;
out
ææ< ?
var
ææ@ C
context
ææD K
)
ææK L
)
ææL M
{
øø  
_runningShellTable
¿¿ &
.
¿¿& '
Remove
¿¿' -
(
¿¿- .
settings
¿¿. 6
)
¿¿6 7
;
¿¿7 8
context
¡¡ 
.
¡¡ 
Release
¡¡ #
(
¡¡# $
)
¡¡$ %
;
¡¡% &
}
¬¬ 
if
≈≈ 
(
≈≈ 
!
≈≈ 
_shellContexts
≈≈ #
.
≈≈# $
TryAdd
≈≈$ *
(
≈≈* +
settings
≈≈+ 3
.
≈≈3 4
Name
≈≈4 8
,
≈≈8 9
new
≈≈: =
ShellContext
≈≈> J
.
≈≈J K
PlaceHolder
≈≈K V
{
≈≈W X
Settings
≈≈Y a
=
≈≈b c
settings
≈≈d l
}
≈≈m n
)
≈≈n o
)
≈≈o p
{
∆∆ 
continue
»» 
;
»» 
}
…… 
_shellSettings
ÀÀ 
[
ÀÀ 
settings
ÀÀ '
.
ÀÀ' (
Name
ÀÀ( ,
]
ÀÀ, -
=
ÀÀ. /
settings
ÀÀ0 8
;
ÀÀ8 9
if
ÕÕ 
(
ÕÕ 
CanRegisterShell
ÕÕ $
(
ÕÕ$ %
settings
ÕÕ% -
)
ÕÕ- .
)
ÕÕ. /
{
ŒŒ  
_runningShellTable
œœ &
.
œœ& '
Add
œœ' *
(
œœ* +
settings
œœ+ 3
)
œœ3 4
;
œœ4 5
}
–– 
if
““ 
(
““ 
settings
““ 
.
““ 
State
““ "
==
““# %
TenantState
““& 1
.
““1 2
Initializing
““2 >
)
““> ?
{
”” 
return
‘‘ 
;
‘‘ 
}
’’ 
var
◊◊ 
currentVersionId
◊◊ $
=
◊◊% &
settings
◊◊' /
.
◊◊/ 0
	VersionId
◊◊0 9
;
◊◊9 :
settings
ŸŸ 
=
ŸŸ 
await
ŸŸ  #
_shellSettingsManager
ŸŸ! 6
.
ŸŸ6 7
LoadSettingsAsync
ŸŸ7 H
(
ŸŸH I
settings
ŸŸI Q
.
ŸŸQ R
Name
ŸŸR V
)
ŸŸV W
;
ŸŸW X
if
‹‹ 
(
‹‹ 
settings
‹‹ 
.
‹‹ 
	VersionId
‹‹ &
==
‹‹' )
currentVersionId
‹‹* :
)
‹‹: ;
{
›› 
return
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
}
‡‡ 
throw
‚‚ 
new
‚‚ &
ShellHostReloadException
‚‚ .
(
‚‚. /
$"
„„ +
Unable to reload the tenant '
„„ /
{
„„/ 0
settings
„„0 8
.
„„8 9
Name
„„9 =
}
„„= >E
7' as too many concurrent processes are trying to do so.
„„> u
"
„„u v
)
„„v w
;
„„w x
}
‰‰ 	
public
ÓÓ 
async
ÓÓ 
Task
ÓÓ &
ReleaseShellContextAsync
ÓÓ 2
(
ÓÓ2 3
ShellSettings
ÓÓ3 @
settings
ÓÓA I
,
ÓÓI J
bool
ÓÓK O
eventSource
ÓÓP [
=
ÓÓ\ ]
true
ÓÓ^ b
)
ÓÓb c
{
ÔÔ 	
if
 
(
 
ReleasingAsync
 
!=
 !
null
" &
&&
' )
eventSource
* 5
&&
6 8
settings
9 A
.
A B
State
B G
!=
H J
TenantState
K V
.
V W
Initializing
W c
)
c d
{
ÒÒ 
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ 
d
ÚÚ 
in
ÚÚ !
ReleasingAsync
ÚÚ" 0
.
ÚÚ0 1
GetInvocationList
ÚÚ1 B
(
ÚÚB C
)
ÚÚC D
)
ÚÚD E
{
ÛÛ 
await
ÙÙ 
(
ÙÙ 
(
ÙÙ 

ShellEvent
ÙÙ &
)
ÙÙ& '
d
ÙÙ' (
)
ÙÙ( )
(
ÙÙ) *
settings
ÙÙ* 2
.
ÙÙ2 3
Name
ÙÙ3 7
)
ÙÙ7 8
;
ÙÙ8 9
}
ıı 
}
ˆˆ 
if
˘˘ 
(
˘˘ 
!
˘˘ 
CanReleaseShell
˘˘  
(
˘˘  !
settings
˘˘! )
)
˘˘) *
)
˘˘* +
{
˙˙ 
return
˚˚ 
;
˚˚ 
}
¸¸ 
if
˛˛ 
(
˛˛ 
_shellContexts
˛˛ 
.
˛˛ 
	TryRemove
˛˛ (
(
˛˛( )
settings
˛˛) 1
.
˛˛1 2
Name
˛˛2 6
,
˛˛6 7
out
˛˛8 ;
var
˛˛< ?
context
˛˛@ G
)
˛˛G H
)
˛˛H I
{
ˇˇ 
context
ÄÄ 
.
ÄÄ 
Release
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
}
ÅÅ 
if
ÑÑ 
(
ÑÑ 
_shellContexts
ÑÑ 
.
ÑÑ 
TryAdd
ÑÑ %
(
ÑÑ% &
settings
ÑÑ& .
.
ÑÑ. /
Name
ÑÑ/ 3
,
ÑÑ3 4
new
ÑÑ5 8
ShellContext
ÑÑ9 E
.
ÑÑE F
PlaceHolder
ÑÑF Q
{
ÑÑR S
Settings
ÑÑT \
=
ÑÑ] ^
settings
ÑÑ_ g
}
ÑÑh i
)
ÑÑi j
)
ÑÑj k
{
ÖÖ 
_shellSettings
ÜÜ 
[
ÜÜ 
settings
ÜÜ '
.
ÜÜ' (
Name
ÜÜ( ,
]
ÜÜ, -
=
ÜÜ. /
settings
ÜÜ0 8
;
ÜÜ8 9
}
áá 
return
ââ 
;
ââ 
}
ää 	
public
åå 
IEnumerable
åå 
<
åå 
ShellContext
åå '
>
åå' (
ListShellContexts
åå) :
(
åå: ;
)
åå; <
=>
åå= ?
_shellContexts
åå@ N
.
ååN O
Values
ååO U
.
ååU V
ToArray
ååV ]
(
åå] ^
)
åå^ _
;
åå_ `
public
íí 
bool
íí  
TryGetShellContext
íí &
(
íí& '
string
íí' -
name
íí. 2
,
íí2 3
out
íí4 7
ShellContext
íí8 D
shellContext
ííE Q
)
ííQ R
=>
ííS U
_shellContexts
ííV d
.
ííd e
TryGetValue
ííe p
(
ííp q
name
ííq u
,
ííu v
out
ííw z
shellContextíí{ á
)ííá à
;ííà â
public
óó 
bool
óó 
TryGetSettings
óó "
(
óó" #
string
óó# )
name
óó* .
,
óó. /
out
óó0 3
ShellSettings
óó4 A
settings
óóB J
)
óóJ K
=>
óóL N
_shellSettings
óóO ]
.
óó] ^
TryGetValue
óó^ i
(
óói j
name
óój n
,
óón o
out
óóp s
settings
óót |
)
óó| }
;
óó} ~
public
úú 
IEnumerable
úú 
<
úú 
ShellSettings
úú (
>
úú( )
GetAllSettings
úú* 8
(
úú8 9
)
úú9 :
=>
úú; =
_shellSettings
úú> L
.
úúL M
Values
úúM S
.
úúS T
ToArray
úúT [
(
úú[ \
)
úú\ ]
;
úú] ^
private
ûû 
async
ûû 
Task
ûû -
PreCreateAndRegisterShellsAsync
ûû :
(
ûû: ;
)
ûû; <
{
üü 	
if
†† 
(
†† 
_logger
†† 
.
†† 
	IsEnabled
†† !
(
††! "
LogLevel
††" *
.
††* +
Information
††+ 6
)
††6 7
)
††7 8
{
°° 
_logger
¢¢ 
.
¢¢ 
LogInformation
¢¢ &
(
¢¢& '
$str
¢¢' A
)
¢¢A B
;
¢¢B C
}
££ 
await
ßß 
_extensionManager
ßß #
.
ßß# $
LoadFeaturesAsync
ßß$ 5
(
ßß5 6
)
ßß6 7
;
ßß7 8
if
©© 
(
©© 
LoadingAsync
©© 
!=
©© 
null
©©  $
)
©©$ %
{
™™ 
foreach
´´ 
(
´´ 
var
´´ 
d
´´ 
in
´´ !
LoadingAsync
´´" .
.
´´. /
GetInvocationList
´´/ @
(
´´@ A
)
´´A B
)
´´B C
{
¨¨ 
await
≠≠ 
(
≠≠ 
(
≠≠ 
ShellsEvent
≠≠ '
)
≠≠' (
d
≠≠( )
)
≠≠) *
(
≠≠* +
)
≠≠+ ,
;
≠≠, -
}
ÆÆ 
}
ØØ 
var
≤≤ 
allSettings
≤≤ 
=
≤≤ 
(
≤≤ 
await
≤≤ $#
_shellSettingsManager
≤≤% :
.
≤≤: ;
LoadSettingsAsync
≤≤; L
(
≤≤L M
)
≤≤M N
)
≤≤N O
.
≤≤O P
Where
≤≤P U
(
≤≤U V
CanCreateShell
≤≤V d
)
≤≤d e
.
≤≤e f
ToArray
≤≤f m
(
≤≤m n
)
≤≤n o
;
≤≤o p
var
≥≥ 
defaultSettings
≥≥ 
=
≥≥  !
allSettings
≥≥" -
.
≥≥- .
FirstOrDefault
≥≥. <
(
≥≥< =
s
≥≥= >
=>
≥≥? A
s
≥≥B C
.
≥≥C D
Name
≥≥D H
==
≥≥I K
ShellHelper
≥≥L W
.
≥≥W X
DefaultShellName
≥≥X h
)
≥≥h i
;
≥≥i j
if
∂∂ 
(
∂∂ 
defaultSettings
∂∂ 
?
∂∂  
.
∂∂  !
State
∂∂! &
!=
∂∂' )
TenantState
∂∂* 5
.
∂∂5 6
Running
∂∂6 =
)
∂∂= >
{
∑∑ 
var
∏∏ 
setupContext
∏∏  
=
∏∏! "
await
∏∏# (%
CreateSetupContextAsync
∏∏) @
(
∏∏@ A
defaultSettings
∏∏A P
)
∏∏P Q
;
∏∏Q R!
AddAndRegisterShell
ππ #
(
ππ# $
setupContext
ππ$ 0
)
ππ0 1
;
ππ1 2
}
∫∫ 
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
settings
ΩΩ !
in
ΩΩ" $
allSettings
ΩΩ% 0
)
ΩΩ0 1
{
ææ !
AddAndRegisterShell
øø #
(
øø# $
new
øø$ '
ShellContext
øø( 4
.
øø4 5
PlaceHolder
øø5 @
{
øøA B
Settings
øøC K
=
øøL M
settings
øøN V
}
øøW X
)
øøX Y
;
øøY Z
}
¿¿ 
;
¿¿ 
if
¬¬ 
(
¬¬ 
_logger
¬¬ 
.
¬¬ 
	IsEnabled
¬¬ !
(
¬¬! "
LogLevel
¬¬" *
.
¬¬* +
Information
¬¬+ 6
)
¬¬6 7
)
¬¬7 8
{
√√ 
_logger
ƒƒ 
.
ƒƒ 
LogInformation
ƒƒ &
(
ƒƒ& '
$str
ƒƒ' Q
)
ƒƒQ R
;
ƒƒR S
}
≈≈ 
}
∆∆ 	
private
ÀÀ 
Task
ÀÀ 
<
ÀÀ 
ShellContext
ÀÀ !
>
ÀÀ! "%
CreateShellContextAsync
ÀÀ# :
(
ÀÀ: ;
ShellSettings
ÀÀ; H
settings
ÀÀI Q
)
ÀÀQ R
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 
settings
ÕÕ 
.
ÕÕ 
State
ÕÕ 
==
ÕÕ !
TenantState
ÕÕ" -
.
ÕÕ- .
Uninitialized
ÕÕ. ;
)
ÕÕ; <
{
ŒŒ 
if
œœ 
(
œœ 
_logger
œœ 
.
œœ 
	IsEnabled
œœ %
(
œœ% &
LogLevel
œœ& .
.
œœ. /
Debug
œœ/ 4
)
œœ4 5
)
œœ5 6
{
–– 
_logger
—— 
.
—— 
LogDebug
—— $
(
——$ %
$str
——% ]
,
——] ^
settings
——_ g
.
——g h
Name
——h l
)
——l m
;
——m n
}
““ 
return
‘‘ "
_shellContextFactory
‘‘ +
.
‘‘+ ,%
CreateSetupContextAsync
‘‘, C
(
‘‘C D
settings
‘‘D L
)
‘‘L M
;
‘‘M N
}
’’ 
else
÷÷ 
if
÷÷ 
(
÷÷ 
settings
÷÷ 
.
÷÷ 
State
÷÷ #
==
÷÷$ &
TenantState
÷÷' 2
.
÷÷2 3
Disabled
÷÷3 ;
)
÷÷; <
{
◊◊ 
if
ÿÿ 
(
ÿÿ 
_logger
ÿÿ 
.
ÿÿ 
	IsEnabled
ÿÿ %
(
ÿÿ% &
LogLevel
ÿÿ& .
.
ÿÿ. /
Debug
ÿÿ/ 4
)
ÿÿ4 5
)
ÿÿ5 6
{
ŸŸ 
_logger
⁄⁄ 
.
⁄⁄ 
LogDebug
⁄⁄ $
(
⁄⁄$ %
$str
⁄⁄% `
,
⁄⁄` a
settings
⁄⁄b j
.
⁄⁄j k
Name
⁄⁄k o
)
⁄⁄o p
;
⁄⁄p q
}
€€ 
return
›› 
Task
›› 
.
›› 

FromResult
›› &
(
››& '
new
››' *
ShellContext
››+ 7
{
››8 9
Settings
››: B
=
››C D
settings
››E M
}
››N O
)
››O P
;
››P Q
}
ﬁﬁ 
else
ﬂﬂ 
if
ﬂﬂ 
(
ﬂﬂ 
settings
ﬂﬂ 
.
ﬂﬂ 
State
ﬂﬂ #
==
ﬂﬂ$ &
TenantState
ﬂﬂ' 2
.
ﬂﬂ2 3
Running
ﬂﬂ3 :
||
ﬂﬂ; =
settings
ﬂﬂ> F
.
ﬂﬂF G
State
ﬂﬂG L
==
ﬂﬂM O
TenantState
ﬂﬂP [
.
ﬂﬂ[ \
Initializing
ﬂﬂ\ h
)
ﬂﬂh i
{
‡‡ 
if
·· 
(
·· 
_logger
·· 
.
·· 
	IsEnabled
·· %
(
··% &
LogLevel
··& .
.
··. /
Debug
··/ 4
)
··4 5
)
··5 6
{
‚‚ 
_logger
„„ 
.
„„ 
LogDebug
„„ $
(
„„$ %
$str
„„% W
,
„„W X
settings
„„Y a
.
„„a b
Name
„„b f
)
„„f g
;
„„g h
}
‰‰ 
return
ÊÊ "
_shellContextFactory
ÊÊ +
.
ÊÊ+ ,%
CreateShellContextAsync
ÊÊ, C
(
ÊÊC D
settings
ÊÊD L
)
ÊÊL M
;
ÊÊM N
}
ÁÁ 
else
ËË 
{
ÈÈ 
throw
ÍÍ 
new
ÍÍ '
InvalidOperationException
ÍÍ 3
(
ÍÍ3 4
$str
ÍÍ4 Q
+
ÍÍR S
settings
ÍÍT \
.
ÍÍ\ ]
Name
ÍÍ] a
)
ÍÍa b
;
ÍÍb c
}
ÎÎ 
}
ÏÏ 	
private
ÒÒ 
Task
ÒÒ 
<
ÒÒ 
ShellContext
ÒÒ !
>
ÒÒ! "%
CreateSetupContextAsync
ÒÒ# :
(
ÒÒ: ;
ShellSettings
ÒÒ; H
defaultSettings
ÒÒI X
)
ÒÒX Y
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ 
_logger
ÛÛ 
.
ÛÛ 
	IsEnabled
ÛÛ !
(
ÛÛ! "
LogLevel
ÛÛ" *
.
ÛÛ* +
Debug
ÛÛ+ 0
)
ÛÛ0 1
)
ÛÛ1 2
{
ÙÙ 
_logger
ıı 
.
ıı 
LogDebug
ıı  
(
ıı  !
$str
ıı! I
)
ııI J
;
ııJ K
}
ˆˆ 
if
¯¯ 
(
¯¯ 
defaultSettings
¯¯ 
==
¯¯  "
null
¯¯# '
)
¯¯' (
{
˘˘ 
var
˚˚ 
shellSettings
˚˚ !
=
˚˚" ##
_shellSettingsManager
˚˚$ 9
.
˚˚9 :#
CreateDefaultSettings
˚˚: O
(
˚˚O P
)
˚˚P Q
;
˚˚Q R
shellSettings
¸¸ 
.
¸¸ 
Name
¸¸ "
=
¸¸# $
ShellHelper
¸¸% 0
.
¸¸0 1
DefaultShellName
¸¸1 A
;
¸¸A B
shellSettings
˝˝ 
.
˝˝ 
State
˝˝ #
=
˝˝$ %
TenantState
˝˝& 1
.
˝˝1 2
Uninitialized
˝˝2 ?
;
˝˝? @
defaultSettings
˛˛ 
=
˛˛  !
shellSettings
˛˛" /
;
˛˛/ 0
}
ˇˇ 
return
ÅÅ "
_shellContextFactory
ÅÅ '
.
ÅÅ' (%
CreateSetupContextAsync
ÅÅ( ?
(
ÅÅ? @
defaultSettings
ÅÅ@ O
)
ÅÅO P
;
ÅÅP Q
}
ÇÇ 	
private
áá 
void
áá !
AddAndRegisterShell
áá (
(
áá( )
ShellContext
áá) 5
context
áá6 =
)
áá= >
{
àà 	
if
ââ 
(
ââ 
_shellContexts
ââ 
.
ââ 
TryAdd
ââ %
(
ââ% &
context
ââ& -
.
ââ- .
Settings
ââ. 6
.
ââ6 7
Name
ââ7 ;
,
ââ; <
context
ââ= D
)
ââD E
)
ââE F
{
ää 
_shellSettings
ãã 
[
ãã 
context
ãã &
.
ãã& '
Settings
ãã' /
.
ãã/ 0
Name
ãã0 4
]
ãã4 5
=
ãã6 7
context
ãã8 ?
.
ãã? @
Settings
ãã@ H
;
ããH I
if
çç 
(
çç 
CanRegisterShell
çç $
(
çç$ %
context
çç% ,
)
çç, -
)
çç- .
{
éé #
RegisterShellSettings
èè )
(
èè) *
context
èè* 1
.
èè1 2
Settings
èè2 :
)
èè: ;
;
èè; <
}
êê 
}
ëë 
}
íí 	
private
óó 
bool
óó 
CanRegisterShell
óó %
(
óó% &
ShellContext
óó& 2
context
óó3 :
)
óó: ;
{
òò 	
if
ôô 
(
ôô 
!
ôô 
CanRegisterShell
ôô !
(
ôô! "
context
ôô" )
.
ôô) *
Settings
ôô* 2
)
ôô2 3
)
ôô3 4
{
öö 
if
õõ 
(
õõ 
_logger
õõ 
.
õõ 
	IsEnabled
õõ %
(
õõ% &
LogLevel
õõ& .
.
õõ. /
Debug
õõ/ 4
)
õõ4 5
)
õõ5 6
{
úú 
_logger
ùù 
.
ùù 
LogDebug
ùù $
(
ùù$ %
$str
ùù% d
,
ùùd e
context
ùùf m
.
ùùm n
Settings
ùùn v
.
ùùv w
Name
ùùw {
)
ùù{ |
;
ùù| }
}
ûû 
return
†† 
false
†† 
;
†† 
}
°° 
return
££ 
true
££ 
;
££ 
}
§§ 	
private
©© 
void
©© #
RegisterShellSettings
©© *
(
©©* +
ShellSettings
©©+ 8
settings
©©9 A
)
©©A B
{
™™ 	
if
´´ 
(
´´ 
_logger
´´ 
.
´´ 
	IsEnabled
´´ !
(
´´! "
LogLevel
´´" *
.
´´* +
Debug
´´+ 0
)
´´0 1
)
´´1 2
{
¨¨ 
_logger
≠≠ 
.
≠≠ 
LogDebug
≠≠  
(
≠≠  !
$str
≠≠! V
,
≠≠V W
settings
≠≠X `
.
≠≠` a
Name
≠≠a e
)
≠≠e f
;
≠≠f g
}
ÆÆ  
_runningShellTable
∞∞ 
.
∞∞ 
Add
∞∞ "
(
∞∞" #
settings
∞∞# +
)
∞∞+ ,
;
∞∞, -
}
±± 	
private
∂∂ 
bool
∂∂ 
CanCreateShell
∂∂ #
(
∂∂# $
ShellSettings
∂∂$ 1
shellSettings
∂∂2 ?
)
∂∂? @
{
∑∑ 	
return
∏∏ 
shellSettings
ππ 
.
ππ 
State
ππ #
==
ππ$ &
TenantState
ππ' 2
.
ππ2 3
Running
ππ3 :
||
ππ; =
shellSettings
∫∫ 
.
∫∫ 
State
∫∫ #
==
∫∫$ &
TenantState
∫∫' 2
.
∫∫2 3
Uninitialized
∫∫3 @
||
∫∫A C
shellSettings
ªª 
.
ªª 
State
ªª #
==
ªª$ &
TenantState
ªª' 2
.
ªª2 3
Initializing
ªª3 ?
||
ªª@ B
shellSettings
ºº 
.
ºº 
State
ºº #
==
ºº$ &
TenantState
ºº' 2
.
ºº2 3
Disabled
ºº3 ;
;
ºº; <
}
ΩΩ 	
private
¬¬ 
bool
¬¬ 
CanRegisterShell
¬¬ %
(
¬¬% &
ShellSettings
¬¬& 3
shellSettings
¬¬4 A
)
¬¬A B
{
√√ 	
return
ƒƒ 
shellSettings
≈≈ 
.
≈≈ 
State
≈≈ #
==
≈≈$ &
TenantState
≈≈' 2
.
≈≈2 3
Running
≈≈3 :
||
≈≈; =
shellSettings
∆∆ 
.
∆∆ 
State
∆∆ #
==
∆∆$ &
TenantState
∆∆' 2
.
∆∆2 3
Uninitialized
∆∆3 @
||
∆∆A C
shellSettings
«« 
.
«« 
State
«« #
==
««$ &
TenantState
««' 2
.
««2 3
Initializing
««3 ?
;
««? @
}
»» 	
private
œœ 
bool
œœ 
CanReleaseShell
œœ $
(
œœ$ %
ShellSettings
œœ% 2
settings
œœ3 ;
)
œœ; <
{
–– 	
return
—— 
settings
—— 
.
—— 
State
—— !
!=
——" $
TenantState
——% 0
.
——0 1
Disabled
——1 9
||
——: <
_shellContexts
——= K
.
——K L
TryGetValue
——L W
(
——W X
settings
——X `
.
——` a
Name
——a e
,
——e f
out
——g j
var
——k n
value
——o t
)
——t u
&&
——v x
value
——y ~
.
——~ 
ActiveScopes—— ã
==——å é
$num——è ê
;——ê ë
}
““ 	
public
‘‘ 
void
‘‘ 
Dispose
‘‘ 
(
‘‘ 
)
‘‘ 
{
’’ 	
foreach
÷÷ 
(
÷÷ 
var
÷÷ 
shell
÷÷ 
in
÷÷ !
ListShellContexts
÷÷" 3
(
÷÷3 4
)
÷÷4 5
)
÷÷5 6
{
◊◊ 
shell
ÿÿ 
.
ÿÿ 
Dispose
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ  
}
ŸŸ 
}
⁄⁄ 	
}
€€ 
}‹‹ ¯
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellOptionsSetup.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class 
ShellOptionsSetup "
:# $
IConfigureOptions% 6
<6 7
ShellOptions7 C
>C D
{ 
private 
const 
string 
OrchardAppData +
=, -
$str. @
;@ A
private 
const 
string 
DefaultAppDataPath /
=0 1
$str2 <
;< =
private 
const 
string 
DefaultSitesPath -
=. /
$str0 7
;7 8
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
public 
ShellOptionsSetup  
(  !
IHostEnvironment! 1
hostingEnvironment2 D
)D E
{ 	
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
} 	
public 
void 
	Configure 
( 
ShellOptions *
options+ 2
)2 3
{ 	
var 
appData 
= 
System  
.  !
Environment! ,
., -"
GetEnvironmentVariable- C
(C D
OrchardAppDataD R
)R S
;S T
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
appData& -
)- .
). /
{ 
options 
. %
ShellsApplicationDataPath 1
=2 3
Path4 8
.8 9
Combine9 @
(@ A
_hostingEnvironmentA T
.T U
ContentRootPathU d
,d e
appDataf m
)m n
;n o
} 
else   
{!! 
options"" 
."" %
ShellsApplicationDataPath"" 1
=""2 3
Path""4 8
.""8 9
Combine""9 @
(""@ A
_hostingEnvironment""A T
.""T U
ContentRootPath""U d
,""d e
DefaultAppDataPath""f x
)""x y
;""y z
}## 
options%% 
.%% 
ShellsContainerName%% '
=%%( )
DefaultSitesPath%%* :
;%%: ;
}&& 	
}'' 
}(( ‹≥
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellSettingsManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class  
ShellSettingsManager %
:& '!
IShellSettingsManager( =
{ 
private 
readonly 
IConfiguration '%
_applicationConfiguration( A
;A B
private 
readonly '
IShellsConfigurationSources 4!
_tenantsConfigSources5 J
;J K
private 
readonly &
IShellConfigurationSources 3 
_tenantConfigSources4 H
;H I
private 
readonly "
IShellsSettingsSources /
_settingsSources0 @
;@ A
private 
IConfiguration 
_configuration -
;- .
private 
IEnumerable 
< 
string "
>" #
_configuredTenants$ 6
;6 7
private 
readonly 
SemaphoreSlim &

_semaphore' 1
=2 3
new4 7
SemaphoreSlim8 E
(E F
$numF G
)G H
;H I
private 
Func 
< 
string 
, 
Task !
<! "!
IConfigurationBuilder" 7
>7 8
>8 9'
_tenantConfigBuilderFactory: U
;U V
private 
readonly 
SemaphoreSlim &"
_tenantConfigSemaphore' =
=> ?
new@ C
SemaphoreSlimD Q
(Q R
$numR S
)S T
;T U
public  
ShellSettingsManager #
(# $
IConfiguration $
applicationConfiguration 3
,3 4'
IShellsConfigurationSources ' 
tenantsConfigSources( <
,< =&
IShellConfigurationSources   &
tenantConfigSources  ' :
,  : ;"
IShellsSettingsSources!! "
settingsSources!!# 2
)!!2 3
{"" 	%
_applicationConfiguration## %
=##& '$
applicationConfiguration##( @
;##@ A!
_tenantsConfigSources$$ !
=$$" # 
tenantsConfigSources$$$ 8
;$$8 9 
_tenantConfigSources%%  
=%%! "
tenantConfigSources%%# 6
;%%6 7
_settingsSources&& 
=&& 
settingsSources&& .
;&&. /
}'' 	
public)) 
ShellSettings)) !
CreateDefaultSettings)) 2
())2 3
)))3 4
{** 	
return++ 
new++ 
ShellSettings++ $
(,, 
new-- 
ShellConfiguration-- &
(--& '
_configuration--' 5
)--5 6
,--6 7
new.. 
ShellConfiguration.. &
(..& '
_configuration..' 5
)..5 6
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IEnumerable22 %
<22% &
ShellSettings22& 3
>223 4
>224 5
LoadSettingsAsync226 G
(22G H
)22H I
{33 	
await44 

_semaphore44 
.44 
	WaitAsync44 &
(44& '
)44' (
;44( )
try55 
{66 
await77 $
EnsureConfigurationAsync77 .
(77. /
)77/ 0
;770 1
var99 
tenantsSettings99 #
=99$ %
(99& '
await99' ,
new99- 0 
ConfigurationBuilder991 E
(99E F
)99F G
.:: 
AddSourcesAsync:: $
(::$ %
_settingsSources::% 5
)::5 6
)::6 7
.;; 
Build;; 
(;; 
);; 
;;; 
var== 
tenants== 
=== 
tenantsSettings== -
.==- .
GetChildren==. 9
(==9 :
)==: ;
.==; <
Select==< B
(==B C
section==C J
=>==K M
section==N U
.==U V
Key==V Y
)==Y Z
;==Z [
var>> 

allTenants>> 
=>>  
_configuredTenants>>! 3
.>>3 4
Concat>>4 :
(>>: ;
tenants>>; B
)>>B C
.>>C D
Distinct>>D L
(>>L M
)>>M N
.>>N O
ToArray>>O V
(>>V W
)>>W X
;>>X Y
var@@ 
allSettings@@ 
=@@  !
new@@" %
List@@& *
<@@* +
ShellSettings@@+ 8
>@@8 9
(@@9 :
)@@: ;
;@@; <
foreachBB 
(BB 
varBB 
tenantBB #
inBB$ &

allTenantsBB' 1
)BB1 2
{CC 
varDD 
tenantSettingsDD &
=DD' (
newDD) , 
ConfigurationBuilderDD- A
(DDA B
)DDB C
.EE 
AddConfigurationEE )
(EE) *
_configurationEE* 8
)EE8 9
.FF 
AddConfigurationFF )
(FF) *
_configurationFF* 8
.FF8 9

GetSectionFF9 C
(FFC D
tenantFFD J
)FFJ K
)FFK L
.GG 
AddConfigurationGG )
(GG) *
tenantsSettingsGG* 9
.GG9 :

GetSectionGG: D
(GGD E
tenantGGE K
)GGK L
)GGL M
.HH 
BuildHH 
(HH 
)HH  
;HH  !
varJJ 
settingsJJ  
=JJ! "
newJJ# &
ShellConfigurationJJ' 9
(JJ9 :
tenantSettingsJJ: H
)JJH I
;JJI J
varKK 
configurationKK %
=KK& '
newKK( +
ShellConfigurationKK, >
(KK> ?
tenantKK? E
,KKE F'
_tenantConfigBuilderFactoryKKG b
)KKb c
;KKc d
varMM 
shellSettingsMM %
=MM& '
newMM( +
ShellSettingsMM, 9
(MM9 :
settingsMM: B
,MMB C
configurationMMD Q
)MMQ R
{NN 
NameOO 
=OO 
tenantOO %
,OO% &
}PP 
;PP 
allSettingsRR 
.RR  
AddRR  #
(RR# $
shellSettingsRR$ 1
)RR1 2
;RR2 3
}SS 
;SS 
returnUU 
allSettingsUU "
;UU" #
}VV 
finallyWW 
{XX 

_semaphoreYY 
.YY 
ReleaseYY "
(YY" #
)YY# $
;YY$ %
}ZZ 
}[[ 	
public]] 
async]] 
Task]] 
<]] 
IEnumerable]] %
<]]% &
string]]& ,
>]], -
>]]- ."
LoadSettingsNamesAsync]]/ E
(]]E F
)]]F G
{^^ 	
await__ 

_semaphore__ 
.__ 
	WaitAsync__ &
(__& '
)__' (
;__( )
try`` 
{aa 
awaitbb $
EnsureConfigurationAsyncbb .
(bb. /
)bb/ 0
;bb0 1
vardd 
tenantsSettingsdd #
=dd$ %
(dd& '
awaitdd' ,
newdd- 0 
ConfigurationBuilderdd1 E
(ddE F
)ddF G
.ee 
AddSourcesAsyncee $
(ee$ %
_settingsSourcesee% 5
)ee5 6
)ee6 7
.ff 
Buildff 
(ff 
)ff 
;ff 
varhh 
tenantshh 
=hh 
tenantsSettingshh -
.hh- .
GetChildrenhh. 9
(hh9 :
)hh: ;
.hh; <
Selecthh< B
(hhB C
sectionhhC J
=>hhK M
sectionhhN U
.hhU V
KeyhhV Y
)hhY Z
;hhZ [
returnii 
_configuredTenantsii )
.ii) *
Concatii* 0
(ii0 1
tenantsii1 8
)ii8 9
.ii9 :
Distinctii: B
(iiB C
)iiC D
.iiD E
ToArrayiiE L
(iiL M
)iiM N
;iiN O
}jj 
finallykk 
{ll 

_semaphoremm 
.mm 
Releasemm "
(mm" #
)mm# $
;mm$ %
}nn 
}oo 	
publicqq 
asyncqq 
Taskqq 
<qq 
ShellSettingsqq '
>qq' (
LoadSettingsAsyncqq) :
(qq: ;
stringqq; A
tenantqqB H
)qqH I
{rr 	
awaitss 

_semaphoress 
.ss 
	WaitAsyncss &
(ss& '
)ss' (
;ss( )
trytt 
{uu 
awaitvv $
EnsureConfigurationAsyncvv .
(vv. /
)vv/ 0
;vv0 1
varxx 
tenantsSettingsxx #
=xx$ %
(xx& '
awaitxx' ,
newxx- 0 
ConfigurationBuilderxx1 E
(xxE F
)xxF G
.yy 
AddSourcesAsyncyy $
(yy$ %
_settingsSourcesyy% 5
)yy5 6
)yy6 7
.zz 
Buildzz 
(zz 
)zz 
;zz 
var|| 
tenantSettings|| "
=||# $
new||% ( 
ConfigurationBuilder||) =
(||= >
)||> ?
.}} 
AddConfiguration}} %
(}}% &
_configuration}}& 4
)}}4 5
.~~ 
AddConfiguration~~ %
(~~% &
_configuration~~& 4
.~~4 5

GetSection~~5 ?
(~~? @
tenant~~@ F
)~~F G
)~~G H
. 
AddConfiguration %
(% &
tenantsSettings& 5
.5 6

GetSection6 @
(@ A
tenantA G
)G H
)H I
.
ÄÄ 
Build
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
var
ÇÇ 
settings
ÇÇ 
=
ÇÇ 
new
ÇÇ " 
ShellConfiguration
ÇÇ# 5
(
ÇÇ5 6
tenantSettings
ÇÇ6 D
)
ÇÇD E
;
ÇÇE F
var
ÉÉ 
configuration
ÉÉ !
=
ÉÉ" #
new
ÉÉ$ ' 
ShellConfiguration
ÉÉ( :
(
ÉÉ: ;
tenant
ÉÉ; A
,
ÉÉA B)
_tenantConfigBuilderFactory
ÉÉC ^
)
ÉÉ^ _
;
ÉÉ_ `
return
ÖÖ 
new
ÖÖ 
ShellSettings
ÖÖ (
(
ÖÖ( )
settings
ÖÖ) 1
,
ÖÖ1 2
configuration
ÖÖ3 @
)
ÖÖ@ A
{
ÜÜ 
Name
áá 
=
áá 
tenant
áá !
,
áá! "
}
àà 
;
àà 
}
ââ 
finally
ää 
{
ãã 

_semaphore
åå 
.
åå 
Release
åå "
(
åå" #
)
åå# $
;
åå$ %
}
çç 
}
éé 	
public
êê 
async
êê 
Task
êê 
SaveSettingsAsync
êê +
(
êê+ ,
ShellSettings
êê, 9
settings
êê: B
)
êêB C
{
ëë 	
await
íí 

_semaphore
íí 
.
íí 
	WaitAsync
íí &
(
íí& '
)
íí' (
;
íí( )
try
ìì 
{
îî 
await
ïï &
EnsureConfigurationAsync
ïï .
(
ïï. /
)
ïï/ 0
;
ïï0 1
if
óó 
(
óó 
settings
óó 
==
óó 
null
óó  $
)
óó$ %
{
òò 
throw
ôô 
new
ôô #
ArgumentNullException
ôô 3
(
ôô3 4
nameof
ôô4 :
(
ôô: ;
settings
ôô; C
)
ôôC D
)
ôôD E
;
ôôE F
}
öö 
var
úú 
configuration
úú !
=
úú" #
new
úú$ '"
ConfigurationBuilder
úú( <
(
úú< =
)
úú= >
.
ùù 
AddConfiguration
ùù %
(
ùù% &
_configuration
ùù& 4
)
ùù4 5
.
ûû 
AddConfiguration
ûû %
(
ûû% &
_configuration
ûû& 4
.
ûû4 5

GetSection
ûû5 ?
(
ûû? @
settings
ûû@ H
.
ûûH I
Name
ûûI M
)
ûûM N
)
ûûN O
.
üü 
Build
üü 
(
üü 
)
üü 
;
üü 
var
°° 
shellSettings
°° !
=
°°" #
new
°°$ '
ShellSettings
°°( 5
(
°°5 6
)
°°6 7
{
¢¢ 
Name
££ 
=
££ 
settings
££ #
.
££# $
Name
££$ (
}
§§ 
;
§§ 
configuration
¶¶ 
.
¶¶ 
Bind
¶¶ "
(
¶¶" #
shellSettings
¶¶# 0
)
¶¶0 1
;
¶¶1 2
var
®® 
configSettings
®® "
=
®®# $
JObject
®®% ,
.
®®, -

FromObject
®®- 7
(
®®7 8
shellSettings
®®8 E
)
®®E F
;
®®F G
var
©© 
tenantSettings
©© "
=
©©# $
JObject
©©% ,
.
©©, -

FromObject
©©- 7
(
©©7 8
settings
©©8 @
)
©©@ A
;
©©A B
foreach
´´ 
(
´´ 
var
´´ 
property
´´ %
in
´´& (
configSettings
´´) 7
)
´´7 8
{
¨¨ 
var
≠≠ 
tenantValue
≠≠ #
=
≠≠$ %
tenantSettings
≠≠& 4
.
≠≠4 5
Value
≠≠5 :
<
≠≠: ;
string
≠≠; A
>
≠≠A B
(
≠≠B C
property
≠≠C K
.
≠≠K L
Key
≠≠L O
)
≠≠O P
;
≠≠P Q
var
ÆÆ 
configValue
ÆÆ #
=
ÆÆ$ %
configSettings
ÆÆ& 4
.
ÆÆ4 5
Value
ÆÆ5 :
<
ÆÆ: ;
string
ÆÆ; A
>
ÆÆA B
(
ÆÆB C
property
ÆÆC K
.
ÆÆK L
Key
ÆÆL O
)
ÆÆO P
;
ÆÆP Q
if
∞∞ 
(
∞∞ 
tenantValue
∞∞ #
!=
∞∞$ &
configValue
∞∞' 2
)
∞∞2 3
{
±± 
tenantSettings
≤≤ &
[
≤≤& '
property
≤≤' /
.
≤≤/ 0
Key
≤≤0 3
]
≤≤3 4
=
≤≤5 6
tenantValue
≤≤7 B
;
≤≤B C
}
≥≥ 
else
¥¥ 
{
µµ 
tenantSettings
∂∂ &
[
∂∂& '
property
∂∂' /
.
∂∂/ 0
Key
∂∂0 3
]
∂∂3 4
=
∂∂5 6
null
∂∂7 ;
;
∂∂; <
}
∑∑ 
}
∏∏ 
tenantSettings
∫∫ 
.
∫∫ 
Remove
∫∫ %
(
∫∫% &
$str
∫∫& ,
)
∫∫, -
;
∫∫- .
await
ºº 
_settingsSources
ºº &
.
ºº& '
	SaveAsync
ºº' 0
(
ºº0 1
settings
ºº1 9
.
ºº9 :
Name
ºº: >
,
ºº> ?
tenantSettings
ºº@ N
.
ººN O
ToObject
ººO W
<
ººW X

Dictionary
ººX b
<
ººb c
string
ººc i
,
ººi j
string
ººk q
>
ººq r
>
ººr s
(
ººs t
)
ººt u
)
ººu v
;
ººv w
var
ææ 
tenantConfig
ææ  
=
ææ! "
new
ææ# &
JObject
ææ' .
(
ææ. /
)
ææ/ 0
;
ææ0 1
var
¿¿ 
sections
¿¿ 
=
¿¿ 
settings
¿¿ '
.
¿¿' ( 
ShellConfiguration
¿¿( :
.
¿¿: ;
GetChildren
¿¿; F
(
¿¿F G
)
¿¿G H
.
¡¡ 
Where
¡¡ 
(
¡¡ 
s
¡¡ 
=>
¡¡ 
!
¡¡  !
s
¡¡! "
.
¡¡" #
GetChildren
¡¡# .
(
¡¡. /
)
¡¡/ 0
.
¡¡0 1
Any
¡¡1 4
(
¡¡4 5
)
¡¡5 6
)
¡¡6 7
.
¬¬ 
ToArray
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
foreach
ƒƒ 
(
ƒƒ 
var
ƒƒ 
section
ƒƒ $
in
ƒƒ% '
sections
ƒƒ( 0
)
ƒƒ0 1
{
≈≈ 
if
∆∆ 
(
∆∆ 
settings
∆∆  
[
∆∆  !
section
∆∆! (
.
∆∆( )
Key
∆∆) ,
]
∆∆, -
!=
∆∆. 0
configuration
∆∆1 >
[
∆∆> ?
section
∆∆? F
.
∆∆F G
Key
∆∆G J
]
∆∆J K
)
∆∆K L
{
«« 
tenantConfig
»» $
[
»»$ %
section
»»% ,
.
»», -
Key
»»- 0
]
»»0 1
=
»»2 3
settings
»»4 <
[
»»< =
section
»»= D
.
»»D E
Key
»»E H
]
»»H I
;
»»I J
}
…… 
else
   
{
ÀÀ 
tenantConfig
ÃÃ $
[
ÃÃ$ %
section
ÃÃ% ,
.
ÃÃ, -
Key
ÃÃ- 0
]
ÃÃ0 1
=
ÃÃ2 3
null
ÃÃ4 8
;
ÃÃ8 9
}
ÕÕ 
}
ŒŒ 
tenantConfig
–– 
.
–– 
Remove
–– #
(
––# $
$str
––$ *
)
––* +
;
––+ ,
await
““ $
_tenantConfigSemaphore
““ ,
.
““, -
	WaitAsync
““- 6
(
““6 7
)
““7 8
;
““8 9
try
”” 
{
‘‘ 
await
’’ "
_tenantConfigSources
’’ .
.
’’. /
	SaveAsync
’’/ 8
(
’’8 9
settings
’’9 A
.
’’A B
Name
’’B F
,
’’F G
tenantConfig
’’H T
.
’’T U
ToObject
’’U ]
<
’’] ^

Dictionary
’’^ h
<
’’h i
string
’’i o
,
’’o p
string
’’q w
>
’’w x
>
’’x y
(
’’y z
)
’’z {
)
’’{ |
;
’’| }
}
÷÷ 
finally
◊◊ 
{
ÿÿ $
_tenantConfigSemaphore
ŸŸ *
.
ŸŸ* +
Release
ŸŸ+ 2
(
ŸŸ2 3
)
ŸŸ3 4
;
ŸŸ4 5
}
⁄⁄ 
}
€€ 
finally
‹‹ 
{
›› 

_semaphore
ﬁﬁ 
.
ﬁﬁ 
Release
ﬁﬁ "
(
ﬁﬁ" #
)
ﬁﬁ# $
;
ﬁﬁ$ %
}
ﬂﬂ 
}
‡‡ 	
private
‚‚ 
async
‚‚ 
Task
‚‚ &
EnsureConfigurationAsync
‚‚ 3
(
‚‚3 4
)
‚‚4 5
{
„„ 	
if
‰‰ 
(
‰‰ 
_configuration
‰‰ 
!=
‰‰ !
null
‰‰" &
)
‰‰& '
{
ÂÂ 
return
ÊÊ 
;
ÊÊ 
}
ÁÁ 
var
ÈÈ 
lastProviders
ÈÈ 
=
ÈÈ 
(
ÈÈ  !'
_applicationConfiguration
ÈÈ! :
as
ÈÈ; = 
IConfigurationRoot
ÈÈ> P
)
ÈÈP Q
?
ÈÈQ R
.
ÈÈR S
	Providers
ÈÈS \
.
ÍÍ 
Where
ÍÍ 
(
ÍÍ 
p
ÍÍ 
=>
ÍÍ 
p
ÍÍ 
is
ÍÍ  7
)EnvironmentVariablesConfigurationProvider
ÍÍ! J
||
ÍÍK M
p
ÎÎ 
is
ÎÎ  .
 CommandLineConfigurationProvider
ÎÎ! A
)
ÎÎA B
.
ÏÏ 
ToArray
ÏÏ 
(
ÏÏ 
)
ÏÏ 
;
ÏÏ 
var
ÓÓ "
configurationBuilder
ÓÓ $
=
ÓÓ% &
await
ÓÓ' ,
new
ÓÓ- 0"
ConfigurationBuilder
ÓÓ1 E
(
ÓÓE F
)
ÓÓF G
.
ÔÔ 
AddConfiguration
ÔÔ !
(
ÔÔ! "'
_applicationConfiguration
ÔÔ" ;
)
ÔÔ; <
.
 
AddSourcesAsync
  
(
  !#
_tenantsConfigSources
! 6
)
6 7
;
7 8
if
ÚÚ 
(
ÚÚ 
lastProviders
ÚÚ 
.
ÚÚ 
Count
ÚÚ #
(
ÚÚ# $
)
ÚÚ$ %
>
ÚÚ& '
$num
ÚÚ( )
)
ÚÚ) *
{
ÛÛ "
configurationBuilder
ÙÙ $
.
ÙÙ$ %
AddConfiguration
ÙÙ% 5
(
ÙÙ5 6
new
ÙÙ6 9
ConfigurationRoot
ÙÙ: K
(
ÙÙK L
lastProviders
ÙÙL Y
)
ÙÙY Z
)
ÙÙZ [
;
ÙÙ[ \
}
ıı 
var
˜˜ 
configuration
˜˜ 
=
˜˜ "
configurationBuilder
˜˜  4
.
˜˜4 5
Build
˜˜5 :
(
˜˜: ;
)
˜˜; <
.
˜˜< =

GetSection
˜˜= G
(
˜˜G H
$str
˜˜H U
)
˜˜U V
;
˜˜V W 
_configuredTenants
˘˘ 
=
˘˘  
configuration
˘˘! .
.
˘˘. /
GetChildren
˘˘/ :
(
˘˘: ;
)
˘˘; <
.
˙˙ 
Where
˙˙ 
(
˙˙ 
section
˙˙ 
=>
˙˙ !
Enum
˙˙" &
.
˙˙& '
TryParse
˙˙' /
<
˙˙/ 0
TenantState
˙˙0 ;
>
˙˙; <
(
˙˙< =
section
˙˙= D
[
˙˙D E
$str
˙˙E L
]
˙˙L M
,
˙˙M N

ignoreCase
˙˙O Y
:
˙˙Y Z
true
˙˙[ _
,
˙˙_ `
out
˙˙a d
_
˙˙e f
)
˙˙f g
)
˙˙g h
.
˚˚ 
Select
˚˚ 
(
˚˚ 
section
˚˚ 
=>
˚˚  "
section
˚˚# *
.
˚˚* +
Key
˚˚+ .
)
˚˚. /
.
¸¸ 
Distinct
¸¸ 
(
¸¸ 
)
¸¸ 
.
˝˝ 
ToArray
˝˝ 
(
˝˝ 
)
˝˝ 
;
˝˝ )
_tenantConfigBuilderFactory
ˇˇ '
=
ˇˇ( )
async
ˇˇ* /
(
ˇˇ0 1
tenant
ˇˇ1 7
)
ˇˇ7 8
=>
ˇˇ9 ;
{
ÄÄ 
await
ÅÅ $
_tenantConfigSemaphore
ÅÅ ,
.
ÅÅ, -
	WaitAsync
ÅÅ- 6
(
ÅÅ6 7
)
ÅÅ7 8
;
ÅÅ8 9
try
ÇÇ 
{
ÉÉ 
var
ÑÑ 
builder
ÑÑ 
=
ÑÑ  !
new
ÑÑ" %"
ConfigurationBuilder
ÑÑ& :
(
ÑÑ: ;
)
ÑÑ; <
.
ÑÑ< =
AddConfiguration
ÑÑ= M
(
ÑÑM N
_configuration
ÑÑN \
)
ÑÑ\ ]
;
ÑÑ] ^
builder
ÖÖ 
.
ÖÖ 
AddConfiguration
ÖÖ ,
(
ÖÖ, -
configuration
ÖÖ- :
.
ÖÖ: ;

GetSection
ÖÖ; E
(
ÖÖE F
tenant
ÖÖF L
)
ÖÖL M
)
ÖÖM N
;
ÖÖN O
return
ÜÜ 
await
ÜÜ  
builder
ÜÜ! (
.
ÜÜ( )
AddSourcesAsync
ÜÜ) 8
(
ÜÜ8 9
tenant
ÜÜ9 ?
,
ÜÜ? @"
_tenantConfigSources
ÜÜA U
)
ÜÜU V
;
ÜÜV W
}
áá 
finally
àà 
{
ââ $
_tenantConfigSemaphore
ää *
.
ää* +
Release
ää+ 2
(
ää2 3
)
ää3 4
;
ää4 5
}
ãã 
}
åå 
;
åå 
_configuration
éé 
=
éé 
configuration
éé *
;
éé* +
}
èè 	
}
êê 
}ëë ˝=
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellStateCoordinator.cs
	namespace		 	
OrchardCore		
 
.		 
Environment		 !
.		! "
Shell		" '
{

 
public 

class !
ShellStateCoordinator &
:' (/
#IShellDescriptorManagerEventHandler) L
{ 
private 
readonly 
IShellStateManager +
_stateManager, 9
;9 :
private 
readonly 
ILogger  
_logger! (
;( )
public !
ShellStateCoordinator $
($ %
IShellStateManager 
stateManager +
,+ ,
ILogger 
< !
ShellStateCoordinator )
>) *
logger+ 1
)1 2
{ 	
_stateManager 
= 
stateManager (
;( )
_logger 
= 
logger 
; 
} 	
async 
Task /
#IShellDescriptorManagerEventHandler 6
.6 7
ChangedAsync7 C
(C D
ShellDescriptorD S

descriptorT ^
,^ _
ShellSettings` m
settingsn v
)v w
{ 	
var 

shellState 
= 
await "
_stateManager# 0
.0 1
GetShellStateAsync1 C
(C D
)D E
;E F
foreach 
( 
var 
feature  
in! #

descriptor$ .
.. /
Features/ 7
)7 8
{ 
var 
	featureId 
= 
feature  '
.' (
Id( *
;* +
var 
featureState  
=! "

shellState# -
.- .
Features. 6
.6 7
SingleOrDefault7 F
(F G
fG H
=>I K
fL M
.M N
IdN P
==Q S
	featureIdT ]
)] ^
;^ _
if   
(   
featureState    
==  ! #
null  $ (
)  ( )
{!! 
featureState""  
=""! "
new""# &
ShellFeatureState""' 8
{## 
Id$$ 
=$$ 
	featureId$$ &
}%% 
;%% 
}&& 
if'' 
('' 
!'' 
featureState'' !
.''! "
IsInstalled''" -
)''- .
{(( 
await)) 
_stateManager)) '
.))' (%
UpdateInstalledStateAsync))( A
())A B
featureState))B N
,))N O
ShellFeatureState))P a
.))a b
State))b g
.))g h
Rising))h n
)))n o
;))o p
}** 
if++ 
(++ 
!++ 
featureState++ !
.++! "
	IsEnabled++" +
)+++ ,
{,, 
await-- 
_stateManager-- '
.--' (#
UpdateEnabledStateAsync--( ?
(--? @
featureState--@ L
,--L M
ShellFeatureState--N _
.--_ `
State--` e
.--e f
Rising--f l
)--l m
;--m n
}.. 
}// 
foreach00 
(00 
var00 
featureState00 %
in00& (

shellState00) 3
.003 4
Features004 <
)00< =
{11 
var22 
	featureId22 
=22 
featureState22  ,
.22, -
Id22- /
;22/ 0
if33 
(33 

descriptor33 
.33 
Features33 '
.33' (
Any33( +
(33+ ,
f33, -
=>33. 0
f331 2
.332 3
Id333 5
==336 8
	featureId339 B
)33B C
)33C D
{44 
continue55 
;55 
}66 
if77 
(77 
!77 
featureState77 !
.77! "

IsDisabled77" ,
)77, -
{88 
await99 
_stateManager99 '
.99' (#
UpdateEnabledStateAsync99( ?
(99? @
featureState99@ L
,99L M
ShellFeatureState99N _
.99_ `
State99` e
.99e f
Falling99f m
)99m n
;99n o
}:: 
};; $
FireApplyChangesIfNeeded== $
(==$ %
)==% &
;==& '
}>> 	
private@@ 
void@@ $
FireApplyChangesIfNeeded@@ -
(@@- .
)@@. /
{AA 	

ShellScopeBB 
.BB 
AddDeferredTaskBB &
(BB& '
asyncBB' ,
scopeBB- 2
=>BB3 5
{CC 
varDD 
stateManagerDD  
=DD! "
scopeDD# (
.DD( )
ServiceProviderDD) 8
.DD8 9
GetRequiredServiceDD9 K
<DDK L
IShellStateManagerDDL ^
>DD^ _
(DD_ `
)DD` a
;DDa b
varEE 
shellStateUpdaterEE %
=EE& '
scopeEE( -
.EE- .
ServiceProviderEE. =
.EE= >
GetRequiredServiceEE> P
<EEP Q
IShellStateUpdaterEEQ c
>EEc d
(EEd e
)EEe f
;EEf g
varFF 

shellStateFF 
=FF  
awaitFF! &
stateManagerFF' 3
.FF3 4
GetShellStateAsyncFF4 F
(FFF G
)FFG H
;FFH I
whileHH 
(HH 

shellStateHH !
.HH! "
FeaturesHH" *
.HH* +
AnyHH+ .
(HH. /
FeatureIsChangingHH/ @
)HH@ A
)HHA B
{II 
ifJJ 
(JJ 
_loggerJJ 
.JJ  
	IsEnabledJJ  )
(JJ) *
LogLevelJJ* 2
.JJ2 3
InformationJJ3 >
)JJ> ?
)JJ? @
{KK 
_loggerLL 
.LL  
LogInformationLL  .
(LL. /
$strLL/ m
,LLm n
scopeLLo t
.LLt u
ShellContext	LLu Å
.
LLÅ Ç
Settings
LLÇ ä
.
LLä ã
Name
LLã è
)
LLè ê
;
LLê ë
}MM 
awaitOO 
shellStateUpdaterOO +
.OO+ ,
ApplyChangesOO, 8
(OO8 9
)OO9 :
;OO: ;
}PP 
}QQ 
)QQ 
;QQ 
}RR 	
privateTT 
staticTT 
boolTT 
FeatureIsChangingTT -
(TT- .
ShellFeatureStateTT. ?
shellFeatureStateTT@ Q
)TTQ R
{UU 	
ifVV 
(VV 
shellFeatureStateVV !
.VV! "
EnableStateVV" -
==VV. 0
ShellFeatureStateVV1 B
.VVB C
StateVVC H
.VVH I
RisingVVI O
||VVP R
shellFeatureStateWW !
.WW! "
EnableStateWW" -
==WW. 0
ShellFeatureStateWW1 B
.WWB C
StateWWC H
.WWH I
FallingWWI P
)WWP Q
{XX 
returnYY 
trueYY 
;YY 
}ZZ 
if[[ 
([[ 
shellFeatureState[[ !
.[[! "
InstallState[[" .
==[[/ 1
ShellFeatureState[[2 C
.[[C D
State[[D I
.[[I J
Rising[[J P
||[[Q S
shellFeatureState\\ !
.\\! "
InstallState\\" .
==\\/ 1
ShellFeatureState\\2 C
.\\C D
State\\D I
.\\I J
Falling\\J Q
)\\Q R
{]] 
return^^ 
true^^ 
;^^ 
}__ 
returnaa 
falseaa 
;aa 
}bb 	
}cc 
}dd ®~
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellStateUpdater.cs
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
Shell

" '
{ 
public 

	interface 
IShellStateUpdater '
{ 
Task 
ApplyChanges 
( 
) 
; 
} 
public 

class 
ShellStateUpdater "
:# $
IShellStateUpdater% 7
{ 
private 
readonly 
ShellSettings &
	_settings' 0
;0 1
private 
readonly 
IShellStateManager +
_stateManager, 9
;9 :
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
IEnumerable $
<$ % 
IFeatureEventHandler% 9
>9 :!
_featureEventHandlers; P
;P Q
private 
readonly 
ILogger  
_logger! (
;( )
public 
ShellStateUpdater  
(  !
ShellSettings 
settings "
," #
IShellStateManager 
stateManager +
,+ ,
IExtensionManager 
extensionManager .
,. /
IEnumerable 
<  
IFeatureEventHandler ,
>, - 
featureEventHandlers. B
,B C
ILogger 
< 
ShellStateUpdater %
>% &
logger' -
)- .
{ 	
	_settings   
=   
settings    
;    !
_stateManager!! 
=!! 
stateManager!! (
;!!( )
_extensionManager"" 
="" 
extensionManager""  0
;""0 1!
_featureEventHandlers## !
=##" # 
featureEventHandlers##$ 8
;##8 9
_logger$$ 
=$$ 
logger$$ 
;$$ 
}%% 	
public'' 
async'' 
Task'' 
ApplyChanges'' &
(''& '
)''' (
{(( 	
if)) 
()) 
_logger)) 
.)) 
	IsEnabled)) !
())! "
LogLevel))" *
.))* +
Information))+ 6
)))6 7
)))7 8
{** 
_logger++ 
.++ 
LogInformation++ &
(++& '
$str++' W
,++W X
	_settings++Y b
.++b c
Name++c g
)++g h
;++h i
},, 
var.. 
loadedFeatures.. 
=..  
await..! &
_extensionManager..' 8
...8 9
LoadFeaturesAsync..9 J
(..J K
)..K L
;..L M
var00 

shellState00 
=00 
await00 "
_stateManager00# 0
.000 1
GetShellStateAsync001 C
(00C D
)00D E
;00E F
var33 
loadedEntries33 
=33 
loadedFeatures33  .
.44 
Select44 
(44 
fe44 
=>44 
new44 !
{55 
Feature66 
=66 
fe66  
,66  !
FeatureDescriptor77 %
=77& '
fe77( *
.77* +
FeatureInfo77+ 6
,776 7
FeatureState88  
=88! "

shellState88# -
.88- .
Features88. 6
.886 7
FirstOrDefault887 E
(88E F
s88F G
=>88H J
s88K L
.88L M
Id88M O
==88P R
fe88S U
.88U V
FeatureInfo88V a
.88a b
Id88b d
)88d e
,88e f
}99 
)99 
.:: 
Where:: 
(:: 
entry:: 
=>:: 
entry::  %
.::% &
FeatureState::& 2
!=::3 5
null::6 :
)::: ;
.;; 
ToArray;; 
(;; 
);; 
;;; 
var>> 
additionalState>> 
=>>  !

shellState>>" ,
.>>, -
Features>>- 5
.>>5 6
Except>>6 <
(>>< =
loadedEntries>>= J
.>>J K
Select>>K Q
(>>Q R
entry>>R W
=>>>X Z
entry>>[ `
.>>` a
FeatureState>>a m
)>>m n
)>>n o
;>>o p
varAA 

allEntriesAA 
=AA 
loadedEntriesAA *
.AA* +
ConcatAA+ 1
(AA1 2
additionalStateAA2 A
.AAA B
SelectAAB H
(AAH I
featureStateAAI U
=>AAV X
{BB 
varCC 
featureDescriptorCC %
=CC& '
newCC( +
InternalFeatureInfoCC, ?
(CC? @
featureStateDD  
.DD  !
IdDD! #
,DD# $
newEE !
InternalExtensionInfoEE -
(EE- .
featureStateEE. :
.EE: ;
IdEE; =
)EE= >
)FF 
;FF 
returnHH 
newHH 
{II 
FeatureJJ 
=JJ 
(JJ 
FeatureEntryJJ +
)JJ+ ,
newJJ, /#
NonCompiledFeatureEntryJJ0 G
(JJG H
featureDescriptorJJH Y
)JJY Z
,JJZ [
FeatureDescriptorKK %
=KK& '
(KK( )
IFeatureInfoKK) 5
)KK5 6
featureDescriptorKK6 G
,KKG H
FeatureStateLL  
=LL! "
featureStateLL# /
}MM 
;MM 
}NN 
)NN 
)NN 
.NN 
ToArrayNN 
(NN 
)NN 
;NN 
foreachQQ 
(QQ 
varQQ 
entryQQ 
inQQ !

allEntriesQQ" ,
.QQ, -
ReverseQQ- 4
(QQ4 5
)QQ5 6
.QQ6 7
WhereQQ7 <
(QQ< =
entryQQ= B
=>QQC E
entryQQF K
.QQK L
FeatureStateQQL X
.QQX Y
EnableStateQQY d
==QQe g
ShellFeatureStateQQh y
.QQy z
StateQQz 
.	QQ Ä
Falling
QQÄ á
)
QQá à
)
QQà â
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
$strUU+ N
,UUN O
entryUUP U
.UUU V
FeatureUUV ]
.UU] ^
FeatureInfoUU^ i
.UUi j
IdUUj l
)UUl m
;UUm n
}VV 
awaitXX !
_featureEventHandlersXX +
.XX+ ,
InvokeAsyncXX, 7
(XX7 8
(XX8 9
handlerXX9 @
,XX@ A
featureInfoXXB M
)XXM N
=>XXO Q
handlerXXR Y
.XXY Z
DisablingAsyncXXZ h
(XXh i
featureInfoXXi t
)XXt u
,XXu v
entryXXw |
.XX| }
Feature	XX} Ñ
.
XXÑ Ö
FeatureInfo
XXÖ ê
,
XXê ë
_logger
XXí ô
)
XXô ö
;
XXö õ
awaitYY 
_stateManagerYY #
.YY# $#
UpdateEnabledStateAsyncYY$ ;
(YY; <
entryYY< A
.YYA B
FeatureStateYYB N
,YYN O
ShellFeatureStateYYP a
.YYa b
StateYYb g
.YYg h
DownYYh l
)YYl m
;YYm n
awaitZZ !
_featureEventHandlersZZ +
.ZZ+ ,
InvokeAsyncZZ, 7
(ZZ7 8
(ZZ8 9
handlerZZ9 @
,ZZ@ A
featureInfoZZB M
)ZZM N
=>ZZO Q
handlerZZR Y
.ZZY Z
DisabledAsyncZZZ g
(ZZg h
featureInfoZZh s
)ZZs t
,ZZt u
entryZZv {
.ZZ{ |
Feature	ZZ| É
.
ZZÉ Ñ
FeatureInfo
ZZÑ è
,
ZZè ê
_logger
ZZë ò
)
ZZò ô
;
ZZô ö
}[[ 
foreach^^ 
(^^ 
var^^ 
entry^^ 
in^^ !

allEntries^^" ,
.^^, -
Reverse^^- 4
(^^4 5
)^^5 6
.^^6 7
Where^^7 <
(^^< =
entry^^= B
=>^^C E
entry^^F K
.^^K L
FeatureState^^L X
.^^X Y
InstallState^^Y e
==^^f h
ShellFeatureState^^i z
.^^z {
State	^^{ Ä
.
^^Ä Å
Falling
^^Å à
)
^^à â
)
^^â ä
{__ 
if`` 
(`` 
_logger`` 
.`` 
	IsEnabled`` %
(``% &
LogLevel``& .
.``. /
Information``/ :
)``: ;
)``; <
{aa 
_loggerbb 
.bb 
LogInformationbb *
(bb* +
$strbb+ Q
,bbQ R
entrybbS X
.bbX Y
FeaturebbY `
.bb` a
FeatureInfobba l
.bbl m
Idbbm o
)bbo p
;bbp q
}cc 
awaitee !
_featureEventHandlersee +
.ee+ ,
InvokeAsyncee, 7
(ee7 8
(ee8 9
handleree9 @
,ee@ A
featureInfoeeB M
)eeM N
=>eeO Q
handlereeR Y
.eeY Z
UninstallingAsynceeZ k
(eek l
featureInfoeel w
)eew x
,eex y
entryeez 
.	ee Ä
Feature
eeÄ á
.
eeá à
FeatureInfo
eeà ì
,
eeì î
_logger
eeï ú
)
eeú ù
;
eeù û
awaitff 
_stateManagerff #
.ff# $%
UpdateInstalledStateAsyncff$ =
(ff= >
entryff> C
.ffC D
FeatureStateffD P
,ffP Q
ShellFeatureStateffR c
.ffc d
Stateffd i
.ffi j
Downffj n
)ffn o
;ffo p
awaitgg !
_featureEventHandlersgg +
.gg+ ,
InvokeAsyncgg, 7
(gg7 8
(gg8 9
handlergg9 @
,gg@ A
featureInfoggB M
)ggM N
=>ggO Q
handlerggR Y
.ggY Z
UninstalledAsyncggZ j
(ggj k
featureInfoggk v
)ggv w
,ggw x
entryggy ~
.gg~ 
Feature	gg Ü
.
ggÜ á
FeatureInfo
ggá í
,
ggí ì
_logger
ggî õ
)
ggõ ú
;
ggú ù
}hh 
foreachkk 
(kk 
varkk 
entrykk 
inkk !

allEntrieskk" ,
.kk, -
Wherekk- 2
(kk2 3
entrykk3 8
=>kk9 ;
IsRisingkk< D
(kkD E
entrykkE J
.kkJ K
FeatureStatekkK W
)kkW X
)kkX Y
)kkY Z
{ll 
ifmm 
(mm 
entrymm 
.mm 
FeatureStatemm &
.mm& '
InstallStatemm' 3
==mm4 6
ShellFeatureStatemm7 H
.mmH I
StatemmI N
.mmN O
RisingmmO U
)mmU V
{nn 
ifoo 
(oo 
_loggeroo 
.oo  
	IsEnabledoo  )
(oo) *
LogLeveloo* 2
.oo2 3
Informationoo3 >
)oo> ?
)oo? @
{pp 
_loggerqq 
.qq  
LogInformationqq  .
(qq. /
$strqq/ S
,qqS T
entryqqU Z
.qqZ [
Featureqq[ b
.qqb c
FeatureInfoqqc n
.qqn o
Idqqo q
)qqq r
;qqr s
}rr 
awaittt !
_featureEventHandlerstt /
.tt/ 0
InvokeAsynctt0 ;
(tt; <
(tt< =
handlertt= D
,ttD E
featureInfottF Q
)ttQ R
=>ttS U
handlerttV ]
.tt] ^
InstallingAsynctt^ m
(ttm n
featureInfottn y
)tty z
,ttz {
entry	tt| Å
.
ttÅ Ç
Feature
ttÇ â
.
ttâ ä
FeatureInfo
ttä ï
,
ttï ñ
_logger
ttó û
)
ttû ü
;
ttü †
awaituu 
_stateManageruu '
.uu' (%
UpdateInstalledStateAsyncuu( A
(uuA B
entryuuB G
.uuG H
FeatureStateuuH T
,uuT U
ShellFeatureStateuuV g
.uug h
Stateuuh m
.uum n
Upuun p
)uup q
;uuq r
awaitvv !
_featureEventHandlersvv /
.vv/ 0
InvokeAsyncvv0 ;
(vv; <
(vv< =
handlervv= D
,vvD E
featureInfovvF Q
)vvQ R
=>vvS U
handlervvV ]
.vv] ^
InstalledAsyncvv^ l
(vvl m
featureInfovvm x
)vvx y
,vvy z
entry	vv{ Ä
.
vvÄ Å
Feature
vvÅ à
.
vvà â
FeatureInfo
vvâ î
,
vvî ï
_logger
vvñ ù
)
vvù û
;
vvû ü
}ww 
ifxx 
(xx 
entryxx 
.xx 
FeatureStatexx &
.xx& '
EnableStatexx' 2
==xx3 5
ShellFeatureStatexx6 G
.xxG H
StatexxH M
.xxM N
RisingxxN T
)xxT U
{yy 
ifzz 
(zz 
_loggerzz 
.zz  
	IsEnabledzz  )
(zz) *
LogLevelzz* 2
.zz2 3
Informationzz3 >
)zz> ?
)zz? @
{{{ 
_logger|| 
.||  
LogInformation||  .
(||. /
$str||/ Q
,||Q R
entry||S X
.||X Y
Feature||Y `
.||` a
FeatureInfo||a l
.||l m
Id||m o
)||o p
;||p q
}}} 
await !
_featureEventHandlers /
./ 0
InvokeAsync0 ;
(; <
(< =
handler= D
,D E
featureInfoF Q
)Q R
=>S U
handlerV ]
.] ^
EnablingAsync^ k
(k l
featureInfol w
)w x
,x y
entryz 
.	 Ä
Feature
Ä á
.
á à
FeatureInfo
à ì
,
ì î
_logger
ï ú
)
ú ù
;
ù û
await
ÄÄ 
_stateManager
ÄÄ '
.
ÄÄ' (%
UpdateEnabledStateAsync
ÄÄ( ?
(
ÄÄ? @
entry
ÄÄ@ E
.
ÄÄE F
FeatureState
ÄÄF R
,
ÄÄR S
ShellFeatureState
ÄÄT e
.
ÄÄe f
State
ÄÄf k
.
ÄÄk l
Up
ÄÄl n
)
ÄÄn o
;
ÄÄo p
await
ÅÅ #
_featureEventHandlers
ÅÅ /
.
ÅÅ/ 0
InvokeAsync
ÅÅ0 ;
(
ÅÅ; <
(
ÅÅ< =
handler
ÅÅ= D
,
ÅÅD E
featureInfo
ÅÅF Q
)
ÅÅQ R
=>
ÅÅS U
handler
ÅÅV ]
.
ÅÅ] ^
EnabledAsync
ÅÅ^ j
(
ÅÅj k
featureInfo
ÅÅk v
)
ÅÅv w
,
ÅÅw x
entry
ÅÅy ~
.
ÅÅ~ 
FeatureÅÅ Ü
.ÅÅÜ á
FeatureInfoÅÅá í
,ÅÅí ì
_loggerÅÅî õ
)ÅÅõ ú
;ÅÅú ù
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
static
ÜÜ 
bool
ÜÜ 
IsRising
ÜÜ $
(
ÜÜ$ %
ShellFeatureState
ÜÜ% 6
state
ÜÜ7 <
)
ÜÜ< =
{
áá 	
return
àà 
state
àà 
.
àà 
InstallState
àà %
==
àà& (
ShellFeatureState
àà) :
.
àà: ;
State
àà; @
.
àà@ A
Rising
ààA G
||
ààH J
state
ââ 
.
ââ 
EnableState
ââ $
==
ââ% '
ShellFeatureState
ââ( 9
.
ââ9 :
State
ââ: ?
.
ââ? @
Rising
ââ@ F
;
ââF G
}
ää 	
}
ãã 
}åå ©
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\SingleShellSettingsManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class &
SingleShellSettingsManager +
:, -!
IShellSettingsManager. C
{ 
public		 
ShellSettings		 !
CreateDefaultSettings		 2
(		2 3
)		3 4
{

 	
return 
new 
ShellSettings $
($ %
)% &
{ 
Name 
= 
ShellHelper "
." #
DefaultShellName# 3
,3 4
State 
= 
Models 
. 
TenantState *
.* +
Running+ 2
} 
; 
} 	
public 
Task 
< 
IEnumerable 
<  
ShellSettings  -
>- .
>. /
LoadSettingsAsync0 A
(A B
)B C
{ 	
return 
Task 
. 

FromResult "
(" #
(# $
new$ '
ShellSettings( 5
[5 6
]6 7
{8 9!
CreateDefaultSettings: O
(O P
)P Q
}R S
)S T
.T U
AsEnumerableU a
(a b
)b c
)c d
;d e
} 	
public 
Task 
< 
IEnumerable 
<  
string  &
>& '
>' ("
LoadSettingsNamesAsync) ?
(? @
)@ A
{ 	
return 
Task 
. 

FromResult "
(" #
(# $
new$ '
string( .
[. /
]/ 0
{1 2
ShellHelper3 >
.> ?
DefaultShellName? O
}P Q
)Q R
.R S
AsEnumerableS _
(_ `
)` a
)a b
;b c
} 	
public 
Task 
< 
ShellSettings !
>! "
LoadSettingsAsync# 4
(4 5
string5 ;
tenant< B
)B C
=>D F
TaskG K
.K L

FromResultL V
(V W!
CreateDefaultSettingsW l
(l m
)m n
)n o
;o p
public 
Task 
SaveSettingsAsync %
(% &
ShellSettings& 3
shellSettings4 A
)A B
=>C E
TaskF J
.J K
CompletedTaskK X
;X Y
} 
}   