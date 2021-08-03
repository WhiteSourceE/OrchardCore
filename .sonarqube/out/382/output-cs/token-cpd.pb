ˇ
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
GitHub 
{ 
[		 
Feature		 
(		 
GitHubConstants		 
.		 
Features		 %
.		% & 
GitHubAuthentication		& :
)		: ;
]		; <
public

 

class

  
AdminMenuGitHubLogin

 %
:

& '
INavigationProvider

( ;
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public  
AdminMenuGitHubLogin #
(# $
IStringLocalizer$ 4
<4 5 
AdminMenuGitHubLogin5 I
>I J
	localizerK T
)T U
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
String 
. 
Equals 
( 
name "
," #
$str$ +
,+ ,
StringComparison- =
.= >
OrdinalIgnoreCase> O
)O P
)P Q
{ 
builder 
. 
Add 
( 
S 
[ 
$str (
]( )
,) *
security+ 3
=>4 6
security7 ?
. 
Add 
( 
S 
[ 
$str /
]/ 0
,0 1
authentication2 @
=>A C
authenticationD R
. 
Add 
( 
S 
[ 
$str '
]' (
,( )
S* +
[+ ,
$str, 4
]4 5
.5 6
PrefixPosition6 D
(D E
)E F
,F G
settingsH P
=>Q S
settingsT \
. 
AddClass !
(! "
$str" *
)* +
.+ ,
Id, .
(. /
$str/ 7
)7 8
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC Y
,Y Z
groupId[ b
=c d
GitHubConstantse t
.t u
Featuresu }
.} ~!
GitHubAuthentication	~ í
}
ì î
)
î ï
. 

Permission '
(' (
Permissions( 3
.3 4&
ManageGitHubAuthentication4 N
)N O
. 
LocalNav %
(% &
)& '
)' (
) 
) 
; 
} 
return   
Task   
.   
CompletedTask   %
;  % &
}!! 	
}"" 
}## ú	
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Configuration\GithubDefaults.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Configuration *
{ 
public 

class 
GitHubDefaults 
{ 
public 
const 
string  
AuthenticationScheme 0
=1 2
$str3 ;
;; <
public 
static 
readonly 
string %
DisplayName& 1
=2 3
$str4 <
;< =
public 
static 
readonly 
string %!
AuthorizationEndpoint& ;
=< =
$str> h
;h i
public 
static 
readonly 
string %
TokenEndpoint& 3
=4 5
$str6 c
;c d
public		 
static		 
readonly		 
string		 %#
UserInformationEndpoint		& =
=		> ?
$str		@ ]
;		] ^
}

 
} ñ#
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Configuration\GithubHandler.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Configuration *
{ 
public 

class 
GitHubHandler 
:  
OAuthHandler! -
<- .
GitHubOptions. ;
>; <
{ 
public 
GitHubHandler 
( 
IOptionsMonitor ,
<, -
GitHubOptions- :
>: ;
options< C
,C D
ILoggerFactoryE S
loggerT Z
,Z [

UrlEncoder\ f
encoderg n
,n o
ISystemClockp |
clock	} Ç
)
Ç É
: 
base 
( 
options 
, 
logger "
," #
encoder$ +
,+ ,
clock- 2
)2 3
{ 	
}
 
	protected 
override 
async  
Task! %
<% & 
AuthenticationTicket& :
>: ;
CreateTicketAsync< M
(M N
ClaimsIdentityN \
identity] e
,e f$
AuthenticationPropertiesg 

properties
Ä ä
,
ä ã 
OAuthTokenResponse
å û
tokens
ü •
)
• ¶
{ 	
var 
request 
= 
new 
HttpRequestMessage 0
(0 1

HttpMethod1 ;
.; <
Get< ?
,? @
OptionsA H
.H I#
UserInformationEndpointI `
)` a
;a b
request 
. 
Headers 
. 
Authorization )
=* +
new, /%
AuthenticationHeaderValue0 I
(I J
$strJ R
,R S
tokensT Z
.Z [
AccessToken[ f
)f g
;g h
var 
response 
= 
await  
Backchannel! ,
., -
	SendAsync- 6
(6 7
request7 >
,> ?
Context@ G
.G H
RequestAbortedH V
)V W
;W X
if 
( 
! 
response 
. 
IsSuccessStatusCode -
)- .
{ 
throw 
new  
HttpRequestException .
(. /
$"/ 1G
;An error occurred when retrieving GitHub user information (1 l
{l m
responsem u
.u v

StatusCode	v Ä
}
Ä Ås
e). Please check if the authentication information is correct in the corresponding GitHub Application.
Å Ê
"
Ê Á
)
Á Ë
;
Ë È
} 
var 
payload 
= 
( 
await  
JsonDocument! -
.- .

ParseAsync. 8
(8 9
await9 >
response? G
.G H
ContentH O
.O P
ReadAsStreamAsyncP a
(a b
)b c
)c d
)d e
.e f
RootElementf q
;q r
var!! 
context!! 
=!! 
new!! &
OAuthCreatingTicketContext!! 8
(!!8 9
new!!9 <
ClaimsPrincipal!!= L
(!!L M
identity!!M U
)!!U V
,!!V W

properties!!X b
,!!b c
Context!!d k
,!!k l
Scheme!!m s
,!!s t
Options!!u |
,!!| }
Backchannel	!!~ â
,
!!â ä
tokens
!!ã ë
,
!!ë í
payload
!!ì ö
)
!!ö õ
;
!!õ ú
context"" 
."" 
RunClaimActions"" #
(""# $
)""$ %
;""% &
await$$ 
Events$$ 
.$$ 
CreatingTicket$$ '
($$' (
context$$( /
)$$/ 0
;$$0 1
return%% 
new%%  
AuthenticationTicket%% +
(%%+ ,
context%%, 3
.%%3 4
	Principal%%4 =
,%%= >
context%%? F
.%%F G

Properties%%G Q
,%%Q R
Scheme%%S Y
.%%Y Z
Name%%Z ^
)%%^ _
;%%_ `
}&& 	
}'' 
}(( ˙
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Configuration\GithubOptions.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Configuration *
{ 
public 

class 
GitHubOptions 
:  
OAuthOptions! -
{ 
public 
GitHubOptions 
( 
) 
{ 	
CallbackPath 
= 
new 

PathString )
() *
$str* :
): ;
;; <!
AuthorizationEndpoint !
=" #
GitHubDefaults$ 2
.2 3!
AuthorizationEndpoint3 H
;H I
TokenEndpoint 
= 
GitHubDefaults *
.* +
TokenEndpoint+ 8
;8 9#
UserInformationEndpoint #
=$ %
GitHubDefaults& 4
.4 5#
UserInformationEndpoint5 L
;L M
ClaimActions 
. 

MapJsonKey #
(# $

ClaimTypes$ .
.. /
NameIdentifier/ =
,= >
$str? C
)C D
;D E
ClaimActions 
. 

MapJsonKey #
(# $
$str$ *
,* +
$str, 3
)3 4
;4 5
ClaimActions 
. 

MapJsonKey #
(# $

ClaimTypes$ .
.. /
Email/ 4
,4 5
$str6 =
,= >
ClaimValueTypes? N
.N O
EmailO T
)T U
;U V
ClaimActions 
. 

MapJsonKey #
(# $
$str$ )
,) *
$str+ 0
)0 1
;1 2
} 	
} 
} ˘9
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Configuration\GithubOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Configuration *
{ 
public 

class &
GitHubOptionsConfiguration +
:, -
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
< 
GitHubOptions ,
>, -
{ 
private 
readonly (
IGitHubAuthenticationService 5(
_githubAuthenticationService6 R
;R S
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
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
public &
GitHubOptionsConfiguration )
() *(
IGitHubAuthenticationService ('
githubAuthenticationService) D
,D E#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
ShellSettings 
shellSettings '
,' (
ILogger 
< &
GitHubOptionsConfiguration .
>. /
logger0 6
)6 7
{ 	(
_githubAuthenticationService   (
=  ) *'
githubAuthenticationService  + F
;  F G#
_dataProtectionProvider!! #
=!!$ %"
dataProtectionProvider!!& <
;!!< =
_shellSettings"" 
="" 
shellSettings"" *
;""* +
_logger## 
=## 
logger## 
;## 
}$$ 	
public&& 
void&& 
	Configure&& 
(&& !
AuthenticationOptions&& 3
options&&4 ;
)&&; <
{'' 	
var(( 
settings(( 
=(( 0
$GetGitHubAuthenticationSettingsAsync(( ?
(((? @
)((@ A
.((A B

GetAwaiter((B L
(((L M
)((M N
.((N O
	GetResult((O X
(((X Y
)((Y Z
;((Z [
if)) 
()) 
settings)) 
==)) 
null))  
)))  !
{** 
return++ 
;++ 
},, 
if.. 
(.. (
_githubAuthenticationService.. ,
..., -
ValidateSettings..- =
(..= >
settings..> F
)..F G
...G H
Any..H K
(..K L
)..L M
)..M N
{// 
return00 
;00 
}11 
options44 
.44 
	AddScheme44 
(44 
GitHubDefaults44 ,
.44, - 
AuthenticationScheme44- A
,44A B
builder44C J
=>44K M
{55 
builder66 
.66 
DisplayName66 #
=66$ %
$str66& .
;66. /
builder77 
.77 
HandlerType77 #
=77$ %
typeof77& ,
(77, -
GitHubHandler77- :
)77: ;
;77; <
}88 
)88 
;88 
}99 	
public;; 
void;; 
	Configure;; 
(;; 
string;; $
name;;% )
,;;) *
GitHubOptions;;+ 8
options;;9 @
);;@ A
{<< 	
if>> 
(>> 
!>> 
String>> 
.>> 
Equals>> 
(>> 
name>> #
,>># $
GitHubDefaults>>% 3
.>>3 4 
AuthenticationScheme>>4 H
)>>H I
)>>I J
{?? 
return@@ 
;@@ 
}AA 
varCC 
loginSettingsCC 
=CC 0
$GetGitHubAuthenticationSettingsAsyncCC  D
(CCD E
)CCE F
.CCF G

GetAwaiterCCG Q
(CCQ R
)CCR S
.CCS T
	GetResultCCT ]
(CC] ^
)CC^ _
;CC_ `
ifDD 
(DD 
loginSettingsDD 
==DD  
nullDD! %
)DD% &
{EE 
returnFF 
;FF 
}GG 
optionsII 
.II 
ClientIdII 
=II 
loginSettingsII ,
.II, -
ClientIDII- 5
;II5 6
tryKK 
{LL 
optionsMM 
.MM 
ClientSecretMM $
=MM% &#
_dataProtectionProviderMM' >
.MM> ?
CreateProtectorMM? N
(MMN O
GitHubConstantsMMO ^
.MM^ _
FeaturesMM_ g
.MMg h 
GitHubAuthenticationMMh |
)MM| }
.MM} ~
	Unprotect	MM~ á
(
MMá à
loginSettings
MMà ï
.
MMï ñ
ClientSecret
MMñ ¢
)
MM¢ £
;
MM£ §
}NN 
catchOO 
{PP 
_loggerQQ 
.QQ 
LogErrorQQ  
(QQ  !
$str	QQ! á
)
QQá à
;
QQà â
}RR 
ifTT 
(TT 
loginSettingsTT 
.TT 
CallbackPathTT *
.TT* +
HasValueTT+ 3
)TT3 4
{UU 
optionsVV 
.VV 
CallbackPathVV $
=VV% &
loginSettingsVV' 4
.VV4 5
CallbackPathVV5 A
;VVA B
}WW 
optionsYY 
.YY 

SaveTokensYY 
=YY  
loginSettingsYY! .
.YY. /

SaveTokensYY/ 9
;YY9 :
}ZZ 	
public\\ 
void\\ 
	Configure\\ 
(\\ 
GitHubOptions\\ +
options\\, 3
)\\3 4
=>\\5 7
Debug\\8 =
.\\= >
Fail\\> B
(\\B C
$str\\C t
)\\t u
;\\u v
private^^ 
async^^ 
Task^^ 
<^^ (
GitHubAuthenticationSettings^^ 7
>^^7 80
$GetGitHubAuthenticationSettingsAsync^^9 ]
(^^] ^
)^^^ _
{__ 	
var`` 
settings`` 
=`` 
await``  (
_githubAuthenticationService``! =
.``= >
GetSettingsAsync``> N
(``N O
)``O P
;``P Q
ifaa 
(aa 
(aa (
_githubAuthenticationServiceaa -
.aa- .
ValidateSettingsaa. >
(aa> ?
settingsaa? G
)aaG H
)aaH I
.aaI J
AnyaaJ M
(aaM N
resultaaN T
=>aaU W
resultaaX ^
!=aa_ a
ValidationResultaab r
.aar s
Successaas z
)aaz {
)aa{ |
{bb 
ifcc 
(cc 
_shellSettingscc "
.cc" #
Statecc# (
==cc) +
TenantStatecc, 7
.cc7 8
Runningcc8 ?
)cc? @
{dd 
_loggeree 
.ee 

LogWarningee &
(ee& '
$stree' [
)ee[ \
;ee\ ]
}ff 
returnhh 
nullhh 
;hh 
}ii 
returnkk 
settingskk 
;kk 
}ll 	
}mm 
}nn éI
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Drivers\GithubAuthenticationSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Drivers $
{ 
public 

class 5
)GitHubAuthenticationSettingsDisplayDriver :
:; < 
SectionDisplayDriver= Q
<Q R
ISiteR W
,W X(
GitHubAuthenticationSettingsY u
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
)GitHubAuthenticationSettingsDisplayDriver 8
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
)GitHubAuthenticationSettingsDisplayDriver   =
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
GitHubAuthenticationSettings**= Y
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
ManageGitHubAuthentication--^ x
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
%GitHubAuthenticationSettingsViewModel22 C
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
GitHubConstants99P _
.99_ `
Features99` h
.99h i 
GitHubAuthentication99i }
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
.II 
CallbackUrlII %
=II& '
settingsII( 0
.II0 1
CallbackPathII1 =
.II= >
ValueII> C
;IIC D
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
GitHubConstantsLL- <
.LL< =
FeaturesLL= E
.LLE F 
GitHubAuthenticationLLF Z
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
GitHubAuthenticationSettingsOO? [
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
GitHubConstantsQQ# 2
.QQ2 3
FeaturesQQ3 ;
.QQ; < 
GitHubAuthenticationQQ< P
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
ManageGitHubAuthenticationTTb |
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
%GitHubAuthenticationSettingsViewModelYY  E
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
GitHubConstants^^L [
.^^[ \
Features^^\ d
.^^d e 
GitHubAuthentication^^e y
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
.bb1 2
CallbackUrlbb2 =
;bb= >
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
}jj Â
ÖD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\GithubConstants.cs
	namespace 	
OrchardCore
 
. 
GitHub 
{ 
public 

static 
class 
GitHubConstants '
{ 
public 
static 
class 
Features $
{ 	
public 
const 
string  
GitHubAuthentication  4
=5 6
$str7 Z
;Z [
} 	
}		 
}

 æ	
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Manifest.cs
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
GitHubConstants	 
. 
Features !
.! " 
GitHubAuthentication" 6
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
] ≥
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Permissions.cs
	namespace 	
OrchardCore
 
. 
GitHub 
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
 )&
ManageGitHubAuthentication

* D
= 
new 

Permission 
( 
nameof #
(# $&
ManageGitHubAuthentication$ >
)> ?
,? @
$strA h
)h i
;i j
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{) *&
ManageGitHubAuthentication+ E
}F G
.G H
AsEnumerableH T
(T U
)U V
)V W
;W X
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
yield 
return 
new  
PermissionStereotype 1
{ 
Name 
= 
$str &
,& '
Permissions 
= 
new !
[! "
]" #
{ &
ManageGitHubAuthentication .
} 
} 
; 
} 	
} 
} ¿
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Recipes\GithubAuthenticationSettingsStep.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Recipes $
{		 
public 

class ,
 GitHubAuthenticationSettingsStep 1
:2 3
IRecipeStepHandler4 F
{ 
private 
readonly (
IGitHubAuthenticationService 5(
_githubAuthenticationService6 R
;R S
public ,
 GitHubAuthenticationSettingsStep /
(/ 0(
IGitHubAuthenticationService0 L
githubLoginServiceM _
)_ `
{ 	(
_githubAuthenticationService (
=) *
githubLoginService+ =
;= >
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
,+ ,
nameof- 3
(3 4(
GitHubAuthenticationSettings4 P
)P Q
,Q R
StringComparisonS c
.c d
OrdinalIgnoreCased u
)u v
)v w
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .(
GitHubLoginSettingsStepModel. J
>J K
(K L
)L M
;M N
var 
settings 
= 
await  (
_githubAuthenticationService! =
.= >
LoadSettingsAsync> O
(O P
)P Q
;Q R
settings 
. 
ClientID 
= 
model  %
.% &
ConsumerKey& 1
;1 2
settings   
.   
ClientSecret   !
=  " #
model  $ )
.  ) *
ConsumerSecret  * 8
;  8 9
settings!! 
.!! 
CallbackPath!! !
=!!" #
model!!$ )
.!!) *
CallbackPath!!* 6
;!!6 7
await## (
_githubAuthenticationService## .
.##. /
UpdateSettingsAsync##/ B
(##B C
settings##C K
)##K L
;##L M
}$$ 	
}%% 
public'' 

class'' (
GitHubLoginSettingsStepModel'' -
{(( 
public)) 
string)) 
ConsumerKey)) !
{))" #
get))$ '
;))' (
set))) ,
;)), -
})). /
public** 
string** 
ConsumerSecret** $
{**% &
get**' *
;*** +
set**, /
;**/ 0
}**1 2
public++ 
string++ 
CallbackPath++ "
{++# $
get++% (
;++( )
set++* -
;++- .
}++/ 0
},, 
}-- ∂.
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Services\GithubAuthenticationService.cs
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
GitHub

 
.

 
Services

 %
{ 
public 

class '
GitHubAuthenticationService ,
:- .(
IGitHubAuthenticationService/ K
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public '
GitHubAuthenticationService *
(* +
ISiteService 
siteService $
,$ %
IStringLocalizer 
< '
GitHubAuthenticationService 8
>8 9
stringLocalizer: I
)I J
{ 	
_siteService 
= 
siteService &
;& '
S 
= 
stringLocalizer 
;  
} 	
public 
async 
Task 
< (
GitHubAuthenticationSettings 6
>6 7
GetSettingsAsync8 H
(H I
)I J
{ 	
var 
	container 
= 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
;E F
return 
	container 
. 
As 
<  (
GitHubAuthenticationSettings  <
>< =
(= >
)> ?
;? @
} 	
public 
async 
Task 
< (
GitHubAuthenticationSettings 6
>6 7
LoadSettingsAsync8 I
(I J
)J K
{   	
var!! 
	container!! 
=!! 
await!! !
_siteService!!" .
.!!. /!
LoadSiteSettingsAsync!!/ D
(!!D E
)!!E F
;!!F G
return"" 
	container"" 
."" 
As"" 
<""  (
GitHubAuthenticationSettings""  <
>""< =
(""= >
)""> ?
;""? @
}## 	
public%% 
async%% 
Task%% 
UpdateSettingsAsync%% -
(%%- .(
GitHubAuthenticationSettings%%. J
settings%%K S
)%%S T
{&& 	
if'' 
('' 
settings'' 
=='' 
null''  
)''  !
{(( 
throw)) 
new)) !
ArgumentNullException)) /
())/ 0
nameof))0 6
())6 7
settings))7 ?
)))? @
)))@ A
;))A B
}** 
var,, 
	container,, 
=,, 
await,, !
_siteService,," .
.,,. /!
LoadSiteSettingsAsync,,/ D
(,,D E
),,E F
;,,F G
	container-- 
.-- 
Alter-- 
<-- (
GitHubAuthenticationSettings-- 8
>--8 9
(--9 :
nameof--: @
(--@ A(
GitHubAuthenticationSettings--A ]
)--] ^
,--^ _
aspect--` f
=>--g i
{.. 
aspect// 
.// 
ClientID// 
=//  !
settings//" *
.//* +
ClientID//+ 3
;//3 4
aspect00 
.00 
ClientSecret00 #
=00$ %
settings00& .
.00. /
ClientSecret00/ ;
;00; <
aspect11 
.11 
CallbackPath11 #
=11$ %
settings11& .
.11. /
CallbackPath11/ ;
;11; <
}22 
)22 
;22 
await44 
_siteService44 
.44 #
UpdateSiteSettingsAsync44 6
(446 7
	container447 @
)44@ A
;44A B
}55 	
public77 
IEnumerable77 
<77 
ValidationResult77 +
>77+ ,
ValidateSettings77- =
(77= >(
GitHubAuthenticationSettings77> Z
settings77[ c
)77c d
{88 	
if99 
(99 
settings99 
==99 
null99  
)99  !
{:: 
throw;; 
new;; !
ArgumentNullException;; /
(;;/ 0
nameof;;0 6
(;;6 7
settings;;7 ?
);;? @
);;@ A
;;;A B
}<< 
if>> 
(>> 
String>> 
.>> 
IsNullOrWhiteSpace>> )
(>>) *
settings>>* 2
.>>2 3
ClientID>>3 ;
)>>; <
)>>< =
{?? 
yield@@ 
return@@ 
new@@  
ValidationResult@@! 1
(@@1 2
S@@2 3
[@@3 4
$str@@4 J
]@@J K
,@@K L
new@@M P
string@@Q W
[@@W X
]@@X Y
{@@Z [
nameof@@\ b
(@@b c
settings@@c k
.@@k l
ClientID@@l t
)@@t u
}@@v w
)@@w x
;@@x y
}AA 
ifCC 
(CC 
StringCC 
.CC 
IsNullOrWhiteSpaceCC )
(CC) *
settingsCC* 2
.CC2 3
ClientSecretCC3 ?
)CC? @
)CC@ A
{DD 
yieldEE 
returnEE 
newEE  
ValidationResultEE! 1
(EE1 2
SEE2 3
[EE3 4
$strEE4 N
]EEN O
,EEO P
newEEQ T
stringEEU [
[EE[ \
]EE\ ]
{EE^ _
nameofEE` f
(EEf g
settingsEEg o
.EEo p
ClientSecretEEp |
)EE| }
}EE~ 
)	EE Ä
;
EEÄ Å
}FF 
}GG 	
}HH 
}II Ï
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Services\IGithubAuthenticationService.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Services %
{ 
public 

	interface (
IGitHubAuthenticationService 1
{		 
Task

 
<

 (
GitHubAuthenticationSettings

 )
>

) *
GetSettingsAsync

+ ;
(

; <
)

< =
;

= >
Task 
< (
GitHubAuthenticationSettings )
>) *
LoadSettingsAsync+ <
(< =
)= >
;> ?
Task 
UpdateSettingsAsync  
(  !(
GitHubAuthenticationSettings! =
settings> F
)F G
;G H
IEnumerable 
< 
ValidationResult $
>$ %
ValidateSettings& 6
(6 7(
GitHubAuthenticationSettings7 S
settingsT \
)\ ]
;] ^
} 
} ô
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Settings\GithubAuthenticationSettings.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 
Settings %
{ 
public 

class (
GitHubAuthenticationSettings -
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
}  
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\Startup.cs
	namespace 	
OrchardCore
 
. 
GitHub 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
>? @
(@ A
)A B
;B C
} 	
} 
[ 
Feature 
( 
GitHubConstants 
. 
Features %
.% & 
GitHubAuthentication& :
): ;
]; <
public 

class 
GitHubLoginStartup #
:$ %
StartupBase& 1
{ 
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
. 
AddSingleton !
<! "(
IGitHubAuthenticationService" >
,> ?'
GitHubAuthenticationService@ [
>[ \
(\ ]
)] ^
;^ _
services   
.   
	AddScoped   
<   
IDisplayDriver   -
<  - .
ISite  . 3
>  3 4
,  4 55
)GitHubAuthenticationSettingsDisplayDriver  6 _
>  _ `
(  ` a
)  a b
;  b c
services!! 
.!! 
	AddScoped!! 
<!! 
INavigationProvider!! 2
,!!2 3 
AdminMenuGitHubLogin!!4 H
>!!H I
(!!I J
)!!J K
;!!K L
services"" 
."" "
AddRecipeExecutionStep"" +
<""+ ,,
 GitHubAuthenticationSettingsStep"", L
>""L M
(""M N
)""N O
;""O P
services$$ 
.$$ 
TryAddEnumerable$$ %
($$% &
new$$& )
[$$) *
]$$* +
{%% 
ServiceDescriptor'' !
.''! "
	Transient''" +
<''+ ,
IConfigureOptions'', =
<''= >!
AuthenticationOptions''> S
>''S T
,''T U&
GitHubOptionsConfiguration''V p
>''p q
(''q r
)''r s
,''s t
ServiceDescriptor(( !
.((! "
	Transient((" +
<((+ ,
IConfigureOptions((, =
<((= >
GitHubOptions((> K
>((K L
,((L M&
GitHubOptionsConfiguration((N h
>((h i
(((i j
)((j k
,((k l
ServiceDescriptor** !
.**! "
	Transient**" +
<**+ ,!
IPostConfigureOptions**, A
<**A B
GitHubOptions**B O
>**O P
,**P Q%
OAuthPostConfigureOptions**R k
<**k l
GitHubOptions**l y
,**y z
GitHubHandler	**z á
>
**á à
>
**à â
(
**â ä
)
**ä ã
}++ 
)++ 
;++ 
},, 	
}-- 
}.. ø
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.GitHub\ViewModels\GithubAuthenticationSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
GitHub 
. 

ViewModels '
{ 
public 

class 1
%GitHubAuthenticationSettingsViewModel 6
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
$str< Q
)Q R
]R S
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
< X
)

X Y
]

Y Z
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
string 
CallbackUrl !
{" #
get$ '
;' (
set) ,
;, -
}. /
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
} 