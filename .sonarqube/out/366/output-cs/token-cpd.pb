ø2
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Google 
{		 
[

 
Feature

 
(

 
GoogleConstants

 
.

 
Features

 %
.

% & 
GoogleAuthentication

& :
)

: ;
]

; <
public 

class )
GoogleAuthenticationAdminMenu .
:/ 0
INavigationProvider1 D
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public )
GoogleAuthenticationAdminMenu ,
(, -
IStringLocalizer- =
<= >)
GoogleAuthenticationAdminMenu> [
>[ \
	localizer] f
)f g
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
String 
. 
Equals 
( 
name "
," #
$str$ +
,+ ,
StringComparison- =
.= >
OrdinalIgnoreCase> O
)O P
)P Q
{ 
builder 
. 
Add 
( 
S 
[ 
$str (
]( )
,) *
security+ 3
=>4 6
security7 ?
. 
Add 
( 
S 
[ 
$str /
]/ 0
,0 1
authentication2 @
=>A C
authenticationD R
. 
Add 
( 
S 
[ 
$str '
]' (
,( )
S* +
[+ ,
$str, 4
]4 5
.5 6
PrefixPosition6 D
(D E
)E F
,F G
settingsH P
=>Q S
settingsT \
. 
AddClass !
(! "
$str" *
)* +
.+ ,
Id, .
(. /
$str/ 7
)7 8
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC Y
,Y Z
groupId[ b
=c d
GoogleConstantse t
.t u
Featuresu }
.} ~!
GoogleAuthentication	~ í
}
ì î
)
î ï
. 

Permission '
(' (
Permissions( 3
.3 4&
ManageGoogleAuthentication4 N
)N O
. 
LocalNav %
(% &
)& '
)' (
) 
) 
; 
}   
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
}## 
[%% 
Feature%% 
(%% 
GoogleConstants%% 
.%% 
Features%% %
.%%% &
GoogleAnalytics%%& 5
)%%5 6
]%%6 7
public&& 

class&& $
GoogleAnalyticsAdminMenu&& )
:&&* +
INavigationProvider&&, ?
{'' 
private(( 
readonly(( 
ShellDescriptor(( (
_shellDescriptor(() 9
;((9 :
private)) 
readonly)) 
IStringLocalizer)) )
S))* +
;))+ ,
public++ $
GoogleAnalyticsAdminMenu++ '
(++' (
IStringLocalizer,, 
<,, $
GoogleAnalyticsAdminMenu,, 5
>,,5 6
	localizer,,7 @
,,,@ A
ShellDescriptor-- 
shellDescriptor-- +
)--+ ,
{.. 	
S// 
=// 
	localizer// 
;// 
_shellDescriptor00 
=00 
shellDescriptor00 .
;00. /
}11 	
public33 
Task33  
BuildNavigationAsync33 (
(33( )
string33) /
name330 4
,334 5
NavigationBuilder336 G
builder33H O
)33O P
{44 	
if55 
(55 
String55 
.55 
Equals55 
(55 
name55 "
,55" #
$str55$ +
,55+ ,
StringComparison55- =
.55= >
OrdinalIgnoreCase55> O
)55O P
)55P Q
{66 
builder77 
.77 
Add77 
(77 
S77 
[77 
$str77 -
]77- .
,77. /
configuration770 =
=>77> @
configuration77A N
.88 
Add88 
(88 
S88 
[88 
$str88 )
]88) *
,88* +
settings88, 4
=>885 7
settings888 @
.99 
Add99  
(99  !
S99! "
[99" #
$str99# 5
]995 6
,996 7
S998 9
[999 :
$str99: L
]99L M
.99M N
PrefixPosition99N \
(99\ ]
)99] ^
,99^ _
settings99` h
=>99i k
settings99l t
.:: 
AddClass:: %
(::% &
$str::& 7
)::7 8
.::8 9
Id::9 ;
(::; <
$str::< M
)::M N
.;; 
Action;; #
(;;# $
$str;;$ +
,;;+ ,
$str;;- 4
,;;4 5
new;;6 9
{;;: ;
area;;< @
=;;A B
$str;;C Y
,;;Y Z
groupId;;[ b
=;;c d
GoogleConstants;;e t
.;;t u
Features;;u }
.;;} ~
GoogleAnalytics	;;~ ç
}
;;é è
)
;;è ê
.<<  !

Permission<<! +
(<<+ ,
Permissions<<, 7
.<<7 8!
ManageGoogleAnalytics<<8 M
)<<M N
.==  !
LocalNav==! )
(==) *
)==* +
)==+ ,
)>> 
)?? 
;?? 
}@@ 
returnAA 
TaskAA 
.AA 
CompletedTaskAA %
;AA% &
}BB 	
}CC 
}DD §(
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Analytics\Drivers\GoogleAnalyticsSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
	Analytics &
.& '
Drivers' .
{ 
public 

class 0
$GoogleAnalyticsSettingsDisplayDriver 5
:6 7 
SectionDisplayDriver8 L
<L M
ISiteM R
,R S#
GoogleAnalyticsSettingsT k
>k l
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 0
$GoogleAnalyticsSettingsDisplayDriver 3
(3 4!
IAuthorizationService ! 
authorizationService" 6
,6 7 
IHttpContextAccessor  
httpContextAccessor! 4
)4 5
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
override 
async 
Task "
<" #
IDisplayResult# 1
>1 2
	EditAsync3 <
(< =#
GoogleAnalyticsSettings= T
settingsU ]
,] ^
BuildEditorContext_ q
contextr y
)y z
{ 	
var 
user 
=  
_httpContextAccessor +
.+ ,
HttpContext, 7
?7 8
.8 9
User9 =
;= >
if 
( 
user 
== 
null 
|| 
!  !
await! &!
_authorizationService' <
.< =
AuthorizeAsync= K
(K L
userL P
,P Q
PermissionsR ]
.] ^!
ManageGoogleAnalytics^ s
)s t
)t u
{ 
return 
null 
; 
}   
return"" 

Initialize"" 
<"" ,
 GoogleAnalyticsSettingsViewModel"" >
>""> ?
(""? @
$str""@ ^
,""^ _
model""` e
=>""f h
{## 
model$$ 
.$$ 

TrackingID$$  
=$$! "
settings$$# +
.$$+ ,

TrackingID$$, 6
;$$6 7
}%% 
)%% 
.%% 
Location%% 
(%% 
$str%% #
)%%# $
.%%$ %
OnGroup%%% ,
(%%, -
GoogleConstants%%- <
.%%< =
Features%%= E
.%%E F
GoogleAnalytics%%F U
)%%U V
;%%V W
}&& 	
public(( 
override(( 
async(( 
Task(( "
<((" #
IDisplayResult((# 1
>((1 2
UpdateAsync((3 >
(((> ?#
GoogleAnalyticsSettings((? V
settings((W _
,((_ `
BuildEditorContext((a s
context((t {
)(({ |
{)) 	
if** 
(** 
context** 
.** 
GroupId** 
==**  "
GoogleConstants**# 2
.**2 3
Features**3 ;
.**; <
GoogleAnalytics**< K
)**K L
{++ 
var,, 
user,, 
=,,  
_httpContextAccessor,, /
.,,/ 0
HttpContext,,0 ;
?,,; <
.,,< =
User,,= A
;,,A B
if-- 
(-- 
user-- 
==-- 
null--  
||--! #
!--$ %
await--% *!
_authorizationService--+ @
.--@ A
AuthorizeAsync--A O
(--O P
user--P T
,--T U
Permissions--V a
.--a b!
ManageGoogleAnalytics--b w
)--w x
)--x y
{.. 
return// 
null// 
;//  
}00 
var22 
model22 
=22 
new22 ,
 GoogleAnalyticsSettingsViewModel22  @
(22@ A
)22A B
;22B C
await33 
context33 
.33 
Updater33 %
.33% &
TryUpdateModelAsync33& 9
(339 :
model33: ?
,33? @
Prefix33A G
)33G H
;33H I
if55 
(55 
context55 
.55 
Updater55 #
.55# $

ModelState55$ .
.55. /
IsValid55/ 6
)556 7
{66 
settings77 
.77 

TrackingID77 '
=77( )
model77* /
.77/ 0

TrackingID770 :
;77: ;
}88 
}99 
return:: 
await:: 
	EditAsync:: "
(::" #
settings::# +
,::+ ,
context::- 4
)::4 5
;::5 6
};; 	
}<< 
}== §
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Analytics\GoogleAnalyticsFilter.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
	Analytics &
{ 
public 

class !
GoogleAnalyticsFilter &
:' (
IAsyncResultFilter) ;
{ 
private 
readonly 
IResourceManager )
_resourceManager* :
;: ;
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 

HtmlString 
_scriptsCache (
;( )
public !
GoogleAnalyticsFilter $
($ %
IResourceManager 
resourceManager ,
,, -
ISiteService 
siteService $
)$ %
{ 	
_resourceManager 
= 
resourceManager .
;. /
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task "
OnResultExecutionAsync 0
(0 1"
ResultExecutingContext1 G
contextH O
,O P#
ResultExecutionDelegateQ h
nexti m
)m n
{ 	
if   
(   
(   
context   
.   
Result   
is    "

ViewResult  # -
||  . 0
context  1 8
.  8 9
Result  9 ?
is  @ B

PageResult  C M
)  M N
&&  O Q
!!! 
AdminAttribute!! 
.!!  
	IsApplied!!  )
(!!) *
context!!* 1
.!!1 2
HttpContext!!2 =
)!!= >
)!!> ?
{"" 
if## 
(## 
_scriptsCache## !
==##" $
null##% )
)##) *
{$$ 
var%% 
settings%%  
=%%! "
(%%# $
await%%$ )
_siteService%%* 6
.%%6 7 
GetSiteSettingsAsync%%7 K
(%%K L
)%%L M
)%%M N
.%%N O
As%%O Q
<%%Q R#
GoogleAnalyticsSettings%%R i
>%%i j
(%%j k
)%%k l
;%%l m
if'' 
('' 
!'' 
string'' 
.''  
IsNullOrWhiteSpace''  2
(''2 3
settings''3 ;
?''; <
.''< =

TrackingID''= G
)''G H
)''H I
{(( 
_scriptsCache)) %
=))& '
new))( +

HtmlString)), 6
())6 7
$"))7 9L
@<script async src=\"https://www.googletagmanager.com/gtag/js?id=))9 y
{))y z
settings	))z Ç
.
))Ç É

TrackingID
))É ç
}
))ç é¶
ó\"></script>\n<script>window.dataLayer = window.dataLayer || [];function gtag() {{ dataLayer.push(arguments); }}gtag('js', new Date());gtag('config', '
))é •
{
))• ¶
settings
))¶ Æ
.
))Æ Ø

TrackingID
))Ø π
}
))π ∫
')</script>
))∫ ≈
"
))≈ ∆
)
))∆ «
;
))« »
}** 
}++ 
if-- 
(-- 
_scriptsCache-- !
!=--" $
null--% )
)--) *
{.. 
_resourceManager// $
.//$ %
RegisterHeadScript//% 7
(//7 8
_scriptsCache//8 E
)//E F
;//F G
}00 
}11 
await33 
next33 
.33 
Invoke33 
(33 
)33 
;33  
}44 	
}55 
}66 »
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Analytics\Recipes\GoogleAnalyticsSettingsStep.cs
	namespace

 	
OrchardCore


 
.

 
Google

 
.

 
	Analytics

 &
.

& '
Recipes

' .
{ 
public 

class '
GoogleAnalyticsSettingsStep ,
:- .
IRecipeStepHandler/ A
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public '
GoogleAnalyticsSettingsStep *
(* +
ISiteService+ 7
siteService8 C
)C D
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
string 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
nameof- 3
(3 4#
GoogleAnalyticsSettings4 K
)K L
,L M
StringComparisonN ^
.^ _
OrdinalIgnoreCase_ p
)p q
)q r
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .,
 GoogleAnalyticsSettingsViewModel. N
>N O
(O P
)P Q
;Q R
var 
	container 
= 
await !
_siteService" .
.. /!
LoadSiteSettingsAsync/ D
(D E
)E F
;F G
	container 
. 
Alter 
< #
GoogleAnalyticsSettings 3
>3 4
(4 5
nameof5 ;
(; <#
GoogleAnalyticsSettings< S
)S T
,T U
aspectV \
=>] _
{   
aspect!! 
.!! 

TrackingID!! !
=!!" #
model!!$ )
.!!) *

TrackingID!!* 4
;!!4 5
}"" 
)"" 
;"" 
await## 
_siteService## 
.## #
UpdateSiteSettingsAsync## 6
(##6 7
	container##7 @
)##@ A
;##A B
}$$ 	
}%% 
}&& ·
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Analytics\Settings\GoogleAnalyticsSettings.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
	Analytics &
.& '
Settings' /
{ 
public 

class #
GoogleAnalyticsSettings (
{ 
public 
string 

TrackingID  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ä
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Analytics\ViewModels\GoogleAnalyticsSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
	Analytics &
.& '

ViewModels' 1
{ 
public 

class ,
 GoogleAnalyticsSettingsViewModel 1
{ 
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
)+ ,
], -
public 
string 

TrackingID  
{! "
get# &
;& '
set( +
;+ ,
}- .
}		 
}

 ¸5
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Authentication\Configuration\GoogleOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
Authentication +
.+ ,
Configuration, 9
{ 
public 

class &
GoogleOptionsConfiguration +
:, -
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
< 
GoogleOptions ,
>, -
{ 
private 
readonly '
GoogleAuthenticationService 4(
_googleAuthenticationService5 Q
;Q R
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public &
GoogleOptionsConfiguration )
() *'
GoogleAuthenticationService ''
googleAuthenticationService( C
,C D#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
ShellSettings 
shellSettings '
,' (
ILogger 
< &
GoogleOptionsConfiguration .
>. /
logger0 6
)6 7
{ 	(
_googleAuthenticationService (
=) *'
googleAuthenticationService+ F
;F G#
_dataProtectionProvider   #
=  $ %"
dataProtectionProvider  & <
;  < =
_shellSettings!! 
=!! 
shellSettings!! *
;!!* +
_logger"" 
="" 
logger"" 
;"" 
}## 	
public%% 
void%% 
	Configure%% 
(%% !
AuthenticationOptions%% 3
options%%4 ;
)%%; <
{&& 	
var'' 
settings'' 
='' 0
$GetGoogleAuthenticationSettingsAsync'' ?
(''? @
)''@ A
.''A B

GetAwaiter''B L
(''L M
)''M N
.''N O
	GetResult''O X
(''X Y
)''Y Z
;''Z [
if(( 
((( 
settings(( 
==(( 
null((  
)((  !
{)) 
return** 
;** 
}++ 
options-- 
.-- 
	AddScheme-- 
(-- 
GoogleDefaults-- ,
.--, - 
AuthenticationScheme--- A
,--A B
builder--C J
=>--K M
{.. 
builder// 
.// 
DisplayName// #
=//$ %
$str//& .
;//. /
builder00 
.00 
HandlerType00 #
=00$ %
typeof00& ,
(00, -
GoogleHandler00- :
)00: ;
;00; <
}11 
)11 
;11 
}22 	
public44 
void44 
	Configure44 
(44 
string44 $
name44% )
,44) *
GoogleOptions44+ 8
options449 @
)44@ A
{55 	
if66 
(66 
!66 
String66 
.66 
Equals66 
(66 
name66 #
,66# $
GoogleDefaults66% 3
.663 4 
AuthenticationScheme664 H
)66H I
)66I J
{77 
return88 
;88 
}99 
var;; 
settings;; 
=;; 0
$GetGoogleAuthenticationSettingsAsync;; ?
(;;? @
);;@ A
.;;A B

GetAwaiter;;B L
(;;L M
);;M N
.;;N O
	GetResult;;O X
(;;X Y
);;Y Z
;;;Z [
if<< 
(<< 
settings<< 
==<< 
null<<  
)<<  !
{== 
return>> 
;>> 
}?? 
optionsAA 
.AA 
ClientIdAA 
=AA 
settingsAA '
.AA' (
ClientIDAA( 0
;AA0 1
tryBB 
{CC 
optionsDD 
.DD 
ClientSecretDD $
=DD% &#
_dataProtectionProviderDD' >
.DD> ?
CreateProtectorDD? N
(DDN O
GoogleConstantsDDO ^
.DD^ _
FeaturesDD_ g
.DDg h 
GoogleAuthenticationDDh |
)DD| }
.DD} ~
	Unprotect	DD~ á
(
DDá à
settings
DDà ê
.
DDê ë
ClientSecret
DDë ù
)
DDù û
;
DDû ü
}EE 
catchFF 
{GG 
_loggerHH 
.HH 
LogErrorHH  
(HH  !
$str	HH! Ä
)
HHÄ Å
;
HHÅ Ç
}II 
ifKK 
(KK 
settingsKK 
.KK 
CallbackPathKK %
.KK% &
HasValueKK& .
)KK. /
{LL 
optionsMM 
.MM 
CallbackPathMM $
=MM% &
settingsMM' /
.MM/ 0
CallbackPathMM0 <
;MM< =
}NN 
optionsPP 
.PP 

SaveTokensPP 
=PP  
settingsPP! )
.PP) *

SaveTokensPP* 4
;PP4 5
}QQ 	
publicSS 
voidSS 
	ConfigureSS 
(SS 
GoogleOptionsSS +
optionsSS, 3
)SS3 4
=>SS5 7
DebugSS8 =
.SS= >
FailSS> B
(SSB C
$strSSC t
)SSt u
;SSu v
privateUU 
asyncUU 
TaskUU 
<UU (
GoogleAuthenticationSettingsUU 7
>UU7 80
$GetGoogleAuthenticationSettingsAsyncUU9 ]
(UU] ^
)UU^ _
{VV 	
varWW 
settingsWW 
=WW 
awaitWW  (
_googleAuthenticationServiceWW! =
.WW= >
GetSettingsAsyncWW> N
(WWN O
)WWO P
;WWP Q
ifXX 
(XX 
!XX (
_googleAuthenticationServiceXX -
.XX- .
CheckSettingsXX. ;
(XX; <
settingsXX< D
)XXD E
)XXE F
{YY 
ifZZ 
(ZZ 
_shellSettingsZZ "
.ZZ" #
StateZZ# (
==ZZ) +
TenantStateZZ, 7
.ZZ7 8
RunningZZ8 ?
)ZZ? @
{[[ 
_logger\\ 
.\\ 

LogWarning\\ &
(\\& '
$str\\' [
)\\[ \
;\\\ ]
}]] 
return__ 
null__ 
;__ 
}`` 
returnbb 
settingsbb 
;bb 
}cc 	
}dd 
}ee  I
∂D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Authentication\Drivers\GoogleAuthenticationSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
Authentication +
.+ ,
Drivers, 3
{ 
public 

class 5
)GoogleAuthenticationSettingsDisplayDriver :
:; < 
SectionDisplayDriver= Q
<Q R
ISiteR W
,W X(
GoogleAuthenticationSettingsY u
>u v
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public 5
)GoogleAuthenticationSettingsDisplayDriver 8
(8 9!
IAuthorizationService ! 
authorizationService" 6
,6 7#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ; 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
,' (
ILogger   
<   5
)GoogleAuthenticationSettingsDisplayDriver   =
>  = >
logger  ? E
)  E F
{!! 	!
_authorizationService"" !
=""" # 
authorizationService""$ 8
;""8 9#
_dataProtectionProvider## #
=##$ %"
dataProtectionProvider##& <
;##< = 
_httpContextAccessor$$  
=$$! "
httpContextAccessor$$# 6
;$$6 7

_shellHost%% 
=%% 
	shellHost%% "
;%%" #
_shellSettings&& 
=&& 
shellSettings&& *
;&&* +
_logger'' 
='' 
logger'' 
;'' 
}(( 	
public** 
override** 
async** 
Task** "
<**" #
IDisplayResult**# 1
>**1 2
	EditAsync**3 <
(**< =(
GoogleAuthenticationSettings**= Y
settings**Z b
,**b c
BuildEditorContext**d v
context**w ~
)**~ 
{++ 	
var,, 
user,, 
=,,  
_httpContextAccessor,, +
.,,+ ,
HttpContext,,, 7
?,,7 8
.,,8 9
User,,9 =
;,,= >
if-- 
(-- 
user-- 
==-- 
null-- 
||-- 
!--  !
await--! &!
_authorizationService--' <
.--< =
AuthorizeAsync--= K
(--K L
user--L P
,--P Q
Permissions--R ]
.--] ^&
ManageGoogleAuthentication--^ x
)--x y
)--y z
{.. 
return// 
null// 
;// 
}00 
return22 

Initialize22 
<22 1
%GoogleAuthenticationSettingsViewModel22 C
>22C D
(22D E
$str22E h
,22h i
model22j o
=>22p r
{33 
model44 
.44 
ClientID44 
=44  
settings44! )
.44) *
ClientID44* 2
;442 3
if55 
(55 
!55 
string55 
.55 
IsNullOrWhiteSpace55 .
(55. /
settings55/ 7
.557 8
ClientSecret558 D
)55D E
)55E F
{66 
try77 
{88 
var99 
	protector99 %
=99& '#
_dataProtectionProvider99( ?
.99? @
CreateProtector99@ O
(99O P
GoogleConstants99P _
.99_ `
Features99` h
.99h i 
GoogleAuthentication99i }
)99} ~
;99~ 
model:: 
.:: 
ClientSecret:: *
=::+ ,
	protector::- 6
.::6 7
	Unprotect::7 @
(::@ A
settings::A I
.::I J
ClientSecret::J V
)::V W
;::W X
};; 
catch<< 
(<< "
CryptographicException<< 1
)<<1 2
{== 
_logger>> 
.>>  
LogError>>  (
(>>( )
$str	>>) Ü
)
>>Ü á
;
>>á à
model?? 
.?? 
ClientSecret?? *
=??+ ,
string??- 3
.??3 4
Empty??4 9
;??9 :
model@@ 
.@@ 
HasDecryptionError@@ 0
=@@1 2
true@@3 7
;@@7 8
}AA 
}BB 
elseCC 
{DD 
modelEE 
.EE 
ClientSecretEE &
=EE' (
stringEE) /
.EE/ 0
EmptyEE0 5
;EE5 6
}FF 
ifGG 
(GG 
settingsGG 
.GG 
CallbackPathGG )
.GG) *
HasValueGG* 2
)GG2 3
{HH 
modelII 
.II 
CallbackPathII &
=II' (
settingsII) 1
.II1 2
CallbackPathII2 >
.II> ?
ValueII? D
;IID E
}JJ 
modelKK 
.KK 

SaveTokensKK  
=KK! "
settingsKK# +
.KK+ ,

SaveTokensKK, 6
;KK6 7
}LL 
)LL 
.LL 
LocationLL 
(LL 
$strLL #
)LL# $
.LL$ %
OnGroupLL% ,
(LL, -
GoogleConstantsLL- <
.LL< =
FeaturesLL= E
.LLE F 
GoogleAuthenticationLLF Z
)LLZ [
;LL[ \
}MM 	
publicOO 
overrideOO 
asyncOO 
TaskOO "
<OO" #
IDisplayResultOO# 1
>OO1 2
UpdateAsyncOO3 >
(OO> ?(
GoogleAuthenticationSettingsOO? [
settingsOO\ d
,OOd e
BuildEditorContextOOf x
context	OOy Ä
)
OOÄ Å
{PP 	
ifQQ 
(QQ 
contextQQ 
.QQ 
GroupIdQQ 
==QQ  "
GoogleConstantsQQ# 2
.QQ2 3
FeaturesQQ3 ;
.QQ; < 
GoogleAuthenticationQQ< P
)QQP Q
{RR 
varSS 
userSS 
=SS  
_httpContextAccessorSS /
.SS/ 0
HttpContextSS0 ;
?SS; <
.SS< =
UserSS= A
;SSA B
ifTT 
(TT 
userTT 
==TT 
nullTT  
||TT! #
!TT$ %
awaitTT% *!
_authorizationServiceTT+ @
.TT@ A
AuthorizeAsyncTTA O
(TTO P
userTTP T
,TTT U
PermissionsTTV a
.TTa b&
ManageGoogleAuthenticationTTb |
)TT| }
)TT} ~
{UU 
returnVV 
nullVV 
;VV  
}WW 
varYY 
modelYY 
=YY 
newYY 1
%GoogleAuthenticationSettingsViewModelYY  E
(YYE F
)YYF G
;YYG H
awaitZZ 
contextZZ 
.ZZ 
UpdaterZZ %
.ZZ% &
TryUpdateModelAsyncZZ& 9
(ZZ9 :
modelZZ: ?
,ZZ? @
PrefixZZA G
)ZZG H
;ZZH I
if\\ 
(\\ 
context\\ 
.\\ 
Updater\\ #
.\\# $

ModelState\\$ .
.\\. /
IsValid\\/ 6
)\\6 7
{]] 
var^^ 
	protector^^ !
=^^" ##
_dataProtectionProvider^^$ ;
.^^; <
CreateProtector^^< K
(^^K L
GoogleConstants^^L [
.^^[ \
Features^^\ d
.^^d e 
GoogleAuthentication^^e y
)^^y z
;^^z {
settings`` 
.`` 
ClientID`` %
=``& '
model``( -
.``- .
ClientID``. 6
;``6 7
settingsaa 
.aa 
ClientSecretaa )
=aa* +
	protectoraa, 5
.aa5 6
Protectaa6 =
(aa= >
modelaa> C
.aaC D
ClientSecretaaD P
)aaP Q
;aaQ R
settingsbb 
.bb 
CallbackPathbb )
=bb* +
modelbb, 1
.bb1 2
CallbackPathbb2 >
;bb> ?
settingscc 
.cc 

SaveTokenscc '
=cc( )
modelcc* /
.cc/ 0

SaveTokenscc0 :
;cc: ;
awaitdd 

_shellHostdd $
.dd$ %$
ReleaseShellContextAsyncdd% =
(dd= >
_shellSettingsdd> L
)ddL M
;ddM N
}ee 
}ff 
returngg 
awaitgg 
	EditAsyncgg "
(gg" #
settingsgg# +
,gg+ ,
contextgg- 4
)gg4 5
;gg5 6
}hh 	
}ii 
}jj æ
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Authentication\Recipes\GoogleAuthenticationSettingsStep.cs
	namespace		 	
OrchardCore		
 
.		 
Google		 
.		 
Authentication		 +
.		+ ,
Recipes		, 3
{

 
public 

class ,
 GoogleAuthenticationSettingsStep 1
:2 3
IRecipeStepHandler4 F
{ 
private 
readonly '
GoogleAuthenticationService 4(
_googleAuthenticationService5 Q
;Q R
public ,
 GoogleAuthenticationSettingsStep /
(/ 0'
GoogleAuthenticationService0 K'
googleAuthenticationServiceL g
)g h
{ 	(
_googleAuthenticationService (
=) *'
googleAuthenticationService+ F
;F G
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
nameof- 3
(3 4(
GoogleAuthenticationSettings4 P
)P Q
,Q R
StringComparisonS c
.c d
OrdinalIgnoreCased u
)u v
)v w
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .1
%GoogleAuthenticationSettingsViewModel. S
>S T
(T U
)U V
;V W
var 
settings 
= 
await  (
_googleAuthenticationService! =
.= >
LoadSettingsAsync> O
(O P
)P Q
;Q R
settings   
.   
ClientID   
=   
model    %
.  % &
ClientID  & .
;  . /
settings!! 
.!! 
ClientSecret!! !
=!!" #
model!!$ )
.!!) *
ClientSecret!!* 6
;!!6 7
settings"" 
."" 
CallbackPath"" !
=""" #
model""$ )
."") *
CallbackPath""* 6
;""6 7
await$$ (
_googleAuthenticationService$$ .
.$$. /
UpdateSettingsAsync$$/ B
($$B C
settings$$C K
)$$K L
;$$L M
}%% 	
}&& 
}'' Á&
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Authentication\Services\GoogleAuthenticationService.cs
	namespace

 	
OrchardCore


 
.

 
Google

 
.

 
Authentication

 +
.

+ ,
Services

, 4
{ 
public 

class '
GoogleAuthenticationService ,
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public '
GoogleAuthenticationService *
(* +
ISiteService+ 7
siteService8 C
)C D
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< (
GoogleAuthenticationSettings 6
>6 7
GetSettingsAsync8 H
(H I
)I J
{ 	
var 
	container 
= 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
;E F
return 
	container 
. 
As 
<  (
GoogleAuthenticationSettings  <
>< =
(= >
)> ?
;? @
} 	
public 
async 
Task 
< (
GoogleAuthenticationSettings 6
>6 7
LoadSettingsAsync8 I
(I J
)J K
{ 	
var 
	container 
= 
await !
_siteService" .
.. /!
LoadSiteSettingsAsync/ D
(D E
)E F
;F G
return 
	container 
. 
As 
<  (
GoogleAuthenticationSettings  <
>< =
(= >
)> ?
;? @
} 	
public!! 
async!! 
Task!! 
UpdateSettingsAsync!! -
(!!- .(
GoogleAuthenticationSettings!!. J
settings!!K S
)!!S T
{"" 	
if## 
(## 
settings## 
==## 
null##  
)##  !
{$$ 
throw%% 
new%% !
ArgumentNullException%% /
(%%/ 0
nameof%%0 6
(%%6 7
settings%%7 ?
)%%? @
)%%@ A
;%%A B
}&& 
var(( 
	container(( 
=(( 
await(( !
_siteService((" .
.((. /!
LoadSiteSettingsAsync((/ D
(((D E
)((E F
;((F G
	container)) 
.)) 
Alter)) 
<)) (
GoogleAuthenticationSettings)) 8
>))8 9
())9 :
nameof)): @
())@ A(
GoogleAuthenticationSettings))A ]
)))] ^
,))^ _
aspect))` f
=>))g i
{** 
aspect++ 
.++ 
ClientID++ 
=++  !
settings++" *
.++* +
ClientID+++ 3
;++3 4
aspect,, 
.,, 
ClientSecret,, #
=,,$ %
settings,,& .
.,,. /
ClientSecret,,/ ;
;,,; <
aspect-- 
.-- 
CallbackPath-- #
=--$ %
settings--& .
.--. /
CallbackPath--/ ;
;--; <
}.. 
).. 
;.. 
await00 
_siteService00 
.00 #
UpdateSiteSettingsAsync00 6
(006 7
	container007 @
)00@ A
;00A B
}11 	
public33 
bool33 
CheckSettings33 !
(33! "(
GoogleAuthenticationSettings33" >
settings33? G
)33G H
{44 	
var55 
obj55 
=55 
new55 1
%GoogleAuthenticationSettingsViewModel55 ?
(55? @
)55@ A
{66 
ClientID77 
=77 
settings77 #
.77# $
ClientID77$ ,
,77, -
CallbackPath88 
=88 
settings88 '
.88' (
CallbackPath88( 4
,884 5
ClientSecret99 
=99 
settings99 '
.99' (
ClientSecret99( 4
}:: 
;:: 
var<< 
vc<< 
=<< 
new<< 
ValidationContext<< *
(<<* +
obj<<+ .
)<<. /
;<</ 0
return== 
	Validator== 
.== 
TryValidateObject== .
(==. /
obj==/ 2
,==2 3
vc==4 6
,==6 7
ImmutableArray==8 F
.==F G
CreateBuilder==G T
<==T U
ValidationResult==U e
>==e f
(==f g
)==g h
)==h i
;==i j
}>> 	
}?? 
}@@ ”
™D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Authentication\Settings\GoogleAuthenticationSettings.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
Authentication +
.+ ,
Settings, 4
{ 
public 

class (
GoogleAuthenticationSettings -
{ 
public 
string 
ClientID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 

PathString		 
CallbackPath		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
bool

 

SaveTokens

 
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
+ ,
} 
} ˙
µD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Authentication\ViewModels\GoogleAuthenticationSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Google 
. 
Authentication +
.+ ,

ViewModels, 6
{ 
public 

class 1
%GoogleAuthenticationSettingsViewModel 6
{ 
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
,+ ,
ErrorMessage- 9
=: ;
$str< V
)V W
]W X
public 
string 
ClientID 
{  
get! $
;$ %
set& )
;) *
}+ ,
[

 	
Required

	 
(

 
AllowEmptyStrings

 #
=

$ %
false

& +
,

+ ,
ErrorMessage

- 9
=

: ;
$str

< V
)

V W
]

W X
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
RegularExpression	 
( 
$str U
,U V
ErrorMessageW c
=d e
$strf t
)t u
]u v
public 
string 
CallbackPath "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 

SaveTokens 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
HasDecryptionError &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} Ì
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\GoogleConstants.cs
	namespace 	
OrchardCore
 
. 
Google 
{ 
public 

static 
class 
GoogleConstants '
{ 
public 
static 
class 
Features $
{ 	
public 
const 
string  
GoogleAuthentication  4
=5 6
$str7 `
;` a
public 
const 
string 
GoogleAnalytics  /
=0 1
$str2 P
;P Q
}		 	
}

 
} é
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
Author 

= 
ManifestConstants 
. 
OrchardCoreTeam .
,. /
Website 
= 
ManifestConstants 
.  
OrchardCoreWebsite  2
,2 3
Version 
= 
ManifestConstants 
.  
OrchardCoreVersion  2
,2 3
Category		 
=		 
$str		 
)

 
]

 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
GoogleConstants	 
. 
Features !
.! " 
GoogleAuthentication" 6
,6 7
Name 
=	 

$str "
," #
Category 
= 
$str 
, 
Description 
= 
$str B
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
GoogleConstants	 
. 
Features !
.! "
GoogleAnalytics" 1
,1 2
Name 
=	 

$str 
, 
Category 
= 
$str 
, 
Description 
= 
$str 5
) 
] Œ
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Permissions.cs
	namespace 	
OrchardCore
 
. 
Google 
{ 
public 

class 
Permissions 
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
 )&
ManageGoogleAuthentication

* D
= 
new 

Permission 
( 
nameof #
(# $&
ManageGoogleAuthentication$ >
)> ?
,? @
$strA h
)h i
;i j
public 
static 
readonly 

Permission )!
ManageGoogleAnalytics* ?
= 
new 

Permission 
( 
nameof #
(# $!
ManageGoogleAnalytics$ 9
)9 :
,: ;
$str< ^
)^ _
;_ `
public 
class  
GoogleAuthentication )
:* +
IPermissionProvider, ?
{ 	
public 
Task 
< 
IEnumerable #
<# $

Permission$ .
>. /
>/ 0
GetPermissionsAsync1 D
(D E
)E F
{ 
return 
Task 
. 

FromResult &
(& '
new' *
[* +
]+ ,
{ &
ManageGoogleAuthentication .
} 
. 
AsEnumerable 
( 
) 
)  
;  !
} 
public 
IEnumerable 
<  
PermissionStereotype 3
>3 4!
GetDefaultStereotypes5 J
(J K
)K L
{ 
yield 
return 
new   
PermissionStereotype! 5
{ 
Name 
= 
$str *
,* +
Permissions   
=    !
new  " %
[  % &
]  & '
{!! &
ManageGoogleAuthentication"" 2
}## 
}$$ 
;$$ 
}%% 
}&& 	
public(( 
class(( 
GoogleAnalytics(( $
:((% &
IPermissionProvider((' :
{)) 	
public** 
Task** 
<** 
IEnumerable** #
<**# $

Permission**$ .
>**. /
>**/ 0
GetPermissionsAsync**1 D
(**D E
)**E F
{++ 
return,, 
Task,, 
.,, 

FromResult,, &
(,,& '
new,,' *
[,,* +
],,+ ,
{-- !
ManageGoogleAnalytics.. )
}// 
.00 
AsEnumerable00 
(00 
)00 
)00  
;00  !
}11 
public33 
IEnumerable33 
<33  
PermissionStereotype33 3
>333 4!
GetDefaultStereotypes335 J
(33J K
)33K L
{44 
yield55 
return55 
new55   
PermissionStereotype55! 5
{66 
Name77 
=77 
$str77 *
,77* +
Permissions88 
=88  !
new88" %
[88% &
]88& '
{99 !
ManageGoogleAnalytics:: -
};; 
}<< 
;<< 
}== 
}>> 	
}?? 
}@@ ‡'
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Google\Startup.cs
	namespace 	
OrchardCore
 
. 
Google 
{ 
[ 
Feature 
( 
GoogleConstants 
. 
Features %
.% & 
GoogleAuthentication& :
): ;
]; <
public 

class '
GoogleAuthenticationStartup ,
:- .
StartupBase/ :
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
.? @ 
GoogleAuthentication@ T
>T U
(U V
)V W
;W X
services 
. "
AddRecipeExecutionStep +
<+ ,,
 GoogleAuthenticationSettingsStep, L
>L M
(M N
)N O
;O P
services 
. 
AddSingleton !
<! "'
GoogleAuthenticationService" =
,= >'
GoogleAuthenticationService? Z
>Z [
([ \
)\ ]
;] ^
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 55
)GoogleAuthenticationSettingsDisplayDriver6 _
>_ `
(` a
)a b
;b c
services   
.   
	AddScoped   
<   
INavigationProvider   2
,  2 3)
GoogleAuthenticationAdminMenu  4 Q
>  Q R
(  R S
)  S T
;  T U
services"" 
."" 
TryAddEnumerable"" %
(""% &
new""& )
["") *
]""* +
{## 
ServiceDescriptor%% !
.%%! "
	Transient%%" +
<%%+ ,
IConfigureOptions%%, =
<%%= >!
AuthenticationOptions%%> S
>%%S T
,%%T U&
GoogleOptionsConfiguration%%V p
>%%p q
(%%q r
)%%r s
,%%s t
ServiceDescriptor&& !
.&&! "
	Transient&&" +
<&&+ ,
IConfigureOptions&&, =
<&&= >
GoogleOptions&&> K
>&&K L
,&&L M&
GoogleOptionsConfiguration&&N h
>&&h i
(&&i j
)&&j k
,&&k l
ServiceDescriptor(( !
.((! "
	Transient((" +
<((+ ,!
IPostConfigureOptions((, A
<((A B
GoogleOptions((B O
>((O P
,((P Q%
OAuthPostConfigureOptions((R k
<((k l
GoogleOptions((l y
,((y z
GoogleHandler	((z á
>
((á à
>
((à â
(
((â ä
)
((ä ã
})) 
))) 
;)) 
}** 	
}++ 
[-- 
Feature-- 
(-- 
GoogleConstants-- 
.-- 
Features-- %
.--% &
GoogleAnalytics--& 5
)--5 6
]--6 7
public.. 

class.. "
GoogleAnalyticsStartup.. '
:..( )
StartupBase..* 5
{// 
public00 
override00 
void00 
ConfigureServices00 .
(00. /
IServiceCollection00/ A
services00B J
)00J K
{11 	
services22 
.22 
	AddScoped22 
<22 
IPermissionProvider22 2
,222 3
Permissions224 ?
.22? @
GoogleAnalytics22@ O
>22O P
(22P Q
)22Q R
;22R S
services33 
.33 "
AddRecipeExecutionStep33 +
<33+ ,'
GoogleAnalyticsSettingsStep33, G
>33G H
(33H I
)33I J
;33J K
services44 
.44 
	AddScoped44 
<44 
IDisplayDriver44 -
<44- .
ISite44. 3
>443 4
,444 50
$GoogleAnalyticsSettingsDisplayDriver446 Z
>44Z [
(44[ \
)44\ ]
;44] ^
services55 
.55 
	AddScoped55 
<55 
INavigationProvider55 2
,552 3$
GoogleAnalyticsAdminMenu554 L
>55L M
(55M N
)55N O
;55O P
services66 
.66 
	Configure66 
<66 

MvcOptions66 )
>66) *
(66* +
(66+ ,
options66, 3
)663 4
=>665 7
{77 
options88 
.88 
Filters88 
.88  
Add88  #
(88# $
typeof88$ *
(88* +!
GoogleAnalyticsFilter88+ @
)88@ A
)88A B
;88B C
}99 
)99 
;99 
}:: 	
};; 
}<< 