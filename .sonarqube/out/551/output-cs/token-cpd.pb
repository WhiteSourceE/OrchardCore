é
áD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
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
readonly !
CustomSettingsService ."
_customSettingsService/ E
;E F
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer 
< 
	AdminMenu &
>& '
	localizer( 1
,1 2!
CustomSettingsService !!
customSettingsService" 7
)7 8
{ 	
S 
= 
	localizer 
; "
_customSettingsService "
=# $!
customSettingsService% :
;: ;
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
foreach 
( 
var 
type 
in  "
_customSettingsService! 7
.7 8
GetAllSettingsTypes8 K
(K L
)L M
)M N
{ 
builder 
.   
Add   
(   
S   
[   
$str   *
]  * +
,  + ,
configuration  - :
=>  ; =
configuration  > K
.!! 
Add!! 
(!! 
S!! 
[!! 
$str!! )
]!!) *
,!!* +
settings!!, 4
=>!!5 7
settings!!8 @
."" 
Add""  
(""  !
new""! $
LocalizedString""% 4
(""4 5
type""5 9
.""9 :
DisplayName"": E
,""E F
type""G K
.""K L
DisplayName""L W
)""W X
,""X Y
type""Z ^
.""^ _
DisplayName""_ j
.""j k
PrefixPosition""k y
(""y z
)""z {
,""{ |
layers	""} É
=>
""Ñ Ü
layers
""á ç
.##  !
Action##! '
(##' (
$str##( /
,##/ 0
$str##1 8
,##8 9
new##: =
{##> ?
area##@ D
=##E F
$str##G ]
,##] ^
groupId##_ f
=##g h
type##i m
.##m n
Name##n r
}##s t
)##t u
.$$  !

Permission$$! +
($$+ ,
Permissions$$, 7
.$$7 8#
CreatePermissionForType$$8 O
($$O P
type$$P T
)$$T U
)$$U V
.%%  !
Resource%%! )
(%%) *
type%%* .
.%%. /
Name%%/ 3
)%%3 4
.&&  !
LocalNav&&! )
(&&) *
)&&* +
)'' 
)'' 
)'' 
;''  
}(( 
return** 
Task** 
.** 
CompletedTask** %
;**% &
}++ 	
},, 
}-- ·
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Deployment\CustomSettingsDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %

Deployment% /
{		 
public

 

class

 *
CustomSettingsDeploymentSource

 /
:

0 1
IDeploymentSource

2 C
{ 
private 
readonly !
CustomSettingsService ."
_customSettingsService/ E
;E F
public *
CustomSettingsDeploymentSource -
(- .!
CustomSettingsService. C!
customSettingsServiceD Y
)Y Z
{ 	"
_customSettingsService "
=# $!
customSettingsService% :
;: ;
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
customSettingsStep "
=# $
step% )
as* ,(
CustomSettingsDeploymentStep- I
;I J
if 
( 
customSettingsStep "
==# %
null& *
)* +
{ 
return 
; 
} 
var 
settingsList 
= 
new "
List# '
<' (
	JProperty( 1
>1 2
{3 4
new5 8
	JProperty9 B
(B C
$strC I
,I J
$strK \
)\ ]
}^ _
;_ `
var 
settingsTypes 
= 
customSettingsStep  2
.2 3

IncludeAll3 =
? "
_customSettingsService (
.( )
GetAllSettingsTypes) <
(< =
)= >
.> ?
ToArray? F
(F G
)G H
: "
_customSettingsService (
.( )
GetSettingsTypes) 9
(9 :
customSettingsStep: L
.L M
SettingsTypeNamesM ^
)^ _
._ `
ToArray` g
(g h
)h i
;i j
foreach!! 
(!! 
var!! 
settingsType!! %
in!!& (
settingsTypes!!) 6
)!!6 7
{"" 
if## 
(## 
!## 
await## "
_customSettingsService## 1
.##1 2&
CanUserCreateSettingsAsync##2 L
(##L M
settingsType##M Y
)##Y Z
)##Z [
{$$ 
return%% 
;%% 
}&& 
}'' 
foreach)) 
()) 
var)) 
settingsType)) %
in))& (
settingsTypes))) 6
)))6 7
{** 
var++ 
settings++ 
=++ 
await++ $"
_customSettingsService++% ;
.++; <
GetSettingsAsync++< L
(++L M
settingsType++M Y
)++Y Z
;++Z [
settingsList,, 
.,, 
Add,,  
(,,  !
new,,! $
	JProperty,,% .
(,,. /
settings,,/ 7
.,,7 8
ContentType,,8 C
,,,C D
JObject,,E L
.,,L M

FromObject,,M W
(,,W X
settings,,X `
),,` a
),,a b
),,b c
;,,c d
}-- 
result00 
.00 
Steps00 
.00 
Add00 
(00 
new00  
JObject00! (
(00( )
settingsList00) 5
.005 6
ToArray006 =
(00= >
)00> ?
)00? @
)00@ A
;00A B
}11 	
}22 
}33 ß
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Deployment\CustomSettingsDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %

Deployment% /
{ 
public 

class (
CustomSettingsDeploymentStep -
:. /
DeploymentStep0 >
{ 
public (
CustomSettingsDeploymentStep +
(+ ,
), -
{ 	
Name		 
=		 
$str		 #
;		# $
}

 	
public 
bool 

IncludeAll 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
true/ 3
;3 4
public 
string 
[ 
] 
SettingsTypeNames )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ¸!
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Deployment\CustomSettingsDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %

Deployment% /
{ 
public 

class .
"CustomSettingsDeploymentStepDriver 3
:4 5
DisplayDriver6 C
<C D
DeploymentStepD R
,R S(
CustomSettingsDeploymentStepT p
>p q
{ 
private 
readonly !
CustomSettingsService ."
_customSettingsService/ E
;E F
public .
"CustomSettingsDeploymentStepDriver 1
(1 2!
CustomSettingsService2 G!
customSettingsServiceH ]
)] ^
{ 	"
_customSettingsService "
=# $!
customSettingsService% :
;: ;
} 	
public 
override 
IDisplayResult &
Display' .
(. /(
CustomSettingsDeploymentStep/ K
stepL P
)P Q
{ 	
return 
Combine 
( 
View 
( 
$str F
,F G
stepH L
)L M
.M N
LocationN V
(V W
$strW `
,` a
$strb k
)k l
,l m
View 
( 
$str H
,H I
stepJ N
)N O
.O P
LocationP X
(X Y
$strY d
,d e
$strf o
)o p
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,(
CustomSettingsDeploymentStep, H
stepI M
)M N
{   	
return!! 

Initialize!! 
<!! 1
%CustomSettingsDeploymentStepViewModel!! C
>!!C D
(!!D E
$str!!E o
,!!o p
model!!q v
=>!!w y
{"" 
model## 
.## 

IncludeAll##  
=##! "
step### '
.##' (

IncludeAll##( 2
;##2 3
model$$ 
.$$ 
SettingsTypeNames$$ '
=$$( )
step$$* .
.$$. /
SettingsTypeNames$$/ @
;$$@ A
model%% 
.%%  
AllSettingsTypeNames%% *
=%%+ ,"
_customSettingsService%%- C
.%%C D#
GetAllSettingsTypeNames%%D [
(%%[ \
)%%\ ]
.%%] ^
ToArray%%^ e
(%%e f
)%%f g
;%%g h
}&& 
)&& 
.&& 
Location&& 
(&& 
$str&& !
)&&! "
;&&" #
}'' 	
public)) 
override)) 
async)) 
Task)) "
<))" #
IDisplayResult))# 1
>))1 2
UpdateAsync))3 >
())> ?(
CustomSettingsDeploymentStep))? [
step))\ `
,))` a
IUpdateModel))b n
updater))o v
)))v w
{** 	
step++ 
.++ 
SettingsTypeNames++ "
=++# $
Array++% *
.++* +
Empty+++ 0
<++0 1
string++1 7
>++7 8
(++8 9
)++9 :
;++: ;
await-- 
updater-- 
.-- 
TryUpdateModelAsync-- -
(--- .
step--. 2
,--2 3
Prefix... 4
,..4 5
x//. /
=>//0 2
x//3 4
.//4 5
SettingsTypeNames//5 F
,//F G
x00. /
=>000 2
x003 4
.004 5

IncludeAll005 ?
)00? @
;00@ A
if33 
(33 
step33 
.33 

IncludeAll33 
)33  
{44 
step55 
.55 
SettingsTypeNames55 &
=55' (
Array55) .
.55. /
Empty55/ 4
<554 5
string555 ;
>55; <
(55< =
)55= >
;55> ?
}66 
return88 
Edit88 
(88 
step88 
)88 
;88 
}99 	
}:: 
};; ≥/
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Drivers\CustomSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
CustomSettings

 $
.

$ %
Drivers

% ,
{ 
public 

class '
CustomSettingsDisplayDriver ,
:- .
DisplayDriver/ <
<< =
ISite= B
>B C
{ 
private 
readonly !
CustomSettingsService ."
_customSettingsService/ E
;E F
private 
readonly &
IContentItemDisplayManager 3&
_contentItemDisplayManager4 N
;N O
public '
CustomSettingsDisplayDriver *
(* +!
CustomSettingsService !!
customSettingsService" 7
,7 8&
IContentItemDisplayManager &%
contentItemDisplayManager' @
)@ A
{ 	"
_customSettingsService "
=# $!
customSettingsService% :
;: ;&
_contentItemDisplayManager &
=' (%
contentItemDisplayManager) B
;B C
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =
ISite= B
siteC G
,G H
BuildEditorContextI [
context\ c
)c d
{ 	
var !
contentTypeDefinition %
=& '"
_customSettingsService( >
.> ?
GetSettingsType? N
(N O
contextO V
.V W
GroupIdW ^
)^ _
;_ `
if   
(   !
contentTypeDefinition   %
==  & (
null  ) -
)  - .
{!! 
return"" 
null"" 
;"" 
}## 
if%% 
(%% 
!%% 
await%% "
_customSettingsService%% -
.%%- .&
CanUserCreateSettingsAsync%%. H
(%%H I!
contentTypeDefinition%%I ^
)%%^ _
)%%_ `
{&& 
return'' 
null'' 
;'' 
}(( 
var** 
isNew** 
=** 
false** 
;** 
var++ 
contentItem++ 
=++ 
await++ #"
_customSettingsService++$ :
.++: ;
GetSettingsAsync++; K
(++K L
site++L P
,++P Q!
contentTypeDefinition++R g
,++g h
(++i j
)++j k
=>++l n
isNew++o t
=++u v
true++w {
)++{ |
;++| }
var-- 
shape-- 
=-- 

Initialize-- "
<--" #'
CustomSettingsEditViewModel--# >
>--> ?
(--? @
$str--@ P
,--P Q
async--R W
ctx--X [
=>--\ ^
{.. 
ctx// 
.// 
Editor// 
=// 
await// "&
_contentItemDisplayManager//# =
.//= >
BuildEditorAsync//> N
(//N O
contentItem//O Z
,//Z [
context//\ c
.//c d
Updater//d k
,//k l
isNew//m r
)//r s
;//s t
}00 
)00 
.00 
Location00 
(00 
$str00 #
)00# $
.00$ %
OnGroup00% ,
(00, -!
contentTypeDefinition00- B
.00B C
Name00C G
)00G H
;00H I
return22 
shape22 
;22 
}33 	
public55 
override55 
async55 
Task55 "
<55" #
IDisplayResult55# 1
>551 2
UpdateAsync553 >
(55> ?
ISite55? D
site55E I
,55I J
UpdateEditorContext55K ^
context55_ f
)55f g
{66 	
var77 !
contentTypeDefinition77 %
=77& '"
_customSettingsService77( >
.77> ?
GetSettingsType77? N
(77N O
context77O V
.77V W
GroupId77W ^
)77^ _
;77_ `
if88 
(88 !
contentTypeDefinition88 %
==88& (
null88) -
)88- .
{99 
return:: 
null:: 
;:: 
};; 
if== 
(== 
!== 
await== "
_customSettingsService== -
.==- .&
CanUserCreateSettingsAsync==. H
(==H I!
contentTypeDefinition==I ^
)==^ _
)==_ `
{>> 
return?? 
null?? 
;?? 
}@@ 
varBB 
isNewBB 
=BB 
falseBB 
;BB 
varCC 
contentItemCC 
=CC 
awaitCC #"
_customSettingsServiceCC$ :
.CC: ;
GetSettingsAsyncCC; K
(CCK L
siteCCL P
,CCP Q!
contentTypeDefinitionCCR g
,CCg h
(CCi j
)CCj k
=>CCl n
isNewCCo t
=CCu v
trueCCw {
)CC{ |
;CC| }
awaitEE &
_contentItemDisplayManagerEE ,
.EE, -
UpdateEditorAsyncEE- >
(EE> ?
contentItemEE? J
,EEJ K
contextEEL S
.EES T
UpdaterEET [
,EE[ \
isNewEE] b
)EEb c
;EEc d
siteGG 
.GG 

PropertiesGG 
[GG !
contentTypeDefinitionGG 1
.GG1 2
NameGG2 6
]GG6 7
=GG8 9
JObjectGG: A
.GGA B

FromObjectGGB L
(GGL M
contentItemGGM X
)GGX Y
;GGY Z
returnII 
awaitII 
	EditAsyncII "
(II" #
siteII# '
,II' (
contextII) 0
)II0 1
;II1 2
}JJ 	
}KK 
}LL “
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str e
,e f
Dependencies		 
=		 
new		 
[		 
]		 
{		 
$str		 1
}		2 3
,		3 4
Category

 
=

 
$str

 
) 
] Ã
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Permissions.cs
	namespace		 	
OrchardCore		
 
.		 
CustomSettings		 $
{

 
public 

class 
Permissions 
: 
IPermissionProvider 2
{ 
private 
static 
readonly 

Permission  * 
ManageCustomSettings+ ?
=@ A
newB E

PermissionF P
(P Q
$strQ k
,k l
$str	m ã
,
ã å
new
ç ê
[
ê ë
]
ë í
{
ì î
new
ï ò

Permission
ô £
(
£ §
$str
§ º
)
º Ω
}
æ ø
)
ø ¿
;
¿ ¡
private 
readonly !
CustomSettingsService ."
_customSettingsService/ E
;E F
public 
Permissions 
( !
CustomSettingsService 0!
customSettingsService1 F
)F G
{ 	"
_customSettingsService "
=# $!
customSettingsService% :
;: ;
} 	
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
var 
list 
= 
new 
List 
<  

Permission  *
>* +
(+ ,
), -
;- .
foreach 
( 
var 
type 
in  "
_customSettingsService! 7
.7 8
GetAllSettingsTypes8 K
(K L
)L M
)M N
{ 
list 
. 
Add 
( #
CreatePermissionForType 0
(0 1
type1 5
)5 6
)6 7
;7 8
} 
return 
Task 
. 

FromResult "
(" #
list# '
.' (
AsEnumerable( 4
(4 5
)5 6
)6 7
;7 8
}   	
public"" 
static"" 
string""  
CreatePermissionName"" 1
(""1 2
string""2 8
name""9 =
)""= >
{## 	
return$$ 
String$$ 
.$$ 
Format$$  
($$  ! 
ManageCustomSettings$$! 5
.$$5 6
Name$$6 :
,$$: ;
name$$< @
)$$@ A
;$$A B
}%% 	
public'' 
static'' 

Permission''  #
CreatePermissionForType''! 8
(''8 9!
ContentTypeDefinition''9 N
type''O S
)''S T
{(( 	
return)) 
new)) 

Permission)) !
())! " 
CreatePermissionName** (
(**( )
type**) -
.**- .
Name**. 2
)**2 3
,**3 4
String++ 
.++ 
Format++ !
(++! " 
ManageCustomSettings++" 6
.++6 7
Description++7 B
,++B C
type++D H
.++H I
DisplayName++I T
)++T U
,++U V 
ManageCustomSettings,, (
.,,( )
	ImpliedBy,,) 2
)-- 
;-- 
}.. 	
public00 
IEnumerable00 
<00  
PermissionStereotype00 /
>00/ 0!
GetDefaultStereotypes001 F
(00F G
)00G H
{11 	
return22 

Enumerable22 
.22 
Empty22 #
<22# $ 
PermissionStereotype22$ 8
>228 9
(229 :
)22: ;
;22; <
}33 	
}44 
}55 ÷
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Recipes\CustomSettingsStep.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %
Recipes% ,
{		 
public 

class 
CustomSettingsStep #
:$ %
IRecipeStepHandler& 8
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
CustomSettingsStep !
(! "
ISiteService" .
siteService/ :
): ;
{ 	
_siteService 
= 
siteService &
;& '
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
$str- >
,> ?
StringComparison@ P
.P Q
OrdinalIgnoreCaseQ b
)b c
)c d
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
;$ %
var 
customSettingsList "
=# $
(% &
from& *
property+ 3
in4 6
model7 <
.< =

Properties= G
(G H
)H I
where  & +
property  , 4
.  4 5
Name  5 9
!=  : <
$str  = C
select!!& ,
property!!- 5
)!!5 6
.!!6 7
ToArray!!7 >
(!!> ?
)!!? @
;!!@ A
var## 
siteSettings## 
=## 
await## $
_siteService##% 1
.##1 2!
LoadSiteSettingsAsync##2 G
(##G H
)##H I
;##I J
foreach%% 
(%% 
var%% 
customSettings%% '
in%%( *
customSettingsList%%+ =
)%%= >
{&& 
siteSettings'' 
.'' 

Properties'' '
[''' (
customSettings''( 6
.''6 7
Name''7 ;
]''; <
=''= >
customSettings''? M
.''M N
Value''N S
;''S T
}(( 
await** 
_siteService** 
.** #
UpdateSiteSettingsAsync** 6
(**6 7
siteSettings**7 C
)**C D
;**D E
}++ 	
},, 
}-- Œ
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Services\CustomSettingsAuthorizationHandler.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %
Services% -
{		 
public

 

class

 .
"CustomSettingsAuthorizationHandler

 3
:

4 5 
AuthorizationHandler

6 J
<

J K!
PermissionRequirement

K `
>

` a
{ 
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public .
"CustomSettingsAuthorizationHandler 1
(1 2
IServiceProvider2 B
serviceProviderC R
)R S
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
	protected 
override 
async  
Task! %"
HandleRequirementAsync& <
(< ='
AuthorizationHandlerContext= X
contextY `
,` a!
PermissionRequirementb w
requirement	x É
)
É Ñ
{ 	
if 
( 
context 
. 
HasSucceeded $
)$ %
{ 
return 
; 
} 
if 
( 
requirement 
. 

Permission &
.& '
Name' +
!=, .
$str/ G
)G H
{ 
return 
; 
} 
if   
(   
context   
.   
Resource    
==  ! #
null  $ (
||  ) +
context  , 3
.  3 4
Resource  4 <
.  < =
ToString  = E
(  E F
)  F G
==  H J
$str  K M
)  M N
{!! 
return"" 
;"" 
}## 
var&&  
authorizationService&& $
=&&% &
_serviceProvider&&' 7
.&&7 8

GetService&&8 B
<&&B C!
IAuthorizationService&&C X
>&&X Y
(&&Y Z
)&&Z [
;&&[ \
if(( 
((( 
await((  
authorizationService(( *
.((* +
AuthorizeAsync((+ 9
(((9 :
context((: A
.((A B
User((B F
,((F G
new((H K

Permission((L V
(((V W
Permissions((W b
.((b c 
CreatePermissionName((c w
(((w x
context((x 
.	(( Ä
Resource
((Ä à
.
((à â
ToString
((â ë
(
((ë í
)
((í ì
)
((ì î
)
((î ï
)
((ï ñ
)
((ñ ó
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
}.. »K
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Services\CustomSettingsService.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %
Services% -
{ 
public 

class !
CustomSettingsService &
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IContentManager (
_contentManager) 8
;8 9
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly 
Lazy 
< 
IDictionary )
<) *
string* 0
,0 1!
ContentTypeDefinition2 G
>G H
>H I
_settingsTypesJ X
;X Y
public !
CustomSettingsService $
($ %
ISiteService 
siteService $
,$ %
IContentManager 
contentManager *
,* + 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
,6 7%
IContentDefinitionManager %$
contentDefinitionManager& >
)> ?
{ 	
_siteService   
=   
siteService   &
;  & '
_contentManager!! 
=!! 
contentManager!! ,
;!!, - 
_httpContextAccessor""  
=""! "
httpContextAccessor""# 6
;""6 7!
_authorizationService## !
=##" # 
authorizationService##$ 8
;##8 9%
_contentDefinitionManager$$ %
=$$& '$
contentDefinitionManager$$( @
;$$@ A
_settingsTypes%% 
=%% 
new%%  
Lazy%%! %
<%%% &
IDictionary%%& 1
<%%1 2
string%%2 8
,%%8 9!
ContentTypeDefinition%%: O
>%%O P
>%%P Q
(%%Q R
(&& 
)&& 
=>&& %
_contentDefinitionManager&& /
.'' 
ListTypeDefinitions'' )
('') *
)''* +
.(( 
Where(( 
((( 
x(( 
=>((  
x((! "
.((" #
GetSettings((# .
<((. /
ContentTypeSettings((/ B
>((B C
(((C D
)((D E
.((E F

Stereotype((F P
==((Q S
$str((T d
)((d e
.)) 
ToDictionary)) "
())" #
x))# $
=>))% '
x))( )
.))) *
Name))* .
))). /
)))/ 0
;))0 1
}** 	
public,, 
IEnumerable,, 
<,, 
string,, !
>,,! "#
GetAllSettingsTypeNames,,# :
(,,: ;
),,; <
{-- 	
return.. 
_settingsTypes.. !
...! "
Value.." '
...' (
Keys..( ,
;.., -
}// 	
public11 
IEnumerable11 
<11 !
ContentTypeDefinition11 0
>110 1
GetAllSettingsTypes112 E
(11E F
)11F G
{22 	
return33 
_settingsTypes33 !
.33! "
Value33" '
.33' (
Values33( .
;33. /
}44 	
public66 
IEnumerable66 
<66 !
ContentTypeDefinition66 0
>660 1
GetSettingsTypes662 B
(66B C
params66C I
string66J P
[66P Q
]66Q R
settingsTypeNames66S d
)66d e
{77 	
foreach88 
(88 
var88 
settingsTypeName88 )
in88* ,
settingsTypeNames88- >
)88> ?
{99 !
ContentTypeDefinition:: %
settingsType::& 2
;::2 3
if;; 
(;; 
_settingsTypes;; "
.;;" #
Value;;# (
.;;( )
TryGetValue;;) 4
(;;4 5
settingsTypeName;;5 E
,;;E F
out;;G J
settingsType;;K W
);;W X
);;X Y
{<< 
yield== 
return==  
settingsType==! -
;==- .
}>> 
}?? 
}@@ 	
publicBB !
ContentTypeDefinitionBB $
GetSettingsTypeBB% 4
(BB4 5
stringBB5 ;
settingsTypeNameBB< L
)BBL M
{CC 	!
ContentTypeDefinitionDD !
settingsTypeDD" .
;DD. /
_settingsTypesFF 
.FF 
ValueFF  
.FF  !
TryGetValueFF! ,
(FF, -
settingsTypeNameFF- =
,FF= >
outFF? B
settingsTypeFFC O
)FFO P
;FFP Q
returnHH 
settingsTypeHH 
;HH  
}II 	
publicKK 
asyncKK 
TaskKK 
<KK 
boolKK 
>KK &
CanUserCreateSettingsAsyncKK  :
(KK: ;!
ContentTypeDefinitionKK; P
settingsTypeKKQ ]
)KK] ^
{LL 	
varMM 
userMM 
=MM  
_httpContextAccessorMM +
.MM+ ,
HttpContextMM, 7
?MM7 8
.MM8 9
UserMM9 =
;MM= >
returnOO 
awaitOO !
_authorizationServiceOO .
.OO. /
AuthorizeAsyncOO/ =
(OO= >
userOO> B
,OOB C
PermissionsOOD O
.OOO P#
CreatePermissionForTypeOOP g
(OOg h
settingsTypeOOh t
)OOt u
)OOu v
;OOv w
}PP 	
publicRR 
TaskRR 
<RR 
ContentItemRR 
>RR  
GetSettingsAsyncRR! 1
(RR1 2
stringRR2 8
settingsTypeNameRR9 I
,RRI J
ActionRRK Q
isNewRRR W
=RRX Y
nullRRZ ^
)RR^ _
{SS 	
varTT 
settingsTypeTT 
=TT 
GetSettingsTypeTT .
(TT. /
settingsTypeNameTT/ ?
)TT? @
;TT@ A
ifUU 
(UU 
settingsTypeUU 
==UU 
nullUU  $
)UU$ %
{VV 
returnWW 
TaskWW 
.WW 

FromResultWW &
<WW& '
ContentItemWW' 2
>WW2 3
(WW3 4
nullWW4 8
)WW8 9
;WW9 :
}XX 
returnZZ 
GetSettingsAsyncZZ #
(ZZ# $
settingsTypeZZ$ 0
,ZZ0 1
isNewZZ2 7
)ZZ7 8
;ZZ8 9
}[[ 	
public]] 
async]] 
Task]] 
<]] 
ContentItem]] %
>]]% &
GetSettingsAsync]]' 7
(]]7 8!
ContentTypeDefinition]]8 M
settingsType]]N Z
,]]Z [
Action]]\ b
isNew]]c h
=]]i j
null]]k o
)]]o p
{^^ 	
var__ 
site__ 
=__ 
await__ 
_siteService__ )
.__) * 
GetSiteSettingsAsync__* >
(__> ?
)__? @
;__@ A
returnaa 
awaitaa 
GetSettingsAsyncaa )
(aa) *
siteaa* .
,aa. /
settingsTypeaa0 <
,aa< =
isNewaa> C
)aaC D
;aaD E
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
ContentItemdd %
>dd% &
GetSettingsAsyncdd' 7
(dd7 8
ISitedd8 =
sitedd> B
,ddB C!
ContentTypeDefinitionddD Y
settingsTypeddZ f
,ddf g
Actionddh n
isNewddo t
=ddu v
nullddw {
)dd{ |
{ee 	
JTokenff 
propertyff 
;ff 
ContentItemgg 
contentItemgg #
;gg# $
ifii 
(ii 
siteii 
.ii 

Propertiesii 
.ii  
TryGetValueii  +
(ii+ ,
settingsTypeii, 8
.ii8 9
Nameii9 =
,ii= >
outii? B
propertyiiC K
)iiK L
)iiL M
{jj 
varkk 
existingkk 
=kk 
propertykk '
.kk' (
ToObjectkk( 0
<kk0 1
ContentItemkk1 <
>kk< =
(kk= >
)kk> ?
;kk? @
contentItemnn 
=nn 
awaitnn #
_contentManagernn$ 3
.nn3 4
NewAsyncnn4 <
(nn< =
existingnn= E
.nnE F
ContentTypennF Q
)nnQ R
;nnR S
contentItemoo 
.oo 
Mergeoo !
(oo! "
existingoo" *
)oo* +
;oo+ ,
}pp 
elseqq 
{rr 
contentItemss 
=ss 
awaitss #
_contentManagerss$ 3
.ss3 4
NewAsyncss4 <
(ss< =
settingsTypess= I
.ssI J
NamessJ N
)ssN O
;ssO P
isNewtt 
?tt 
.tt 
Invokett 
(tt 
)tt 
;tt  
}uu 
returnww 
contentItemww 
;ww 
}xx 	
}yy 
}zz «
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\Startup.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3
	AdminMenu4 =
>= >
(> ?
)? @
;@ A
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 5'
CustomSettingsDisplayDriver6 Q
>Q R
(R S
)S T
;T U
services 
. 
	AddScoped 
< !
CustomSettingsService 4
>4 5
(5 6
)6 7
;7 8
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
>? @
(@ A
)A B
;B C
services 
. 
	AddScoped 
< !
IAuthorizationHandler 4
,4 5.
"CustomSettingsAuthorizationHandler6 X
>X Y
(Y Z
)Z [
;[ \
services 
. "
AddRecipeExecutionStep +
<+ ,
CustomSettingsStep, >
>> ?
(? @
)@ A
;A B
} 	
} 
[!! 
RequireFeatures!! 
(!! 
$str!! -
)!!- .
]!!. /
public"" 

class"" 
DeploymentStartup"" "
:""# $
StartupBase""% 0
{## 
public$$ 
override$$ 
void$$ 
ConfigureServices$$ .
($$. /
IServiceCollection$$/ A
services$$B J
)$$J K
{%% 	
services&& 
.&& 
AddTransient&& !
<&&! "
IDeploymentSource&&" 3
,&&3 4*
CustomSettingsDeploymentSource&&5 S
>&&S T
(&&T U
)&&U V
;&&V W
services'' 
.'' 
AddSingleton'' !
<''! ""
IDeploymentStepFactory''" 8
>''8 9
(''9 :
new'': =!
DeploymentStepFactory''> S
<''S T(
CustomSettingsDeploymentStep''T p
>''p q
(''q r
)''r s
)''s t
;''t u
services(( 
.(( 
	AddScoped(( 
<(( 
IDisplayDriver(( -
<((- .
DeploymentStep((. <
>((< =
,((= >.
"CustomSettingsDeploymentStepDriver((? a
>((a b
(((b c
)((c d
;((d e
})) 	
}** 
}++ Ë
ÆD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\ViewModels\CustomSettingsDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %

ViewModels% /
{ 
public 

class 1
%CustomSettingsDeploymentStepViewModel 6
{ 
public 
bool 

IncludeAll 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
[ 
] 
SettingsTypeNames )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
[ 
]  
AllSettingsTypeNames ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
}		  
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.CustomSettings\ViewModels\CustomSettingsEditViewModel.cs
	namespace 	
OrchardCore
 
. 
CustomSettings $
.$ %

ViewModels% /
{ 
public 

class '
CustomSettingsEditViewModel ,
{ 
public 
dynamic 
Editor 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 