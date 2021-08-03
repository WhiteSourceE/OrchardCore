√
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Settings 
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
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
configuration, 9
=>: <
configuration= J
. 
Add 
( 
S 
[ 
$str !
]! "
," #
$str$ '
,' (
settings) 1
=>2 4
settings5 =
. 
Add 
( 
S 
[ 
$str $
]$ %
,% &
$str' *
,* +
entry, 1
=>2 4
entry5 :
. 
AddClass 
( 
$str '
)' (
.( )
Id) +
(+ ,
$str, 5
)5 6
. 
Action 
(  
$str  '
,' (
$str) 0
,0 1
new2 5
{6 7
area8 <
== >
$str? U
,U V
groupIdW ^
=_ `
$stra j
}k l
)l m
. 

Permission #
(# $
Permissions$ /
./ 0
ManageGroupSettings0 C
)C D
. 
LocalNav !
(! "
)" #
) 
)   
)!! 
;!! 
return## 
Task## 
.## 
CompletedTask## %
;##% &
}$$ 	
}%% 
}&& ∂2
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Controllers\AdminController.cs
	namespace

 	
OrchardCore


 
.

 
Settings

 
.

 
Controllers

 *
{ 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
IDisplayManager (
<( )
ISite) .
>. /'
_siteSettingsDisplayManager0 K
;K L
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public 
AdminController 
( 
ISiteService 
siteService $
,$ %
IDisplayManager 
< 
ISite !
>! "&
siteSettingsDisplayManager# =
,= >!
IAuthorizationService ! 
authorizationService" 6
,6 7
	INotifier 
notifier 
, 
IHtmlLocalizer 
< 
AdminController *
>* +
h, -
,- . 
IUpdateModelAccessor  
updateModelAccessor! 4
)4 5
{ 	'
_siteSettingsDisplayManager '
=( )&
siteSettingsDisplayManager* D
;D E
_siteService 
= 
siteService &
;& '
	_notifier 
= 
notifier  
;  !!
_authorizationService   !
=  " # 
authorizationService  $ 8
;  8 9 
_updateModelAccessor!!  
=!!! "
updateModelAccessor!!# 6
;!!6 7
H"" 
="" 
h"" 
;"" 
}## 	
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
Index%%) .
(%%. /
string%%/ 5
groupId%%6 =
)%%= >
{&& 	
if'' 
('' 
!'' 
await'' !
_authorizationService'' ,
.'', -
AuthorizeAsync''- ;
(''; <
User''< @
,''@ A
Permissions''B M
.''M N
ManageGroupSettings''N a
,''a b
(''c d
object''d j
)''j k
groupId''k r
)''r s
)''s t
{(( 
return)) 
Forbid)) 
()) 
))) 
;))  
}** 
var,, 
site,, 
=,, 
await,, 
_siteService,, )
.,,) * 
GetSiteSettingsAsync,,* >
(,,> ?
),,? @
;,,@ A
var.. 
	viewModel.. 
=.. 
new.. 
AdminIndexViewModel..  3
{// 
GroupId00 
=00 
groupId00 !
,00! "
Shape11 
=11 
await11 '
_siteSettingsDisplayManager11 9
.119 :
BuildEditorAsync11: J
(11J K
site11K O
,11O P 
_updateModelAccessor11Q e
.11e f
ModelUpdater11f r
,11r s
false11t y
,11y z
groupId	11{ Ç
)
11Ç É
}22 
;22 
return44 
View44 
(44 
	viewModel44 !
)44! "
;44" #
}55 	
[77 	
HttpPost77	 
]77 
[88 	

ActionName88	 
(88 
nameof88 
(88 
Index88  
)88  !
)88! "
]88" #
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' (
	IndexPost99) 2
(992 3
string993 9
groupId99: A
)99A B
{:: 	
if;; 
(;; 
!;; 
await;; !
_authorizationService;; ,
.;;, -
AuthorizeAsync;;- ;
(;;; <
User;;< @
,;;@ A
Permissions;;B M
.;;M N
ManageGroupSettings;;N a
,;;a b
(;;c d
object;;d j
);;j k
groupId;;k r
);;r s
);;s t
{<< 
return== 
Forbid== 
(== 
)== 
;==  
}>> 
var@@ 
site@@ 
=@@ 
await@@ 
_siteService@@ )
.@@) *!
LoadSiteSettingsAsync@@* ?
(@@? @
)@@@ A
;@@A B
varBB 
	viewModelBB 
=BB 
newBB 
AdminIndexViewModelBB  3
{CC 
GroupIdDD 
=DD 
groupIdDD !
,DD! "
ShapeEE 
=EE 
awaitEE '
_siteSettingsDisplayManagerEE 9
.EE9 :
UpdateEditorAsyncEE: K
(EEK L
siteEEL P
,EEP Q 
_updateModelAccessorEER f
.EEf g
ModelUpdaterEEg s
,EEs t
falseEEu z
,EEz {
groupId	EE| É
)
EEÉ Ñ
}FF 
;FF 
ifHH 
(HH 

ModelStateHH 
.HH 
IsValidHH "
)HH" #
{II 
awaitJJ 
_siteServiceJJ "
.JJ" ##
UpdateSiteSettingsAsyncJJ# :
(JJ: ;
siteJJ; ?
)JJ? @
;JJ@ A
	_notifierLL 
.LL 
SuccessLL !
(LL! "
HLL" #
[LL# $
$strLL$ I
]LLI J
)LLJ K
;LLK L
returnNN 
RedirectToActionNN '
(NN' (
nameofNN( .
(NN. /
IndexNN/ 4
)NN4 5
,NN5 6
newNN7 :
{NN; <
groupIdNN= D
}NNE F
)NNF G
;NNG H
}OO 
returnQQ 
ViewQQ 
(QQ 
	viewModelQQ !
)QQ! "
;QQ" #
}RR 	
}SS 
}TT ìK
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Deployment\SiteSettingsDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

Deployment )
{ 
public 

class (
SiteSettingsDeploymentSource -
:. /
IDeploymentSource0 A
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
2 3
public (
SiteSettingsDeploymentSource +
(+ ,
ISiteService, 8
siteService9 D
)D E
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task &
ProcessDeploymentStepAsync 4
(4 5
DeploymentStep5 C
stepD H
,H I 
DeploymentPlanResultJ ^
result_ e
)e f
{ 	
var 
settingsStep 
= 
step #
as$ &&
SiteSettingsDeploymentStep' A
;A B
if 
( 
settingsStep 
== 
null  $
)$ %
{ 
return 
; 
} 
var 
site 
= 
await 
_siteService )
.) * 
GetSiteSettingsAsync* >
(> ?
)? @
;@ A
var 
data 
= 
new 
JObject "
(" #
new# &
	JProperty' 0
(0 1
$str1 7
,7 8
$str9 C
)C D
)D E
;E F
foreach 
( 
var 
settingName $
in% '
settingsStep( 4
.4 5
Settings5 =
)= >
{ 
switch 
( 
settingName #
)# $
{   
case!! 
$str!! "
:!!" #
data"" 
."" 
Add""  
(""  !
new""! $
	JProperty""% .
("". /
nameof""/ 5
(""5 6
ISite""6 ;
.""; <
BaseUrl""< C
)""C D
,""D E
site""F J
.""J K
BaseUrl""K R
)""R S
)""S T
;""T U
break## 
;## 
case%% 
$str%% #
:%%# $
data&& 
.&& 
Add&&  
(&&  !
new&&! $
	JProperty&&% .
(&&. /
nameof&&/ 5
(&&5 6
ISite&&6 ;
.&&; <
Calendar&&< D
)&&D E
,&&E F
site&&G K
.&&K L
Calendar&&L T
)&&T U
)&&U V
;&&V W
break'' 
;'' 
case)) 
$str)) (
:))( )
data** 
.** 
Add**  
(**  !
new**! $
	JProperty**% .
(**. /
nameof**/ 5
(**5 6
ISite**6 ;
.**; <
MaxPagedCount**< I
)**I J
,**J K
site**L P
.**P Q
MaxPagedCount**Q ^
)**^ _
)**_ `
;**` a
break++ 
;++ 
case-- 
$str-- &
:--& '
data.. 
... 
Add..  
(..  !
new..! $
	JProperty..% .
(... /
nameof../ 5
(..5 6
ISite..6 ;
...; <
MaxPageSize..< G
)..G H
,..H I
site..J N
...N O
MaxPageSize..O Z
)..Z [
)..[ \
;..\ ]
break// 
;// 
case11 
$str11 #
:11# $
data22 
.22 
Add22  
(22  !
new22! $
	JProperty22% .
(22. /
nameof22/ 5
(225 6
ISite226 ;
.22; <
PageSize22< D
)22D E
,22E F
site22G K
.22K L
PageSize22L T
)22T U
)22U V
;22V W
break33 
;33 
case55 
$str55 ,
:55, -
data66 
.66 
Add66  
(66  !
new66! $
	JProperty66% .
(66. /
nameof66/ 5
(665 6
ISite666 ;
.66; <
ResourceDebugMode66< M
)66M N
,66N O
site66P T
.66T U
ResourceDebugMode66U f
)66f g
)66g h
;66h i
break77 
;77 
case99 
$str99 #
:99# $
data:: 
.:: 
Add::  
(::  !
new::! $
	JProperty::% .
(::. /
nameof::/ 5
(::5 6
ISite::6 ;
.::; <
SiteName::< D
)::D E
,::E F
site::G K
.::K L
SiteName::L T
)::T U
)::U V
;::V W
break;; 
;;; 
case== 
$str== *
:==* +
data>> 
.>> 
Add>>  
(>>  !
new>>! $
	JProperty>>% .
(>>. /
nameof>>/ 5
(>>5 6
ISite>>6 ;
.>>; <
PageTitleFormat>>< K
)>>K L
,>>L M
site>>N R
.>>R S
PageTitleFormat>>S b
)>>b c
)>>c d
;>>d e
break?? 
;?? 
caseAA 
$strAA #
:AA# $
dataBB 
.BB 
AddBB  
(BB  !
newBB! $
	JPropertyBB% .
(BB. /
nameofBB/ 5
(BB5 6
ISiteBB6 ;
.BB; <
SiteSaltBB< D
)BBD E
,BBE F
siteBBG K
.BBK L
SiteSaltBBL T
)BBT U
)BBU V
;BBV W
breakCC 
;CC 
caseEE 
$strEE $
:EE$ %
dataFF 
.FF 
AddFF  
(FF  !
newFF! $
	JPropertyFF% .
(FF. /
nameofFF/ 5
(FF5 6
ISiteFF6 ;
.FF; <
	SuperUserFF< E
)FFE F
,FFF G
siteFFH L
.FFL M
	SuperUserFFM V
)FFV W
)FFW X
;FFX Y
breakGG 
;GG 
caseII 
$strII %
:II% &
dataJJ 
.JJ 
AddJJ  
(JJ  !
newJJ! $
	JPropertyJJ% .
(JJ. /
nameofJJ/ 5
(JJ5 6
ISiteJJ6 ;
.JJ; <

TimeZoneIdJJ< F
)JJF G
,JJG H
siteJJI M
.JJM N

TimeZoneIdJJN X
)JJX Y
)JJY Z
;JJZ [
breakKK 
;KK 
caseMM 
$strMM !
:MM! "
dataNN 
.NN 
AddNN  
(NN  !
newNN! $
	JPropertyNN% .
(NN. /
nameofNN/ 5
(NN5 6
ISiteNN6 ;
.NN; <
UseCdnNN< B
)NNB C
,NNC D
siteNNE I
.NNI J
UseCdnNNJ P
)NNP Q
)NNQ R
;NNR S
breakOO 
;OO 
caseQQ 
$strQQ %
:QQ% &
dataRR 
.RR 
AddRR  
(RR  !
newRR! $
	JPropertyRR% .
(RR. /
nameofRR/ 5
(RR5 6
ISiteRR6 ;
.RR; <

CdnBaseUrlRR< F
)RRF G
,RRG H
siteRRI M
.RRM N

CdnBaseUrlRRN X
)RRX Y
)RRY Z
;RRZ [
breakSS 
;SS 
caseUU 
$strUU (
:UU( )
dataVV 
.VV 
AddVV  
(VV  !
newVV! $
	JPropertyVV% .
(VV. /
nameofVV/ 5
(VV5 6
ISiteVV6 ;
.VV; <
AppendVersionVV< I
)VVI J
,VVJ K
siteVVL P
.VVP Q
AppendVersionVVQ ^
)VV^ _
)VV_ `
;VV` a
breakWW 
;WW 
caseYY 
$strYY $
:YY$ %
dataZZ 
.ZZ 
AddZZ  
(ZZ  !
newZZ! $
	JPropertyZZ% .
(ZZ. /
nameofZZ/ 5
(ZZ5 6
ISiteZZ6 ;
.ZZ; <
	HomeRouteZZ< E
)ZZE F
,ZZF G
JObjectZZH O
.ZZO P

FromObjectZZP Z
(ZZZ [
siteZZ[ _
.ZZ_ `
	HomeRouteZZ` i
)ZZi j
)ZZj k
)ZZk l
;ZZl m
break[[ 
;[[ 
case]] 
$str]] $
:]]$ %
data^^ 
.^^ 
Add^^  
(^^  !
new^^! $
	JProperty^^% .
(^^. /
nameof^^/ 5
(^^5 6
ISite^^6 ;
.^^; <
	CacheMode^^< E
)^^E F
,^^F G
site^^H L
.^^L M
	CacheMode^^M V
)^^V W
)^^W X
;^^X Y
break__ 
;__ 
defaultaa 
:aa 
throwbb 
newbb !%
InvalidOperationExceptionbb" ;
(bb; <
$"bb< >!
Unsupported setting 'bb> S
{bbS T
settingNamebbT _
}bb_ `
'bb` a
"bba b
)bbb c
;bbc d
}cc 
}dd 
resultff 
.ff 
Stepsff 
.ff 
Addff 
(ff 
dataff !
)ff! "
;ff" #
returnhh 
;hh 
}ii 	
}jj 
}kk ˙
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Deployment\SiteSettingsDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

Deployment )
{ 
public 

class &
SiteSettingsDeploymentStep +
:, -
DeploymentStep. <
{		 
public

 &
SiteSettingsDeploymentStep

 )
(

) *
)

* +
{ 	
Name 
= 
nameof 
( 
SiteSettings &
)& '
;' (
} 	
public 
string 
[ 
] 
Settings  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} õ
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Deployment\SiteSettingsDeploymentStepDriver.cs
	namespace		 	
OrchardCore		
 
.		 
Settings		 
.		 

Deployment		 )
{

 
public 

class ,
 SiteSettingsDeploymentStepDriver 1
:2 3
DisplayDriver4 A
<A B
DeploymentStepB P
,P Q&
SiteSettingsDeploymentStepR l
>l m
{ 
public 
override 
IDisplayResult &
Display' .
(. /&
SiteSettingsDeploymentStep/ I
stepJ N
)N O
{ 	
return 
Combine 
( 
View 
( 
$str D
,D E
stepF J
)J K
.K L
LocationL T
(T U
$strU ^
,^ _
$str` i
)i j
,j k
View 
( 
$str F
,F G
stepH L
)L M
.M N
LocationN V
(V W
$strW b
,b c
$strd m
)m n
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,&
SiteSettingsDeploymentStep, F
stepG K
)K L
{ 	
return 

Initialize 
< /
#SiteSettingsDeploymentStepViewModel A
>A B
(B C
$strC k
,k l
modelm r
=>s u
{ 
model 
. 
Settings 
=  
step! %
.% &
Settings& .
;. /
} 
) 
. 
Location 
( 
$str !
)! "
;" #
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
UpdateAsync3 >
(> ?&
SiteSettingsDeploymentStep? Y
stepZ ^
,^ _
IUpdateModel` l
updaterm t
)t u
{ 	
step!! 
.!! 
Settings!! 
=!! 
Array!! !
.!!! "
Empty!!" '
<!!' (
string!!( .
>!!. /
(!!/ 0
)!!0 1
;!!1 2
await## 
updater## 
.## 
TryUpdateModelAsync## -
(##- .
step##. 2
,##2 3
Prefix##4 :
,##: ;
x##< =
=>##> @
x##A B
.##B C
Settings##C K
)##K L
;##L M
return%% 
Edit%% 
(%% 
step%% 
)%% 
;%% 
}&& 	
}'' 
}(( ∫
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Drivers\ButtonsSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 
Drivers &
{ 
public 

class (
ButtonsSettingsDisplayDriver -
:. /
DisplayDriver0 =
<= >
ISite> C
>C D
{ 
public		 
const		 
string		 
GroupId		 #
=		$ %
$str		& /
;		/ 0
public 
override 
Task 
< 
IDisplayResult +
>+ ,
	EditAsync- 6
(6 7
ISite7 <
site= A
,A B
BuildEditorContextC U
contextV ]
)] ^
{ 	
return 
Task 
. 

FromResult "
<" #
IDisplayResult# 1
>1 2
(2 3
Dynamic3 :
(: ;
$str; T
)T U
. 
Location 
( 
$str #
)# $
. 
OnGroup 
( 
context  
.  !
GroupId! (
)( )
) 
; 
} 	
public 
override 
Task 
< 
IDisplayResult +
>+ ,
UpdateAsync- 8
(8 9
ISite9 >
model? D
,D E
UpdateEditorContextF Y
contextZ a
)a b
{ 	
return 
	EditAsync 
( 
model "
," #
context$ +
)+ ,
;, -
} 	
} 
} ≤:
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Drivers\DefaultSiteSettingsDisplayDriver.cs
	namespace

 	
OrchardCore


 
.

 
Settings

 
.

 
Drivers

 &
{ 
public 

class ,
 DefaultSiteSettingsDisplayDriver 1
:2 3
DisplayDriver4 A
<A B
ISiteB G
>G H
{ 
public 
const 
string 
GroupId #
=$ %
$str& /
;/ 0
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public ,
 DefaultSiteSettingsDisplayDriver /
(/ 0

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
,' (
IStringLocalizer 
< ,
 DefaultSiteSettingsDisplayDriver =
>= >
stringLocalizer? N
) 
{ 	

_shellHost 
= 
	shellHost "
;" #
_shellSettings 
= 
shellSettings *
;* +
S 
= 
stringLocalizer 
;  
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
ISite, 1
site2 6
)6 7
{   	
return!! 

Initialize!! 
<!! !
SiteSettingsViewModel!! 3
>!!3 4
(!!4 5
$str!!5 D
,!!D E
model!!F K
=>!!L N
{"" 
model## 
.## 
SiteName## 
=##  
site##! %
.##% &
SiteName##& .
;##. /
model$$ 
.$$ 
PageTitleFormat$$ %
=$$& '
site$$( ,
.$$, -
PageTitleFormat$$- <
;$$< =
model%% 
.%% 
BaseUrl%% 
=%% 
site%%  $
.%%$ %
BaseUrl%%% ,
;%%, -
model&& 
.&& 
TimeZone&& 
=&&  
site&&! %
.&&% &

TimeZoneId&&& 0
;&&0 1
model'' 
.'' 
PageSize'' 
=''  
site''! %
.''% &
PageSize''& .
;''. /
model(( 
.(( 
UseCdn(( 
=(( 
site(( #
.((# $
UseCdn(($ *
;((* +
model)) 
.)) 

CdnBaseUrl))  
=))! "
site))# '
.))' (

CdnBaseUrl))( 2
;))2 3
model** 
.** 
ResourceDebugMode** '
=**( )
site*** .
.**. /
ResourceDebugMode**/ @
;**@ A
model++ 
.++ 
AppendVersion++ #
=++$ %
site++& *
.++* +
AppendVersion+++ 8
;++8 9
model,, 
.,, 
	CacheMode,, 
=,,  !
site,," &
.,,& '
	CacheMode,,' 0
;,,0 1
}-- 
)-- 
.-- 
Location-- 
(-- 
$str-- #
)--# $
.--$ %
OnGroup--% ,
(--, -
GroupId--- 4
)--4 5
;--5 6
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IDisplayResult00# 1
>001 2
UpdateAsync003 >
(00> ?
ISite00? D
site00E I
,00I J
UpdateEditorContext00K ^
context00_ f
)00f g
{11 	
if22 
(22 
context22 
.22 
GroupId22 
==22  "
GroupId22# *
)22* +
{33 
var44 
model44 
=44 
new44 !
SiteSettingsViewModel44  5
(445 6
)446 7
;447 8
if66 
(66 
await66 
context66 !
.66! "
Updater66" )
.66) *
TryUpdateModelAsync66* =
(66= >
model66> C
,66C D
Prefix66E K
)66K L
)66L M
{77 
site88 
.88 
SiteName88 !
=88" #
model88$ )
.88) *
SiteName88* 2
;882 3
site99 
.99 
PageTitleFormat99 (
=99) *
model99+ 0
.990 1
PageTitleFormat991 @
;99@ A
site:: 
.:: 
BaseUrl::  
=::! "
model::# (
.::( )
BaseUrl::) 0
;::0 1
site;; 
.;; 

TimeZoneId;; #
=;;$ %
model;;& +
.;;+ ,
TimeZone;;, 4
;;;4 5
site<< 
.<< 
PageSize<< !
=<<" #
model<<$ )
.<<) *
PageSize<<* 2
;<<2 3
site== 
.== 
UseCdn== 
===  !
model==" '
.==' (
UseCdn==( .
;==. /
site>> 
.>> 

CdnBaseUrl>> #
=>>$ %
model>>& +
.>>+ ,

CdnBaseUrl>>, 6
;>>6 7
site?? 
.?? 
ResourceDebugMode?? *
=??+ ,
model??- 2
.??2 3
ResourceDebugMode??3 D
;??D E
site@@ 
.@@ 
AppendVersion@@ &
=@@' (
model@@) .
.@@. /
AppendVersion@@/ <
;@@< =
siteAA 
.AA 
	CacheModeAA "
=AA# $
modelAA% *
.AA* +
	CacheModeAA+ 4
;AA4 5
}BB 
ifDD 
(DD 
!DD 
StringDD 
.DD 
IsNullOrEmptyDD )
(DD) *
siteDD* .
.DD. /
BaseUrlDD/ 6
)DD6 7
&&DD8 :
!DD; <
UriDD< ?
.DD? @
	TryCreateDD@ I
(DDI J
siteDDJ N
.DDN O
BaseUrlDDO V
,DDV W
UriKindDDX _
.DD_ `
AbsoluteDD` h
,DDh i
outDDj m
varDDn q
baseUrlDDr y
)DDy z
)DDz {
{EE 
contextFF 
.FF 
UpdaterFF #
.FF# $

ModelStateFF$ .
.FF. /
AddModelErrorFF/ <
(FF< =
PrefixFF= C
,FFC D
nameofFFE K
(FFK L
siteFFL P
.FFP Q
BaseUrlFFQ X
)FFX Y
,FFY Z
SFF[ \
[FF\ ]
$str	FF] ä
]
FFä ã
)
FFã å
;
FFå ç
}GG 
ifII 
(II 
contextII 
.II 
UpdaterII #
.II# $

ModelStateII$ .
.II. /
IsValidII/ 6
)II6 7
{JJ 
awaitKK 

_shellHostKK $
.KK$ %$
ReleaseShellContextAsyncKK% =
(KK= >
_shellSettingsKK> L
)KKL M
;KKM N
}LL 
}MM 
returnOO 
EditOO 
(OO 
siteOO 
)OO 
;OO 
}PP 	
}QQ 
}RR Ç
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Manifest.cs
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
,2 3
Description 
= 
$str c
,c d
Category		 
=		 
$str		 
,		 
IsAlwaysEnabled

 
=

 
true

 
) 
] ô
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Permissions.cs
	namespace 	
OrchardCore
 
. 
Settings 
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
ManageSettings
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
,

Z [
$str

\ m
)

m n
;

n o
public 
static 
readonly 

Permission )
ManageGroupSettings* =
=> ?
new@ C

PermissionD N
(N O
$strO g
,g h
$stri z
,z {
new| 
[	 Ä
]
Ä Å
{
Ç É
ManageSettings
Ñ í
}
ì î
)
î ï
;
ï ñ
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *
ManageSettings+ 9
}: ;
.; <
AsEnumerable< H
(H I
)I J
)J K
;K L
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageSettings* 8
}9 :
} 
} 
; 
} 	
} 
}   ﬂ
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Properties\AssemblyInfo.cs
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
]7 8ù<
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Recipes\SettingsStep.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 
Recipes &
{		 
public 

class 
SettingsStep 
: 
IRecipeStepHandler  2
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
SettingsStep 
( 
ISiteService (
siteService) 4
)4 5
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
$str- 7
,7 8
StringComparison9 I
.I J
OrdinalIgnoreCaseJ [
)[ \
)\ ]
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
var 
site 
= 
await 
_siteService )
.) *!
LoadSiteSettingsAsync* ?
(? @
)@ A
;A B
foreach   
(   
	JProperty   
property   '
in  ( *
model  + 0
.  0 1

Properties  1 ;
(  ; <
)  < =
)  = >
{!! 
switch"" 
("" 
property""  
.""  !
Name""! %
)""% &
{## 
case$$ 
$str$$ "
:$$" #
site%% 
.%% 
BaseUrl%% $
=%%% &
property%%' /
.%%/ 0
Value%%0 5
.%%5 6
ToString%%6 >
(%%> ?
)%%? @
;%%@ A
break&& 
;&& 
case(( 
$str(( #
:((# $
site)) 
.)) 
Calendar)) %
=))& '
property))( 0
.))0 1
Value))1 6
.))6 7
ToString))7 ?
())? @
)))@ A
;))A B
break** 
;** 
case,, 
$str,, (
:,,( )
site-- 
.-- 
MaxPagedCount-- *
=--+ ,
property--- 5
.--5 6
Value--6 ;
.--; <
Value--< A
<--A B
int--B E
>--E F
(--F G
)--G H
;--H I
break.. 
;.. 
case00 
$str00 &
:00& '
site11 
.11 
MaxPageSize11 (
=11) *
property11+ 3
.113 4
Value114 9
.119 :
Value11: ?
<11? @
int11@ C
>11C D
(11D E
)11E F
;11F G
break22 
;22 
case44 
$str44 #
:44# $
site55 
.55 
PageSize55 %
=55& '
property55( 0
.550 1
Value551 6
.556 7
Value557 <
<55< =
int55= @
>55@ A
(55A B
)55B C
;55C D
break66 
;66 
case88 
$str88 ,
:88, -
site99 
.99 
ResourceDebugMode99 .
=99/ 0
(991 2
ResourceDebugMode992 C
)99C D
property99D L
.99L M
Value99M R
.99R S
Value99S X
<99X Y
int99Y \
>99\ ]
(99] ^
)99^ _
;99_ `
break:: 
;:: 
case<< 
$str<< #
:<<# $
site== 
.== 
SiteName== %
===& '
property==( 0
.==0 1
Value==1 6
.==6 7
ToString==7 ?
(==? @
)==@ A
;==A B
break>> 
;>> 
case@@ 
$str@@ *
:@@* +
siteAA 
.AA 
PageTitleFormatAA ,
=AA- .
propertyAA/ 7
.AA7 8
ValueAA8 =
.AA= >
ToStringAA> F
(AAF G
)AAG H
;AAH I
breakBB 
;BB 
caseDD 
$strDD #
:DD# $
siteEE 
.EE 
SiteSaltEE %
=EE& '
propertyEE( 0
.EE0 1
ValueEE1 6
.EE6 7
ToStringEE7 ?
(EE? @
)EE@ A
;EEA B
breakFF 
;FF 
caseHH 
$strHH $
:HH$ %
siteII 
.II 
	SuperUserII &
=II' (
propertyII) 1
.II1 2
ValueII2 7
.II7 8
ToStringII8 @
(II@ A
)IIA B
;IIB C
breakJJ 
;JJ 
caseLL 
$strLL %
:LL% &
siteMM 
.MM 

TimeZoneIdMM '
=MM( )
propertyMM* 2
.MM2 3
ValueMM3 8
.MM8 9
ToStringMM9 A
(MMA B
)MMB C
;MMC D
breakNN 
;NN 
casePP 
$strPP !
:PP! "
siteQQ 
.QQ 
UseCdnQQ #
=QQ$ %
propertyQQ& .
.QQ. /
ValueQQ/ 4
.QQ4 5
ValueQQ5 :
<QQ: ;
boolQQ; ?
>QQ? @
(QQ@ A
)QQA B
;QQB C
breakRR 
;RR 
caseTT 
$strTT %
:TT% &
siteUU 
.UU 

CdnBaseUrlUU '
=UU( )
propertyUU* 2
.UU2 3
ValueUU3 8
.UU8 9
ToStringUU9 A
(UUA B
)UUB C
;UUC D
breakVV 
;VV 
caseXX 
$strXX (
:XX( )
siteYY 
.YY 
AppendVersionYY *
=YY+ ,
propertyYY- 5
.YY5 6
ValueYY6 ;
.YY; <
ValueYY< A
<YYA B
boolYYB F
>YYF G
(YYG H
)YYH I
;YYI J
breakZZ 
;ZZ 
case\\ 
$str\\ $
:\\$ %
site]] 
.]] 
	HomeRoute]] &
=]]' (
property]]) 1
.]]1 2
Value]]2 7
.]]7 8
ToObject]]8 @
<]]@ A 
RouteValueDictionary]]A U
>]]U V
(]]V W
)]]W X
;]]X Y
break^^ 
;^^ 
case`` 
$str`` $
:``$ %
siteaa 
.aa 
	CacheModeaa &
=aa' (
(aa) *
	CacheModeaa* 3
)aa3 4
propertyaa4 <
.aa< =
Valueaa= B
.aaB C
ValueaaC H
<aaH I
intaaI L
>aaL M
(aaM N
)aaN O
;aaO P
breakbb 
;bb 
defaultdd 
:dd 
siteee 
.ee 

Propertiesee '
[ee' (
propertyee( 0
.ee0 1
Nameee1 5
]ee5 6
=ee7 8
propertyee9 A
.eeA B
ValueeeB G
;eeG H
breakff 
;ff 
}gg 
}hh 
awaitjj 
_siteServicejj 
.jj #
UpdateSiteSettingsAsyncjj 6
(jj6 7
sitejj7 ;
)jj; <
;jj< =
}kk 	
}ll 
}mm π
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Services\DefaultTimeZoneSelector.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 
Services '
{ 
public 

class #
DefaultTimeZoneSelector (
:) *
ITimeZoneSelector+ <
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public #
DefaultTimeZoneSelector &
(& '
ISiteService' 3
siteService4 ?
)? @
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
Task 
< "
TimeZoneSelectorResult *
>* +
GetTimeZoneAsync, <
(< =
)= >
{ 	
return 
Task 
. 

FromResult "
(" #
new# &"
TimeZoneSelectorResult' =
{ 
Priority 
= 
$num 
, 

TimeZoneId 
= 
async "
(# $
)$ %
=>& (
() *
await* /
_siteService0 <
.< = 
GetSiteSettingsAsync= Q
(Q R
)R S
)S T
?T U
.U V

TimeZoneIdV `
} 
) 
; 
} 	
} 
} ˘
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Services\RecipeEnvironmentSiteNameProvider.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

class -
!RecipeEnvironmentSiteNameProvider 2
:3 4&
IRecipeEnvironmentProvider5 O
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
2 3
public -
!RecipeEnvironmentSiteNameProvider 0
(0 1
ISiteService1 =
siteService> I
)I J
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
int 
Order 
=> 
$num 
; 
public 
async 
Task $
PopulateEnvironmentAsync 2
(2 3
IDictionary3 >
<> ?
string? E
,E F
objectG M
>M N
environmentO Z
)Z [
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2 
GetSiteSettingsAsync2 F
(F G
)G H
;H I
if 
( 
! 
String 
. 
IsNullOrEmpty %
(% &
siteSettings& 2
.2 3
SiteName3 ;
); <
)< =
{ 
environment 
[ 
nameof "
(" #
SiteSettings# /
./ 0
SiteName0 8
)8 9
]9 :
=; <
siteSettings= I
.I J
SiteNameJ R
;R S
} 
} 	
} 
} ‰
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Services\SetupEventHandler.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 
Services '
{ 
public 

class 
SetupEventHandler "
:# $
ISetupEventHandler% 7
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
SetupEventHandler  
(  !
ISiteService! -
siteService. 9
)9 :
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
Setup 
(  
IDictionary 
< 
string 
, 
object  &
>& '

properties( 2
,2 3
Action 
< 
string 
, 
string !
>! "
reportError# .
) 
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2!
LoadSiteSettingsAsync2 G
(G H
)H I
;I J
siteSettings 
. 
SiteName !
=" #

properties$ .
.. /
TryGetValue/ :
(: ;
SetupConstants; I
.I J
SiteNameJ R
,R S
outT W
varX [
siteName\ d
)d e
?f g
siteNameh p
?p q
.q r
ToStringr z
(z {
){ |
:} ~
String	 Ö
.
Ö Ü
Empty
Ü ã
;
ã å
siteSettings 
. 
	SuperUser "
=# $

properties% /
./ 0
TryGetValue0 ;
(; <
SetupConstants< J
.J K
AdminUserIdK V
,V W
outX [
var\ _
adminUserId` k
)k l
?m n
adminUserIdo z
?z {
.{ |
ToString	| Ñ
(
Ñ Ö
)
Ö Ü
:
á à
String
â è
.
è ê
Empty
ê ï
;
ñ ó
siteSettings 
. 

TimeZoneId #
=$ %

properties& 0
.0 1
TryGetValue1 <
(< =
SetupConstants= K
.K L
SiteTimeZoneL X
,X Y
outZ ]
var^ a
siteTimeZoneb n
)n o
?p q
siteTimeZoner ~
?~ 
.	 Ä
ToString
Ä à
(
à â
)
â ä
:
ä ã
String
å í
.
í ì
Empty
ì ò
;
ò ô
await 
_siteService 
. #
UpdateSiteSettingsAsync 6
(6 7
siteSettings7 C
)C D
;D E
}"" 	
}## 
}$$ —
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Services\SiteLiquidTemplateEventHandler.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 
Services '
{ 
public 

class *
SiteLiquidTemplateEventHandler /
:0 1'
ILiquidTemplateEventHandler2 M
{ 
private		 
readonly		 
ISiteService		 %
_siteService		& 2
;		2 3
public *
SiteLiquidTemplateEventHandler -
(- .
ISiteService. :
siteService; F
)F G
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
RenderingAsync (
(( )
TemplateContext) 8
context9 @
)@ A
{ 	
var 
site 
= 
await 
_siteService )
.) * 
GetSiteSettingsAsync* >
(> ?
)? @
;@ A
context 
.  
MemberAccessStrategy (
.( )
Register) 1
(1 2
site2 6
.6 7
GetType7 >
(> ?
)? @
)@ A
;A B
context 
. 
SetValue 
( 
$str #
,# $
site% )
)) *
;* +
} 	
} 
} Õ
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Services\SiteService.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 
Services '
{		 
public 

class 
SiteService 
: 
ISiteService +
{ 
private 
readonly 
IClock 
_clock  &
;& '
public 
SiteService 
( 
IClock !
clock" '
)' (
=>) +
_clock, 2
=3 4
clock5 :
;: ;
public 
async 
Task 
< 
ISite 
>  !
LoadSiteSettingsAsync! 6
(6 7
)7 8
=>9 ;
await< A
DocumentManagerB Q
.Q R#
GetOrCreateMutableAsyncR i
(i j$
GetDefaultSettingsAsync	j Å
)
Å Ç
;
Ç É
public 
async 
Task 
< 
ISite 
>   
GetSiteSettingsAsync! 5
(5 6
)6 7
=>8 :
await; @
DocumentManagerA P
.P Q%
GetOrCreateImmutableAsyncQ j
(j k$
GetDefaultSettingsAsync	k Ç
)
Ç É
;
É Ñ
public"" 
Task"" #
UpdateSiteSettingsAsync"" +
(""+ ,
ISite"", 1
site""2 6
)""6 7
=>""8 :
DocumentManager""; J
.""J K
UpdateAsync""K V
(""V W
site""W [
as""\ ^
SiteSettings""_ k
)""k l
;""l m
private$$ 
Task$$ 
<$$ 
SiteSettings$$ !
>$$! "#
GetDefaultSettingsAsync$$# :
($$: ;
)$$; <
{%% 	
return&& 
Task&& 
.&& 

FromResult&& "
(&&" #
new&&# &
SiteSettings&&' 3
{'' 
SiteSalt(( 
=(( 
Guid(( 
.((  
NewGuid((  '
(((' (
)((( )
.(() *
ToString((* 2
(((2 3
$str((3 6
)((6 7
,((7 8
SiteName)) 
=)) 
$str)) ;
,)); <
PageTitleFormat** 
=**  !
$str**" k
,**k l

TimeZoneId++ 
=++ 
_clock++ #
.++# $
GetSystemTimeZone++$ 5
(++5 6
)++6 7
.++7 8

TimeZoneId++8 B
,++B C
PageSize,, 
=,, 
$num,, 
,,, 
MaxPageSize-- 
=-- 
$num-- !
,--! "
MaxPagedCount.. 
=.. 
$num..  !
}// 
)// 
;// 
}00 	
private22 
static22 
IDocumentManager22 '
<22' (
SiteSettings22( 4
>224 5
DocumentManager226 E
=>22F H

ShellScope22I S
.22S T
Services22T \
.22\ ]
GetRequiredService22] o
<22o p
IDocumentManager	22p Ä
<
22Ä Å
SiteSettings
22Å ç
>
22ç é
>
22é è
(
22è ê
)
22ê ë
;
22ë í
}33 
}44 Ø
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\SiteSettings.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

class 
SiteSettings 
: 
DocumentEntity  .
,. /
ISite0 5
{ 
public		 
string		 
BaseUrl		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Calendar

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
int 
MaxPagedCount  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
MaxPageSize 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
PageSize 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

TimeZoneId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ResourceDebugMode  
ResourceDebugMode! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string 
SiteName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
SiteSalt 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PageTitleFormat %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
	SuperUser 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
UseCdn 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

CdnBaseUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public  
RouteValueDictionary #
	HomeRoute$ -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
new> A 
RouteValueDictionaryB V
(V W
)W X
;X Y
public 
bool 
AppendVersion !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
true2 6
;6 7
public 
	CacheMode 
	CacheMode "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ›)
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\Startup.cs
	namespace 	
OrchardCore
 
. 
Settings 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{   	
_adminOptions!! 
=!! 
adminOptions!! (
.!!( )
Value!!) .
;!!. /
}"" 	
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
.&& 
	AddScoped&& 
<&& 
ISetupEventHandler&& 1
,&&1 2
SetupEventHandler&&3 D
>&&D E
(&&E F
)&&F G
;&&G H
services'' 
.'' 
	AddScoped'' 
<'' 
IPermissionProvider'' 2
,''2 3
Permissions''4 ?
>''? @
(''@ A
)''A B
;''B C
services)) 
.)) "
AddRecipeExecutionStep)) +
<))+ ,
SettingsStep)), 8
>))8 9
())9 :
))): ;
;)); <
services** 
.** 
AddSingleton** !
<**! "
ISiteService**" .
,**. /
SiteService**0 ;
>**; <
(**< =
)**= >
;**> ?
services-- 
.-- 
	AddScoped-- 
<-- 
IDisplayManager-- .
<--. /
ISite--/ 4
>--4 5
,--5 6
DisplayManager--7 E
<--E F
ISite--F K
>--K L
>--L M
(--M N
)--N O
;--O P
services.. 
... 
	AddScoped.. 
<.. 
IDisplayDriver.. -
<..- .
ISite... 3
>..3 4
,..4 5,
 DefaultSiteSettingsDisplayDriver..6 V
>..V W
(..W X
)..X Y
;..Y Z
services// 
.// 
	AddScoped// 
<// 
IDisplayDriver// -
<//- .
ISite//. 3
>//3 4
,//4 5(
ButtonsSettingsDisplayDriver//6 R
>//R S
(//S T
)//T U
;//U V
services00 
.00 
	AddScoped00 
<00 
INavigationProvider00 2
,002 3
	AdminMenu004 =
>00= >
(00> ?
)00? @
;00@ A
services22 
.22 
	AddScoped22 
<22 '
ILiquidTemplateEventHandler22 :
,22: ;*
SiteLiquidTemplateEventHandler22< Z
>22Z [
(22[ \
)22\ ]
;22] ^
services44 
.44 
	AddScoped44 
<44 
ITimeZoneSelector44 0
,440 1#
DefaultTimeZoneSelector442 I
>44I J
(44J K
)44K L
;44L M
services66 
.66 
AddTransient66 !
<66! "
IDeploymentSource66" 3
,663 4(
SiteSettingsDeploymentSource665 Q
>66Q R
(66R S
)66S T
;66T U
services77 
.77 
AddSingleton77 !
<77! ""
IDeploymentStepFactory77" 8
>778 9
(779 :
new77: =!
DeploymentStepFactory77> S
<77S T&
SiteSettingsDeploymentStep77T n
>77n o
(77o p
)77p q
)77q r
;77r s
services88 
.88 
	AddScoped88 
<88 
IDisplayDriver88 -
<88- .
DeploymentStep88. <
>88< =
,88= >,
 SiteSettingsDeploymentStepDriver88? _
>88_ `
(88` a
)88a b
;88b c
services:: 
.:: 
	AddScoped:: 
<:: &
IRecipeEnvironmentProvider:: 9
,::9 :-
!RecipeEnvironmentSiteNameProvider::; \
>::\ ]
(::] ^
)::^ _
;::_ `
};; 	
public== 
override== 
void== 
	Configure== &
(==& '
IApplicationBuilder==' :
builder==; B
,==B C!
IEndpointRouteBuilder==D Y
routes==Z `
,==` a
IServiceProvider==b r
serviceProvider	==s Ç
)
==Ç É
{>> 	
routes@@ 
.@@ "
MapAreaControllerRoute@@ )
(@@) *
nameAA 
:AA 
$strAA %
,AA% &
areaNameBB 
:BB 
$strBB 0
,BB0 1
patternCC 
:CC 
_adminOptionsCC &
.CC& '
AdminUrlPrefixCC' 5
+CC6 7
$strCC8 M
,CCM N
defaultsDD 
:DD 
newDD 
{DD 

controllerDD  *
=DD+ ,
$strDD- 4
,DD4 5
actionDD6 <
=DD= >
$strDD? F
}DDG H
)EE 
;EE 
}FF 	
}GG 
}HH »
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\ViewModels\AdminIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

ViewModels )
{ 
public 

class 
AdminIndexViewModel $
{ 
public 
dynamic 
Shape 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
GroupId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˜
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\ViewModels\SiteCulturesViewModel.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

ViewModels )
{ 
public 

class !
SiteCulturesViewModel &
{ 
public 
string 
CurrentCulture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
IEnumerable		 
<		 
string		 !
>		! "
SiteCultures		# /
{		0 1
get		2 5
;		5 6
set		7 :
;		: ;
}		< =
public

 
IEnumerable

 
<

 
CultureInfo

 &
>

& '#
AvailableSystemCultures

( ?
{

@ A
get

B E
;

E F
set

G J
;

J K
}

L M
} 
} Ì
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\ViewModels\SiteSettingsDeploymentStepViewModel.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

ViewModels )
{ 
public 

class /
#SiteSettingsDeploymentStepViewModel 4
{ 
public 
string 
[ 
] 
Settings  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} „
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Settings\ViewModels\SiteSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Settings 
. 

ViewModels )
{ 
public 

class !
SiteSettingsViewModel &
{ 
public 
string 
SiteName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PageTitleFormat %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
BaseUrl 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
TimeZone 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
PageSize		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
bool

 
UseCdn

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 

CdnBaseUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ResourceDebugMode  
ResourceDebugMode! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
bool 
AppendVersion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Meta 
{ 
get  
;  !
set" %
;% &
}' (
public 
	CacheMode 
	CacheMode "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 