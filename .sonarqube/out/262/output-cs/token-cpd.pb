Ø	
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Core\ServiceCollectionExtensions.cs
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
} º°
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
)	~~ Ä
;
~~Ä Å
context
ÅÅ 
.
ÅÅ 
ShellSettings
ÅÅ !
.
ÅÅ! "
State
ÅÅ" '
=
ÅÅ( )
TenantState
ÅÅ* 5
.
ÅÅ5 6
Initializing
ÅÅ6 B
;
ÅÅB C
context
ÖÖ 
.
ÖÖ 

Properties
ÖÖ 
[
ÖÖ 
SetupConstants
ÖÖ -
.
ÖÖ- .
AdminUserId
ÖÖ. 9
]
ÖÖ9 :
=
ÖÖ; <#
_setupUserIdGenerator
ÖÖ= R
.
ÖÖR S
GenerateUniqueId
ÖÖS c
(
ÖÖc d
)
ÖÖd e
.
ÖÖe f
ToLowerInvariant
ÖÖf v
(
ÖÖv w
)
ÖÖw x
;
ÖÖx y
var
áá &
recipeEnvironmentFeature
áá (
=
áá) *
new
áá+ .&
RecipeEnvironmentFeature
áá/ G
(
ááG H
)
ááH I
;
ááI J
if
àà 
(
àà 
context
àà 
.
àà 

Properties
àà "
.
àà" #
TryGetValue
àà# .
(
àà. /
SetupConstants
àà/ =
.
àà= >
AdminUserId
àà> I
,
ààI J
out
ààK N
var
ààO R
adminUserId
ààS ^
)
àà^ _
)
àà_ `
{
ââ &
recipeEnvironmentFeature
ää (
.
ää( )

Properties
ää) 3
[
ää3 4
SetupConstants
ää4 B
.
ääB C
AdminUserId
ääC N
]
ääN O
=
ääP Q
adminUserId
ääR ]
;
ää] ^
}
ãã 
if
åå 
(
åå 
context
åå 
.
åå 

Properties
åå "
.
åå" #
TryGetValue
åå# .
(
åå. /
SetupConstants
åå/ =
.
åå= >
AdminUsername
åå> K
,
ååK L
out
ååM P
var
ååQ T
adminUsername
ååU b
)
ååb c
)
ååc d
{
çç &
recipeEnvironmentFeature
éé (
.
éé( )

Properties
éé) 3
[
éé3 4
SetupConstants
éé4 B
.
ééB C
AdminUsername
ééC P
]
ééP Q
=
ééR S
adminUsername
ééT a
;
ééa b
}
èè 
if
êê 
(
êê 
context
êê 
.
êê 

Properties
êê "
.
êê" #
TryGetValue
êê# .
(
êê. /
SetupConstants
êê/ =
.
êê= >
SiteName
êê> F
,
êêF G
out
êêH K
var
êêL O
siteName
êêP X
)
êêX Y
)
êêY Z
{
ëë &
recipeEnvironmentFeature
íí (
.
íí( )

Properties
íí) 3
[
íí3 4
SetupConstants
íí4 B
.
ííB C
SiteName
ííC K
]
ííK L
=
ííM N
siteName
ííO W
;
ííW X
}
ìì "
_httpContextAccessor
ïï  
.
ïï  !
HttpContext
ïï! ,
.
ïï, -
Features
ïï- 5
.
ïï5 6
Set
ïï6 9
(
ïï9 :&
recipeEnvironmentFeature
ïï: R
)
ïïR S
;
ïïS T
var
óó 
shellSettings
óó 
=
óó 
new
óó  #
ShellSettings
óó$ 1
(
óó1 2
context
óó2 9
.
óó9 :
ShellSettings
óó: G
)
óóG H
;
óóH I
if
ôô 
(
ôô 
string
ôô 
.
ôô 
IsNullOrEmpty
ôô $
(
ôô$ %
shellSettings
ôô% 2
[
ôô2 3
$str
ôô3 E
]
ôôE F
)
ôôF G
)
ôôG H
{
öö 
shellSettings
õõ 
[
õõ 
$str
õõ 0
]
õõ0 1
=
õõ2 3
context
õõ4 ;
.
õõ; <

Properties
õõ< F
.
õõF G
TryGetValue
õõG R
(
õõR S
SetupConstants
õõS a
.
õõa b
DatabaseProvider
õõb r
,
õõr s
out
õõt w
var
õõx {
databaseProviderõõ| å
)õõå ç
?õõé è 
databaseProviderõõê †
?õõ† °
.õõ° ¢
ToStringõõ¢ ™
(õõ™ ´
)õõ´ ¨
:õõ≠ Æ
StringõõØ µ
.õõµ ∂
Emptyõõ∂ ª
;õõª º
shellSettings
úú 
[
úú 
$str
úú 0
]
úú0 1
=
úú2 3
context
úú4 ;
.
úú; <

Properties
úú< F
.
úúF G
TryGetValue
úúG R
(
úúR S
SetupConstants
úúS a
.
úúa b&
DatabaseConnectionString
úúb z
,
úúz {
out
úú| 
varúúÄ É(
databaseConnectionStringúúÑ ú
)úúú ù
?úúû ü(
databaseConnectionStringúú† ∏
?úú∏ π
.úúπ ∫
ToStringúú∫ ¬
(úú¬ √
)úú√ ƒ
:úú≈ ∆
Stringúú« Õ
.úúÕ Œ
EmptyúúŒ ”
;úú” ‘
shellSettings
ùù 
[
ùù 
$str
ùù +
]
ùù+ ,
=
ùù- .
context
ùù/ 6
.
ùù6 7

Properties
ùù7 A
.
ùùA B
TryGetValue
ùùB M
(
ùùM N
SetupConstants
ùùN \
.
ùù\ ]!
DatabaseTablePrefix
ùù] p
,
ùùp q
out
ùùr u
var
ùùv y"
databaseTablePrefixùùz ç
)ùùç é
?ùùè ê#
databaseTablePrefixùùë §
?ùù§ •
.ùù• ¶
ToStringùù¶ Æ
(ùùÆ Ø
)ùùØ ∞
:ùù± ≤
Stringùù≥ π
.ùùπ ∫
Emptyùù∫ ø
;ùùø ¿
}
ûû 
if
†† 
(
†† 
String
†† 
.
††  
IsNullOrWhiteSpace
†† )
(
††) *
shellSettings
††* 7
[
††7 8
$str
††8 J
]
††J K
)
††K L
)
††L M
{
°° 
throw
¢¢ 
new
¢¢ 
ArgumentException
¢¢ +
(
¢¢+ ,
$str
¢¢, J
)
¢¢J K
;
¢¢K L
}
££ 
var
™™ 
shellDescriptor
™™ 
=
™™  !
new
™™" %
ShellDescriptor
™™& 5
{
´´ 
Features
¨¨ 
=
¨¨ 
context
¨¨ "
.
¨¨" #
EnabledFeatures
¨¨# 2
.
¨¨2 3
Select
¨¨3 9
(
¨¨9 :
id
¨¨: <
=>
¨¨= ?
new
¨¨@ C
ShellFeature
¨¨D P
{
¨¨Q R
Id
¨¨S U
=
¨¨V W
id
¨¨X Z
}
¨¨[ \
)
¨¨\ ]
.
¨¨] ^
ToList
¨¨^ d
(
¨¨d e
)
¨¨e f
}
≠≠ 
;
≠≠ 
using
ØØ 
(
ØØ 
var
ØØ 
shellContext
ØØ #
=
ØØ$ %
await
ØØ& +"
_shellContextFactory
ØØ, @
.
ØØ@ A)
CreateDescribedContextAsync
ØØA \
(
ØØ\ ]
shellSettings
ØØ] j
,
ØØj k
shellDescriptor
ØØl {
)
ØØ{ |
)
ØØ| }
{
∞∞ 
await
±± 
shellContext
±± "
.
±±" #
CreateScope
±±# .
(
±±. /
)
±±/ 0
.
±±0 1$
UsingServiceScopeAsync
±±1 G
(
±±G H
async
±±H M
scope
±±N S
=>
±±T V
{
≤≤ 
IStore
≥≥ 
store
≥≥  
;
≥≥  !
try
µµ 
{
∂∂ 
store
∑∑ 
=
∑∑ 
scope
∑∑  %
.
∑∑% &
ServiceProvider
∑∑& 5
.
∑∑5 6 
GetRequiredService
∑∑6 H
<
∑∑H I
IStore
∑∑I O
>
∑∑O P
(
∑∑P Q
)
∑∑Q R
;
∑∑R S
}
∏∏ 
catch
ππ 
(
ππ 
	Exception
ππ $
e
ππ% &
)
ππ& '
{
∫∫ 
_logger
¬¬ 
.
¬¬  
LogError
¬¬  (
(
¬¬( )
e
¬¬) *
,
¬¬* +
$str
¬¬, a
)
¬¬a b
;
¬¬b c
context
√√ 
.
√√  
Errors
√√  &
.
√√& '
Add
√√' *
(
√√* +
$str
√√+ =
,
√√= >
S
√√? @
[
√√@ A
$str
√√A z
,
√√z {
e
√√| }
.
√√} ~
Message√√~ Ö
]√√Ö Ü
)√√Ü á
;√√á à
return
ƒƒ 
;
ƒƒ 
}
≈≈ 
await
»» 
scope
»» 
.
…… 
ServiceProvider
…… (
.
   

GetService
   #
<
  # $%
IShellDescriptorManager
  $ ;
>
  ; <
(
  < =
)
  = >
.
ÀÀ (
UpdateShellDescriptorAsync
ÀÀ 3
(
ÀÀ3 4
$num
ÀÀ4 5
,
ÀÀ5 6
shellContext
ÃÃ (
.
ÃÃ( )
	Blueprint
ÃÃ) 2
.
ÃÃ2 3

Descriptor
ÃÃ3 =
.
ÃÃ= >
Features
ÃÃ> F
,
ÃÃF G
shellContext
ÕÕ (
.
ÕÕ( )
	Blueprint
ÕÕ) 2
.
ÕÕ2 3

Descriptor
ÕÕ3 =
.
ÕÕ= >

Parameters
ÕÕ> H
)
ÕÕH I
;
ÕÕI J
}
ŒŒ 
)
ŒŒ 
;
ŒŒ 
if
–– 
(
–– 
context
–– 
.
–– 
Errors
–– "
.
––" #
Any
––# &
(
––& '
)
––' (
)
––( )
{
—— 
return
““ 
null
““ 
;
““  
}
”” 
executionId
’’ 
=
’’ 
Guid
’’ "
.
’’" #
NewGuid
’’# *
(
’’* +
)
’’+ ,
.
’’, -
ToString
’’- 5
(
’’5 6
$str
’’6 9
)
’’9 :
;
’’: ;
var
◊◊ 
recipeExecutor
◊◊ "
=
◊◊# $
shellContext
◊◊% 1
.
◊◊1 2
ServiceProvider
◊◊2 A
.
◊◊A B 
GetRequiredService
◊◊B T
<
◊◊T U
IRecipeExecutor
◊◊U d
>
◊◊d e
(
◊◊e f
)
◊◊f g
;
◊◊g h
await
ŸŸ 
recipeExecutor
ŸŸ $
.
ŸŸ$ %
ExecuteAsync
ŸŸ% 1
(
ŸŸ1 2
executionId
ŸŸ2 =
,
ŸŸ= >
context
ŸŸ? F
.
ŸŸF G
Recipe
ŸŸG M
,
ŸŸM N
context
ŸŸO V
.
ŸŸV W

Properties
ŸŸW a
,
ŸŸa b"
_applicationLifetime
ŸŸc w
.
ŸŸw x"
ApplicationStoppingŸŸx ã
)ŸŸã å
;ŸŸå ç
}
⁄⁄ 
await
›› 
(
›› 
await
›› 

_shellHost
›› #
.
››# $
GetScopeAsync
››$ 1
(
››1 2
shellSettings
››2 ?
)
››? @
)
››@ A
.
››A B

UsingAsync
››B L
(
››L M
async
››M R
scope
››S X
=>
››Y [
{
ﬁﬁ 
void
ﬂﬂ 
reportError
ﬂﬂ  
(
ﬂﬂ  !
string
ﬂﬂ! '
key
ﬂﬂ( +
,
ﬂﬂ+ ,
string
ﬂﬂ- 3
message
ﬂﬂ4 ;
)
ﬂﬂ; <
{
‡‡ 
context
·· 
.
·· 
Errors
·· "
[
··" #
key
··# &
]
··& '
=
··( )
message
··* 1
;
··1 2
}
‚‚ 
var
ÂÂ  
setupEventHandlers
ÂÂ &
=
ÂÂ' (
scope
ÂÂ) .
.
ÂÂ. /
ServiceProvider
ÂÂ/ >
.
ÂÂ> ?
GetServices
ÂÂ? J
<
ÂÂJ K 
ISetupEventHandler
ÂÂK ]
>
ÂÂ] ^
(
ÂÂ^ _
)
ÂÂ_ `
;
ÂÂ` a
var
ÊÊ 
logger
ÊÊ 
=
ÊÊ 
scope
ÊÊ "
.
ÊÊ" #
ServiceProvider
ÊÊ# 2
.
ÊÊ2 3 
GetRequiredService
ÊÊ3 E
<
ÊÊE F
ILogger
ÊÊF M
<
ÊÊM N
SetupService
ÊÊN Z
>
ÊÊZ [
>
ÊÊ[ \
(
ÊÊ\ ]
)
ÊÊ] ^
;
ÊÊ^ _
await
ËË  
setupEventHandlers
ËË (
.
ËË( )
InvokeAsync
ËË) 4
(
ËË4 5
(
ËË5 6
handler
ËË6 =
,
ËË= >
context
ËË? F
)
ËËF G
=>
ËËH J
handler
ËËK R
.
ËËR S
Setup
ËËS X
(
ËËX Y
context
ÈÈ 
.
ÈÈ 

Properties
ÈÈ &
,
ÈÈ& '
reportError
ÍÍ 
)
ÎÎ 
,
ÎÎ 
context
ÎÎ 
,
ÎÎ 
logger
ÎÎ "
)
ÎÎ" #
;
ÎÎ# $
}
ÏÏ 
)
ÏÏ 
;
ÏÏ 
if
ÓÓ 
(
ÓÓ 
context
ÓÓ 
.
ÓÓ 
Errors
ÓÓ 
.
ÓÓ 
Any
ÓÓ "
(
ÓÓ" #
)
ÓÓ# $
)
ÓÓ$ %
{
ÔÔ 
context
ÒÒ 
.
ÒÒ 
ShellSettings
ÒÒ %
=
ÒÒ& '
shellSettings
ÒÒ( 5
;
ÒÒ5 6
return
ÛÛ 
executionId
ÛÛ "
;
ÛÛ" #
}
ÙÙ 
shellSettings
˜˜ 
.
˜˜ 
State
˜˜ 
=
˜˜  !
TenantState
˜˜" -
.
˜˜- .
Running
˜˜. 5
;
˜˜5 6
await
¯¯ 

_shellHost
¯¯ 
.
¯¯ &
UpdateShellSettingsAsync
¯¯ 5
(
¯¯5 6
shellSettings
¯¯6 C
)
¯¯C D
;
¯¯D E
return
˙˙ 
executionId
˙˙ 
;
˙˙ 
}
˚˚ 	
}
¸¸ 
}˝˝ ï
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Setup.Core\SetupUserIdGenerator.cs
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