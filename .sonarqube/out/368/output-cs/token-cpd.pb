ã
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{ 
public		 

class		 
	AdminMenu		 
:		 
INavigationProvider		 0
{

 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
configuration, 9
=>: <
configuration= J
. 
AddClass 
( 
$str #
)# $
.$ %
Id% '
(' (
$str( 1
)1 2
. 
Add 
( 
S 
[ 
$str  
]  !
,! "
S# $
[$ %
$str% .
]. /
./ 0
PrefixPosition0 >
(> ?
)? @
,@ A
recipesB I
=>J L
recipesM T
. 

Permission 
(  
StandardPermissions  3
.3 4
	SiteOwner4 =
)= >
. 
Action 
( 
$str #
,# $
$str% ,
,, -
new. 1
{2 3
area4 8
=9 :
$str; P
}Q R
)R S
. 
LocalNav 
( 
) 
)  
) 
; 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
}$$ Ü)
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\Commands\RecipesCommands.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Commands &
{		 
public

 

class

 
RecipesCommands

  
:

! "!
DefaultCommandHandler

# 8
{ 
private 
readonly 
IEnumerable $
<$ %
IRecipeHarvester% 5
>5 6
_recipeHarvesters7 H
;H I
public 
RecipesCommands 
( 
IEnumerable 
< 
IRecipeHarvester (
>( )
recipeHarvesters* :
,: ;
IStringLocalizer 
< 
RecipesCommands ,
>, -
	localizer. 7
)7 8
:9 :
base; ?
(? @
	localizer@ I
)I J
{ 	
_recipeHarvesters 
= 
recipeHarvesters  0
;0 1
} 	
[ 	
CommandHelp	 
( 
$str &
,& '
$str( Q
)Q R
]R S
[ 	
CommandName	 
( 
$str &
)& '
]' (
public 
async 
Task 
Harvest !
(! "
)" #
{ 	
var 
recipeCollections !
=" #
await$ )
Task* .
.. /
WhenAll/ 6
(6 7
_recipeHarvesters7 H
.H I
SelectI O
(O P
xP Q
=>R T
xU V
.V W
HarvestRecipesAsyncW j
(j k
)k l
)l m
)m n
;n o
var 
recipes 
= 
recipeCollections +
.+ ,

SelectMany, 6
(6 7
x7 8
=>9 ;
x< =
)= >
.> ?
ToArray? F
(F G
)G H
;H I
if 
( 
! 
recipes 
. 
Any 
( 
) 
) 
{ 
await 
Context 
. 
Output $
.$ %
WriteLineAsync% 3
(3 4
S4 5
[5 6
$str6 I
]I J
)J K
;K L
return 
; 
}   
await"" 
Context"" 
."" 
Output""  
.""  !
WriteLineAsync""! /
(""/ 0
S""0 1
[""1 2
$str""2 M
]""M N
)""N O
;""O P
await## 
Context## 
.## 
Output##  
.##  !
WriteLineAsync##! /
(##/ 0
$str##0 L
)##L M
;##M N
await$$ 
Context$$ 
.$$ 
Output$$  
.$$  !
WriteLineAsync$$! /
($$/ 0
)$$0 1
;$$1 2
foreach&& 
(&& 
var&& 
recipe&& 
in&&  "
recipes&&# *
)&&* +
{'' 
await(( 
Context(( 
.(( 
Output(( $
.(($ %
WriteLineAsync((% 3
(((3 4
S((4 5
[((5 6
$str((6 C
,((C D
recipe((E K
.((K L
Name((L P
]((P Q
)((Q R
;((R S
await)) 
Context)) 
.)) 
Output)) $
.))$ %
WriteLineAsync))% 3
())3 4
S))4 5
[))5 6
$str))6 J
,))J K
recipe))L R
.))R S
Version))S Z
]))Z [
)))[ \
;))\ ]
await** 
Context** 
.** 
Output** $
.**$ %
WriteLineAsync**% 3
(**3 4
S**4 5
[**5 6
$str**6 J
,**J K
string**L R
.**R S
Join**S W
(**W X
$str**X [
,**[ \
recipe**] c
.**c d
Tags**d h
)**h i
]**i j
)**j k
;**k l
await++ 
Context++ 
.++ 
Output++ $
.++$ %
WriteLineAsync++% 3
(++3 4
S++4 5
[++5 6
$str++6 J
,++J K
recipe++L R
.++R S
Description++S ^
]++^ _
)++_ `
;++` a
await,, 
Context,, 
.,, 
Output,, $
.,,$ %
WriteLineAsync,,% 3
(,,3 4
S,,4 5
[,,5 6
$str,,6 J
,,,J K
recipe,,L R
.,,R S
Author,,S Y
],,Y Z
),,Z [
;,,[ \
await-- 
Context-- 
.-- 
Output-- $
.--$ %
WriteLineAsync--% 3
(--3 4
S--4 5
[--5 6
$str--6 J
,--J K
recipe--L R
.--R S
WebSite--S Z
]--Z [
)--[ \
;--\ ]
}.. 
}// 	
}00 
}11 –[
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
Controllers )
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IEnumerable $
<$ %
IRecipeHarvester% 5
>5 6
_recipeHarvesters7 H
;H I
private 
readonly 
IRecipeExecutor (
_recipeExecutor) 8
;8 9
private 
readonly 
IEnumerable $
<$ %&
IRecipeEnvironmentProvider% ?
>? @!
_environmentProvidersA V
;V W
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private   
readonly   
IHtmlLocalizer   '
H  ( )
;  ) *
private!! 
readonly!! 
ILogger!!  
_logger!!! (
;!!( )
public## 
AdminController## 
(## 

IShellHost$$ 
	shellHost$$  
,$$  !
ShellSettings%% 
shellSettings%% '
,%%' (
IExtensionManager&& 
extensionManager&& .
,&&. /!
IAuthorizationService'' ! 
authorizationService''" 6
,''6 7
IEnumerable(( 
<(( 
IRecipeHarvester(( (
>((( )
recipeHarvesters((* :
,((: ;
IRecipeExecutor)) 
recipeExecutor)) *
,))* +
IEnumerable** 
<** &
IRecipeEnvironmentProvider** 2
>**2 3 
environmentProviders**4 H
,**H I
	INotifier++ 
notifier++ 
,++ 
IHtmlLocalizer,, 
<,, 
AdminController,, *
>,,* +
	localizer,,, 5
,,,5 6
ILogger-- 
<-- 
AdminController-- #
>--# $
logger--% +
)--+ ,
{.. 	

_shellHost// 
=// 
	shellHost// "
;//" #
_shellSettings00 
=00 
shellSettings00 *
;00* +
_extensionManager11 
=11 
extensionManager11  0
;110 1!
_authorizationService22 !
=22" # 
authorizationService22$ 8
;228 9
_recipeHarvesters33 
=33 
recipeHarvesters33  0
;330 1
_recipeExecutor44 
=44 
recipeExecutor44 ,
;44, -!
_environmentProviders55 !
=55" # 
environmentProviders55$ 8
;558 9
	_notifier66 
=66 
notifier66  
;66  !
H77 
=77 
	localizer77 
;77 
_logger88 
=88 
logger88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
ActionResult;; &
>;;& '
Index;;( -
(;;- .
);;. /
{<< 	
if== 
(== 
!== 
await== !
_authorizationService== ,
.==, -
AuthorizeAsync==- ;
(==; <
User==< @
,==@ A
StandardPermissions==B U
.==U V
	SiteOwner==V _
)==_ `
)==` a
{>> 
return?? 
Forbid?? 
(?? 
)?? 
;??  
}@@ 
varBB 
recipeCollectionsBB !
=BB" #
awaitBB$ )
TaskBB* .
.BB. /
WhenAllBB/ 6
(BB6 7
_recipeHarvestersBB7 H
.BBH I
SelectBBI O
(BBO P
xBBP Q
=>BBR T
xBBU V
.BBV W
HarvestRecipesAsyncBBW j
(BBj k
)BBk l
)BBl m
)BBm n
;BBn o
varCC 
recipesCC 
=CC 
recipeCollectionsCC +
.CC+ ,

SelectManyCC, 6
(CC6 7
xCC7 8
=>CC9 ;
xCC< =
)CC= >
;CC> ?
recipesFF 
=FF 
recipesFF 
.FF 
WhereFF #
(FF# $
rFF$ %
=>FF& (
rFF) *
.FF* +
IsSetupRecipeFF+ 8
==FF9 ;
falseFF< A
&&FFB D
!FFE F
rFFF G
.FFG H
TagsFFH L
.FFL M
ContainsFFM U
(FFU V
$strFFV ^
,FF^ _
StringComparerFF` n
.FFn o'
InvariantCultureIgnoreCase	FFo â
)
FFâ ä
)
FFä ã
;
FFã å
varHH 
featuresHH 
=HH 
_extensionManagerHH ,
.HH, -
GetFeaturesHH- 8
(HH8 9
)HH9 :
;HH: ;
varJJ 
modelJJ 
=JJ 
recipesJJ 
.JJ  
SelectJJ  &
(JJ& '
recipeJJ' -
=>JJ. 0
newJJ1 4
RecipeViewModelJJ5 D
{KK 
NameLL 
=LL 
recipeLL 
.LL 
NameLL "
,LL" #
DisplayNameMM 
=MM 
recipeMM $
.MM$ %
DisplayNameMM% 0
,MM0 1
FileNameNN 
=NN 
recipeNN !
.NN! "
RecipeFileInfoNN" 0
.NN0 1
NameNN1 5
,NN5 6
BasePathOO 
=OO 
recipeOO !
.OO! "
BasePathOO" *
,OO* +
TagsPP 
=PP 
recipePP 
.PP 
TagsPP "
,PP" #
IsSetupRecipeQQ 
=QQ 
recipeQQ  &
.QQ& '
IsSetupRecipeQQ' 4
,QQ4 5
FeatureRR 
=RR 
featuresRR "
.RR" #
FirstOrDefaultRR# 1
(RR1 2
fRR2 3
=>RR4 6
recipeRR7 =
.RR= >
BasePathRR> F
.RRF G
ContainsRRG O
(RRO P
fRRP Q
.RRQ R
	ExtensionRRR [
.RR[ \
SubPathRR\ c
)RRc d
)RRd e
?RRe f
.RRf g
NameRRg k
??RRl n
$strRRo |
,RR| }
DescriptionSS 
=SS 
recipeSS $
.SS$ %
DescriptionSS% 0
}TT 
)TT 
.TT 
ToArrayTT 
(TT 
)TT 
;TT 
returnVV 
ViewVV 
(VV 
modelVV 
)VV 
;VV 
}WW 	
[YY 	
HttpPostYY	 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
ActionResultZZ &
>ZZ& '
ExecuteZZ( /
(ZZ/ 0
stringZZ0 6
basePathZZ7 ?
,ZZ? @
stringZZA G
fileNameZZH P
)ZZP Q
{[[ 	
if\\ 
(\\ 
!\\ 
await\\ !
_authorizationService\\ ,
.\\, -
AuthorizeAsync\\- ;
(\\; <
User\\< @
,\\@ A
StandardPermissions\\B U
.\\U V
	SiteOwner\\V _
)\\_ `
)\\` a
{]] 
return^^ 
Forbid^^ 
(^^ 
)^^ 
;^^  
}__ 
varaa 
recipeCollectionsaa !
=aa" #
awaitaa$ )
Taskaa* .
.aa. /
WhenAllaa/ 6
(aa6 7
_recipeHarvestersaa7 H
.aaH I
SelectaaI O
(aaO P
xaaP Q
=>aaR T
xaaU V
.aaV W
HarvestRecipesAsyncaaW j
(aaj k
)aak l
)aal m
)aam n
;aan o
varbb 
recipesbb 
=bb 
recipeCollectionsbb +
.bb+ ,

SelectManybb, 6
(bb6 7
xbb7 8
=>bb9 ;
xbb< =
)bb= >
;bb> ?
vardd 
recipedd 
=dd 
recipesdd  
.dd  !
FirstOrDefaultdd! /
(dd/ 0
cdd0 1
=>dd2 4
cdd5 6
.dd6 7
RecipeFileInfodd7 E
.ddE F
NameddF J
==ddK M
fileNameddN V
&&ddW Y
cddZ [
.dd[ \
BasePathdd\ d
==dde g
basePathddh p
)ddp q
;ddq r
ifff 
(ff 
recipeff 
==ff 
nullff 
)ff 
{gg 
	_notifierhh 
.hh 
Errorhh 
(hh  
Hhh  !
[hh! "
$strhh" 9
]hh9 :
)hh: ;
;hh; <
returnii 
RedirectToActionii '
(ii' (
$strii( /
)ii/ 0
;ii0 1
}jj 
varll 
environmentll 
=ll 
newll !

Dictionaryll" ,
<ll, -
stringll- 3
,ll3 4
objectll5 ;
>ll; <
(ll< =
)ll= >
;ll> ?
awaitmm !
_environmentProvidersmm '
.mm' (
OrderBymm( /
(mm/ 0
xmm0 1
=>mm2 4
xmm5 6
.mm6 7
Ordermm7 <
)mm< =
.mm= >
InvokeAsyncmm> I
(mmI J
(mmJ K
providermmK S
,mmS T
envmmU X
)mmX Y
=>mmZ \
providermm] e
.mme f$
PopulateEnvironmentAsyncmmf ~
(mm~ 
env	mm Ç
)
mmÇ É
,
mmÉ Ñ
environment
mmÖ ê
,
mmê ë
_logger
mmí ô
)
mmô ö
;
mmö õ
varoo 
executionIdoo 
=oo 
Guidoo "
.oo" #
NewGuidoo# *
(oo* +
)oo+ ,
.oo, -
ToStringoo- 5
(oo5 6
$stroo6 9
)oo9 :
;oo: ;
_shellSettingsss 
.ss 
Statess  
=ss! "
TenantStatess# .
.ss. /
Initializingss/ ;
;ss; <
tryuu 
{vv 
awaitww 
_recipeExecutorww %
.ww% &
ExecuteAsyncww& 2
(ww2 3
executionIdww3 >
,ww> ?
recipeww@ F
,wwF G
environmentwwH S
,wwS T
CancellationTokenwwU f
.wwf g
Nonewwg k
)wwk l
;wwl m
}xx 
finallyyy 
{zz 
_shellSettings|| 
.|| 
State|| $
=||% &
TenantState||' 2
.||2 3
Running||3 :
;||: ;
}}} 
await 

_shellHost 
. $
ReleaseShellContextAsync 5
(5 6
_shellSettings6 D
)D E
;E F
	_notifier
ÅÅ 
.
ÅÅ 
Success
ÅÅ 
(
ÅÅ 
H
ÅÅ 
[
ÅÅ  
$str
ÅÅ  M
,
ÅÅM N
recipe
ÅÅO U
.
ÅÅU V
DisplayName
ÅÅV a
]
ÅÅa b
)
ÅÅb c
;
ÅÅc d
return
ÇÇ 
RedirectToAction
ÇÇ #
(
ÇÇ# $
$str
ÇÇ$ +
)
ÇÇ+ ,
;
ÇÇ, -
}
ÉÉ 	
}
ÑÑ 
}ÖÖ ∏
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str Z
,Z [
Dependencies		 
=		 
new		 
[		 
]		 
{

 
$str 
, 
$str 
} 
, 
Category 
= 
$str 
,  
IsAlwaysEnabled 
= 
true 
) 
] õ!
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\RecipeSteps\CommandStep.cs
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
Recipes

 
.

 
RecipeSteps

 )
{ 
public 

class 
CommandStep 
: 
IRecipeStepHandler 1
{ 
private 
readonly 
ICommandManager (
_commandManager) 8
;8 9
private 
readonly 
ICommandParser '
_commandParser( 6
;6 7
private 
readonly $
ICommandParametersParser 1#
_commandParameterParser2 I
;I J
private 
readonly 
ILogger  
_logger! (
;( )
public 
CommandStep 
( 
ICommandManager *
commandManager+ 9
,9 :
ICommandParser 
commandParser (
,( )$
ICommandParametersParser $"
commandParameterParser% ;
,; <
ILogger 
< 
CommandStep 
>  
logger! '
)' (
{ 	
_commandManager 
= 
commandManager ,
;, -
_commandParser 
= 
commandParser *
;* +#
_commandParameterParser #
=$ %"
commandParameterParser& <
;< =
_logger 
= 
logger 
; 
} 	
public!! 
async!! 
Task!! 
ExecuteAsync!! &
(!!& '"
RecipeExecutionContext!!' =
context!!> E
)!!E F
{"" 	
if## 
(## 
!## 
String## 
.## 
Equals## 
(## 
context## &
.##& '
Name##' +
,##+ ,
$str##- 6
,##6 7
StringComparison##8 H
.##H I
OrdinalIgnoreCase##I Z
)##Z [
)##[ \
{$$ 
return%% 
;%% 
}&& 
var(( 
step(( 
=(( 
context(( 
.(( 
Step(( #
.((# $
ToObject(($ ,
<((, -
CommandStepModel((- =
>((= >
(((> ?
)((? @
;((@ A
foreach** 
(** 
var** 
command**  
in**! #
step**$ (
.**( )
Commands**) 1
)**1 2
{++ 
using,, 
(,, 
var,, 
output,, !
=,," #
new,,$ '
StringWriter,,( 4
(,,4 5
),,5 6
),,6 7
{-- 
_logger.. 
... 
LogInformation.. *
(..* +
$str..+ I
,..I J
command..K R
)..R S
;..S T
var// 
commandParameters// )
=//* +#
_commandParameterParser//, C
.//C D
Parse//D I
(//I J
_commandParser//J X
.//X Y
Parse//Y ^
(//^ _
command//_ f
)//f g
)//g h
;//h i
commandParameters00 %
.00% &
Output00& ,
=00- .
output00/ 5
;005 6
await11 
_commandManager11 )
.11) *
ExecuteAsync11* 6
(116 7
commandParameters117 H
)11H I
;11I J
_logger22 
.22 
LogInformation22 *
(22* +
$str22+ Z
,22Z [
output22\ b
)22b c
;22c d
}33 
_logger44 
.44 
LogInformation44 &
(44& '
$str44' D
,44D E
command44F M
)44M N
;44N O
}55 
}66 	
private88 
class88 
CommandStepModel88 &
{99 	
public:: 
string:: 
[:: 
]:: 
Commands:: $
{::% &
get::' *
;::* +
set::, /
;::/ 0
}::1 2
};; 	
}<< 
}== —+
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\RecipeSteps\RecipesStep.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 
RecipeSteps )
{		 
public 

class 
RecipesStep 
: 
IRecipeStepHandler 1
{ 
private 
readonly 
IEnumerable $
<$ %
IRecipeHarvester% 5
>5 6
_recipeHarvesters7 H
;H I
public 
RecipesStep 
( 
IEnumerable &
<& '
IRecipeHarvester' 7
>7 8
recipeHarvesters9 I
)I J
{ 	
_recipeHarvesters 
= 
recipeHarvesters  0
;0 1
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 6
,6 7
StringComparison8 H
.H I
OrdinalIgnoreCaseI Z
)Z [
)[ \
{ 
return 
; 
} 
var 
step 
= 
context 
. 
Step #
.# $
ToObject$ ,
<, -
InternalStep- 9
>9 :
(: ;
); <
;< =
var 
recipesDictionary !
=" #
new$ '

Dictionary( 2
<2 3
string3 9
,9 :
IDictionary; F
<F G
stringG M
,M N
RecipeDescriptorO _
>_ `
>` a
(a b
)b c
;c d
IList 
< 
RecipeDescriptor "
>" #
innerRecipes$ 0
=1 2
new3 6
List7 ;
<; <
RecipeDescriptor< L
>L M
(M N
)N O
;O P
foreach!! 
(!! 
var!! 
recipe!! 
in!!  "
step!!# '
.!!' (
Values!!( .
)!!. /
{"" 
IDictionary## 
<## 
string## "
,##" #
RecipeDescriptor##$ 4
>##4 5
recipes##6 =
;##= >
if%% 
(%% 
!%% 
recipesDictionary%% &
.%%& '
TryGetValue%%' 2
(%%2 3
recipe%%3 9
.%%9 :
ExecutionId%%: E
,%%E F
out%%G J
recipes%%K R
)%%R S
)%%S T
{&& 
var'' 
recipeCollections'' )
=''* +
await'', 1
Task''2 6
.''6 7
WhenAll''7 >
(''> ?
_recipeHarvesters''? P
.''P Q
Select''Q W
(''W X
x''X Y
=>''Z \
x''] ^
.''^ _
HarvestRecipesAsync''_ r
(''r s
)''s t
)''t u
)''u v
;''v w
recipes(( 
=(( 
recipeCollections(( /
.((/ 0

SelectMany((0 :
(((: ;
x((; <
=>((= ?
x((@ A
)((A B
.((B C
ToDictionary((C O
(((O P
x((P Q
=>((R T
x((U V
.((V W
Name((W [
)(([ \
;((\ ]
recipesDictionary)) %
[))% &
recipe))& ,
.)), -
ExecutionId))- 8
]))8 9
=)): ;
recipes))< C
;))C D
}** 
if,, 
(,, 
!,, 
recipes,, 
.,, 
ContainsKey,, (
(,,( )
recipe,,) /
.,,/ 0
Name,,0 4
),,4 5
),,5 6
{-- 
throw.. 
new.. 
ArgumentException.. /
(../ 0
$"..0 2
No recipe named '..2 C
{..C D
recipe..D J
...J K
Name..K O
}..O P&
' was found in extension '..P j
{..j k
recipe..k q
...q r
ExecutionId..r }
}..} ~
'.	..~ Ä
"
..Ä Å
)
..Å Ç
;
..Ç É
}// 
innerRecipes11 
.11 
Add11  
(11  !
recipes11! (
[11( )
recipe11) /
.11/ 0
Name110 4
]114 5
)115 6
;116 7
}22 
context44 
.44 
InnerRecipes44  
=44! "
innerRecipes44# /
;44/ 0
}55 	
private77 
class77 
InternalStep77 "
{88 	
public99 
InternalStepValue99 $
[99$ %
]99% &
Values99' -
{99. /
get990 3
;993 4
set995 8
;998 9
}99: ;
}:: 	
private<< 
class<< 
InternalStepValue<< '
{== 	
public>> 
string>> 
ExecutionId>> %
{>>& '
get>>( +
;>>+ ,
set>>- 0
;>>0 1
}>>2 3
public?? 
string?? 
Name?? 
{??  
get??! $
;??$ %
set??& )
;??) *
}??+ ,
}@@ 	
}AA 
}BB ·!
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\Services\RecipeDeploymentTargetHandler.cs
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
class )
RecipeDeploymentTargetHandler .
:/ 0$
IDeploymentTargetHandler1 I
{ 
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
IRecipeExecutor (
_recipeExecutor) 8
;8 9
private 
readonly 
IEnumerable $
<$ %&
IRecipeEnvironmentProvider% ?
>? @!
_environmentProvidersA V
;V W
private 
readonly 
ILogger  
_logger! (
;( )
public )
RecipeDeploymentTargetHandler ,
(, -

IShellHost- 7
	shellHost8 A
,A B
ShellSettings 
shellSettings '
,' (
IRecipeExecutor 
recipeExecutor *
,* +
IEnumerable 
< &
IRecipeEnvironmentProvider 2
>2 3 
environmentProviders4 H
,H I
ILogger 
< )
RecipeDeploymentTargetHandler 1
>1 2
logger3 9
)9 :
{ 	

_shellHost 
= 
	shellHost "
;" #
_shellSettings 
= 
shellSettings *
;* +
_recipeExecutor 
= 
recipeExecutor ,
;, -!
_environmentProviders   !
=  " # 
environmentProviders  $ 8
;  8 9
_logger!! 
=!! 
logger!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
ImportFromFileAsync$$ -
($$- .
IFileProvider$$. ;
fileProvider$$< H
)$$H I
{%% 	
var&& 
executionId&& 
=&& 
Guid&& "
.&&" #
NewGuid&&# *
(&&* +
)&&+ ,
.&&, -
ToString&&- 5
(&&5 6
$str&&6 9
)&&9 :
;&&: ;
var'' 
recipeDescriptor''  
=''! "
new''# &
RecipeDescriptor''' 7
{(( 
FileProvider)) 
=)) 
fileProvider)) +
,))+ ,
BasePath** 
=** 
$str** 
,** 
RecipeFileInfo++ 
=++  
fileProvider++! -
.++- .
GetFileInfo++. 9
(++9 :
$str++: G
)++G H
},, 
;,, 
var.. 
environment.. 
=.. 
new.. !

Dictionary.." ,
<.., -
string..- 3
,..3 4
object..5 ;
>..; <
(..< =
)..= >
;..> ?
await// !
_environmentProviders// '
.//' (
OrderBy//( /
(/// 0
x//0 1
=>//2 4
x//5 6
.//6 7
Order//7 <
)//< =
.//= >
InvokeAsync//> I
(//I J
(//J K
provider//K S
,//S T
env//U X
)//X Y
=>//Z \
provider//] e
.//e f$
PopulateEnvironmentAsync//f ~
(//~ 
env	// Ç
)
//Ç É
,
//É Ñ
environment
//Ö ê
,
//ê ë
_logger
//í ô
)
//ô ö
;
//ö õ
await11 
_recipeExecutor11 !
.11! "
ExecuteAsync11" .
(11. /
executionId11/ :
,11: ;
recipeDescriptor11< L
,11L M
environment11N Y
,11Y Z
CancellationToken11[ l
.11l m
None11m q
)11q r
;11r s
await33 

_shellHost33 
.33 $
ReleaseShellContextAsync33 5
(335 6
_shellSettings336 D
)33D E
;33E F
}44 	
}55 
}66 ≠
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\Startup.cs
	namespace 	
OrchardCore
 
. 
Recipes 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 

AddRecipes 
(  
)  !
;! "
services!! 
.!! 
	AddScoped!! 
<!! 
INavigationProvider!! 2
,!!2 3
	AdminMenu!!4 =
>!!= >
(!!> ?
)!!? @
;!!@ A
services## 
.## "
AddRecipeExecutionStep## +
<##+ ,
CommandStep##, 7
>##7 8
(##8 9
)##9 :
;##: ;
services$$ 
.$$ "
AddRecipeExecutionStep$$ +
<$$+ ,
RecipesStep$$, 7
>$$7 8
($$8 9
)$$9 :
;$$: ;
services&& 
.&& &
AddDeploymentTargetHandler&& /
<&&/ 0)
RecipeDeploymentTargetHandler&&0 M
>&&M N
(&&N O
)&&O P
;&&P Q
}'' 	
public)) 
override)) 
void)) 
	Configure)) &
())& '
IApplicationBuilder))' :
builder)); B
,))B C!
IEndpointRouteBuilder))D Y
routes))Z `
,))` a
IServiceProvider))b r
serviceProvider	))s Ç
)
))Ç É
{** 	
var++ 
adminControllerName++ #
=++$ %
typeof++& ,
(++, -
AdminController++- <
)++< =
.++= >
ControllerName++> L
(++L M
)++M N
;++N O
routes-- 
.-- "
MapAreaControllerRoute-- )
(--) *
name.. 
:.. 
$str.. 
,..  
areaName// 
:// 
$str// /
,/// 0
pattern00 
:00 
_adminOptions00 &
.00& '
AdminUrlPrefix00' 5
+006 7
$str008 B
,00B C
defaults11 
:11 
new11 
{11 

controller11  *
=11+ ,
adminControllerName11- @
,11@ A
action11B H
=11I J
nameof11K Q
(11Q R
AdminController11R a
.11a b
Index11b g
)11g h
}11i j
)22 
;22 
routes44 
.44 "
MapAreaControllerRoute44 )
(44) *
name55 
:55 
$str55 &
,55& '
areaName66 
:66 
$str66 /
,66/ 0
pattern77 
:77 
_adminOptions77 &
.77& '
AdminUrlPrefix77' 5
+776 7
$str778 J
,77J K
defaults88 
:88 
new88 
{88 

controller88  *
=88+ ,
adminControllerName88- @
,88@ A
action88B H
=88I J
nameof88K Q
(88Q R
AdminController88R a
.88a b
Execute88b i
)88i j
}88k l
)99 
;99 
}:: 	
};; 
}<< á
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Recipes\ViewModels\RecipeViewModel.cs
	namespace 	
OrchardCore
 
. 
Recipes 
. 

ViewModels (
{ 
public 

class 
RecipeViewModel  
{ 
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
[ 
] 
Tags 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
bool		 
IsSetupRecipe		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
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
. /
public 
string 
BasePath 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Feature 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 