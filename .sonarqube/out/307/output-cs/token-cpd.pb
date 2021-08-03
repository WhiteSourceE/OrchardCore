¡
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Features 
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{		 
private

 
readonly

 
IStringLocalizer

 )
S

* +
;

+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
NavigationConstants) <
.< =*
AdminMenuConfigurationPosition= [
,[ \
configuration] j
=>k m
configurationn {
. 
AddClass 
( 
$str 2
)2 3
.3 4
Id4 6
(6 7
$str7 F
)F G
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
S( )
[) *
$str* 4
]4 5
.5 6
PrefixPosition6 D
(D E
)E F
,F G

deploymentH R
=>S U

deploymentV `
. 
Action 
(  
$str  *
,* +
$str, 3
,3 4
new5 8
{9 :
area; ?
=@ A
$strB X
}Y Z
)Z [
. 

Permission #
(# $
Permissions$ /
./ 0
ManageFeatures0 >
)> ?
. 
LocalNav !
(! "
)" #
) 
, 
priority 
:  
$num! "
)   
;   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% Ìä
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Features 
. 
Controllers *
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
AdminController 
( 
IExtensionManager 
extensionManager .
,. /
IHtmlLocalizer 
< 
AdminController *
>* +
	localizer, 5
,5 6!
IShellFeaturesManager ! 
shellFeaturesManager" 6
,6 7!
IAuthorizationService   ! 
authorizationService  " 6
,  6 7
ShellSettings!! 
shellSettings!! '
,!!' (
	INotifier"" 
notifier"" 
)"" 
{## 	
_extensionManager$$ 
=$$ 
extensionManager$$  0
;$$0 1!
_shellFeaturesManager%% !
=%%" # 
shellFeaturesManager%%$ 8
;%%8 9!
_authorizationService&& !
=&&" # 
authorizationService&&$ 8
;&&8 9
_shellSettings'' 
='' 
shellSettings'' *
;''* +
	_notifier(( 
=(( 
notifier((  
;((  !
H)) 
=)) 
	localizer)) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
ActionResult,, &
>,,& '
Features,,( 0
(,,0 1
),,1 2
{-- 	
if.. 
(.. 
!.. 
await.. !
_authorizationService.. ,
..., -
AuthorizeAsync..- ;
(..; <
User..< @
,..@ A
Permissions..B M
...M N
ManageFeatures..N \
)..\ ]
)..] ^
{// 
return00 
Forbid00 
(00 
)00 
;00  
}11 
var33 
enabledFeatures33 
=33  !
await33" '!
_shellFeaturesManager33( =
.33= >#
GetEnabledFeaturesAsync33> U
(33U V
)33V W
;33W X
var44 !
alwaysEnabledFeatures44 %
=44& '
await44( -!
_shellFeaturesManager44. C
.44C D)
GetAlwaysEnabledFeaturesAsync44D a
(44a b
)44b c
;44c d
var66 
moduleFeatures66 
=66  
new66! $
List66% )
<66) *
ModuleFeature66* 7
>667 8
(668 9
)669 :
;66: ;
foreach77 
(77 
var77 
moduleFeatureInfo77 *
in77+ -
_extensionManager77. ?
.88 
GetFeatures88 
(88 
)88 
.99 
Where99 
(99 
f99 
=>99 
!99 
f99 
.99 
	Extension99 (
.99( )
IsTheme99) 0
(990 1
)991 2
&&993 5
FeatureIsAllowed996 F
(99F G
f99G H
)99H I
)99I J
)99J K
{:: 
var;; 
dependentFeatures;; %
=;;& '
_extensionManager;;( 9
.;;9 : 
GetDependentFeatures;;: N
(;;N O
moduleFeatureInfo;;O `
.;;` a
Id;;a c
);;c d
;;;d e
var<< 
featureDependencies<< '
=<<( )
_extensionManager<<* ;
.<<; <"
GetFeatureDependencies<<< R
(<<R S
moduleFeatureInfo<<S d
.<<d e
Id<<e g
)<<g h
;<<h i
var>> 
moduleFeature>> !
=>>" #
new>>$ '
ModuleFeature>>( 5
{?? 

Descriptor@@ 
=@@  
moduleFeatureInfo@@! 2
,@@2 3
	IsEnabledAA 
=AA 
enabledFeaturesAA  /
.AA/ 0
ContainsAA0 8
(AA8 9
moduleFeatureInfoAA9 J
)AAJ K
,AAK L
IsAlwaysEnabledBB #
=BB$ %!
alwaysEnabledFeaturesBB& ;
.BB; <
ContainsBB< D
(BBD E
moduleFeatureInfoBBE V
)BBV W
,BBW X$
EnabledDependentFeaturesEE ,
=EE- .
dependentFeaturesEE/ @
.EE@ A
WhereEEA F
(EEF G
xEEG H
=>EEI K
xEEL M
.EEM N
IdEEN P
!=EEQ S
moduleFeatureInfoEET e
.EEe f
IdEEf h
&&EEi k
enabledFeaturesEEl {
.EE{ |
Contains	EE| Ñ
(
EEÑ Ö
x
EEÖ Ü
)
EEÜ á
)
EEá à
.
EEà â
ToList
EEâ è
(
EEè ê
)
EEê ë
,
EEë í
FeatureDependenciesFF '
=FF( )
featureDependenciesFF* =
.FF= >
WhereFF> C
(FFC D
dFFD E
=>FFF H
dFFI J
.FFJ K
IdFFK M
!=FFN P
moduleFeatureInfoFFQ b
.FFb c
IdFFc e
)FFe f
.FFf g
ToListFFg m
(FFm n
)FFn o
}GG 
;GG 
moduleFeaturesII 
.II 
AddII "
(II" #
moduleFeatureII# 0
)II0 1
;II1 2
}JJ 
returnLL 
ViewLL 
(LL 
newLL 
FeaturesViewModelLL -
{MM 
FeaturesNN 
=NN 
moduleFeaturesNN )
,NN) *
	IsAllowedOO 
=OO 
FeatureIsAllowedOO ,
}PP 
)PP 
;PP 
}QQ 	
[SS 	
HttpPostSS	 
]SS 
[TT 	
FormValueRequiredTT	 
(TT 
$strTT .
)TT. /
]TT/ 0
publicUU 
asyncUU 
TaskUU 
<UU 
ActionResultUU &
>UU& '
FeaturesUU( 0
(UU0 1
BulkActionViewModelUU1 D
modelUUE J
,UUJ K
boolUUL P
?UUP Q
forceUUR W
)UUW X
{VV 	
ifWW 
(WW 
!WW 
awaitWW !
_authorizationServiceWW ,
.WW, -
AuthorizeAsyncWW- ;
(WW; <
UserWW< @
,WW@ A
PermissionsWWB M
.WWM N
ManageFeaturesWWN \
)WW\ ]
)WW] ^
{XX 
returnYY 
ForbidYY 
(YY 
)YY 
;YY  
}ZZ 
if\\ 
(\\ 
model\\ 
.\\ 

FeatureIds\\  
==\\! #
null\\$ (
||\\) +
!\\, -
model\\- 2
.\\2 3

FeatureIds\\3 =
.\\= >
Any\\> A
(\\A B
)\\B C
)\\C D
{]] 

ModelState^^ 
.^^ 
AddModelError^^ (
(^^( )
$str^^) 5
,^^5 6
H^^7 8
[^^8 9
$str^^9 ^
]^^^ _
.^^_ `
ToString^^` h
(^^h i
)^^i j
)^^j k
;^^k l
}__ 
ifaa 
(aa 

ModelStateaa 
.aa 
IsValidaa "
)aa" #
{bb 
varcc 
featurescc 
=cc 
_extensionManagercc 0
.cc0 1
GetFeaturescc1 <
(cc< =
)cc= >
.cc> ?
Wherecc? D
(ccD E
fccE F
=>ccG I
FeatureIsAllowedccJ Z
(ccZ [
fcc[ \
)cc\ ]
)cc] ^
.cc^ _
ToListcc_ e
(cce f
)ccf g
;ccg h
vardd 
selectedFeaturesdd $
=dd% &
featuresdd' /
.dd/ 0
Wheredd0 5
(dd5 6
fdd6 7
=>dd8 :
modeldd; @
.dd@ A

FeatureIdsddA K
.ddK L
ContainsddL T
(ddT U
fddU V
.ddV W
IdddW Y
)ddY Z
)ddZ [
.dd[ \
ToListdd\ b
(ddb c
)ddc d
;ddd e
awaitff (
EnableOrDisableFeaturesAsyncff 2
(ff2 3
selectedFeaturesff3 C
,ffC D
modelffE J
.ffJ K

BulkActionffK U
,ffU V
forceffW \
)ff\ ]
;ff] ^
}gg 
returnii 
RedirectToActionii #
(ii# $
nameofii$ *
(ii* +
Featuresii+ 3
)ii3 4
)ii4 5
;ii5 6
}jj 	
[ll 	
HttpPostll	 
]ll 
publicmm 
asyncmm 
Taskmm 
<mm 
IActionResultmm '
>mm' (
Disablemm) 0
(mm0 1
stringmm1 7
idmm8 :
)mm: ;
{nn 	
varoo 
featureoo 
=oo 
_extensionManageroo +
.oo+ ,
GetFeaturesoo, 7
(oo7 8
)oo8 9
.oo9 :
FirstOrDefaultoo: H
(ooH I
fooI J
=>ooK M
FeatureIsAllowedooN ^
(oo^ _
foo_ `
)oo` a
&&oob d
fooe f
.oof g
Idoog i
==ooj l
idoom o
)ooo p
;oop q
ifqq 
(qq 
featureqq 
==qq 
nullqq 
)qq  
{rr 
returnss 
NotFoundss 
(ss  
)ss  !
;ss! "
}tt 
varzz 
nextUrlzz 
=zz 
Urlzz 
.zz 
Actionzz $
(zz$ %
nameofzz% +
(zz+ ,
Featureszz, 4
)zz4 5
)zz5 6
;zz6 7
await|| (
EnableOrDisableFeaturesAsync|| .
(||. /
new||/ 2
[||2 3
]||3 4
{||5 6
feature||7 >
}||? @
,||@ A
FeaturesBulkAction||B T
.||T U
Disable||U \
,||\ ]
force||^ c
:||c d
true||e i
)||i j
;||j k
return~~ 
Redirect~~ 
(~~ 
nextUrl~~ #
)~~# $
;~~$ %
} 	
[
ÅÅ 	
HttpPost
ÅÅ	 
]
ÅÅ 
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
IActionResult
ÇÇ '
>
ÇÇ' (
Enable
ÇÇ) /
(
ÇÇ/ 0
string
ÇÇ0 6
id
ÇÇ7 9
)
ÇÇ9 :
{
ÉÉ 	
var
ÑÑ 
feature
ÑÑ 
=
ÑÑ 
_extensionManager
ÑÑ +
.
ÑÑ+ ,
GetFeatures
ÑÑ, 7
(
ÑÑ7 8
)
ÑÑ8 9
.
ÑÑ9 :
FirstOrDefault
ÑÑ: H
(
ÑÑH I
f
ÑÑI J
=>
ÑÑK M
FeatureIsAllowed
ÑÑN ^
(
ÑÑ^ _
f
ÑÑ_ `
)
ÑÑ` a
&&
ÑÑb d
f
ÑÑe f
.
ÑÑf g
Id
ÑÑg i
==
ÑÑj l
id
ÑÑm o
)
ÑÑo p
;
ÑÑp q
if
ÜÜ 
(
ÜÜ 
feature
ÜÜ 
==
ÜÜ 
null
ÜÜ 
)
ÜÜ  
{
áá 
return
àà 
NotFound
àà 
(
àà  
)
àà  !
;
àà! "
}
ââ 
var
èè 
nextUrl
èè 
=
èè 
Url
èè 
.
èè 
Action
èè $
(
èè$ %
nameof
èè% +
(
èè+ ,
Features
èè, 4
)
èè4 5
)
èè5 6
;
èè6 7
await
ëë *
EnableOrDisableFeaturesAsync
ëë .
(
ëë. /
new
ëë/ 2
[
ëë2 3
]
ëë3 4
{
ëë5 6
feature
ëë7 >
}
ëë? @
,
ëë@ A 
FeaturesBulkAction
ëëB T
.
ëëT U
Enable
ëëU [
,
ëë[ \
force
ëë] b
:
ëëb c
true
ëëd h
)
ëëh i
;
ëëi j
return
ìì 
Redirect
ìì 
(
ìì 
nextUrl
ìì #
)
ìì# $
;
ìì$ %
}
îî 	
private
ôô 
bool
ôô 
FeatureIsAllowed
ôô %
(
ôô% &
IFeatureInfo
ôô& 2
feature
ôô3 :
)
ôô: ;
{
öö 	
return
ûû 
_shellSettings
ûû !
.
ûû! "
Name
ûû" &
==
ûû' )
ShellHelper
ûû* 5
.
ûû5 6
DefaultShellName
ûû6 F
||
ûûG I
!
ûûJ K
feature
ûûK R
.
ûûR S
DefaultTenantOnly
ûûS d
;
ûûd e
}
üü 	
private
°° 
async
°° 
Task
°° *
EnableOrDisableFeaturesAsync
°° 7
(
°°7 8
IEnumerable
°°8 C
<
°°C D
IFeatureInfo
°°D P
>
°°P Q
features
°°R Z
,
°°Z [ 
FeaturesBulkAction
°°\ n
action
°°o u
,
°°u v
bool
°°w {
?
°°{ |
force°°} Ç
)°°Ç É
{
¢¢ 	
switch
££ 
(
££ 
action
££ 
)
££ 
{
§§ 
case
••  
FeaturesBulkAction
•• '
.
••' (
None
••( ,
:
••, -
break
¶¶ 
;
¶¶ 
case
ßß  
FeaturesBulkAction
ßß '
.
ßß' (
Enable
ßß( .
:
ßß. /
await
®® #
_shellFeaturesManager
®® /
.
®®/ 0!
EnableFeaturesAsync
®®0 C
(
®®C D
features
®®D L
,
®®L M
force
®®N S
==
®®T V
true
®®W [
)
®®[ \
;
®®\ ]
Notify
©© 
(
©© 
features
©© #
)
©©# $
;
©©$ %
break
™™ 
;
™™ 
case
´´  
FeaturesBulkAction
´´ '
.
´´' (
Disable
´´( /
:
´´/ 0
await
¨¨ #
_shellFeaturesManager
¨¨ /
.
¨¨/ 0"
DisableFeaturesAsync
¨¨0 D
(
¨¨D E
features
¨¨E M
,
¨¨M N
force
¨¨O T
==
¨¨U W
true
¨¨X \
)
¨¨\ ]
;
¨¨] ^
Notify
≠≠ 
(
≠≠ 
features
≠≠ #
,
≠≠# $
enabled
≠≠% ,
:
≠≠, -
false
≠≠. 3
)
≠≠3 4
;
≠≠4 5
break
ÆÆ 
;
ÆÆ 
case
ØØ  
FeaturesBulkAction
ØØ '
.
ØØ' (
Toggle
ØØ( .
:
ØØ. /
var
∞∞ 
enabledFeatures
∞∞ '
=
∞∞( )
await
∞∞* /#
_shellFeaturesManager
∞∞0 E
.
∞∞E F%
GetEnabledFeaturesAsync
∞∞F ]
(
∞∞] ^
)
∞∞^ _
;
∞∞_ `
var
±± 
disabledFeatures
±± (
=
±±) *
await
±±+ 0#
_shellFeaturesManager
±±1 F
.
±±F G&
GetDisabledFeaturesAsync
±±G _
(
±±_ `
)
±±` a
;
±±a b
var
≤≤ 
featuresToEnable
≤≤ (
=
≤≤) *
disabledFeatures
≤≤+ ;
.
≤≤; <
	Intersect
≤≤< E
(
≤≤E F
features
≤≤F N
)
≤≤N O
;
≤≤O P
var
≥≥ 
featuresToDisable
≥≥ )
=
≥≥* +
enabledFeatures
≥≥, ;
.
≥≥; <
	Intersect
≥≥< E
(
≥≥E F
features
≥≥F N
)
≥≥N O
;
≥≥O P
await
µµ #
_shellFeaturesManager
µµ /
.
µµ/ 0!
UpdateFeaturesAsync
µµ0 C
(
µµC D
featuresToDisable
µµD U
,
µµU V
featuresToEnable
µµW g
,
µµg h
force
µµi n
==
µµo q
true
µµr v
)
µµv w
;
µµw x
Notify
∂∂ 
(
∂∂ 
featuresToEnable
∂∂ +
)
∂∂+ ,
;
∂∂, -
Notify
∑∑ 
(
∑∑ 
featuresToDisable
∑∑ ,
,
∑∑, -
enabled
∑∑. 5
:
∑∑5 6
false
∑∑7 <
)
∑∑< =
;
∑∑= >
return
∏∏ 
;
∏∏ 
default
ππ 
:
ππ 
break
∫∫ 
;
∫∫ 
}
ªª 
}
ºº 	
private
ææ 
void
ææ 
Notify
ææ 
(
ææ 
IEnumerable
ææ '
<
ææ' (
IFeatureInfo
ææ( 4
>
ææ4 5
features
ææ6 >
,
ææ> ?
bool
ææ@ D
enabled
ææE L
=
ææM N
true
ææO S
)
ææS T
{
øø 	
foreach
¿¿ 
(
¿¿ 
var
¿¿ 
feature
¿¿  
in
¿¿! #
features
¿¿$ ,
)
¿¿, -
{
¡¡ 
	_notifier
¬¬ 
.
¬¬ 
Success
¬¬ !
(
¬¬! "
H
¬¬" #
[
¬¬# $
$str
¬¬$ 2
,
¬¬2 3
feature
¬¬4 ;
.
¬¬; <
Name
¬¬< @
??
¬¬A C
feature
¬¬D K
.
¬¬K L
Id
¬¬L N
,
¬¬N O
enabled
¬¬P W
?
¬¬X Y
$str
¬¬Z c
:
¬¬d e
$str
¬¬f p
]
¬¬p q
)
¬¬q r
;
¬¬r s
}
√√ 
}
ƒƒ 	
}
≈≈ 
}∆∆ Ω
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Deployment\AllFeaturesDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Features 
. 

Deployment )
{ 
public		 

class		 '
AllFeaturesDeploymentSource		 ,
:		- .
IDeploymentSource		/ @
{

 
private 
readonly 
IModuleService '
_moduleService( 6
;6 7
public '
AllFeaturesDeploymentSource *
(* +
IModuleService+ 9
moduleService: G
)G H
{ 	
_moduleService 
= 
moduleService *
;* +
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
allFeaturesStep 
=  !
step" &
as' )%
AllFeaturesDeploymentStep* C
;C D
if 
( 
allFeaturesStep 
==  "
null# '
)' (
{ 
return 
; 
} 
var 
features 
= 
await  
_moduleService! /
./ 0%
GetAvailableFeaturesAsync0 I
(I J
)J K
;K L
var 
featureStep 
= 
new !
JObject" )
() *
new 
	JProperty 
( 
$str $
,$ %
$str& /
)/ 0
,0 1
new 
	JProperty 
( 
$str &
,& '
features( 0
.0 1
Where1 6
(6 7
f7 8
=>9 ;
f< =
.= >
	IsEnabled> G
)G H
.H I
SelectI O
(O P
fP Q
=>R T
fU V
.V W

DescriptorW a
.a b
Idb d
)d e
.e f
ToArrayf m
(m n
)n o
)o p
) 
; 
if!! 
(!! 
!!! 
allFeaturesStep!!  
.!!  !"
IgnoreDisabledFeatures!!! 7
)!!7 8
{"" 
featureStep## 
.## 
Property## $
(##$ %
$str##% -
)##- .
.##. /
AddAfterSelf##/ ;
(##; <
new##< ?
	JProperty##@ I
(##I J
$str##J S
,##S T
features##U ]
.##] ^
Where##^ c
(##c d
f##d e
=>##f h
!##i j
f##j k
.##k l
	IsEnabled##l u
)##u v
.##v w
Select##w }
(##} ~
f##~ 
=>
##Ä Ç
f
##É Ñ
.
##Ñ Ö

Descriptor
##Ö è
.
##è ê
Id
##ê í
)
##í ì
.
##ì î
ToArray
##î õ
(
##õ ú
)
##ú ù
)
##ù û
)
##û ü
;
##ü †
}$$ 
result%% 
.%% 
Steps%% 
.%% 
Add%% 
(%% 
featureStep%% (
)%%( )
;%%) *
}&& 	
}'' 
}(( ´
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Deployment\AllFeaturesDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Features 
. 

Deployment )
{ 
public 

class %
AllFeaturesDeploymentStep *
:+ ,
DeploymentStep- ;
{		 
public

 %
AllFeaturesDeploymentStep

 (
(

( )
)

) *
{ 	
Name 
= 
$str  
;  !
} 	
public 
bool "
IgnoreDisabledFeatures *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ‰
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Deployment\AllFeaturesDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
Features 
. 

Deployment )
{		 
public

 

class

 +
AllFeaturesDeploymentStepDriver

 0
:

1 2
DisplayDriver

3 @
<

@ A
DeploymentStep

A O
,

O P%
AllFeaturesDeploymentStep

Q j
>

j k
{ 
public 
override 
IDisplayResult &
Display' .
(. /%
AllFeaturesDeploymentStep/ H
stepI M
)M N
{ 	
return 
Combine 
( 
View 
( 
$str C
,C D
stepE I
)I J
.J K
LocationK S
(S T
$strT ]
,] ^
$str_ h
)h i
,i j
View 
( 
$str E
,E F
stepG K
)K L
.L M
LocationM U
(U V
$strV a
,a b
$strc l
)l m
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
AllFeaturesDeploymentStep, E
stepF J
)J K
{ 	
return 

Initialize 
< .
"AllFeaturesDeploymentStepViewModel @
>@ A
(A B
$strB i
,i j
modelk p
=>q s
{ 
model 
. "
IgnoreDisabledFeatures ,
=- .
step/ 3
.3 4"
IgnoreDisabledFeatures4 J
;J K
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?%
AllFeaturesDeploymentStep? X
stepY ]
,] ^
IUpdateModel_ k
updaterl s
)s t
{ 	
await 
updater 
. 
TryUpdateModelAsync -
(- .
step. 2
,2 3
Prefix4 :
,: ;
x< =
=>> @
xA B
.B C"
IgnoreDisabledFeaturesC Y
)Y Z
;Z [
return!! 
Edit!! 
(!! 
step!! 
)!! 
;!! 
}"" 	
}## 
}$$ Å

ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
) 
] 
[

 
assembly

 	
:

	 

Feature

 
(

 
Id 
= 
$str	 
,  
Name 
=	 

$str 
, 
Description 
= 
$str	 õ
,
õ ú
Dependencies 
= 
new 
[ 
] 
{ 
$str 2
}3 4
,4 5
Category 
= 
$str 
,  
IsAlwaysEnabled 
= 
true 
) 
] Ó
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Models\ModuleEntry.cs
	namespace 	
OrchardCore
 
. 
Features 
. 
Models %
{ 
public		 

class		 
ModuleEntry		 
{

 
public 
ModuleEntry 
( 
) 
{ 	
Notifications 
= 
new 
List  $
<$ %
string% +
>+ ,
(, -
)- .
;. /
} 	
public 
IExtensionInfo 

Descriptor (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
NeedsVersionUpdate &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public   
bool   
IsRecentlyInstalled   '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  4 5
public%% 
List%% 
<%% 
string%% 
>%% 
Notifications%% )
{%%* +
get%%, /
;%%/ 0
set%%1 4
;%%4 5
}%%6 7
public** 
bool** 
CanUninstall**  
{**! "
get**# &
;**& '
set**( +
;**+ ,
}**- .
}++ 
},, í
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Models\ModuleFeature.cs
	namespace 	
OrchardCore
 
. 
Features 
. 
Models %
{ 
public		 

class		 
ModuleFeature		 
{

 
public 
IFeatureInfo 

Descriptor &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
	IsEnabled 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsAlwaysEnabled #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
NeedsUpdate 
{  !
get" %
;% &
set' *
;* +
}, -
public"" 
bool"" 
NeedsVersionUpdate"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
public'' 
bool'' 
IsRecentlyInstalled'' '
{''( )
get''* -
;''- .
set''/ 2
;''2 3
}''4 5
public,, 
IEnumerable,, 
<,, 
IFeatureInfo,, '
>,,' ($
EnabledDependentFeatures,,) A
{,,B C
get,,D G
;,,G H
set,,I L
;,,L M
},,N O
public11 
IEnumerable11 
<11 
IFeatureInfo11 '
>11' (
FeatureDependencies11) <
{11= >
get11? B
;11B C
set11D G
;11G H
}11I J
}22 
}33 Ω
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Permissions.cs
	namespace 	
OrchardCore
 
. 
Features 
{ 
public 

class 
Permissions 
: 
IPermissionProvider 2
{		 
public

 
static

 
readonly

 

Permission

 )
ManageFeatures

* 8
=

9 :
new

; >

Permission

? I
(

I J
$str

J Z
)

Z [
{

\ ]
Description

^ i
=

j k
$str

l }
}

~ 
;	

 Ä
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{ 
ManageFeatures 
} 
. 
AsEnumerable 
( 
) 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageFeatures* 8
}9 :
} 
} 
; 
} 	
}   
}!! ﬂ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Properties\AssemblyInfo.cs
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
$str		 1
)		1 2
]		2 3
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
]7 8ø"
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Recipes\Executors\FeatureStep.cs
	namespace		 	
OrchardCore		
 
.		 
Features		 
.		 
Recipes		 &
.		& '
	Executors		' 0
{

 
public 

class 
FeatureStep 
: 
IRecipeStepHandler 1
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly !
IShellFeaturesManager . 
_shellFeatureManager/ C
;C D
public 
FeatureStep 
( 
IExtensionManager 
extensionManager .
,. /!
IShellFeaturesManager !
shellFeatureManager" 5
)5 6
{ 	
_extensionManager 
= 
extensionManager  0
;0 1 
_shellFeatureManager  
=! "
shellFeatureManager# 6
;6 7
} 	
public 
Task 
ExecuteAsync  
(  !"
RecipeExecutionContext! 7
context8 ?
)? @
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- 6
,6 7
StringComparison8 H
.H I
OrdinalIgnoreCaseI Z
)Z [
)[ \
{ 
return 
Task 
. 
CompletedTask )
;) *
}   
var"" 
step"" 
="" 
context"" 
."" 
Step"" #
.""# $
ToObject""$ ,
<"", -
FeatureStepModel""- =
>""= >
(""> ?
)""? @
;""@ A
var## 
features## 
=## 
_extensionManager## ,
.##, -
GetFeatures##- 8
(##8 9
)##9 :
;##: ;
var%% 
featuresToDisable%% !
=%%" #
features%%$ ,
.%%, -
Where%%- 2
(%%2 3
x%%3 4
=>%%5 7
step%%8 <
.%%< =
Disable%%= D
?%%D E
.%%E F
Contains%%F N
(%%N O
x%%O P
.%%P Q
Id%%Q S
)%%S T
==%%U W
true%%X \
)%%\ ]
.%%] ^
ToList%%^ d
(%%d e
)%%e f
;%%f g
var&& 
featuresToEnable&&  
=&&! "
features&&# +
.&&+ ,
Where&&, 1
(&&1 2
x&&2 3
=>&&4 6
step&&7 ;
.&&; <
Enable&&< B
?&&B C
.&&C D
Contains&&D L
(&&L M
x&&M N
.&&N O
Id&&O Q
)&&Q R
==&&S U
true&&V Z
)&&Z [
.&&[ \
ToList&&\ b
(&&b c
)&&c d
;&&d e
if(( 
((( 
featuresToDisable(( !
.((! "
Count((" '
>((( )
$num((* +
||((, .
featuresToEnable((/ ?
.((? @
Count((@ E
>((F G
$num((H I
)((I J
{)) 
return**  
_shellFeatureManager** +
.**+ ,
UpdateFeaturesAsync**, ?
(**? @
featuresToDisable**@ Q
,**Q R
featuresToEnable**S c
,**c d
true**e i
)**i j
;**j k
}++ 
return-- 
Task-- 
.-- 
CompletedTask-- %
;--% &
}.. 	
private00 
class00 
FeatureStepModel00 &
{11 	
public22 
string22 
Name22 
{22  
get22! $
;22$ %
set22& )
;22) *
}22+ ,
public33 
string33 
[33 
]33 
Disable33 #
{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
public44 
string44 
[44 
]44 
Enable44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
}55 	
}66 
}77 ’
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Services\IModuleService.cs
	namespace 	
OrchardCore
 
. 
Features 
. 
Services '
{ 
public 

	interface 
IModuleService #
{ 
Task 
< 
IEnumerable 
< 
ModuleFeature &
>& '
>' (%
GetAvailableFeaturesAsync) B
(B C
)C D
;D E
Task 
EnableFeaturesAsync  
(  !
IEnumerable! ,
<, -
string- 3
>3 4

featureIds5 ?
)? @
;@ A
Task 
EnableFeaturesAsync  
(  !
IEnumerable! ,
<, -
string- 3
>3 4

featureIds5 ?
,? @
boolA E
forceF K
)K L
;L M
Task    
DisableFeaturesAsync   !
(  ! "
IEnumerable  " -
<  - .
string  . 4
>  4 5

featureIds  6 @
)  @ A
;  A B
Task''  
DisableFeaturesAsync'' !
(''! "
IEnumerable''" -
<''- .
string''. 4
>''4 5

featureIds''6 @
,''@ A
bool''B F
force''G L
)''L M
;''M N
}(( 
})) ú6
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Services\ModuleService.cs
	namespace 	
OrchardCore
 
. 
Features 
. 
Services '
{ 
public 

class 
ModuleService 
:  
IModuleService! /
{ 
private 
readonly 
IExtensionManager *
_extensionManager+ <
;< =
private 
readonly !
IShellFeaturesManager .!
_shellFeaturesManager/ D
;D E
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
ModuleService 
( 
IExtensionManager !
extensionManager" 2
,2 3!
IShellFeaturesManager % 
shellFeaturesManager& :
,: ;
IHtmlLocalizer 
< 
ModuleService ,
>, -
htmlLocalizer. ;
,; <
	INotifier 
notifier "
)" #
{ 	
	_notifier 
= 
notifier  
;  !
_extensionManager 
= 
extensionManager  0
;0 1!
_shellFeaturesManager !
=" # 
shellFeaturesManager$ 8
;8 9
H 
= 
htmlLocalizer 
; 
} 	
public$$ 
async$$ 
Task$$ 
<$$ 
IEnumerable$$ %
<$$% &
ModuleFeature$$& 3
>$$3 4
>$$4 5%
GetAvailableFeaturesAsync$$6 O
($$O P
)$$P Q
{%% 	
var&& 
enabledFeatures&& 
=&&  !
await'' !
_shellFeaturesManager'' +
.''+ ,#
GetEnabledFeaturesAsync'', C
(''C D
)''D E
;''E F
var)) 
availableFeatures)) !
=))" #
_extensionManager))$ 5
.))5 6
GetFeatures))6 A
())A B
)))B C
;))C D
return++ 
availableFeatures++ $
.,, 
Select,, 
(,, 
f,, 
=>,, (
AssembleModuleFromDescriptor,, 9
(,,9 :
f,,: ;
,,,; <
enabledFeatures,,= L
.-- 
Any-- 
(-- 
sf-- 
=>-- 
sf-- !
.--! "
Id--" $
==--% '
f--( )
.--) *
Id--* ,
)--, -
)--- .
)--. /
;--/ 0
}.. 	
public44 
Task44 
EnableFeaturesAsync44 '
(44' (
IEnumerable44( 3
<443 4
string444 :
>44: ;

featureIds44< F
)44F G
{55 	
return66 
EnableFeaturesAsync66 &
(66& '

featureIds66' 1
,661 2
false663 8
)668 9
;669 :
}77 	
public>> 
async>> 
Task>> 
EnableFeaturesAsync>> -
(>>- .
IEnumerable>>. 9
<>>9 :
string>>: @
>>>@ A

featureIds>>B L
,>>L M
bool>>N R
force>>S X
)>>X Y
{?? 	
var@@ 
featuresToEnable@@  
=@@! "
_extensionManager@@# 4
.AA 
GetFeaturesAA 
(AA 
)AA 
.BB 
WhereBB 
(BB 
xBB 
=>BB 

featureIdsBB &
.BB& '
ContainsBB' /
(BB/ 0
xBB0 1
.BB1 2
IdBB2 4
)BB4 5
)BB5 6
;BB6 7
varDD 
enabledFeaturesDD 
=DD  !
awaitDD" '!
_shellFeaturesManagerDD( =
.DD= >
EnableFeaturesAsyncDD> Q
(DDQ R
featuresToEnableDDR b
,DDb c
forceDDd i
)DDi j
;DDj k
foreachEE 
(EE 
varEE 
enabledFeatureEE '
inEE( *
enabledFeaturesEE+ :
)EE: ;
{FF 
	_notifierGG 
.GG 
SuccessGG !
(GG! "
HGG" #
[GG# $
$strGG$ 6
,GG6 7
enabledFeatureGG8 F
.GGF G
NameGGG K
]GGK L
)GGL M
;GGM N
}HH 
}II 	
publicOO 
TaskOO  
DisableFeaturesAsyncOO (
(OO( )
IEnumerableOO) 4
<OO4 5
stringOO5 ;
>OO; <

featureIdsOO= G
)OOG H
{PP 	
returnQQ  
DisableFeaturesAsyncQQ '
(QQ' (

featureIdsQQ( 2
,QQ2 3
falseQQ4 9
)QQ9 :
;QQ: ;
}RR 	
publicYY 
asyncYY 
TaskYY  
DisableFeaturesAsyncYY .
(YY. /
IEnumerableYY/ :
<YY: ;
stringYY; A
>YYA B

featureIdsYYC M
,YYM N
boolYYO S
forceYYT Y
)YYY Z
{ZZ 	
var[[ 
featuresToDisable[[ !
=[[" #
_extensionManager[[$ 5
.\\ 
GetFeatures\\ 
(\\ 
)\\ 
.]] 
Where]] 
(]] 
x]] 
=>]] 

featureIds]] &
.]]& '
Contains]]' /
(]]/ 0
x]]0 1
.]]1 2
Id]]2 4
)]]4 5
)]]5 6
;]]6 7
var__ 
features__ 
=__ 
await__  !
_shellFeaturesManager__! 6
.__6 7 
DisableFeaturesAsync__7 K
(__K L
featuresToDisable__L ]
,__] ^
force___ d
)__d e
;__e f
foreach`` 
(`` 
var`` 
feature``  
in``! #
features``$ ,
)``, -
{aa 
	_notifierbb 
.bb 
Successbb !
(bb! "
Hbb" #
[bb# $
$strbb$ 7
,bb7 8
featurebb9 @
.bb@ A
NamebbA E
]bbE F
)bbF G
;bbG H
}cc 
}dd 	
private
áá 
static
áá 
ModuleFeature
áá $*
AssembleModuleFromDescriptor
áá% A
(
ááA B
IFeatureInfo
ááB N
featureInfo
ááO Z
,
ááZ [
bool
áá\ `
	isEnabled
ááa j
)
ááj k
{
àà 	
return
ââ 
new
ââ 
ModuleFeature
ââ $
{
ää 

Descriptor
ãã 
=
ãã 
featureInfo
ãã (
,
ãã( )
	IsEnabled
åå 
=
åå 
	isEnabled
åå %
}
çç 
;
çç 
}
éé 	
}
¢¢ 
}££ ä*
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\Startup.cs
	namespace 	
OrchardCore
 
. 
Features 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public!! 
override!! 
void!! 
ConfigureServices!! .
(!!. /
IServiceCollection!!/ A
services!!B J
)!!J K
{"" 	
services## 
.## "
AddRecipeExecutionStep## +
<##+ ,
FeatureStep##, 7
>##7 8
(##8 9
)##9 :
;##: ;
services$$ 
.$$ 
	AddScoped$$ 
<$$ 
IPermissionProvider$$ 2
,$$2 3
Permissions$$4 ?
>$$? @
($$@ A
)$$A B
;$$B C
services%% 
.%% 
	AddScoped%% 
<%% 
IModuleService%% -
,%%- .
ModuleService%%/ <
>%%< =
(%%= >
)%%> ?
;%%? @
services&& 
.&& 
	AddScoped&& 
<&& 
INavigationProvider&& 2
,&&2 3
	AdminMenu&&4 =
>&&= >
(&&> ?
)&&? @
;&&@ A
services(( 
.(( 
AddTransient(( !
<((! "
IDeploymentSource((" 3
,((3 4'
AllFeaturesDeploymentSource((5 P
>((P Q
(((Q R
)((R S
;((S T
services)) 
.)) 
AddSingleton)) !
<))! ""
IDeploymentStepFactory))" 8
>))8 9
())9 :
new)): =!
DeploymentStepFactory))> S
<))S T%
AllFeaturesDeploymentStep))T m
>))m n
())n o
)))o p
)))p q
;))q r
services** 
.** 
	AddScoped** 
<** 
IDisplayDriver** -
<**- .
DeploymentStep**. <
>**< =
,**= >+
AllFeaturesDeploymentStepDriver**? ^
>**^ _
(**_ `
)**` a
;**a b
}++ 	
public-- 
override-- 
void-- 
	Configure-- &
(--& '
IApplicationBuilder--' :
builder--; B
,--B C!
IEndpointRouteBuilder--D Y
routes--Z `
,--` a
IServiceProvider--b r
serviceProvider	--s Ç
)
--Ç É
{.. 	
var// 
adminControllerName// #
=//$ %
typeof//& ,
(//, -
AdminController//- <
)//< =
.//= >
ControllerName//> L
(//L M
)//M N
;//N O
routes11 
.11 "
MapAreaControllerRoute11 )
(11) *
name22 
:22 
$str22  
,22  !
areaName33 
:33 
$str33 0
,330 1
pattern44 
:44 
_adminOptions44 &
.44& '
AdminUrlPrefix44' 5
+446 7
$str448 C
,44C D
defaults55 
:55 
new55 
{55 

controller55  *
=55+ ,
adminControllerName55- @
,55@ A
action55B H
=55I J
nameof55K Q
(55Q R
AdminController55R a
.55a b
Features55b j
)55j k
}55l m
)66 
;66 
routes77 
.77 "
MapAreaControllerRoute77 )
(77) *
name88 
:88 
$str88 '
,88' (
areaName99 
:99 
$str99 0
,990 1
pattern:: 
::: 
_adminOptions:: &
.::& '
AdminUrlPrefix::' 5
+::6 7
$str::8 P
,::P Q
defaults;; 
:;; 
new;; 
{;; 

controller;;  *
=;;+ ,
adminControllerName;;- @
,;;@ A
action;;B H
=;;I J
nameof;;K Q
(;;Q R
AdminController;;R a
.;;a b
Disable;;b i
);;i j
};;k l
)<< 
;<< 
routes== 
.== "
MapAreaControllerRoute== )
(==) *
name>> 
:>> 
$str>> &
,>>& '
areaName?? 
:?? 
$str?? 0
,??0 1
pattern@@ 
:@@ 
_adminOptions@@ &
.@@& '
AdminUrlPrefix@@' 5
+@@6 7
$str@@8 O
,@@O P
defaultsAA 
:AA 
newAA 
{AA 

controllerAA  *
=AA+ ,
adminControllerNameAA- @
,AA@ A
actionAAB H
=AAI J
nameofAAK Q
(AAQ R
AdminControllerAAR a
.AAa b
EnableAAb h
)AAh i
}AAj k
)BB 
;BB 
}CC 	
}DD 
}EE Ÿ
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\ViewModels\AllFeaturesDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
Features 
. 

ViewModels )
{ 
public 

class .
"AllFeaturesDeploymentStepViewModel 3
{ 
public 
bool "
IgnoreDisabledFeatures *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ≥
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\ViewModels\FeaturesViewModel.cs
	namespace 	
OrchardCore
 
. 
Features 
. 

ViewModels )
{ 
public 

class 
FeaturesViewModel "
{		 
public

 
IEnumerable

 
<

 
ModuleFeature

 (
>

( )
Features

* 2
{

3 4
get

5 8
;

8 9
set

: =
;

= >
}

? @
public 
FeaturesBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
Func 
< 
IFeatureInfo  
,  !
bool" &
>& '
	IsAllowed( 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
public 

class 
BulkActionViewModel $
{ 
public 
FeaturesBulkAction !

BulkAction" ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
[ 
] 

FeatureIds "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
public 

enum 
FeaturesBulkAction "
{ 
None 
, 
Enable 
, 
Disable 
, 
Toggle 
} 
} ‘

òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Features\ViewModels\ModulesIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Features 
. 

ViewModels )
{ 
public 

class !
ModulesIndexViewModel &
{ 
public 
bool 
InstallModules "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
IEnumerable		 
<		 
ModuleEntry		 &
>		& '
Modules		( /
{		0 1
get		2 5
;		5 6
set		7 :
;		: ;
}		< =
public 
ModulesIndexOptions "
Options# *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
ModulesIndexOptions $
{ 
public 
string 

SearchText  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} 