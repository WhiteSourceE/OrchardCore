�	
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Core\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Setup 
{ 
public

 

static

 
class

 '
ServiceCollectionExtensions

 3
{ 
public 
static 
IServiceCollection (
AddSetup) 1
(1 2
this2 6
IServiceCollection7 I
servicesJ R
)R S
{ 	
services 
. 
	AddScoped 
< 
ISetupService ,
,, -
SetupService. :
>: ;
(; <
)< =
;= >
services 
. 
AddIdGeneration $
($ %
)% &
;& '
services 
. 
AddSingleton !
<! "!
ISetupUserIdGenerator" 7
,7 8 
SetupUserIdGenerator9 M
>M N
(N O
)O P
;P Q
return 
services 
; 
} 	
} 
} ��
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Core\SetupService.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Services $
{ 
public 

class 
SetupService 
: 
ISetupService  -
{ 
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
ISetupUserIdGenerator .!
_setupUserIdGenerator/ D
;D E
private   
readonly   
IEnumerable   $
<  $ %
IRecipeHarvester  % 5
>  5 6
_recipeHarvesters  7 H
;  H I
private!! 
readonly!! 
ILogger!!  
_logger!!! (
;!!( )
private"" 
readonly"" 
IStringLocalizer"" )
S""* +
;""+ ,
private## 
readonly## $
IHostApplicationLifetime## 1 
_applicationLifetime##2 F
;##F G
private$$ 
readonly$$  
IHttpContextAccessor$$ - 
_httpContextAccessor$$. B
;$$B C
private%% 
readonly%% 
string%% 
_applicationName%%  0
;%%0 1
private&& 
IEnumerable&& 
<&& 
RecipeDescriptor&& ,
>&&, -
_recipes&&. 6
;&&6 7
public44 
SetupService44 
(44 

IShellHost55 
	shellHost55  
,55  !
IHostEnvironment66 
hostingEnvironment66 /
,66/ 0 
IShellContextFactory77  
shellContextFactory77! 4
,774 5!
ISetupUserIdGenerator88 ! 
setupUserIdGenerator88" 6
,886 7
IEnumerable99 
<99 
IRecipeHarvester99 (
>99( )
recipeHarvesters99* :
,99: ;
ILogger:: 
<:: 
SetupService::  
>::  !
logger::" (
,::( )
IStringLocalizer;; 
<;; 
SetupService;; )
>;;) *
stringLocalizer;;+ :
,;;: ;$
IHostApplicationLifetime<< $
applicationLifetime<<% 8
,<<8 9 
IHttpContextAccessor==  
httpContextAccessor==! 4
)==4 5
{>> 	

_shellHost?? 
=?? 
	shellHost?? "
;??" #
_applicationName@@ 
=@@ 
hostingEnvironment@@ 1
.@@1 2
ApplicationName@@2 A
;@@A B 
_shellContextFactoryAA  
=AA! "
shellContextFactoryAA# 6
;AA6 7!
_setupUserIdGeneratorBB !
=BB" # 
setupUserIdGeneratorBB$ 8
;BB8 9
_recipeHarvestersCC 
=CC 
recipeHarvestersCC  0
;CC0 1
_loggerDD 
=DD 
loggerDD 
;DD 
SEE 
=EE 
stringLocalizerEE 
;EE   
_applicationLifetimeFF  
=FF! "
applicationLifetimeFF# 6
;FF6 7 
_httpContextAccessorGG  
=GG! "
httpContextAccessorGG# 6
;GG6 7
}HH 	
publicKK 
asyncKK 
TaskKK 
<KK 
IEnumerableKK %
<KK% &
RecipeDescriptorKK& 6
>KK6 7
>KK7 8 
GetSetupRecipesAsyncKK9 M
(KKM N
)KKN O
{LL 	
ifMM 
(MM 
_recipesMM 
==MM 
nullMM  
)MM  !
{NN 
varOO 
recipeCollectionsOO %
=OO& '
awaitOO( -
TaskOO. 2
.OO2 3
WhenAllOO3 :
(OO: ;
_recipeHarvestersOO; L
.OOL M
SelectOOM S
(OOS T
xOOT U
=>OOV X
xOOY Z
.OOZ [
HarvestRecipesAsyncOO[ n
(OOn o
)OOo p
)OOp q
)OOq r
;OOr s
_recipesPP 
=PP 
recipeCollectionsPP ,
.PP, -

SelectManyPP- 7
(PP7 8
xPP8 9
=>PP: <
xPP= >
)PP> ?
.PP? @
WherePP@ E
(PPE F
xPPF G
=>PPH J
xPPK L
.PPL M
IsSetupRecipePPM Z
)PPZ [
.PP[ \
ToArrayPP\ c
(PPc d
)PPd e
;PPe f
}QQ 
returnSS 
_recipesSS 
;SS 
}TT 	
publicWW 
asyncWW 
TaskWW 
<WW 
stringWW  
>WW  !

SetupAsyncWW" ,
(WW, -
SetupContextWW- 9
contextWW: A
)WWA B
{XX 	
varYY 
initialStateYY 
=YY 
contextYY &
.YY& '
ShellSettingsYY' 4
.YY4 5
StateYY5 :
;YY: ;
tryZZ 
{[[ 
var\\ 
executionId\\ 
=\\  !
await\\" '
SetupInternalAsync\\( :
(\\: ;
context\\; B
)\\B C
;\\C D
if^^ 
(^^ 
context^^ 
.^^ 
Errors^^ "
.^^" #
Any^^# &
(^^& '
)^^' (
)^^( )
{__ 
context`` 
.`` 
ShellSettings`` )
.``) *
State``* /
=``0 1
initialState``2 >
;``> ?
}aa 
returncc 
executionIdcc "
;cc" #
}dd 
catchee 
{ff 
contextgg 
.gg 
ShellSettingsgg %
.gg% &
Stategg& +
=gg, -
initialStategg. :
;gg: ;
throwhh 
;hh 
}ii 
}jj 	
privatell 
asyncll 
Taskll 
<ll 
stringll !
>ll! "
SetupInternalAsyncll# 5
(ll5 6
SetupContextll6 B
contextllC J
)llJ K
{mm 	
stringnn 
executionIdnn 
;nn 
ifpp 
(pp 
_loggerpp 
.pp 
	IsEnabledpp !
(pp! "
LogLevelpp" *
.pp* +
Informationpp+ 6
)pp6 7
)pp7 8
{qq 
_loggerrr 
.rr 
LogInformationrr &
(rr& '
$strrr' Q
,rrQ R
contextrrS Z
.rrZ [
ShellSettingsrr[ h
.rrh i
Namerri m
)rrm n
;rrn o
}ss 
stringvv 
[vv 
]vv 
	hardcodedvv 
=vv  
{ww 
_applicationNamexx  
,xx  !
$stryy &
,yy& '
$strzz '
,zz' (
$str{{ %
}|| 
;|| 
context~~ 
.~~ 
EnabledFeatures~~ #
=~~$ %
	hardcoded~~& /
.~~/ 0
Union~~0 5
(~~5 6
context~~6 =
.~~= >
EnabledFeatures~~> M
??~~N P

Enumerable~~Q [
.~~[ \
Empty~~\ a
<~~a b
string~~b h
>~~h i
(~~i j
)~~j k
)~~k l
.~~l m
Distinct~~m u
(~~u v
)~~v w
.~~w x
ToList~~x ~
(~~~ 
)	~~ �
;
~~� �
context
�� 
.
�� 
ShellSettings
�� !
.
��! "
State
��" '
=
��( )
TenantState
��* 5
.
��5 6
Initializing
��6 B
;
��B C
context
�� 
.
�� 

Properties
�� 
[
�� 
SetupConstants
�� -
.
��- .
AdminUserId
��. 9
]
��9 :
=
��; <#
_setupUserIdGenerator
��= R
.
��R S
GenerateUniqueId
��S c
(
��c d
)
��d e
.
��e f
ToLowerInvariant
��f v
(
��v w
)
��w x
;
��x y
var
�� &
recipeEnvironmentFeature
�� (
=
��) *
new
��+ .&
RecipeEnvironmentFeature
��/ G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
context
�� 
.
�� 

Properties
�� "
.
��" #
TryGetValue
��# .
(
��. /
SetupConstants
��/ =
.
��= >
AdminUserId
��> I
,
��I J
out
��K N
var
��O R
adminUserId
��S ^
)
��^ _
)
��_ `
{
�� &
recipeEnvironmentFeature
�� (
.
��( )

Properties
��) 3
[
��3 4
SetupConstants
��4 B
.
��B C
AdminUserId
��C N
]
��N O
=
��P Q
adminUserId
��R ]
;
��] ^
}
�� 
if
�� 
(
�� 
context
�� 
.
�� 

Properties
�� "
.
��" #
TryGetValue
��# .
(
��. /
SetupConstants
��/ =
.
��= >
AdminUsername
��> K
,
��K L
out
��M P
var
��Q T
adminUsername
��U b
)
��b c
)
��c d
{
�� &
recipeEnvironmentFeature
�� (
.
��( )

Properties
��) 3
[
��3 4
SetupConstants
��4 B
.
��B C
AdminUsername
��C P
]
��P Q
=
��R S
adminUsername
��T a
;
��a b
}
�� 
if
�� 
(
�� 
context
�� 
.
�� 

Properties
�� "
.
��" #
TryGetValue
��# .
(
��. /
SetupConstants
��/ =
.
��= >
SiteName
��> F
,
��F G
out
��H K
var
��L O
siteName
��P X
)
��X Y
)
��Y Z
{
�� &
recipeEnvironmentFeature
�� (
.
��( )

Properties
��) 3
[
��3 4
SetupConstants
��4 B
.
��B C
SiteName
��C K
]
��K L
=
��M N
siteName
��O W
;
��W X
}
�� "
_httpContextAccessor
��  
.
��  !
HttpContext
��! ,
.
��, -
Features
��- 5
.
��5 6
Set
��6 9
(
��9 :&
recipeEnvironmentFeature
��: R
)
��R S
;
��S T
var
�� 
shellSettings
�� 
=
�� 
new
��  #
ShellSettings
��$ 1
(
��1 2
context
��2 9
.
��9 :
ShellSettings
��: G
)
��G H
;
��H I
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
��$ %
shellSettings
��% 2
[
��2 3
$str
��3 E
]
��E F
)
��F G
)
��G H
{
�� 
shellSettings
�� 
[
�� 
$str
�� 0
]
��0 1
=
��2 3
context
��4 ;
.
��; <

Properties
��< F
.
��F G
TryGetValue
��G R
(
��R S
SetupConstants
��S a
.
��a b
DatabaseProvider
��b r
,
��r s
out
��t w
var
��x {
databaseProvider��| �
)��� �
?��� � 
databaseProvider��� �
?��� �
.��� �
ToString��� �
(��� �
)��� �
:��� �
String��� �
.��� �
Empty��� �
;��� �
shellSettings
�� 
[
�� 
$str
�� 0
]
��0 1
=
��2 3
context
��4 ;
.
��; <

Properties
��< F
.
��F G
TryGetValue
��G R
(
��R S
SetupConstants
��S a
.
��a b&
DatabaseConnectionString
��b z
,
��z {
out
��| 
var��� �(
databaseConnectionString��� �
)��� �
?��� �(
databaseConnectionString��� �
?��� �
.��� �
ToString��� �
(��� �
)��� �
:��� �
String��� �
.��� �
Empty��� �
;��� �
shellSettings
�� 
[
�� 
$str
�� +
]
��+ ,
=
��- .
context
��/ 6
.
��6 7

Properties
��7 A
.
��A B
TryGetValue
��B M
(
��M N
SetupConstants
��N \
.
��\ ]!
DatabaseTablePrefix
��] p
,
��p q
out
��r u
var
��v y"
databaseTablePrefix��z �
)��� �
?��� �#
databaseTablePrefix��� �
?��� �
.��� �
ToString��� �
(��� �
)��� �
:��� �
String��� �
.��� �
Empty��� �
;��� �
}
�� 
if
�� 
(
�� 
String
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
shellSettings
��* 7
[
��7 8
$str
��8 J
]
��J K
)
��K L
)
��L M
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
��, J
)
��J K
;
��K L
}
�� 
var
�� 
shellDescriptor
�� 
=
��  !
new
��" %
ShellDescriptor
��& 5
{
�� 
Features
�� 
=
�� 
context
�� "
.
��" #
EnabledFeatures
��# 2
.
��2 3
Select
��3 9
(
��9 :
id
��: <
=>
��= ?
new
��@ C
ShellFeature
��D P
{
��Q R
Id
��S U
=
��V W
id
��X Z
}
��[ \
)
��\ ]
.
��] ^
ToList
��^ d
(
��d e
)
��e f
}
�� 
;
�� 
using
�� 
(
�� 
var
�� 
shellContext
�� #
=
��$ %
await
��& +"
_shellContextFactory
��, @
.
��@ A)
CreateDescribedContextAsync
��A \
(
��\ ]
shellSettings
��] j
,
��j k
shellDescriptor
��l {
)
��{ |
)
��| }
{
�� 
await
�� 
shellContext
�� "
.
��" #
CreateScope
��# .
(
��. /
)
��/ 0
.
��0 1$
UsingServiceScopeAsync
��1 G
(
��G H
async
��H M
scope
��N S
=>
��T V
{
�� 
IStore
�� 
store
��  
;
��  !
try
�� 
{
�� 
store
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
��5 6 
GetRequiredService
��6 H
<
��H I
IStore
��I O
>
��O P
(
��P Q
)
��Q R
;
��R S
}
�� 
catch
�� 
(
�� 
	Exception
�� $
e
��% &
)
��& '
{
�� 
_logger
�� 
.
��  
LogError
��  (
(
��( )
e
��) *
,
��* +
$str
��, a
)
��a b
;
��b c
context
�� 
.
��  
Errors
��  &
.
��& '
Add
��' *
(
��* +
$str
��+ =
,
��= >
S
��? @
[
��@ A
$str
��A z
,
��z {
e
��| }
.
��} ~
Message��~ �
]��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
await
�� 
scope
�� 
.
�� 
ServiceProvider
�� (
.
�� 

GetService
�� #
<
��# $%
IShellDescriptorManager
��$ ;
>
��; <
(
��< =
)
��= >
.
�� (
UpdateShellDescriptorAsync
�� 3
(
��3 4
$num
��4 5
,
��5 6
shellContext
�� (
.
��( )
	Blueprint
��) 2
.
��2 3

Descriptor
��3 =
.
��= >
Features
��> F
,
��F G
shellContext
�� (
.
��( )
	Blueprint
��) 2
.
��2 3

Descriptor
��3 =
.
��= >

Parameters
��> H
)
��H I
;
��I J
}
�� 
)
�� 
;
�� 
if
�� 
(
�� 
context
�� 
.
�� 
Errors
�� "
.
��" #
Any
��# &
(
��& '
)
��' (
)
��( )
{
�� 
return
�� 
null
�� 
;
��  
}
�� 
executionId
�� 
=
�� 
Guid
�� "
.
��" #
NewGuid
��# *
(
��* +
)
��+ ,
.
��, -
ToString
��- 5
(
��5 6
$str
��6 9
)
��9 :
;
��: ;
var
�� 
recipeExecutor
�� "
=
��# $
shellContext
��% 1
.
��1 2
ServiceProvider
��2 A
.
��A B 
GetRequiredService
��B T
<
��T U
IRecipeExecutor
��U d
>
��d e
(
��e f
)
��f g
;
��g h
await
�� 
recipeExecutor
�� $
.
��$ %
ExecuteAsync
��% 1
(
��1 2
executionId
��2 =
,
��= >
context
��? F
.
��F G
Recipe
��G M
,
��M N
context
��O V
.
��V W

Properties
��W a
,
��a b"
_applicationLifetime
��c w
.
��w x"
ApplicationStopping��x �
)��� �
;��� �
}
�� 
await
�� 
(
�� 
await
�� 

_shellHost
�� #
.
��# $
GetScopeAsync
��$ 1
(
��1 2
shellSettings
��2 ?
)
��? @
)
��@ A
.
��A B

UsingAsync
��B L
(
��L M
async
��M R
scope
��S X
=>
��Y [
{
�� 
void
�� 
reportError
��  
(
��  !
string
��! '
key
��( +
,
��+ ,
string
��- 3
message
��4 ;
)
��; <
{
�� 
context
�� 
.
�� 
Errors
�� "
[
��" #
key
��# &
]
��& '
=
��( )
message
��* 1
;
��1 2
}
�� 
var
��  
setupEventHandlers
�� &
=
��' (
scope
��) .
.
��. /
ServiceProvider
��/ >
.
��> ?
GetServices
��? J
<
��J K 
ISetupEventHandler
��K ]
>
��] ^
(
��^ _
)
��_ `
;
��` a
var
�� 
logger
�� 
=
�� 
scope
�� "
.
��" #
ServiceProvider
��# 2
.
��2 3 
GetRequiredService
��3 E
<
��E F
ILogger
��F M
<
��M N
SetupService
��N Z
>
��Z [
>
��[ \
(
��\ ]
)
��] ^
;
��^ _
await
��  
setupEventHandlers
�� (
.
��( )
InvokeAsync
��) 4
(
��4 5
(
��5 6
handler
��6 =
,
��= >
context
��? F
)
��F G
=>
��H J
handler
��K R
.
��R S
Setup
��S X
(
��X Y
context
�� 
.
�� 

Properties
�� &
,
��& '
reportError
�� 
)
�� 
,
�� 
context
�� 
,
�� 
logger
�� "
)
��" #
;
��# $
}
�� 
)
�� 
;
�� 
if
�� 
(
�� 
context
�� 
.
�� 
Errors
�� 
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
�� 
context
�� 
.
�� 
ShellSettings
�� %
=
��& '
shellSettings
��( 5
;
��5 6
return
�� 
executionId
�� "
;
��" #
}
�� 
shellSettings
�� 
.
�� 
State
�� 
=
��  !
TenantState
��" -
.
��- .
Running
��. 5
;
��5 6
await
�� 

_shellHost
�� 
.
�� &
UpdateShellSettingsAsync
�� 5
(
��5 6
shellSettings
��6 C
)
��C D
;
��D E
return
�� 
executionId
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Core\SetupUserIdGenerator.cs
	namespace 	
OrchardCore
 
. 
Setup 
. 
Services $
{ 
public 

class  
SetupUserIdGenerator %
:& '!
ISetupUserIdGenerator( =
{ 
private 
readonly 
IIdGenerator %

_generator& 0
;0 1
public		  
SetupUserIdGenerator		 #
(		# $
IIdGenerator		$ 0
	generator		1 :
)		: ;
{

 	

_generator 
= 
	generator "
;" #
} 	
public 
string 
GenerateUniqueId &
(& '
)' (
{ 	
return 

_generator 
. 
GenerateUniqueId .
(. /
)/ 0
;0 1
} 	
} 
} 