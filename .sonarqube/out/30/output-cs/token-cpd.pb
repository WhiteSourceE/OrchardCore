�&
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\BackgroundTasks\BackgroundTaskScheduler.cs
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
}== �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Caching\Distributed\DistributedSignal.cs
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
)	 �
)
� �
;
� �
} 
} �
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
}== �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionDependencyStrategy.cs
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
} �
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionManager.cs
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
�� 
Where
�� 
(
�� 
f
�� 
=>
�� 
features
�� $
.
��$ %
Contains
��% -
(
��- .
f
��. /
.
��/ 0
FeatureInfo
��0 ;
.
��; <
Id
��< >
)
��> ?
)
��? @
;
��@ A
return
�� 
loadedFeatures
�� !
;
��! "
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IFeatureInfo
�� '
>
��' ($
GetFeatureDependencies
��) ?
(
��? @
string
��@ F
	featureId
��G P
)
��P Q
{
�� 	
EnsureInitialized
�� 
(
�� 
)
�� 
;
��  
return
�� "
_featureDependencies
�� '
.
��' (
GetOrAdd
��( 0
(
��0 1
	featureId
��1 :
,
��: ;
(
��< =
key
��= @
)
��@ A
=>
��B D
new
��E H
Lazy
��I M
<
��M N
IEnumerable
��N Y
<
��Y Z
IFeatureInfo
��Z f
>
��f g
>
��g h
(
��h i
(
��i j
)
��j k
=>
��l n
{
�� 
if
�� 
(
�� 
!
�� 
	_features
�� 
.
�� 
ContainsKey
�� *
(
��* +
key
��+ .
)
��. /
)
��/ 0
{
�� 
return
�� 

Enumerable
�� %
.
��% &
Empty
��& +
<
��+ ,
IFeatureInfo
��, 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
}
�� 
var
�� 
feature
�� 
=
�� 
	_features
�� '
[
��' (
key
��( +
]
��+ ,
.
��, -
FeatureInfo
��- 8
;
��8 9
return
�� $
GetFeatureDependencies
�� -
(
��- .
feature
��. 5
,
��5 6
_featureInfos
��7 D
)
��D E
;
��E F
}
�� 
)
�� 
)
�� 
.
�� 
Value
�� 
;
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IFeatureInfo
�� '
>
��' ("
GetDependentFeatures
��) =
(
��= >
string
��> D
	featureId
��E N
)
��N O
{
�� 	
EnsureInitialized
�� 
(
�� 
)
�� 
;
��  
return
��  
_dependentFeatures
�� %
.
��% &
GetOrAdd
��& .
(
��. /
	featureId
��/ 8
,
��8 9
(
��: ;
key
��; >
)
��> ?
=>
��@ B
new
��C F
Lazy
��G K
<
��K L
IEnumerable
��L W
<
��W X
IFeatureInfo
��X d
>
��d e
>
��e f
(
��f g
(
��g h
)
��h i
=>
��j l
{
�� 
if
�� 
(
�� 
!
�� 
	_features
�� 
.
�� 
ContainsKey
�� *
(
��* +
key
��+ .
)
��. /
)
��/ 0
{
�� 
return
�� 

Enumerable
�� %
.
��% &
Empty
��& +
<
��+ ,
IFeatureInfo
��, 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
}
�� 
var
�� 
feature
�� 
=
�� 
	_features
�� '
[
��' (
key
��( +
]
��+ ,
.
��, -
FeatureInfo
��- 8
;
��8 9
return
�� "
GetDependentFeatures
�� +
(
��+ ,
feature
��, 3
,
��3 4
_featureInfos
��5 B
)
��B C
;
��C D
}
�� 
)
�� 
)
�� 
.
�� 
Value
�� 
;
�� 
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
IFeatureInfo
�� (
>
��( )$
GetFeatureDependencies
��* @
(
��@ A
IFeatureInfo
�� 
feature
��  
,
��  !
IFeatureInfo
�� 
[
�� 
]
�� 
features
�� #
)
��# $
{
�� 	
var
�� 
dependencies
�� 
=
�� 
new
�� "
HashSet
��# *
<
��* +
IFeatureInfo
��+ 7
>
��7 8
(
��8 9
)
��9 :
{
��; <
feature
��= D
}
��E F
;
��F G
var
�� 
stack
�� 
=
�� 
new
�� 
Stack
�� !
<
��! "
IFeatureInfo
��" .
[
��. /
]
��/ 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
stack
�� 
.
�� 
Push
�� 
(
�� (
GetFeatureDependenciesFunc
�� 1
(
��1 2
feature
��2 9
,
��9 :
features
��; C
)
��C D
)
��D E
;
��E F
while
�� 
(
�� 
stack
�� 
.
�� 
Count
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
next
�� 
=
�� 
stack
��  
.
��  !
Pop
��! $
(
��$ %
)
��% &
;
��& '
foreach
�� 
(
�� 
var
�� 

dependency
�� '
in
��( *
next
��+ /
.
��/ 0
Where
��0 5
(
��5 6

dependency
��6 @
=>
��A C
!
��D E
dependencies
��E Q
.
��Q R
Contains
��R Z
(
��Z [

dependency
��[ e
)
��e f
)
��f g
)
��g h
{
�� 
dependencies
��  
.
��  !
Add
��! $
(
��$ %

dependency
��% /
)
��/ 0
;
��0 1
stack
�� 
.
�� 
Push
�� 
(
�� (
GetFeatureDependenciesFunc
�� 9
(
��9 :

dependency
��: D
,
��D E
features
��F N
)
��N O
)
��O P
;
��P Q
}
�� 
}
�� 
return
�� 
_featureInfos
��  
.
��  !
Where
��! &
(
��& '
f
��' (
=>
��) +
dependencies
��, 8
.
��8 9
Any
��9 <
(
��< =
d
��= >
=>
��? A
d
��B C
.
��C D
Id
��D F
==
��G I
f
��J K
.
��K L
Id
��L N
)
��N O
)
��O P
;
��P Q
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
IFeatureInfo
�� (
>
��( )"
GetDependentFeatures
��* >
(
��> ?
IFeatureInfo
�� 
feature
��  
,
��  !
IFeatureInfo
�� 
[
�� 
]
�� 
features
�� #
)
��# $
{
�� 	
var
�� 
dependencies
�� 
=
�� 
new
�� "
HashSet
��# *
<
��* +
IFeatureInfo
��+ 7
>
��7 8
(
��8 9
)
��9 :
{
��; <
feature
��= D
}
��E F
;
��F G
var
�� 
stack
�� 
=
�� 
new
�� 
Stack
�� !
<
��! "
IFeatureInfo
��" .
[
��. /
]
��/ 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
stack
�� 
.
�� 
Push
�� 
(
�� &
GetDependentFeaturesFunc
�� /
(
��/ 0
feature
��0 7
,
��7 8
features
��9 A
)
��A B
)
��B C
;
��C D
while
�� 
(
�� 
stack
�� 
.
�� 
Count
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
next
�� 
=
�� 
stack
��  
.
��  !
Pop
��! $
(
��$ %
)
��% &
;
��& '
foreach
�� 
(
�� 
var
�� 

dependency
�� '
in
��( *
next
��+ /
.
��/ 0
Where
��0 5
(
��5 6

dependency
��6 @
=>
��A C
!
��D E
dependencies
��E Q
.
��Q R
Contains
��R Z
(
��Z [

dependency
��[ e
)
��e f
)
��f g
)
��g h
{
�� 
dependencies
��  
.
��  !
Add
��! $
(
��$ %

dependency
��% /
)
��/ 0
;
��0 1
stack
�� 
.
�� 
Push
�� 
(
�� &
GetDependentFeaturesFunc
�� 7
(
��7 8

dependency
��8 B
,
��B C
features
��D L
)
��L M
)
��M N
;
��N O
}
�� 
}
�� 
return
�� 
_featureInfos
��  
.
��  !
Where
��! &
(
��& '
f
��' (
=>
��) +
dependencies
��, 8
.
��8 9
Any
��9 <
(
��< =
d
��= >
=>
��? A
d
��B C
.
��C D
Id
��D F
==
��G I
f
��J K
.
��K L
Id
��L N
)
��N O
)
��O P
;
��P Q
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IFeatureInfo
�� '
>
��' (
GetFeatures
��) 4
(
��4 5
)
��5 6
{
�� 	
EnsureInitialized
�� 
(
�� 
)
�� 
;
��  
return
�� 
_featureInfos
��  
;
��  !
}
�� 	
private
�� 
static
�� 
string
�� )
GetSourceFeatureNameForType
�� 9
(
��9 :
Type
��: >
type
��? C
,
��C D
string
��E K
extensionId
��L W
)
��W X
{
�� 	
var
�� 
	attribute
�� 
=
�� 
type
��  
.
��  !!
GetCustomAttributes
��! 4
<
��4 5
FeatureAttribute
��5 E
>
��E F
(
��F G
false
��G L
)
��L M
.
��M N
FirstOrDefault
��N \
(
��\ ]
)
��] ^
;
��^ _
return
�� 
	attribute
�� 
?
�� 
.
�� 
FeatureName
�� )
??
��* ,
extensionId
��- 8
;
��8 9
}
�� 	
private
�� 
void
�� 
EnsureInitialized
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
_isInitialized
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� $
EnsureInitializedAsync
�� "
(
��" #
)
��# $
.
��$ %

GetAwaiter
��% /
(
��/ 0
)
��0 1
.
��1 2
	GetResult
��2 ;
(
��; <
)
��< =
;
��= >
}
�� 	
private
�� 
async
�� 
Task
�� $
EnsureInitializedAsync
�� 1
(
��1 2
)
��2 3
{
�� 	
if
�� 
(
�� 
_isInitialized
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
await
�� 

_semaphore
�� 
.
�� 
	WaitAsync
�� &
(
��& '
)
��' (
;
��( )
try
�� 
{
�� 
if
�� 
(
�� 
_isInitialized
�� "
)
��" #
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
modules
�� 
=
�� !
_applicationContext
�� 1
.
��1 2
Application
��2 =
.
��= >
Modules
��> E
;
��E F
var
�� 
loadedExtensions
�� $
=
��% &
new
��' *"
ConcurrentDictionary
��+ ?
<
��? @
string
��@ F
,
��F G
ExtensionEntry
��H V
>
��V W
(
��W X
)
��X Y
;
��Y Z
await
�� 
modules
�� 
.
�� 
ForEachAsync
�� *
(
��* +
(
��+ ,
module
��, 2
)
��2 3
=>
��4 6
{
�� 
if
�� 
(
�� 
!
�� 
module
�� 
.
��  

ModuleInfo
��  *
.
��* +
Exists
��+ 1
)
��1 2
{
�� 
return
�� 
Task
�� #
.
��# $
CompletedTask
��$ 1
;
��1 2
}
�� 
var
�� 
manifestInfo
�� $
=
��% &
new
��' *
ManifestInfo
��+ 7
(
��7 8
module
��8 >
.
��> ?

ModuleInfo
��? I
)
��I J
;
��J K
var
�� 
extensionInfo
�� %
=
��& '
new
��( +
ExtensionInfo
��, 9
(
��9 :
module
��: @
.
��@ A
SubPath
��A H
,
��H I
manifestInfo
��J V
,
��V W
(
��X Y
mi
��Y [
,
��[ \
ei
��] _
)
��_ `
=>
��a c
{
�� 
return
�� 
_featuresProvider
�� 0
.
��0 1
GetFeatures
��1 <
(
��< =
ei
��= ?
,
��? @
mi
��A C
)
��C D
;
��D E
}
�� 
)
�� 
;
�� 
var
�� 
entry
�� 
=
�� 
new
��  #
ExtensionEntry
��$ 2
{
�� 
ExtensionInfo
�� %
=
��& '
extensionInfo
��( 5
,
��5 6
Assembly
��  
=
��! "
module
��# )
.
��) *
Assembly
��* 2
,
��2 3
ExportedTypes
�� %
=
��& '
module
��( .
.
��. /
Assembly
��/ 7
.
��7 8
ExportedTypes
��8 E
}
�� 
;
�� 
loadedExtensions
�� $
.
��$ %
TryAdd
��% +
(
��+ ,
module
��, 2
.
��2 3
Name
��3 7
,
��7 8
entry
��9 >
)
��> ?
;
��? @
return
�� 
Task
�� 
.
��  
CompletedTask
��  -
;
��- .
}
�� 
)
�� 
;
�� 
var
�� 
loadedFeatures
�� "
=
��# $
new
��% (

Dictionary
��) 3
<
��3 4
string
��4 :
,
��: ;
FeatureEntry
��< H
>
��H I
(
��I J
)
��J K
;
��K L
var
�� !
allTypesByExtension
�� '
=
��( )
loadedExtensions
��* :
.
��: ;

SelectMany
��; E
(
��E F
	extension
��F O
=>
��P R
	extension
�� 
.
�� 
Value
�� #
.
��# $
ExportedTypes
��$ 1
.
��1 2
Where
��2 7
(
��7 8
IsComponentType
��8 G
)
��G H
.
�� 
Select
�� 
(
�� 
type
��  
=>
��! #
new
��$ '
{
�� 
ExtensionEntry
�� &
=
��' (
	extension
��) 2
.
��2 3
Value
��3 8
,
��8 9
Type
�� 
=
�� 
type
�� #
}
�� 
)
�� 
)
�� 
.
�� 
ToArray
�� 
(
��  
)
��  !
;
��! "
var
�� 
typesByFeature
�� "
=
��# $!
allTypesByExtension
��% 8
.
�� 
GroupBy
�� 
(
�� 
typeByExtension
�� ,
=>
��- /)
GetSourceFeatureNameForType
��0 K
(
��K L
typeByExtension
�� '
.
��' (
Type
��( ,
,
��, -
typeByExtension
�� '
.
��' (
ExtensionEntry
��( 6
.
��6 7
ExtensionInfo
��7 D
.
��D E
Id
��E G
)
��G H
)
��H I
.
�� 
ToDictionary
�� !
(
��! "
group
�� 
=>
��  
group
��! &
.
��& '
Key
��' *
,
��* +
group
�� 
=>
��  
group
��! &
.
��& '
Select
��' -
(
��- .
typesByExtension
��. >
=>
��? A
typesByExtension
��B R
.
��R S
Type
��S W
)
��W X
.
��X Y
ToArray
��Y `
(
��` a
)
��a b
)
��b c
;
��c d
foreach
�� 
(
�� 
var
�� 
loadedExtension
�� ,
in
��- /
loadedExtensions
��0 @
)
��@ A
{
�� 
var
�� 
	extension
�� !
=
��" #
loadedExtension
��$ 3
.
��3 4
Value
��4 9
;
��9 :
foreach
�� 
(
�� 
var
��  
feature
��! (
in
��) +
	extension
��, 5
.
��5 6
ExtensionInfo
��6 C
.
��C D
Features
��D L
)
��L M
{
�� 
if
�� 
(
�� 
typesByFeature
�� *
.
��* +
TryGetValue
��+ 6
(
��6 7
feature
��7 >
.
��> ?
Id
��? A
,
��A B
out
��C F
var
��G J
featureTypes
��K W
)
��W X
)
��X Y
{
�� 
foreach
�� #
(
��$ %
var
��% (
type
��) -
in
��. 0
featureTypes
��1 =
)
��= >
{
�� "
_typeFeatureProvider
��  4
.
��4 5
TryAdd
��5 ;
(
��; <
type
��< @
,
��@ A
feature
��B I
)
��I J
;
��J K
}
�� 
}
�� 
else
�� 
{
�� 
featureTypes
�� (
=
��) *
Array
��+ 0
.
��0 1
Empty
��1 6
<
��6 7
Type
��7 ;
>
��; <
(
��< =
)
��= >
;
��> ?
}
�� 
loadedFeatures
�� &
.
��& '
Add
��' *
(
��* +
feature
��+ 2
.
��2 3
Id
��3 5
,
��5 6
new
��7 :"
CompiledFeatureEntry
��; O
(
��O P
feature
��P W
,
��W X
featureTypes
��Y e
)
��e f
)
��f g
;
��g h
}
�� 
}
�� 
;
�� 
_featureInfos
�� 
=
�� 
Order
��  %
(
��% &
loadedFeatures
��& 4
.
��4 5
Values
��5 ;
.
��; <
Select
��< B
(
��B C
f
��C D
=>
��E G
f
��H I
.
��I J
FeatureInfo
��J U
)
��U V
)
��V W
;
��W X
	_features
�� 
=
�� 
_featureInfos
�� )
.
��) *
ToDictionary
��* 6
(
��6 7
f
��7 8
=>
��9 ;
f
��< =
.
��= >
Id
��> @
,
��@ A
f
��B C
=>
��D F
loadedFeatures
��G U
[
��U V
f
��V W
.
��W X
Id
��X Z
]
��Z [
)
��[ \
;
��\ ]
_extensionsInfos
��  
=
��! "
_featureInfos
��# 0
.
��0 1
Where
��1 6
(
��6 7
f
��7 8
=>
��9 ;
f
��< =
.
��= >
Id
��> @
==
��A C
f
��D E
.
��E F
	Extension
��F O
.
��O P
Features
��P X
.
��X Y
First
��Y ^
(
��^ _
)
��_ `
.
��` a
Id
��a c
)
��c d
.
�� 
Select
�� 
(
�� 
f
�� 
=>
��  
f
��! "
.
��" #
	Extension
��# ,
)
��, -
;
��- .
_extensions
�� 
=
�� 
_extensionsInfos
�� .
.
��. /
ToDictionary
��/ ;
(
��; <
e
��< =
=>
��> @
e
��A B
.
��B C
Id
��C E
,
��E F
e
��G H
=>
��I K
loadedExtensions
��L \
[
��\ ]
e
��] ^
.
��^ _
Id
��_ a
]
��a b
)
��b c
;
��c d
_isInitialized
�� 
=
��  
true
��! %
;
��% &
}
�� 
finally
�� 
{
�� 

_semaphore
�� 
.
�� 
Release
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
private
�� 
bool
�� 
IsComponentType
�� $
(
��$ %
Type
��% )
type
��* .
)
��. /
{
�� 	
return
�� 
type
�� 
.
�� 
IsClass
�� 
&&
��  "
!
��# $
type
��$ (
.
��( )

IsAbstract
��) 3
&&
��4 6
type
��7 ;
.
��; <
IsPublic
��< D
;
��D E
}
�� 	
private
�� 
IFeatureInfo
�� 
[
�� 
]
�� 
Order
�� $
(
��$ %
IEnumerable
��% 0
<
��0 1
IFeatureInfo
��1 =
>
��= >
featuresToOrder
��? N
)
��N O
{
�� 	
return
�� 
featuresToOrder
�� "
.
�� 
OrderBy
�� 
(
�� 
x
�� 
=>
�� 
x
�� 
.
��  
Id
��  "
)
��" #
.
�� .
 OrderByDependenciesAndPriorities
�� 1
(
��1 2
HasDependency
��2 ?
,
��? @
GetPriority
��A L
)
��L M
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
HasDependency
�� "
(
��" #
IFeatureInfo
��# /
f1
��0 2
,
��2 3
IFeatureInfo
��4 @
f2
��A C
)
��C D
{
�� 	
return
�� ,
_extensionDependencyStrategies
�� 1
.
��1 2
Any
��2 5
(
��5 6
s
��6 7
=>
��8 :
s
��; <
.
��< =
HasDependency
��= J
(
��J K
f1
��K M
,
��M N
f2
��O Q
)
��Q R
)
��R S
;
��S T
}
�� 	
private
�� 
int
�� 
GetPriority
�� 
(
��  
IFeatureInfo
��  ,
feature
��- 4
)
��4 5
{
�� 	
return
�� *
_extensionPriorityStrategies
�� /
.
��/ 0
Sum
��0 3
(
��3 4
s
��4 5
=>
��6 8
s
��9 :
.
��: ;
GetPriority
��; F
(
��F G
feature
��G N
)
��N O
)
��O P
;
��P Q
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ExtensionPriorityStrategy.cs
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
} �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\FeatureHash.cs
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
}88 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\FeatureInfo.cs
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
}%% �[
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\FeaturesProvider.cs
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
�� 
featureInfo
�� 
=
��  !
new
��" %
FeatureInfo
��& 1
(
��1 2
context
�� 
.
�� 
	FeatureId
�� %
,
��% &
context
�� 
.
�� 
FeatureName
�� '
,
��' (
context
�� 
.
�� 
Priority
�� $
,
��$ %
context
�� 
.
�� 
Category
�� $
,
��$ %
context
�� 
.
�� 
Description
�� '
,
��' (
context
�� 
.
�� 
ExtensionInfo
�� )
,
��) *
context
�� 
.
�� "
FeatureDependencyIds
�� 0
,
��0 1
context
�� 
.
�� 
DefaultTenantOnly
�� -
,
��- .
context
�� 
.
�� 
IsAlwaysEnabled
�� +
)
��+ ,
;
��, -
foreach
�� 
(
�� 
var
�� 
builder
�� $
in
��% '#
_featureBuilderEvents
��( =
)
��= >
{
�� 
builder
�� 
.
�� 
Built
�� !
(
��! "
featureInfo
��" -
)
��- .
;
��. /
}
�� 
featuresInfos
�� 
.
�� 
Add
�� !
(
��! "
featureInfo
��" -
)
��- .
;
��. /
}
�� 
return
�� 
featuresInfos
��  
;
��  !
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Features\TypeFeatureProvider.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\Manifests\ManifestInfo.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Extensions\ServiceCollectionExtensions.cs
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
} �G
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\BclCalendars.cs
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
}qq �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\DefaultCalendarManager.cs
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
};; �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\DefaultCalendarSelector.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\DefaultLocalizationService.cs
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
}	 �
)
� �
;
� �
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
} �,
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\NullHtmlLocalizerFactory.cs
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
}?? �*
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Localization\NullStringLocalizerFactory.cs
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
}== �\
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
))� �
null
))� �
)
))� �
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
$str	44# �
,
44� �
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
�� 
(
�� 

_localLock
�� $
.
��$ %
_semaphores
��% 0
)
��0 1
{
�� 
if
�� 
(
�� 

_localLock
�� &
.
��& '
_semaphores
��' 2
.
��2 3
TryGetValue
��3 >
(
��> ?

_semaphore
��? I
.
��I J
Key
��J M
,
��M N
out
��O R
var
��S V
	semaphore
��W `
)
��` a
)
��a b
{
�� 
	semaphore
�� %
.
��% &
RefCount
��& .
--
��. 0
;
��0 1
if
�� 
(
��  
	semaphore
��  )
.
��) *
RefCount
��* 2
==
��3 5
$num
��6 7
)
��7 8
{
�� 

_localLock
��  *
.
��* +
_semaphores
��+ 6
.
��6 7
Remove
��7 =
(
��= >

_semaphore
��> H
.
��H I
Key
��I L
)
��L M
;
��M N
}
�� 
}
�� 
}
�� 

_semaphore
�� 
.
�� 
Value
�� $
.
��$ %
Release
��% ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 
public
�� 
	ValueTask
�� 
DisposeAsync
�� )
(
��) *
)
��* +
{
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
return
�� 
default
�� 
;
�� 
}
�� 
public
�� 
void
�� 
Dispose
�� 
(
��  
)
��  !
{
�� 
if
�� 
(
�� 
	_disposed
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
	_disposed
�� 
=
�� 
true
��  
;
��  !
_cts
�� 
?
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
��  
Release
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
var
�� 

semaphores
�� 
=
�� 
_semaphores
�� (
.
��( )
Values
��) /
.
��/ 0
ToArray
��0 7
(
��7 8
)
��8 9
;
��9 :
foreach
�� 
(
�� 
var
�� 
	semaphore
�� "
in
��# %

semaphores
��& 0
)
��0 1
{
�� 
	semaphore
�� 
.
�� 
Value
�� 
.
��  
Dispose
��  '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\DefaultOrchardHelper.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\ApplicationBuilderExtensions.cs
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
null	 �
)
� �
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
})) �5
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\OrchardCoreBuilderExtensions.cs
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
}ee �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\PoweredByOrchardCoreExtensions.cs
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
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\RunningShellTableExtensions.cs
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
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Extensions\ServiceCollectionExtensions.cs
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
�� 	
services
�� 
.
�� %
AddHostingShellServices
�� ,
(
��, -
)
��- .
;
��. /
services
�� 
.
�� &
AddAllFeaturesDescriptor
�� -
(
��- .
)
��. /
;
��/ 0
services
�� 
.
�� 
AddTransient
�� !
(
��! "
sp
��" $
=>
��% '
new
��( +
ShellFeature
��, 8
(
�� 
sp
�� 
.
��  
GetRequiredService
�� %
<
��% &
IHostEnvironment
��& 6
>
��6 7
(
��7 8
)
��8 9
.
��9 :
ApplicationName
��: I
,
��I J
alwaysEnabled
��K X
:
��X Y
true
��Z ^
)
��^ _
)
�� 
;
�� 
services
�� 
.
�� 
AddTransient
�� !
(
��! "
sp
��" $
=>
��% '
new
��( +
ShellFeature
��, 8
(
�� 
Application
�� 
.
�� 
DefaultFeatureId
�� ,
,
��, -
alwaysEnabled
��. ;
:
��; <
true
��= A
)
��A B
)
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� "
AddExtensionServices
�� 0
(
��0 1 
OrchardCoreBuilder
��1 C
builder
��D K
)
��K L
{
�� 	
builder
�� 
.
�� !
ApplicationServices
�� '
.
��' (
AddSingleton
��( 4
<
��4 5"
IModuleNamesProvider
��5 I
,
��I J2
$AssemblyAttributeModuleNamesProvider
��K o
>
��o p
(
��p q
)
��q r
;
��r s
builder
�� 
.
�� !
ApplicationServices
�� '
.
��' (
AddSingleton
��( 4
<
��4 5!
IApplicationContext
��5 H
,
��H I'
ModularApplicationContext
��J c
>
��c d
(
��d e
)
��e f
;
��f g
builder
�� 
.
�� !
ApplicationServices
�� '
.
��' (%
AddExtensionManagerHost
��( ?
(
��? @
)
��@ A
;
��A B
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &
services
��& .
=>
��/ 1
{
�� 
services
�� 
.
�� !
AddExtensionManager
�� ,
(
��, -
)
��- .
;
��. /
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddStaticFiles
�� *
(
��* + 
OrchardCoreBuilder
��+ =
builder
��> E
)
��E F
{
�� 	
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &
services
��& .
=>
��/ 1
{
�� 
services
�� 
.
�� 
AddSingleton
�� %
<
��% &'
IModuleStaticFileProvider
��& ?
>
��? @
(
��@ A
serviceProvider
��A P
=>
��Q S
{
�� 
var
�� 
env
�� 
=
�� 
serviceProvider
�� -
.
��- . 
GetRequiredService
��. @
<
��@ A
IHostEnvironment
��A Q
>
��Q R
(
��R S
)
��S T
;
��T U
var
�� 

appContext
�� "
=
��# $
serviceProvider
��% 4
.
��4 5 
GetRequiredService
��5 G
<
��G H!
IApplicationContext
��H [
>
��[ \
(
��\ ]
)
��] ^
;
��^ _'
IModuleStaticFileProvider
�� -
fileProvider
��. :
;
��: ;
if
�� 
(
�� 
env
�� 
.
�� 
IsDevelopment
�� )
(
��) *
)
��* +
)
��+ ,
{
�� 
var
�� 
fileProviders
�� )
=
��* +
new
��, /
List
��0 4
<
��4 5!
IStaticFileProvider
��5 H
>
��H I
{
�� 
new
�� -
ModuleProjectStaticFileProvider
��  ?
(
��? @

appContext
��@ J
)
��J K
,
��K L
new
�� .
 ModuleEmbeddedStaticFileProvider
��  @
(
��@ A

appContext
��A K
)
��K L
}
�� 
;
�� 
fileProvider
�� $
=
��% &
new
��' */
!ModuleCompositeStaticFileProvider
��+ L
(
��L M
fileProviders
��M Z
)
��Z [
;
��[ \
}
�� 
else
�� 
{
�� 
fileProvider
�� $
=
��% &
new
��' *.
 ModuleEmbeddedStaticFileProvider
��+ K
(
��K L

appContext
��L V
)
��V W
;
��W X
}
�� 
return
�� 
fileProvider
�� '
;
��' (
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
AddSingleton
�� %
<
��% &!
IStaticFileProvider
��& 9
>
��9 :
(
��: ;
serviceProvider
��; J
=>
��K M
{
�� 
return
�� 
serviceProvider
�� *
.
��* + 
GetRequiredService
��+ =
<
��= >'
IModuleStaticFileProvider
��> W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
}
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
builder
�� 
.
�� 
	Configure
�� 
(
�� 
(
�� 
app
�� "
,
��" #
routes
��$ *
,
��* +
serviceProvider
��, ;
)
��; <
=>
��= ?
{
�� 
var
�� 
fileProvider
��  
=
��! "
serviceProvider
��# 2
.
��2 3 
GetRequiredService
��3 E
<
��E F'
IModuleStaticFileProvider
��F _
>
��_ `
(
��` a
)
��a b
;
��b c
var
�� 
options
�� 
=
�� 
serviceProvider
�� -
.
��- . 
GetRequiredService
��. @
<
��@ A
IOptions
��A I
<
��I J
StaticFileOptions
��J [
>
��[ \
>
��\ ]
(
��] ^
)
��^ _
.
��_ `
Value
��` e
;
��e f
options
�� 
.
�� 
RequestPath
�� #
=
��$ %
$str
��& (
;
��( )
options
�� 
.
�� 
FileProvider
�� $
=
��% &
fileProvider
��' 3
;
��3 4
var
��  
shellConfiguration
�� &
=
��' (
serviceProvider
��) 8
.
��8 9 
GetRequiredService
��9 K
<
��K L!
IShellConfiguration
��L _
>
��_ `
(
��` a
)
��a b
;
��b c
var
�� 
cacheControl
��  
=
��! " 
shellConfiguration
��# 5
.
��5 6
GetValue
��6 >
(
��> ?
$str
��? _
,
��_ `
$str��a �
)��� �
;��� �
options
�� 
.
�� 
OnPrepareResponse
�� )
=
��* +
ctx
��, /
=>
��0 2
{
�� 
ctx
�� 
.
�� 
Context
�� 
.
��  
Response
��  (
.
��( )
Headers
��) 0
[
��0 1
HeaderNames
��1 <
.
��< =
CacheControl
��= I
]
��I J
=
��K L
cacheControl
��M Y
;
��Y Z
}
�� 
;
�� 
app
�� 
.
�� 
UseStaticFiles
�� "
(
��" #
options
��# *
)
��* +
;
��+ ,
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 

AddRouting
�� &
(
��& ' 
OrchardCoreBuilder
��' 9
builder
��: A
)
��A B
{
�� 	
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &

collection
��& 0
=>
��1 3
{
�� 
var
�� )
implementationTypesToRemove
�� /
=
��0 1
new
��2 5
ServiceCollection
��6 G
(
��G H
)
��H I
.
��I J

AddRouting
��J T
(
��T U
)
��U V
.
�� 
Where
�� 
(
�� 
sd
�� 
=>
��  
sd
��! #
.
��# $
Lifetime
��$ ,
==
��- /
ServiceLifetime
��0 ?
.
��? @
	Singleton
��@ I
||
��J L
sd
��M O
.
��O P
ServiceType
��P [
==
��\ ^
typeof
��_ e
(
��e f
IConfigureOptions
��f w
<
��w x
RouteOptions��x �
>��� �
)��� �
)��� �
.
�� 
Select
�� 
(
�� 
sd
�� 
=>
�� !
sd
��" $
.
��$ %#
GetImplementationType
��% :
(
��: ;
)
��; <
)
��< =
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
var
�� !
descriptorsToRemove
�� '
=
��( )

collection
��* 4
.
�� 
Where
�� 
(
�� 
sd
�� 
=>
��  
(
��! "
sd
��" $
is
��% ''
ClonedSingletonDescriptor
��( A
||
��B D
sd
��E G
.
��G H
ServiceType
��H S
==
��T V
typeof
��W ]
(
��] ^
IConfigureOptions
��^ o
<
��o p
RouteOptions
��p |
>
��| }
)
��} ~
)
��~ 
&&��� �)
implementationTypesToRemove
�� 3
.
��3 4
Contains
��4 <
(
��< =
sd
��= ?
.
��? @#
GetImplementationType
��@ U
(
��U V
)
��V W
)
��W X
)
��X Y
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 

descriptor
�� '
in
��( *!
descriptorsToRemove
��+ >
)
��> ?
{
�� 

collection
�� 
.
�� 
Remove
�� %
(
��% &

descriptor
��& 0
)
��0 1
;
��1 2
}
�� 

collection
�� 
.
�� 

AddRouting
�� %
(
��% &
)
��& '
;
��' (
}
�� 
,
�� 
order
�� 
:
�� 
int
�� 
.
�� 
MinValue
�� 
+
��  !
$num
��" %
)
��% &
;
��& '
}
�� 	
private
�� 
static
�� 
void
�� 
AddAntiForgery
�� *
(
��* + 
OrchardCoreBuilder
��+ =
builder
��> E
)
��E F
{
�� 	
builder
�� 
.
�� !
ApplicationServices
�� '
.
��' (
AddAntiforgery
��( 6
(
��6 7
)
��7 8
;
��8 9
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &
(
��& '
services
��' /
,
��/ 0
serviceProvider
��1 @
)
��@ A
=>
��B D
{
�� 
var
�� 
settings
�� 
=
�� 
serviceProvider
�� .
.
��. / 
GetRequiredService
��/ A
<
��A B
ShellSettings
��B O
>
��O P
(
��P Q
)
��Q R
;
��R S
var
�� 
environment
�� 
=
��  !
serviceProvider
��" 1
.
��1 2 
GetRequiredService
��2 D
<
��D E
IHostEnvironment
��E U
>
��U V
(
��V W
)
��W X
;
��X Y
var
�� 

cookieName
�� 
=
��  
$str
��! 3
+
��4 5
HttpUtility
��6 A
.
��A B
	UrlEncode
��B K
(
��K L
settings
��L T
.
��T U
Name
��U Y
+
��Z [
environment
��\ g
.
��g h
ContentRootPath
��h w
)
��w x
;
��x y
if
�� 
(
�� 
settings
�� 
.
�� 
State
�� "
==
��# %
TenantState
��& 1
.
��1 2
Uninitialized
��2 ?
)
��? @
{
�� 
var
�� !
httpContextAccessor
�� +
=
��, -
serviceProvider
��. =
.
��= > 
GetRequiredService
��> P
<
��P Q"
IHttpContextAccessor
��Q e
>
��e f
(
��f g
)
��g h
;
��h i
if
�� 
(
�� !
httpContextAccessor
�� +
.
��+ ,
HttpContext
��, 7
==
��8 :
null
��; ?
)
��? @
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� !
httpContextAccessor
�� +
.
��+ ,
HttpContext
��, 7
.
��7 8
Response
��8 @
.
��@ A

HasStarted
��A K
)
��K L
{
�� 
return
�� 
;
�� 
}
�� !
httpContextAccessor
�� '
.
��' (
HttpContext
��( 3
.
��3 4
Response
��4 <
.
��< =
Cookies
��= D
.
��D E
Delete
��E K
(
��K L

cookieName
��L V
)
��V W
;
��W X
return
�� 
;
�� 
}
�� 
var
�� 

collection
�� 
=
��  
new
��! $
ServiceCollection
��% 6
(
��6 7
)
��7 8
.
�� 
AddAntiforgery
�� #
(
��# $
options
��$ +
=>
��, .
{
�� 
options
�� 
.
��  
Cookie
��  &
.
��& '
Name
��' +
=
��, -

cookieName
��. 8
;
��8 9
}
�� 
)
�� 
;
�� 
services
�� 
.
�� 
Add
�� 
(
�� 

collection
�� '
)
��' (
;
��( )
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 5
'AddSameSiteCookieBackwardsCompatibility
�� C
(
��C D 
OrchardCoreBuilder
��D V
builder
��W ^
)
��^ _
{
�� 	
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &
services
��& .
=>
��/ 1
{
�� 
services
�� 
.
�� 
	Configure
�� &
<
��& '!
CookiePolicyOptions
��' :
>
��: ;
(
��; <
options
��< C
=>
��D F
{
�� 
options
�� 
.
��  #
MinimumSameSitePolicy
��  5
=
��6 7
SameSiteMode
��8 D
.
��D E
Unspecified
��E P
;
��P Q
options
�� 
.
��  
OnAppendCookie
��  .
=
��/ 0
cookieContext
��1 >
=>
��? A0
"CheckSameSiteBackwardsCompatiblity
��B d
(
��d e
cookieContext
��e r
.
��r s
Context
��s z
,
��z {
cookieContext��| �
.��� �
CookieOptions��� �
)��� �
;��� �
options
�� 
.
��  
OnDeleteCookie
��  .
=
��/ 0
cookieContext
��1 >
=>
��? A0
"CheckSameSiteBackwardsCompatiblity
��B d
(
��d e
cookieContext
��e r
.
��r s
Context
��s z
,
��z {
cookieContext��| �
.��� �
CookieOptions��� �
)��� �
;��� �
}
�� 
)
�� 
;
�� 
}
�� 
)
�� 
.
�� 
	Configure
�� 
(
�� 
app
�� 
=>
�� !
{
�� 
app
�� 
.
�� 
UseCookiePolicy
�� '
(
��' (
)
��( )
;
��) *
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 0
"CheckSameSiteBackwardsCompatiblity
�� >
(
��> ?
HttpContext
��? J
httpContext
��K V
,
��V W
CookieOptions
��X e
options
��f m
)
��m n
{
�� 	
var
�� 
	userAgent
�� 
=
�� 
httpContext
�� '
.
��' (
Request
��( /
.
��/ 0
Headers
��0 7
[
��7 8
$str
��8 D
]
��D E
.
��E F
ToString
��F N
(
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
options
�� 
.
�� 
SameSite
��  
==
��! #
SameSiteMode
��$ 0
.
��0 1
None
��1 5
)
��5 6
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
	userAgent
��) 2
)
��2 3
)
��3 4
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
	userAgent
�� 
.
�� 
Contains
�� &
(
��& '
$str
��' 9
)
��9 :
||
��; =
	userAgent
��> G
.
��G H
Contains
��H P
(
��P Q
$str
��Q b
)
��b c
)
��c d
{
�� 
options
�� 
.
�� 
SameSite
�� $
=
��% &

AspNetCore
��' 1
.
��1 2
Http
��2 6
.
��6 7
SameSiteMode
��7 C
.
��C D
Unspecified
��D O
;
��O P
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
	userAgent
�� 
.
�� 
Contains
�� &
(
��& '
$str
��' H
)
��H I
&&
��J L
	userAgent
�� 
.
�� 
Contains
�� &
(
��& '
$str
��' 1
)
��1 2
&&
��3 5
	userAgent
��6 ?
.
��? @
Contains
��@ H
(
��H I
$str
��I Q
)
��Q R
)
��R S
{
�� 
options
�� 
.
�� 
SameSite
�� $
=
��% &

AspNetCore
��' 1
.
��1 2
Http
��2 6
.
��6 7
SameSiteMode
��7 C
.
��C D
Unspecified
��D O
;
��O P
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
	userAgent
�� 
.
�� 
Contains
�� &
(
��& '
$str
��' 1
)
��1 2
||
��3 5
	userAgent
��6 ?
.
��? @
Contains
��@ H
(
��H I
$str
��I S
)
��S T
)
��T U
{
�� 
options
�� 
.
�� 
SameSite
�� $
=
��% &

AspNetCore
��' 1
.
��1 2
Http
��2 6
.
��6 7
SameSiteMode
��7 C
.
��C D
Unspecified
��D O
;
��O P
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddAuthentication
�� -
(
��- . 
OrchardCoreBuilder
��. @
builder
��A H
)
��H I
{
�� 	
builder
�� 
.
�� !
ApplicationServices
�� '
.
��' (
AddAuthentication
��( 9
(
��9 :
)
��: ;
;
��; <
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &
services
��& .
=>
��/ 1
{
�� 
services
�� 
.
�� 
AddAuthentication
�� *
(
��* +
)
��+ ,
;
��, -
services
�� 
.
�� 
AddSingleton
�� %
<
��% &+
IAuthenticationSchemeProvider
��& C
,
��C D*
AuthenticationSchemeProvider
��E a
>
��a b
(
��b c
)
��c d
;
��d e
}
�� 
)
�� 
.
�� 
	Configure
�� 
(
�� 
app
�� 
=>
�� 
{
�� 
app
�� 
.
�� 
UseAuthentication
�� %
(
��% &
)
��& '
;
��' (
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddDataProtection
�� -
(
��- . 
OrchardCoreBuilder
��. @
builder
��A H
)
��H I
{
�� 	
builder
�� 
.
�� 
ConfigureServices
�� %
(
��% &
(
��& '
services
��' /
,
��/ 0
serviceProvider
��1 @
)
��@ A
=>
��B D
{
�� 
var
�� 
settings
�� 
=
�� 
serviceProvider
�� .
.
��. / 
GetRequiredService
��/ A
<
��A B
ShellSettings
��B O
>
��O P
(
��P Q
)
��Q R
;
��R S
var
�� 
options
�� 
=
�� 
serviceProvider
�� -
.
��- . 
GetRequiredService
��. @
<
��@ A
IOptions
��A I
<
��I J
ShellOptions
��J V
>
��V W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
var
�� 
	directory
�� 
=
�� 
new
��  #
DirectoryInfo
��$ 1
(
��1 2
Path
��2 6
.
��6 7
Combine
��7 >
(
��> ?
options
�� 
.
�� 
Value
�� !
.
��! "'
ShellsApplicationDataPath
��" ;
,
��; <
options
�� 
.
�� 
Value
�� !
.
��! "!
ShellsContainerName
��" 5
,
��5 6
settings
�� 
.
�� 
Name
�� !
,
��! "
$str
��# 8
)
��8 9
)
��9 :
;
��: ;
var
�� 

collection
�� 
=
��  
new
��! $
ServiceCollection
��% 6
(
��6 7
)
��7 8
.
�� 
AddDataProtection
�� &
(
��& '
)
��' (
.
�� %
PersistKeysToFileSystem
�� ,
(
��, -
	directory
��- 6
)
��6 7
.
��  
SetApplicationName
�� '
(
��' (
settings
��( 0
.
��0 1
Name
��1 5
)
��5 6
.
�� %
AddKeyManagementOptions
�� ,
(
��, -
o
��- .
=>
��/ 1
o
��2 3
.
��3 4
XmlEncryptor
��4 @
=
��A B
o
��C D
.
��D E
XmlEncryptor
��E Q
??
��R T
new
��U X
NullXmlEncryptor
��Y i
(
��i j
)
��j k
)
��k l
.
�� 
Services
�� 
;
�� 
services
�� 
.
�� 
	RemoveAll
�� "
<
��" #
IConfigureOptions
��# 4
<
��4 5"
KeyManagementOptions
��5 I
>
��I J
>
��J K
(
��K L
)
��L M
;
��M N
services
�� 
.
�� 
	RemoveAll
�� "
<
��" #
IConfigureOptions
��# 4
<
��4 5#
DataProtectionOptions
��5 J
>
��J K
>
��K L
(
��L M
)
��M N
;
��N O
services
�� 
.
�� 
Add
�� 
(
�� 

collection
�� '
)
��' (
;
��( )
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
} ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\ModularBackgroundService.cs
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
�� 
{
�� "
_httpContextAccessor
��  4
.
��4 5
HttpContext
��5 @
.
��@ A

SetBaseUrl
��A K
(
��K L
(
��L M
await
��M R
siteService
��S ^
.
��^ _"
GetSiteSettingsAsync
��_ s
(
��s t
)
��t u
)
��u v
.
��v w
BaseUrl
��w ~
)
��~ 
;�� �
}
�� 
catch
�� !
(
��" #
	Exception
��# ,
ex
��- /
)
��/ 0
when
��1 5
(
��6 7
!
��7 8
ex
��8 :
.
��: ;
IsFatal
��; B
(
��B C
)
��C D
)
��D E
{
�� 
_logger
��  '
.
��' (
LogError
��( 0
(
��0 1
ex
��1 3
,
��3 4
$str��5 �
,��� �
tenant��� �
)��� �
;��� �
}
�� 
}
�� 
try
�� 
{
�� 
_logger
�� #
.
��# $
LogInformation
��$ 2
(
��2 3
$str
��3 |
,
��| }
taskName��~ �
,��� �
tenant��� �
)��� �
;��� �
	scheduler
�� %
.
��% &
Run
��& )
(
��) *
)
��* +
;
��+ ,
await
�� !
task
��" &
.
��& '
DoWorkAsync
��' 2
(
��2 3
scope
��3 8
.
��8 9
ServiceProvider
��9 H
,
��H I
stoppingToken
��J W
)
��W X
;
��X Y
_logger
�� #
.
��# $
LogInformation
��$ 2
(
��2 3
$str
��3 
,�� �
taskName��� �
,��� �
tenant��� �
)��� �
;��� �
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
when
��- 1
(
��2 3
!
��3 4
ex
��4 6
.
��6 7
IsFatal
��7 >
(
��> ?
)
��? @
)
��@ A
{
�� 
_logger
�� #
.
��# $
LogError
��$ ,
(
��, -
ex
��- /
,
��/ 0
$str��1 �
,��� �
taskName��� �
,��� �
tenant��� �
)��� �
;��� �
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
UpdateAsync
�� &
(
��& '
IEnumerable
��' 2
<
��2 3
ShellContext
��3 ?
>
��? @
previousShells
��A O
,
��O P
IEnumerable
��Q \
<
��\ ]
ShellContext
��] i
>
��i j
runningShells
��k x
,
��x y 
CancellationToken��z �
stoppingToken��� �
)��� �
{
�� 	
var
�� 
referenceTime
�� 
=
�� 
DateTime
��  (
.
��( )
UtcNow
��) /
;
��/ 0
await
�� 
GetShellsToUpdate
�� #
(
��# $
previousShells
��$ 2
,
��2 3
runningShells
��4 A
)
��A B
.
��B C
ForEachAsync
��C O
(
��O P
async
��P U
shell
��V [
=>
��\ ^
{
�� 
var
�� 
tenant
�� 
=
�� 
shell
�� "
.
��" #
Settings
��# +
.
��+ ,
Name
��, 0
;
��0 1
if
�� 
(
�� 
stoppingToken
�� !
.
��! "%
IsCancellationRequested
��" 9
)
��9 :
{
�� 
return
�� 
;
�� 
}
�� "
_httpContextAccessor
�� $
.
��$ %
HttpContext
��% 0
=
��1 2
shell
��3 8
.
��8 9
CreateHttpContext
��9 J
(
��J K
)
��K L
;
��L M
var
�� 

shellScope
�� 
=
��  
await
��! &

_shellHost
��' 1
.
��1 2
GetScopeAsync
��2 ?
(
��? @
shell
��@ E
.
��E F
Settings
��F N
)
��N O
;
��O P
if
�� 
(
�� 

shellScope
�� 
.
�� 
ShellContext
�� +
.
��+ ,
Pipeline
��, 4
==
��5 7
null
��8 <
)
��< =
{
�� 
return
�� 
;
�� 
}
�� 
await
�� 

shellScope
��  
.
��  !

UsingAsync
��! +
(
��+ ,
async
��, 1
scope
��2 7
=>
��8 :
{
�� 
var
�� 
tasks
�� 
=
�� 
scope
��  %
.
��% &
ServiceProvider
��& 5
.
��5 6
GetServices
��6 A
<
��A B
IBackgroundTask
��B Q
>
��Q R
(
��R S
)
��S T
;
��T U
CleanSchedulers
�� #
(
��# $
tenant
��$ *
,
��* +
tasks
��, 1
)
��1 2
;
��2 3
if
�� 
(
�� 
!
�� 
tasks
�� 
.
�� 
Any
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
settingsProvider
�� (
=
��) *
scope
��+ 0
.
��0 1
ServiceProvider
��1 @
.
��@ A

GetService
��A K
<
��K L-
IBackgroundTaskSettingsProvider
��L k
>
��k l
(
��l m
)
��m n
;
��n o
_changeTokens
�� !
[
��! "
tenant
��" (
]
��( )
=
��* +
settingsProvider
��, <
?
��< =
.
��= >
ChangeToken
��> I
??
��J L
NullChangeToken
��M \
.
��\ ]
	Singleton
��] f
;
��f g
	ITimeZone
�� 
timeZone
�� &
=
��' (
null
��) -
;
��- .
var
�� 
siteService
�� #
=
��$ %
scope
��& +
.
��+ ,
ServiceProvider
��, ;
.
��; <

GetService
��< F
<
��F G
ISiteService
��G S
>
��S T
(
��T U
)
��U V
;
��V W
if
�� 
(
�� 
siteService
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
try
�� 
{
�� 
timeZone
�� $
=
��% &
_clock
��' -
.
��- .
GetTimeZone
��. 9
(
��9 :
(
��: ;
await
��; @
siteService
��A L
.
��L M"
GetSiteSettingsAsync
��M a
(
��a b
)
��b c
)
��c d
.
��d e

TimeZoneId
��e o
)
��o p
;
��p q
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
when
��- 1
(
��2 3
!
��3 4
ex
��4 6
.
��6 7
IsFatal
��7 >
(
��> ?
)
��? @
)
��@ A
{
�� 
_logger
�� #
.
��# $
LogError
��$ ,
(
��, -
ex
��- /
,
��/ 0
$str��1 �
,��� �
tenant��� �
)��� �
;��� �
}
�� 
}
�� 
foreach
�� 
(
�� 
var
��  
task
��! %
in
��& (
tasks
��) .
)
��. /
{
�� 
var
�� 
taskName
�� $
=
��% &
task
��' +
.
��+ ,
GetTaskName
��, 7
(
��7 8
)
��8 9
;
��9 :
if
�� 
(
�� 
!
�� 
_schedulers
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
tenant
��5 ;
+
��< =
taskName
��> F
,
��F G
out
��H K
var
��L O
	scheduler
��P Y
)
��Y Z
)
��Z [
{
�� 
_schedulers
�� '
[
��' (
tenant
��( .
+
��/ 0
taskName
��1 9
]
��9 :
=
��; <
	scheduler
��= F
=
��G H
new
��I L%
BackgroundTaskScheduler
��M d
(
��d e
tenant
��e k
,
��k l
taskName
��m u
,
��u v
referenceTime��w �
,��� �
_clock��� �
)��� �
;��� �
}
�� 
	scheduler
�� !
.
��! "
TimeZone
��" *
=
��+ ,
timeZone
��- 5
;
��5 6
if
�� 
(
�� 
!
�� 
	scheduler
�� &
.
��& '
Released
��' /
&&
��0 2
	scheduler
��3 <
.
��< =
Updated
��= D
)
��D E
{
�� 
continue
�� $
;
��$ %
}
�� $
BackgroundTaskSettings
�� .
settings
��/ 7
=
��8 9
null
��: >
;
��> ?
if
�� 
(
�� 
settingsProvider
�� ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
try
�� 
{
�� 
settings
��  (
=
��) *
await
��+ 0
settingsProvider
��1 A
.
��A B
GetSettingsAsync
��B R
(
��R S
task
��S W
)
��W X
;
��X Y
}
�� 
catch
�� !
(
��" #
	Exception
��# ,
ex
��- /
)
��/ 0
when
��1 5
(
��6 7
!
��7 8
ex
��8 :
.
��: ;
IsFatal
��; B
(
��B C
)
��C D
)
��D E
{
�� 
_logger
��  '
.
��' (
LogError
��( 0
(
��0 1
ex
��1 3
,
��3 4
$str��5 �
,��� �
taskName��� �
,��� �
tenant��� �
)��� �
;��� �
}
�� 
}
�� 
settings
��  
??=
��! $
task
��% )
.
��) * 
GetDefaultSettings
��* <
(
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
	scheduler
�� %
.
��% &
Released
��& .
||
��/ 1
!
��2 3
	scheduler
��3 <
.
��< =
Settings
��= E
.
��E F
Schedule
��F N
.
��N O
Equals
��O U
(
��U V
settings
��V ^
.
��^ _
Schedule
��_ g
)
��g h
)
��h i
{
�� 
	scheduler
�� %
.
��% &
ReferenceTime
��& 3
=
��4 5
referenceTime
��6 C
;
��C D
}
�� 
	scheduler
�� !
.
��! "
Settings
��" *
=
��+ ,
settings
��- 5
;
��5 6
	scheduler
�� !
.
��! "
Released
��" *
=
��+ ,
false
��- 2
;
��2 3
	scheduler
�� !
.
��! "
Updated
��" )
=
��* +
true
��, 0
;
��0 1
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
	WaitAsync
�� $
(
��$ %
Task
��% )
pollingDelay
��* 6
,
��6 7
CancellationToken
��8 I
stoppingToken
��J W
)
��W X
{
�� 	
try
�� 
{
�� 
await
�� 
Task
�� 
.
�� 
Delay
��  
(
��  !
MinIdleTime
��! ,
,
��, -
stoppingToken
��. ;
)
��; <
;
��< =
await
�� 
pollingDelay
�� "
;
��" #
}
�� 
catch
�� 
(
�� (
OperationCanceledException
�� -
)
��- .
{
�� 
}
�� 
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
ShellContext
�� (
>
��( )
GetRunningShells
��* :
(
��: ;
)
��; <
{
�� 	
return
�� 

_shellHost
�� 
.
�� 
ListShellContexts
�� /
(
��/ 0
)
��0 1
.
��1 2
Where
��2 7
(
��7 8
s
��8 9
=>
��: <
s
��= >
.
��> ?
Settings
��? G
.
��G H
State
��H M
==
��N P
TenantState
��Q \
.
��\ ]
Running
��] d
&&
��e g
s
��h i
.
��i j
Pipeline
��j r
!=
��s u
null
��v z
)
��z {
.
��{ |
ToArray��| �
(��� �
)��� �
;��� �
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
ShellContext
�� (
>
��( )
GetShellsToRun
��* 8
(
��8 9
IEnumerable
��9 D
<
��D E
ShellContext
��E Q
>
��Q R
shells
��S Y
)
��Y Z
{
�� 	
var
�� 
tenantsToRun
�� 
=
�� 
_schedulers
�� *
.
��* +
Where
��+ 0
(
��0 1
s
��1 2
=>
��3 5
s
��6 7
.
��7 8
Value
��8 =
.
��= >
CanRun
��> D
(
��D E
)
��E F
)
��F G
.
��G H
Select
��H N
(
��N O
s
��O P
=>
��Q S
s
��T U
.
��U V
Value
��V [
.
��[ \
Tenant
��\ b
)
��b c
.
��c d
Distinct
��d l
(
��l m
)
��m n
.
��n o
ToArray
��o v
(
��v w
)
��w x
;
��x y
return
�� 
shells
�� 
.
�� 
Where
�� 
(
��  
s
��  !
=>
��" $
tenantsToRun
��% 1
.
��1 2
Contains
��2 :
(
��: ;
s
��; <
.
��< =
Settings
��= E
.
��E F
Name
��F J
)
��J K
)
��K L
.
��L M
ToArray
��M T
(
��T U
)
��U V
;
��V W
}
�� 	
private
�� 
IEnumerable
�� 
<
�� 
ShellContext
�� (
>
��( )
GetShellsToUpdate
��* ;
(
��; <
IEnumerable
��< G
<
��G H
ShellContext
��H T
>
��T U
previousShells
��V d
,
��d e
IEnumerable
��f q
<
��q r
ShellContext
��r ~
>
��~ 
runningShells��� �
)��� �
{
�� 	
var
�� 
released
�� 
=
�� 
previousShells
�� )
.
��) *
Where
��* /
(
��/ 0
s
��0 1
=>
��2 4
s
��5 6
.
��6 7
Released
��7 ?
)
��? @
.
��@ A
Select
��A G
(
��G H
s
��H I
=>
��J L
s
��M N
.
��N O
Settings
��O W
.
��W X
Name
��X \
)
��\ ]
.
��] ^
ToArray
��^ e
(
��e f
)
��f g
;
��g h
if
�� 
(
�� 
released
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
UpdateSchedulers
��  
(
��  !
released
��! )
,
��) *
s
��+ ,
=>
��- /
s
��0 1
.
��1 2
Released
��2 :
=
��; <
true
��= A
)
��A B
;
��B C
}
�� 
var
�� 
changed
�� 
=
�� 
_changeTokens
�� '
.
��' (
Where
��( -
(
��- .
t
��. /
=>
��0 2
t
��3 4
.
��4 5
Value
��5 :
.
��: ;

HasChanged
��; E
)
��E F
.
��F G
Select
��G M
(
��M N
t
��N O
=>
��P R
t
��S T
.
��T U
Key
��U X
)
��X Y
.
��Y Z
ToArray
��Z a
(
��a b
)
��b c
;
��c d
if
�� 
(
�� 
changed
�� 
.
�� 
Any
�� 
(
�� 
)
�� 
)
�� 
{
�� 
UpdateSchedulers
��  
(
��  !
changed
��! (
,
��( )
s
��* +
=>
��, .
s
��/ 0
.
��0 1
Updated
��1 8
=
��9 :
false
��; @
)
��@ A
;
��A B
}
�� 
var
�� 
valid
�� 
=
�� 
previousShells
�� &
.
��& '
Select
��' -
(
��- .
s
��. /
=>
��0 2
s
��3 4
.
��4 5
Settings
��5 =
.
��= >
Name
��> B
)
��B C
.
��C D
Except
��D J
(
��J K
released
��K S
)
��S T
.
��T U
Except
��U [
(
��[ \
changed
��\ c
)
��c d
;
��d e
var
�� 
tenantsToUpdate
�� 
=
��  !
runningShells
��" /
.
��/ 0
Select
��0 6
(
��6 7
s
��7 8
=>
��9 ;
s
��< =
.
��= >
Settings
��> F
.
��F G
Name
��G K
)
��K L
.
��L M
Except
��M S
(
��S T
valid
��T Y
)
��Y Z
.
��Z [
ToArray
��[ b
(
��b c
)
��c d
;
��d e
return
�� 
runningShells
��  
.
��  !
Where
��! &
(
��& '
s
��' (
=>
��) +
tenantsToUpdate
��, ;
.
��; <
Contains
��< D
(
��D E
s
��E F
.
��F G
Settings
��G O
.
��O P
Name
��P T
)
��T U
)
��U V
.
��V W
ToArray
��W ^
(
��^ _
)
��_ `
;
��` a
}
�� 	
private
�� 
IEnumerable
�� 
<
�� %
BackgroundTaskScheduler
�� 3
>
��3 4 
GetSchedulersToRun
��5 G
(
��G H
string
��H N
tenant
��O U
)
��U V
{
�� 	
return
�� 
_schedulers
�� 
.
�� 
Where
�� $
(
��$ %
s
��% &
=>
��' )
s
��* +
.
��+ ,
Value
��, 1
.
��1 2
Tenant
��2 8
==
��9 ;
tenant
��< B
&&
��C E
s
��F G
.
��G H
Value
��H M
.
��M N
CanRun
��N T
(
��T U
)
��U V
)
��V W
.
��W X
Select
��X ^
(
��^ _
s
��_ `
=>
��a c
s
��d e
.
��e f
Value
��f k
)
��k l
.
��l m
ToArray
��m t
(
��t u
)
��u v
;
��v w
}
�� 	
private
�� 
void
�� 
UpdateSchedulers
�� %
(
��% &
IEnumerable
��& 1
<
��1 2
string
��2 8
>
��8 9
tenants
��: A
,
��A B
Action
��C I
<
��I J%
BackgroundTaskScheduler
��J a
>
��a b
action
��c i
)
��i j
{
�� 	
var
�� 
keys
�� 
=
�� 
_schedulers
�� "
.
��" #
Where
��# (
(
��( )
kv
��) +
=>
��, .
tenants
��/ 6
.
��6 7
Contains
��7 ?
(
��? @
kv
��@ B
.
��B C
Value
��C H
.
��H I
Tenant
��I O
)
��O P
)
��P Q
.
��Q R
Select
��R X
(
��X Y
kv
��Y [
=>
��\ ^
kv
��_ a
.
��a b
Key
��b e
)
��e f
.
��f g
ToArray
��g n
(
��n o
)
��o p
;
��p q
foreach
�� 
(
�� 
var
�� 
key
�� 
in
�� 
keys
��  $
)
��$ %
{
�� 
if
�� 
(
�� 
_schedulers
�� 
.
��  
TryGetValue
��  +
(
��+ ,
key
��, /
,
��/ 0
out
��1 4%
BackgroundTaskScheduler
��5 L
	scheduler
��M V
)
��V W
)
��W X
{
�� 
action
�� 
(
�� 
	scheduler
�� $
)
��$ %
;
��% &
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
CleanSchedulers
�� $
(
��$ %
string
��% +
tenant
��, 2
,
��2 3
IEnumerable
��4 ?
<
��? @
IBackgroundTask
��@ O
>
��O P
tasks
��Q V
)
��V W
{
�� 	
var
�� 
	validKeys
�� 
=
�� 
tasks
�� !
.
��! "
Select
��" (
(
��( )
task
��) -
=>
��. 0
tenant
��1 7
+
��8 9
task
��: >
.
��> ?
GetTaskName
��? J
(
��J K
)
��K L
)
��L M
.
��M N
ToArray
��N U
(
��U V
)
��V W
;
��W X
var
�� 
keys
�� 
=
�� 
_schedulers
�� "
.
��" #
Where
��# (
(
��( )
kv
��) +
=>
��, .
kv
��/ 1
.
��1 2
Value
��2 7
.
��7 8
Tenant
��8 >
==
��? A
tenant
��B H
)
��H I
.
��I J
Select
��J P
(
��P Q
kv
��Q S
=>
��T V
kv
��W Y
.
��Y Z
Key
��Z ]
)
��] ^
.
��^ _
ToArray
��_ f
(
��f g
)
��g h
;
��h i
foreach
�� 
(
�� 
var
�� 
key
�� 
in
�� 
keys
��  $
)
��$ %
{
�� 
if
�� 
(
�� 
!
�� 
	validKeys
�� 
.
�� 
Contains
�� '
(
��' (
key
��( +
)
��+ ,
)
��, -
{
�� 
_schedulers
�� 
.
��  
	TryRemove
��  )
(
��) *
key
��* -
,
��- .
out
��/ 2
var
��3 6
	scheduler
��7 @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 	
}
�� 
internal
�� 
static
�� 
class
�� #
HttpContextExtensions
�� /
{
�� 
public
�� 
static
�� 
void
�� 

SetBaseUrl
�� %
(
��% &
this
��& *
HttpContext
��+ 6
context
��7 >
,
��> ?
string
��@ F
baseUrl
��G N
)
��N O
{
�� 	
if
�� 
(
�� 
Uri
�� 
.
�� 
	TryCreate
�� 
(
�� 
baseUrl
�� %
,
��% &
UriKind
��' .
.
��. /
Absolute
��/ 7
,
��7 8
out
��9 <
var
��= @
uri
��A D
)
��D E
)
��E F
{
�� 
context
�� 
.
�� 
Request
�� 
.
��  
Scheme
��  &
=
��' (
uri
��) ,
.
��, -
Scheme
��- 3
;
��3 4
context
�� 
.
�� 
Request
�� 
.
��  
Host
��  $
=
��% &
new
��' *

HostString
��+ 5
(
��5 6
uri
��6 9
.
��9 :
Host
��: >
,
��> ?
uri
��@ C
.
��C D
Port
��D H
)
��H I
;
��I J
context
�� 
.
�� 
Request
�� 
.
��  
PathBase
��  (
=
��) *
uri
��+ .
.
��. /
AbsolutePath
��/ ;
;
��; <
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� .
(
��. /
uri
��/ 2
.
��2 3
Query
��3 8
)
��8 9
)
��9 :
{
�� 
context
�� 
.
�� 
Request
�� #
.
��# $
QueryString
��$ /
=
��0 1
new
��2 5
QueryString
��6 A
(
��A B
uri
��B E
.
��E F
Query
��F K
)
��K L
;
��L M
}
�� 
}
�� 
}
�� 	
}
�� 
internal
�� 
static
�� 
class
�� 
ShellExtensions
�� )
{
�� 
public
�� 
static
�� 
HttpContext
�� !
CreateHttpContext
��" 3
(
��3 4
this
��4 8
ShellContext
��9 E
shell
��F K
)
��K L
{
�� 	
var
�� 
context
�� 
=
�� 
shell
�� 
.
��  
Settings
��  (
.
��( )
CreateHttpContext
��) :
(
��: ;
)
��; <
;
��< =
context
�� 
.
�� 
Features
�� 
.
�� 
Set
��  
(
��  !
new
��! $!
ShellContextFeature
��% 8
{
�� 
ShellContext
�� 
=
�� 
shell
�� $
,
��$ %
OriginalPathBase
��  
=
��! "
String
��# )
.
��) *
Empty
��* /
,
��/ 0
OriginalPath
�� 
=
�� 
$str
�� "
}
�� 
)
�� 
;
�� 
return
�� 
context
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
HttpContext
�� !
CreateHttpContext
��" 3
(
��3 4
this
��4 8
ShellSettings
��9 F
settings
��G O
)
��O P
{
�� 	
var
�� 
context
�� 
=
�� 
new
��  
DefaultHttpContext
�� 0
(
��0 1
)
��1 2
.
��2 3#
UseShellScopeServices
��3 H
(
��H I
)
��I J
;
��J K
context
�� 
.
�� 
Request
�� 
.
�� 
Scheme
�� "
=
��# $
$str
��% ,
;
��, -
var
�� 
urlHost
�� 
=
�� 
settings
�� "
.
��" #
RequestUrlHost
��# 1
?
��1 2
.
��2 3
Split
��3 8
(
��8 9
$char
��9 <
,
��< = 
StringSplitOptions
�� "
.
��" # 
RemoveEmptyEntries
��# 5
)
��5 6
.
��6 7
FirstOrDefault
��7 E
(
��E F
)
��F G
;
��G H
context
�� 
.
�� 
Request
�� 
.
�� 
Host
��  
=
��! "
new
��# &

HostString
��' 1
(
��1 2
urlHost
��2 9
??
��: <
$str
��= H
)
��H I
;
��I J
if
�� 
(
�� 
!
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� *
(
��* +
settings
��+ 3
.
��3 4
RequestUrlPrefix
��4 D
)
��D E
)
��E F
{
�� 
context
�� 
.
�� 
Request
�� 
.
��  
PathBase
��  (
=
��) *
$str
��+ .
+
��/ 0
settings
��1 9
.
��9 :
RequestUrlPrefix
��: J
;
��J K
}
�� 
context
�� 
.
�� 
Request
�� 
.
�� 
Path
��  
=
��! "
$str
��# &
;
��& '
context
�� 
.
�� 
Items
�� 
[
�� 
$str
�� (
]
��( )
=
��* +
true
��, 0
;
��0 1
return
�� 
context
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\ModularTenantContainerMiddleware.cs
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
}?? �A
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\ModularTenantRouterMiddleware.cs
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
SemaphoreSlim	t �
>
� �
(
� �
)
� �
;
� �
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
remainingPath	55w �
)
55� �
;
55� �
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
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\PoweredByMiddleware.cs
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
}00 �9
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
}]] �>
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Modules\Services\LocalClock.cs
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
}ee �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\CompositionStrategy.cs
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
}CC �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\Extensions\ServiceCollectionExtensions.cs
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
} �<
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\Extensions\ServiceProviderExtensions.cs
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
serviceCollection	x �
)
� �
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
ImplementationFactory	//m �
!=
//� �
null
//� �
)
//� �
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
}tt �6
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\FeatureAwareServiceCollection.cs
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
ServiceCollection	 �
>
� �
(
� �
)
� �
;
� �
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
}hh ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\ShellContainerFactory.cs
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
_applicationFeature	RR �
.
RR� �
Id
RR� �
)
RR� �
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
configureOrderProperty	tty �
)
tt� �
;
tt� �
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
configureOrderProperty	zzy �
)
zz� �
;
zz� �
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
�� #
.
��# $
AddSingleton
��$ 0
(
��0 1
sp
��1 3
=>
��4 6
{
�� 
var
�� 
shellSettings
�� !
=
��" #
sp
��$ &
.
��& ' 
GetRequiredService
��' 9
<
��9 :
ShellSettings
��: G
>
��G H
(
��H I
)
��I J
;
��J K
return
�� 
shellSettings
�� $
.
��$ % 
ShellConfiguration
��% 7
;
��7 8
}
�� 
)
�� 
;
�� 
var
�� #
moduleServiceProvider
�� %
=
��& '%
moduleServiceCollection
��( ?
.
��? @"
BuildServiceProvider
��@ T
(
��T U
true
��U Y
)
��Y Z
;
��Z [
var
�� +
featureAwareServiceCollection
�� -
=
��. /
new
��0 3+
FeatureAwareServiceCollection
��4 Q
(
��Q R%
tenantServiceCollection
��R i
)
��i j
;
��j k
var
�� 
startups
�� 
=
�� #
moduleServiceProvider
�� 0
.
��0 1
GetServices
��1 <
<
��< =
IStartup
��= E
>
��E F
(
��F G
)
��G H
;
��H I
startups
�� 
=
�� 
startups
�� 
.
��  
OrderBy
��  '
(
��' (
s
��( )
=>
��* ,
s
��- .
.
��. /
Order
��/ 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
var
�� 
startup
��  
in
��! #
startups
��$ ,
)
��, -
{
�� 
var
�� 
feature
�� 
=
�� 
	blueprint
�� '
.
��' (
Dependencies
��( 4
.
��4 5
FirstOrDefault
��5 C
(
��C D
x
��D E
=>
��F H
x
��I J
.
��J K
Key
��K N
==
��O Q
startup
��R Y
.
��Y Z
GetType
��Z a
(
��a b
)
��b c
)
��c d
.
��d e
Value
��e j
?
��j k
.
��k l
FeatureInfo
��l w
;
��w x+
featureAwareServiceCollection
�� -
.
��- .
SetCurrentFeature
��. ?
(
��? @
feature
��@ G
??
��H J!
_applicationFeature
��K ^
)
��^ _
;
��_ `
startup
�� 
.
�� 
ConfigureServices
�� )
(
��) *+
featureAwareServiceCollection
��* G
)
��G H
;
��H I
}
�� 
(
�� #
moduleServiceProvider
�� "
as
��# %
IDisposable
��& 1
)
��1 2
.
��2 3
Dispose
��3 :
(
��: ;
)
��; <
;
��< =
var
�� "
shellServiceProvider
�� $
=
��% &%
tenantServiceCollection
��' >
.
��> ?"
BuildServiceProvider
��? S
(
��S T
true
��T X
)
��X Y
;
��Y Z
var
�� !
typeFeatureProvider
�� #
=
��$ %"
shellServiceProvider
��& :
.
��: ; 
GetRequiredService
��; M
<
��M N"
ITypeFeatureProvider
��N b
>
��b c
(
��c d
)
��d e
;
��e f
foreach
�� 
(
�� 
var
�� &
featureServiceCollection
�� 1
in
��2 4+
featureAwareServiceCollection
��5 R
.
��R S 
FeatureCollections
��S e
)
��e f
{
�� 
foreach
�� 
(
�� 
var
�� 
serviceDescriptor
�� .
in
��/ 1&
featureServiceCollection
��2 J
.
��J K
Value
��K P
)
��P Q
{
�� 
var
�� 
type
�� 
=
�� 
serviceDescriptor
�� 0
.
��0 1#
GetImplementationType
��1 F
(
��F G
)
��G H
;
��H I
if
�� 
(
�� 
type
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
var
�� 
feature
�� #
=
��$ %&
featureServiceCollection
��& >
.
��> ?
Key
��? B
;
��B C
if
�� 
(
�� 
feature
�� #
==
��$ &!
_applicationFeature
��' :
)
��: ;
{
�� 
var
�� 
	attribute
��  )
=
��* +
type
��, 0
.
��0 1!
GetCustomAttributes
��1 D
<
��D E
FeatureAttribute
��E U
>
��U V
(
��V W
false
��W \
)
��\ ]
.
��] ^
FirstOrDefault
��^ l
(
��l m
)
��m n
;
��n o
if
�� 
(
��  
	attribute
��  )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
feature
��  '
=
��( )&
featureServiceCollection
��* B
.
��B C
Key
��C F
.
��F G
	Extension
��G P
.
��P Q
Features
��Q Y
.
��$ %
FirstOrDefault
��% 3
(
��3 4
f
��4 5
=>
��6 8
f
��9 :
.
��: ;
Id
��; =
==
��> @
	attribute
��A J
.
��J K
FeatureName
��K V
)
��V W
??
��$ &
feature
��' .
;
��. /
}
�� 
}
�� !
typeFeatureProvider
�� +
.
��+ ,
TryAdd
��, 2
(
��2 3
type
��3 7
,
��7 8
feature
��9 @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 
return
�� "
shellServiceProvider
�� '
;
��' (
}
�� 	
private
�� 
void
�� &
EnsureApplicationFeature
�� -
(
��- .
)
��. /
{
�� 	
if
�� 
(
�� !
_applicationFeature
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
lock
�� 
(
�� 
this
�� 
)
�� 
{
�� 
if
�� 
(
�� !
_applicationFeature
�� +
==
��, .
null
��/ 3
)
��3 4
{
�� !
_applicationFeature
�� +
=
��, -
_extensionManager
��. ?
.
��? @
GetFeatures
��@ K
(
��K L
)
��L M
.
�� 
FirstOrDefault
�� +
(
��+ ,
f
��, -
=>
��. 0
f
��1 2
.
��2 3
Id
��3 5
==
��6 8!
_hostingEnvironment
��9 L
.
��L M
ApplicationName
��M \
)
��\ ]
;
��] ^
}
�� 
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �;
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\ShellContextFactory.cs
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
}hh �)
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Builders\StartupBaseMock.cs
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
}QQ �*
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Configuration\ShellConfigurationSources.cs
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
}JJ �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Configuration\ShellsConfigurationSources.cs
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
} �%
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Configuration\ShellsSettingsSources.cs
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
}EE �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Descriptor\Settings\AllFeaturesShellDescriptorManager.cs
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
ShellParameter	$$} �
>
$$� �

parameters
$$� �
)
$$� �
{%% 	
return&& 
Task&& 
.&& 
CompletedTask&& %
;&&% &
}'' 	
}(( 
})) �!
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Descriptor\Settings\ConfiguredFeaturesShellDescriptorManager.cs
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
ShellParameter	..} �
>
..� �

parameters
..� �
)
..� �
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
}88 �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Descriptor\Settings\SetFeaturesShellDescriptorManager.cs
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
ShellParameter	##} �
>
##� �

parameters
##� �
)
##� �
{$$ 	
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
}'' 
}(( �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Distributed\DistributedContext.cs
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
}II ��
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Distributed\DistributedShellHostedService.cs
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
ShellIdentifier	""w �
>
""� �
(
""� �
)
""� �
;
""� �
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
SemaphoreSlim	##t �
>
##� �
(
##� �
)
##� �
;
##� �
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
�� &
=
��' (
await
��) .
distributedCache
��/ ?
.
��? @
GetStringAsync
��@ N
(
��N O
ShellCreatedIdKey
��O `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
when
��) -
(
��. /
!
��/ 0
ex
��0 2
.
��2 3
IsFatal
��3 :
(
��: ;
)
��; <
)
��< =
{
�� 
_logger
�� 
.
��  
LogError
��  (
(
��( )
ex
��) +
,
��+ ,
$str��- �
)��� �
;��� �
continue
��  
;
��  !
}
�� 
var
�� 
allSettings
�� #
=
��$ %

_shellHost
��& 0
.
��0 1
GetAllSettings
��1 ?
(
��? @
)
��@ A
.
��A B
ToList
��B H
(
��H I
)
��I J
;
��J K
if
�� 
(
�� 
shellCreatedId
�� &
!=
��' )
null
��* .
&&
��/ 1
_shellCreatedId
��2 A
!=
��B D
shellCreatedId
��E S
)
��S T
{
�� 
var
�� 
names
�� !
=
��" #
(
��$ %
await
��% *#
_shellSettingsManager
��+ @
.
��@ A$
LoadSettingsNamesAsync
��A W
(
��W X
)
��X Y
)
��Y Z
.
�� 
Except
�� #
(
��# $
allSettings
��$ /
.
��/ 0
Select
��0 6
(
��6 7
s
��7 8
=>
��9 ;
s
��< =
.
��= >
Name
��> B
)
��B C
)
��C D
.
�� 
ToArray
�� $
(
��$ %
)
��% &
;
��& '
foreach
�� 
(
��  !
var
��! $
name
��% )
in
��* ,
names
��- 2
)
��2 3
{
�� 
allSettings
�� '
.
��' (
Add
��( +
(
��+ ,
await
��, 1#
_shellSettingsManager
��2 G
.
��G H
LoadSettingsAsync
��H Y
(
��Y Z
name
��Z ^
)
��^ _
)
��_ `
;
��` a
}
�� 
}
�� 
var
�� 
_busyStartTime
�� &
=
��' (
DateTime
��) 1
.
��1 2
UtcNow
��2 8
;
��8 9
var
�� 
syncingSuccess
�� &
=
��' (
true
��) -
;
��- .
foreach
�� 
(
�� 
var
��  
settings
��! )
in
��* ,
allSettings
��- 8
)
��8 9
{
�� 
if
�� 
(
�� 
!
�� 
await
�� ""
TryWaitAfterBusyTime
��# 7
(
��7 8
stoppingToken
��8 E
)
��E F
)
��F G
{
�� 
break
�� !
;
��! "
}
�� 
var
�� 
	semaphore
�� %
=
��& '
_semaphores
��( 3
.
��3 4
GetOrAdd
��4 <
(
��< =
settings
��= E
.
��E F
Name
��F J
,
��J K
name
��L P
=>
��Q S
new
��T W
SemaphoreSlim
��X e
(
��e f
$num
��f g
)
��g h
)
��h i
;
��i j
await
�� 
	semaphore
�� '
.
��' (
	WaitAsync
��( 1
(
��1 2
)
��2 3
;
��3 4
try
�� 
{
�� 
var
�� 
	releaseId
��  )
=
��* +
await
��, 1
distributedCache
��2 B
.
��B C
GetStringAsync
��C Q
(
��Q R
ReleaseIdKey
��R ^
(
��^ _
settings
��_ g
.
��g h
Name
��h l
)
��l m
)
��m n
;
��n o
if
�� 
(
��  
	releaseId
��  )
!=
��* ,
null
��- 1
)
��1 2
{
�� 
var
��  #

identifier
��$ .
=
��/ 0
_identifiers
��1 =
.
��= >
GetOrAdd
��> F
(
��F G
settings
��G O
.
��O P
Name
��P T
,
��T U
name
��V Z
=>
��[ ]
new
��^ a
ShellIdentifier
��b q
(
��q r
)
��r s
)
��s t
;
��t u
if
��  "
(
��# $

identifier
��$ .
.
��. /
	ReleaseId
��/ 8
!=
��9 ;
	releaseId
��< E
)
��E F
{
��  !

identifier
��$ .
.
��. /
	ReleaseId
��/ 8
=
��9 :
	releaseId
��; D
;
��D E
await
��$ )

_shellHost
��* 4
.
��4 5&
ReleaseShellContextAsync
��5 M
(
��M N
settings
��N V
,
��V W
eventSource
��X c
:
��c d
false
��e j
)
��j k
;
��k l
}
��  !
}
�� 
var
�� 
reloadId
��  (
=
��) *
await
��+ 0
distributedCache
��1 A
.
��A B
GetStringAsync
��B P
(
��P Q
ReloadIdKey
��Q \
(
��\ ]
settings
��] e
.
��e f
Name
��f j
)
��j k
)
��k l
;
��l m
if
�� 
(
��  
reloadId
��  (
!=
��) +
null
��, 0
)
��0 1
{
�� 
var
��  #

identifier
��$ .
=
��/ 0
_identifiers
��1 =
.
��= >
GetOrAdd
��> F
(
��F G
settings
��G O
.
��O P
Name
��P T
,
��T U
name
��V Z
=>
��[ ]
new
��^ a
ShellIdentifier
��b q
(
��q r
)
��r s
)
��s t
;
��t u
if
��  "
(
��# $

identifier
��$ .
.
��. /
ReloadId
��/ 7
!=
��8 :
reloadId
��; C
)
��C D
{
��  !

identifier
��$ .
.
��. /
ReloadId
��/ 7
=
��8 9
reloadId
��: B
;
��B C
await
��$ )

_shellHost
��* 4
.
��4 5%
ReloadShellContextAsync
��5 L
(
��L M
settings
��M U
,
��U V
eventSource
��W b
:
��b c
false
��d i
)
��i j
;
��j k
}
��  !
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
when
��- 1
(
��2 3
!
��3 4
ex
��4 6
.
��6 7
IsFatal
��7 >
(
��> ?
)
��? @
)
��@ A
{
�� 
syncingSuccess
�� *
=
��+ ,
false
��- 2
;
��2 3
_logger
�� #
.
��# $
LogError
��$ ,
(
��, -
ex
��- /
,
��/ 0
$str��1 �
,��� �
settings��� �
.��� �
Name��� �
)��� �
;��� �
break
�� !
;
��! "
}
�� 
finally
�� 
{
�� 
	semaphore
�� %
.
��% &
Release
��& -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 
if
�� 
(
�� 
syncingSuccess
�� &
)
��& '
{
�� 
_shellChangedId
�� '
=
��( )
shellChangedId
��* 8
;
��8 9
_shellCreatedId
�� '
=
��( )
shellCreatedId
��* 8
;
��8 9
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
when
��% )
(
��* +
!
��+ ,
ex
��, .
.
��. /
IsFatal
��/ 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
,
��' (
$str
��) P
,
��P Q
nameof
��R X
(
��X Y+
DistributedShellHostedService
��Y v
)
��v w
)
��w x
;
��x y
}
�� 
}
�� 
_terminated
�� 
=
�� 
true
�� 
;
�� 
_context
�� 
?
�� 
.
�� 
Release
�� 
(
�� 
)
�� 
;
��  
_defaultContext
�� 
=
�� 
null
�� "
;
��" #
_context
�� 
=
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
LoadingAsync
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
_terminated
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
defautSettings
�� 
=
��  
await
��! &#
_shellSettingsManager
��' <
.
��< =
LoadSettingsAsync
��= N
(
��N O
ShellHelper
��O Z
.
��Z [
DefaultShellName
��[ k
)
��k l
;
��l m
if
�� 
(
�� 
defautSettings
�� 
?
�� 
.
��  
State
��  %
!=
��& (
TenantState
��) 4
.
��4 5
Running
��5 <
)
��< =
{
�� 
return
�� 
;
�� 
}
�� 
using
�� 
var
�� 
context
�� 
=
�� 
await
��  %+
CreateDistributedContextAsync
��& C
(
��C D
defautSettings
��D R
)
��R S
;
��S T
var
�� 
distributedCache
��  
=
��! "
context
��# *
?
��* +
.
��+ ,
DistributedCache
��, <
;
��< =
if
�� 
(
�� 
distributedCache
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
;
�� 
}
�� 
try
�� 
{
�� 
var
�� 
shellChangedId
�� "
=
��# $
await
��% *
distributedCache
��+ ;
.
��; <
GetStringAsync
��< J
(
��J K
ShellChangedIdKey
��K \
)
��\ ]
;
��] ^
var
�� 
shellCreatedId
�� "
=
��# $
await
��% *
distributedCache
��+ ;
.
��; <
GetStringAsync
��< J
(
��J K
ShellCreatedIdKey
��K \
)
��\ ]
;
��] ^
var
�� 
names
�� 
=
�� 
await
�� !#
_shellSettingsManager
��" 7
.
��7 8$
LoadSettingsNamesAsync
��8 N
(
��N O
)
��O P
;
��P Q
foreach
�� 
(
�� 
var
�� 
name
�� !
in
��" $
names
��% *
)
��* +
{
�� 
var
�� 
	releaseId
�� !
=
��" #
await
��$ )
distributedCache
��* :
.
��: ;
GetStringAsync
��; I
(
��I J
ReleaseIdKey
��J V
(
��V W
name
��W [
)
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
	releaseId
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
var
�� 

identifier
�� &
=
��' (
_identifiers
��) 5
.
��5 6
GetOrAdd
��6 >
(
��> ?
name
��? C
,
��C D
name
��E I
=>
��J L
new
��M P
ShellIdentifier
��Q `
(
��` a
)
��a b
)
��b c
;
��c d

identifier
�� "
.
��" #
	ReleaseId
��# ,
=
��- .
	releaseId
��/ 8
;
��8 9
}
�� 
var
�� 
reloadId
��  
=
��! "
await
��# (
distributedCache
��) 9
.
��9 :
GetStringAsync
��: H
(
��H I
ReloadIdKey
��I T
(
��T U
name
��U Y
)
��Y Z
)
��Z [
;
��[ \
if
�� 
(
�� 
reloadId
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
var
�� 

identifier
�� &
=
��' (
_identifiers
��) 5
.
��5 6
GetOrAdd
��6 >
(
��> ?
name
��? C
,
��C D
name
��E I
=>
��J L
new
��M P
ShellIdentifier
��Q `
(
��` a
)
��a b
)
��b c
;
��c d

identifier
�� "
.
��" #
ReloadId
��# +
=
��, -
reloadId
��. 6
;
��6 7
}
�� 
}
�� 
_shellChangedId
�� 
=
��  !
shellChangedId
��" 0
;
��0 1
_shellCreatedId
�� 
=
��  !
shellCreatedId
��" 0
;
��0 1
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
when
��! %
(
��& '
!
��' (
ex
��( *
.
��* +
IsFatal
��+ 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
,
��# $
$str
��% g
)
��g h
;
��h i
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
ReleasingAsync
�� (
(
��( )
string
��) /
name
��0 4
)
��4 5
{
�� 	
if
�� 
(
�� 
_terminated
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 

_shellHost
�� 
.
��  
TryGetShellContext
�� .
(
��. /
ShellHelper
��/ :
.
��: ;
DefaultShellName
��; K
,
��K L
out
��M P
var
��Q T
defaultContext
��U c
)
��c d
||
��e g
defaultContext
�� 
.
�� 
Settings
�� '
.
��' (
State
��( -
!=
��. 0
TenantState
��1 <
.
��< =
Running
��= D
)
��D E
{
�� 
return
�� 
;
�� 
}
�� 
using
�� 
var
�� 
context
�� 
=
�� 
await
��  %4
&AcquireOrCreateDistributedContextAsync
��& L
(
��L M
defaultContext
��M [
)
��[ \
;
��\ ]
var
�� 
distributedCache
��  
=
��! "
context
��# *
?
��* +
.
��+ ,
DistributedCache
��, <
;
��< =
if
�� 
(
�� 
distributedCache
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
	semaphore
�� 
=
�� 
_semaphores
�� '
.
��' (
GetOrAdd
��( 0
(
��0 1
name
��1 5
,
��5 6
name
��7 ;
=>
��< >
new
��? B
SemaphoreSlim
��C P
(
��P Q
$num
��Q R
)
��R S
)
��S T
;
��T U
await
�� 
	semaphore
�� 
.
�� 
	WaitAsync
�� %
(
��% &
)
��& '
;
��' (
try
�� 
{
�� 
var
�� 

identifier
�� 
=
��  
_identifiers
��! -
.
��- .
GetOrAdd
��. 6
(
��6 7
name
��7 ;
,
��; <
name
��= A
=>
��B D
new
��E H
ShellIdentifier
��I X
(
��X Y
)
��Y Z
)
��Z [
;
��[ \

identifier
�� 
.
�� 
	ReleaseId
�� $
=
��% &
IdGenerator
��' 2
.
��2 3

GenerateId
��3 =
(
��= >
)
��> ?
;
��? @
await
�� 
distributedCache
�� &
.
��& '
SetStringAsync
��' 5
(
��5 6
ReleaseIdKey
��6 B
(
��B C
name
��C G
)
��G H
,
��H I

identifier
��J T
.
��T U
	ReleaseId
��U ^
)
��^ _
;
��_ `
await
�� 
distributedCache
�� &
.
��& '
SetStringAsync
��' 5
(
��5 6
ShellChangedIdKey
��6 G
,
��G H

identifier
��I S
.
��S T
	ReleaseId
��T ]
)
��] ^
;
��^ _
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
when
��! %
(
��& '
!
��' (
ex
��( *
.
��* +
IsFatal
��+ 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
,
��# $
$str
��% y
,
��y z
name
��{ 
)�� �
;��� �
}
�� 
finally
�� 
{
�� 
	semaphore
�� 
.
�� 
Release
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
ReloadingAsync
�� (
(
��( )
string
��) /
name
��0 4
)
��4 5
{
�� 	
if
�� 
(
�� 
_terminated
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 

_shellHost
�� 
.
��  
TryGetShellContext
�� .
(
��. /
ShellHelper
��/ :
.
��: ;
DefaultShellName
��; K
,
��K L
out
��M P
var
��Q T
defaultContext
��U c
)
��c d
||
��e g
defaultContext
�� 
.
�� 
Settings
�� '
.
��' (
State
��( -
!=
��. 0
TenantState
��1 <
.
��< =
Running
��= D
)
��D E
{
�� 
return
�� 
;
�� 
}
�� 
using
�� 
var
�� 
context
�� 
=
�� 
await
��  %4
&AcquireOrCreateDistributedContextAsync
��& L
(
��L M
defaultContext
��M [
)
��[ \
;
��\ ]
var
�� 
distributedCache
��  
=
��! "
context
��# *
?
��* +
.
��+ ,
DistributedCache
��, <
;
��< =
if
�� 
(
�� 
distributedCache
��  
==
��! #
null
��$ (
)
��( )
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
	semaphore
�� 
=
�� 
_semaphores
�� '
.
��' (
GetOrAdd
��( 0
(
��0 1
name
��1 5
,
��5 6
name
��7 ;
=>
��< >
new
��? B
SemaphoreSlim
��C P
(
��P Q
$num
��Q R
)
��R S
)
��S T
;
��T U
await
�� 
	semaphore
�� 
.
�� 
	WaitAsync
�� %
(
��% &
)
��& '
;
��' (
try
�� 
{
�� 
var
�� 

identifier
�� 
=
��  
_identifiers
��! -
.
��- .
GetOrAdd
��. 6
(
��6 7
name
��7 ;
,
��; <
name
��= A
=>
��B D
new
��E H
ShellIdentifier
��I X
(
��X Y
)
��Y Z
)
��Z [
;
��[ \

identifier
�� 
.
�� 
ReloadId
�� #
=
��$ %
IdGenerator
��& 1
.
��1 2

GenerateId
��2 <
(
��< =
)
��= >
;
��> ?
await
�� 
distributedCache
�� &
.
��& '
SetStringAsync
��' 5
(
��5 6
ReloadIdKey
��6 A
(
��A B
name
��B F
)
��F G
,
��G H

identifier
��I S
.
��S T
ReloadId
��T \
)
��\ ]
;
��] ^
if
�� 
(
�� 
name
�� 
!=
�� 
ShellHelper
�� '
.
��' (
DefaultShellName
��( 8
&&
��9 ;
!
��< =

_shellHost
��= G
.
��G H
TryGetSettings
��H V
(
��V W
name
��W [
,
��[ \
out
��] `
_
��a b
)
��b c
)
��c d
{
�� 
await
�� 
distributedCache
�� *
.
��* +
SetStringAsync
��+ 9
(
��9 :
ShellCreatedIdKey
��: K
,
��K L

identifier
��M W
.
��W X
ReloadId
��X `
)
��` a
;
��a b
}
�� 
await
�� 
distributedCache
�� &
.
��& '
SetStringAsync
��' 5
(
��5 6
ShellChangedIdKey
��6 G
,
��G H

identifier
��I S
.
��S T
ReloadId
��T \
)
��\ ]
;
��] ^
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
when
��! %
(
��& '
!
��' (
ex
��( *
.
��* +
IsFatal
��+ 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
,
��# $
$str
��% y
,
��y z
name
��{ 
)�� �
;��� �
}
�� 
finally
�� 
{
�� 
	semaphore
�� 
.
�� 
Release
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
string
�� 
ReleaseIdKey
�� #
(
��# $
string
��$ *
name
��+ /
)
��/ 0
=>
��1 3
name
��4 8
+
��9 : 
ReleaseIdKeySuffix
��; M
;
��M N
private
�� 
string
�� 
ReloadIdKey
�� "
(
��" #
string
��# )
name
��* .
)
��. /
=>
��0 2
name
��3 7
+
��8 9
ReloadIdKeySuffix
��: K
;
��K L
private
�� 
async
�� 
Task
�� 
<
��  
DistributedContext
�� -
>
��- .+
CreateDistributedContextAsync
��/ L
(
��L M
ShellContext
��M Y
defaultShell
��Z f
)
��f g
{
�� 	
var
�� 

descriptor
�� 
=
�� 
defaultShell
�� )
.
��) *
	Blueprint
��* 3
?
��3 4
.
��4 5

Descriptor
��5 ?
;
��? @
if
�� 
(
�� 

descriptor
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
try
�� 
{
�� 
return
�� 
new
��  
DistributedContext
�� 1
(
��1 2
await
��2 7"
_shellContextFactory
��8 L
.
��L M)
CreateDescribedContextAsync
��M h
(
��h i
defaultShell
��i u
.
��u v
Settings
��v ~
,
��~ 

descriptor��� �
)��� �
)��� �
;��� �
}
�� 
catch
�� 
{
�� 
return
�� 
null
�� 
;
��  
}
�� 
}
�� 
return
�� 
await
�� +
CreateDistributedContextAsync
�� 6
(
��6 7
defaultShell
��7 C
.
��C D
Settings
��D L
)
��L M
;
��M N
}
�� 	
private
�� 
async
�� 
Task
�� 
<
��  
DistributedContext
�� -
>
��- .+
CreateDistributedContextAsync
��/ L
(
��L M
ShellSettings
��M Z
defaultSettings
��[ j
)
��j k
{
�� 	
try
�� 
{
�� 
return
�� 
new
��  
DistributedContext
�� -
(
��- .
await
��. 3"
_shellContextFactory
��4 H
.
��H I%
CreateShellContextAsync
��I `
(
��` a
defaultSettings
��a p
)
��p q
)
��q r
;
��r s
}
�� 
catch
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
��  
DistributedContext
�� -
>
��- .0
"GetOrCreateDistributedContextAsync
��/ Q
(
��Q R
ShellContext
��R ^
defaultContext
��_ m
)
��m n
{
�� 	
if
�� 
(
�� 
_defaultContext
�� 
!=
��  "
defaultContext
��# 1
)
��1 2
{
�� 
var
�� 
previousContext
�� #
=
��$ %
_context
��& .
;
��. /
_context
�� 
=
�� 
await
��  +
CreateDistributedContextAsync
��! >
(
��> ?
defaultContext
��? M
)
��M N
;
��N O
if
�� 
(
�� 
_context
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
_defaultContext
�� #
=
��$ %
defaultContext
��& 4
;
��4 5
}
�� 
previousContext
�� 
?
��  
.
��  !
Release
��! (
(
��( )
)
��) *
;
��* +
}
�� 
return
�� 
_context
�� 
;
�� 
}
�� 	
private
�� 
Task
�� 
<
��  
DistributedContext
�� '
>
��' (4
&AcquireOrCreateDistributedContextAsync
��) O
(
��O P
ShellContext
��P \
defaultContext
��] k
)
��k l
{
�� 	
var
��  
distributedContext
�� "
=
��# $
_context
��% -
?
��- .
.
��. /
Acquire
��/ 6
(
��6 7
)
��7 8
;
��8 9
if
�� 
(
��  
distributedContext
�� "
==
��# %
null
��& *
)
��* +
{
�� 
return
�� +
CreateDistributedContextAsync
�� 4
(
��4 5
defaultContext
��5 C
)
��C D
;
��D E
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� "
(
��" # 
distributedContext
��# 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
TimeSpan
�� %
NextIdleTimeBeforeRetry
�� 0
(
��0 1
TimeSpan
��1 9
idleTime
��: B
,
��B C
	Exception
��D M
ex
��N P
)
��P Q
{
�� 	
if
�� 
(
�� 
idleTime
�� 
<
�� 
MaxRetryTime
�� '
)
��' (
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
,
��# $
$str
��% t
)
��t u
;
��u v
idleTime
�� 
*=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
idleTime
�� 
>
�� 
MaxRetryTime
�� +
)
��+ ,
{
�� 
idleTime
�� 
=
�� 
MaxRetryTime
�� +
;
��+ ,
}
�� 
}
�� 
return
�� 
idleTime
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  "
TryWaitAfterBusyTime
��! 5
(
��5 6
CancellationToken
��6 G
stoppingToken
��H U
)
��U V
{
�� 	
if
�� 
(
�� 
DateTime
�� 
.
�� 
UtcNow
�� 
-
��  !
_busyStartTime
��" 0
>
��1 2
MaxBusyTime
��3 >
)
��> ?
{
�� 
if
�� 
(
�� 
!
�� 
await
�� 
TryWaitAsync
�� '
(
��' (
MinIdleTime
��( 3
,
��3 4
stoppingToken
��5 B
)
��B C
)
��C D
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
_busyStartTime
�� 
=
��  
DateTime
��! )
.
��) *
UtcNow
��* 0
;
��0 1
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  
TryWaitAsync
��! -
(
��- .
TimeSpan
��. 6
delay
��7 <
,
��< =
CancellationToken
��> O
stoppingToken
��P ]
)
��] ^
{
�� 	
try
�� 
{
�� 
await
�� 
Task
�� 
.
�� 
Delay
��  
(
��  !
delay
��! &
,
��& '
stoppingToken
��( 5
)
��5 6
;
��6 7
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� #
TaskCanceledException
�� (
)
��( )
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\Distributed\ShellIdentifier.cs
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
} �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\NullShellStateManager.cs
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
featureState	$${ �
.
$$� �
Id
$$� �
,
$$� �
featureState
$$� �
.
$$� �
InstallState
$$� �
,
$$� �
value
$$� �
)
$$� �
;
$$� �
}%% 
return'' 
Task'' 
.'' 
CompletedTask'' %
;''% &
}(( 	
})) 
}** �s
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
Empty	 �
.
� �
WithComparers
� �
(
� �
StringComparer
� �
.
� �
OrdinalIgnoreCase
� �
)
� �
;
� �
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
ee� �
)
ee� �
)
ee� �
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
$str	mm} �
)
mm� �
,
mm� �
out
mm� �
result
mm� �
)
mm� �
)
mm� �
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
result	~~{ �
)
~~� �
{ 	
if
�� 
(
�� 
TryMatchInternal
��  
(
��  !
$str
��! %
+
��& '
host
��( ,
,
��, -
$str
��. 2
+
��3 4
hostOnly
��5 =
,
��= >
path
��? C
,
��C D
out
��E H
result
��I O
)
��O P
)
��P Q
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
var
�� 
index
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
while
�� 
(
�� 
-
�� 
$num
�� 
!=
�� 
(
�� 
index
�� 
=
��  !
host
��" &
.
��& '
IndexOf
��' .
(
��. /
$char
��/ 2
,
��2 3
index
��4 9
+
��: ;
$num
��< =
)
��= >
)
��> ?
)
��? @
{
�� 
if
�� 
(
�� 
TryMatchInternal
�� $
(
��$ %
$str
��% (
+
��) *
host
��+ /
.
��/ 0

Subsegment
��0 :
(
��: ;
index
��; @
)
��@ A
,
��A B
$str
��C F
+
��G H
hostOnly
��I Q
.
��Q R

Subsegment
��R \
(
��\ ]
index
��] b
)
��b c
,
��c d
path
��e i
,
��i j
out
��k n
result
��o u
)
��u v
)
��v w
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
result
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
string
�� 
GetHostAndPrefix
�� '
(
��' (
StringSegment
��( 5
host
��6 :
,
��: ;
StringSegment
��< I
path
��J N
)
��N O
{
�� 	
var
�� 
firstSegmentIndex
�� !
=
��" #
path
��$ (
.
��( )
Length
��) /
>
��0 1
$num
��2 3
?
��4 5
path
��6 :
.
��: ;
IndexOf
��; B
(
��B C
$char
��C F
,
��F G
$num
��H I
)
��I J
:
��K L
-
��M N
$num
��N O
;
��O P
if
�� 
(
�� 
firstSegmentIndex
�� !
>
��" #
-
��$ %
$num
��% &
)
��& '
{
�� 
return
�� 
host
�� 
+
�� 
path
�� "
.
��" #

Subsegment
��# -
(
��- .
$num
��. /
,
��/ 0
firstSegmentIndex
��1 B
)
��B C
.
��C D
Value
��D I
;
��I J
}
�� 
else
�� 
{
�� 
return
�� 
host
�� 
+
�� 
path
�� "
.
��" #
Value
��# (
;
��( )
}
�� 
}
�� 	
private
�� 
string
�� 
[
�� 
]
�� "
GetAllHostsAndPrefix
�� -
(
��- .
ShellSettings
��. ;
shellSettings
��< I
)
��I J
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
shellSettings
��* 7
.
��7 8
RequestUrlHost
��8 F
)
��F G
)
��G H
{
�� 
return
�� 
new
�� 
string
�� !
[
��! "
]
��" #
{
��$ %
$str
��& )
+
��* +
shellSettings
��, 9
.
��9 :
RequestUrlPrefix
��: J
}
��K L
;
��L M
}
�� 
return
�� 
shellSettings
��  
.
�� 
RequestUrlHost
�� 
.
�� 
Split
�� 
(
�� 
HostSeparators
�� %
,
��% & 
StringSplitOptions
��' 9
.
��9 : 
RemoveEmptyEntries
��: L
)
��L M
.
�� 
Select
�� 
(
�� 
ruh
�� 
=>
�� 
ruh
�� "
+
��# $
$str
��% (
+
��) *
shellSettings
��+ 8
.
��8 9
RequestUrlPrefix
��9 I
)
��I J
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
DefaultIsCatchAll
�� &
(
��& '
)
��' (
{
�� 	
return
�� 
_default
�� 
!=
�� 
null
�� #
&&
��$ &
string
��' -
.
��- .
IsNullOrEmpty
��. ;
(
��; <
_default
��< D
.
��D E
RequestUrlHost
��E S
)
��S T
&&
��U W
string
��X ^
.
��^ _
IsNullOrEmpty
��_ l
(
��l m
_default
��m u
.
��u v
RequestUrlPrefix��v �
)��� �
;��� �
}
�� 	
}
�� 
}�� �"
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ServiceCollectionExtensions.cs
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
}:: �l
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellDescriptorFeaturesManager.cs
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
shellDescriptor	!!v �
,
!!� �
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
bool	dd �
force
dd� �
)
dd� �
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
featuresToEnable	rr~ �
.
rr� �
Where
rr� �
(
rr� �
f
rr� �
=>
rr� �
f
rr� �
.
rr� �
Id
rr� �
!=
rr� �
featureInfo
rr� �
.
rr� �
Id
rr� �
)
rr� �
)
rr� �
;
rr� �
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
�� 
IEnumerable
�� 
<
�� 
IFeatureInfo
�� (
>
��( )"
GetFeaturesToDisable
��* >
(
��> ?
IFeatureInfo
��? K
featureInfo
��L W
,
��W X
IEnumerable
��Y d
<
��d e
string
��e k
>
��k l
enabledFeatureIds
��m ~
,
��~ 
bool��� �
force��� �
)��� �
{
�� 	
var
�� 
featuresToDisable
�� !
=
��" #
_extensionManager
��$ 5
.
�� "
GetDependentFeatures
�� %
(
��% &
featureInfo
��& 1
.
��1 2
Id
��2 4
)
��4 5
.
�� 
Where
�� 
(
�� 
f
�� 
=>
�� 
enabledFeatureIds
�� -
.
��- .
Contains
��. 6
(
��6 7
f
��7 8
.
��8 9
Id
��9 ;
)
��; <
)
��< =
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
featuresToDisable
�� !
.
��! "
Count
��" '
>
��( )
$num
��* +
&&
��, .
!
��/ 0
force
��0 5
)
��5 6
{
�� 
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� %
(
��% &
LogLevel
��& .
.
��. /
Warning
��/ 6
)
��6 7
)
��7 8
{
�� 
_logger
�� 
.
�� 

LogWarning
�� &
(
��& '
$str
��' l
,
��l m
featureInfo
��n y
.
��y z
Id
��z |
)
��| }
;
��} ~
}
�� +
FeatureDependencyNotification
�� -
?
��- .
.
��. /
Invoke
��/ 5
(
��5 6
$str
��6 q
,
��q r
featureInfo
��s ~
,
��~ !
featuresToDisable��� �
.��� �
Where��� �
(��� �
f��� �
=>��� �
f��� �
.��� �
Id��� �
!=��� �
featureInfo��� �
.��� �
Id��� �
)��� �
)��� �
;��� �
return
�� 

Enumerable
�� !
.
��! "
Empty
��" '
<
��' (
IFeatureInfo
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
�� 
return
�� 
featuresToDisable
�� $
;
��$ %
}
�� 	
}
�� 
}�� �4
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellFeaturesManager.cs
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
)	 �
)
� �
)
� �
;
� �
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
Any	!!} �
(
!!� �
sf
!!� �
=>
!!� �
sf
!!� �
.
!!� �
Id
!!� �
==
!!� �
f
!!� �
.
!!� �
Id
!!� �
&&
!!� �
sf
!!� �
.
!!� �
AlwaysEnabled
!!� �
)
!!� �
)
!!� �
)
!!� �
;
!!� �
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
)	&& �
)
&&� �
)
&&� �
;
&&� �
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
featuresToDisable	))z �
,
))� �
IEnumerable
))� �
<
))� �
IFeatureInfo
))� �
>
))� �
featuresToEnable
))� �
,
))� �
bool
))� �
force
))� �
)
))� �
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
force	++~ �
)
++� �
;
++� �
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
}88 ��
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
ShellContext	!!v �
>
!!� �
(
!!� �
)
!!� �
;
!!� �
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
ShellSettings	""w �
>
""� �
(
""� �
)
""� �
;
""� �
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
SemaphoreSlim	##y �
>
##� �
(
##� �
)
##� �
;
##� �
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
�� 
(
�� 
scope
�� 
==
�� 
null
�� !
)
��! "
{
�� 
_shellContexts
�� "
.
��" #
	TryRemove
��# ,
(
��, -
settings
��- 5
.
��5 6
Name
��6 :
,
��: ;
out
��< ?
_
��@ A
)
��A B
;
��B C
}
�� 
}
�� 
return
�� 
scope
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� &
UpdateShellSettingsAsync
�� 2
(
��2 3
ShellSettings
��3 @
settings
��A I
)
��I J
{
�� 	
settings
�� 
.
�� 
	VersionId
�� 
=
��  
IdGenerator
��! ,
.
��, -

GenerateId
��- 7
(
��7 8
)
��8 9
;
��9 :
await
�� #
_shellSettingsManager
�� '
.
��' (
SaveSettingsAsync
��( 9
(
��9 :
settings
��: B
)
��B C
;
��C D
await
�� %
ReloadShellContextAsync
�� )
(
��) *
settings
��* 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
Task
�� 
ChangedAsync
��  
(
��  !
ShellDescriptor
��! 0

descriptor
��1 ;
,
��; <
ShellSettings
��= J
settings
��K S
)
��S T
=>
�� &
ReleaseShellContextAsync
�� '
(
��' (
settings
��( 0
)
��0 1
;
��1 2
public
�� 
async
�� 
Task
�� %
ReloadShellContextAsync
�� 1
(
��1 2
ShellSettings
��2 ?
settings
��@ H
,
��H I
bool
��J N
eventSource
��O Z
=
��[ \
true
��] a
)
��a b
{
�� 	
if
�� 
(
�� 
ReloadingAsync
�� 
!=
�� !
null
��" &
&&
��' )
eventSource
��* 5
&&
��6 8
settings
��9 A
.
��A B
State
��B G
!=
��H J
TenantState
��K V
.
��V W
Initializing
��W c
)
��c d
{
�� 
foreach
�� 
(
�� 
var
�� 
d
�� 
in
�� !
ReloadingAsync
��" 0
.
��0 1
GetInvocationList
��1 B
(
��B C
)
��C D
)
��D E
{
�� 
await
�� 
(
�� 
(
�� 

ShellEvent
�� &
)
��& '
d
��' (
)
��( )
(
��) *
settings
��* 2
.
��2 3
Name
��3 7
)
��7 8
;
��8 9
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
CanReleaseShell
��  
(
��  !
settings
��! )
)
��) *
)
��* +
{
��  
_runningShellTable
�� "
.
��" #
Remove
��# )
(
��) *
settings
��* 2
)
��2 3
;
��3 4
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
State
�� 
!=
�� !
TenantState
��" -
.
��- .
Initializing
��. :
)
��: ;
{
�� 
settings
�� 
=
�� 
await
��  #
_shellSettingsManager
��! 6
.
��6 7
LoadSettingsAsync
��7 H
(
��H I
settings
��I Q
.
��Q R
Name
��R V
)
��V W
;
��W X
}
�� 
var
�� 
count
�� 
=
�� 
$num
�� 
;
�� 
while
�� 
(
�� 
count
�� 
<
�� (
ReloadShellMaxRetriesCount
�� 5
)
��5 6
{
�� 
count
�� 
++
�� 
;
�� 
if
�� 
(
�� 
_shellContexts
�� "
.
��" #
	TryRemove
��# ,
(
��, -
settings
��- 5
.
��5 6
Name
��6 :
,
��: ;
out
��< ?
var
��@ C
context
��D K
)
��K L
)
��L M
{
��  
_runningShellTable
�� &
.
��& '
Remove
��' -
(
��- .
settings
��. 6
)
��6 7
;
��7 8
context
�� 
.
�� 
Release
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
if
�� 
(
�� 
!
�� 
_shellContexts
�� #
.
��# $
TryAdd
��$ *
(
��* +
settings
��+ 3
.
��3 4
Name
��4 8
,
��8 9
new
��: =
ShellContext
��> J
.
��J K
PlaceHolder
��K V
{
��W X
Settings
��Y a
=
��b c
settings
��d l
}
��m n
)
��n o
)
��o p
{
�� 
continue
�� 
;
�� 
}
�� 
_shellSettings
�� 
[
�� 
settings
�� '
.
��' (
Name
��( ,
]
��, -
=
��. /
settings
��0 8
;
��8 9
if
�� 
(
�� 
CanRegisterShell
�� $
(
��$ %
settings
��% -
)
��- .
)
��. /
{
��  
_runningShellTable
�� &
.
��& '
Add
��' *
(
��* +
settings
��+ 3
)
��3 4
;
��4 5
}
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
State
�� "
==
��# %
TenantState
��& 1
.
��1 2
Initializing
��2 >
)
��> ?
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
currentVersionId
�� $
=
��% &
settings
��' /
.
��/ 0
	VersionId
��0 9
;
��9 :
settings
�� 
=
�� 
await
��  #
_shellSettingsManager
��! 6
.
��6 7
LoadSettingsAsync
��7 H
(
��H I
settings
��I Q
.
��Q R
Name
��R V
)
��V W
;
��W X
if
�� 
(
�� 
settings
�� 
.
�� 
	VersionId
�� &
==
��' )
currentVersionId
��* :
)
��: ;
{
�� 
return
�� 
;
�� 
}
�� 
}
�� 
throw
�� 
new
�� &
ShellHostReloadException
�� .
(
��. /
$"
�� +
Unable to reload the tenant '
�� /
{
��/ 0
settings
��0 8
.
��8 9
Name
��9 =
}
��= >E
7' as too many concurrent processes are trying to do so.
��> u
"
��u v
)
��v w
;
��w x
}
�� 	
public
�� 
async
�� 
Task
�� &
ReleaseShellContextAsync
�� 2
(
��2 3
ShellSettings
��3 @
settings
��A I
,
��I J
bool
��K O
eventSource
��P [
=
��\ ]
true
��^ b
)
��b c
{
�� 	
if
�� 
(
�� 
ReleasingAsync
�� 
!=
�� !
null
��" &
&&
��' )
eventSource
��* 5
&&
��6 8
settings
��9 A
.
��A B
State
��B G
!=
��H J
TenantState
��K V
.
��V W
Initializing
��W c
)
��c d
{
�� 
foreach
�� 
(
�� 
var
�� 
d
�� 
in
�� !
ReleasingAsync
��" 0
.
��0 1
GetInvocationList
��1 B
(
��B C
)
��C D
)
��D E
{
�� 
await
�� 
(
�� 
(
�� 

ShellEvent
�� &
)
��& '
d
��' (
)
��( )
(
��) *
settings
��* 2
.
��2 3
Name
��3 7
)
��7 8
;
��8 9
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
CanReleaseShell
��  
(
��  !
settings
��! )
)
��) *
)
��* +
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
_shellContexts
�� 
.
�� 
	TryRemove
�� (
(
��( )
settings
��) 1
.
��1 2
Name
��2 6
,
��6 7
out
��8 ;
var
��< ?
context
��@ G
)
��G H
)
��H I
{
�� 
context
�� 
.
�� 
Release
�� 
(
��  
)
��  !
;
��! "
}
�� 
if
�� 
(
�� 
_shellContexts
�� 
.
�� 
TryAdd
�� %
(
��% &
settings
��& .
.
��. /
Name
��/ 3
,
��3 4
new
��5 8
ShellContext
��9 E
.
��E F
PlaceHolder
��F Q
{
��R S
Settings
��T \
=
��] ^
settings
��_ g
}
��h i
)
��i j
)
��j k
{
�� 
_shellSettings
�� 
[
�� 
settings
�� '
.
��' (
Name
��( ,
]
��, -
=
��. /
settings
��0 8
;
��8 9
}
�� 
return
�� 
;
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
ShellContext
�� '
>
��' (
ListShellContexts
��) :
(
��: ;
)
��; <
=>
��= ?
_shellContexts
��@ N
.
��N O
Values
��O U
.
��U V
ToArray
��V ]
(
��] ^
)
��^ _
;
��_ `
public
�� 
bool
��  
TryGetShellContext
�� &
(
��& '
string
��' -
name
��. 2
,
��2 3
out
��4 7
ShellContext
��8 D
shellContext
��E Q
)
��Q R
=>
��S U
_shellContexts
��V d
.
��d e
TryGetValue
��e p
(
��p q
name
��q u
,
��u v
out
��w z
shellContext��{ �
)��� �
;��� �
public
�� 
bool
�� 
TryGetSettings
�� "
(
��" #
string
��# )
name
��* .
,
��. /
out
��0 3
ShellSettings
��4 A
settings
��B J
)
��J K
=>
��L N
_shellSettings
��O ]
.
��] ^
TryGetValue
��^ i
(
��i j
name
��j n
,
��n o
out
��p s
settings
��t |
)
��| }
;
��} ~
public
�� 
IEnumerable
�� 
<
�� 
ShellSettings
�� (
>
��( )
GetAllSettings
��* 8
(
��8 9
)
��9 :
=>
��; =
_shellSettings
��> L
.
��L M
Values
��M S
.
��S T
ToArray
��T [
(
��[ \
)
��\ ]
;
��] ^
private
�� 
async
�� 
Task
�� -
PreCreateAndRegisterShellsAsync
�� :
(
��: ;
)
��; <
{
�� 	
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� !
(
��! "
LogLevel
��" *
.
��* +
Information
��+ 6
)
��6 7
)
��7 8
{
�� 
_logger
�� 
.
�� 
LogInformation
�� &
(
��& '
$str
��' A
)
��A B
;
��B C
}
�� 
await
�� 
_extensionManager
�� #
.
��# $
LoadFeaturesAsync
��$ 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
LoadingAsync
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
foreach
�� 
(
�� 
var
�� 
d
�� 
in
�� !
LoadingAsync
��" .
.
��. /
GetInvocationList
��/ @
(
��@ A
)
��A B
)
��B C
{
�� 
await
�� 
(
�� 
(
�� 
ShellsEvent
�� '
)
��' (
d
��( )
)
��) *
(
��* +
)
��+ ,
;
��, -
}
�� 
}
�� 
var
�� 
allSettings
�� 
=
�� 
(
�� 
await
�� $#
_shellSettingsManager
��% :
.
��: ;
LoadSettingsAsync
��; L
(
��L M
)
��M N
)
��N O
.
��O P
Where
��P U
(
��U V
CanCreateShell
��V d
)
��d e
.
��e f
ToArray
��f m
(
��m n
)
��n o
;
��o p
var
�� 
defaultSettings
�� 
=
��  !
allSettings
��" -
.
��- .
FirstOrDefault
��. <
(
��< =
s
��= >
=>
��? A
s
��B C
.
��C D
Name
��D H
==
��I K
ShellHelper
��L W
.
��W X
DefaultShellName
��X h
)
��h i
;
��i j
if
�� 
(
�� 
defaultSettings
�� 
?
��  
.
��  !
State
��! &
!=
��' )
TenantState
��* 5
.
��5 6
Running
��6 =
)
��= >
{
�� 
var
�� 
setupContext
��  
=
��! "
await
��# (%
CreateSetupContextAsync
��) @
(
��@ A
defaultSettings
��A P
)
��P Q
;
��Q R!
AddAndRegisterShell
�� #
(
��# $
setupContext
��$ 0
)
��0 1
;
��1 2
}
�� 
foreach
�� 
(
�� 
var
�� 
settings
�� !
in
��" $
allSettings
��% 0
)
��0 1
{
�� !
AddAndRegisterShell
�� #
(
��# $
new
��$ '
ShellContext
��( 4
.
��4 5
PlaceHolder
��5 @
{
��A B
Settings
��C K
=
��L M
settings
��N V
}
��W X
)
��X Y
;
��Y Z
}
�� 
;
�� 
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� !
(
��! "
LogLevel
��" *
.
��* +
Information
��+ 6
)
��6 7
)
��7 8
{
�� 
_logger
�� 
.
�� 
LogInformation
�� &
(
��& '
$str
��' Q
)
��Q R
;
��R S
}
�� 
}
�� 	
private
�� 
Task
�� 
<
�� 
ShellContext
�� !
>
��! "%
CreateShellContextAsync
��# :
(
��: ;
ShellSettings
��; H
settings
��I Q
)
��Q R
{
�� 	
if
�� 
(
�� 
settings
�� 
.
�� 
State
�� 
==
�� !
TenantState
��" -
.
��- .
Uninitialized
��. ;
)
��; <
{
�� 
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� %
(
��% &
LogLevel
��& .
.
��. /
Debug
��/ 4
)
��4 5
)
��5 6
{
�� 
_logger
�� 
.
�� 
LogDebug
�� $
(
��$ %
$str
��% ]
,
��] ^
settings
��_ g
.
��g h
Name
��h l
)
��l m
;
��m n
}
�� 
return
�� "
_shellContextFactory
�� +
.
��+ ,%
CreateSetupContextAsync
��, C
(
��C D
settings
��D L
)
��L M
;
��M N
}
�� 
else
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Disabled
��3 ;
)
��; <
{
�� 
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� %
(
��% &
LogLevel
��& .
.
��. /
Debug
��/ 4
)
��4 5
)
��5 6
{
�� 
_logger
�� 
.
�� 
LogDebug
�� $
(
��$ %
$str
��% `
,
��` a
settings
��b j
.
��j k
Name
��k o
)
��o p
;
��p q
}
�� 
return
�� 
Task
�� 
.
�� 

FromResult
�� &
(
��& '
new
��' *
ShellContext
��+ 7
{
��8 9
Settings
��: B
=
��C D
settings
��E M
}
��N O
)
��O P
;
��P Q
}
�� 
else
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Running
��3 :
||
��; =
settings
��> F
.
��F G
State
��G L
==
��M O
TenantState
��P [
.
��[ \
Initializing
��\ h
)
��h i
{
�� 
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� %
(
��% &
LogLevel
��& .
.
��. /
Debug
��/ 4
)
��4 5
)
��5 6
{
�� 
_logger
�� 
.
�� 
LogDebug
�� $
(
��$ %
$str
��% W
,
��W X
settings
��Y a
.
��a b
Name
��b f
)
��f g
;
��g h
}
�� 
return
�� "
_shellContextFactory
�� +
.
��+ ,%
CreateShellContextAsync
��, C
(
��C D
settings
��D L
)
��L M
;
��M N
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 Q
+
��R S
settings
��T \
.
��\ ]
Name
��] a
)
��a b
;
��b c
}
�� 
}
�� 	
private
�� 
Task
�� 
<
�� 
ShellContext
�� !
>
��! "%
CreateSetupContextAsync
��# :
(
��: ;
ShellSettings
��; H
defaultSettings
��I X
)
��X Y
{
�� 	
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� !
(
��! "
LogLevel
��" *
.
��* +
Debug
��+ 0
)
��0 1
)
��1 2
{
�� 
_logger
�� 
.
�� 
LogDebug
��  
(
��  !
$str
��! I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� 
defaultSettings
�� 
==
��  "
null
��# '
)
��' (
{
�� 
var
�� 
shellSettings
�� !
=
��" ##
_shellSettingsManager
��$ 9
.
��9 :#
CreateDefaultSettings
��: O
(
��O P
)
��P Q
;
��Q R
shellSettings
�� 
.
�� 
Name
�� "
=
��# $
ShellHelper
��% 0
.
��0 1
DefaultShellName
��1 A
;
��A B
shellSettings
�� 
.
�� 
State
�� #
=
��$ %
TenantState
��& 1
.
��1 2
Uninitialized
��2 ?
;
��? @
defaultSettings
�� 
=
��  !
shellSettings
��" /
;
��/ 0
}
�� 
return
�� "
_shellContextFactory
�� '
.
��' (%
CreateSetupContextAsync
��( ?
(
��? @
defaultSettings
��@ O
)
��O P
;
��P Q
}
�� 	
private
�� 
void
�� !
AddAndRegisterShell
�� (
(
��( )
ShellContext
��) 5
context
��6 =
)
��= >
{
�� 	
if
�� 
(
�� 
_shellContexts
�� 
.
�� 
TryAdd
�� %
(
��% &
context
��& -
.
��- .
Settings
��. 6
.
��6 7
Name
��7 ;
,
��; <
context
��= D
)
��D E
)
��E F
{
�� 
_shellSettings
�� 
[
�� 
context
�� &
.
��& '
Settings
��' /
.
��/ 0
Name
��0 4
]
��4 5
=
��6 7
context
��8 ?
.
��? @
Settings
��@ H
;
��H I
if
�� 
(
�� 
CanRegisterShell
�� $
(
��$ %
context
��% ,
)
��, -
)
��- .
{
�� #
RegisterShellSettings
�� )
(
��) *
context
��* 1
.
��1 2
Settings
��2 :
)
��: ;
;
��; <
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� 
CanRegisterShell
�� %
(
��% &
ShellContext
��& 2
context
��3 :
)
��: ;
{
�� 	
if
�� 
(
�� 
!
�� 
CanRegisterShell
�� !
(
��! "
context
��" )
.
��) *
Settings
��* 2
)
��2 3
)
��3 4
{
�� 
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� %
(
��% &
LogLevel
��& .
.
��. /
Debug
��/ 4
)
��4 5
)
��5 6
{
�� 
_logger
�� 
.
�� 
LogDebug
�� $
(
��$ %
$str
��% d
,
��d e
context
��f m
.
��m n
Settings
��n v
.
��v w
Name
��w {
)
��{ |
;
��| }
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
RegisterShellSettings
�� *
(
��* +
ShellSettings
��+ 8
settings
��9 A
)
��A B
{
�� 	
if
�� 
(
�� 
_logger
�� 
.
�� 
	IsEnabled
�� !
(
��! "
LogLevel
��" *
.
��* +
Debug
��+ 0
)
��0 1
)
��1 2
{
�� 
_logger
�� 
.
�� 
LogDebug
��  
(
��  !
$str
��! V
,
��V W
settings
��X `
.
��` a
Name
��a e
)
��e f
;
��f g
}
��  
_runningShellTable
�� 
.
�� 
Add
�� "
(
��" #
settings
��# +
)
��+ ,
;
��, -
}
�� 	
private
�� 
bool
�� 
CanCreateShell
�� #
(
��# $
ShellSettings
��$ 1
shellSettings
��2 ?
)
��? @
{
�� 	
return
�� 
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Running
��3 :
||
��; =
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Uninitialized
��3 @
||
��A C
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Initializing
��3 ?
||
��@ B
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Disabled
��3 ;
;
��; <
}
�� 	
private
�� 
bool
�� 
CanRegisterShell
�� %
(
��% &
ShellSettings
��& 3
shellSettings
��4 A
)
��A B
{
�� 	
return
�� 
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Running
��3 :
||
��; =
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Uninitialized
��3 @
||
��A C
shellSettings
�� 
.
�� 
State
�� #
==
��$ &
TenantState
��' 2
.
��2 3
Initializing
��3 ?
;
��? @
}
�� 	
private
�� 
bool
�� 
CanReleaseShell
�� $
(
��$ %
ShellSettings
��% 2
settings
��3 ;
)
��; <
{
�� 	
return
�� 
settings
�� 
.
�� 
State
�� !
!=
��" $
TenantState
��% 0
.
��0 1
Disabled
��1 9
||
��: <
_shellContexts
��= K
.
��K L
TryGetValue
��L W
(
��W X
settings
��X `
.
��` a
Name
��a e
,
��e f
out
��g j
var
��k n
value
��o t
)
��t u
&&
��v x
value
��y ~
.
��~ 
ActiveScopes�� �
==��� �
$num��� �
;��� �
}
�� 	
public
�� 
void
�� 
Dispose
�� 
(
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 
shell
�� 
in
�� !
ListShellContexts
��" 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
shell
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 	
}
�� 
}�� �
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
}(( ܳ
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellSettingsManager.cs
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
�� 
Build
�� 
(
�� 
)
�� 
;
�� 
var
�� 
settings
�� 
=
�� 
new
�� " 
ShellConfiguration
��# 5
(
��5 6
tenantSettings
��6 D
)
��D E
;
��E F
var
�� 
configuration
�� !
=
��" #
new
��$ ' 
ShellConfiguration
��( :
(
��: ;
tenant
��; A
,
��A B)
_tenantConfigBuilderFactory
��C ^
)
��^ _
;
��_ `
return
�� 
new
�� 
ShellSettings
�� (
(
��( )
settings
��) 1
,
��1 2
configuration
��3 @
)
��@ A
{
�� 
Name
�� 
=
�� 
tenant
�� !
,
��! "
}
�� 
;
�� 
}
�� 
finally
�� 
{
�� 

_semaphore
�� 
.
�� 
Release
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
SaveSettingsAsync
�� +
(
��+ ,
ShellSettings
��, 9
settings
��: B
)
��B C
{
�� 	
await
�� 

_semaphore
�� 
.
�� 
	WaitAsync
�� &
(
��& '
)
��' (
;
��( )
try
�� 
{
�� 
await
�� &
EnsureConfigurationAsync
�� .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
settings
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� 3
(
��3 4
nameof
��4 :
(
��: ;
settings
��; C
)
��C D
)
��D E
;
��E F
}
�� 
var
�� 
configuration
�� !
=
��" #
new
��$ '"
ConfigurationBuilder
��( <
(
��< =
)
��= >
.
�� 
AddConfiguration
�� %
(
��% &
_configuration
��& 4
)
��4 5
.
�� 
AddConfiguration
�� %
(
��% &
_configuration
��& 4
.
��4 5

GetSection
��5 ?
(
��? @
settings
��@ H
.
��H I
Name
��I M
)
��M N
)
��N O
.
�� 
Build
�� 
(
�� 
)
�� 
;
�� 
var
�� 
shellSettings
�� !
=
��" #
new
��$ '
ShellSettings
��( 5
(
��5 6
)
��6 7
{
�� 
Name
�� 
=
�� 
settings
�� #
.
��# $
Name
��$ (
}
�� 
;
�� 
configuration
�� 
.
�� 
Bind
�� "
(
��" #
shellSettings
��# 0
)
��0 1
;
��1 2
var
�� 
configSettings
�� "
=
��# $
JObject
��% ,
.
��, -

FromObject
��- 7
(
��7 8
shellSettings
��8 E
)
��E F
;
��F G
var
�� 
tenantSettings
�� "
=
��# $
JObject
��% ,
.
��, -

FromObject
��- 7
(
��7 8
settings
��8 @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
�� 
property
�� %
in
��& (
configSettings
��) 7
)
��7 8
{
�� 
var
�� 
tenantValue
�� #
=
��$ %
tenantSettings
��& 4
.
��4 5
Value
��5 :
<
��: ;
string
��; A
>
��A B
(
��B C
property
��C K
.
��K L
Key
��L O
)
��O P
;
��P Q
var
�� 
configValue
�� #
=
��$ %
configSettings
��& 4
.
��4 5
Value
��5 :
<
��: ;
string
��; A
>
��A B
(
��B C
property
��C K
.
��K L
Key
��L O
)
��O P
;
��P Q
if
�� 
(
�� 
tenantValue
�� #
!=
��$ &
configValue
��' 2
)
��2 3
{
�� 
tenantSettings
�� &
[
��& '
property
��' /
.
��/ 0
Key
��0 3
]
��3 4
=
��5 6
tenantValue
��7 B
;
��B C
}
�� 
else
�� 
{
�� 
tenantSettings
�� &
[
��& '
property
��' /
.
��/ 0
Key
��0 3
]
��3 4
=
��5 6
null
��7 ;
;
��; <
}
�� 
}
�� 
tenantSettings
�� 
.
�� 
Remove
�� %
(
��% &
$str
��& ,
)
��, -
;
��- .
await
�� 
_settingsSources
�� &
.
��& '
	SaveAsync
��' 0
(
��0 1
settings
��1 9
.
��9 :
Name
��: >
,
��> ?
tenantSettings
��@ N
.
��N O
ToObject
��O W
<
��W X

Dictionary
��X b
<
��b c
string
��c i
,
��i j
string
��k q
>
��q r
>
��r s
(
��s t
)
��t u
)
��u v
;
��v w
var
�� 
tenantConfig
��  
=
��! "
new
��# &
JObject
��' .
(
��. /
)
��/ 0
;
��0 1
var
�� 
sections
�� 
=
�� 
settings
�� '
.
��' ( 
ShellConfiguration
��( :
.
��: ;
GetChildren
��; F
(
��F G
)
��G H
.
�� 
Where
�� 
(
�� 
s
�� 
=>
�� 
!
��  !
s
��! "
.
��" #
GetChildren
��# .
(
��. /
)
��/ 0
.
��0 1
Any
��1 4
(
��4 5
)
��5 6
)
��6 7
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
section
�� $
in
��% '
sections
��( 0
)
��0 1
{
�� 
if
�� 
(
�� 
settings
��  
[
��  !
section
��! (
.
��( )
Key
��) ,
]
��, -
!=
��. 0
configuration
��1 >
[
��> ?
section
��? F
.
��F G
Key
��G J
]
��J K
)
��K L
{
�� 
tenantConfig
�� $
[
��$ %
section
��% ,
.
��, -
Key
��- 0
]
��0 1
=
��2 3
settings
��4 <
[
��< =
section
��= D
.
��D E
Key
��E H
]
��H I
;
��I J
}
�� 
else
�� 
{
�� 
tenantConfig
�� $
[
��$ %
section
��% ,
.
��, -
Key
��- 0
]
��0 1
=
��2 3
null
��4 8
;
��8 9
}
�� 
}
�� 
tenantConfig
�� 
.
�� 
Remove
�� #
(
��# $
$str
��$ *
)
��* +
;
��+ ,
await
�� $
_tenantConfigSemaphore
�� ,
.
��, -
	WaitAsync
��- 6
(
��6 7
)
��7 8
;
��8 9
try
�� 
{
�� 
await
�� "
_tenantConfigSources
�� .
.
��. /
	SaveAsync
��/ 8
(
��8 9
settings
��9 A
.
��A B
Name
��B F
,
��F G
tenantConfig
��H T
.
��T U
ToObject
��U ]
<
��] ^

Dictionary
��^ h
<
��h i
string
��i o
,
��o p
string
��q w
>
��w x
>
��x y
(
��y z
)
��z {
)
��{ |
;
��| }
}
�� 
finally
�� 
{
�� $
_tenantConfigSemaphore
�� *
.
��* +
Release
��+ 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
finally
�� 
{
�� 

_semaphore
�� 
.
�� 
Release
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
EnsureConfigurationAsync
�� 3
(
��3 4
)
��4 5
{
�� 	
if
�� 
(
�� 
_configuration
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 
lastProviders
�� 
=
�� 
(
��  !'
_applicationConfiguration
��! :
as
��; = 
IConfigurationRoot
��> P
)
��P Q
?
��Q R
.
��R S
	Providers
��S \
.
�� 
Where
�� 
(
�� 
p
�� 
=>
�� 
p
�� 
is
��  7
)EnvironmentVariablesConfigurationProvider
��! J
||
��K M
p
�� 
is
��  .
 CommandLineConfigurationProvider
��! A
)
��A B
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
var
�� "
configurationBuilder
�� $
=
��% &
await
��' ,
new
��- 0"
ConfigurationBuilder
��1 E
(
��E F
)
��F G
.
�� 
AddConfiguration
�� !
(
��! "'
_applicationConfiguration
��" ;
)
��; <
.
�� 
AddSourcesAsync
��  
(
��  !#
_tenantsConfigSources
��! 6
)
��6 7
;
��7 8
if
�� 
(
�� 
lastProviders
�� 
.
�� 
Count
�� #
(
��# $
)
��$ %
>
��& '
$num
��( )
)
��) *
{
�� "
configurationBuilder
�� $
.
��$ %
AddConfiguration
��% 5
(
��5 6
new
��6 9
ConfigurationRoot
��: K
(
��K L
lastProviders
��L Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 
var
�� 
configuration
�� 
=
�� "
configurationBuilder
��  4
.
��4 5
Build
��5 :
(
��: ;
)
��; <
.
��< =

GetSection
��= G
(
��G H
$str
��H U
)
��U V
;
��V W 
_configuredTenants
�� 
=
��  
configuration
��! .
.
��. /
GetChildren
��/ :
(
��: ;
)
��; <
.
�� 
Where
�� 
(
�� 
section
�� 
=>
�� !
Enum
��" &
.
��& '
TryParse
��' /
<
��/ 0
TenantState
��0 ;
>
��; <
(
��< =
section
��= D
[
��D E
$str
��E L
]
��L M
,
��M N

ignoreCase
��O Y
:
��Y Z
true
��[ _
,
��_ `
out
��a d
_
��e f
)
��f g
)
��g h
.
�� 
Select
�� 
(
�� 
section
�� 
=>
��  "
section
��# *
.
��* +
Key
��+ .
)
��. /
.
�� 
Distinct
�� 
(
�� 
)
�� 
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� )
_tenantConfigBuilderFactory
�� '
=
��( )
async
��* /
(
��0 1
tenant
��1 7
)
��7 8
=>
��9 ;
{
�� 
await
�� $
_tenantConfigSemaphore
�� ,
.
��, -
	WaitAsync
��- 6
(
��6 7
)
��7 8
;
��8 9
try
�� 
{
�� 
var
�� 
builder
�� 
=
��  !
new
��" %"
ConfigurationBuilder
��& :
(
��: ;
)
��; <
.
��< =
AddConfiguration
��= M
(
��M N
_configuration
��N \
)
��\ ]
;
��] ^
builder
�� 
.
�� 
AddConfiguration
�� ,
(
��, -
configuration
��- :
.
��: ;

GetSection
��; E
(
��E F
tenant
��F L
)
��L M
)
��M N
;
��N O
return
�� 
await
��  
builder
��! (
.
��( )
AddSourcesAsync
��) 8
(
��8 9
tenant
��9 ?
,
��? @"
_tenantConfigSources
��A U
)
��U V
;
��V W
}
�� 
finally
�� 
{
�� $
_tenantConfigSemaphore
�� *
.
��* +
Release
��+ 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
;
�� 
_configuration
�� 
=
�� 
configuration
�� *
;
��* +
}
�� 	
}
�� 
}�� �=
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\ShellStateCoordinator.cs
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
ShellContext	LLu �
.
LL� �
Settings
LL� �
.
LL� �
Name
LL� �
)
LL� �
;
LL� �
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
}dd �~
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
.	QQ �
Falling
QQ� �
)
QQ� �
)
QQ� �
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
Feature	XX} �
.
XX� �
FeatureInfo
XX� �
,
XX� �
_logger
XX� �
)
XX� �
;
XX� �
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
Feature	ZZ| �
.
ZZ� �
FeatureInfo
ZZ� �
,
ZZ� �
_logger
ZZ� �
)
ZZ� �
;
ZZ� �
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
State	^^{ �
.
^^� �
Falling
^^� �
)
^^� �
)
^^� �
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
.	ee �
Feature
ee� �
.
ee� �
FeatureInfo
ee� �
,
ee� �
_logger
ee� �
)
ee� �
;
ee� �
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
Feature	gg �
.
gg� �
FeatureInfo
gg� �
,
gg� �
_logger
gg� �
)
gg� �
;
gg� �
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
entry	tt| �
.
tt� �
Feature
tt� �
.
tt� �
FeatureInfo
tt� �
,
tt� �
_logger
tt� �
)
tt� �
;
tt� �
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
entry	vv{ �
.
vv� �
Feature
vv� �
.
vv� �
FeatureInfo
vv� �
,
vv� �
_logger
vv� �
)
vv� �
;
vv� �
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
.	 �
Feature
� �
.
� �
FeatureInfo
� �
,
� �
_logger
� �
)
� �
;
� �
await
�� 
_stateManager
�� '
.
��' (%
UpdateEnabledStateAsync
��( ?
(
��? @
entry
��@ E
.
��E F
FeatureState
��F R
,
��R S
ShellFeatureState
��T e
.
��e f
State
��f k
.
��k l
Up
��l n
)
��n o
;
��o p
await
�� #
_featureEventHandlers
�� /
.
��/ 0
InvokeAsync
��0 ;
(
��; <
(
��< =
handler
��= D
,
��D E
featureInfo
��F Q
)
��Q R
=>
��S U
handler
��V ]
.
��] ^
EnabledAsync
��^ j
(
��j k
featureInfo
��k v
)
��v w
,
��w x
entry
��y ~
.
��~ 
Feature�� �
.��� �
FeatureInfo��� �
,��� �
_logger��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsRising
�� $
(
��$ %
ShellFeatureState
��% 6
state
��7 <
)
��< =
{
�� 	
return
�� 
state
�� 
.
�� 
InstallState
�� %
==
��& (
ShellFeatureState
��) :
.
��: ;
State
��; @
.
��@ A
Rising
��A G
||
��H J
state
�� 
.
�� 
EnableState
�� $
==
��% '
ShellFeatureState
��( 9
.
��9 :
State
��: ?
.
��? @
Rising
��@ F
;
��F G
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore\Shell\SingleShellSettingsManager.cs
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