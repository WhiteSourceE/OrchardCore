‘

õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskAttribute.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
AllowMultiple, 9
=: ;
false< A
,A B
	InheritedC L
=M N
trueO S
)S T
]T U
public 

class #
BackgroundTaskAttribute (
:) *
	Attribute+ 4
{ 
public 
bool 
Enable 
{ 
get  
;  !
set" %
;% &
}' (
=) *
true+ /
;/ 0
public		 
string		 
Schedule		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
=		- .
$str		/ <
;		< =
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
String

2 8
.

8 9
Empty

9 >
;

> ?
} 
} ’
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskExtensions.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

static 
class $
BackgroundTaskExtensions 0
{ 
public		 
static		 "
BackgroundTaskSettings		 ,
GetDefaultSettings		- ?
(		? @
this		@ D
IBackgroundTask		E T
task		U Y
)		Y Z
{

 	
var 
type 
= 
task 
. 
GetType #
(# $
)$ %
;% &
var 
	attribute 
= 
type  
.  !
GetCustomAttribute! 3
<3 4#
BackgroundTaskAttribute4 K
>K L
(L M
)M N
;N O
if 
( 
	attribute 
!= 
null !
)! "
{ 
return 
new "
BackgroundTaskSettings 1
{ 
Name 
= 
type 
.  
FullName  (
,( )
Enable 
= 
	attribute &
.& '
Enable' -
,- .
Schedule 
= 
	attribute (
.( )
Schedule) 1
,1 2
Description 
=  !
	attribute" +
.+ ,
Description, 7
} 
; 
} 
return 
new "
BackgroundTaskSettings -
(- .
). /
{0 1
Name2 6
=7 8
type9 =
.= >
FullName> F
}G H
;H I
} 	
public 
static 
IBackgroundTask %
GetTaskByName& 3
(3 4
this4 8
IEnumerable9 D
<D E
IBackgroundTaskE T
>T U
tasksV [
,[ \
string] c
named h
)h i
{ 	
return 
tasks 
. 
LastOrDefault &
(& '
t' (
=>) +
t, -
.- .
GetTaskName. 9
(9 :
): ;
==< >
name? C
)C D
;D E
}   	
public"" 
static"" 
string"" 
GetTaskName"" (
(""( )
this"") -
IBackgroundTask"". =
task""> B
)""B C
{## 	
return$$ 
task$$ 
.$$ 
GetType$$ 
($$  
)$$  !
.$$! "
FullName$$" *
;$$* +
}%% 	
}&& 
}'' Ì	
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskSettings.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class "
BackgroundTaskSettings '
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
String+ 1
.1 2
Empty2 7
;7 8
public 
bool 
Enable 
{ 
get  
;  !
set" %
;% &
}' (
=) *
true+ /
;/ 0
public		 
string		 
Schedule		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
=		- .
$str		/ :
;		: ;
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
String

2 8
.

8 9
Empty

9 >
;

> ?
} 
} Ø
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\BackgroundTaskState.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

class 
BackgroundTaskState $
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
public 
DateTime 
LastStartTime %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
}		 
}

 –
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\IBackgroundTask.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

	interface 
IBackgroundTask $
{ 
Task		 
DoWorkAsync		 
(		 
IServiceProvider		 )
serviceProvider		* 9
,		9 :
CancellationToken		; L
cancellationToken		M ^
)		^ _
;		_ `
}

 
} œ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\BackgroundTasks\IBackgroundTaskSettingsProvider.cs
	namespace 	
OrchardCore
 
. 
BackgroundTasks %
{ 
public 

	interface +
IBackgroundTaskSettingsProvider 4
{ 
IChangeToken 
ChangeToken  
{! "
get# &
;& '
}( )
Task		 
<		 "
BackgroundTaskSettings		 #
>		# $
GetSettingsAsync		% 5
(		5 6
IBackgroundTask		6 E
task		F J
)		J K
;		K L
}

 
} ◊
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Caching\Distributed\IMessageBus.cs
	namespace 	
OrchardCore
 
. 
Caching 
. 
Distributed )
{ 
public 

	interface 
IMessageBus  
{ 
Task 
SubscribeAsync 
( 
string "
channel# *
,* +
Action, 2
<2 3
string3 9
,9 :
string; A
>A B
handlerC J
)J K
;K L
Task		 
PublishAsync		 
(		 
string		  
channel		! (
,		( )
string		* 0
message		1 8
)		8 9
;		9 :
}

 
} ¨	
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Caching\ISignal.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Cache" '
{ 
public 

	interface 
ISignal 
:  
IModularTenantEvents 3
{		 
IChangeToken

 
GetToken

 
(

 
string

 $
key

% (
)

( )
;

) *
Task 
SignalTokenAsync 
( 
string $
key% (
)( )
;) *
} 
public 

static 
class 
SignalExtensions (
{ 
public 
static 
void 
DeferredSignalToken .
(. /
this/ 3
ISignal4 ;
signal< B
,B C
stringD J
keyK N
)N O
{ 	

ShellScope 
. 
AddDeferredSignal (
(( )
key) ,
), -
;- .
} 	
} 
} è	
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\ExtensionsEnvironmentExtensions.cs
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
class +
ExtensionsEnvironmentExtensions 7
{ 
public		 
static		 
	IFileInfo		  
GetExtensionFileInfo		  4
(		4 5
this

 
IHostEnvironment

 !
environment

" -
,

- .
IExtensionInfo 
extensionInfo (
,( )
string 
subPath 
) 
{ 	
return 
environment 
. #
ContentRootFileProvider 6
.6 7
GetFileInfo7 B
(B C
Path 
. 
Combine 
( 
extensionInfo *
.* +
SubPath+ 2
,2 3
subPath4 ;
); <
)< =
;= >
} 	
} 
} √
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\CompositeFeaturesProvider.cs
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
class %
CompositeFeaturesProvider *
:+ ,
IFeaturesProvider- >
{ 
private		 
readonly		 
IFeaturesProvider		 *
[		* +
]		+ ,
_featuresProviders		- ?
;		? @
public

 %
CompositeFeaturesProvider

 (
(

( )
params

) /
IFeaturesProvider

0 A
[

A B
]

B C
featuresProviders

D U
)

U V
{ 	
_featuresProviders 
=  
featuresProviders! 2
??3 5
new6 9
IFeaturesProvider: K
[K L
$numL M
]M N
;N O
} 	
public %
CompositeFeaturesProvider (
(( )
IEnumerable) 4
<4 5
IFeaturesProvider5 F
>F G
featuresProvidersH Y
)Y Z
{ 	
if 
( 
featuresProviders !
==" $
null% )
)) *
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
featuresProviders7 H
)H I
)I J
;J K
} 
_featuresProviders 
=  
featuresProviders! 2
.2 3
ToArray3 :
(: ;
); <
;< =
} 	
public 
IEnumerable 
< 
IFeatureInfo '
>' (
GetFeatures) 4
(4 5
IExtensionInfo 
extensionInfo (
,( )
IManifestInfo 
manifestInfo &
)& '
{ 	
List 
< 
IFeatureInfo 
> 
featureInfos +
=, -
new 
List 
< 
IFeatureInfo %
>% &
(& '
)' (
;( )
foreach 
( 
var 
provider !
in" $
_featuresProviders% 7
)7 8
{   
featureInfos!! 
.!! 
AddRange!! %
(!!% &
provider!!& .
.!!. /
GetFeatures!!/ :
(!!: ;
extensionInfo!!; H
,!!H I
manifestInfo!!J V
)!!V W
)!!W X
;!!X Y
}"" 
return$$ 
featureInfos$$ 
;$$  
}%% 	
}&& 
}'' â
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\FeatureEntry.cs
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

abstract 
class 
FeatureEntry &
{ 
public		 
IFeatureInfo		 
FeatureInfo		 '
{		( )
get		* -
;		- .
	protected		/ 8
set		9 <
;		< =
}		> ?
public

 
IEnumerable

 
<

 
Type

 
>

  
ExportedTypes

! .
{

/ 0
get

1 4
;

4 5
	protected

6 ?
set

@ C
;

C D
}

E F
} 
public 

class #
NonCompiledFeatureEntry (
:) *
FeatureEntry+ 7
{ 
public #
NonCompiledFeatureEntry &
(& '
IFeatureInfo' 3
featureInfo4 ?
)? @
{ 	
FeatureInfo 
= 
featureInfo %
;% &
ExportedTypes 
= 

Enumerable &
.& '
Empty' ,
<, -
Type- 1
>1 2
(2 3
)3 4
;4 5
} 	
} 
public 

class  
CompiledFeatureEntry %
:& '
FeatureEntry( 4
{ 
public  
CompiledFeatureEntry #
(# $
IFeatureInfo$ 0
featureInfo1 <
,< =
IEnumerable> I
<I J
TypeJ N
>N O
exportedTypesP ]
)] ^
{ 	
FeatureInfo 
= 
featureInfo %
;% &
ExportedTypes 
= 
exportedTypes )
;) *
} 	
} 
} ‡
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeatureBuilderEvents.cs
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

	interface !
IFeatureBuilderEvents *
{ 
void 
Building 
( "
FeatureBuildingContext ,
context- 4
)4 5
;5 6
void 
Built 
( 
IFeatureInfo 
featureInfo  +
)+ ,
;, -
} 
public

 

class

 "
FeatureBuildingContext

 '
{ 
public 
IManifestInfo 
ManifestInfo )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
IExtensionInfo 
ExtensionInfo +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
	FeatureId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
FeatureName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
[ 
]  
FeatureDependencyIds ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool 
DefaultTenantOnly %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
IsAlwaysEnabled #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
public 

abstract 
class  
FeatureBuilderEvents .
:/ 0!
IFeatureBuilderEvents1 F
{ 
public 
virtual 
void 
Building $
($ %"
FeatureBuildingContext% ;
context< C
)C D
{ 	
} 	
public 
virtual 
void 
Built !
(! "
IFeatureInfo" .
featureInfo/ :
): ;
{   	
}!! 	
}"" 
}## ˇ
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeatureHash.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

	interface 
IFeatureHash !
{ 
Task 
< 
int 
> 
GetFeatureHashAsync %
(% &
)& '
;' (
Task 
< 
int 
> 
GetFeatureHashAsync %
(% &
string& ,
	featureId- 6
)6 7
;7 8
} 
} ã
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeatureInfo.cs
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

	interface 
IFeatureInfo !
{ 
string 
Id 
{ 
get 
; 
} 
string 
Name 
{ 
get 
; 
} 
int 
Priority 
{ 
get 
; 
} 
string 
Category 
{ 
get 
; 
}  
string		 
Description		 
{		 
get		  
;		  !
}		" #
bool

 
DefaultTenantOnly

 
{

  
get

! $
;

$ %
}

& '
IExtensionInfo 
	Extension  
{! "
get# &
;& '
}( )
string 
[ 
] 
Dependencies 
{ 
get  #
;# $
}% &
bool 
IsAlwaysEnabled 
{ 
get "
;" #
}$ %
} 
} “
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\IFeaturesProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Features- 5
{ 
public 

	interface 
IFeaturesProvider &
{ 
IEnumerable 
< 
IFeatureInfo  
>  !
GetFeatures" -
(- .
IExtensionInfo 
extensionInfo (
,( )
IManifestInfo		 
manifestInfo		 &
)		& '
;		' (
}

 
} õ
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\InternalFeatureInfo.cs
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
class 
InternalFeatureInfo $
:% &
IFeatureInfo' 3
{ 
public 
InternalFeatureInfo "
(" #
string 
id 
, 
IExtensionInfo 
extensionInfo (
)( )
{ 	
Id		 
=		 
id		 
;		 
Name

 
=

 
id

 
;

 
Priority 
= 
$num 
; 
Category 
= 
null 
; 
Description 
= 
null 
; 
DefaultTenantOnly 
= 
false  %
;% &
	Extension 
= 
extensionInfo %
;% &
Dependencies 
= 
new 
string %
[% &
$num& '
]' (
;( )
IsAlwaysEnabled 
= 
false #
;# $
} 	
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
Name 
{ 
get  
;  !
}" #
public 
int 
Priority 
{ 
get !
;! "
}# $
public 
string 
Category 
{  
get! $
;$ %
}& '
public 
string 
Description !
{" #
get$ '
;' (
}) *
public 
bool 
DefaultTenantOnly %
{& '
get( +
;+ ,
}- .
public 
IExtensionInfo 
	Extension '
{( )
get* -
;- .
}/ 0
public 
string 
[ 
] 
Dependencies $
{% &
get' *
;* +
}, -
public 
bool 
IsAlwaysEnabled #
{$ %
get& )
;) *
}+ ,
} 
} Ï
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Features\ITypeFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public

 

	interface

  
ITypeFeatureProvider

 )
{ 
IFeatureInfo #
GetFeatureForDependency ,
(, -
Type- 1

dependency2 <
)< =
;= >
void 
TryAdd 
( 
Type 
type 
, 
IFeatureInfo +
feature, 3
)3 4
;4 5
} 
} 
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionDependencyStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface (
IExtensionDependencyStrategy 1
{ 
bool 
HasDependency 
( 
IFeatureInfo '
observer( 0
,0 1
IFeatureInfo2 >
subject? F
)F G
;G H
} 
}		 Õ
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface 
IExtensionInfo #
{ 
string 
Id 
{ 
get 
; 
} 
string 
SubPath 
{ 
get 
; 
} 
bool 
Exists 
{ 
get 
; 
} 
IManifestInfo 
Manifest 
{  
get! $
;$ %
}& '
IEnumerable 
< 
IFeatureInfo  
>  !
Features" *
{+ ,
get- 0
;0 1
}2 3
} 
} ç
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface 
IExtensionManager &
{		 
IExtensionInfo

 
GetExtension

 #
(

# $
string

$ *
extensionId

+ 6
)

6 7
;

7 8
IEnumerable 
< 
IExtensionInfo "
>" #
GetExtensions$ 1
(1 2
)2 3
;3 4
Task 
< 
ExtensionEntry 
> 
LoadExtensionAsync /
(/ 0
IExtensionInfo0 >
extensionInfo? L
)L M
;M N
IEnumerable 
< 
IFeatureInfo  
>  !
GetFeatures" -
(- .
). /
;/ 0
IEnumerable 
< 
IFeatureInfo  
>  !
GetFeatures" -
(- .
string. 4
[4 5
]5 6
featureIdsToLoad7 G
)G H
;H I
IEnumerable 
< 
IFeatureInfo  
>  !"
GetFeatureDependencies" 8
(8 9
string9 ?
	featureId@ I
)I J
;J K
IEnumerable 
< 
IFeatureInfo  
>  ! 
GetDependentFeatures" 6
(6 7
string7 =
	featureId> G
)G H
;H I
Task 
< 
IEnumerable 
< 
FeatureEntry %
>% &
>& '
LoadFeaturesAsync( 9
(9 :
): ;
;; <
Task 
< 
IEnumerable 
< 
FeatureEntry %
>% &
>& '
LoadFeaturesAsync( 9
(9 :
string: @
[@ A
]A B
featureIdsToLoadC S
)S T
;T U
} 
} ™
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\IExtensionPriorityStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface &
IExtensionPriorityStrategy /
{ 
int 
GetPriority 
( 
IFeatureInfo $
feature% ,
), -
;- .
} 
}		 »
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\InternalExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public		 

class		 !
InternalExtensionInfo		 &
:		' (
IExtensionInfo		) 7
{

 
public !
InternalExtensionInfo $
($ %
string% +
subPath, 3
)3 4
{ 	
Id 
= 
Path 
. 
GetFileName !
(! "
subPath" )
)) *
;* +
SubPath 
= 
subPath 
; 
Manifest 
= 
new  
NotFoundManifestInfo /
(/ 0
)0 1
;1 2
Features 
= 

Enumerable !
.! "
Empty" '
<' (
IFeatureInfo( 4
>4 5
(5 6
)6 7
;7 8
} 	
public 
string 
Id 
{ 
get 
; 
}  !
public 
string 
SubPath 
{ 
get  #
;# $
}% &
public 
IManifestInfo 
Manifest %
{& '
get( +
;+ ,
}- .
public 
IEnumerable 
< 
IFeatureInfo '
>' (
Features) 1
{2 3
get4 7
;7 8
}9 :
public 
bool 
Exists 
=> 
Manifest &
.& '
Exists' -
;- .
} 
} Í
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Loaders\ExtensionEntry.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Loaders- 4
{ 
public 

class 
ExtensionEntry 
{ 
public		 
IExtensionInfo		 
ExtensionInfo		 +
{		, -
get		. 1
;		1 2
set		3 6
;		6 7
}		8 9
public

 
Assembly

 
Assembly

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
IEnumerable 
< 
Type 
>  
ExportedTypes! .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool 
IsError 
{ 
get !
;! "
set# &
;& '
}( )
} 
} Ì

ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Manifests\IManifestInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

	interface 
IManifestInfo "
{ 
bool 
Exists 
{ 
get 
; 
} 
string		 
Name		 
{		 
get		 
;		 
}		 
string

 
Description

 
{

 
get

  
;

  !
}

" #
string 
Type 
{ 
get 
; 
} 
string 
Author 
{ 
get 
; 
} 
string 
Website 
{ 
get 
; 
} 
string 
Version 
{ 
get 
; 
} 
IEnumerable 
< 
string 
> 
Tags  
{! "
get# &
;& '
}( )
ModuleAttribute 

ModuleInfo "
{# $
get% (
;( )
}* +
} 
} ˇ
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Manifests\NotFoundManifestInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
	Manifests- 6
{ 
public 

class  
NotFoundManifestInfo %
:& '
IManifestInfo( 5
{ 
public		 
bool		 
Exists		 
=>		 
false		 #
;		# $
public

 
string

 
Name

 
=>

 
null

 "
;

" #
public 
string 
Description !
=>" $
null% )
;) *
public 
string 
Type 
=> 
null "
;" #
public 
string 
Author 
=> 
null  $
;$ %
public 
string 
Website 
=>  
null! %
;% &
public 
string 
Version 
=>  
null! %
;% &
public 
IEnumerable 
< 
string !
>! "
Tags# '
=>( *

Enumerable+ 5
.5 6
Empty6 ;
<; <
string< B
>B C
(C D
)D E
;E F
public 
ModuleAttribute 

ModuleInfo )
=>* ,
null- 1
;1 2
} 
} ˚
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\NotFoundExtensionInfo.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
{ 
public 

class !
NotFoundExtensionInfo &
:' (
IExtensionInfo) 7
{		 
public

 !
NotFoundExtensionInfo

 $
(

$ %
string

% +
extensionId

, 7
)

7 8
{ 	
Features 
= 

Enumerable !
.! "
Empty" '
<' (
IFeatureInfo( 4
>4 5
(5 6
)6 7
;7 8
Id 
= 
extensionId 
; 
Manifest 
= 
new  
NotFoundManifestInfo /
(/ 0
)0 1
;1 2
} 	
public 
bool 
Exists 
=> 
false #
;# $
public 
IEnumerable 
< 
IFeatureInfo '
>' (
Features) 1
{2 3
get4 7
;7 8
}9 :
public 
string 
Id 
{ 
get 
; 
}  !
public 
IManifestInfo 
Manifest %
{& '
get( +
;+ ,
}- .
public 
string 
SubPath 
=>  
Id! #
;# $
} 
} Ë@
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Extensions\Utility\DependencyOrderingUtility.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "

Extensions" ,
., -
Utility- 4
{ 
public 

static 
class 
DependencyOrdering *
{ 
private		 
class		 
Node		 
<		 
T		 
>		 
{

 	
public 
T 
Item 
{ 
get 
;  
set! $
;$ %
}& '
public 
bool 
Used 
{ 
get "
;" #
set$ '
;' (
}) *
} 	
public 
static 
IEnumerable !
<! "
T" #
># $,
 OrderByDependenciesAndPriorities% E
<E F
TF G
>G H
(H I
thisI M
IEnumerableN Y
<Y Z
TZ [
>[ \
items] b
,b c
Funcd h
<h i
Ti j
,j k
Tl m
,m n
boolo s
>s t
hasDependency	u Ç
,
Ç É
Func
Ñ à
<
à â
T
â ä
,
ä ã
int
å è
>
è ê
getPriority
ë ú
)
ú ù
{ 	
var 
nodes 
= 
items 
. 
Select $
($ %
i% &
=>' )
new* -
Node. 2
<2 3
T3 4
>4 5
{6 7
Item8 <
== >
i? @
}A B
)B C
.C D
ToArrayD K
(K L
)L M
;M N
var 
result 
= 
new 
List !
<! "
T" #
># $
($ %
)% &
;& '
foreach 
( 
var 
node 
in  
nodes! &
)& '
{ 
Add 
( 
node 
, 
result  
,  !
nodes" '
,' (
hasDependency) 6
)6 7
;7 8
} 
for 
( 
int 
index 
= 
$num 
; 
index  %
<& '
result( .
.. /
Count/ 4
;4 5
index6 ;
++; =
)= >
{   
MoveUp!! 
(!! 
result!! 
,!! 
index!! $
,!!$ %
LowestIndex!!& 1
(!!1 2
result!!2 8
,!!8 9
index!!: ?
,!!? @
hasDependency!!A N
,!!N O
getPriority!!P [
)!![ \
)!!\ ]
;!!] ^
}"" 
return$$ 
result$$ 
;$$ 
}%% 	
private'' 
static'' 
void'' 
Add'' 
<''  
T''  !
>''! "
(''" #
Node''# '
<''' (
T''( )
>'') *
node''+ /
,''/ 0
ICollection''1 <
<''< =
T''= >
>''> ?
list''@ D
,''D E
IEnumerable''F Q
<''Q R
Node''R V
<''V W
T''W X
>''X Y
>''Y Z
nodes''[ `
,''` a
Func''b f
<''f g
T''g h
,''h i
T''j k
,''k l
bool''m q
>''q r
hasDependency	''s Ä
)
''Ä Å
{(( 	
if)) 
()) 
node)) 
.)) 
Used)) 
))) 
return** 
;** 
node,, 
.,, 
Used,, 
=,, 
true,, 
;,, 
foreach.. 
(.. 
var.. 

dependency.. #
in..$ &
nodes..' ,
..., -
Where..- 2
(..2 3
n..3 4
=>..5 7
hasDependency..8 E
(..E F
node..F J
...J K
Item..K O
,..O P
n..Q R
...R S
Item..S W
)..W X
)..X Y
)..Y Z
{// 
Add00 
(00 

dependency00 
,00 
list00  $
,00$ %
nodes00& +
,00+ ,
hasDependency00- :
)00: ;
;00; <
}11 
list33 
.33 
Add33 
(33 
node33 
.33 
Item33 
)33 
;33  
}44 	
private66 
static66 
int66 
LowestIndex66 &
<66& '
T66' (
>66( )
(66) *
List66* .
<66. /
T66/ 0
>660 1
list662 6
,666 7
int668 ;
index66< A
,66A B
Func66C G
<66G H
T66H I
,66I J
T66K L
,66L M
bool66N R
>66R S
hasDependency66T a
,66a b
Func66c g
<66g h
T66h i
,66i j
int66k n
>66n o
getPriority66p {
)66{ |
{77 	
double88 
priority88 
=88 
getPriority88 )
(88) *
list88* .
[88. /
index88/ 4
]884 5
)885 6
;886 7
int:: 
lowestIndex:: 
=:: 
index:: #
;::# $
for;; 
(;; 
int;; 
i;; 
=;; 
index;; 
-;;  
$num;;! "
;;;" #
i;;$ %
>=;;& (
$num;;) *
;;;* +
i;;, -
--;;- /
);;/ 0
{<< 
if== 
(== 
hasDependency== !
(==! "
list==" &
[==& '
index==' ,
]==, -
,==- .
list==/ 3
[==3 4
i==4 5
]==5 6
)==6 7
)==7 8
{>> 
return?? 
lowestIndex?? &
;??& '
}@@ 
doubleBB 
currentPriorityBB &
=BB' (
getPriorityBB) 4
(BB4 5
listBB5 9
[BB9 :
iBB: ;
]BB; <
)BB< =
;BB= >
ifCC 
(CC 
currentPriorityCC #
>CC$ %
priorityCC& .
)CC. /
{DD 
lowestIndexEE 
=EE  !
iEE" #
;EE# $
}FF 
}GG 
returnII 
lowestIndexII 
;II 
}JJ 	
privateLL 
staticLL 
voidLL 
MoveUpLL "
<LL" #
TLL# $
>LL$ %
(LL% &
ListLL& *
<LL* +
TLL+ ,
>LL, -
listLL. 2
,LL2 3
intLL4 7
indexLL8 =
,LL= >
intLL? B

lowerIndexLLC M
)LLM N
{MM 	
ifNN 
(NN 
indexNN 
<NN 

lowerIndexNN "
)NN" #
{OO 
throwPP 
newPP 
ArgumentExceptionPP +
(PP+ ,
$strPP, 8
)PP8 9
;PP9 :
}QQ 
ifSS 
(SS 
indexSS 
!=SS 

lowerIndexSS #
)SS# $
{TT 
TUU 
tempUU 
=UU 
listUU 
[UU 
indexUU #
]UU# $
;UU$ %
forWW 
(WW 
;WW 
indexWW 
>WW 

lowerIndexWW )
;WW) *
indexWW+ 0
--WW0 2
)WW2 3
{XX 
listYY 
[YY 
indexYY 
]YY 
=YY  !
listYY" &
[YY& '
indexYY' ,
-YY- .
$numYY/ 0
]YY0 1
;YY1 2
}ZZ 
list\\ 
[\\ 

lowerIndex\\ 
]\\  
=\\! "
temp\\# '
;\\' (
}]] 
}^^ 	
}__ 
}`` ªC
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\IdGenerator.cs
	namespace 	
OrchardCore
 
{ 
public 

static 
class 
IdGenerator #
{ 
private 
static 
readonly 
char  $
[$ %
]% &
_encode32Chars' 5
=6 7
$str8 Z
.Z [
ToCharArray[ f
(f g
)g h
;h i
public

 
static

 
string

 

GenerateId

 '
(

' (
)

( )
{ 	
var 
guid 
= 
Guid 
. 
NewGuid #
(# $
)$ %
.% &
ToByteArray& 1
(1 2
)2 3
;3 4
return 
String 
. 
Create  
(  !
$num! #
,# $
guid% )
,) *
(+ ,
buffer, 2
,2 3
guid4 8
)8 9
=>: <
{ 
var 
hs 
= 
BitConverter %
.% &
ToInt64& -
(- .
guid. 2
,2 3
$num4 5
)5 6
;6 7
var 
ls 
= 
BitConverter %
.% &
ToInt64& -
(- .
guid. 2
,2 3
$num4 5
)5 6
;6 7
char 
[ 
] 
encode32Chars $
=% &
_encode32Chars' 5
;5 6
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars )
[) *
(* +
hs+ -
>>. 0
$num1 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer 
[ 
$num 
] 
= 
encode32Chars *
[* +
(+ ,
hs, .
>>/ 1
$num2 4
)4 5
&6 7
$num8 :
]: ;
;; <
buffer 
[ 
$num 
] 
= 
encode32Chars *
[* +
(+ ,
hs, .
>>/ 1
$num2 3
)3 4
&5 6
$num7 9
]9 :
;: ;
buffer   
[   
$num   
]   
=   
encode32Chars   *
[  * +
hs  + -
&  . /
$num  0 2
]  2 3
;  3 4
buffer"" 
["" 
$num"" 
]"" 
="" 
encode32Chars"" *
[""* +
(""+ ,
ls"", .
>>""/ 1
$num""2 4
)""4 5
&""6 7
$num""8 :
]"": ;
;""; <
buffer## 
[## 
$num## 
]## 
=## 
encode32Chars## *
[##* +
(##+ ,
ls##, .
>>##/ 1
$num##2 4
)##4 5
&##6 7
$num##8 :
]##: ;
;##; <
buffer$$ 
[$$ 
$num$$ 
]$$ 
=$$ 
encode32Chars$$ *
[$$* +
($$+ ,
ls$$, .
>>$$/ 1
$num$$2 4
)$$4 5
&$$6 7
$num$$8 :
]$$: ;
;$$; <
buffer%% 
[%% 
$num%% 
]%% 
=%% 
encode32Chars%% *
[%%* +
(%%+ ,
ls%%, .
>>%%/ 1
$num%%2 4
)%%4 5
&%%6 7
$num%%8 :
]%%: ;
;%%; <
buffer&& 
[&& 
$num&& 
]&& 
=&& 
encode32Chars&& *
[&&* +
(&&+ ,
ls&&, .
>>&&/ 1
$num&&2 4
)&&4 5
&&&6 7
$num&&8 :
]&&: ;
;&&; <
buffer'' 
['' 
$num'' 
]'' 
='' 
encode32Chars'' *
[''* +
(''+ ,
ls'', .
>>''/ 1
$num''2 4
)''4 5
&''6 7
$num''8 :
]'': ;
;''; <
buffer(( 
[(( 
$num(( 
](( 
=(( 
encode32Chars(( *
[((* +
(((+ ,
ls((, .
>>((/ 1
$num((2 4
)((4 5
&((6 7
$num((8 :
]((: ;
;((; <
buffer)) 
[)) 
$num)) 
])) 
=)) 
encode32Chars)) *
[))* +
())+ ,
ls)), .
>>))/ 1
$num))2 4
)))4 5
&))6 7
$num))8 :
])): ;
;)); <
buffer** 
[** 
$num** 
]** 
=** 
encode32Chars** *
[*** +
(**+ ,
ls**, .
>>**/ 1
$num**2 4
)**4 5
&**6 7
$num**8 :
]**: ;
;**; <
buffer++ 
[++ 
$num++ 
]++ 
=++ 
encode32Chars++ *
[++* +
(+++ ,
ls++, .
>>++/ 1
$num++2 4
)++4 5
&++6 7
$num++8 :
]++: ;
;++; <
buffer,, 
[,, 
$num,, 
],, 
=,, 
encode32Chars,, *
[,,* +
(,,+ ,
ls,,, .
>>,,/ 1
$num,,2 4
),,4 5
&,,6 7
$num,,8 :
],,: ;
;,,; <
buffer-- 
[-- 
$num-- 
]-- 
=-- 
encode32Chars-- *
[--* +
(--+ ,
ls--, .
>>--/ 1
$num--2 3
)--3 4
&--5 6
$num--7 9
]--9 :
;--: ;
buffer.. 
[.. 
$num.. 
].. 
=.. 
encode32Chars.. *
[..* +
ls..+ -
&... /
$num..0 2
]..2 3
;..3 4
}// 
)// 
;// 
}00 	
}11 
}22 ¢
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\IOrchardHelper.cs
	namespace 	
OrchardCore
 
{ 
public 

	interface 
IOrchardHelper #
{ 
HttpContext 
HttpContext 
{  !
get" %
;% &
}' (
} 
}		 À
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Localization\CalendarName.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

enum 
CalendarName 
{ 
Hebrew 
, 
Hijri		 
,		 
	Gregorian

 
,

 
Julian 
, 
Persian 
, 
UmAlQura 
, 
Unknown 
} 
} ì
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Localization\CalendarSelectorResult.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public		 

class		 "
CalendarSelectorResult		 '
{

 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
Func 
< 
Task 
< 
CalendarName %
>% &
>& '
CalendarName( 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} Í
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Localization\CultureScope.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

sealed 
class 
CultureScope $
:% &
IDisposable' 2
{ 
private 
readonly 
CultureInfo $
_originalCulture% 5
;5 6
private		 
readonly		 
CultureInfo		 $
_originalUICulture		% 7
;		7 8
private 
CultureScope 
( 
CultureInfo (
culture) 0
,0 1
CultureInfo2 =
	uiCulture> G
)G H
{ 	
Culture 
= 
culture 
; 
	UICulture 
= 
	uiCulture !
;! "
_originalCulture 
= 
CultureInfo *
.* +
CurrentCulture+ 9
;9 :
_originalUICulture 
=  
CultureInfo! ,
., -
CurrentUICulture- =
;= >
SetCultures 
( 
culture 
,  
	uiCulture! *
)* +
;+ ,
} 	
public 
CultureInfo 
Culture "
{# $
get% (
;( )
}* +
public 
CultureInfo 
	UICulture $
{% &
get' *
;* +
}, -
public 
static 
CultureScope "
Create# )
() *
string* 0
culture1 8
)8 9
=>: <
Create= C
(C D
cultureD K
,K L
cultureM T
)T U
;U V
public 
static 
CultureScope "
Create# )
() *
string* 0
culture1 8
,8 9
string: @
	uiCultureA J
)J K
=> 
Create 
( 
CultureInfo !
.! "
GetCultureInfo" 0
(0 1
culture1 8
)8 9
,9 :
CultureInfo; F
.F G
GetCultureInfoG U
(U V
	uiCultureV _
)_ `
)` a
;a b
public 
static 
CultureScope "
Create# )
() *
CultureInfo* 5
culture6 =
)= >
=>? A
CreateB H
(H I
cultureI P
,P Q
cultureR Y
)Y Z
;Z [
public   
static   
CultureScope   "
Create  # )
(  ) *
CultureInfo  * 5
culture  6 =
,  = >
CultureInfo  ? J
	uiCulture  K T
)  T U
=>  V X
new  Y \
CultureScope  ] i
(  i j
culture  j q
,  q r
	uiCulture  s |
)  | }
;  } ~
public"" 
void"" 
Dispose"" 
("" 
)"" 
{## 	
SetCultures$$ 
($$ 
_originalCulture$$ (
,$$( )
_originalUICulture$$* <
)$$< =
;$$= >
}%% 	
private'' 
static'' 
void'' 
SetCultures'' '
(''' (
CultureInfo''( 3
culture''4 ;
,''; <
CultureInfo''= H
	uiCulture''I R
)''R S
{(( 	
CultureInfo)) 
.)) 
CurrentCulture)) &
=))' (
culture))) 0
;))0 1
CultureInfo** 
.** 
CurrentUICulture** (
=**) *
	uiCulture**+ 4
;**4 5
}++ 	
},, 
}-- É
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Localization\ICalendarManager.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface 
ICalendarManager %
{		 
Task 
< 
CalendarName 
> 
GetCurrentCalendar -
(- .
). /
;/ 0
} 
} ç
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Localization\ICalendarSelector.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface 
ICalendarSelector &
{		 
Task 
< "
CalendarSelectorResult #
># $
GetCalendarAsync% 5
(5 6
)6 7
;7 8
} 
} ø
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Localization\ILocalizationService.cs
	namespace 	
OrchardCore
 
. 
Localization "
{ 
public 

	interface  
ILocalizationService )
{		 
Task 
< 
string 
> "
GetDefaultCultureAsync +
(+ ,
), -
;- .
Task 
< 
string 
[ 
] 
> %
GetSupportedCulturesAsync 0
(0 1
)1 2
;2 3
} 
} ∏
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Locking\Distributed\IDistributedLock.cs
	namespace 	
OrchardCore
 
. 
Locking 
. 
Distributed )
{ 
public 

	interface 
IDistributedLock %
:& '
ILock( -
{ 
} 
} ¯
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Locking\ILocalLock.cs
	namespace 	
OrchardCore
 
. 
Locking 
{ 
public 

	interface 

ILocalLock 
:  !
ILock" '
{ 
} 
} È	
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Locking\ILock.cs
	namespace 	
OrchardCore
 
. 
Locking 
{ 
public 

	interface 
ILock 
{ 
Task 
< 
ILocker 
> 
AcquireLockAsync &
(& '
string' -
key. 1
,1 2
TimeSpan3 ;
?; <

expiration= G
=H I
nullJ N
)N O
;O P
Task 
< 
( 
ILocker 
locker 
, 
bool "
locked# )
)) *
>* +
TryAcquireLockAsync, ?
(? @
string@ F
keyG J
,J K
TimeSpanL T
timeoutU \
,\ ]
TimeSpan^ f
?f g

expirationh r
=s t
nullu y
)y z
;z {
Task 
< 
bool 
> 
IsLockAcquiredAsync &
(& '
string' -
key. 1
)1 2
;2 3
} 
} •
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Locking\ILocker.cs
	namespace 	
OrchardCore
 
. 
Locking 
{ 
public 

	interface 
ILocker 
: 
IDisposable *
,* +
IAsyncDisposable, <
{ 
} 
} ≠(
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Application.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class 
Application 
{		 
private

 
readonly

 

Dictionary

 #
<

# $
string

$ *
,

* +
Module

, 2
>

2 3
_modulesByName

4 B
;

B C
private 
readonly 
List 
< 
Module $
>$ %
_modules& .
;. /
public 
const 
string 
ModulesPath '
=( )
$str* 1
;1 2
public 
const 
string 
ModulesRoot '
=( )
ModulesPath* 5
+6 7
$str8 ;
;; <
public 
const 
string 

ModuleName &
=' (
$str) C
;C D
public 
const 
string 
ModuleDescription -
=. /
$str0 g
;g h
public 
static 
readonly 
string %
ModulePriority& 4
=5 6
int7 :
.: ;
MinValue; C
.C D
ToStringD L
(L M
)M N
;N O
public 
const 
string 
ModuleCategory *
=+ ,
$str- :
;: ;
public 
const 
string 
DefaultFeatureId ,
=- .
$str/ D
;D E
public 
const 
string 
DefaultFeatureName .
=/ 0
$str1 N
;N O
public 
const 
string %
DefaultFeatureDescription 5
=6 7
$str8 m
;m n
public 
Application 
( 
IHostEnvironment +
environment, 7
,7 8
IEnumerable9 D
<D E
ModuleE K
>K L
modulesM T
)T U
{ 	
Name 
= 
environment 
. 
ApplicationName .
;. /
Path 
= 
environment 
. 
ContentRootPath .
;. /
Root 
= 
Path 
+ 
$char 
; 

ModulePath 
= 
ModulesRoot $
+% &
Name' +
;+ ,

ModuleRoot 
= 

ModulePath #
+$ %
$char& )
;) *
Assembly!! 
=!! 
Assembly!! 
.!!  
Load!!  $
(!!$ %
new!!% (
AssemblyName!!) 5
(!!5 6
Name!!6 :
)!!: ;
)!!; <
;!!< =
_modules## 
=## 
new## 
List## 
<##  
Module##  &
>##& '
(##' (
modules##( /
)##/ 0
;##0 1
_modulesByName$$ 
=$$ 
_modules$$ %
.$$% &
ToDictionary$$& 2
($$2 3
m$$3 4
=>$$5 7
m$$8 9
.$$9 :
Name$$: >
,$$> ?
m$$@ A
=>$$B D
m$$E F
)$$F G
;$$G H
}%% 	
public'' 
string'' 
Name'' 
{'' 
get''  
;''  !
}''" #
public(( 
string(( 
Path(( 
{(( 
get((  
;((  !
}((" #
public)) 
string)) 
Root)) 
{)) 
get))  
;))  !
}))" #
public** 
string** 

ModulePath**  
{**! "
get**# &
;**& '
}**( )
public++ 
string++ 

ModuleRoot++  
{++! "
get++# &
;++& '
}++( )
public,, 
Assembly,, 
Assembly,,  
{,,! "
get,,# &
;,,& '
},,( )
public-- 
IEnumerable-- 
<-- 
Module-- !
>--! "
Modules--# *
=>--+ -
_modules--. 6
;--6 7
public// 
Module// 
	GetModule// 
(//  
string//  &
name//' +
)//+ ,
{00 	
if11 
(11 
!11 
_modulesByName11 
.11  
TryGetValue11  +
(11+ ,
name11, 0
,110 1
out112 5
var116 9
module11: @
)11@ A
)11A B
{22 
return33 
new33 
Module33 !
(33! "
string33" (
.33( )
Empty33) .
)33. /
;33/ 0
}44 
return66 
module66 
;66 
}77 	
}88 
}99 ﬁ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\AssemblyAttributeModuleNamesProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

class		 0
$AssemblyAttributeModuleNamesProvider		 5
:		6 7 
IModuleNamesProvider		8 L
{

 
private 
readonly 
List 
< 
string $
>$ %
_moduleNames& 2
;2 3
public 0
$AssemblyAttributeModuleNamesProvider 3
(3 4
IHostEnvironment4 D
hostingEnvironmentE W
)W X
{ 	
var 
assembly 
= 
Assembly #
.# $
Load$ (
(( )
new) ,
AssemblyName- 9
(9 :
hostingEnvironment: L
.L M
ApplicationNameM \
)\ ]
)] ^
;^ _
_moduleNames 
= 
assembly #
.# $
GetCustomAttributes$ 7
<7 8
ModuleNameAttribute8 K
>K L
(L M
)M N
.N O
SelectO U
(U V
mV W
=>X Z
m[ \
.\ ]
Name] a
)a b
.b c
ToListc i
(i j
)j k
;k l
} 	
public 
IEnumerable 
< 
string !
>! "
GetModuleNames# 1
(1 2
)2 3
{ 	
return 
_moduleNames 
;  
} 	
} 
} Ó
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Asset.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class 
Asset 
{ 
public 
Asset 
( 
string 
asset !
)! "
{ 	
asset 
= 
asset 
. 
Replace !
(! "
$char" &
,& '
$char( +
)+ ,
;, -
var 
index 
= 
asset 
. 
IndexOf %
(% &
$char& )
)) *
;* +
if

 
(

 
index

 
==

 
-

 
$num

 
)

 
{ 
ModuleAssetPath 
=  !
string" (
.( )
Empty) .
;. /
ProjectAssetPath  
=! "
string# )
.) *
Empty* /
;/ 0
} 
else 
{ 
ModuleAssetPath 
=  !
asset" '
.' (
	Substring( 1
(1 2
$num2 3
,3 4
index5 :
): ;
;; <
ProjectAssetPath  
=! "
asset# (
.( )
	Substring) 2
(2 3
index3 8
+9 :
$num; <
)< =
;= >
} 
} 	
public 
string 
ModuleAssetPath %
{& '
get( +
;+ ,
}- .
public 
string 
ProjectAssetPath &
{' (
get) ,
;, -
}. /
} 
} †C
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Builder\OrchardCoreBuilder.cs
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

class

 
OrchardCoreBuilder

 #
{ 
private 

Dictionary 
< 
int 
, 
StartupActions  .
>. /
_actions0 8
{9 :
get; >
;> ?
}@ A
=B C
newD G

DictionaryH R
<R S
intS V
,V W
StartupActionsX f
>f g
(g h
)h i
;i j
public 
OrchardCoreBuilder !
(! "
IServiceCollection" 4
services5 =
)= >
{ 	
ApplicationServices 
=  !
services" *
;* +
} 	
public 
IServiceCollection !
ApplicationServices" 5
{6 7
get8 ;
;; <
}= >
public 
OrchardCoreBuilder !
RegisterStartup" 1
<1 2
T2 3
>3 4
(4 5
)5 6
where7 <
T= >
:? @
classA F
,F G
IStartupH P
{ 	
ApplicationServices 
.  
AddTransient  ,
<, -
IStartup- 5
,5 6
T7 8
>8 9
(9 :
): ;
;; <
return 
this 
; 
} 	
public!! 
OrchardCoreBuilder!! !
ConfigureServices!!" 3
(!!3 4
Action!!4 :
<!!: ;
IServiceCollection!!; M
,!!M N
IServiceProvider!!O _
>!!_ `
	configure!!a j
,!!j k
int!!l o
order!!p u
=!!v w
$num!!x y
)!!y z
{"" 	
if## 
(## 
!## 
_actions## 
.## 
TryGetValue## %
(##% &
order##& +
,##+ ,
out##- 0
var##1 4
actions##5 <
)##< =
)##= >
{$$ 
actions%% 
=%% 
_actions%% "
[%%" #
order%%# (
]%%( )
=%%* +
new%%, /
StartupActions%%0 >
(%%> ?
order%%? D
)%%D E
;%%E F
ApplicationServices'' #
.''# $
AddTransient''$ 0
<''0 1
IStartup''1 9
>''9 :
('': ;
sp''; =
=>''> @
new''A D!
StartupActionsStartup''E Z
(''Z [
sp(( 
.(( 
GetRequiredService(( )
<(() *
IServiceProvider((* :
>((: ;
(((; <
)((< =
,((= >
actions((? F
,((F G
order((H M
)((M N
)((N O
;((O P
})) 
actions++ 
.++ $
ConfigureServicesActions++ ,
.++, -
Add++- 0
(++0 1
	configure++1 :
)++: ;
;++; <
return-- 
this-- 
;-- 
}.. 	
public66 
OrchardCoreBuilder66 !
ConfigureServices66" 3
(663 4
Action664 :
<66: ;
IServiceCollection66; M
>66M N
	configure66O X
,66X Y
int66Z ]
order66^ c
=66d e
$num66f g
)66g h
{77 	
return88 
ConfigureServices88 $
(88$ %
(88% &
s88& '
,88' (
sp88) +
)88+ ,
=>88- /
	configure880 9
(889 :
s88: ;
)88; <
,88< =
order88> C
)88C D
;88D E
}99 	
public@@ 
OrchardCoreBuilder@@ !
	Configure@@" +
(@@+ ,
Action@@, 2
<@@2 3
IApplicationBuilder@@3 F
,@@F G!
IEndpointRouteBuilder@@H ]
,@@] ^
IServiceProvider@@_ o
>@@o p
	configure@@q z
,@@z {
int@@| 
order
@@Ä Ö
=
@@Ü á
$num
@@à â
)
@@â ä
{AA 	
ifBB 
(BB 
!BB 
_actionsBB 
.BB 
TryGetValueBB %
(BB% &
orderBB& +
,BB+ ,
outBB- 0
varBB1 4
actionsBB5 <
)BB< =
)BB= >
{CC 
actionsDD 
=DD 
_actionsDD "
[DD" #
orderDD# (
]DD( )
=DD* +
newDD, /
StartupActionsDD0 >
(DD> ?
orderDD? D
)DDD E
;DDE F
ApplicationServicesFF #
.FF# $
AddTransientFF$ 0
<FF0 1
IStartupFF1 9
>FF9 :
(FF: ;
spFF; =
=>FF> @
newFFA D!
StartupActionsStartupFFE Z
(FFZ [
spGG 
.GG 
GetRequiredServiceGG )
<GG) *
IServiceProviderGG* :
>GG: ;
(GG; <
)GG< =
,GG= >
actionsGG? F
,GGF G
orderGGH M
)GGM N
)GGN O
;GGO P
}HH 
actionsJJ 
.JJ 
ConfigureActionsJJ $
.JJ$ %
AddJJ% (
(JJ( )
	configureJJ) 2
)JJ2 3
;JJ3 4
returnLL 
thisLL 
;LL 
}MM 	
publicTT 
OrchardCoreBuilderTT !
	ConfigureTT" +
(TT+ ,
ActionTT, 2
<TT2 3
IApplicationBuilderTT3 F
,TTF G!
IEndpointRouteBuilderTTH ]
>TT] ^
	configureTT_ h
,TTh i
intTTj m
orderTTn s
=TTt u
$numTTv w
)TTw x
{UU 	
returnVV 
	ConfigureVV 
(VV 
(VV 
appVV !
,VV! "
routesVV# )
,VV) *
spVV+ -
)VV- .
=>VV/ 1
	configureVV2 ;
(VV; <
appVV< ?
,VV? @
routesVVA G
)VVG H
,VVH I
orderVVJ O
)VVO P
;VVP Q
}WW 	
public^^ 
OrchardCoreBuilder^^ !
	Configure^^" +
(^^+ ,
Action^^, 2
<^^2 3
IApplicationBuilder^^3 F
>^^F G
	configure^^H Q
,^^Q R
int^^S V
order^^W \
=^^] ^
$num^^_ `
)^^` a
{__ 	
return`` 
	Configure`` 
(`` 
(`` 
app`` !
,``! "
routes``# )
,``) *
sp``+ -
)``- .
=>``/ 1
	configure``2 ;
(``; <
app``< ?
)``? @
,``@ A
order``B G
)``G H
;``H I
}aa 	
publiccc 
OrchardCoreBuildercc !
EnableFeaturecc" /
(cc/ 0
stringcc0 6
idcc7 9
)cc9 :
{dd 	
returnee 
ConfigureServicesee $
(ee$ %
servicesee% -
=>ee. 0
{ff 
forgg 
(gg 
vargg 
indexgg 
=gg  
$numgg! "
;gg" #
indexgg$ )
<gg* +
servicesgg, 4
.gg4 5
Countgg5 :
;gg: ;
indexgg< A
++ggA C
)ggC D
{hh 
varii 
serviceii 
=ii  !
servicesii" *
[ii* +
indexii+ 0
]ii0 1
;ii1 2
ifjj 
(jj 
servicejj 
.jj  "
ImplementationInstancejj  6
isjj7 9
ShellFeaturejj: F
featurejjG N
&&jjO Q
stringkk 
.kk 
Equalskk %
(kk% &
featurekk& -
.kk- .
Idkk. 0
,kk0 1
idkk2 4
,kk4 5
StringComparisonkk6 F
.kkF G
OrdinalIgnoreCasekkG X
)kkX Y
)kkY Z
{ll 
returnmm 
;mm 
}nn 
}oo 
servicesqq 
.qq 
AddSingletonqq %
(qq% &
newqq& )
ShellFeatureqq* 6
(qq6 7
idqq7 9
,qq9 :
alwaysEnabledqq; H
:qqH I
trueqqJ N
)qqN O
)qqO P
;qqP Q
}rr 
)rr 
;rr 
}ss 	
}tt 
}uu Ω
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Builder\StartupActions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
internal 
class 
StartupActions !
{		 
public

 
StartupActions

 
(

 
int

 !
order

" '
)

' (
{ 	
Order 
= 
order 
; 
} 	
public 
int 
Order 
{ 
get 
; 
}  !
public 
ICollection 
< 
Action !
<! "
IServiceCollection" 4
,4 5
IServiceProvider6 F
>F G
>G H$
ConfigureServicesActionsI a
{b c
getd g
;g h
}i j
=k l
newm p
Listq u
<u v
Actionv |
<| }
IServiceCollection	} è
,
è ê
IServiceProvider
ë °
>
° ¢
>
¢ £
(
£ §
)
§ •
;
• ¶
public 
ICollection 
< 
Action !
<! "
IApplicationBuilder" 5
,5 6!
IEndpointRouteBuilder7 L
,L M
IServiceProviderN ^
>^ _
>_ `
ConfigureActionsa q
{r s
gett w
;w x
}y z
={ |
new	} Ä
List
Å Ö
<
Ö Ü
Action
Ü å
<
å ç!
IApplicationBuilder
ç †
,
† °#
IEndpointRouteBuilder
¢ ∑
,
∑ ∏
IServiceProvider
π …
>
…  
>
  À
(
À Ã
)
Ã Õ
;
Õ Œ
} 
} Ï
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Builder\StartupActionsStartup.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
internal 
class !
StartupActionsStartup (
:) *
StartupBase+ 6
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
private 
readonly 
StartupActions '
_actions( 0
;0 1
public !
StartupActionsStartup $
($ %
IServiceProvider% 5
serviceProvider6 E
,E F
StartupActionsG U
actionsV ]
,] ^
int_ b
orderc h
)h i
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
_actions 
= 
actions 
; 
Order 
= 
order 
; 
} 	
public 
override 
int 
Order !
{" #
get$ '
;' (
}) *
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
foreach 
( 
var 
configureServices *
in+ -
_actions. 6
.6 7$
ConfigureServicesActions7 O
)O P
{ 
configureServices !
?! "
." #
Invoke# )
() *
services* 2
,2 3
_serviceProvider4 D
)D E
;E F
} 
} 	
public!! 
override!! 
void!! 
	Configure!! &
(!!& '
IApplicationBuilder!!' :
app!!; >
,!!> ?!
IEndpointRouteBuilder!!@ U
routes!!V \
,!!\ ]
IServiceProvider!!^ n
serviceProvider!!o ~
)!!~ 
{"" 	
foreach## 
(## 
var## 
	configure## "
in### %
_actions##& .
.##. /
ConfigureActions##/ ?
)##? @
{$$ 
	configure%% 
?%% 
.%% 
Invoke%% !
(%%! "
app%%" %
,%%% &
routes%%' -
,%%- .
serviceProvider%%/ >
)%%> ?
;%%? @
}&& 
}'' 	
}(( 
})) ≈
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Exceptions\ExceptionExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
ExceptionExtensions +
{ 
public		 
static		 
bool		 
IsFatal		 "
(		" #
this		# '
	Exception		( 1
ex		2 4
)		4 5
{

 	
return 
ex 
is  
OutOfMemoryException *
||+ -
ex 
is 
SecurityException '
||( *
ex 
is 
SEHException "
;" #
} 	
} 
} ™
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\EnumerableExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

static		 
class		  
EnumerableExtensions		 ,
{

 
public 
static 
Task 
ForEachAsync '
<' (
T( )
>) *
(* +
this+ /
IEnumerable0 ;
<; <
T< =
>= >
source? E
,E F
FuncG K
<K L
TL M
,M N
TaskO S
>S T
bodyU Y
)Y Z
{ 	
var 
partitionCount 
=  
System! '
.' (
Environment( 3
.3 4
ProcessorCount4 B
;B C
return 
Task 
. 
WhenAll 
(  
from 
	partition 
in !
Partitioner" -
.- .
Create. 4
(4 5
source5 ;
); <
.< =
GetPartitions= J
(J K
partitionCountK Y
)Y Z
select 
Task 
. 
Run 
(  
async  %
delegate& .
{ 
using 
( 
	partition $
)$ %
{ 
while 
( 
	partition (
.( )
MoveNext) 1
(1 2
)2 3
)3 4
{ 
await !
body" &
(& '
	partition' 0
.0 1
Current1 8
)8 9
;9 :
} 
} 
} 
) 
) 
; 
} 	
} 
} û
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\HttpContextExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class !
HttpContextExtensions -
{ 
public 
static 
HttpContext !!
UseShellScopeServices" 7
(7 8
this8 <
HttpContext= H
httpContextI T
)T U
{ 	
httpContext 
. 
RequestServices '
=( )
new* -
ShellScopeServices. @
(@ A
httpContextA L
.L M
RequestServicesM \
)\ ]
;] ^
return 
httpContext 
; 
} 	
} 
} Ö‹
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\InvokeExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
InvokeExtensions (
{		 
public 
static 
void 
Invoke !
<! "
TEvents" )
>) *
(* +
this+ /
IEnumerable0 ;
<; <
TEvents< C
>C D
eventsE K
,K L
ActionM S
<S T
TEventsT [
>[ \
dispatch] e
,e f
ILoggerg n
loggero u
)u v
{ 	
foreach 
( 
var 
sink 
in  
events! '
)' (
{ 
try 
{ 
dispatch 
( 
sink !
)! "
;" #
} 
catch 
( 
	Exception  
ex! #
)# $
{ 
HandleException #
(# $
ex$ &
,& '
logger( .
,. /
typeof0 6
(6 7
TEvents7 >
)> ?
.? @
Name@ D
,D E
sinkF J
.J K
GetTypeK R
(R S
)S T
.T U
FullNameU ]
)] ^
;^ _
} 
} 
} 	
public 
static 
void 
Invoke !
<! "
TEvents" )
,) *
T1+ -
>- .
(. /
this/ 3
IEnumerable4 ?
<? @
TEvents@ G
>G H
eventsI O
,O P
ActionQ W
<W X
TEventsX _
,_ `
T1a c
>c d
dispatche m
,m n
T1o q
arg1r v
,v w
ILoggerx 
logger
Ä Ü
)
Ü á
{   	
foreach!! 
(!! 
var!! 
sink!! 
in!!  
events!!! '
)!!' (
{"" 
try## 
{$$ 
dispatch%% 
(%% 
sink%% !
,%%! "
arg1%%# '
)%%' (
;%%( )
}&& 
catch'' 
('' 
	Exception''  
ex''! #
)''# $
{(( 
HandleException)) #
())# $
ex))$ &
,))& '
logger))( .
,)). /
typeof))0 6
())6 7
TEvents))7 >
)))> ?
.))? @
Name))@ D
,))D E
sink))F J
.))J K
GetType))K R
())R S
)))S T
.))T U
FullName))U ]
)))] ^
;))^ _
}** 
}++ 
},, 	
public.. 
static.. 
IEnumerable.. !
<..! "
TResult.." )
>..) *
Invoke..+ 1
<..1 2
TEvents..2 9
,..9 :
TResult..; B
>..B C
(..C D
this..D H
IEnumerable..I T
<..T U
TEvents..U \
>..\ ]
events..^ d
,..d e
Func..f j
<..j k
TEvents..k r
,..r s
TResult..t {
>..{ |
dispatch	..} Ö
,
..Ö Ü
ILogger
..á é
logger
..è ï
)
..ï ñ
{// 	
var00 
results00 
=00 
new00 
List00 "
<00" #
TResult00# *
>00* +
(00+ ,
)00, -
;00- .
foreach22 
(22 
var22 
sink22 
in22  
events22! '
)22' (
{33 
try44 
{55 
var66 
result66 
=66  
dispatch66! )
(66) *
sink66* .
)66. /
;66/ 0
results77 
.77 
Add77 
(77  
result77  &
)77& '
;77' (
}88 
catch99 
(99 
	Exception99  
ex99! #
)99# $
{:: 
HandleException;; #
(;;# $
ex;;$ &
,;;& '
logger;;( .
,;;. /
typeof;;0 6
(;;6 7
TEvents;;7 >
);;> ?
.;;? @
Name;;@ D
,;;D E
sink;;F J
.;;J K
GetType;;K R
(;;R S
);;S T
.;;T U
FullName;;U ]
);;] ^
;;;^ _
}<< 
}== 
return?? 
results?? 
;?? 
}@@ 	
publicBB 
staticBB 
IEnumerableBB !
<BB! "
TResultBB" )
>BB) *
InvokeBB+ 1
<BB1 2
TEventsBB2 9
,BB9 :
T1BB; =
,BB= >
TResultBB? F
>BBF G
(BBG H
thisBBH L
IEnumerableBBM X
<BBX Y
TEventsBBY `
>BB` a
eventsBBb h
,BBh i
FuncBBj n
<BBn o
TEventsBBo v
,BBv w
T1BBx z
,BBz {
TResult	BB| É
>
BBÉ Ñ
dispatch
BBÖ ç
,
BBç é
T1
BBè ë
arg1
BBí ñ
,
BBñ ó
ILogger
BBò ü
logger
BB† ¶
)
BB¶ ß
{CC 	
varDD 
resultsDD 
=DD 
newDD 
ListDD "
<DD" #
TResultDD# *
>DD* +
(DD+ ,
)DD, -
;DD- .
foreachFF 
(FF 
varFF 
sinkFF 
inFF  
eventsFF! '
)FF' (
{GG 
tryHH 
{II 
varJJ 
resultJJ 
=JJ  
dispatchJJ! )
(JJ) *
sinkJJ* .
,JJ. /
arg1JJ0 4
)JJ4 5
;JJ5 6
resultsKK 
.KK 
AddKK 
(KK  
resultKK  &
)KK& '
;KK' (
}LL 
catchMM 
(MM 
	ExceptionMM  
exMM! #
)MM# $
{NN 
HandleExceptionOO #
(OO# $
exOO$ &
,OO& '
loggerOO( .
,OO. /
typeofOO0 6
(OO6 7
TEventsOO7 >
)OO> ?
.OO? @
NameOO@ D
,OOD E
sinkOOF J
.OOJ K
GetTypeOOK R
(OOR S
)OOS T
.OOT U
FullNameOOU ]
)OO] ^
;OO^ _
}PP 
}QQ 
returnSS 
resultsSS 
;SS 
}TT 	
publicVV 
staticVV 
IEnumerableVV !
<VV! "
TResultVV" )
>VV) *
InvokeVV+ 1
<VV1 2
TEventsVV2 9
,VV9 :
TResultVV; B
>VVB C
(VVC D
thisVVD H
IEnumerableVVI T
<VVT U
TEventsVVU \
>VV\ ]
eventsVV^ d
,VVd e
FuncVVf j
<VVj k
TEventsVVk r
,VVr s
IEnumerableVVt 
<	VV Ä
TResult
VVÄ á
>
VVá à
>
VVà â
dispatch
VVä í
,
VVí ì
ILogger
VVî õ
logger
VVú ¢
)
VV¢ £
{WW 	
varXX 
resultsXX 
=XX 
newXX 
ListXX "
<XX" #
TResultXX# *
>XX* +
(XX+ ,
)XX, -
;XX- .
foreachZZ 
(ZZ 
varZZ 
sinkZZ 
inZZ  
eventsZZ! '
)ZZ' (
{[[ 
try\\ 
{]] 
var^^ 
result^^ 
=^^  
dispatch^^! )
(^^) *
sink^^* .
)^^. /
;^^/ 0
results__ 
.__ 
AddRange__ $
(__$ %
result__% +
)__+ ,
;__, -
}`` 
catchaa 
(aa 
	Exceptionaa  
exaa! #
)aa# $
{bb 
HandleExceptioncc #
(cc# $
excc$ &
,cc& '
loggercc( .
,cc. /
typeofcc0 6
(cc6 7
TEventscc7 >
)cc> ?
.cc? @
Namecc@ D
,ccD E
sinkccF J
.ccJ K
GetTypeccK R
(ccR S
)ccS T
.ccT U
FullNameccU ]
)cc] ^
;cc^ _
}dd 
}ee 
returngg 
resultsgg 
;gg 
}hh 	
publicmm 
staticmm 
asyncmm 
Taskmm  
InvokeAsyncmm! ,
<mm, -
TEventsmm- 4
>mm4 5
(mm5 6
thismm6 :
IEnumerablemm; F
<mmF G
TEventsmmG N
>mmN O
eventsmmP V
,mmV W
FuncmmX \
<mm\ ]
TEventsmm] d
,mmd e
Taskmmf j
>mmj k
dispatchmml t
,mmt u
ILoggermmv }
logger	mm~ Ñ
)
mmÑ Ö
{nn 	
foreachoo 
(oo 
varoo 
sinkoo 
inoo  
eventsoo! '
)oo' (
{pp 
tryqq 
{rr 
awaitss 
dispatchss "
(ss" #
sinkss# '
)ss' (
;ss( )
}tt 
catchuu 
(uu 
	Exceptionuu  
exuu! #
)uu# $
{vv 
HandleExceptionww #
(ww# $
exww$ &
,ww& '
loggerww( .
,ww. /
typeofww0 6
(ww6 7
TEventsww7 >
)ww> ?
.ww? @
Nameww@ D
,wwD E
sinkwwF J
.wwJ K
GetTypewwK R
(wwR S
)wwS T
.wwT U
FullNamewwU ]
)ww] ^
;ww^ _
}xx 
}yy 
}zz 	
public 
static 
async 
Task  
InvokeAsync! ,
<, -
TEvents- 4
,4 5
T16 8
>8 9
(9 :
this: >
IEnumerable? J
<J K
TEventsK R
>R S
eventsT Z
,Z [
Func\ `
<` a
TEventsa h
,h i
T1j l
,l m
Taskn r
>r s
dispatcht |
,| }
T1	~ Ä
arg1
Å Ö
,
Ö Ü
ILogger
á é
logger
è ï
)
ï ñ
{
ÄÄ 	
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
sink
ÅÅ 
in
ÅÅ  
events
ÅÅ! '
)
ÅÅ' (
{
ÇÇ 
try
ÉÉ 
{
ÑÑ 
await
ÖÖ 
dispatch
ÖÖ "
(
ÖÖ" #
sink
ÖÖ# '
,
ÖÖ' (
arg1
ÖÖ) -
)
ÖÖ- .
;
ÖÖ. /
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá  
ex
áá! #
)
áá# $
{
àà 
HandleException
ââ #
(
ââ# $
ex
ââ$ &
,
ââ& '
logger
ââ( .
,
ââ. /
typeof
ââ0 6
(
ââ6 7
TEvents
ââ7 >
)
ââ> ?
.
ââ? @
Name
ââ@ D
,
ââD E
sink
ââF J
.
ââJ K
GetType
ââK R
(
ââR S
)
ââS T
.
ââT U
FullName
ââU ]
)
ââ] ^
;
ââ^ _
}
ää 
}
ãã 
}
åå 	
public
ëë 
static
ëë 
async
ëë 
Task
ëë  
InvokeAsync
ëë! ,
<
ëë, -
TEvents
ëë- 4
,
ëë4 5
T1
ëë6 8
,
ëë8 9
T2
ëë: <
>
ëë< =
(
ëë= >
this
ëë> B
IEnumerable
ëëC N
<
ëëN O
TEvents
ëëO V
>
ëëV W
events
ëëX ^
,
ëë^ _
Func
ëë` d
<
ëëd e
TEvents
ëëe l
,
ëël m
T1
ëën p
,
ëëp q
T2
ëër t
,
ëët u
Task
ëëv z
>
ëëz {
dispatchëë| Ñ
,ëëÑ Ö
T1ëëÜ à
arg1ëëâ ç
,ëëç é
T2ëëè ë
arg2ëëí ñ
,ëëñ ó
ILoggerëëò ü
loggerëë† ¶
)ëë¶ ß
{
íí 	
foreach
ìì 
(
ìì 
var
ìì 
sink
ìì 
in
ìì  
events
ìì! '
)
ìì' (
{
îî 
try
ïï 
{
ññ 
await
óó 
dispatch
óó "
(
óó" #
sink
óó# '
,
óó' (
arg1
óó) -
,
óó- .
arg2
óó/ 3
)
óó3 4
;
óó4 5
}
òò 
catch
ôô 
(
ôô 
	Exception
ôô  
ex
ôô! #
)
ôô# $
{
öö 
HandleException
õõ #
(
õõ# $
ex
õõ$ &
,
õõ& '
logger
õõ( .
,
õõ. /
typeof
õõ0 6
(
õõ6 7
TEvents
õõ7 >
)
õõ> ?
.
õõ? @
Name
õõ@ D
,
õõD E
sink
õõF J
.
õõJ K
GetType
õõK R
(
õõR S
)
õõS T
.
õõT U
FullName
õõU ]
)
õõ] ^
;
õõ^ _
}
úú 
}
ùù 
}
ûû 	
public
££ 
static
££ 
async
££ 
Task
££  
InvokeAsync
££! ,
<
££, -
TEvents
££- 4
,
££4 5
T1
££6 8
,
££8 9
T2
££: <
,
££< =
T3
££> @
>
££@ A
(
££A B
this
££B F
IEnumerable
££G R
<
££R S
TEvents
££S Z
>
££Z [
events
££\ b
,
££b c
Func
££d h
<
££h i
TEvents
££i p
,
££p q
T1
££r t
,
££t u
T2
££v x
,
££x y
T3
££z |
,
££| }
Task££~ Ç
>££Ç É
dispatch££Ñ å
,££å ç
T1££é ê
arg1££ë ï
,££ï ñ
T2££ó ô
arg2££ö û
,££û ü
T3££† ¢
arg3£££ ß
,££ß ®
ILogger££© ∞
logger££± ∑
)££∑ ∏
{
§§ 	
foreach
•• 
(
•• 
var
•• 
sink
•• 
in
••  
events
••! '
)
••' (
{
¶¶ 
try
ßß 
{
®® 
await
©© 
dispatch
©© "
(
©©" #
sink
©©# '
,
©©' (
arg1
©©) -
,
©©- .
arg2
©©/ 3
,
©©3 4
arg3
©©5 9
)
©©9 :
;
©©: ;
}
™™ 
catch
´´ 
(
´´ 
	Exception
´´  
ex
´´! #
)
´´# $
{
¨¨ 
HandleException
≠≠ #
(
≠≠# $
ex
≠≠$ &
,
≠≠& '
logger
≠≠( .
,
≠≠. /
typeof
≠≠0 6
(
≠≠6 7
TEvents
≠≠7 >
)
≠≠> ?
.
≠≠? @
Name
≠≠@ D
,
≠≠D E
sink
≠≠F J
.
≠≠J K
GetType
≠≠K R
(
≠≠R S
)
≠≠S T
.
≠≠T U
FullName
≠≠U ]
)
≠≠] ^
;
≠≠^ _
}
ÆÆ 
}
ØØ 
}
∞∞ 	
public
µµ 
static
µµ 
async
µµ 
Task
µµ  
InvokeAsync
µµ! ,
<
µµ, -
TEvents
µµ- 4
,
µµ4 5
T1
µµ6 8
,
µµ8 9
T2
µµ: <
,
µµ< =
T3
µµ> @
,
µµ@ A
T4
µµB D
>
µµD E
(
µµE F
this
µµF J
IEnumerable
µµK V
<
µµV W
TEvents
µµW ^
>
µµ^ _
events
µµ` f
,
µµf g
Func
µµh l
<
µµl m
TEvents
µµm t
,
µµt u
T1
µµv x
,
µµx y
T2
µµz |
,
µµ| }
T3µµ~ Ä
,µµÄ Å
T4µµÇ Ñ
,µµÑ Ö
TaskµµÜ ä
>µµä ã
dispatchµµå î
,µµî ï
T1µµñ ò
arg1µµô ù
,µµù û
T2µµü °
arg2µµ¢ ¶
,µµ¶ ß
T3µµ® ™
arg3µµ´ Ø
,µµØ ∞
T4µµ± ≥
arg4µµ¥ ∏
,µµ∏ π
ILoggerµµ∫ ¡
loggerµµ¬ »
)µµ» …
{
∂∂ 	
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
sink
∑∑ 
in
∑∑  
events
∑∑! '
)
∑∑' (
{
∏∏ 
try
ππ 
{
∫∫ 
await
ªª 
dispatch
ªª "
(
ªª" #
sink
ªª# '
,
ªª' (
arg1
ªª) -
,
ªª- .
arg2
ªª/ 3
,
ªª3 4
arg3
ªª5 9
,
ªª9 :
arg4
ªª; ?
)
ªª? @
;
ªª@ A
}
ºº 
catch
ΩΩ 
(
ΩΩ 
	Exception
ΩΩ  
ex
ΩΩ! #
)
ΩΩ# $
{
ææ 
HandleException
øø #
(
øø# $
ex
øø$ &
,
øø& '
logger
øø( .
,
øø. /
typeof
øø0 6
(
øø6 7
TEvents
øø7 >
)
øø> ?
.
øø? @
Name
øø@ D
,
øøD E
sink
øøF J
.
øøJ K
GetType
øøK R
(
øøR S
)
øøS T
.
øøT U
FullName
øøU ]
)
øø] ^
;
øø^ _
}
¿¿ 
}
¡¡ 
}
¬¬ 	
public
«« 
static
«« 
async
«« 
Task
««  
InvokeAsync
««! ,
<
««, -
TEvents
««- 4
,
««4 5
T1
««6 8
,
««8 9
T2
««: <
,
««< =
T3
««> @
,
««@ A
T4
««B D
,
««D E
T5
««F H
>
««H I
(
««I J
this
««J N
IEnumerable
««O Z
<
««Z [
TEvents
««[ b
>
««b c
events
««d j
,
««j k
Func
««l p
<
««p q
TEvents
««q x
,
««x y
T1
««z |
,
««| }
T2««~ Ä
,««Ä Å
T3««Ç Ñ
,««Ñ Ö
T4««Ü à
,««à â
T5««ä å
,««å ç
Task««é í
>««í ì
dispatch««î ú
,««ú ù
T1««û †
arg1««° •
,««• ¶
T2««ß ©
arg2««™ Æ
,««Æ Ø
T3««∞ ≤
arg3««≥ ∑
,««∑ ∏
T4««π ª
arg4««º ¿
,««¿ ¡
T5««¬ ƒ
arg5««≈ …
,««…  
ILogger««À “
logger««” Ÿ
)««Ÿ ⁄
{
»» 	
foreach
…… 
(
…… 
var
…… 
sink
…… 
in
……  
events
……! '
)
……' (
{
   
try
ÀÀ 
{
ÃÃ 
await
ÕÕ 
dispatch
ÕÕ "
(
ÕÕ" #
sink
ÕÕ# '
,
ÕÕ' (
arg1
ÕÕ) -
,
ÕÕ- .
arg2
ÕÕ/ 3
,
ÕÕ3 4
arg3
ÕÕ5 9
,
ÕÕ9 :
arg4
ÕÕ; ?
,
ÕÕ? @
arg5
ÕÕA E
)
ÕÕE F
;
ÕÕF G
}
ŒŒ 
catch
œœ 
(
œœ 
	Exception
œœ  
ex
œœ! #
)
œœ# $
{
–– 
HandleException
—— #
(
——# $
ex
——$ &
,
——& '
logger
——( .
,
——. /
typeof
——0 6
(
——6 7
TEvents
——7 >
)
——> ?
.
——? @
Name
——@ D
,
——D E
sink
——F J
.
——J K
GetType
——K R
(
——R S
)
——S T
.
——T U
FullName
——U ]
)
——] ^
;
——^ _
}
““ 
}
”” 
}
‘‘ 	
public
÷÷ 
static
÷÷ 
async
÷÷ 
Task
÷÷  
<
÷÷  !
IEnumerable
÷÷! ,
<
÷÷, -
TResult
÷÷- 4
>
÷÷4 5
>
÷÷5 6
InvokeAsync
÷÷7 B
<
÷÷B C
TEvents
÷÷C J
,
÷÷J K
TResult
÷÷L S
>
÷÷S T
(
÷÷T U
this
÷÷U Y
IEnumerable
÷÷Z e
<
÷÷e f
TEvents
÷÷f m
>
÷÷m n
events
÷÷o u
,
÷÷u v
Func
÷÷w {
<
÷÷{ |
TEvents÷÷| É
,÷÷É Ñ
Task÷÷Ö â
<÷÷â ä
TResult÷÷ä ë
>÷÷ë í
>÷÷í ì
dispatch÷÷î ú
,÷÷ú ù
ILogger÷÷û •
logger÷÷¶ ¨
)÷÷¨ ≠
{
◊◊ 	
var
ÿÿ 
results
ÿÿ 
=
ÿÿ 
new
ÿÿ 
List
ÿÿ "
<
ÿÿ" #
TResult
ÿÿ# *
>
ÿÿ* +
(
ÿÿ+ ,
)
ÿÿ, -
;
ÿÿ- .
foreach
⁄⁄ 
(
⁄⁄ 
var
⁄⁄ 
sink
⁄⁄ 
in
⁄⁄  
events
⁄⁄! '
)
⁄⁄' (
{
€€ 
try
‹‹ 
{
›› 
var
ﬁﬁ 
result
ﬁﬁ 
=
ﬁﬁ  
await
ﬁﬁ! &
dispatch
ﬁﬁ' /
(
ﬁﬁ/ 0
sink
ﬁﬁ0 4
)
ﬁﬁ4 5
;
ﬁﬁ5 6
results
ﬂﬂ 
.
ﬂﬂ 
Add
ﬂﬂ 
(
ﬂﬂ  
result
ﬂﬂ  &
)
ﬂﬂ& '
;
ﬂﬂ' (
}
‡‡ 
catch
·· 
(
·· 
	Exception
··  
ex
··! #
)
··# $
{
‚‚ 
HandleException
„„ #
(
„„# $
ex
„„$ &
,
„„& '
logger
„„( .
,
„„. /
typeof
„„0 6
(
„„6 7
TEvents
„„7 >
)
„„> ?
.
„„? @
Name
„„@ D
,
„„D E
sink
„„F J
.
„„J K
GetType
„„K R
(
„„R S
)
„„S T
.
„„T U
FullName
„„U ]
)
„„] ^
;
„„^ _
}
‰‰ 
}
ÂÂ 
return
ÁÁ 
results
ÁÁ 
;
ÁÁ 
}
ËË 	
public
ÍÍ 
static
ÍÍ 
async
ÍÍ 
Task
ÍÍ  
<
ÍÍ  !
IEnumerable
ÍÍ! ,
<
ÍÍ, -
TResult
ÍÍ- 4
>
ÍÍ4 5
>
ÍÍ5 6
InvokeAsync
ÍÍ7 B
<
ÍÍB C
TEvents
ÍÍC J
,
ÍÍJ K
T1
ÍÍL N
,
ÍÍN O
TResult
ÍÍP W
>
ÍÍW X
(
ÍÍX Y
this
ÍÍY ]
IEnumerable
ÍÍ^ i
<
ÍÍi j
TEvents
ÍÍj q
>
ÍÍq r
events
ÍÍs y
,
ÍÍy z
Func
ÍÍ{ 
<ÍÍ Ä
TEventsÍÍÄ á
,ÍÍá à
T1ÍÍâ ã
,ÍÍã å
TaskÍÍç ë
<ÍÍë í
TResultÍÍí ô
>ÍÍô ö
>ÍÍö õ
dispatchÍÍú §
,ÍÍ§ •
T1ÍÍ¶ ®
arg1ÍÍ© ≠
,ÍÍ≠ Æ
ILoggerÍÍØ ∂
loggerÍÍ∑ Ω
)ÍÍΩ æ
{
ÎÎ 	
var
ÏÏ 
results
ÏÏ 
=
ÏÏ 
new
ÏÏ 
List
ÏÏ "
<
ÏÏ" #
TResult
ÏÏ# *
>
ÏÏ* +
(
ÏÏ+ ,
)
ÏÏ, -
;
ÏÏ- .
foreach
ÓÓ 
(
ÓÓ 
var
ÓÓ 
sink
ÓÓ 
in
ÓÓ  
events
ÓÓ! '
)
ÓÓ' (
{
ÔÔ 
try
 
{
ÒÒ 
var
ÚÚ 
result
ÚÚ 
=
ÚÚ  
await
ÚÚ! &
dispatch
ÚÚ' /
(
ÚÚ/ 0
sink
ÚÚ0 4
,
ÚÚ4 5
arg1
ÚÚ6 :
)
ÚÚ: ;
;
ÚÚ; <
results
ÛÛ 
.
ÛÛ 
Add
ÛÛ 
(
ÛÛ  
result
ÛÛ  &
)
ÛÛ& '
;
ÛÛ' (
}
ÙÙ 
catch
ıı 
(
ıı 
	Exception
ıı  
ex
ıı! #
)
ıı# $
{
ˆˆ 
HandleException
˜˜ #
(
˜˜# $
ex
˜˜$ &
,
˜˜& '
logger
˜˜( .
,
˜˜. /
typeof
˜˜0 6
(
˜˜6 7
TEvents
˜˜7 >
)
˜˜> ?
.
˜˜? @
Name
˜˜@ D
,
˜˜D E
sink
˜˜F J
.
˜˜J K
GetType
˜˜K R
(
˜˜R S
)
˜˜S T
.
˜˜T U
FullName
˜˜U ]
)
˜˜] ^
;
˜˜^ _
}
¯¯ 
}
˘˘ 
return
˚˚ 
results
˚˚ 
;
˚˚ 
}
¸¸ 	
public
˛˛ 
static
˛˛ 
async
˛˛ 
Task
˛˛  
<
˛˛  !
IEnumerable
˛˛! ,
<
˛˛, -
TResult
˛˛- 4
>
˛˛4 5
>
˛˛5 6
InvokeAsync
˛˛7 B
<
˛˛B C
TEvents
˛˛C J
,
˛˛J K
TResult
˛˛L S
>
˛˛S T
(
˛˛T U
this
˛˛U Y
IEnumerable
˛˛Z e
<
˛˛e f
TEvents
˛˛f m
>
˛˛m n
events
˛˛o u
,
˛˛u v
Func
˛˛w {
<
˛˛{ |
TEvents˛˛| É
,˛˛É Ñ
Task˛˛Ö â
<˛˛â ä
IEnumerable˛˛ä ï
<˛˛ï ñ
TResult˛˛ñ ù
>˛˛ù û
>˛˛û ü
>˛˛ü †
dispatch˛˛° ©
,˛˛© ™
ILogger˛˛´ ≤
logger˛˛≥ π
)˛˛π ∫
{
ˇˇ 	
var
ÄÄ 
results
ÄÄ 
=
ÄÄ 
new
ÄÄ 
List
ÄÄ "
<
ÄÄ" #
TResult
ÄÄ# *
>
ÄÄ* +
(
ÄÄ+ ,
)
ÄÄ, -
;
ÄÄ- .
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
sink
ÇÇ 
in
ÇÇ  
events
ÇÇ! '
)
ÇÇ' (
{
ÉÉ 
try
ÑÑ 
{
ÖÖ 
var
ÜÜ 
result
ÜÜ 
=
ÜÜ  
await
ÜÜ! &
dispatch
ÜÜ' /
(
ÜÜ/ 0
sink
ÜÜ0 4
)
ÜÜ4 5
;
ÜÜ5 6
results
áá 
.
áá 
AddRange
áá $
(
áá$ %
result
áá% +
)
áá+ ,
;
áá, -
}
àà 
catch
ââ 
(
ââ 
	Exception
ââ  
ex
ââ! #
)
ââ# $
{
ää 
HandleException
ãã #
(
ãã# $
ex
ãã$ &
,
ãã& '
logger
ãã( .
,
ãã. /
typeof
ãã0 6
(
ãã6 7
TEvents
ãã7 >
)
ãã> ?
.
ãã? @
Name
ãã@ D
,
ããD E
sink
ããF J
.
ããJ K
GetType
ããK R
(
ããR S
)
ããS T
.
ããT U
FullName
ããU ]
)
ãã] ^
;
ãã^ _
}
åå 
}
çç 
return
èè 
results
èè 
;
èè 
}
êê 	
public
íí 
static
íí 
void
íí 
HandleException
íí *
(
íí* +
	Exception
íí+ 4
ex
íí5 7
,
íí7 8
ILogger
íí9 @
logger
ííA G
,
ííG H
string
ííI O

sourceType
ííP Z
,
ííZ [
string
íí\ b
method
ííc i
)
ííi j
{
ìì 	
if
îî 
(
îî 
IsLogged
îî 
(
îî 
ex
îî 
)
îî 
)
îî 
{
ïï 
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  
ex
ññ  "
,
ññ" #
$str
ññ$ P
,
ññP Q

sourceType
óó 
,
óó 
method
òò 
,
òò 
ex
ôô 
.
ôô 
GetType
ôô 
(
ôô 
)
ôô  
.
ôô  !
Name
ôô! %
)
ôô% &
;
ôô& '
}
öö 
if
úú 
(
úú 
ex
úú 
.
úú 
IsFatal
úú 
(
úú 
)
úú 
)
úú 
{
ùù 
throw
ûû 
ex
ûû 
;
ûû 
}
üü 
}
†† 	
private
°° 
static
°° 
bool
°° 
IsLogged
°° $
(
°°$ %
	Exception
°°% .
ex
°°/ 1
)
°°1 2
{
¢¢ 	
return
££ 
!
££ 
ex
££ 
.
££ 
IsFatal
££ 
(
££ 
)
££  
;
££  !
}
§§ 	
}
•• 
}¶¶ Ó
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Extensions\StringExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
StringExtensions (
{ 
public 
static 
string 
ToHexString (
(( )
this) -
byte. 2
[2 3
]3 4
bytes5 :
): ;
{		 	
return

 
BitConverter

 
.

  
ToString

  (
(

( )
bytes

) .
)

. /
.

/ 0
Replace

0 7
(

7 8
$str

8 ;
,

; <
$str

= ?
)

? @
;

@ A
} 	
public 
static 
byte 
[ 
] 
ToByteArray (
(( )
this) -
string. 4
hex5 8
)8 9
{ 	
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
hex' *
.* +
Length+ 1
)1 2
.2 3
Where 
( 
x 
=> 
$num 
== 
x  !
%" #
$num$ %
)% &
.& '
Select 
( 
x 
=> 
Convert #
.# $
ToByte$ *
(* +
hex+ .
.. /
	Substring/ 8
(8 9
x9 :
,: ;
$num< =
)= >
,> ?
$num@ B
)B C
)C D
.D E
ToArray 
( 
) 
; 
} 	
} 
} Ú
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FeatureAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Class

% *
,

* +
AllowMultiple

, 9
=

: ;
false

< A
)

A B
]

B C
public 

class 
FeatureAttribute !
:" #
	Attribute$ -
{ 
public 
FeatureAttribute 
(  
string  &
featureName' 2
)2 3
{ 	
FeatureName 
= 
featureName %
;% &
} 	
public 
string 
FeatureName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ‚
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\EmbeddedDirectoryContents.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public		 

class		 %
EmbeddedDirectoryContents		 *
:		+ ,
IDirectoryContents		- ?
{

 
private 
readonly 
IList 
< 
	IFileInfo (
>( )
_entries* 2
;2 3
public %
EmbeddedDirectoryContents (
(( )
IEnumerable) 4
<4 5
	IFileInfo5 >
>> ?
entries@ G
)G H
{ 	
if 
( 
entries 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
entries7 >
)> ?
)? @
;@ A
} 
_entries 
= 
entries 
. 
ToList %
(% &
)& '
;' (
} 	
public 
bool 
Exists 
{ 	
get 
{ 
return 
_entries !
.! "
Any" %
(% &
)& '
;' (
}) *
} 	
public 
IEnumerator 
< 
	IFileInfo $
>$ %
GetEnumerator& 3
(3 4
)4 5
{ 	
return 
_entries 
. 
GetEnumerator )
() *
)* +
;+ ,
} 	
IEnumerator!! 
IEnumerable!! 
.!!  
GetEnumerator!!  -
(!!- .
)!!. /
{"" 	
return## 
_entries## 
.## 
GetEnumerator## )
(##) *
)##* +
;##+ ,
}$$ 	
}%% 
}&& ó
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\EmbeddedDirectoryInfo.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public

 

class

 !
EmbeddedDirectoryInfo

 &
:

' (
	IFileInfo

) 2
{ 
public !
EmbeddedDirectoryInfo $
($ %
string% +
name, 0
)0 1
{ 	
Name 
= 
name 
; 
} 	
public 
bool 
Exists 
=> 
true "
;" #
public 
long 
Length 
=> 
- 
$num  
;  !
public"" 
string"" 
PhysicalPath"" "
=>""# %
null""& *
;""* +
public%% 
string%% 
Name%% 
{%% 
get%%  
;%%  !
}%%" #
public** 
DateTimeOffset** 
LastModified** *
=>**+ -
DateTimeOffset**. <
.**< =
MinValue**= E
;**E F
public// 
bool// 
IsDirectory// 
=>//  "
true//# '
;//' (
public66 
Stream66 
CreateReadStream66 &
(66& '
)66' (
{77 	
throw88 
new88 %
InvalidOperationException88 /
(88/ 0
$str880 Y
)88Y Z
;88Z [
}99 	
}:: 
};; ¬
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\FileInfoExtensions.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public 

static 
class 
FileInfoExtensions *
{ 
public		 
static		 
IEnumerable		 !
<		! "
string		" (
>		( )
ReadAllLines		* 6
(		6 7
this		7 ;
	IFileInfo		< E
fileInfo		F N
)		N O
{

 	
var 
lines 
= 
new 
List  
<  !
string! '
>' (
(( )
)) *
;* +
if 
( 
fileInfo 
? 
. 
Exists  
??! #
false$ )
)) *
{ 
using 
( 
var 
reader !
=" #
fileInfo$ ,
., -
CreateReadStream- =
(= >
)> ?
)? @
{ 
using 
( 
var 
sr !
=" #
new$ '
StreamReader( 4
(4 5
reader5 ;
); <
)< =
{ 
string 
line #
;# $
while 
( 
(  
line  $
=% &
sr' )
.) *
ReadLine* 2
(2 3
)3 4
)4 5
!=6 8
null9 =
)= >
{ 
lines !
.! "
Add" %
(% &
line& *
)* +
;+ ,
} 
} 
} 
} 
return 
lines 
; 
} 	
} 
}  
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\IStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public		 

	interface		 
IStaticFileProvider		 (
:		) *
IFileProvider		+ 8
{

 
} 
} ù
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\IVirtualPathBaseProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public 

	interface $
IVirtualPathBaseProvider -
{ 

PathString 
VirtualPathBase "
{# $
get% (
;( )
}* +
} 
}		 §
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\FileProviders\NormalizedPaths.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
FileProviders +
{ 
public 

static 
class 
NormalizedPaths '
{ 
public 
static 
void !
ResolveFolderContents 0
(0 1
string1 7
folder8 >
,> ?
IEnumerable@ K
<K L
stringL R
>R S
normalizedPathsT c
,c d
out 
IEnumerable 
< 
string "
>" #
	filePaths$ -
,- .
out/ 2
IEnumerable3 >
<> ?
string? E
>E F
folderPathsG R
)R S
{ 	
var 
files 
= 
new 
HashSet #
<# $
string$ *
>* +
(+ ,
StringComparer, :
.: ;
Ordinal; B
)B C
;C D
var 
folders 
= 
new 
HashSet %
<% &
string& ,
>, -
(- .
StringComparer. <
.< =
Ordinal= D
)D E
;E F
if 
( 
folder 
[ 
folder 
. 
Length $
-% &
$num' (
]( )
!=* ,
$char- 0
)0 1
{ 
folder 
= 
folder 
+  !
$char" %
;% &
} 
foreach 
( 
var 
path 
in  
normalizedPaths! 0
.0 1
Where1 6
(6 7
a7 8
=>9 ;
a< =
.= >

StartsWith> H
(H I
folderI O
,O P
StringComparisonQ a
.a b
Ordinalb i
)i j
)j k
)k l
{ 
var 
subPath 
= 
path "
." #
	Substring# ,
(, -
folder- 3
.3 4
Length4 :
): ;
;; <
var 
index 
= 
subPath #
.# $
IndexOf$ +
(+ ,
$char, /
)/ 0
;0 1
if   
(   
index   
==   
-   
$num   
)    
{!! 
files## 
.## 
Add## 
(## 
path## "
)##" #
;### $
}$$ 
else%% 
{&& 
folders(( 
.(( 
Add(( 
(((  
subPath((  '
.((' (
	Substring((( 1
(((1 2
$num((2 3
,((3 4
index((5 :
)((: ;
)((; <
;((< =
})) 
}** 
	filePaths,, 
=,, 
files,, 
;,, 
folderPaths-- 
=-- 
folders-- !
;--! "
}.. 	
}// 
}00 Ω
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\IModularTenantEvents.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface  
IModularTenantEvents )
{ 
Task 
ActivatingAsync 
( 
) 
; 
Task 
ActivatedAsync 
( 
) 
; 
Task		 
TerminatingAsync		 
(		 
)		 
;		  
Task

 
TerminatedAsync

 
(

 
)

 
;

 
} 
public 

class 
ModularTenantEvents $
:% & 
IModularTenantEvents' ;
{ 
public 
virtual 
Task 
ActivatedAsync *
(* +
)+ ,
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
ActivatingAsync +
(+ ,
), -
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
TerminatedAsync +
(+ ,
), -
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
virtual 
Task 
TerminatingAsync ,
(, -
)- .
{ 	
return   
Task   
.   
CompletedTask   %
;  % &
}!! 	
}"" 
}## ˛
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\IModuleNamesProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface  
IModuleNamesProvider )
{ 
IEnumerable 
< 
string 
> 
GetModuleNames *
(* +
)+ ,
;, -
} 
}		 §
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\IModuleStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public

 

	interface

 %
IModuleStaticFileProvider

 .
:

/ 0
IStaticFileProvider

1 D
{ 
} 
} œ
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\IStartup.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface 
IStartup 
{ 
int 
Order 
{ 
get 
; 
} 
int 
ConfigureOrder 
{ 
get  
;  !
}" #
void 
ConfigureServices 
( 
IServiceCollection 1
services2 :
): ;
;; <
void%% 
	Configure%% 
(%% 
IApplicationBuilder%% *
builder%%+ 2
,%%2 3!
IEndpointRouteBuilder%%4 I
routes%%J P
,%%P Q
IServiceProvider%%R b
serviceProvider%%c r
)%%r s
;%%s t
}&& 
}'' ˇ
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\FeatureAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Assembly

% -
,

- .
AllowMultiple

/ <
=

= >
true

? C
,

C D
	Inherited

E N
=

O P
false

Q V
)

V W
]

W X
public 

class 
FeatureAttribute !
:" #
	Attribute$ -
{ 
public 
FeatureAttribute 
(  
)  !
{ 	
} 	
public 
bool 
Exists 
=> 
Id  
!=! #
null$ (
;( )
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
String2 8
.8 9
Empty9 >
;> ?
public"" 
string"" 
["" 
]"" 
Dependencies"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
=""3 4

Enumerable""5 ?
.""? @
Empty""@ E
<""E F
string""F L
>""L M
(""M N
)""N O
.""O P
ToArray""P W
(""W X
)""X Y
;""Y Z
public(( 
string(( 
Priority(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
=((- .
$str((/ 2
;((2 3
public.. 
string.. 
Category.. 
{..  
get..! $
;..$ %
set..& )
;..) *
}..+ ,
public33 
bool33 
DefaultTenantOnly33 %
{33& '
get33( +
;33+ ,
set33- 0
;330 1
}332 3
public88 
bool88 
IsAlwaysEnabled88 #
{88$ %
get88& )
;88) *
set88+ .
;88. /
}880 1
=882 3
false884 9
;889 :
}99 
}:: ¡
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ManifestConstants.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
public 

static 
class 
ManifestConstants )
{ 
public 
const 
string 
OrchardCoreTeam +
=, -
$str. E
;E F
public 
const 
string 
OrchardCoreVersion .
=/ 0
$str1 <
;< =
public

 
const

 
string

 
OrchardCoreWebsite

 .
=

/ 0
$str

1 J
;

J K
public 
const 
string 
AdminTag $
=% &
$str' .
;. /
} 
} Ñ	
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleAssetAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
true? C
,C D
	InheritedE N
=O P
falseQ V
)V W
]W X
public		 

class		  
ModuleAssetAttribute		 %
:		& '
	Attribute		( 1
{

 
public  
ModuleAssetAttribute #
(# $
string$ *
asset+ 0
)0 1
{ 	
Asset 
= 
asset 
?? 
String #
.# $
Empty$ )
;) *
} 	
public 
string 
Asset 
{ 
get !
;! "
}# $
} 
} Ø
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
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
class 
ModuleAttribute  
:! "
FeatureAttribute# 3
{ 
public 
ModuleAttribute 
( 
)  
{ 	
} 	
public 
virtual 
string 
Type "
=># %
$str& .
;. /
public 
new 
bool 
Exists 
=> !
Id" $
!=% '
null( ,
;, -
public 
new 
string 
Id 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Author 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
String- 3
.3 4
Empty4 9
;9 :
public 
string 
Website 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
String. 4
.4 5
Empty5 :
;: ;
public"" 
string"" 
Version"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
="", -
$str"". 3
;""3 4
public%% 
string%% 
[%% 
]%% 
Tags%% 
{%% 
get%% "
;%%" #
set%%$ '
;%%' (
}%%) *
=%%+ ,

Enumerable%%- 7
.%%7 8
Empty%%8 =
<%%= >
string%%> D
>%%D E
(%%E F
)%%F G
.%%G H
ToArray%%H O
(%%O P
)%%P Q
;%%Q R
public'' 
List'' 
<'' 
FeatureAttribute'' $
>''$ %
Features''& .
{''/ 0
get''1 4
;''4 5
}''6 7
=''8 9
new'': =
List''> B
<''B C
FeatureAttribute''C S
>''S T
(''T U
)''U V
;''V W
}(( 
})) ë

öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleMarkerAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
false? D
,D E
	InheritedF O
=P Q
falseR W
)W X
]X Y
public		 

class		 !
ModuleMarkerAttribute		 &
:		' (
ModuleAttribute		) 8
{

 
private 
string 
_type 
; 
public !
ModuleMarkerAttribute $
($ %
string% +
name, 0
,0 1
string2 8
type9 =
)= >
{ 	
Name 
= 
name 
; 
_type 
= 
type 
; 
} 	
public 
override 
string 
Type #
=>$ &
_type' ,
;, -
} 
} ˝
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Manifest\ModuleNameAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
. 
Manifest &
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
,- .
AllowMultiple/ <
== >
true? C
,C D
	InheritedE N
=O P
falseQ V
)V W
]W X
public		 

class		 
ModuleNameAttribute		 $
:		% &
	Attribute		' 0
{

 
public 
ModuleNameAttribute "
(" #
string# )
name* .
). /
{ 	
Name 
= 
name 
?? 
String !
.! "
Empty" '
;' (
} 	
public 
string 
Name 
{ 
get  
;  !
}" #
} 
} ‰
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Model\ITimeZone.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface 
	ITimeZone 
{ 
string 

TimeZoneId 
{ 
get 
;  
set! $
;$ %
}& '
}		 
}

 ‚#
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\ModularApplicationContext.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

	interface		 
IApplicationContext		 (
{

 
Application 
Application 
{  !
get" %
;% &
}' (
} 
public 

class %
ModularApplicationContext *
:+ ,
IApplicationContext- @
{ 
private 
readonly 
IHostEnvironment )
_environment* 6
;6 7
private 
readonly 
IEnumerable $
<$ % 
IModuleNamesProvider% 9
>9 :!
_moduleNamesProviders; P
;P Q
private 
Application 
_application (
;( )
private 
static 
readonly 
object  &
	_initLock' 0
=1 2
new3 6
object7 =
(= >
)> ?
;? @
public %
ModularApplicationContext (
(( )
IHostEnvironment) 9
environment: E
,E F
IEnumerableG R
<R S 
IModuleNamesProviderS g
>g h 
moduleNamesProvidersi }
)} ~
{ 	
_environment 
= 
environment &
;& '!
_moduleNamesProviders !
=" # 
moduleNamesProviders$ 8
;8 9
} 	
public 
Application 
Application &
{ 	
get 
{ 
EnsureInitialized !
(! "
)" #
;# $
return   
_application   #
;  # $
}!! 
}"" 	
private$$ 
void$$ 
EnsureInitialized$$ &
($$& '
)$$' (
{%% 	
if&& 
(&& 
_application&& 
==&& 
null&&  $
)&&$ %
{'' 
lock(( 
((( 
	_initLock(( 
)((  
{)) 
if** 
(** 
_application** $
==**% '
null**( ,
)**, -
{++ 
_application,, $
=,,% &
new,,' *
Application,,+ 6
(,,6 7
_environment,,7 C
,,,C D

GetModules,,E O
(,,O P
),,P Q
),,Q R
;,,R S
}-- 
}.. 
}// 
}00 	
private22 
IEnumerable22 
<22 
Module22 "
>22" #

GetModules22$ .
(22. /
)22/ 0
{33 	
var44 
modules44 
=44 
new44 
ConcurrentBag44 +
<44+ ,
Module44, 2
>442 3
(443 4
)444 5
;445 6
modules55 
.55 
Add55 
(55 
new55 
Module55 "
(55" #
_environment55# /
.55/ 0
ApplicationName550 ?
,55? @
true55A E
)55E F
)55F G
;55G H
var77 
names77 
=77 !
_moduleNamesProviders77 -
.88 

SelectMany88 
(88 
p88 
=>88  
p88! "
.88" #
GetModuleNames88# 1
(881 2
)882 3
)883 4
.99 
Where99 
(99 
n99 
=>99 
n99 
!=99  
_environment99! -
.99- .
ApplicationName99. =
)99= >
.:: 
Distinct:: 
(:: 
):: 
;:: 
Parallel<< 
.<< 
ForEach<< 
(<< 
names<< "
,<<" #
new<<$ '
ParallelOptions<<( 7
{<<8 9"
MaxDegreeOfParallelism<<: P
=<<Q R
$num<<S T
}<<U V
,<<V W
(<<X Y
name<<Y ]
)<<] ^
=><<_ a
{== 
modules>> 
.>> 
Add>> 
(>> 
new>> 
Module>>  &
(>>& '
name>>' +
,>>+ ,
false>>- 2
)>>2 3
)>>3 4
;>>4 5
}?? 
)?? 
;?? 
returnAA 
modulesAA 
;AA 
}BB 	
}CC 
}DD ‡d
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Module.cs
	namespace

 	
OrchardCore


 
.

 
Modules

 
{ 
public 

class 
Module 
{ 
public 
const 
string 
WebRootPath '
=( )
$str* 3
;3 4
public 
static 
string 
WebRoot $
=% &
WebRootPath' 2
+3 4
$str5 8
;8 9
private 
readonly 
string 
_baseNamespace  .
;. /
private 
readonly 
DateTimeOffset '
_lastModified( 5
;5 6
private 
readonly 
IDictionary $
<$ %
string% +
,+ ,
	IFileInfo- 6
>6 7

_fileInfos8 B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
	IFileInfo\ e
>e f
(f g
)g h
;h i
public 
Module 
( 
string 
name !
,! "
bool# '
isApplication( 5
=6 7
false8 =
)= >
{ 	
if 
( 
! 
string 
. 
IsNullOrWhiteSpace *
(* +
name+ /
)/ 0
)0 1
{ 
Assembly 
= 
Assembly #
.# $
Load$ (
(( )
new) ,
AssemblyName- 9
(9 :
name: >
)> ?
)? @
;@ A
Assets 
= 
Assembly !
.! "
GetCustomAttributes" 5
<5 6 
ModuleAssetAttribute6 J
>J K
(K L
)L M
. 
Select 
( 
a 
=>  
new! $
Asset% *
(* +
a+ ,
., -
Asset- 2
)2 3
)3 4
.4 5
ToArray5 <
(< =
)= >
;> ?

AssetPaths 
= 
Assets #
.# $
Select$ *
(* +
a+ ,
=>- /
a0 1
.1 2
ModuleAssetPath2 A
)A B
.B C
ToArrayC J
(J K
)K L
;L M
var   
moduleInfos   
=    !
Assembly  " *
.  * +
GetCustomAttributes  + >
<  > ?
ModuleAttribute  ? N
>  N O
(  O P
)  P Q
;  Q R

ModuleInfo"" 
="" 
moduleInfos## 
.##  
Where##  %
(##% &
f##& '
=>##( *
!##+ ,
(##, -
f##- .
is##/ 1!
ModuleMarkerAttribute##2 G
)##G H
)##H I
.##I J
FirstOrDefault##J X
(##X Y
)##Y Z
??##[ ]
moduleInfos$$ 
.$$  
Where$$  %
($$% &
f$$& '
=>$$( *
f$$+ ,
is$$- /!
ModuleMarkerAttribute$$0 E
)$$E F
.$$F G
FirstOrDefault$$G U
($$U V
)$$V W
??$$X Z
new%% 
ModuleAttribute%% '
{%%( )
Name%%* .
=%%/ 0
name%%1 5
}%%6 7
;%%7 8
var'' 
features'' 
='' 
Assembly'' '
.''' (
GetCustomAttributes''( ;
<''; <
Manifest''< D
.''D E
FeatureAttribute''E U
>''U V
(''V W
)''W X
.(( 
Where(( 
((( 
f(( 
=>(( 
!((  !
(((! "
f((" #
is(($ &
ModuleAttribute((' 6
)((6 7
)((7 8
.((8 9
ToList((9 ?
(((? @
)((@ A
;((A B
if** 
(** 
isApplication** !
)**! "
{++ 

ModuleInfo,, 
.,, 
Name,, #
=,,$ %
Application,,& 1
.,,1 2

ModuleName,,2 <
;,,< =

ModuleInfo-- 
.-- 
Description-- *
=--+ ,
Application--- 8
.--8 9
ModuleDescription--9 J
;--J K

ModuleInfo.. 
... 
Priority.. '
=..( )
Application..* 5
...5 6
ModulePriority..6 D
;..D E

ModuleInfo// 
.// 
Category// '
=//( )
Application//* 5
.//5 6
ModuleCategory//6 D
;//D E

ModuleInfo00 
.00 
DefaultTenantOnly00 0
=001 2
true003 7
;007 8
features33 
.33 
Insert33 #
(33# $
$num33$ %
,33% &
new33' *
Manifest33+ 3
.333 4
FeatureAttribute334 D
(33D E
)33E F
{44 
Id55 
=55 
name55 !
,55! "
Name66 
=66 
Application66 *
.66* +

ModuleName66+ 5
,665 6
Description77 #
=77$ %
Application77& 1
.771 2
ModuleDescription772 C
,77C D
Priority88  
=88! "
Application88# .
.88. /
ModulePriority88/ =
,88= >
Category99  
=99! "
Application99# .
.99. /
ModuleCategory99/ =
,99= >
DefaultTenantOnly:: )
=::* +
true::, 0
};; 
);; 
;;; 
features>> 
.>> 
Insert>> #
(>># $
$num>>$ %
,>>% &
new>>' *
Manifest>>+ 3
.>>3 4
FeatureAttribute>>4 D
(>>D E
)>>E F
{?? 
Id@@ 
=@@ 
Application@@ (
.@@( )
DefaultFeatureId@@) 9
,@@9 :
NameAA 
=AA 
ApplicationAA *
.AA* +
DefaultFeatureNameAA+ =
,AA= >
DescriptionBB #
=BB$ %
ApplicationBB& 1
.BB1 2%
DefaultFeatureDescriptionBB2 K
,BBK L
PriorityCC  
=CC! "
ApplicationCC# .
.CC. /
ModulePriorityCC/ =
,CC= >
CategoryDD  
=DD! "
ApplicationDD# .
.DD. /
ModuleCategoryDD/ =
,DD= >
DefaultTenantOnlyEE )
=EE* +
trueEE, 0
}FF 
)FF 
;FF 
}GG 

ModuleInfoII 
.II 
FeaturesII #
.II# $
AddRangeII$ ,
(II, -
featuresII- 5
)II5 6
;II6 7
varNN 
logicalNameNN 
=NN  !

ModuleInfoNN" ,
.NN, -
IdNN- /
??NN0 2
nameNN3 7
;NN7 8
NamePP 
=PP 

ModuleInfoPP !
.PP! "
IdPP" $
=PP% &
logicalNamePP' 2
;PP2 3
SubPathQQ 
=QQ 
ApplicationQQ %
.QQ% &
ModulesRootQQ& 1
+QQ2 3
NameQQ4 8
;QQ8 9
RootRR 
=RR 
SubPathRR 
+RR  
$charRR! $
;RR$ %
}SS 
elseTT 
{UU 
NameVV 
=VV 
RootVV 
=VV 
SubPathVV %
=VV& '
StringVV( .
.VV. /
EmptyVV/ 4
;VV4 5
AssetsWW 
=WW 

EnumerableWW #
.WW# $
EmptyWW$ )
<WW) *
AssetWW* /
>WW/ 0
(WW0 1
)WW1 2
;WW2 3

AssetPathsXX 
=XX 

EnumerableXX '
.XX' (
EmptyXX( -
<XX- .
stringXX. 4
>XX4 5
(XX5 6
)XX6 7
;XX7 8

ModuleInfoYY 
=YY 
newYY  
ModuleAttributeYY! 0
(YY0 1
)YY1 2
;YY2 3
}ZZ 
_baseNamespace\\ 
=\\ 
Name\\ !
+\\" #
$char\\$ '
;\\' (
_lastModified]] 
=]] 
DateTimeOffset]] *
.]]* +
UtcNow]]+ 1
;]]1 2
if__ 
(__ 
!__ 
string__ 
.__ 
IsNullOrEmpty__ %
(__% &
Assembly__& .
?__. /
.__/ 0
Location__0 8
)__8 9
)__9 :
{`` 
tryaa 
{bb 
_lastModifiedcc !
=cc" #
Filecc$ (
.cc( )
GetLastWriteTimeUtccc) <
(cc< =
Assemblycc= E
.ccE F
LocationccF N
)ccN O
;ccO P
}dd 
catchee 
(ee  
PathTooLongExceptionee +
)ee+ ,
{ff 
}gg 
catchhh 
(hh '
UnauthorizedAccessExceptionhh 2
)hh2 3
{ii 
}jj 
}kk 
}ll 	
publicnn 
stringnn 
Namenn 
{nn 
getnn  
;nn  !
}nn" #
publicoo 
stringoo 
Rootoo 
{oo 
getoo  
;oo  !
}oo" #
publicpp 
stringpp 
SubPathpp 
{pp 
getpp  #
;pp# $
}pp% &
publicqq 
Assemblyqq 
Assemblyqq  
{qq! "
getqq# &
;qq& '
}qq( )
publicrr 
IEnumerablerr 
<rr 
Assetrr  
>rr  !
Assetsrr" (
{rr) *
getrr+ .
;rr. /
}rr0 1
publicss 
IEnumerabless 
<ss 
stringss !
>ss! "

AssetPathsss# -
{ss. /
getss0 3
;ss3 4
}ss5 6
publictt 
ModuleAttributett 

ModuleInfott )
{tt* +
gettt, /
;tt/ 0
}tt1 2
publicvv 
	IFileInfovv 
GetFileInfovv $
(vv$ %
stringvv% +
subpathvv, 3
)vv3 4
{ww 	
ifxx 
(xx 
!xx 

_fileInfosxx 
.xx 
TryGetValuexx '
(xx' (
subpathxx( /
,xx/ 0
outxx1 4
varxx5 8
fileInfoxx9 A
)xxA B
)xxB C
{yy 
ifzz 
(zz 
!zz 

AssetPathszz 
.zz  
Containszz  (
(zz( )
Rootzz) -
+zz. /
subpathzz0 7
)zz7 8
)zz8 9
{{{ 
return|| 
new|| 
NotFoundFileInfo|| /
(||/ 0
subpath||0 7
)||7 8
;||8 9
}}} 
lock 
( 

_fileInfos  
)  !
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 

_fileInfos
ÅÅ #
.
ÅÅ# $
TryGetValue
ÅÅ$ /
(
ÅÅ/ 0
subpath
ÅÅ0 7
,
ÅÅ7 8
out
ÅÅ9 <
fileInfo
ÅÅ= E
)
ÅÅE F
)
ÅÅF G
{
ÇÇ 
var
ÉÉ 
resourcePath
ÉÉ (
=
ÉÉ) *
_baseNamespace
ÉÉ+ 9
+
ÉÉ: ;
subpath
ÉÉ< C
.
ÉÉC D
Replace
ÉÉD K
(
ÉÉK L
$char
ÉÉL O
,
ÉÉO P
$char
ÉÉQ T
)
ÉÉT U
;
ÉÉU V
var
ÑÑ 
fileName
ÑÑ $
=
ÑÑ% &
Path
ÑÑ' +
.
ÑÑ+ ,
GetFileName
ÑÑ, 7
(
ÑÑ7 8
subpath
ÑÑ8 ?
)
ÑÑ? @
;
ÑÑ@ A
if
ÜÜ 
(
ÜÜ 
Assembly
ÜÜ $
.
ÜÜ$ %%
GetManifestResourceInfo
ÜÜ% <
(
ÜÜ< =
resourcePath
ÜÜ= I
)
ÜÜI J
==
ÜÜK M
null
ÜÜN R
)
ÜÜR S
{
áá 
return
àà "
new
àà# &
NotFoundFileInfo
àà' 7
(
àà7 8
fileName
àà8 @
)
àà@ A
;
ààA B
}
ââ 

_fileInfos
ãã "
[
ãã" #
subpath
ãã# *
]
ãã* +
=
ãã, -
fileInfo
ãã. 6
=
ãã7 8
new
ãã9 <&
EmbeddedResourceFileInfo
ãã= U
(
ããU V
Assembly
åå $
,
åå$ %
resourcePath
åå& 2
,
åå2 3
fileName
åå4 <
,
åå< =
_lastModified
åå> K
)
ååK L
;
ååL M
}
çç 
}
éé 
}
èè 
return
ëë 
fileInfo
ëë 
;
ëë 
}
íí 	
}
ìì 
}îî ˚
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleCompositeStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class -
!ModuleCompositeStaticFileProvider 2
:3 4!
CompositeFileProvider5 J
,J K%
IModuleStaticFileProviderL e
{ 
public -
!ModuleCompositeStaticFileProvider 0
(0 1
params1 7
IStaticFileProvider8 K
[K L
]L M
fileProvidersN [
)[ \
:] ^
base_ c
(c d
fileProvidersd q
)q r
{ 	
} 	
public -
!ModuleCompositeStaticFileProvider 0
(0 1
IEnumerable1 <
<< =
IStaticFileProvider= P
>P Q
fileProvidersR _
)_ `
:a b
basec g
(g h
fileProvidersh u
)u v
{ 	
} 	
} 
} ŸB
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleEmbeddedFileProvider.cs
	namespace

 	
OrchardCore


 
.

 
Modules

 
{ 
public 

class &
ModuleEmbeddedFileProvider +
:, -
IFileProvider. ;
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public &
ModuleEmbeddedFileProvider )
() *
IApplicationContext* =
applicationContext> P
)P Q
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
private 
Application 
Application '
=>( *
_applicationContext+ >
.> ?
Application? J
;J K
public 
IDirectoryContents ! 
GetDirectoryContents" 6
(6 7
string7 =
subpath> E
)E F
{ 	
if 
( 
subpath 
== 
null 
)  
{ 
return %
NotFoundDirectoryContents 0
.0 1
	Singleton1 :
;: ;
}   
var"" 
folder"" 
="" 
NormalizePath"" &
(""& '
subpath""' .
)"". /
;""/ 0
var$$ 
entries$$ 
=$$ 
new$$ 
List$$ "
<$$" #
	IFileInfo$$# ,
>$$, -
($$- .
)$$. /
;$$/ 0
if'' 
('' 
folder'' 
=='' 
$str'' 
)'' 
{(( 
entries** 
.** 
Add** 
(** 
new** !
EmbeddedDirectoryInfo**  5
(**5 6
Application**6 A
.**A B
ModulesPath**B M
)**M N
)**N O
;**O P
}++ 
else-- 
if-- 
(-- 
folder-- 
==-- 
Application-- *
.--* +
ModulesPath--+ 6
)--6 7
{.. 
entries00 
.00 
AddRange00  
(00  !
Application00! ,
.00, -
Modules00- 4
.004 5
Select005 ;
(00; <
m00< =
=>00> @
new00A D!
EmbeddedDirectoryInfo00E Z
(00Z [
m00[ \
.00\ ]
Name00] a
)00a b
)00b c
)00c d
;00d e
}11 
else33 
if33 
(33 
folder33 
.33 

StartsWith33 &
(33& '
Application33' 2
.332 3
ModulesRoot333 >
,33> ?
StringComparison33@ P
.33P Q
Ordinal33Q X
)33X Y
)33Y Z
{44 
var66 
path66 
=66 
folder66 !
.66! "
	Substring66" +
(66+ ,
Application66, 7
.667 8
ModulesRoot668 C
.66C D
Length66D J
)66J K
;66K L
var77 
index77 
=77 
path77  
.77  !
IndexOf77! (
(77( )
$char77) ,
)77, -
;77- .
var:: 
name:: 
=:: 
index::  
==::! #
-::$ %
$num::% &
?::' (
path::) -
:::. /
path::0 4
.::4 5
	Substring::5 >
(::> ?
$num::? @
,::@ A
index::B G
)::G H
;::H I
var;; 
paths;; 
=;; 
Application;; '
.;;' (
	GetModule;;( 1
(;;1 2
name;;2 6
);;6 7
.;;7 8

AssetPaths;;8 B
;;;B C
NormalizedPaths>> 
.>>  !
ResolveFolderContents>>  5
(>>5 6
folder>>6 <
,>>< =
paths>>> C
,>>C D
out>>E H
var>>I L
files>>M R
,>>R S
out>>T W
var>>X [
folders>>\ c
)>>c d
;>>d e
entriesAA 
.AA 
AddRangeAA  
(AA  !
filesAA! &
.AA& '
SelectAA' -
(AA- .
pAA. /
=>AA0 2
GetFileInfoAA3 >
(AA> ?
pAA? @
)AA@ A
)AAA B
)AAB C
;AAC D
entriesBB 
.BB 
AddRangeBB  
(BB  !
foldersBB! (
.BB( )
SelectBB) /
(BB/ 0
nBB0 1
=>BB2 4
newBB5 8!
EmbeddedDirectoryInfoBB9 N
(BBN O
nBBO P
)BBP Q
)BBQ R
)BBR S
;BBS T
}CC 
returnEE 
newEE %
EmbeddedDirectoryContentsEE 0
(EE0 1
entriesEE1 8
)EE8 9
;EE9 :
}FF 	
publicHH 
	IFileInfoHH 
GetFileInfoHH $
(HH$ %
stringHH% +
subpathHH, 3
)HH3 4
{II 	
ifJJ 
(JJ 
subpathJJ 
==JJ 
nullJJ 
)JJ  
{KK 
returnLL 
newLL 
NotFoundFileInfoLL +
(LL+ ,
subpathLL, 3
)LL3 4
;LL4 5
}MM 
varOO 
pathOO 
=OO 
NormalizePathOO $
(OO$ %
subpathOO% ,
)OO, -
;OO- .
ifRR 
(RR 
pathRR 
.RR 

StartsWithRR 
(RR  
ApplicationRR  +
.RR+ ,
ModulesRootRR, 7
,RR7 8
StringComparisonRR9 I
.RRI J
OrdinalRRJ Q
)RRQ R
)RRR S
{SS 
pathUU 
=UU 
pathUU 
.UU 
	SubstringUU %
(UU% &
ApplicationUU& 1
.UU1 2
ModulesRootUU2 =
.UU= >
LengthUU> D
)UUD E
;UUE F
varVV 
indexVV 
=VV 
pathVV  
.VV  !
IndexOfVV! (
(VV( )
$charVV) ,
)VV, -
;VV- .
ifYY 
(YY 
indexYY 
!=YY 
-YY 
$numYY 
)YY  
{ZZ 
var\\ 
module\\ 
=\\  
path\\! %
.\\% &
	Substring\\& /
(\\/ 0
$num\\0 1
,\\1 2
index\\3 8
)\\8 9
;\\9 :
var__ 
fileSubPath__ #
=__$ %
path__& *
.__* +
	Substring__+ 4
(__4 5
index__5 :
+__; <
$num__= >
)__> ?
;__? @
ifbb 
(bb 
modulebb 
==bb !
Applicationbb" -
.bb- .
Namebb. 2
)bb2 3
{cc 
returnee 
newee "
PhysicalFileInfoee# 3
(ee3 4
newee4 7
FileInfoee8 @
(ee@ A
ApplicationeeA L
.eeL M
RooteeM Q
+eeR S
fileSubPatheeT _
)ee_ `
)ee` a
;eea b
}ff 
returnii 
Applicationii &
.ii& '
	GetModuleii' 0
(ii0 1
moduleii1 7
)ii7 8
.ii8 9
GetFileInfoii9 D
(iiD E
fileSubPathiiE P
)iiP Q
;iiQ R
}jj 
}kk 
returnmm 
newmm 
NotFoundFileInfomm '
(mm' (
subpathmm( /
)mm/ 0
;mm0 1
}nn 	
publicpp 
IChangeTokenpp 
Watchpp !
(pp! "
stringpp" (
filterpp) /
)pp/ 0
{qq 	
returnrr 
NullChangeTokenrr "
.rr" #
	Singletonrr# ,
;rr, -
}ss 	
privateuu 
stringuu 
NormalizePathuu $
(uu$ %
stringuu% +
pathuu, 0
)uu0 1
{vv 	
returnww 
pathww 
.ww 
Replaceww 
(ww  
$charww  $
,ww$ %
$charww& )
)ww) *
.ww* +
Trimww+ /
(ww/ 0
$charww0 3
)ww3 4
.ww4 5
Replaceww5 <
(ww< =
$strww= A
,wwA B
$strwwC F
)wwF G
;wwG H
}xx 	
}yy 
}zz Ä$
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleEmbeddedStaticFileProvider.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class ,
 ModuleEmbeddedStaticFileProvider 1
:2 3%
IModuleStaticFileProvider4 M
{ 
private 
readonly 
IApplicationContext ,
_applicationContext- @
;@ A
public ,
 ModuleEmbeddedStaticFileProvider /
(/ 0
IApplicationContext0 C
applicationContextD V
)V W
{ 	
_applicationContext 
=  !
applicationContext" 4
;4 5
} 	
public 
IDirectoryContents ! 
GetDirectoryContents" 6
(6 7
string7 =
subpath> E
)E F
{ 	
return %
NotFoundDirectoryContents ,
., -
	Singleton- 6
;6 7
} 	
public 
	IFileInfo 
GetFileInfo $
($ %
string% +
subpath, 3
)3 4
{ 	
if 
( 
subpath 
== 
null 
)  
{ 
return 
new 
NotFoundFileInfo +
(+ ,
subpath, 3
)3 4
;4 5
}   
var"" 
path"" 
="" 
NormalizePath"" $
(""$ %
subpath""% ,
)"", -
;""- .
var$$ 
index$$ 
=$$ 
path$$ 
.$$ 
IndexOf$$ $
($$$ %
$char$$% (
)$$( )
;$$) *
if'' 
('' 
index'' 
!='' 
-'' 
$num'' 
)'' 
{(( 
var)) 
application)) 
=))  !
_applicationContext))" 5
.))5 6
Application))6 A
;))A B
var,, 
module,, 
=,, 
path,, !
.,,! "
	Substring,," +
(,,+ ,
$num,,, -
,,,- .
index,,/ 4
),,4 5
;,,5 6
if// 
(// 
application// 
.//  
Modules//  '
.//' (
Any//( +
(//+ ,
m//, -
=>//. 0
m//1 2
.//2 3
Name//3 7
==//8 :
module//; A
)//A B
)//B C
{00 
var22 
fileSubPath22 #
=22$ %
Module22& ,
.22, -
WebRoot22- 4
+225 6
path227 ;
.22; <
	Substring22< E
(22E F
index22F K
+22L M
$num22N O
)22O P
;22P Q
if44 
(44 
module44 
!=44 !
application44" -
.44- .
Name44. 2
)442 3
{55 
return77 
application77 *
.77* +
	GetModule77+ 4
(774 5
module775 ;
)77; <
.77< =
GetFileInfo77= H
(77H I
fileSubPath77I T
)77T U
;77U V
}88 
return== 
new== 
PhysicalFileInfo== /
(==/ 0
new==0 3
FileInfo==4 <
(==< =
application=== H
.==H I
Root==I M
+==N O
fileSubPath==P [
)==[ \
)==\ ]
;==] ^
}>> 
}?? 
returnAA 
newAA 
NotFoundFileInfoAA '
(AA' (
subpathAA( /
)AA/ 0
;AA0 1
}BB 	
publicDD 
IChangeTokenDD 
WatchDD !
(DD! "
stringDD" (
filterDD) /
)DD/ 0
{EE 	
returnFF 
NullChangeTokenFF "
.FF" #
	SingletonFF# ,
;FF, -
}GG 	
privateII 
stringII 
NormalizePathII $
(II$ %
stringII% +
pathII, 0
)II0 1
{JJ 	
returnKK 
pathKK 
.KK 
ReplaceKK 
(KK  
$charKK  $
,KK$ %
$charKK& )
)KK) *
.KK* +
TrimKK+ /
(KK/ 0
$charKK0 3
)KK3 4
.KK4 5
ReplaceKK5 <
(KK< =
$strKK= A
,KKA B
$strKKC F
)KKF G
;KKG H
}LL 	
}MM 
}NN ËH
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\ModuleProjectStaticFileProvider.cs
	namespace		 	
OrchardCore		
 
.		 
Modules		 
{

 
public 

class +
ModuleProjectStaticFileProvider 0
:1 2%
IModuleStaticFileProvider3 L
{ 
private 
static 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
_roots2 8
;8 9
private 
static 
readonly 
object  &
_synLock' /
=0 1
new2 5
object6 <
(< =
)= >
;> ?
public +
ModuleProjectStaticFileProvider .
(. /
IApplicationContext/ B
applicationContextC U
)U V
{ 	
if 
( 
_roots 
!= 
null 
) 
{ 
return 
; 
} 
lock 
( 
_synLock 
) 
{ 
if 
( 
_roots 
== 
null "
)" #
{ 
var 
application #
=$ %
applicationContext& 8
.8 9
Application9 D
;D E
var!! 
roots!! 
=!! 
new!!  #

Dictionary!!$ .
<!!. /
string!!/ 5
,!!5 6
string!!7 =
>!!= >
(!!> ?
)!!? @
;!!@ A
foreach$$ 
($$ 
var$$  
module$$! '
in$$( *
application$$+ 6
.$$6 7
Modules$$7 >
)$$> ?
{%% 
if(( 
((( 
module(( "
.((" #
Assembly((# +
==((, .
null((/ 3
||((4 6
Path((7 ;
.((; <
GetDirectoryName((< L
(((L M
module((M S
.((S T
Assembly((T \
.((\ ]
Location((] e
)((e f
!=)) 
Path)) #
.))# $
GetDirectoryName))$ 4
())4 5
application))5 @
.))@ A
Assembly))A I
.))I J
Location))J R
)))R S
)))S T
{** 
continue++ $
;++$ %
},, 
var// 
asset// !
=//" #
module//$ *
.//* +
Assets//+ 1
.//1 2
FirstOrDefault//2 @
(//@ A
a//A B
=>//C E
a//F G
.//G H
ModuleAssetPath//H W
.00 

StartsWith00 '
(00' (
module00( .
.00. /
Root00/ 3
+004 5
Module006 <
.00< =
WebRoot00= D
,00D E
StringComparison00F V
.00V W
Ordinal00W ^
)00^ _
)00_ `
;00` a
if22 
(22 
asset22 !
!=22" $
null22% )
)22) *
{33 
var55 
index55  %
=55& '
asset55( -
.55- .
ProjectAssetPath55. >
.55> ?
IndexOf55? F
(55F G
$char55G J
+55K L
Module55M S
.55S T
WebRoot55T [
,55[ \
StringComparison55] m
.55m n
Ordinal55n u
)55u v
;55v w
roots88 !
[88! "
module88" (
.88( )
Name88) -
]88- .
=88/ 0
asset881 6
.886 7
ProjectAssetPath887 G
.88G H
	Substring88H Q
(88Q R
$num88R S
,88S T
index88U Z
+88[ \
Module88] c
.88c d
WebRoot88d k
.88k l
Length88l r
+88s t
$num88u v
)88v w
;88w x
}99 
}:: 
_roots<< 
=<< 
roots<< "
;<<" #
}== 
}>> 
}?? 	
publicAA 
IDirectoryContentsAA ! 
GetDirectoryContentsAA" 6
(AA6 7
stringAA7 =
subpathAA> E
)AAE F
{BB 	
returnCC %
NotFoundDirectoryContentsCC ,
.CC, -
	SingletonCC- 6
;CC6 7
}DD 	
publicFF 
	IFileInfoFF 
GetFileInfoFF $
(FF$ %
stringFF% +
subpathFF, 3
)FF3 4
{GG 	
ifHH 
(HH 
subpathHH 
==HH 
nullHH 
)HH  
{II 
returnJJ 
newJJ 
NotFoundFileInfoJJ +
(JJ+ ,
subpathJJ, 3
)JJ3 4
;JJ4 5
}KK 
varMM 
pathMM 
=MM 
NormalizePathMM $
(MM$ %
subpathMM% ,
)MM, -
;MM- .
varNN 
indexNN 
=NN 
pathNN 
.NN 
IndexOfNN $
(NN$ %
$charNN% (
)NN( )
;NN) *
ifQQ 
(QQ 
indexQQ 
!=QQ 
-QQ 
$numQQ 
)QQ 
{RR 
varTT 
moduleTT 
=TT 
pathTT !
.TT! "
	SubstringTT" +
(TT+ ,
$numTT, -
,TT- .
indexTT/ 4
)TT4 5
;TT5 6
ifWW 
(WW 
_rootsWW 
.WW 
TryGetValueWW &
(WW& '
moduleWW' -
,WW- .
outWW/ 2
varWW3 6
rootWW7 ;
)WW; <
)WW< =
{XX 
varZZ 
filePathZZ  
=ZZ! "
rootZZ# '
+ZZ( )
pathZZ* .
.ZZ. /
	SubstringZZ/ 8
(ZZ8 9
moduleZZ9 ?
.ZZ? @
LengthZZ@ F
+ZZG H
$numZZI J
)ZZJ K
;ZZK L
if\\ 
(\\ 
File\\ 
.\\ 
Exists\\ #
(\\# $
filePath\\$ ,
)\\, -
)\\- .
{]] 
return__ 
new__ "
PhysicalFileInfo__# 3
(__3 4
new__4 7
FileInfo__8 @
(__@ A
filePath__A I
)__I J
)__J K
;__K L
}`` 
}aa 
}bb 
returndd 
newdd 
NotFoundFileInfodd '
(dd' (
subpathdd( /
)dd/ 0
;dd0 1
}ee 	
publicgg 
IChangeTokengg 
Watchgg !
(gg! "
stringgg" (
filtergg) /
)gg/ 0
{hh 	
ifii 
(ii 
filterii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NullChangeTokenkk &
.kk& '
	Singletonkk' 0
;kk0 1
}ll 
varnn 
pathnn 
=nn 
NormalizePathnn $
(nn$ %
filternn% +
)nn+ ,
;nn, -
varoo 
indexoo 
=oo 
pathoo 
.oo 
IndexOfoo $
(oo$ %
$charoo% (
)oo( )
;oo) *
ifrr 
(rr 
indexrr 
!=rr 
-rr 
$numrr 
)rr 
{ss 
varuu 
moduleuu 
=uu 
pathuu !
.uu! "
	Substringuu" +
(uu+ ,
$numuu, -
,uu- .
indexuu/ 4
)uu4 5
;uu5 6
ifxx 
(xx 
_rootsxx 
.xx 
TryGetValuexx &
(xx& '
modulexx' -
,xx- .
outxx/ 2
varxx3 6
rootxx7 ;
)xx; <
)xx< =
{yy 
var{{ 
filePath{{  
={{! "
root{{# '
+{{( )
path{{* .
.{{. /
	Substring{{/ 8
({{8 9
module{{9 ?
.{{? @
Length{{@ F
+{{G H
$num{{I J
){{J K
;{{K L
if}} 
(}} 
File}} 
.}} 
Exists}} #
(}}# $
filePath}}$ ,
)}}, -
)}}- .
{~~ 
return
ÄÄ 
new
ÄÄ "$
PollingFileChangeToken
ÄÄ# 9
(
ÄÄ9 :
new
ÄÄ: =
FileInfo
ÄÄ> F
(
ÄÄF G
filePath
ÄÄG O
)
ÄÄO P
)
ÄÄP Q
;
ÄÄQ R
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 
return
ÖÖ 
NullChangeToken
ÖÖ "
.
ÖÖ" #
	Singleton
ÖÖ# ,
;
ÖÖ, -
}
ÜÜ 	
private
àà 
string
àà 
NormalizePath
àà $
(
àà$ %
string
àà% +
path
àà, 0
)
àà0 1
{
ââ 	
return
ää 
path
ää 
.
ää 
Replace
ää 
(
ää  
$char
ää  $
,
ää$ %
$char
ää& )
)
ää) *
.
ää* +
Trim
ää+ /
(
ää/ 0
$char
ää0 3
)
ää3 4
.
ää4 5
Replace
ää5 <
(
ää< =
$str
ää= A
,
ääA B
$str
ääC F
)
ääF G
;
ääG H
}
ãã 	
}
åå 
}çç ê
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\RequireFeaturesAttribute.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Class% *
,* +
AllowMultiple, 9
=: ;
false< A
)A B
]B C
public 

class $
RequireFeaturesAttribute )
:* +
	Attribute, 5
{ 
public $
RequireFeaturesAttribute '
(' (
string( .
featureName/ :
): ;
{ 	 
RequiredFeatureNames  
=! "
new# &
string' -
[- .
]. /
{0 1
featureName2 =
}> ?
;? @
} 	
public $
RequireFeaturesAttribute '
(' (
string( .
featureName/ :
,: ;
params< B
stringC I
[I J
]J K
otherFeatureNamesL ]
)] ^
{ 	
var 
list 
= 
new 
List 
<  
string  &
>& '
(' (
otherFeatureNames( 9
)9 :
;: ;
list 
. 
Add 
( 
featureName  
)  !
;! " 
RequiredFeatureNames  
=! "
list# '
;' (
} 	
public 
IList 
< 
string 
>  
RequiredFeatureNames 1
{2 3
get4 7
;7 8
}9 :
public!! 
static!! 
IList!! 
<!! 
string!! "
>!!" #*
GetRequiredFeatureNamesForType!!$ B
(!!B C
Type!!C G
type!!H L
)!!L M
{"" 	
var## 
	attribute## 
=## 
type##  
.##  !
GetCustomAttributes##! 4
<##4 5$
RequireFeaturesAttribute##5 M
>##M N
(##N O
false##O T
)##T U
.##U V
FirstOrDefault##V d
(##d e
)##e f
;##f g
return%% 
	attribute%% 
?%% 
.%%  
RequiredFeatureNames%% 2
??%%3 5
Array%%6 ;
.%%; <
Empty%%< A
<%%A B
string%%B H
>%%H I
(%%I J
)%%J K
;%%K L
}&& 	
}'' 
}(( »
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ClockExtension.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

static 
class 
ClockExtensions '
{ 
public 
static 
DateTimeOffset $
ConvertToTimeZone% 6
(6 7
this7 ;
IClock< B
clockC H
,H I
DateTimeJ R
dateTimeS [
,[ \
	ITimeZone] f
timeZoneg o
)o p
{ 	
DateTime 
dateTimeUtc  
;  !
switch 
( 
dateTime 
. 
Kind !
)! "
{ 
case 
DateTimeKind !
.! "
Utc" %
:% &
dateTimeUtc 
=  !
dateTime" *
;* +
break 
; 
case 
DateTimeKind !
.! "
Local" '
:' (
dateTimeUtc 
=  !
dateTime" *
.* +
ToUniversalTime+ :
(: ;
); <
;< =
break 
; 
default 
: 
dateTimeUtc 
=  !
DateTime" *
.* +
SpecifyKind+ 6
(6 7
dateTime7 ?
,? @
DateTimeKindA M
.M N
UtcN Q
)Q R
;R S
break 
; 
} 
return 
clock 
. 
ConvertToTimeZone *
(* +
new+ .
DateTimeOffset/ =
(= >
dateTimeUtc> I
)I J
,J K
timeZoneL T
)T U
;U V
} 	
public!! 
static!! 
Task!! 
<!! 
DateTimeOffset!! )
>!!) *
ConvertToLocalAsync!!+ >
(!!> ?
this!!? C
ILocalClock!!D O

localClock!!P Z
,!!Z [
DateTime!!\ d
dateTime!!e m
)!!m n
{"" 	
DateTime## 
dateTimeUtc##  
;##  !
switch$$ 
($$ 
dateTime$$ 
.$$ 
Kind$$ !
)$$! "
{%% 
case&& 
DateTimeKind&& !
.&&! "
Utc&&" %
:&&% &
dateTimeUtc'' 
=''  !
dateTime''" *
;''* +
break(( 
;(( 
case)) 
DateTimeKind)) !
.))! "
Local))" '
:))' (
dateTimeUtc** 
=**  !
dateTime**" *
.*** +
ToUniversalTime**+ :
(**: ;
)**; <
;**< =
break++ 
;++ 
default,, 
:,, 
dateTimeUtc-- 
=--  !
DateTime--" *
.--* +
SpecifyKind--+ 6
(--6 7
dateTime--7 ?
,--? @
DateTimeKind--A M
.--M N
Utc--N Q
)--Q R
;--R S
break.. 
;.. 
}// 
return11 

localClock11 
.11 
ConvertToLocalAsync11 1
(111 2
new112 5
DateTimeOffset116 D
(11D E
dateTimeUtc11E P
)11P Q
)11Q R
;11R S
}22 	
}33 
}44 É
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\IClock.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public

 

	interface

 
IClock

 
{ 
DateTime 
UtcNow 
{ 
get 
; 
}  
	ITimeZone 
[ 
] 
GetTimeZones  
(  !
)! "
;" #
	ITimeZone 
GetTimeZone 
( 
string $

timeZoneId% /
)/ 0
;0 1
	ITimeZone"" 
GetSystemTimeZone"" #
(""# $
)""$ %
;""% &
DateTimeOffset'' 
ConvertToTimeZone'' (
(''( )
DateTimeOffset'') 7
dateTimeOffset''8 F
,''F G
	ITimeZone''H Q
timeZone''R Z
)''Z [
;''[ \
}(( 
})) ≠
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ILocalClock.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public		 

	interface		 
ILocalClock		  
{

 
Task 
< 
DateTimeOffset 
> 
LocalNowAsync *
{+ ,
get- 0
;0 1
}2 3
Task 
< 
	ITimeZone 
> !
GetLocalTimeZoneAsync -
(- .
). /
;/ 0
Task 
< 
DateTimeOffset 
> 
ConvertToLocalAsync 0
(0 1
DateTimeOffset1 ?
dateTimeOffset@ N
)N O
;O P
Task 
< 
DateTime 
> 
ConvertToUtcAsync (
(( )
DateTime) 1
dateTime2 :
): ;
;; <
} 
} å
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\ITimeZoneSelector.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

	interface 
ITimeZoneSelector &
{		 
Task

 
<

 "
TimeZoneSelectorResult

 #
>

# $
GetTimeZoneAsync

% 5
(

5 6
)

6 7
;

7 8
} 
} ä
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Services\TimeZoneSelectorResult.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class "
TimeZoneSelectorResult '
{ 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public		 
Func		 
<		 
Task		 
<		 
string		 
>		  
>		  !

TimeZoneId		" ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
}

 
} ¿
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\ShellRequestPipeline.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

class  
ShellRequestPipeline %
:& '
IShellPipeline( 6
{ 
public		 
RequestDelegate		 
Next		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
Task

 
Invoke

 
(

 
object

 !
context

" )
)

) *
=>

+ -
Next

. 2
(

2 3
context

3 :
as

; =
HttpContext

> I
)

I J
;

J K
} 
} Í	
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Modules\Startup.cs
	namespace 	
OrchardCore
 
. 
Modules 
{ 
public 

abstract 
class 
StartupBase %
:& '
IStartup( 0
{		 
public 
virtual 
int 
Order  
{! "
get# &
;& '
}( )
=* +
$num, -
;- .
public 
virtual 
int 
ConfigureOrder )
=>* ,
Order- 2
;2 3
public 
virtual 
void 
ConfigureServices -
(- .
IServiceCollection. @
servicesA I
)I J
{ 	
} 	
public 
virtual 
void 
	Configure %
(% &
IApplicationBuilder& 9
app: =
,= >!
IEndpointRouteBuilder? T
routesU [
,[ \
IServiceProvider] m
serviceProvidern }
)} ~
{ 	
} 	
} 
} ü
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Routing\FormValueRequiredAttribute.cs
	namespace 	
OrchardCore
 
. 
Routing 
{ 
public 

class &
FormValueRequiredAttribute +
:, -
System. 4
.4 5
	Attribute5 >
{ 
public &
FormValueRequiredAttribute )
() *
string* 0
formKey1 8
)8 9
{ 	
FormKey 
= 
formKey 
; 
} 	
public

 
string

 
FormKey
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
# $
}

% &
} 
} ∞,
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Routing\FormValueRequiredMatcherPolicy.cs
	namespace 	
OrchardCore
 
. 
Routing 
{		 
public

 

class

 *
FormValueRequiredMatcherPolicy

 /
:

0 1
MatcherPolicy

2 ?
,

? @#
IEndpointSelectorPolicy

A X
,

X Y#
IEndpointComparerPolicy

Z q
{ 
public *
FormValueRequiredMatcherPolicy -
(- .
). /
{ 	
} 	
public 
override 
int 
Order !
=>" $
int% (
.( )
MinValue) 1
+2 3
$num4 7
;7 8
public 
bool 
AppliesToEndpoints &
(& '
IReadOnlyList' 4
<4 5
Endpoint5 =
>= >
	endpoints? H
)H I
{ 	
for 
( 
var 
i 
= 
$num 
; 
i 
< 
	endpoints  )
.) *
Count* /
;/ 0
i1 2
++2 4
)4 5
{ 
var 
action 
= 
	endpoints &
[& '
i' (
]( )
.) *
Metadata* 2
.2 3
GetMetadata3 >
<> ?
ActionDescriptor? O
>O P
(P Q
)Q R
;R S
if 
( 
action 
!= 
null "
)" #
{ 
for 
( 
var 
n 
=  
$num! "
;" #
n$ %
<& '
action( .
.. /
EndpointMetadata/ ?
.? @
Count@ E
;E F
nG H
++H J
)J K
{ 
if 
( 
action "
." #
EndpointMetadata# 3
[3 4
n4 5
]5 6
is7 9&
FormValueRequiredAttribute: T
)T U
{ 
return "
true# '
;' (
} 
}   
}!! 
}"" 
return$$ 
false$$ 
;$$ 
}%% 	
public'' 
Task'' 

ApplyAsync'' 
('' 
HttpContext'' *
httpContext''+ 6
,''6 7
CandidateSet''8 D

candidates''E O
)''O P
{(( 	
if)) 
()) 
!)) 
HttpMethods)) 
.)) 
IsPost)) #
())# $
httpContext))$ /
.))/ 0
Request))0 7
.))7 8
Method))8 >
)))> ?
)))? @
{** 
return++ 
Task++ 
.++ 
CompletedTask++ )
;++) *
},, 
for.. 
(.. 
var.. 
i.. 
=.. 
$num.. 
;.. 
i.. 
<.. 

candidates..  *
...* +
Count..+ 0
;..0 1
i..2 3
++..3 5
)..5 6
{// 
if00 
(00 
!00 

candidates00 
.00  
IsValidCandidate00  0
(000 1
i001 2
)002 3
)003 4
{11 
continue22 
;22 
}33 
var55 
required55 
=55 

candidates55 )
[55) *
i55* +
]55+ ,
.55, -
Endpoint55- 5
.555 6
Metadata556 >
.55> ?
GetMetadata55? J
<55J K&
FormValueRequiredAttribute55K e
>55e f
(55f g
)55g h
;55h i
if77 
(77 
required77 
==77 
null77  $
)77$ %
{88 
continue99 
;99 
}:: 
var<< 
value<< 
=<< 
httpContext<< '
.<<' (
Request<<( /
.<</ 0
Form<<0 4
[<<4 5
required<<5 =
.<<= >
FormKey<<> E
]<<E F
;<<F G

candidates>> 
.>> 
SetValidity>> &
(>>& '
i>>' (
,>>( )
!>>* +
string>>+ 1
.>>1 2
IsNullOrEmpty>>2 ?
(>>? @
value>>@ E
)>>E F
)>>F G
;>>G H
}?? 
returnAA 
TaskAA 
.AA 
CompletedTaskAA %
;AA% &
}BB 	
publicDD 
	IComparerDD 
<DD 
EndpointDD !
>DD! "
ComparerDD# +
=>DD, .
newDD/ 2-
!FormValueRequiredEndpointComparerDD3 T
(DDT U
)DDU V
;DDV W
privateFF 
classFF -
!FormValueRequiredEndpointComparerFF 7
:FF8 9$
EndpointMetadataComparerFF: R
<FFR S&
FormValueRequiredAttributeFFS m
>FFm n
{GG 	
	protectedHH 
overrideHH 
intHH "
CompareMetadataHH# 2
(HH2 3&
FormValueRequiredAttributeHH3 M
xHHN O
,HHO P&
FormValueRequiredAttributeHHQ k
yHHl m
)HHm n
{II 
returnJJ 
baseJJ 
.JJ 
CompareMetadataJJ +
(JJ+ ,
xJJ, -
,JJ- .
yJJ/ 0
)JJ0 1
;JJ1 2
}KK 
}LL 	
}MM 
}NN Ô
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Routing\IShellRouteValuesAddressScheme.cs
	namespace 	
OrchardCore
 
. 
Routing 
{ 
public 

	interface *
IShellRouteValuesAddressScheme 3
:4 5"
IEndpointAddressScheme6 L
<L M
RouteValuesAddressM _
>_ `
{		 
}

 
} π+
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Routing\PathStringExtensions.cs
	namespace 	
OrchardCore
 
. 
Routing 
{ 
public 

static 
class  
PathStringExtensions ,
{ 
public 
static 
bool (
StartsWithNormalizedSegments 7
(7 8
this8 <

PathString= G
pathH L
,L M

PathStringN X
otherY ^
)^ _
{		 	
if

 
(

 
other

 
.

 
HasValue

 
&&

 !
other

" '
.

' (
Value

( -
.

- .
EndsWith

. 6
(

6 7
$char

7 :
)

: ;
)

; <
{ 
return 
path 
. 
StartsWithSegments .
(. /
other/ 4
.4 5
Value5 :
.: ;
	Substring; D
(D E
$numE F
,F G
otherH M
.M N
ValueN S
.S T
LengthT Z
-[ \
$num] ^
)^ _
)_ `
;` a
} 
return 
path 
. 
StartsWithSegments *
(* +
other+ 0
)0 1
;1 2
} 	
public 
static 
bool (
StartsWithNormalizedSegments 7
(7 8
this8 <

PathString= G
pathH L
,L M

PathStringN X
otherY ^
,^ _
StringComparison` p
comparisonTypeq 
)	 Ä
{ 	
if 
( 
other 
. 
HasValue 
&& !
other" '
.' (
Value( -
.- .
EndsWith. 6
(6 7
$char7 :
): ;
); <
{ 
return 
path 
. 
StartsWithSegments .
(. /
other/ 4
.4 5
Value5 :
.: ;
	Substring; D
(D E
$numE F
,F G
otherH M
.M N
ValueN S
.S T
LengthT Z
-[ \
$num] ^
)^ _
,_ `
comparisonTypea o
)o p
;p q
} 
return 
path 
. 
StartsWithSegments *
(* +
other+ 0
,0 1
comparisonType2 @
)@ A
;A B
} 	
public 
static 
bool (
StartsWithNormalizedSegments 7
(7 8
this8 <

PathString= G
pathH L
,L M

PathStringN X
otherY ^
,^ _
out` c

PathStringd n
	remainingo x
)x y
{ 	
if 
( 
other 
. 
HasValue 
&& !
other" '
.' (
Value( -
.- .
EndsWith. 6
(6 7
$char7 :
): ;
); <
{ 
return   
path   
.   
StartsWithSegments   .
(  . /
other  / 4
.  4 5
Value  5 :
.  : ;
	Substring  ; D
(  D E
$num  E F
,  F G
other  H M
.  M N
Value  N S
.  S T
Length  T Z
-  [ \
$num  ] ^
)  ^ _
,  _ `
out  a d
	remaining  e n
)  n o
;  o p
}!! 
return## 
path## 
.## 
StartsWithSegments## *
(##* +
other##+ 0
,##0 1
out##2 5
	remaining##6 ?
)##? @
;##@ A
}$$ 	
public&& 
static&& 
bool&& (
StartsWithNormalizedSegments&& 7
(&&7 8
this&&8 <

PathString&&= G
path&&H L
,&&L M

PathString&&N X
other&&Y ^
,&&^ _
StringComparison&&` p
comparisonType&&q 
,	&& Ä
out
&&Å Ñ

PathString
&&Ö è
	remaining
&&ê ô
)
&&ô ö
{'' 	
if(( 
((( 
other(( 
.(( 
HasValue(( 
&&(( !
other((" '
.((' (
Value((( -
.((- .
EndsWith((. 6
(((6 7
$char((7 :
)((: ;
)((; <
{)) 
return** 
path** 
.** 
StartsWithSegments** .
(**. /
other**/ 4
.**4 5
Value**5 :
.**: ;
	Substring**; D
(**D E
$num**E F
,**F G
other**H M
.**M N
Value**N S
.**S T
Length**T Z
-**[ \
$num**] ^
)**^ _
,**_ `
comparisonType**a o
,**o p
out**q t
	remaining**u ~
)**~ 
;	** Ä
}++ 
return-- 
path-- 
.-- 
StartsWithSegments-- *
(--* +
other--+ 0
,--0 1
comparisonType--2 @
,--@ A
out--B E
	remaining--F O
)--O P
;--P Q
}.. 	
}// 
}00 ∆
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Routing\ShellRouteValuesAddressScheme.cs
	namespace 	
OrchardCore
 
. 
Routing 
{		 
public 

sealed 
class )
ShellRouteValuesAddressScheme 5
:6 7"
IEndpointAddressScheme8 N
<N O
RouteValuesAddressO a
>a b
{ 
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
IEnumerable $
<$ %*
IShellRouteValuesAddressScheme% C
>C D
_schemesE M
;M N
private 
bool %
_defaultSchemeInitialized .
;. /
private "
IEndpointAddressScheme &
<& '
RouteValuesAddress' 9
>9 :
_defaultScheme; I
;I J
public )
ShellRouteValuesAddressScheme ,
(, - 
IHttpContextAccessor- A
httpContextAccessorB U
,U V
IEnumerableW b
<b c+
IShellRouteValuesAddressScheme	c Å
>
Å Ç
schemes
É ä
)
ä ã
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_schemes 
= 
schemes 
; 
} 	
public 
IEnumerable 
< 
Endpoint #
># $
FindEndpoints% 2
(2 3
RouteValuesAddress3 E
addressF M
)M N
{ 	
if 
( 
address 
== 
null 
)  
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
address7 >
)> ?
)? @
;@ A
}   
foreach## 
(## 
var## 
scheme## 
in##  "
_schemes### +
)##+ ,
{$$ 
var%% 
	endpoints%% 
=%% 
scheme%%  &
.%%& '
FindEndpoints%%' 4
(%%4 5
address%%5 <
)%%< =
;%%= >
if'' 
('' 
	endpoints'' 
.'' 
Any'' !
(''! "
)''" #
)''# $
{(( 
return)) 
	endpoints)) $
;))$ %
}** 
}++ 
if-- 
(-- 
!-- %
_defaultSchemeInitialized-- *
)--* +
{.. 
lock// 
(// 
this// 
)// 
{00 
_defaultScheme22 "
=22# $ 
_httpContextAccessor22% 9
.229 :
HttpContext22: E
?22E F
.22F G
RequestServices22G V
.33 
GetServices33 $
<33$ %"
IEndpointAddressScheme33% ;
<33; <
RouteValuesAddress33< N
>33N O
>33O P
(33P Q
)33Q R
.44 
Where44 
(44 
scheme44 %
=>44& (
scheme44) /
.44/ 0
GetType440 7
(447 8
)448 9
!=44: <
GetType44= D
(44D E
)44E F
)44F G
.55 
LastOrDefault55 &
(55& '
)55' (
;55( )%
_defaultSchemeInitialized77 -
=77. /
true770 4
;774 5
}88 
}99 
return<< 
_defaultScheme<< !
?<<! "
.<<" #
FindEndpoints<<# 0
(<<0 1
address<<1 8
)<<8 9
??<<: <

Enumerable<<= G
.<<G H
Empty<<H M
<<<M N
Endpoint<<N V
><<V W
(<<W X
)<<X Y
;<<Y Z
}== 	
}>> 
}?? “
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Setup\SetupConstants.cs
	namespace 	
OrchardCore
 
. 
Abstractions "
." #
Setup# (
{ 
public 

static 
class 
SetupConstants &
{ 
public 
const 
string 
SiteName $
=% &
$str' 1
;1 2
public 
const 
string 
AdminUsername )
=* +
$str, ;
;; <
public 
const 
string 
AdminUserId '
=( )
$str* 7
;7 8
public 
const 
string 

AdminEmail &
=' (
$str) 5
;5 6
public		 
const		 
string		 
AdminPassword		 )
=		* +
$str		, ;
;		; <
public

 
const

 
string

 
DatabaseProvider

 ,
=

- .
$str

/ A
;

A B
public 
const 
string $
DatabaseConnectionString 4
=5 6
$str7 Q
;Q R
public 
const 
string 
DatabaseTablePrefix /
=0 1
$str2 G
;G H
public 
const 
string 
SiteTimeZone (
=) *
$str+ 9
;9 :
} 
} ˜
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Extensions\ClonedSingletonDescriptor.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

class %
ClonedSingletonDescriptor *
:+ ,
ServiceDescriptor- >
{ 
public %
ClonedSingletonDescriptor (
(( )
ServiceDescriptor) :
parent; A
,A B
objectC I"
implementationInstanceJ `
)` a
:		 
base		 
(		 
parent		 
.		 
ServiceType		 %
,		% &"
implementationInstance		' =
)		= >
{

 	
Parent 
= 
parent 
; 
} 	
public %
ClonedSingletonDescriptor (
(( )
ServiceDescriptor) :
parent; A
,A B
FuncC G
<G H
IServiceProviderH X
,X Y
objectZ `
>` a!
implementationFactoryb w
)w x
: 
base 
( 
parent 
. 
ServiceType %
,% &!
implementationFactory' <
,< =
ServiceLifetime> M
.M N
	SingletonN W
)W X
{ 	
Parent 
= 
parent 
; 
} 	
public 
ServiceDescriptor  
Parent! '
{( )
get* -
;- .
}/ 0
} 
} •
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Extensions\ServiceDescriptorExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

static 
class '
ServiceDescriptorExtensions 3
{ 
public 
static 
Type !
GetImplementationType 0
(0 1
this1 5
ServiceDescriptor6 G

descriptorH R
)R S
{		 	
if

 
(

 

descriptor

 
is

 %
ClonedSingletonDescriptor

 7
cloned

8 >
)

> ?
{ 
return 
cloned 
. 
Parent $
.$ %!
GetImplementationType% :
(: ;
); <
;< =
} 
if 
( 

descriptor 
. 
ImplementationType -
!=. 0
null1 5
)5 6
{ 
return 

descriptor !
.! "
ImplementationType" 4
;4 5
} 
if 
( 

descriptor 
. "
ImplementationInstance 1
!=2 4
null5 9
)9 :
{ 
return 

descriptor !
.! ""
ImplementationInstance" 8
.8 9
GetType9 @
(@ A
)A B
;B C
} 
if 
( 

descriptor 
. !
ImplementationFactory 0
!=1 3
null4 8
)8 9
{ 
return 

descriptor !
.! "!
ImplementationFactory" 7
.7 8
GetType8 ?
(? @
)@ A
.A B 
GenericTypeArgumentsB V
[V W
$numW X
]X Y
;Y Z
} 
return 
null 
; 
}   	
}!! 
}"" ƒ
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\ICompositionStrategy.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public

 

	interface

  
ICompositionStrategy

 )
{ 
Task 
< 
ShellBlueprint 
> 
ComposeAsync )
() *
ShellSettings* 7
settings8 @
,@ A
ShellDescriptorB Q

descriptorR \
)\ ]
;] ^
} 
} õ
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\IShellContainerFactory.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

	interface "
IShellContainerFactory +
{ 
IServiceProvider 
CreateContainer (
(( )
ShellSettings) 6
settings7 ?
,? @
ShellBlueprintA O
	blueprintP Y
)Y Z
;Z [
}		 
}

 
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\IShellContextFactory.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public

 

	interface

  
IShellContextFactory

 )
{ 
Task 
< 
ShellContext 
> #
CreateShellContextAsync 2
(2 3
ShellSettings3 @
settingsA I
)I J
;J K
Task 
< 
ShellContext 
> #
CreateSetupContextAsync 2
(2 3
ShellSettings3 @
settingsA I
)I J
;J K
Task 
< 
ShellContext 
> '
CreateDescribedContextAsync 6
(6 7
ShellSettings7 D
settingsE M
,M N
ShellDescriptorO ^
shellDescriptor_ n
)n o
;o p
} 
} ¨
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\IShellPipeline.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
{ 
public 

	interface 
IShellPipeline #
{ 
Task

 
Invoke

 
(

 
object

 
context

 "
)

" #
;

# $
} 
} û
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\Models\ShellBlueprint.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Builders( 0
.0 1
Models1 7
{ 
public 

class 
ShellBlueprint 
{ 
public 
ShellSettings 
Settings %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
ShellDescriptor 

Descriptor )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
IDictionary 
< 
Type 
,  
FeatureEntry! -
>- .
Dependencies/ ;
{< =
get> A
;A B
setC F
;F G
}H I
} 
} íW
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Builders\ShellContext.cs
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
public 

class 
ShellContext 
: 
IDisposable  +
{ 
private 
bool 
	_disposed 
; 
private 
List 
< 
WeakReference "
<" #
ShellContext# /
>/ 0
>0 1
_dependents2 =
;= >
private 
readonly 
object 
_synLock  (
=) *
new+ .
object/ 5
(5 6
)6 7
;7 8
internal 
volatile 
int 
	_refCount '
;' (
internal 
volatile 
int 
_terminated )
;) *
internal 
bool 
	_released 
;  
public 
ShellSettings 
Settings %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
ShellBlueprint 
	Blueprint '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
IServiceProvider 
ServiceProvider  /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
bool 
IsActivated 
{  !
get" %
;% &
set' *
;* +
}, -
public## 
IShellPipeline## 
Pipeline## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
public%% 
class%% 
PlaceHolder%%  
:%%! "
ShellContext%%# /
{&& 	
public** 
PlaceHolder** 
(** 
)**  
{++ 
	_released,, 
=,, 
true,,  
;,,  !
	_disposed-- 
=-- 
true--  
;--  !
}.. 
}// 	
public44 

ShellScope44 
CreateScope44 %
(44% &
)44& '
{55 	
if77 
(77 
	_released77 
)77 
{88 
return99 
null99 
;99 
}:: 
var<< 
scope<< 
=<< 
new<< 

ShellScope<< &
(<<& '
this<<' +
)<<+ ,
;<<, -
if?? 
(?? 
	_released?? 
)?? 
{@@ 
scopeBB 
.BB 
TerminateShellAsyncBB )
(BB) *
)BB* +
.BB+ ,

GetAwaiterBB, 6
(BB6 7
)BB7 8
.BB8 9
	GetResultBB9 B
(BBB C
)BBC D
;BBD E
returnCC 
nullCC 
;CC 
}DD 
returnFF 
scopeFF 
;FF 
}GG 	
publicLL 
boolLL 
ReleasedLL 
=>LL 
	_releasedLL  )
;LL) *
publicQQ 
intQQ 
ActiveScopesQQ 
=>QQ  "
	_refCountQQ# ,
;QQ, -
publicVV 
voidVV 
ReleaseVV 
(VV 
)VV 
=>VV  
ReleaseInternalVV! 0
(VV0 1
)VV1 2
;VV2 3
internalXX 
voidXX  
ReleaseFromLastScopeXX *
(XX* +
)XX+ ,
=>XX- /
ReleaseInternalXX0 ?
(XX? @
ReleaseModeXX@ K
.XXK L
FromLastScopeXXL Y
)XXY Z
;XXZ [
internalZZ 
voidZZ !
ReleaseFromDependencyZZ +
(ZZ+ ,
)ZZ, -
=>ZZ. 0
ReleaseInternalZZ1 @
(ZZ@ A
ReleaseModeZZA L
.ZZL M
FromDependencyZZM [
)ZZ[ \
;ZZ\ ]
internal\\ 
void\\ 
ReleaseInternal\\ %
(\\% &
ReleaseMode\\& 1
mode\\2 6
=\\7 8
ReleaseMode\\9 D
.\\D E
Normal\\E K
)\\K L
{]] 	
if^^ 
(^^ 
	_released^^ 
)^^ 
{__ 
returnaa 
;aa 
}bb 
ifee 
(ee 
modeee 
==ee 
ReleaseModeee #
.ee# $
FromDependencyee$ 2
&&ee3 5
Settingsee6 >
.ee> ?
Stateee? D
==eeE G
TenantStateeeH S
.eeS T
DisabledeeT \
&&ee] _
	_refCountee` i
!=eej l
$numeem n
)een o
{ff 
returngg 
;gg 
}hh 

ShellScopeoo 
scopeoo 
=oo 
nulloo #
;oo# $
lockpp 
(pp 
_synLockpp 
)pp 
{qq 
ifrr 
(rr 
	_releasedrr 
)rr 
{ss 
returntt 
;tt 
}uu 
ifww 
(ww 
_dependentsww 
!=ww  "
nullww# '
)ww' (
{xx 
foreachyy 
(yy 
varyy  
	dependentyy! *
inyy+ -
_dependentsyy. 9
)yy9 :
{zz 
if{{ 
({{ 
	dependent{{ %
.{{% &
TryGetTarget{{& 2
({{2 3
out{{3 6
var{{7 :
shellContext{{; G
){{G H
){{H I
{|| 
shellContext}} (
.}}( )!
ReleaseFromDependency}}) >
(}}> ?
)}}? @
;}}@ A
}~~ 
} 
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
mode
ÇÇ 
!=
ÇÇ 
ReleaseMode
ÇÇ '
.
ÇÇ' (
FromLastScope
ÇÇ( 5
&&
ÇÇ6 8
ServiceProvider
ÇÇ9 H
!=
ÇÇI K
null
ÇÇL P
)
ÇÇP Q
{
ÉÉ 
scope
ÜÜ 
=
ÜÜ 
new
ÜÜ 

ShellScope
ÜÜ  *
(
ÜÜ* +
this
ÜÜ+ /
)
ÜÜ/ 0
;
ÜÜ0 1
}
áá 
	_released
ââ 
=
ââ 
true
ââ  
;
ââ  !
}
ää 
if
åå 
(
åå 
mode
åå 
==
åå 
ReleaseMode
åå #
.
åå# $
FromLastScope
åå$ 1
)
åå1 2
{
çç 
return
éé 
;
éé 
}
èè 
if
ëë 
(
ëë 
scope
ëë 
!=
ëë 
null
ëë 
)
ëë 
{
íí 
scope
îî 
.
îî !
TerminateShellAsync
îî )
(
îî) *
)
îî* +
.
îî+ ,

GetAwaiter
îî, 6
(
îî6 7
)
îî7 8
.
îî8 9
	GetResult
îî9 B
(
îîB C
)
îîC D
;
îîD E
return
ïï 
;
ïï 
}
ññ 
Dispose
òò 
(
òò 
)
òò 
;
òò 
}
ôô 	
internal
õõ 
enum
õõ 
ReleaseMode
õõ !
{
úú 	
Normal
ùù 
,
ùù 
FromLastScope
ûû 
,
ûû 
FromDependency
üü 
}
†† 	
public
•• 
void
•• 
AddDependentShell
•• %
(
••% &
ShellContext
••& 2
shellContext
••3 ?
)
••? @
{
¶¶ 	
if
®® 
(
®® 
shellContext
®® 
.
®® 
Released
®® %
)
®®% &
{
©© 
return
™™ 
;
™™ 
}
´´ 
if
ÆÆ 
(
ÆÆ 
	_released
ÆÆ 
)
ÆÆ 
{
ØØ 
shellContext
±± 
.
±± 
Release
±± $
(
±±$ %
)
±±% &
;
±±& '
return
≤≤ 
;
≤≤ 
}
≥≥ 
lock
µµ 
(
µµ 
_synLock
µµ 
)
µµ 
{
∂∂ 
if
∑∑ 
(
∑∑ 
_dependents
∑∑ 
==
∑∑  "
null
∑∑# '
)
∑∑' (
{
∏∏ 
_dependents
ππ 
=
ππ  !
new
ππ" %
List
ππ& *
<
ππ* +
WeakReference
ππ+ 8
<
ππ8 9
ShellContext
ππ9 E
>
ππE F
>
ππF G
(
ππG H
)
ππH I
;
ππI J
}
∫∫ 
_dependents
ΩΩ 
.
ΩΩ 
	RemoveAll
ΩΩ %
(
ΩΩ% &
x
ΩΩ& '
=>
ΩΩ( *
!
ΩΩ+ ,
x
ΩΩ, -
.
ΩΩ- .
TryGetTarget
ΩΩ. :
(
ΩΩ: ;
out
ΩΩ; >
var
ΩΩ? B
shell
ΩΩC H
)
ΩΩH I
||
ΩΩJ L
shell
ΩΩM R
.
ΩΩR S
Settings
ΩΩS [
.
ΩΩ[ \
Name
ΩΩ\ `
==
ΩΩa c
shellContext
ΩΩd p
.
ΩΩp q
Settings
ΩΩq y
.
ΩΩy z
Name
ΩΩz ~
)
ΩΩ~ 
;ΩΩ Ä
_dependents
øø 
.
øø 
Add
øø 
(
øø  
new
øø  #
WeakReference
øø$ 1
<
øø1 2
ShellContext
øø2 >
>
øø> ?
(
øø? @
shellContext
øø@ L
)
øøL M
)
øøM N
;
øøN O
}
¿¿ 
}
¡¡ 	
public
√√ 
void
√√ 
Dispose
√√ 
(
√√ 
)
√√ 
{
ƒƒ 	
Close
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
GC
∆∆ 
.
∆∆ 
SuppressFinalize
∆∆ 
(
∆∆  
this
∆∆  $
)
∆∆$ %
;
∆∆% &
}
«« 	
public
…… 
void
…… 
Close
…… 
(
…… 
)
…… 
{
   	
if
ÀÀ 
(
ÀÀ 
	_disposed
ÀÀ 
)
ÀÀ 
{
ÃÃ 
return
ÕÕ 
;
ÕÕ 
}
ŒŒ 
	_disposed
–– 
=
–– 
true
–– 
;
–– 
if
”” 
(
”” 
ServiceProvider
”” 
!=
””  "
null
””# '
)
””' (
{
‘‘ 
(
’’ 
ServiceProvider
’’  
as
’’! #
IDisposable
’’$ /
)
’’/ 0
?
’’0 1
.
’’1 2
Dispose
’’2 9
(
’’9 :
)
’’: ;
;
’’; <
ServiceProvider
÷÷ 
=
÷÷  !
null
÷÷" &
;
÷÷& '
}
◊◊ 
IsActivated
ŸŸ 
=
ŸŸ 
false
ŸŸ 
;
ŸŸ  
	Blueprint
⁄⁄ 
=
⁄⁄ 
null
⁄⁄ 
;
⁄⁄ 
Pipeline
€€ 
=
€€ 
null
€€ 
;
€€ 
}
‹‹ 	
~
ﬁﬁ 	
ShellContext
ﬁﬁ	 
(
ﬁﬁ 
)
ﬁﬁ 
{
ﬂﬂ 	
Close
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 	
}
‚‚ 
}„„ Ô
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\ConfigurationSectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

static 
class *
ConfigurationSectionExtensions 6
{ 
public 
static !
IConfigurationSection +
GetSectionCompat, <
(< =
this= A
IConfigurationB P
configurationQ ^
,^ _
string` f
keyg j
)j k
{ 	
var 
section 
= 
configuration '
.' (

GetSection( 2
(2 3
key3 6
)6 7
;7 8
return 
section 
. 
Exists !
(! "
)" #
? 
section 
: 
key 
. 
Contains 
( 
$char "
)" #
? 
configuration #
.# $

GetSection$ .
(. /
key/ 2
.2 3
Replace3 :
(: ;
$char; >
,> ?
$char@ C
)C D
)D E
: 
section 
; 
} 	
} 
} À8
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\Internal\UpdatableDataProvider.cs
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
.

' (
Configuration

( 5
.

5 6
Internal

6 >
{ 
internal 
class !
UpdatableDataProvider (
:) *"
IConfigurationProvider+ A
,A B
IEnumerableC N
<N O
KeyValuePairO [
<[ \
string\ b
,b c
stringd j
>j k
>k l
{ 
private $
ConfigurationReloadToken (
_reloadToken) 5
=6 7
new8 ;$
ConfigurationReloadToken< T
(T U
)U V
;V W
public !
UpdatableDataProvider $
($ %
IEnumerable% 0
<0 1
KeyValuePair1 =
<= >
string> D
,D E
stringF L
>L M
>M N
initialDataO Z
)Z [
{ 	
Data 
= 
new  
ConcurrentDictionary +
<+ ,
string, 2
,2 3
string4 :
>: ;
(; <
initialData< G
,G H
StringComparerI W
.W X
OrdinalIgnoreCaseX i
)i j
;j k
} 	
	protected 
IDictionary 
< 
string $
,$ %
string& ,
>, -
Data. 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
void 
Add 
( 
string 
key "
," #
string$ *
value+ 0
)0 1
=>2 4
Data5 9
.9 :
Add: =
(= >
key> A
,A B
valueC H
)H I
;I J
public 
IEnumerator 
< 
KeyValuePair '
<' (
string( .
,. /
string0 6
>6 7
>7 8
GetEnumerator9 F
(F G
)G H
=>I K
DataL P
.P Q
GetEnumeratorQ ^
(^ _
)_ `
;` a
IEnumerator 
IEnumerable 
.  
GetEnumerator  -
(- .
). /
=>0 2
GetEnumerator3 @
(@ A
)A B
;B C
public 
virtual 
bool 
TryGet "
(" #
string# )
key* -
,- .
out/ 2
string3 9
value: ?
)? @
=>A C
DataD H
.H I
TryGetValueI T
(T U
keyU X
,X Y
outZ ]
value^ c
)c d
;d e
public 
virtual 
void 
Set 
(  
string  &
key' *
,* +
string, 2
value3 8
)8 9
=>: <
Data= A
[A B
keyB E
]E F
=G H
valueI N
;N O
public!! 
virtual!! 
void!! 
Load!!  
(!!  !
)!!! "
{"" 	
}## 	
public%% 
virtual%% 
IEnumerable%% "
<%%" #
string%%# )
>%%) *
GetChildKeys%%+ 7
(%%7 8
IEnumerable%%8 C
<%%C D
string%%D J
>%%J K
earlierKeys%%L W
,%%W X
string%%Y _

parentPath%%` j
)%%j k
{&& 	
var'' 
prefix'' 
='' 

parentPath'' #
==''$ &
null''' +
?'', -
string''. 4
.''4 5
Empty''5 :
:''; <

parentPath''= G
+''H I
ConfigurationPath''J [
.''[ \
KeyDelimiter''\ h
;''h i
return)) 
Data)) 
.** 
Where** 
(** 
kv** 
=>** 
kv** 
.**  
Key**  #
.**# $

StartsWith**$ .
(**. /
prefix**/ 5
,**5 6
StringComparison**7 G
.**G H
OrdinalIgnoreCase**H Y
)**Y Z
)**Z [
.++ 
Select++ 
(++ 
kv++ 
=>++ 
Segment++ %
(++% &
kv++& (
.++( )
Key++) ,
,++, -
prefix++. 4
.++4 5
Length++5 ;
)++; <
)++< =
.,, 
Concat,, 
(,, 
earlierKeys,, #
),,# $
.-- 
OrderBy-- 
(-- 
k-- 
=>-- 
k-- 
,--  $
ConfigurationKeyComparer--! 9
.--9 :
Instance--: B
)--B C
;--C D
}.. 	
private00 
static00 
string00 
Segment00 %
(00% &
string00& ,
key00- 0
,000 1
int002 5
prefixLength006 B
)00B C
{11 	
var22 
indexOf22 
=22 
key22 
.22 
IndexOf22 %
(22% &
ConfigurationPath22& 7
.227 8
KeyDelimiter228 D
,22D E
prefixLength22F R
,22R S
StringComparison22T d
.22d e
OrdinalIgnoreCase22e v
)22v w
;22w x
return33 
indexOf33 
<33 
$num33 
?33  
key33! $
.33$ %
	Substring33% .
(33. /
prefixLength33/ ;
)33; <
:33= >
key33? B
.33B C
	Substring33C L
(33L M
prefixLength33M Y
,33Y Z
indexOf33[ b
-33c d
prefixLength33e q
)33q r
;33r s
}44 	
public66 
IChangeToken66 
GetReloadToken66 *
(66* +
)66+ ,
{77 	
return88 
_reloadToken88 
;88  
}99 	
	protected;; 
void;; 
OnReload;; 
(;;  
);;  !
{<< 	
var== 
previousToken== 
=== 
Interlocked==  +
.==+ ,
Exchange==, 4
(==4 5
ref==5 8
_reloadToken==9 E
,==E F
new==G J$
ConfigurationReloadToken==K c
(==c d
)==d e
)==e f
;==f g
previousToken>> 
.>> 
OnReload>> "
(>>" #
)>># $
;>>$ %
}?? 	
publicAA 
overrideAA 
stringAA 
ToStringAA '
(AA' (
)AA( )
=>AA* ,
$"AA- /
{AA/ 0
GetTypeAA0 7
(AA7 8
)AA8 9
.AA9 :
NameAA: >
}AA> ?
"AA? @
;AA@ A
}BB 
}CC Ô
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellConfiguration.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface 
IShellConfiguration (
:) *
IConfiguration+ 9
{ 
} 
} ﬁ
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface &
IShellConfigurationSources /
{ 
Task		 
AddSourcesAsync		 
(		 
string		 #
tenant		$ *
,		* +!
IConfigurationBuilder		, A
builder		B I
)		I J
;		J K
Task

 
	SaveAsync

 
(

 
string

 
tenant

 $
,

$ %
IDictionary

& 1
<

1 2
string

2 8
,

8 9
string

: @
>

@ A
data

B F
)

F G
;

G H
} 
public 

static 
class /
#ShellConfigurationSourcesExtensions ;
{ 
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k
stringl r
tenants y
,y z'
IShellConfigurationSources	{ ï
sources
ñ ù
)
ù û
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
tenant* 0
,0 1
builder2 9
)9 :
;: ;
return 
builder 
; 
} 	
} 
} ƒ

£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellsConfigurationSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface '
IShellsConfigurationSources 0
{ 
Task 
AddSourcesAsync 
( !
IConfigurationBuilder 2
builder3 :
): ;
;; <
}		 
public 

static 
class 0
$ShellsConfigurationSourcesExtensions <
{ 
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k(
IShellsConfigurationSources	l á
sources
à è
)
è ê
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
builder* 1
)1 2
;2 3
return 
builder 
; 
} 	
} 
} Ω
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\IShellsSettingsSources.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Configuration( 5
{ 
public 

	interface "
IShellsSettingsSources +
{ 
Task		 
AddSourcesAsync		 
(		 !
IConfigurationBuilder		 2
builder		3 :
)		: ;
;		; <
Task

 
	SaveAsync

 
(

 
string

 
tenant

 $
,

$ %
IDictionary

& 1
<

1 2
string

2 8
,

8 9
string

: @
>

@ A
data

B F
)

F G
;

G H
} 
public 

static 
class +
ShellsSettingsSourcesExtensions 7
{ 
public 
static 
async 
Task  
<  !!
IConfigurationBuilder! 6
>6 7
AddSourcesAsync8 G
(G H
thisH L!
IConfigurationBuilderM b
builderc j
,j k#
IShellsSettingsSources	l Ç
sources
É ä
)
ä ã
{ 	
await 
sources 
. 
AddSourcesAsync )
() *
builder* 1
)1 2
;2 3
return 
builder 
; 
} 	
} 
} ˇR
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Configuration\ShellConfiguration.cs
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
.

' (
Configuration

( 5
{ 
public 

class 
ShellConfiguration #
:$ %
IShellConfiguration& 9
{ 
private 
IConfigurationRoot "
_configuration# 1
;1 2
private !
UpdatableDataProvider %
_updatableData& 4
;4 5
private 
readonly 
IEnumerable $
<$ %
KeyValuePair% 1
<1 2
string2 8
,8 9
string: @
>@ A
>A B
_initialDataC O
;O P
private 
readonly 
string 
_name  %
;% &
private 
Func 
< 
string 
, 
Task !
<! "!
IConfigurationBuilder" 7
>7 8
>8 9!
_configBuilderFactory: O
;O P
private 
readonly 
IEnumerable $
<$ %"
IConfigurationProvider% ;
>; <#
_configurationProviders= T
;T U
private 
SemaphoreSlim 

_semaphore (
=) *
new+ .
SemaphoreSlim/ <
(< =
$num= >
)> ?
;? @
public 
ShellConfiguration !
(! "
)" #
{ 	
} 	
public   
ShellConfiguration   !
(  ! "
IConfiguration  " 0
configuration  1 >
)  > ?
{!! 	#
_configurationProviders"" #
=""$ %
new""& ) 
ConfigurationBuilder""* >
(""> ?
)""? @
.## 
AddConfiguration## !
(##! "
configuration##" /
)##/ 0
.$$ 
Build$$ 
($$ 
)$$ 
.$$ 
	Providers$$ "
;$$" #
}%% 	
public'' 
ShellConfiguration'' !
(''! "
string''" (
name'') -
,''- .
Func''/ 3
<''3 4
string''4 :
,'': ;
Task''< @
<''@ A!
IConfigurationBuilder''A V
>''V W
>''W X
factory''Y `
)''` a
{(( 	
_name)) 
=)) 
name)) 
;)) !
_configBuilderFactory** !
=**" #
factory**$ +
;**+ ,
}++ 	
public-- 
ShellConfiguration-- !
(--! "
ShellConfiguration--" 4
configuration--5 B
)--B C
:--D E
this--F J
(--J K
null--K O
,--O P
configuration--Q ^
)--^ _
{.. 	
}// 	
public11 
ShellConfiguration11 !
(11! "
string11" (
name11) -
,11- .
ShellConfiguration11/ A
configuration11B O
)11O P
{22 	
_name33 
=33 
name33 
;33 
if55 
(55 
configuration55 
.55 
_configuration55 ,
!=55- /
null550 4
)554 5
{66 #
_configurationProviders77 '
=77( )
configuration77* 7
.777 8
_configuration778 F
.77F G
	Providers77G P
.88 
Where88 
(88 
p88 
=>88 
!88  !
(88! "
p88" #
is88$ &!
UpdatableDataProvider88' <
)88< =
)88= >
.88> ?
ToArray88? F
(88F G
)88G H
;88H I
_initialData:: 
=:: 
configuration:: ,
.::, -
_updatableData::- ;
.::; <
ToArray::< C
(::C D
)::D E
;::E F
return<< 
;<< 
}== 
if?? 
(?? 
name?? 
==?? 
null?? 
)?? 
{@@ #
_configurationProvidersAA '
=AA( )
configurationAA* 7
.AA7 8#
_configurationProvidersAA8 O
;AAO P
_initialDataBB 
=BB 
configurationBB ,
.BB, -
_initialDataBB- 9
;BB9 :
returnCC 
;CC 
}DD !
_configBuilderFactoryFF !
=FF" #
configurationFF$ 1
.FF1 2!
_configBuilderFactoryFF2 G
;FFG H
}GG 	
privateII 
voidII 
EnsureConfigurationII (
(II( )
)II) *
{JJ 	
ifKK 
(KK 
_configurationKK 
!=KK !
nullKK" &
)KK& '
{LL 
returnMM 
;MM 
}NN $
EnsureConfigurationAsyncPP $
(PP$ %
)PP% &
.PP& '

GetAwaiterPP' 1
(PP1 2
)PP2 3
.PP3 4
	GetResultPP4 =
(PP= >
)PP> ?
;PP? @
}QQ 	
internalSS 
asyncSS 
TaskSS $
EnsureConfigurationAsyncSS 4
(SS4 5
)SS5 6
{TT 	
ifUU 
(UU 
_configurationUU 
!=UU !
nullUU" &
)UU& '
{VV 
returnWW 
;WW 
}XX 
awaitZZ 

_semaphoreZZ 
.ZZ 
	WaitAsyncZZ &
(ZZ& '
)ZZ' (
;ZZ( )
try[[ 
{\\ 
if]] 
(]] 
_configuration]] "
!=]]# %
null]]& *
)]]* +
{^^ 
return__ 
;__ 
}`` 
varbb 
	providersbb 
=bb 
newbb  #
Listbb$ (
<bb( )"
IConfigurationProviderbb) ?
>bb? @
(bb@ A
)bbA B
;bbB C
ifdd 
(dd !
_configBuilderFactorydd )
!=dd* ,
nulldd- 1
)dd1 2
{ee 
	providersff 
.ff 
AddRangeff &
(ff& '
newff' * 
ConfigurationBuilderff+ ?
(ff? @
)ff@ A
.gg 
AddConfigurationgg )
(gg) *
(gg* +
awaitgg+ 0!
_configBuilderFactorygg1 F
.ggF G
InvokeggG M
(ggM N
_nameggN S
)ggS T
)ggT U
.ggU V
BuildggV [
(gg[ \
)gg\ ]
)gg] ^
.hh 
Buildhh 
(hh 
)hh  
.hh  !
	Providershh! *
)hh* +
;hh+ ,
}ii 
ifkk 
(kk #
_configurationProviderskk +
!=kk, .
nullkk/ 3
)kk3 4
{ll 
	providersmm 
.mm 
AddRangemm &
(mm& '#
_configurationProvidersmm' >
)mm> ?
;mm? @
}nn 
_updatableDatapp 
=pp  
newpp! $!
UpdatableDataProviderpp% :
(pp: ;
_initialDatapp; G
??ppH J

EnumerableppK U
.ppU V
EmptyppV [
<pp[ \
KeyValuePairpp\ h
<pph i
stringppi o
,ppo p
stringppq w
>ppw x
>ppx y
(ppy z
)ppz {
)pp{ |
;pp| }
	providersrr 
.rr 
Addrr 
(rr 
_updatableDatarr ,
)rr, -
;rr- .
_configurationtt 
=tt  
newtt! $
ConfigurationRoottt% 6
(tt6 7
	providerstt7 @
)tt@ A
;ttA B
}uu 
finallyvv 
{ww 

_semaphorexx 
.xx 
Releasexx "
(xx" #
)xx# $
;xx$ %
}yy 
}zz 	
private 
IConfiguration 
Configuration ,
{
ÄÄ 	
get
ÅÅ 
{
ÇÇ !
EnsureConfiguration
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
;
ÉÉ% &
return
ÑÑ 
_configuration
ÑÑ %
;
ÑÑ% &
}
ÖÖ 
}
ÜÜ 	
public
àà 
string
àà 
this
àà 
[
àà 
string
àà !
key
àà" %
]
àà% &
{
ââ 	
get
ää 
{
ãã 
var
åå 
value
åå 
=
åå 
Configuration
åå )
[
åå) *
key
åå* -
]
åå- .
;
åå. /
return
éé 
value
éé 
??
éé 
(
éé  !
key
éé! $
.
éé$ %
Contains
éé% -
(
éé- .
$char
éé. 1
)
éé1 2
?
èè 
Configuration
èè #
[
èè# $
key
èè$ '
.
èè' (
Replace
èè( /
(
èè/ 0
$char
èè0 3
,
èè3 4
$char
èè5 8
)
èè8 9
]
èè9 :
:
êê 
null
êê 
)
êê 
;
êê 
}
ëë 
set
íí 
{
ìì !
EnsureConfiguration
îî #
(
îî# $
)
îî$ %
;
îî% &
_updatableData
ïï 
.
ïï 
Set
ïï "
(
ïï" #
key
ïï# &
,
ïï& '
value
ïï( -
)
ïï- .
;
ïï. /
}
ññ 
}
óó 	
public
ôô #
IConfigurationSection
ôô $

GetSection
ôô% /
(
ôô/ 0
string
ôô0 6
key
ôô7 :
)
ôô: ;
{
öö 	
return
õõ 
Configuration
õõ  
.
õõ  !
GetSectionCompat
õõ! 1
(
õõ1 2
key
õõ2 5
)
õõ5 6
;
õõ6 7
}
úú 	
public
ûû 
IEnumerable
ûû 
<
ûû #
IConfigurationSection
ûû 0
>
ûû0 1
GetChildren
ûû2 =
(
ûû= >
)
ûû> ?
{
üü 	
return
†† 
Configuration
††  
.
††  !
GetChildren
††! ,
(
††, -
)
††- .
;
††. /
}
°° 	
public
££ 
IChangeToken
££ 
GetReloadToken
££ *
(
££* +
)
££+ ,
{
§§ 	
return
•• 
Configuration
••  
.
••  !
GetReloadToken
••! /
(
••/ 0
)
••0 1
;
••1 2
}
¶¶ 	
}
ßß 
}®® Û
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\IShellDescriptorManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
{ 
public

 

	interface

 #
IShellDescriptorManager

 ,
{ 
Task 
< 
ShellDescriptor 
> #
GetShellDescriptorAsync 5
(5 6
)6 7
;7 8
Task &
UpdateShellDescriptorAsync '
(' (
int 
priorSerialNumber !
,! "
IEnumerable 
< 
ShellFeature $
>$ %
enabledFeatures& 5
,5 6
IEnumerable 
< 
ShellParameter &
>& '

parameters( 2
)2 3
;3 4
} 
} ”

õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\Models\ShellDescriptor.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Models3 9
{ 
public

 

class

 
ShellDescriptor

  
{ 
public 
int 
SerialNumber 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IList 
< 
ShellFeature !
>! "
Features# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
=: ;
new< ?
List@ D
<D E
ShellFeatureE Q
>Q R
(R S
)S T
;T U
public 
IList 
< 
ShellParameter #
># $

Parameters% /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
=> ?
new@ C
ListD H
<H I
ShellParameterI W
>W X
(X Y
)Y Z
;Z [
} 
} ‡
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\Models\ShellFeature.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Models3 9
{ 
public 

class 
ShellFeature 
: 

IEquatable  *
<* +
ShellFeature+ 7
>7 8
{ 
public 
ShellFeature 
( 
) 
{		 	
}

 	
public 
ShellFeature 
( 
string "
id# %
,% &
bool' +
alwaysEnabled, 9
=: ;
false< A
)A B
{ 	
Id 
= 
id 
; 
AlwaysEnabled 
= 
alwaysEnabled )
;) *
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
[ 	

JsonIgnore	 
] 
public 
bool 
AlwaysEnabled !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
Equals 
( 
ShellFeature '
other( -
)- .
{ 	
if 
( 
other 
== 
null 
) 
{ 
return 
false 
; 
} 
return 
Id 
== 
other 
. 
Id !
;! "
} 	
public!! 
override!! 
int!! 
GetHashCode!! '
(!!' (
)!!( )
{"" 	
return## 
Id## 
.## 
GetHashCode## !
(##! "
)##" #
;### $
}$$ 	
}%% 
}&& ®
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Descriptor\Models\ShellParameter.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (

Descriptor( 2
.2 3
Models3 9
{ 
public 

class 
ShellParameter 
{ 
public 
string 
	Component 
{  !
get" %
;% &
set' *
;* +
}, -
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
 
Value
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
} 
} –
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Distributed\DistributedShellMarkerService.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Distributed( 3
{ 
public 

class )
DistributedShellMarkerService .
{ 
} 
} ›
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Events\IShellEvents.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Events( .
{ 
public 

	interface 
IShellEvents !
{ 
ShellsEvent 
LoadingAsync  
{! "
get# &
;& '
set( +
;+ ,
}- .

ShellEvent 
ReleasingAsync !
{" #
get$ '
;' (
set) ,
;, -
}. /

ShellEvent 
ReloadingAsync !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Í
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Events\ShellEvent.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Events( .
{ 
public 

delegate 
Task 

ShellEvent #
(# $
string$ *
name+ /
)/ 0
;0 1
}		 ∆
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Events\ShellsEvent.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Events( .
{ 
public 

delegate 
Task 
ShellsEvent $
($ %
)% &
;& '
}		 î
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellFeaturesManagerExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class *
ShellFeaturesManagerExtensions 6
{ 
public		 
static		 
Task		 
<		 
IEnumerable		 &
<		& '
IFeatureInfo		' 3
>		3 4
>		4 5
EnableFeaturesAsync		6 I
(		I J
this		J N!
IShellFeaturesManager		O d 
shellFeaturesManager		e y
,		y z
IEnumerable

 
<

 
IFeatureInfo

 $
>

$ %
features

& .
)

. /
{ 	
return  
shellFeaturesManager '
.' (
EnableFeaturesAsync( ;
(; <
features< D
,D E
falseF K
)K L
;L M
} 	
public 
static 
async 
Task  
<  !
IEnumerable! ,
<, -
IFeatureInfo- 9
>9 :
>: ;
EnableFeaturesAsync< O
(O P
thisP T!
IShellFeaturesManagerU j 
shellFeaturesManagerk 
,	 Ä
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
,. /
bool0 4
force5 :
): ;
{ 	
var 
( 
_ 
, 
featuresToEnable $
)$ %
=& '
await( - 
shellFeaturesManager. B
.B C
UpdateFeaturesAsyncC V
(V W
newW Z
IFeatureInfo[ g
[g h
$numh i
]i j
,j k
featuresl t
,t u
forcev {
){ |
;| }
return 
featuresToEnable #
;# $
} 	
public 
static 
Task 
< 
IEnumerable &
<& '
IFeatureInfo' 3
>3 4
>4 5 
DisableFeaturesAsync6 J
(J K
thisK O!
IShellFeaturesManagerP e 
shellFeaturesManagerf z
,z {
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
). /
{ 	
return  
shellFeaturesManager '
.' ( 
DisableFeaturesAsync( <
(< =
features= E
,E F
falseG L
)L M
;M N
} 	
public 
static 
async 
Task  
<  !
IEnumerable! ,
<, -
IFeatureInfo- 9
>9 :
>: ; 
DisableFeaturesAsync< P
(P Q
thisQ U!
IShellFeaturesManagerV k!
shellFeaturesManager	l Ä
,
Ä Å
IEnumerable 
< 
IFeatureInfo $
>$ %
features& .
,. /
bool0 4
force5 :
): ;
{ 	
var 
( 
featuresToDisable "
," #
_$ %
)% &
=' (
await) . 
shellFeaturesManager/ C
.C D
UpdateFeaturesAsyncD W
(W X
featuresX `
,` a
newb e
IFeatureInfof r
[r s
$nums t
]t u
,u v
forcew |
)| }
;} ~
return   
featuresToDisable   $
;  $ %
}!! 	
}"" 
}## ™
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellHelper.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class 
ShellHelper #
{ 
public 
const 
string 
DefaultShellName ,
=- .
$str/ 8
;8 9
public		 
static		 
ShellSettings		 #*
BuildDefaultUninitializedShell		$ B
=		C D
new		E H
ShellSettings		I V
{

 	
Name 
= 
DefaultShellName #
,# $
State 
= 
TenantState 
.  
Uninitialized  -
} 	
;	 

} 
} â
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Extensions\ShellHostExtensions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

static 
class 
ShellHostExtensions +
{ 
public 
static 
Task 
< 

ShellScope %
>% &
GetScopeAsync' 4
(4 5
this5 9

IShellHost: D
	shellHostE N
,N O
stringP V
tenantW ]
)] ^
{ 	
return 
	shellHost 
. 
GetScopeAsync *
(* +
	shellHost+ 4
.4 5
GetSettings5 @
(@ A
tenantA G
)G H
)H I
;I J
} 	
public 
async 
static 
Task  '
ReloadAllShellContextsAsync! <
(< =
this= A

IShellHostB L
	shellHostM V
)V W
{ 	
foreach 
( 
var 
settings !
in" $
	shellHost% .
.. /
GetAllSettings/ =
(= >
)> ?
)? @
{ 
await 
	shellHost 
.  #
ReloadShellContextAsync  7
(7 8
settings8 @
)@ A
;A B
} 
} 	
public!! 
async!! 
static!! 
Task!!  (
ReleaseAllShellContextsAsync!!! =
(!!= >
this!!> B

IShellHost!!C M
	shellHost!!N W
)!!W X
{"" 	
foreach## 
(## 
var## 
settings## !
in##" $
	shellHost##% .
.##. /
GetAllSettings##/ =
(##= >
)##> ?
)##? @
{$$ 
await%% 
	shellHost%% 
.%%  $
ReleaseShellContextAsync%%  8
(%%8 9
settings%%9 A
)%%A B
;%%B C
}&& 
}'' 	
public,, 
static,, 
ShellSettings,, #
GetSettings,,$ /
(,,/ 0
this,,0 4

IShellHost,,5 ?
	shellHost,,@ I
,,,I J
string,,K Q
tenant,,R X
),,X Y
{-- 	
if.. 
(.. 
!.. 
	shellHost.. 
... 
TryGetSettings.. )
(..) *
tenant..* 0
,..0 1
out..2 5
var..6 9
settings..: B
)..B C
)..C D
{// 
throw00 
new00 
ArgumentException00 +
(00+ ,
$str00, U
,00U V
nameof00W ]
(00] ^
tenant00^ d
)00d e
)00e f
;00f g
}11 
return33 
settings33 
;33 
}44 	
}55 
}66 ‡
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IFeatureEventHandler.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface  
IFeatureEventHandler )
{ 
Task 
InstallingAsync 
( 
IFeatureInfo )
feature* 1
)1 2
;2 3
Task		 
InstalledAsync		 
(		 
IFeatureInfo		 (
feature		) 0
)		0 1
;		1 2
Task

 
EnablingAsync

 
(

 
IFeatureInfo

 '
feature

( /
)

/ 0
;

0 1
Task 
EnabledAsync 
( 
IFeatureInfo &
feature' .
). /
;/ 0
Task 
DisablingAsync 
( 
IFeatureInfo (
feature) 0
)0 1
;1 2
Task 
DisabledAsync 
( 
IFeatureInfo '
feature( /
)/ 0
;0 1
Task 
UninstallingAsync 
( 
IFeatureInfo +
feature, 3
)3 4
;4 5
Task 
UninstalledAsync 
( 
IFeatureInfo *
feature+ 2
)2 3
;3 4
} 
} Æ
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IRunningShellTable.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface 
IRunningShellTable '
{ 
void 
Add 
( 
ShellSettings 
settings '
)' (
;( )
void 
Remove 
( 
ShellSettings !
settings" *
)* +
;+ ,
ShellSettings		 
Match		 
(		 

HostString		 &
host		' +
,		+ ,

PathString		- 7
path		8 <
,		< =
bool		> B
fallbackToDefault		C T
=		U V
true		W [
)		[ \
;		\ ]
}

 
} „
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellDescriptorFeaturesManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

delegate 
void 0
$FeatureDependencyNotificationHandler =
(= >
string> D
messageFormatE R
,R S
IFeatureInfoT `
featurea h
,h i
IEnumerablej u
<u v
IFeatureInfo	v Ç
>
Ç É
features
Ñ å
)
å ç
;
ç é
public

 

	interface

 +
IShellDescriptorFeaturesManager

 4
{ 
Task 
< 
( 
IEnumerable 
< 
IFeatureInfo &
>& '
,' (
IEnumerable) 4
<4 5
IFeatureInfo5 A
>A B
)B C
>C D
UpdateFeaturesAsyncE X
(X Y
ShellDescriptorY h
shellDescriptori x
,x y
IEnumerable 
< 
IFeatureInfo $
>$ %
featuresToDisable& 7
,7 8
IEnumerable9 D
<D E
IFeatureInfoE Q
>Q R
featuresToEnableS c
,c d
boole i
forcej o
)o p
;p q
} 
} ˙
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellDescriptorManagerEventHandler.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public		 

	interface		 /
#IShellDescriptorManagerEventHandler		 8
{

 
Task 
ChangedAsync 
( 
ShellDescriptor )

descriptor* 4
,4 5
ShellSettings6 C
settingsD L
)L M
;M N
} 
} ÷
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellFeaturesManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface !
IShellFeaturesManager *
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
 
IFeatureInfo

 %
>

% &
>

& '#
GetEnabledFeaturesAsync

( ?
(

? @
)

@ A
;

A B
Task 
< 
IEnumerable 
< 
IFeatureInfo %
>% &
>& ')
GetAlwaysEnabledFeaturesAsync( E
(E F
)F G
;G H
Task 
< 
IEnumerable 
< 
IFeatureInfo %
>% &
>& '$
GetDisabledFeaturesAsync( @
(@ A
)A B
;B C
Task 
< 
( 
IEnumerable 
< 
IFeatureInfo &
>& '
,' (
IEnumerable) 4
<4 5
IFeatureInfo5 A
>A B
)B C
>C D
UpdateFeaturesAsyncE X
(X Y
IEnumerable 
< 
IFeatureInfo $
>$ %
featuresToDisable& 7
,7 8
IEnumerable9 D
<D E
IFeatureInfoE Q
>Q R
featuresToEnableS c
,c d
boole i
forcej o
)o p
;p q
Task 
< 
IEnumerable 
< 
IExtensionInfo '
>' (
>( )%
GetEnabledExtensionsAsync* C
(C D
)D E
;E F
} 
} ¨
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellHost.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public		 

	interface		 

IShellHost		 
:		  !
IShellEvents		" .
,		. //
#IShellDescriptorManagerEventHandler		0 S
{

 
Task 
InitializeAsync 
( 
) 
; 
Task 
< 
ShellContext 
> (
GetOrCreateShellContextAsync 7
(7 8
ShellSettings8 E
settingsF N
)N O
;O P
Task 
< 

ShellScope 
> 
GetScopeAsync &
(& '
ShellSettings' 4
settings5 =
)= >
;> ?
Task $
UpdateShellSettingsAsync %
(% &
ShellSettings& 3
settings4 <
)< =
;= >
Task'' #
ReloadShellContextAsync'' $
(''$ %
ShellSettings''% 2
settings''3 ;
,''; <
bool''= A
eventSource''B M
=''N O
true''P T
)''T U
;''U V
Task11 $
ReleaseShellContextAsync11 %
(11% &
ShellSettings11& 3
settings114 <
,11< =
bool11> B
eventSource11C N
=11O P
true11Q U
)11U V
;11V W
IEnumerable88 
<88 
ShellContext88  
>88  !
ListShellContexts88" 3
(883 4
)884 5
;885 6
bool>> 
TryGetShellContext>> 
(>>  
string>>  &
name>>' +
,>>+ ,
out>>- 0
ShellContext>>1 =
shellContext>>> J
)>>J K
;>>K L
boolCC 
TryGetSettingsCC 
(CC 
stringCC "
nameCC# '
,CC' (
outCC) ,
ShellSettingsCC- :
settingsCC; C
)CCC D
;CCD E
IEnumerableHH 
<HH 
ShellSettingsHH !
>HH! "
GetAllSettingsHH# 1
(HH1 2
)HH2 3
;HH3 4
}II 
}JJ „	
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellSettingsManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface !
IShellSettingsManager *
{ 
ShellSettings !
CreateDefaultSettings +
(+ ,
), -
;- .
Task 
< 
IEnumerable 
< 
ShellSettings &
>& '
>' (
LoadSettingsAsync) :
(: ;
); <
;< =
Task 
< 
IEnumerable 
< 
string 
>  
>  !"
LoadSettingsNamesAsync" 8
(8 9
)9 :
;: ;
Task 
< 
ShellSettings 
> 
LoadSettingsAsync -
(- .
string. 4
tenant5 ;
); <
;< =
Task## 
SaveSettingsAsync## 
(## 
ShellSettings## ,
settings##- 5
)##5 6
;##6 7
}$$ 
}%% °
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\IShellStateManager.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

	interface 
IShellStateManager '
{ 
Task 
< 

ShellState 
> 
GetShellStateAsync +
(+ ,
), -
;- .
Task		 #
UpdateEnabledStateAsync		 $
(		$ %
ShellFeatureState		% 6
featureState		7 C
,		C D
ShellFeatureState		E V
.		V W
State		W \
value		] b
)		b c
;		c d
Task

 %
UpdateInstalledStateAsync

 &
(

& '
ShellFeatureState

' 8
featureState

9 E
,

E F
ShellFeatureState

G X
.

X Y
State

Y ^
value

_ d
)

d e
;

e f
} 
} “
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Models\TenantState.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Models( .
{ 
public 

enum 
TenantState 
{ 
Uninitialized 
, 
Initializing 
, 
Running 
, 
Disabled 
, 
Invalid 
}   
}!! ∑Ñ
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Scope\ShellScope.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Scope( -
{ 
public 

class 

ShellScope 
: 
IServiceScope +
{ 
private 
static 
readonly 

AsyncLocal  *
<* +

ShellScope+ 5
>5 6
_current7 ?
=@ A
newB E

AsyncLocalF P
<P Q

ShellScopeQ [
>[ \
(\ ]
)] ^
;^ _
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
SemaphoreSlim3 @
>@ A
_semaphoresB M
=N O
newP S

DictionaryT ^
<^ _
string_ e
,e f
SemaphoreSlimg t
>t u
(u v
)v w
;w x
private 
readonly 
IServiceScope &
_serviceScope' 4
;4 5
private 
readonly 

Dictionary #
<# $
object$ *
,* +
object, 2
>2 3
_items4 :
=; <
new= @

DictionaryA K
<K L
objectL R
,R S
objectT Z
>Z [
([ \
)\ ]
;] ^
private 
readonly 
List 
< 
Func "
<" #

ShellScope# -
,- .
Task/ 3
>3 4
>4 5
_beforeDispose6 D
=E F
newG J
ListK O
<O P
FuncP T
<T U

ShellScopeU _
,_ `
Taska e
>e f
>f g
(g h
)h i
;i j
private 
readonly 
HashSet  
<  !
string! '
>' (
_deferredSignals) 9
=: ;
new< ?
HashSet@ G
<G H
stringH N
>N O
(O P
)P Q
;Q R
private 
readonly 
List 
< 
Func "
<" #

ShellScope# -
,- .
Task/ 3
>3 4
>4 5
_deferredTasks6 D
=E F
newG J
ListK O
<O P
FuncP T
<T U

ShellScopeU _
,_ `
Taska e
>e f
>f g
(g h
)h i
;i j
private 
bool 
_serviceScopeOnly &
;& '
private 
bool 
_shellTerminated %
;% &
private 
bool 
_terminated  
;  !
private   
bool   
	_disposed   
;   
public"" 

ShellScope"" 
("" 
ShellContext"" &
shellContext""' 3
)""3 4
{## 	
Interlocked%% 
.%% 
	Increment%% !
(%%! "
ref%%" %
shellContext%%& 2
.%%2 3
	_refCount%%3 <
)%%< =
;%%= >
ShellContext&& 
=&& 
shellContext&& '
;&&' (
if** 
(** 
shellContext** 
.** 
ServiceProvider** ,
==**- /
null**0 4
)**4 5
{++ 
Interlocked-- 
.-- 
	Decrement-- %
(--% &
ref--& )
shellContext--* 6
.--6 7
	_refCount--7 @
)--@ A
;--A B
throw// 
new// !
ArgumentNullException// /
(/// 0
nameof//0 6
(//6 7
shellContext//7 C
.//C D
ServiceProvider//D S
)//S T
,//T U
$"00 -
!Can't resolve a scope on tenant: 00 7
{007 8
shellContext008 D
.00D E
Settings00E M
.00M N
Name00N R
}00R S
"00S T
)00T U
;00U V
}11 
_serviceScope33 
=33 
shellContext33 (
.33( )
ServiceProvider33) 8
.338 9
CreateScope339 D
(33D E
)33E F
;33F G
ServiceProvider44 
=44 
_serviceScope44 +
.44+ ,
ServiceProvider44, ;
;44; <
}55 	
public77 
ShellContext77 
ShellContext77 (
{77) *
get77+ .
;77. /
}770 1
public88 
IServiceProvider88 
ServiceProvider88  /
{880 1
get882 5
;885 6
}887 8
public== 
static== 
ShellContext== "
Context==# *
=>==+ -
Current==. 5
?==5 6
.==6 7
ShellContext==7 C
;==C D
publicBB 
staticBB 
IServiceProviderBB &
ServicesBB' /
=>BB0 2
CurrentBB3 :
?BB: ;
.BB; <
ServiceProviderBB< K
;BBK L
publicGG 
staticGG 

ShellScopeGG  
CurrentGG! (
=>GG) +
_currentGG, 4
.GG4 5
ValueGG5 :
;GG: ;
publicLL 
staticLL 
voidLL 
SetLL 
(LL 
objectLL %
keyLL& )
,LL) *
objectLL+ 1
valueLL2 7
)LL7 8
{MM 	
ifNN 
(NN 
CurrentNN 
!=NN 
nullNN 
)NN  
{OO 
CurrentPP 
.PP 
_itemsPP 
[PP 
keyPP "
]PP" #
=PP$ %
valuePP& +
;PP+ ,
}QQ 
}RR 	
publicWW 
staticWW 
objectWW 
GetWW  
(WW  !
objectWW! '
keyWW( +
)WW+ ,
=>WW- /
CurrentWW0 7
==WW8 :
nullWW; ?
?WW@ A
nullWWB F
:WWG H
CurrentWWI P
.WWP Q
_itemsWWQ W
.WWW X
TryGetValueWWX c
(WWc d
keyWWd g
,WWg h
outWWi l
varWWm p
valueWWq v
)WWv w
?WWx y
valueWWz 
:
WWÄ Å
null
WWÇ Ü
;
WWÜ á
public\\ 
static\\ 
T\\ 
Get\\ 
<\\ 
T\\ 
>\\ 
(\\ 
object\\ %
key\\& )
)\\) *
=>\\+ -
Current\\. 5
==\\6 8
null\\9 =
?\\> ?
default\\@ G
:\\H I
Current\\J Q
.\\Q R
_items\\R X
.\\X Y
TryGetValue\\Y d
(\\d e
key\\e h
,\\h i
out\\j m
var\\n q
value\\r w
)\\w x
?\\y z
value	\\{ Ä
is
\\Å É
T
\\Ñ Ö
item
\\Ü ä
?
\\ã å
item
\\ç ë
:
\\í ì
default
\\î õ
:
\\ú ù
default
\\û •
;
\\• ¶
publicaa 
staticaa 
Taa 
GetOrCreateaa #
<aa# $
Taa$ %
>aa% &
(aa& '
objectaa' -
keyaa. 1
,aa1 2
Funcaa3 7
<aa7 8
Taa8 9
>aa9 :
factoryaa; B
)aaB C
{bb 	
ifcc 
(cc 
Currentcc 
==cc 
nullcc 
)cc  
{dd 
returnee 
factoryee 
(ee 
)ee  
;ee  !
}ff 
ifhh 
(hh 
!hh 
Currenthh 
.hh 
_itemshh 
.hh  
TryGetValuehh  +
(hh+ ,
keyhh, /
,hh/ 0
outhh1 4
varhh5 8
valuehh9 >
)hh> ?
||hh@ B
!hhC D
(hhD E
valuehhE J
ishhK M
ThhN O
itemhhP T
)hhT U
)hhU V
{ii 
Currentjj 
.jj 
_itemsjj 
[jj 
keyjj "
]jj" #
=jj$ %
itemjj& *
=jj+ ,
factoryjj- 4
(jj4 5
)jj5 6
;jj6 7
}kk 
returnmm 
itemmm 
;mm 
}nn 	
publicss 
staticss 
Tss 
GetOrCreatess #
<ss# $
Tss$ %
>ss% &
(ss& '
objectss' -
keyss. 1
)ss1 2
wheress3 8
Tss9 :
:ss; <
classss= B
,ssB C
newssD G
(ssG H
)ssH I
{tt 	
ifuu 
(uu 
Currentuu 
==uu 
nulluu 
)uu  
{vv 
returnww 
newww 
Tww 
(ww 
)ww 
;ww 
}xx 
ifzz 
(zz 
!zz 
Currentzz 
.zz 
_itemszz 
.zz  
TryGetValuezz  +
(zz+ ,
keyzz, /
,zz/ 0
outzz1 4
varzz5 8
valuezz9 >
)zz> ?
||zz@ B
!zzC D
(zzD E
valuezzE J
iszzK M
TzzN O
itemzzP T
)zzT U
)zzU V
{{{ 
Current|| 
.|| 
_items|| 
[|| 
key|| "
]||" #
=||$ %
item||& *
=||+ ,
new||- 0
T||1 2
(||2 3
)||3 4
;||4 5
}}} 
return 
item 
; 
}
ÄÄ 	
public
ÖÖ 
static
ÖÖ 
void
ÖÖ 

SetFeature
ÖÖ %
<
ÖÖ% &
T
ÖÖ& '
>
ÖÖ' (
(
ÖÖ( )
T
ÖÖ) *
value
ÖÖ+ 0
)
ÖÖ0 1
=>
ÖÖ2 4
Set
ÖÖ5 8
(
ÖÖ8 9
typeof
ÖÖ9 ?
(
ÖÖ? @
T
ÖÖ@ A
)
ÖÖA B
,
ÖÖB C
value
ÖÖD I
)
ÖÖI J
;
ÖÖJ K
public
ää 
static
ää 
T
ää 

GetFeature
ää "
<
ää" #
T
ää# $
>
ää$ %
(
ää% &
)
ää& '
=>
ää( *
Get
ää+ .
<
ää. /
T
ää/ 0
>
ää0 1
(
ää1 2
typeof
ää2 8
(
ää8 9
T
ää9 :
)
ää: ;
)
ää; <
;
ää< =
public
èè 
static
èè 
T
èè  
GetOrCreateFeature
èè *
<
èè* +
T
èè+ ,
>
èè, -
(
èè- .
Func
èè. 2
<
èè2 3
T
èè3 4
>
èè4 5
factory
èè6 =
)
èè= >
=>
èè? A
GetOrCreate
èèB M
(
èèM N
typeof
èèN T
(
èèT U
T
èèU V
)
èèV W
,
èèW X
factory
èèY `
)
èè` a
;
èèa b
public
îî 
static
îî 
T
îî  
GetOrCreateFeature
îî *
<
îî* +
T
îî+ ,
>
îî, -
(
îî- .
)
îî. /
where
îî0 5
T
îî6 7
:
îî8 9
class
îî: ?
,
îî? @
new
îîA D
(
îîD E
)
îîE F
=>
îîG I
GetOrCreate
îîJ U
<
îîU V
T
îîV W
>
îîW X
(
îîX Y
typeof
îîY _
(
îî_ `
T
îî` a
)
îîa b
)
îîb c
;
îîc d
public
ôô 
static
ôô 
Task
ôô 
<
ôô 

ShellScope
ôô %
>
ôô% &#
CreateChildScopeAsync
ôô' <
(
ôô< =
)
ôô= >
{
öö 	
var
õõ 
	shellHost
õõ 
=
õõ 
Services
õõ $
.
õõ$ % 
GetRequiredService
õõ% 7
<
õõ7 8

IShellHost
õõ8 B
>
õõB C
(
õõC D
)
õõD E
;
õõE F
return
úú 
	shellHost
úú 
.
úú 
GetScopeAsync
úú *
(
úú* +
Context
úú+ 2
.
úú2 3
Settings
úú3 ;
)
úú; <
;
úú< =
}
ùù 	
public
¢¢ 
static
¢¢ 
Task
¢¢ 
<
¢¢ 

ShellScope
¢¢ %
>
¢¢% &#
CreateChildScopeAsync
¢¢' <
(
¢¢< =
ShellSettings
¢¢= J
settings
¢¢K S
)
¢¢S T
{
££ 	
var
§§ 
	shellHost
§§ 
=
§§ 
Services
§§ $
.
§§$ % 
GetRequiredService
§§% 7
<
§§7 8

IShellHost
§§8 B
>
§§B C
(
§§C D
)
§§D E
;
§§E F
return
•• 
	shellHost
•• 
.
•• 
GetScopeAsync
•• *
(
••* +
settings
••+ 3
)
••3 4
;
••4 5
}
¶¶ 	
public
´´ 
static
´´ 
Task
´´ 
<
´´ 

ShellScope
´´ %
>
´´% &#
CreateChildScopeAsync
´´' <
(
´´< =
string
´´= C
tenant
´´D J
)
´´J K
{
¨¨ 	
var
≠≠ 
	shellHost
≠≠ 
=
≠≠ 
Services
≠≠ $
.
≠≠$ % 
GetRequiredService
≠≠% 7
<
≠≠7 8

IShellHost
≠≠8 B
>
≠≠B C
(
≠≠C D
)
≠≠D E
;
≠≠E F
return
ÆÆ 
	shellHost
ÆÆ 
.
ÆÆ 
GetScopeAsync
ÆÆ *
(
ÆÆ* +
tenant
ÆÆ+ 1
)
ÆÆ1 2
;
ÆÆ2 3
}
ØØ 	
public
¥¥ 
static
¥¥ 
async
¥¥ 
Task
¥¥  "
UsingChildScopeAsync
¥¥! 5
(
¥¥5 6
Func
¥¥6 :
<
¥¥: ;

ShellScope
¥¥; E
,
¥¥E F
Task
¥¥G K
>
¥¥K L
execute
¥¥M T
,
¥¥T U
bool
¥¥V Z
activateShell
¥¥[ h
=
¥¥i j
true
¥¥k o
)
¥¥o p
{
µµ 	
await
∂∂ 
(
∂∂ 
await
∂∂ #
CreateChildScopeAsync
∂∂ .
(
∂∂. /
)
∂∂/ 0
)
∂∂0 1
.
∂∂1 2

UsingAsync
∂∂2 <
(
∂∂< =
execute
∂∂= D
,
∂∂D E
activateShell
∂∂F S
)
∂∂S T
;
∂∂T U
}
∑∑ 	
public
ºº 
static
ºº 
async
ºº 
Task
ºº  "
UsingChildScopeAsync
ºº! 5
(
ºº5 6
ShellSettings
ºº6 C
settings
ººD L
,
ººL M
Func
ººN R
<
ººR S

ShellScope
ººS ]
,
ºº] ^
Task
ºº_ c
>
ººc d
execute
ººe l
,
ººl m
bool
ººn r
activateShellººs Ä
=ººÅ Ç
trueººÉ á
)ººá à
{
ΩΩ 	
await
ææ 
(
ææ 
await
ææ #
CreateChildScopeAsync
ææ .
(
ææ. /
settings
ææ/ 7
)
ææ7 8
)
ææ8 9
.
ææ9 :

UsingAsync
ææ: D
(
ææD E
execute
ææE L
,
ææL M
activateShell
ææN [
)
ææ[ \
;
ææ\ ]
}
øø 	
public
ƒƒ 
static
ƒƒ 
async
ƒƒ 
Task
ƒƒ  "
UsingChildScopeAsync
ƒƒ! 5
(
ƒƒ5 6
string
ƒƒ6 <
tenant
ƒƒ= C
,
ƒƒC D
Func
ƒƒE I
<
ƒƒI J

ShellScope
ƒƒJ T
,
ƒƒT U
Task
ƒƒV Z
>
ƒƒZ [
execute
ƒƒ\ c
,
ƒƒc d
bool
ƒƒe i
activateShell
ƒƒj w
=
ƒƒx y
true
ƒƒz ~
)
ƒƒ~ 
{
≈≈ 	
await
∆∆ 
(
∆∆ 
await
∆∆ #
CreateChildScopeAsync
∆∆ .
(
∆∆. /
tenant
∆∆/ 5
)
∆∆5 6
)
∆∆6 7
.
∆∆7 8

UsingAsync
∆∆8 B
(
∆∆B C
execute
∆∆C J
,
∆∆J K
activateShell
∆∆L Y
)
∆∆Y Z
;
∆∆Z [
}
«« 	
internal
ÃÃ 
void
ÃÃ 
StartAsyncFlow
ÃÃ $
(
ÃÃ$ %
)
ÃÃ% &
=>
ÃÃ' )
_current
ÃÃ* 2
.
ÃÃ2 3
Value
ÃÃ3 8
=
ÃÃ9 :
this
ÃÃ; ?
;
ÃÃ? @
public
”” 
Task
”” $
UsingServiceScopeAsync
”” *
(
””* +
Func
””+ /
<
””/ 0

ShellScope
””0 :
,
””: ;
Task
””< @
>
””@ A
execute
””B I
)
””I J
{
‘‘ 	
_serviceScopeOnly
’’ 
=
’’ 
true
’’  $
;
’’$ %
return
÷÷ 

UsingAsync
÷÷ 
(
÷÷ 
execute
÷÷ %
)
÷÷% &
;
÷÷& '
}
◊◊ 	
public
›› 
async
›› 
Task
›› 

UsingAsync
›› $
(
››$ %
Func
››% )
<
››) *

ShellScope
››* 4
,
››4 5
Task
››6 :
>
››: ;
execute
››< C
,
››C D
bool
››E I
activateShell
››J W
=
››X Y
true
››Z ^
)
››^ _
{
ﬁﬁ 	
if
ﬂﬂ 
(
ﬂﬂ 
Current
ﬂﬂ 
==
ﬂﬂ 
this
ﬂﬂ 
)
ﬂﬂ  
{
‡‡ 
await
·· 
execute
·· 
(
·· 
Current
·· %
)
··% &
;
··& '
return
‚‚ 
;
‚‚ 
}
„„ 
using
ÂÂ 
(
ÂÂ 
this
ÂÂ 
)
ÂÂ 
{
ÊÊ 
StartAsyncFlow
ÁÁ 
(
ÁÁ 
)
ÁÁ  
;
ÁÁ  !
if
ÈÈ 
(
ÈÈ 
activateShell
ÈÈ !
)
ÈÈ! "
{
ÍÍ 
await
ÎÎ (
ActivateShellInternalAsync
ÎÎ 4
(
ÎÎ4 5
)
ÎÎ5 6
;
ÎÎ6 7
}
ÏÏ 
await
ÓÓ 
execute
ÓÓ 
(
ÓÓ 
this
ÓÓ "
)
ÓÓ" #
;
ÓÓ# $
await
 )
TerminateShellInternalAsync
 1
(
1 2
)
2 3
;
3 4
await
ÒÒ  
BeforeDisposeAsync
ÒÒ (
(
ÒÒ( )
)
ÒÒ) *
;
ÒÒ* +
}
ÚÚ 
}
ÛÛ 	
internal
¯¯ 
async
¯¯ 
Task
¯¯ !
TerminateShellAsync
¯¯ /
(
¯¯/ 0
)
¯¯0 1
{
˘˘ 	
using
˙˙ 
(
˙˙ 
this
˙˙ 
)
˙˙ 
{
˚˚ 
StartAsyncFlow
¸¸ 
(
¸¸ 
)
¸¸  
;
¸¸  !
await
˝˝ )
TerminateShellInternalAsync
˝˝ 1
(
˝˝1 2
)
˝˝2 3
;
˝˝3 4
await
˛˛  
BeforeDisposeAsync
˛˛ (
(
˛˛( )
)
˛˛) *
;
˛˛* +
}
ˇˇ 
}
ÄÄ 	
internal
ÖÖ 
async
ÖÖ 
Task
ÖÖ (
ActivateShellInternalAsync
ÖÖ 6
(
ÖÖ6 7
)
ÖÖ7 8
{
ÜÜ 	
if
áá 
(
áá 
ShellContext
áá 
.
áá 
IsActivated
áá (
)
áá( )
{
àà 
return
ââ 
;
ââ 
}
ää 
if
åå 
(
åå 
_serviceScopeOnly
åå !
)
åå! "
{
çç 
return
éé 
;
éé 
}
èè 
SemaphoreSlim
ëë 
	semaphore
ëë #
;
ëë# $
lock
íí 
(
íí 
_semaphores
íí 
)
íí 
{
ìì 
if
îî 
(
îî 
!
îî 
_semaphores
îî  
.
îî  !
TryGetValue
îî! ,
(
îî, -
ShellContext
îî- 9
.
îî9 :
Settings
îî: B
.
îîB C
Name
îîC G
,
îîG H
out
îîI L
	semaphore
îîM V
)
îîV W
)
îîW X
{
ïï 
_semaphores
ññ 
[
ññ  
ShellContext
ññ  ,
.
ññ, -
Settings
ññ- 5
.
ññ5 6
Name
ññ6 :
]
ññ: ;
=
ññ< =
	semaphore
ññ> G
=
ññH I
new
ññJ M
SemaphoreSlim
ññN [
(
ññ[ \
$num
ññ\ ]
)
ññ] ^
;
ññ^ _
}
óó 
}
òò 
await
öö 
	semaphore
öö 
.
öö 
	WaitAsync
öö %
(
öö% &
)
öö& '
;
öö' (
try
õõ 
{
úú 
if
ûû 
(
ûû 
!
ûû 
ShellContext
ûû !
.
ûû! "
IsActivated
ûû" -
)
ûû- .
{
üü 
await
†† 
new
†† 

ShellScope
†† (
(
††( )
ShellContext
††) 5
)
††5 6
.
††6 7

UsingAsync
††7 A
(
††A B
async
††B G
scope
††H M
=>
††N P
{
°° 
var
¢¢ 
tenantEvents
¢¢ (
=
¢¢) *
scope
¢¢+ 0
.
¢¢0 1
ServiceProvider
¢¢1 @
.
¢¢@ A
GetServices
¢¢A L
<
¢¢L M"
IModularTenantEvents
¢¢M a
>
¢¢a b
(
¢¢b c
)
¢¢c d
;
¢¢d e
foreach
££ 
(
££  !
var
££! $
tenantEvent
££% 0
in
££1 3
tenantEvents
££4 @
)
££@ A
{
§§ 
await
•• !
tenantEvent
••" -
.
••- .
ActivatingAsync
••. =
(
••= >
)
••> ?
;
••? @
}
¶¶ 
foreach
®® 
(
®®  !
var
®®! $
tenantEvent
®®% 0
in
®®1 3
tenantEvents
®®4 @
.
®®@ A
Reverse
®®A H
(
®®H I
)
®®I J
)
®®J K
{
©© 
await
™™ !
tenantEvent
™™" -
.
™™- .
ActivatedAsync
™™. <
(
™™< =
)
™™= >
;
™™> ?
}
´´ 
}
¨¨ 
,
¨¨ 
activateShell
¨¨ $
:
¨¨$ %
false
¨¨& +
)
¨¨+ ,
;
¨¨, -
ShellContext
ÆÆ  
.
ÆÆ  !
IsActivated
ÆÆ! ,
=
ÆÆ- .
true
ÆÆ/ 3
;
ÆÆ3 4
}
ØØ 
}
∞∞ 
finally
±± 
{
≤≤ 
	semaphore
≥≥ 
.
≥≥ 
Release
≥≥ !
(
≥≥! "
)
≥≥" #
;
≥≥# $
}
¥¥ 
}
µµ 	
private
∫∫ 
void
∫∫ 
BeforeDispose
∫∫ "
(
∫∫" #
Func
∫∫# '
<
∫∫' (

ShellScope
∫∫( 2
,
∫∫2 3
Task
∫∫4 8
>
∫∫8 9
callback
∫∫: B
)
∫∫B C
=>
∫∫D F
_beforeDispose
∫∫G U
.
∫∫U V
Insert
∫∫V \
(
∫∫\ ]
$num
∫∫] ^
,
∫∫^ _
callback
∫∫` h
)
∫∫h i
;
∫∫i j
private
øø 
void
øø 
DeferredSignal
øø #
(
øø# $
string
øø$ *
key
øø+ .
)
øø. /
=>
øø0 2
_deferredSignals
øø3 C
.
øøC D
Add
øøD G
(
øøG H
key
øøH K
)
øøK L
;
øøL M
private
ƒƒ 
void
ƒƒ 
DeferredTask
ƒƒ !
(
ƒƒ! "
Func
ƒƒ" &
<
ƒƒ& '

ShellScope
ƒƒ' 1
,
ƒƒ1 2
Task
ƒƒ3 7
>
ƒƒ7 8
task
ƒƒ9 =
)
ƒƒ= >
=>
ƒƒ? A
_deferredTasks
ƒƒB P
.
ƒƒP Q
Add
ƒƒQ T
(
ƒƒT U
task
ƒƒU Y
)
ƒƒY Z
;
ƒƒZ [
public
…… 
static
…… 
void
…… #
RegisterBeforeDispose
…… 0
(
……0 1
Func
……1 5
<
……5 6

ShellScope
……6 @
,
……@ A
Task
……B F
>
……F G
callback
……H P
)
……P Q
=>
……R T
Current
……U \
?
……\ ]
.
……] ^
BeforeDispose
……^ k
(
……k l
callback
……l t
)
……t u
;
……u v
public
ŒŒ 
static
ŒŒ 
void
ŒŒ 
AddDeferredSignal
ŒŒ ,
(
ŒŒ, -
string
ŒŒ- 3
key
ŒŒ4 7
)
ŒŒ7 8
=>
ŒŒ9 ;
Current
ŒŒ< C
?
ŒŒC D
.
ŒŒD E
DeferredSignal
ŒŒE S
(
ŒŒS T
key
ŒŒT W
)
ŒŒW X
;
ŒŒX Y
public
”” 
static
”” 
void
”” 
AddDeferredTask
”” *
(
””* +
Func
””+ /
<
””/ 0

ShellScope
””0 :
,
””: ;
Task
””< @
>
””@ A
task
””B F
)
””F G
=>
””H J
Current
””K R
?
””R S
.
””S T
DeferredTask
””T `
(
””` a
task
””a e
)
””e f
;
””f g
internal
’’ 
async
’’ 
Task
’’  
BeforeDisposeAsync
’’ .
(
’’. /
)
’’/ 0
{
÷÷ 	
foreach
◊◊ 
(
◊◊ 
var
◊◊ 
callback
◊◊ !
in
◊◊" $
_beforeDispose
◊◊% 3
)
◊◊3 4
{
ÿÿ 
await
ŸŸ 
callback
ŸŸ 
(
ŸŸ 
this
ŸŸ #
)
ŸŸ# $
;
ŸŸ$ %
}
⁄⁄ 
if
‹‹ 
(
‹‹ 
_serviceScopeOnly
‹‹ !
)
‹‹! "
{
›› 
return
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
if
·· 
(
·· 
_deferredSignals
··  
.
··  !
Any
··! $
(
··$ %
)
··% &
)
··& '
{
‚‚ 
var
„„ 
signal
„„ 
=
„„ 
ShellContext
„„ )
.
„„) *
ServiceProvider
„„* 9
.
„„9 : 
GetRequiredService
„„: L
<
„„L M
ISignal
„„M T
>
„„T U
(
„„U V
)
„„V W
;
„„W X
foreach
‰‰ 
(
‰‰ 
var
‰‰ 
key
‰‰  
in
‰‰! #
_deferredSignals
‰‰$ 4
)
‰‰4 5
{
ÂÂ 
await
ÊÊ 
signal
ÊÊ  
.
ÊÊ  !
SignalTokenAsync
ÊÊ! 1
(
ÊÊ1 2
key
ÊÊ2 5
)
ÊÊ5 6
;
ÊÊ6 7
}
ÁÁ 
}
ËË 
if
ÍÍ 
(
ÍÍ 
_deferredTasks
ÍÍ 
.
ÍÍ 
Any
ÍÍ "
(
ÍÍ" #
)
ÍÍ# $
)
ÍÍ$ %
{
ÎÎ 
var
ÏÏ 
	shellHost
ÏÏ 
=
ÏÏ 
ShellContext
ÏÏ  ,
.
ÏÏ, -
ServiceProvider
ÏÏ- <
.
ÏÏ< = 
GetRequiredService
ÏÏ= O
<
ÏÏO P

IShellHost
ÏÏP Z
>
ÏÏZ [
(
ÏÏ[ \
)
ÏÏ\ ]
;
ÏÏ] ^
foreach
ÓÓ 
(
ÓÓ 
var
ÓÓ 
task
ÓÓ !
in
ÓÓ" $
_deferredTasks
ÓÓ% 3
)
ÓÓ3 4
{
ÔÔ 

ShellScope
ÒÒ 
scope
ÒÒ $
;
ÒÒ$ %
try
ÚÚ 
{
ÛÛ 
scope
ıı 
=
ıı 
await
ıı  %
	shellHost
ıı& /
.
ıı/ 0
GetScopeAsync
ıı0 =
(
ıı= >
ShellContext
ıı> J
.
ııJ K
Settings
ııK S
)
ııS T
;
ııT U
}
ˆˆ 
catch
˜˜ 
{
¯¯ 
scope
˙˙ 
=
˙˙ 
new
˙˙  #

ShellScope
˙˙$ .
(
˙˙. /
ShellContext
˙˙/ ;
)
˙˙; <
;
˙˙< =
}
˚˚ 
await
˝˝ 
scope
˝˝ 
.
˝˝  $
UsingServiceScopeAsync
˝˝  6
(
˝˝6 7
async
˝˝7 <
scope
˝˝= B
=>
˝˝C E
{
˛˛ 
var
ˇˇ 
logger
ˇˇ "
=
ˇˇ# $
scope
ˇˇ% *
.
ˇˇ* +
ServiceProvider
ˇˇ+ :
.
ˇˇ: ;

GetService
ˇˇ; E
<
ˇˇE F
ILogger
ˇˇF M
<
ˇˇM N

ShellScope
ˇˇN X
>
ˇˇX Y
>
ˇˇY Z
(
ˇˇZ [
)
ˇˇ[ \
;
ˇˇ\ ]
try
ÅÅ 
{
ÇÇ 
await
ÉÉ !
task
ÉÉ" &
(
ÉÉ& '
scope
ÉÉ' ,
)
ÉÉ, -
;
ÉÉ- .
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ (
e
ÖÖ) *
)
ÖÖ* +
{
ÜÜ 
logger
áá "
?
áá" #
.
áá# $
LogError
áá$ ,
(
áá, -
e
áá- .
,
áá. /
$str
àà  m
,
ààm n
task
ââ  $
.
ââ$ %
GetType
ââ% ,
(
ââ, -
)
ââ- .
.
ââ. /
FullName
ââ/ 7
,
ââ7 8
ShellContext
ââ9 E
.
ââE F
Settings
ââF N
.
ââN O
Name
ââO S
)
ââS T
;
ââT U
}
ää 
}
ãã 
)
ãã 
;
ãã 
}
åå 
}
çç 
}
éé 	
internal
îî 
async
îî 
Task
îî )
TerminateShellInternalAsync
îî 7
(
îî7 8
)
îî8 9
{
ïï 	
if
ññ 
(
ññ 
_serviceScopeOnly
ññ !
)
ññ! "
{
óó 
return
òò 
;
òò 
}
ôô 
_terminated
õõ 
=
õõ 
true
õõ 
;
õõ 
if
°° 
(
°° 
Interlocked
°° 
.
°° 
	Decrement
°° %
(
°°% &
ref
°°& )
ShellContext
°°* 6
.
°°6 7
	_refCount
°°7 @
)
°°@ A
==
°°B D
$num
°°E F
)
°°F G
{
¢¢ 
if
§§ 
(
§§ 
ShellContext
§§  
.
§§  !
Settings
§§! )
.
§§) *
State
§§* /
==
§§0 2
TenantState
§§3 >
.
§§> ?
Disabled
§§? G
)
§§G H
{
•• 
ShellContext
¶¶  
.
¶¶  !"
ReleaseFromLastScope
¶¶! 5
(
¶¶5 6
)
¶¶6 7
;
¶¶7 8
}
ßß 
if
©© 
(
©© 
!
©© 
ShellContext
©© !
.
©©! "
	_released
©©" +
)
©©+ ,
{
™™ 
return
´´ 
;
´´ 
}
¨¨ 
if
ØØ 
(
ØØ 
Interlocked
ØØ 
.
ØØ  
CompareExchange
ØØ  /
(
ØØ/ 0
ref
ØØ0 3
ShellContext
ØØ4 @
.
ØØ@ A
	_refCount
ØØA J
,
ØØJ K
$num
ØØL M
,
ØØM N
$num
ØØO P
)
ØØP Q
!=
ØØR T
$num
ØØU V
)
ØØV W
{
∞∞ 
return
±± 
;
±± 
}
≤≤ 
if
µµ 
(
µµ 
Interlocked
µµ 
.
µµ  
Exchange
µµ  (
(
µµ( )
ref
µµ) ,
ShellContext
µµ- 9
.
µµ9 :
_terminated
µµ: E
,
µµE F
$num
µµG H
)
µµH I
==
µµJ L
$num
µµM N
)
µµN O
{
∂∂ 
return
∑∑ 
;
∑∑ 
}
∏∏ 
_shellTerminated
∫∫  
=
∫∫! "
true
∫∫# '
;
∫∫' (
var
ºº 
tenantEvents
ºº  
=
ºº! "
_serviceScope
ºº# 0
.
ºº0 1
ServiceProvider
ºº1 @
.
ºº@ A
GetServices
ººA L
<
ººL M"
IModularTenantEvents
ººM a
>
ººa b
(
ººb c
)
ººc d
;
ººd e
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
tenantEvent
ΩΩ (
in
ΩΩ) +
tenantEvents
ΩΩ, 8
)
ΩΩ8 9
{
ææ 
await
øø 
tenantEvent
øø %
.
øø% &
TerminatingAsync
øø& 6
(
øø6 7
)
øø7 8
;
øø8 9
}
¿¿ 
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
tenantEvent
¬¬ (
in
¬¬) +
tenantEvents
¬¬, 8
.
¬¬8 9
Reverse
¬¬9 @
(
¬¬@ A
)
¬¬A B
)
¬¬B C
{
√√ 
await
ƒƒ 
tenantEvent
ƒƒ %
.
ƒƒ% &
TerminatedAsync
ƒƒ& 5
(
ƒƒ5 6
)
ƒƒ6 7
;
ƒƒ7 8
}
≈≈ 
}
∆∆ 
}
«« 	
public
…… 
void
…… 
Dispose
…… 
(
…… 
)
…… 
{
   	
if
ÀÀ 
(
ÀÀ 
	_disposed
ÀÀ 
)
ÀÀ 
{
ÃÃ 
return
ÕÕ 
;
ÕÕ 
}
ŒŒ 
	_disposed
–– 
=
–– 
true
–– 
;
–– 
_serviceScope
—— 
.
—— 
Dispose
—— !
(
——! "
)
——" #
;
——# $
if
‘‘ 
(
‘‘ 
_shellTerminated
‘‘  
)
‘‘  !
{
’’ 
ShellContext
÷÷ 
.
÷÷ 
Dispose
÷÷ $
(
÷÷$ %
)
÷÷% &
;
÷÷& '
}
◊◊ 
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
_terminated
ŸŸ 
)
ŸŸ 
{
⁄⁄ 
Interlocked
‹‹ 
.
‹‹ 
	Decrement
‹‹ %
(
‹‹% &
ref
‹‹& )
ShellContext
‹‹* 6
.
‹‹6 7
	_refCount
‹‹7 @
)
‹‹@ A
;
‹‹A B
}
›› 
}
ﬁﬁ 	
}
ﬂﬂ 
}‡‡ ¢

íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\Scope\ShellScopeServices.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
Scope( -
{ 
public 

class 
ShellScopeServices #
:$ %
IServiceProvider& 6
{ 
private 
readonly 
IServiceProvider )
	_services* 3
;3 4
public 
ShellScopeServices !
(! "
IServiceProvider" 2
services3 ;
); <
=>= ?
	_services@ I
=J K
servicesL T
;T U
private 
IServiceProvider  
Services! )
=>* ,

ShellScope- 7
.7 8
Services8 @
??A C
	_servicesD M
;M N
public 
object 

GetService  
(  !
Type! %
serviceType& 1
)1 2
=>3 5
Services6 >
?> ?
.? @

GetService@ J
(J K
serviceTypeK V
)V W
;W X
} 
} ˙
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellContextFeature.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public		 

class		 
ShellContextFeature		 $
{

 
public 
ShellContext 
ShellContext (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 

PathString 
OriginalPathBase *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 

PathString 
OriginalPath &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ´
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellHostReloadException.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class $
ShellHostReloadException )
:* +
	Exception, 5
{		 
public $
ShellHostReloadException '
(' (
string( .
message/ 6
)6 7
:8 9
base: >
(> ?
message? F
)F G
{ 	
} 	
} 
} Œ
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellOptions.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{ 
public 

class 
ShellOptions 
{ 
public 
string %
ShellsApplicationDataPath /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
string 
ShellsContainerName )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} Ÿ'
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\ShellSettings.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
{		 
public 

class 
ShellSettings 
{ 
private 
ShellConfiguration "
	_settings# ,
;, -
private 
ShellConfiguration "
_configuration# 1
;1 2
public 
ShellSettings 
( 
) 
{ 	
	_settings 
= 
new 
ShellConfiguration .
(. /
)/ 0
;0 1
_configuration 
= 
new  
ShellConfiguration! 3
(3 4
)4 5
;5 6
} 	
public 
ShellSettings 
( 
ShellConfiguration /
settings0 8
,8 9
ShellConfiguration: L
configurationM Z
)Z [
{ 	
	_settings 
= 
settings  
;  !
_configuration 
= 
configuration *
;* +
} 	
public   
ShellSettings   
(   
ShellSettings   *
settings  + 3
)  3 4
{!! 	
	_settings"" 
="" 
new"" 
ShellConfiguration"" .
("". /
settings""/ 7
.""7 8
	_settings""8 A
)""A B
;""B C
_configuration## 
=## 
new##  
ShellConfiguration##! 3
(##3 4
settings##4 <
.##< =
Name##= A
,##A B
settings##C K
.##K L
_configuration##L Z
)##Z [
;##[ \
Name$$ 
=$$ 
settings$$ 
.$$ 
Name$$  
;$$  !
}%% 	
public'' 
string'' 
Name'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
public)) 
string)) 
	VersionId)) 
{** 	
get++ 
=>++ 
	_settings++ 
[++ 
$str++ (
]++( )
;++) *
set,, 
=>,, 
	_settings,, 
[,, 
$str,, (
],,( )
=,,* +
value,,, 1
;,,1 2
}-- 	
public// 
string// 
RequestUrlHost// $
{00 	
get11 
=>11 
	_settings11 
[11 
$str11 -
]11- .
;11. /
set22 
=>22 
	_settings22 
[22 
$str22 -
]22- .
=22/ 0
value221 6
;226 7
}33 	
public55 
string55 
RequestUrlPrefix55 &
{66 	
get77 
=>77 
	_settings77 
[77 
$str77 /
]77/ 0
?770 1
.771 2
Trim772 6
(776 7
$char777 :
,77: ;
$char77< ?
)77? @
;77@ A
set88 
=>88 
	_settings88 
[88 
$str88 /
]88/ 0
=881 2
value883 8
;888 9
}99 	
[;; 	
JsonConverter;;	 
(;; 
typeof;; 
(;; 
StringEnumConverter;; 1
);;1 2
);;2 3
];;3 4
public<< 
TenantState<< 
State<<  
{== 	
get>> 
=>>> 
	_settings>> 
.>> 
GetValue>> %
<>>% &
TenantState>>& 1
>>>1 2
(>>2 3
$str>>3 :
)>>: ;
;>>; <
set?? 
=>?? 
	_settings?? 
[?? 
$str?? $
]??$ %
=??& '
value??( -
.??- .
ToString??. 6
(??6 7
)??7 8
;??8 9
}@@ 	
[BB 	

JsonIgnoreBB	 
]BB 
publicCC 
IShellConfigurationCC "
ShellConfigurationCC# 5
=>CC6 8
_configurationCC9 G
;CCG H
[EE 	

JsonIgnoreEE	 
]EE 
publicFF 
stringFF 
thisFF 
[FF 
stringFF !
keyFF" %
]FF% &
{GG 	
getHH 
=>HH 
_configurationHH !
[HH! "
keyHH" %
]HH% &
;HH& '
setII 
=>II 
_configurationII !
[II! "
keyII" %
]II% &
=II' (
valueII) .
;II. /
}JJ 	
publicLL 
TaskLL $
EnsureConfigurationAsyncLL ,
(LL, -
)LL- .
=>LL/ 1
_configurationLL2 @
.LL@ A$
EnsureConfigurationAsyncLLA Y
(LLY Z
)LLZ [
;LL[ \
}MM 
}NN ﬂ
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\State\ShellFeatureState.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
State( -
{ 
public		 

class		 
ShellFeatureState		 "
{

 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
State 
InstallState !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
State 
EnableState  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

JsonIgnore	 
] 
public 
bool 
IsInstalled 
{  !
get" %
{& '
return( .
InstallState/ ;
==< >
State? D
.D E
UpE G
;G H
}I J
}K L
[ 	

JsonIgnore	 
] 
public 
bool 
	IsEnabled 
{ 
get  #
{$ %
return& ,
EnableState- 8
==9 ;
State< A
.A B
UpB D
;D E
}F G
}H I
[ 	

JsonIgnore	 
] 
public 
bool 

IsDisabled 
{  
get! $
{% &
return' -
EnableState. 9
==: <
State= B
.B C
DownC G
||H J
EnableStateK V
==W Y
StateZ _
._ `
	Undefined` i
;i j
}k l
}m n
[ 	
JsonConverter	 
( 
typeof 
( 
StringEnumConverter 1
)1 2
)2 3
]3 4
public 
enum 
State 
{ 	
	Undefined 
, 
Rising 
, 
Up 
, 
Falling 
, 
Down 
, 
}   	
}!! 
}"" Ò
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Abstractions\Shell\State\ShellState.cs
	namespace 	
OrchardCore
 
. 
Environment !
.! "
Shell" '
.' (
State( -
{ 
public

 

class

 

ShellState

 
{ 
public 
List 
< 
ShellFeatureState %
>% &
Features' /
{0 1
get2 5
;5 6
}7 8
=9 :
new; >
List? C
<C D
ShellFeatureStateD U
>U V
(V W
)W X
;X Y
} 
} 