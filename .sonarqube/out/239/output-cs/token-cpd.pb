Â
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\ConfigurationMethodProvider.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{ 
public		 

class		 '
ConfigurationMethodProvider		 ,
:		- .!
IGlobalMethodProvider		/ D
{

 
private 
readonly 
GlobalMethod %
_globalMethod& 3
;3 4
public '
ConfigurationMethodProvider *
(* +
IShellConfiguration+ >
configuration? L
)L M
{ 	
_globalMethod 
= 
new 
GlobalMethod  ,
{ 
Name 
= 
$str &
,& '
Method 
= 
serviceprovider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
object: @
,@ A
objectB H
>H I
)I J
(J K
(K L
keyL O
,O P
defaultValueQ ]
)] ^
=>_ a
configurationb o
.o p
GetValuep x
<x y
objecty 
>	 Ä
(
Ä Å
key
Å Ñ
,
Ñ Ö
defaultValue
Ü í
)
í ì
)
ì î
} 
; 
} 	
public 
IEnumerable 
< 
GlobalMethod '
>' (

GetMethods) 3
(3 4
)4 5
{ 	
yield 
return 
_globalMethod &
;& '
} 	
} 
} á
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\ParametersMethodProvider.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{ 
public 

class $
ParametersMethodProvider )
:* +!
IGlobalMethodProvider, A
{		 
private

 
readonly

 
GlobalMethod

 %
_globalMethod

& 3
;

3 4
public $
ParametersMethodProvider '
(' (
object( .
environment/ :
): ;
{ 	
var 
environmentObject !
=" #
JObject$ +
.+ ,

FromObject, 6
(6 7
environment7 B
)B C
;C D
_globalMethod 
= 
new 
GlobalMethod  ,
{ 
Name 
= 
$str #
,# $
Method 
= 
serviceprovider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
object: @
>@ A
)A B
(B C
nameC G
=>H J
{ 
return 
environmentObject +
.+ ,
SelectToken, 7
(7 8
name8 <
)< =
?= >
.> ?
Value? D
<D E
stringE K
>K L
(L M
)M N
;N O
} 
) 
} 
; 
} 	
public 
IEnumerable 
< 
GlobalMethod '
>' (

GetMethods) 3
(3 4
)4 5
{ 	
yield 
return 
_globalMethod &
;& '
} 	
} 
} €
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 0
)		0 1
]		1 2
[

 
assembly

 	
:

	 

AssemblyTrademark

 
(

 
$str

 
)

  
]

  !
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8¢
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\ServiceCollectionExtensions.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (

AddRecipes) 3
(3 4
this4 8
IServiceCollection9 K
servicesL T
)T U
{		 	
services

 
.

 
	AddScoped

 
<

 
IRecipeHarvester

 /
,

/ 0&
ApplicationRecipeHarvester

1 K
>

K L
(

L M
)

M N
;

N O
services 
. 
	AddScoped 
< 
IRecipeHarvester /
,/ 0
RecipeHarvester1 @
>@ A
(A B
)B C
;C D
services 
. 
AddTransient !
<! "
IRecipeExecutor" 1
,1 2
RecipeExecutor3 A
>A B
(B C
)C D
;D E
services 
. 
	AddScoped 
< 
IRecipeMigrator .
,. /
RecipeMigrator0 >
>> ?
(? @
)@ A
;A B
services 
. 
	AddScoped 
< 
IRecipeReader ,
,, -
RecipeReader. :
>: ;
(; <
)< =
;= >
services 
. 
	AddScoped 
< &
IRecipeEnvironmentProvider 9
,9 :,
 RecipeEnvironmentFeatureProvider; [
>[ \
(\ ]
)] ^
;^ _
return 
services 
; 
} 	
} 
} ’
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Services\ApplicationRecipeHarvester.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{		 
public 

class &
ApplicationRecipeHarvester +
:, -
RecipeHarvester. =
{ 
public &
ApplicationRecipeHarvester )
() *
IRecipeReader 
recipeReader &
,& '
IExtensionManager 
extensionManager .
,. /
IHostEnvironment 
hostingEnvironment /
,/ 0
ILogger 
< 
RecipeHarvester #
># $
logger% +
)+ ,
: 
base 
( 
recipeReader 
,  
extensionManager! 1
,1 2
hostingEnvironment3 E
,E F
loggerG M
)M N
{ 	
} 	
public 
override 
Task 
< 
IEnumerable (
<( )
RecipeDescriptor) 9
>9 :
>: ;
HarvestRecipesAsync< O
(O P
)P Q
{ 	
return 
HarvestRecipesAsync &
(& '
$str' 0
)0 1
;1 2
} 	
} 
} Ü
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Services\RecipeEnvironmentFeatureProvider.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

class ,
 RecipeEnvironmentFeatureProvider 1
:2 3&
IRecipeEnvironmentProvider4 N
{		 
private

 
readonly

  
IHttpContextAccessor

 - 
_httpContextAccessor

. B
;

B C
public ,
 RecipeEnvironmentFeatureProvider /
(/ 0 
IHttpContextAccessor0 D
httpContextAccessorE X
)X Y
{ 	 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
int 
Order 
=> 
$num  
;  !
public 
Task $
PopulateEnvironmentAsync ,
(, -
IDictionary- 8
<8 9
string9 ?
,? @
objectA G
>G H
environmentI T
)T U
{ 	
var 
feature 
=  
_httpContextAccessor .
.. /
HttpContext/ :
.: ;
Features; C
.C D
GetD G
<G H$
RecipeEnvironmentFeatureH `
>` a
(a b
)b c
;c d
if 
( 
feature 
!= 
null 
)  
{ 
if 
( 
feature 
. 

Properties &
.& '
TryGetValue' 2
(2 3
$str3 @
,@ A
outB E
varF I
adminUserIdJ U
)U V
)V W
{ 
environment 
[  
$str  -
]- .
=/ 0
adminUserId1 <
;< =
} 
if 
( 
feature 
. 

Properties &
.& '
TryGetValue' 2
(2 3
$str3 B
,B C
outD G
varH K
adminUserNameL Y
)Y Z
)Z [
{ 
environment   
[    
$str    /
]  / 0
=  1 2
adminUserName  3 @
;  @ A
}!! 
if"" 
("" 
feature"" 
."" 

Properties"" &
.""& '
TryGetValue""' 2
(""2 3
$str""3 =
,""= >
out""? B
var""C F
siteName""G O
)""O P
)""P Q
{## 
environment$$ 
[$$  
$str$$  *
]$$* +
=$$, -
siteName$$. 6
;$$6 7
}%% 
}&& 
return(( 
Task(( 
.(( 
CompletedTask(( %
;((% &
})) 	
}** 
}++ æ¶
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Services\RecipeExecutor.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

class 
RecipeExecutor 
:  !
IRecipeExecutor" 1
{ 
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
IEnumerable $
<$ %
IRecipeEventHandler% 8
>8 9 
_recipeEventHandlers: N
;N O
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 

Dictionary #
<# $
string$ *
,* +
List, 0
<0 1!
IGlobalMethodProvider1 F
>F G
>G H
_methodProvidersI Y
=Z [
new\ _

Dictionary` j
<j k
stringk q
,q r
Lists w
<w x"
IGlobalMethodProvider	x ç
>
ç é
>
é è
(
è ê
)
ê ë
;
ë í
public 
RecipeExecutor 
( 

IShellHost 
	shellHost  
,  !
ShellSettings   
shellSettings   '
,  ' (
IEnumerable!! 
<!! 
IRecipeEventHandler!! +
>!!+ ,
recipeEventHandlers!!- @
,!!@ A
ILogger"" 
<"" 
RecipeExecutor"" "
>""" #
logger""$ *
)""* +
{## 	

_shellHost$$ 
=$$ 
	shellHost$$ "
;$$" #
_shellSettings%% 
=%% 
shellSettings%% *
;%%* + 
_recipeEventHandlers&&  
=&&! "
recipeEventHandlers&&# 6
;&&6 7
_logger'' 
='' 
logger'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
string**  
>**  !
ExecuteAsync**" .
(**. /
string**/ 5
executionId**6 A
,**A B
RecipeDescriptor**C S
recipeDescriptor**T d
,**d e
IDictionary**f q
<**q r
string**r x
,**x y
object	**z Ä
>
**Ä Å
environment
**Ç ç
,
**ç é
CancellationToken
**è †
cancellationToken
**° ≤
)
**≤ ≥
{++ 	
await,,  
_recipeEventHandlers,, &
.,,& '
InvokeAsync,,' 2
(,,2 3
(,,3 4
handler,,4 ;
,,,; <
executionId,,= H
,,,H I
recipeDescriptor,,J Z
),,Z [
=>,,\ ^
handler,,_ f
.,,f g 
RecipeExecutingAsync,,g {
(,,{ |
executionId	,,| á
,
,,á à
recipeDescriptor
,,â ô
)
,,ô ö
,
,,ö õ
executionId
,,ú ß
,
,,ß ®
recipeDescriptor
,,© π
,
,,π ∫
_logger
,,ª ¬
)
,,¬ √
;
,,√ ƒ
try.. 
{// 
var00 
methodProviders00 #
=00$ %
new00& )
List00* .
<00. /!
IGlobalMethodProvider00/ D
>00D E
(00E F
)00F G
;00G H
_methodProviders11  
.11  !
Add11! $
(11$ %
executionId11% 0
,110 1
methodProviders112 A
)11A B
;11B C
methodProviders33 
.33  
Add33  #
(33# $
new33$ '$
ParametersMethodProvider33( @
(33@ A
environment33A L
)33L M
)33M N
;33N O
methodProviders44 
.44  
Add44  #
(44# $
new44$ ''
ConfigurationMethodProvider44( C
(44C D
_shellSettings44D R
.44R S
ShellConfiguration44S e
)44e f
)44f g
;44g h
var66 
result66 
=66 
new66  
RecipeResult66! -
{66. /
ExecutionId660 ;
=66< =
executionId66> I
}66J K
;66K L
using88 
(88 
var88 
stream88 !
=88" #
recipeDescriptor88$ 4
.884 5
RecipeFileInfo885 C
.88C D
CreateReadStream88D T
(88T U
)88U V
)88V W
{99 
using:: 
var:: 
file:: "
=::# $
new::% (
StreamReader::) 5
(::5 6
stream::6 <
)::< =
;::= >
using;; 
var;; 
reader;; $
=;;% &
new;;' *
JsonTextReader;;+ 9
(;;9 :
file;;: >
);;> ?
;;;? @
while>> 
(>> 
await>>  
reader>>! '
.>>' (
	ReadAsync>>( 1
(>>1 2
)>>2 3
)>>3 4
{?? 
if@@ 
(@@ 
reader@@ "
.@@" #
Path@@# '
==@@( *
$str@@+ 6
)@@6 7
{AA 
awaitBB !
readerBB" (
.BB( )
	ReadAsyncBB) 2
(BB2 3
)BB3 4
;BB4 5
varDD 
	variablesDD  )
=DD* +
awaitDD, 1
JObjectDD2 9
.DD9 :
	LoadAsyncDD: C
(DDC D
readerDDD J
)DDJ K
;DDK L
methodProvidersFF +
.FF+ ,
AddFF, /
(FF/ 0
newFF0 3#
VariablesMethodProviderFF4 K
(FFK L
	variablesFFL U
,FFU V
methodProvidersFFW f
)FFf g
)FFg h
;FFh i
}GG 
ifII 
(II 
readerII "
.II" #
PathII# '
==II( *
$strII+ 2
&&II3 5
readerII6 <
.II< =
	TokenTypeII= F
==IIG I
	JsonTokenIIJ S
.IIS T

StartArrayIIT ^
)II^ _
{JJ 
whileKK !
(KK" #
awaitKK# (
readerKK) /
.KK/ 0
	ReadAsyncKK0 9
(KK9 :
)KK: ;
&&KK< >
readerKK? E
.KKE F
DepthKKF K
>KKL M
$numKKN O
)KKO P
{LL 
ifMM  "
(MM# $
readerMM$ *
.MM* +
DepthMM+ 0
==MM1 3
$numMM4 5
)MM5 6
{NN  !
varOO$ '
childOO( -
=OO. /
awaitOO0 5
JObjectOO6 =
.OO= >
	LoadAsyncOO> G
(OOG H
readerOOH N
)OON O
;OOO P
varQQ$ '

recipeStepQQ( 2
=QQ3 4
newQQ5 8"
RecipeExecutionContextQQ9 O
{RR$ %
NameSS( ,
=SS- .
childSS/ 4
.SS4 5
ValueSS5 :
<SS: ;
stringSS; A
>SSA B
(SSB C
$strSSC I
)SSI J
,SSJ K
StepTT( ,
=TT- .
childTT/ 4
,TT4 5
ExecutionIdUU( 3
=UU4 5
executionIdUU6 A
,UUA B
EnvironmentVV( 3
=VV4 5
environmentVV6 A
,VVA B
RecipeDescriptorWW( 8
=WW9 :
recipeDescriptorWW; K
}XX$ %
;XX% &
ifZZ$ &
(ZZ' (
cancellationTokenZZ( 9
.ZZ9 :#
IsCancellationRequestedZZ: Q
)ZZQ R
{[[$ %
_logger\\( /
.\\/ 0
LogError\\0 8
(\\8 9
$str\\9 d
)\\d e
;\\e f
return]]( .
null]]/ 3
;]]3 4
}^^$ %
var``$ '

stepResult``( 2
=``3 4
new``5 8
RecipeStepResult``9 I
{``J K
StepName``L T
=``U V

recipeStep``W a
.``a b
Name``b f
}``g h
;``h i
resultaa$ *
.aa* +
Stepsaa+ 0
.aa0 1
Addaa1 4
(aa4 5

stepResultaa5 ?
)aa? @
;aa@ A!
ExceptionDispatchInfocc$ 9
capturedExceptioncc: K
=ccL M
nullccN R
;ccR S
trydd$ '
{ee$ %
awaitff( -
ExecuteStepAsyncff. >
(ff> ?

recipeStepff? I
)ffI J
;ffJ K

stepResultgg( 2
.gg2 3
IsSuccessfulgg3 ?
=gg@ A
trueggB F
;ggF G
}hh$ %
catchii$ )
(ii* +
	Exceptionii+ 4
eii5 6
)ii6 7
{jj$ %

stepResultkk( 2
.kk2 3
IsSuccessfulkk3 ?
=kk@ A
falsekkB G
;kkG H

stepResultll( 2
.ll2 3
ErrorMessagell3 ?
=ll@ A
ellB C
.llC D
ToStringllD L
(llL M
)llM N
;llN O
capturedExceptionqq( 9
=qq: ;!
ExceptionDispatchInfoqq< Q
.qqQ R
CaptureqqR Y
(qqY Z
eqqZ [
)qq[ \
;qq\ ]
}rr$ %

stepResulttt$ .
.tt. /
IsCompletedtt/ :
=tt; <
truett= A
;ttA B
ifvv$ &
(vv' (

stepResultvv( 2
.vv2 3
IsSuccessfulvv3 ?
==vv@ B
falsevvC H
)vvH I
{ww$ %
capturedExceptionxx( 9
.xx9 :
Throwxx: ?
(xx? @
)xx@ A
;xxA B
}yy$ %
if{{$ &
({{' (

recipeStep{{( 2
.{{2 3
InnerRecipes{{3 ?
!={{@ B
null{{C G
){{G H
{||$ %
foreach}}( /
(}}0 1
var}}1 4

descriptor}}5 ?
in}}@ B

recipeStep}}C M
.}}M N
InnerRecipes}}N Z
)}}Z [
{~~( )
var, /
innerExecutionId0 @
=A B
GuidC G
.G H
NewGuidH O
(O P
)P Q
.Q R
ToStringR Z
(Z [
)[ \
;\ ]
await
ÄÄ, 1
ExecuteAsync
ÄÄ2 >
(
ÄÄ> ?
innerExecutionId
ÄÄ? O
,
ÄÄO P

descriptor
ÄÄQ [
,
ÄÄ[ \
environment
ÄÄ] h
,
ÄÄh i
cancellationToken
ÄÄj {
)
ÄÄ{ |
;
ÄÄ| }
}
ÅÅ( )
}
ÇÇ$ %
}
ÉÉ  !
}
ÑÑ 
}
ÖÖ 
}
ÜÜ 
}
áá 
await
ââ "
_recipeEventHandlers
ââ *
.
ââ* +
InvokeAsync
ââ+ 6
(
ââ6 7
(
ââ7 8
handler
ââ8 ?
,
ââ? @
executionId
ââA L
,
ââL M
recipeDescriptor
ââN ^
)
ââ^ _
=>
ââ` b
handler
ââc j
.
ââj k!
RecipeExecutedAsync
ââk ~
(
ââ~ 
executionIdââ ä
,ââä ã 
recipeDescriptorââå ú
)ââú ù
,ââù û
executionIdââü ™
,ââ™ ´ 
recipeDescriptorââ¨ º
,ââº Ω
_loggerââæ ≈
)ââ≈ ∆
;ââ∆ «
return
ãã 
executionId
ãã "
;
ãã" #
}
åå 
catch
çç 
(
çç 
	Exception
çç 
)
çç 
{
éé 
await
èè "
_recipeEventHandlers
èè *
.
èè* +
InvokeAsync
èè+ 6
(
èè6 7
(
èè7 8
handler
èè8 ?
,
èè? @
executionId
èèA L
,
èèL M
recipeDescriptor
èèN ^
)
èè^ _
=>
èè` b
handler
èèc j
.
èèj k"
ExecutionFailedAsync
èèk 
(èè Ä
executionIdèèÄ ã
,èèã å 
recipeDescriptorèèç ù
)èèù û
,èèû ü
executionIdèè† ´
,èè´ ¨ 
recipeDescriptorèè≠ Ω
,èèΩ æ
_loggerèèø ∆
)èè∆ «
;èè« »
throw
ëë 
;
ëë 
}
íí 
finally
ìì 
{
îî 
_methodProviders
ïï  
.
ïï  !
Remove
ïï! '
(
ïï' (
executionId
ïï( 3
)
ïï3 4
;
ïï4 5
}
ññ 
}
óó 	
private
ôô 
async
ôô 
Task
ôô 
ExecuteStepAsync
ôô +
(
ôô+ ,$
RecipeExecutionContext
ôô, B

recipeStep
ôôC M
)
ôôM N
{
öö 	
var
õõ 

shellScope
õõ 
=
õõ 

recipeStep
õõ '
.
õõ' (
RecipeDescriptor
õõ( 8
.
õõ8 9
RequireNewScope
õõ9 H
?
úú 
await
úú 

_shellHost
úú "
.
úú" #
GetScopeAsync
úú# 0
(
úú0 1
_shellSettings
úú1 ?
)
úú? @
:
ùù 

ShellScope
ùù 
.
ùù 
Current
ùù $
;
ùù$ %
await
üü 

shellScope
üü 
.
üü 

UsingAsync
üü '
(
üü' (
async
üü( -
scope
üü. 3
=>
üü4 6
{
†† 
var
°°  
recipeStepHandlers
°° &
=
°°' (
scope
°°) .
.
°°. /
ServiceProvider
°°/ >
.
°°> ?
GetServices
°°? J
<
°°J K 
IRecipeStepHandler
°°K ]
>
°°] ^
(
°°^ _
)
°°_ `
;
°°` a
var
¢¢ 
scriptingManager
¢¢ $
=
¢¢% &
scope
¢¢' ,
.
¢¢, -
ServiceProvider
¢¢- <
.
¢¢< = 
GetRequiredService
¢¢= O
<
¢¢O P
IScriptingManager
¢¢P a
>
¢¢a b
(
¢¢b c
)
¢¢c d
;
¢¢d e
EvaluateJsonTree
••  
(
••  !
scriptingManager
••! 1
,
••1 2

recipeStep
••3 =
,
••= >

recipeStep
••? I
.
••I J
Step
••J N
)
••N O
;
••O P
if
ßß 
(
ßß 
_logger
ßß 
.
ßß 
	IsEnabled
ßß %
(
ßß% &
LogLevel
ßß& .
.
ßß. /
Information
ßß/ :
)
ßß: ;
)
ßß; <
{
®® 
_logger
©© 
.
©© 
LogInformation
©© *
(
©©* +
$str
©©+ R
,
©©R S

recipeStep
©©T ^
.
©©^ _
Name
©©_ c
)
©©c d
;
©©d e
}
™™ 
await
¨¨ "
_recipeEventHandlers
¨¨ *
.
¨¨* +
InvokeAsync
¨¨+ 6
(
¨¨6 7
(
¨¨7 8
handler
¨¨8 ?
,
¨¨? @

recipeStep
¨¨A K
)
¨¨K L
=>
¨¨M O
handler
¨¨P W
.
¨¨W X&
RecipeStepExecutingAsync
¨¨X p
(
¨¨p q

recipeStep
¨¨q {
)
¨¨{ |
,
¨¨| }

recipeStep¨¨~ à
,¨¨à â
_logger¨¨ä ë
)¨¨ë í
;¨¨í ì
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
recipeStepHandler
ÆÆ .
in
ÆÆ/ 1 
recipeStepHandlers
ÆÆ2 D
)
ÆÆD E
{
ØØ 
await
∞∞ 
recipeStepHandler
∞∞ +
.
∞∞+ ,
ExecuteAsync
∞∞, 8
(
∞∞8 9

recipeStep
∞∞9 C
)
∞∞C D
;
∞∞D E
}
±± 
await
≥≥ "
_recipeEventHandlers
≥≥ *
.
≥≥* +
InvokeAsync
≥≥+ 6
(
≥≥6 7
(
≥≥7 8
handler
≥≥8 ?
,
≥≥? @

recipeStep
≥≥A K
)
≥≥K L
=>
≥≥M O
handler
≥≥P W
.
≥≥W X%
RecipeStepExecutedAsync
≥≥X o
(
≥≥o p

recipeStep
≥≥p z
)
≥≥z {
,
≥≥{ |

recipeStep≥≥} á
,≥≥á à
_logger≥≥â ê
)≥≥ê ë
;≥≥ë í
if
µµ 
(
µµ 
_logger
µµ 
.
µµ 
	IsEnabled
µµ %
(
µµ% &
LogLevel
µµ& .
.
µµ. /
Information
µµ/ :
)
µµ: ;
)
µµ; <
{
∂∂ 
_logger
∑∑ 
.
∑∑ 
LogInformation
∑∑ *
(
∑∑* +
$str
∑∑+ [
,
∑∑[ \

recipeStep
∑∑] g
.
∑∑g h
Name
∑∑h l
)
∑∑l m
;
∑∑m n
}
∏∏ 
}
ππ 
)
ππ 
;
ππ 
}
∫∫ 	
private
øø 
void
øø 
EvaluateJsonTree
øø %
(
øø% &
IScriptingManager
øø& 7
scriptingManager
øø8 H
,
øøH I$
RecipeExecutionContext
øøJ `
context
øøa h
,
øøh i
JToken
øøj p
node
øøq u
)
øøu v
{
¿¿ 	
switch
¡¡ 
(
¡¡ 
node
¡¡ 
.
¡¡ 
Type
¡¡ 
)
¡¡ 
{
¬¬ 
case
√√ 

JTokenType
√√ 
.
√√  
Array
√√  %
:
√√% &
var
ƒƒ 
array
ƒƒ 
=
ƒƒ 
(
ƒƒ  !
JArray
ƒƒ! '
)
ƒƒ' (
node
ƒƒ( ,
;
ƒƒ, -
for
≈≈ 
(
≈≈ 
var
≈≈ 
i
≈≈ 
=
≈≈  
$num
≈≈! "
;
≈≈" #
i
≈≈$ %
<
≈≈& '
array
≈≈( -
.
≈≈- .
Count
≈≈. 3
;
≈≈3 4
i
≈≈5 6
++
≈≈6 8
)
≈≈8 9
{
∆∆ 
EvaluateJsonTree
«« (
(
««( )
scriptingManager
««) 9
,
««9 :
context
««; B
,
««B C
array
««D I
[
««I J
i
««J K
]
««K L
)
««L M
;
««M N
}
»» 
break
   
;
   
case
ÀÀ 

JTokenType
ÀÀ 
.
ÀÀ  
Object
ÀÀ  &
:
ÀÀ& '
foreach
ÃÃ 
(
ÃÃ 
var
ÃÃ  
property
ÃÃ! )
in
ÃÃ* ,
(
ÃÃ- .
JObject
ÃÃ. 5
)
ÃÃ5 6
node
ÃÃ6 :
)
ÃÃ: ;
{
ÕÕ 
EvaluateJsonTree
ŒŒ (
(
ŒŒ( )
scriptingManager
ŒŒ) 9
,
ŒŒ9 :
context
ŒŒ; B
,
ŒŒB C
property
ŒŒD L
.
ŒŒL M
Value
ŒŒM R
)
ŒŒR S
;
ŒŒS T
}
œœ 
break
—— 
;
—— 
case
““ 

JTokenType
““ 
.
““  
String
““  &
:
““& '
const
”” 
char
”” 
scriptSeparator
”” .
=
””/ 0
$char
””1 4
;
””4 5
var
‘‘ 
value
‘‘ 
=
‘‘ 
node
‘‘  $
.
‘‘$ %
Value
‘‘% *
<
‘‘* +
string
‘‘+ 1
>
‘‘1 2
(
‘‘2 3
)
‘‘3 4
;
‘‘4 5
while
◊◊ 
(
◊◊ 
value
◊◊  
.
◊◊  !

StartsWith
◊◊! +
(
◊◊+ ,
$char
◊◊, /
)
◊◊/ 0
&&
◊◊1 3
value
◊◊4 9
.
◊◊9 :
EndsWith
◊◊: B
(
◊◊B C
$char
◊◊C F
)
◊◊F G
)
◊◊G H
{
ÿÿ 
var
ŸŸ "
scriptSeparatorIndex
ŸŸ 0
=
ŸŸ1 2
value
ŸŸ3 8
.
ŸŸ8 9
IndexOf
ŸŸ9 @
(
ŸŸ@ A
scriptSeparator
ŸŸA P
)
ŸŸP Q
;
ŸŸQ R
if
€€ 
(
€€ 
!
€€ 
(
€€ "
scriptSeparatorIndex
€€ 2
>
€€3 4
-
€€5 6
$num
€€6 7
&&
€€8 :
value
€€; @
[
€€@ A
$num
€€A B
..
€€B D"
scriptSeparatorIndex
€€D X
]
€€X Y
.
€€Y Z
All
€€Z ]
(
€€] ^
c
€€^ _
=>
€€` b
Char
€€c g
.
€€g h
IsLetter
€€h p
(
€€p q
c
€€q r
)
€€r s
)
€€s t
)
€€t u
)
€€u v
{
‹‹ 
break
›› !
;
››! "
}
ﬁﬁ 
value
‡‡ 
=
‡‡ 
value
‡‡  %
.
‡‡% &
Trim
‡‡& *
(
‡‡* +
$char
‡‡+ .
,
‡‡. /
$char
‡‡0 3
)
‡‡3 4
;
‡‡4 5
value
‚‚ 
=
‚‚ 
(
‚‚  !
scriptingManager
‚‚! 1
.
‚‚1 2
Evaluate
‚‚2 :
(
‚‚: ;
value
„„ !
,
„„! "
context
‰‰ #
.
‰‰# $
RecipeDescriptor
‰‰$ 4
.
‰‰4 5
FileProvider
‰‰5 A
,
‰‰A B
context
ÂÂ #
.
ÂÂ# $
RecipeDescriptor
ÂÂ$ 4
.
ÂÂ4 5
BasePath
ÂÂ5 =
,
ÂÂ= >
_methodProviders
ÊÊ ,
[
ÊÊ, -
context
ÊÊ- 4
.
ÊÊ4 5
ExecutionId
ÊÊ5 @
]
ÊÊ@ A
)
ÊÊA B
??
ÁÁ 
$str
ÁÁ !
)
ÁÁ! "
.
ÁÁ" #
ToString
ÁÁ# +
(
ÁÁ+ ,
)
ÁÁ, -
;
ÁÁ- .
(
ÈÈ 
(
ÈÈ 
JValue
ÈÈ  
)
ÈÈ  !
node
ÈÈ! %
)
ÈÈ% &
.
ÈÈ& '
Value
ÈÈ' ,
=
ÈÈ- .
value
ÈÈ/ 4
;
ÈÈ4 5
}
ÍÍ 
break
ÏÏ 
;
ÏÏ 
}
ÌÌ 
}
ÓÓ 	
}
ÔÔ 
} „%
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Services\RecipeHarvester.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

class 
RecipeHarvester  
:! "
IRecipeHarvester# 3
{ 
private 
readonly 
IRecipeReader &
_recipeReader' 4
;4 5
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly 
ILogger  
_logger! (
;( )
public 
RecipeHarvester 
( 
IRecipeReader 
recipeReader &
,& '
IExtensionManager 
extensionManager .
,. /
IHostEnvironment 
hostingEnvironment /
,/ 0
ILogger 
< 
RecipeHarvester #
># $
logger% +
)+ ,
{ 	
_recipeReader 
= 
recipeReader (
;( )
_extensionManager 
= 
extensionManager  0
;0 1
_hostingEnvironment 
=  !
hostingEnvironment" 4
;4 5
_logger 
= 
logger 
; 
} 	
public!! 
virtual!! 
Task!! 
<!! 
IEnumerable!! '
<!!' (
RecipeDescriptor!!( 8
>!!8 9
>!!9 :
HarvestRecipesAsync!!; N
(!!N O
)!!O P
{"" 	
return## 
_extensionManager## $
.##$ %
GetExtensions##% 2
(##2 3
)##3 4
.##4 5
InvokeAsync##5 @
(##@ A
HarvestRecipes##A O
,##O P
_logger##Q X
)##X Y
;##Y Z
}$$ 	
private&& 
Task&& 
<&& 
IEnumerable&&  
<&&  !
RecipeDescriptor&&! 1
>&&1 2
>&&2 3
HarvestRecipes&&4 B
(&&B C
IExtensionInfo&&C Q
	extension&&R [
)&&[ \
{'' 	
var(( 
folderSubPath(( 
=(( 
PathExtensions((  .
.((. /
Combine((/ 6
(((6 7
	extension((7 @
.((@ A
SubPath((A H
,((H I
$str((J S
)((S T
;((T U
return)) 
HarvestRecipesAsync)) &
())& '
folderSubPath))' 4
)))4 5
;))5 6
}** 	
	protected11 
Task11 
<11 
IEnumerable11 "
<11" #
RecipeDescriptor11# 3
>113 4
>114 5
HarvestRecipesAsync116 I
(11I J
string11J P
path11Q U
)11U V
{22 	
var33 
recipeDescriptors33 !
=33" #
new33$ '
List33( ,
<33, -
RecipeDescriptor33- =
>33= >
(33> ?
)33? @
;33@ A
var55 
recipeFiles55 
=55 
_hostingEnvironment55 1
.551 2#
ContentRootFileProvider552 I
.55I J 
GetDirectoryContents55J ^
(55^ _
path55_ c
)55c d
.66 
Where66 
(66 
x66 
=>66 
!66 
x66 
.66 
IsDirectory66 *
&&66+ -
x66. /
.66/ 0
Name660 4
.664 5
EndsWith665 =
(66= >
$str66> L
,66L M
StringComparison66N ^
.66^ _
Ordinal66_ f
)66f g
)66g h
;66h i
recipeDescriptors88 
.88 
AddRange88 &
(88& '
recipeFiles88' 2
.882 3
Select883 9
(889 :

recipeFile88: D
=>88E G
_recipeReader88H U
.88U V
GetRecipeDescriptor88V i
(88i j
path88j n
,88n o

recipeFile88p z
,88z { 
_hostingEnvironment	88| è
.
88è ê%
ContentRootFileProvider
88ê ß
)
88ß ®
.
88® ©
Result
88© Ø
)
88Ø ∞
)
88∞ ±
;
88± ≤
return:: 
Task:: 
.:: 

FromResult:: "
<::" #
IEnumerable::# .
<::. /
RecipeDescriptor::/ ?
>::? @
>::@ A
(::A B
recipeDescriptors::B S
)::S T
;::T U
};; 	
}<< 
}== ¸-
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Services\RecipeMigrator.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{ 
public 

class 
RecipeMigrator 
:  !
IRecipeMigrator" 1
{ 
private 
readonly 
IRecipeReader &
_recipeReader' 4
;4 5
private 
readonly 
IRecipeExecutor (
_recipeExecutor) 8
;8 9
private 
readonly 
IHostEnvironment )
_hostingEnvironment* =
;= >
private 
readonly  
ITypeFeatureProvider - 
_typeFeatureProvider. B
;B C
private 
readonly 
IEnumerable $
<$ %&
IRecipeEnvironmentProvider% ?
>? @!
_environmentProvidersA V
;V W
private 
readonly 
ILogger  
_logger! (
;( )
public 
RecipeMigrator 
( 
IRecipeReader 
recipeReader &
,& '
IRecipeExecutor 
recipeExecutor *
,* +
IHostEnvironment 
hostingEnvironment /
,/ 0 
ITypeFeatureProvider  
typeFeatureProvider! 4
,4 5
IEnumerable 
< &
IRecipeEnvironmentProvider 2
>2 3 
environmentProviders4 H
,H I
ILogger 
< 
RecipeMigrator "
>" #
logger$ *
)* +
{ 	
_recipeReader   
=   
recipeReader   (
;  ( )
_recipeExecutor!! 
=!! 
recipeExecutor!! ,
;!!, -
_hostingEnvironment"" 
=""  !
hostingEnvironment""" 4
;""4 5 
_typeFeatureProvider##  
=##! "
typeFeatureProvider### 6
;##6 7!
_environmentProviders$$ !
=$$" # 
environmentProviders$$$ 8
;$$8 9
_logger%% 
=%% 
logger%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
string((  
>((  !
ExecuteAsync((" .
(((. /
string((/ 5
recipeFileName((6 D
,((D E
IDataMigration((F T
	migration((U ^
)((^ _
{)) 	
var** 
featureInfo** 
=**  
_typeFeatureProvider** 2
.**2 3#
GetFeatureForDependency**3 J
(**J K
	migration**K T
.**T U
GetType**U \
(**\ ]
)**] ^
)**^ _
;**_ `
var,, 
recipeBasePath,, 
=,,  
Path,,! %
.,,% &
Combine,,& -
(,,- .
featureInfo,,. 9
.,,9 :
	Extension,,: C
.,,C D
SubPath,,D K
,,,K L
$str,,M Y
),,Y Z
.,,Z [
Replace,,[ b
(,,b c
$char,,c g
,,,g h
$char,,i l
),,l m
;,,m n
var-- 
recipeFilePath-- 
=--  
Path--! %
.--% &
Combine--& -
(--- .
recipeBasePath--. <
,--< =
recipeFileName--> L
)--L M
.--M N
Replace--N U
(--U V
$char--V Z
,--Z [
$char--\ _
)--_ `
;--` a
var.. 
recipeFileInfo.. 
=..  
_hostingEnvironment..! 4
...4 5#
ContentRootFileProvider..5 L
...L M
GetFileInfo..M X
(..X Y
recipeFilePath..Y g
)..g h
;..h i
var// 
recipeDescriptor//  
=//! "
await//# (
_recipeReader//) 6
.//6 7
GetRecipeDescriptor//7 J
(//J K
recipeBasePath//K Y
,//Y Z
recipeFileInfo//[ i
,//i j
_hostingEnvironment//k ~
.//~ $
ContentRootFileProvider	// ñ
)
//ñ ó
;
//ó ò
recipeDescriptor00 
.00 
RequireNewScope00 ,
=00- .
false00/ 4
;004 5
var22 
environment22 
=22 
new22 !

Dictionary22" ,
<22, -
string22- 3
,223 4
object225 ;
>22; <
(22< =
)22= >
;22> ?
await44 !
_environmentProviders44 '
.44' (
OrderBy44( /
(44/ 0
x440 1
=>442 4
x445 6
.446 7
Order447 <
)44< =
.44= >
InvokeAsync44> I
(44I J
(44J K
provider44K S
,44S T
env44U X
)44X Y
=>44Z \
provider44] e
.44e f$
PopulateEnvironmentAsync44f ~
(44~ 
env	44 Ç
)
44Ç É
,
44É Ñ
environment
44Ö ê
,
44ê ë
_logger
44í ô
)
44ô ö
;
44ö õ
var66 
executionId66 
=66 
Guid66 "
.66" #
NewGuid66# *
(66* +
)66+ ,
.66, -
ToString66- 5
(665 6
$str666 9
)669 :
;66: ;
return77 
await77 
_recipeExecutor77 (
.77( )
ExecuteAsync77) 5
(775 6
executionId776 A
,77A B
recipeDescriptor77C S
,77S T
environment77U `
,77` a
CancellationToken77b s
.77s t
None77t x
)77x y
;77y z
}88 	
}99 
}:: õ
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\Services\RecipeReader.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Services &
{		 
public

 

class

 
RecipeReader

 
:

 
IRecipeReader

  -
{ 
public 
async 
Task 
< 
RecipeDescriptor *
>* +
GetRecipeDescriptor, ?
(? @
string@ F
recipeBasePathG U
,U V
	IFileInfoW `
recipeFileInfoa o
,o p
IFileProviderq ~
recipeFileProvider	 ë
)
ë í
{ 	
using 
( 
var 
stream 
= 
recipeFileInfo  .
.. /
CreateReadStream/ ?
(? @
)@ A
)A B
{ 
using 
( 
var 
reader !
=" #
new$ '
StreamReader( 4
(4 5
stream5 ;
); <
)< =
{ 
using 
( 
var 

jsonReader )
=* +
new, /
JsonTextReader0 >
(> ?
reader? E
)E F
)F G
{ 
var 
recipeDescriptor ,
=- .
(/ 0
await0 5
JObject6 =
.= >
	LoadAsync> G
(G H

jsonReaderH R
)R S
)S T
.T U
ToObjectU ]
<] ^
RecipeDescriptor^ n
>n o
(o p
)p q
;q r
recipeDescriptor (
.( )
FileProvider) 5
=6 7
recipeFileProvider8 J
;J K
recipeDescriptor (
.( )
BasePath) 1
=2 3
recipeBasePath4 B
;B C
recipeDescriptor (
.( )
RecipeFileInfo) 7
=8 9
recipeFileInfo: H
;H I
return 
recipeDescriptor /
;/ 0
} 
} 
} 
}   	
}!! 
}"" ÷
ãD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.Recipes.Core\VariablesMethodProvider.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{		 
public

 

class

 #
VariablesMethodProvider

 (
:

) *!
IGlobalMethodProvider

+ @
{ 
private 
readonly 
GlobalMethod %
_globalMethod& 3
;3 4
public #
VariablesMethodProvider &
(& '
JObject' .
	variables/ 8
,8 9
List: >
<> ?!
IGlobalMethodProvider? T
>T U!
scopedMethodProvidersV k
)k l
{ 	
_globalMethod 
= 
new 
GlobalMethod  ,
{ 
Name 
= 
$str "
," #
Method 
= 
serviceprovider (
=>) +
(, -
Func- 1
<1 2
string2 8
,8 9
object: @
>@ A
)A B
(B C
nameC G
=>H J
{ 
var 
value 
= 
	variables  )
[) *
name* .
]. /
./ 0
Value0 5
<5 6
string6 <
>< =
(= >
)> ?
;? @
while 
( 
value  
.  !

StartsWith! +
(+ ,
$char, /
)/ 0
&&1 3
value4 9
.9 :
EndsWith: B
(B C
$charC F
)F G
)G H
{ 
value 
= 
value  %
.% &
Trim& *
(* +
$char+ .
,. /
$char0 3
)3 4
;4 5
value 
= 
(  !
ScriptingManager! 1
.1 2
Evaluate2 :
(: ;
value; @
,@ A
nullB F
,F G
nullH L
,L M!
scopedMethodProvidersN c
)c d
??e g
$strh j
)j k
.k l
ToStringl t
(t u
)u v
;v w
	variables !
[! "
name" &
]& '
=( )
new* -
JValue. 4
(4 5
value5 :
): ;
;; <
} 
return 
value  
;  !
}   
)   
}!! 
;!! 
}"" 	
public$$ 
IScriptingManager$$  
ScriptingManager$$! 1
=>$$2 4

ShellScope$$5 ?
.$$? @
Services$$@ H
.$$H I
GetRequiredService$$I [
<$$[ \
IScriptingManager$$\ m
>$$m n
($$n o
)$$o p
;$$p q
public&& 
IEnumerable&& 
<&& 
GlobalMethod&& '
>&&' (

GetMethods&&) 3
(&&3 4
)&&4 5
{'' 	
yield(( 
return(( 
_globalMethod(( &
;((& '
})) 	
}** 
}++ 