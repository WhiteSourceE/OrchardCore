Û
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Https 
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
$str !
]! "
," #
security$ ,
=>- /
security0 8
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
settings( 0
=>1 3
settings4 <
. 
Add 
( 
S 
[ 
$str &
]& '
,' (
S) *
[* +
$str+ 2
]2 3
.3 4
PrefixPosition4 B
(B C
)C D
,D E
entryF K
=>L N
entryO T
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
=c d
$stre l
}m n
)n o
. 

Permission '
(' (
Permissions( 3
.3 4
ManageHttps4 ?
)? @
. 
LocalNav %
(% &
)& '
) 
) 
)   
;   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% ¥;
—D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Drivers\HttpsSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Https 
. 
Drivers #
{ 
public 

class &
HttpsSettingsDisplayDriver +
:, - 
SectionDisplayDriver. B
<B C
ISiteC H
,H I
HttpsSettingsJ W
>W X
{ 
private 
const 
string 
SettingsGroupId ,
=- .
$str/ 6
;6 7
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
readonly 
	INotifier "
	_notifier# ,
;, -
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
readonly 
IHtmlLocalizer '
H( )
;) *
public &
HttpsSettingsDisplayDriver )
() * 
IHttpContextAccessor* >
httpContextAccessor? R
,R S!
IAuthorizationService ! 
authorizationService" 6
,6 7
	INotifier 
notifier 
, 

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
,' (
IHtmlLocalizer   
<   &
HttpsSettingsDisplayDriver   5
>  5 6
htmlLocalizer  7 D
)  D E
{!! 	 
_httpContextAccessor""  
=""! "
httpContextAccessor""# 6
;""6 7!
_authorizationService## !
=##" # 
authorizationService##$ 8
;##8 9
	_notifier$$ 
=$$ 
notifier$$  
;$$  !

_shellHost%% 
=%% 
	shellHost%% "
;%%" #
_shellSettings&& 
=&& 
shellSettings&& *
;&&* +
H'' 
='' 
htmlLocalizer'' 
;'' 
}(( 	
public** 
override** 
async** 
Task** "
<**" #
IDisplayResult**# 1
>**1 2
	EditAsync**3 <
(**< =
HttpsSettings**= J
settings**K S
,**S T
BuildEditorContext**U g
context**h o
)**o p
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
.--] ^
ManageHttps--^ i
)--i j
)--j k
{.. 
return// 
null// 
;// 
}00 
return22 

Initialize22 
<22 "
HttpsSettingsViewModel22 4
>224 5
(225 6
$str226 J
,22J K
model22L Q
=>22R T
{33 
var44 
isHttpsRequest44 "
=44# $ 
_httpContextAccessor44% 9
.449 :
HttpContext44: E
.44E F
Request44F M
.44M N
IsHttps44N U
;44U V
if66 
(66 
!66 
isHttpsRequest66 #
)66# $
	_notifier77 
.77 
Warning77 %
(77% &
H77& '
[77' (
$str77( j
]77j k
)77k l
;77l m
model99 
.99 )
EnableStrictTransportSecurity99 3
=994 5
settings996 >
.99> ?)
EnableStrictTransportSecurity99? \
;99\ ]
model:: 
.:: 
IsHttpsRequest:: $
=::% &
isHttpsRequest::' 5
;::5 6
model;; 
.;; 
RequireHttps;; "
=;;# $
settings;;% -
.;;- .
RequireHttps;;. :
;;;: ;
model<< 
.<< !
RequireHttpsPermanent<< +
=<<, -
settings<<. 6
.<<6 7!
RequireHttpsPermanent<<7 L
;<<L M
model== 
.== 
SslPort== 
=== 
settings==  (
.==( )
SslPort==) 0
??==1 3
(>>  !
isHttpsRequest>>! /
&&>>0 2
!>>3 4
settings>>4 <
.>>< =
RequireHttps>>= I
???$ % 
_httpContextAccessor??& :
.??: ;
HttpContext??; F
.??F G
Request??G N
.??N O
Host??O S
.??S T
Port??T X
:@@$ %
null@@& *
)@@* +
;@@+ ,
}AA 
)AA 
.AA 
LocationAA 
(AA 
$strAA #
)AA# $
.AA$ %
OnGroupAA% ,
(AA, -
SettingsGroupIdAA- <
)AA< =
;AA= >
}BB 	
publicDD 
overrideDD 
asyncDD 
TaskDD "
<DD" #
IDisplayResultDD# 1
>DD1 2
UpdateAsyncDD3 >
(DD> ?
HttpsSettingsDD? L
settingsDDM U
,DDU V
BuildEditorContextDDW i
contextDDj q
)DDq r
{EE 	
ifFF 
(FF 
contextFF 
.FF 
GroupIdFF 
==FF  "
SettingsGroupIdFF# 2
)FF2 3
{GG 
varHH 
modelHH 
=HH 
newHH "
HttpsSettingsViewModelHH  6
(HH6 7
)HH7 8
;HH8 9
awaitJJ 
contextJJ 
.JJ 
UpdaterJJ %
.JJ% &
TryUpdateModelAsyncJJ& 9
(JJ9 :
modelJJ: ?
,JJ? @
PrefixJJA G
)JJG H
;JJH I
settingsLL 
.LL )
EnableStrictTransportSecurityLL 6
=LL7 8
modelLL9 >
.LL> ?)
EnableStrictTransportSecurityLL? \
;LL\ ]
settingsMM 
.MM 
RequireHttpsMM %
=MM& '
modelMM( -
.MM- .
RequireHttpsMM. :
;MM: ;
settingsNN 
.NN !
RequireHttpsPermanentNN .
=NN/ 0
modelNN1 6
.NN6 7!
RequireHttpsPermanentNN7 L
;NNL M
settingsOO 
.OO 
SslPortOO  
=OO! "
modelOO# (
.OO( )
SslPortOO) 0
;OO0 1
ifRR 
(RR 
contextRR 
.RR 
UpdaterRR #
.RR# $

ModelStateRR$ .
.RR. /
IsValidRR/ 6
)RR6 7
{SS 
awaitTT 

_shellHostTT $
.TT$ %$
ReleaseShellContextAsyncTT% =
(TT= >
_shellSettingsTT> L
)TTL M
;TTM N
}UU 
}VV 
returnXX 
awaitXX 
	EditAsyncXX "
(XX" #
settingsXX# +
,XX+ ,
contextXX- 4
)XX4 5
;XX5 6
}YY 	
}ZZ 
}[[ ±
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str U
,U V
Category		 
=		 
$str		 
)

 
]

 ö
€D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Permissions.cs
	namespace 	
OrchardCore
 
. 
Https 
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
 )
ManageHttps

* 5
=

6 7
new

8 ;

Permission

< F
(

F G
$str

G T
,

T U
$str

V d
)

d e
;

e f
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
{) *
ManageHttps+ 6
}7 8
.8 9
AsEnumerable9 E
(E F
)F G
)G H
;H I
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageHttps* 5
}6 7
} 
} 
; 
} 	
} 
} Ü
ŒD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Properties\AssemblyInfo.cs
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
$str		 .
)		. /
]		/ 0
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
]7 8Å

ŠD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Services\HttpsService.cs
	namespace 	
OrchardCore
 
. 
Https 
. 
Services $
{ 
public 

class 
HttpsService 
: 
IHttpsService  -
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
public 
HttpsService 
( 
ISiteService (
siteService) 4
)4 5
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< 
HttpsSettings '
>' (
GetSettingsAsync) 9
(9 :
): ;
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2 
GetSiteSettingsAsync2 F
(F G
)G H
;H I
return 
siteSettings 
.  
As  "
<" #
HttpsSettings# 0
>0 1
(1 2
)2 3
;3 4
} 	
} 
} —
‹D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Services\IHttpsService.cs
	namespace 	
OrchardCore
 
. 
Https 
. 
Services $
{ 
public 

	interface 
IHttpsService "
{ 
Task 
< 
HttpsSettings 
> 
GetSettingsAsync ,
(, -
)- .
;. /
}		 
}

 ˜
‹D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Settings\HttpsSettings.cs
	namespace 	
OrchardCore
 
. 
Https 
. 
Settings $
{ 
public 

class 
HttpsSettings 
{ 
public 
bool )
EnableStrictTransportSecurity 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
bool 
RequireHttps  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool !
RequireHttpsPermanent )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? 
SslPort 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 á4
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\Startup.cs
	namespace 	
OrchardCore
 
. 
Https 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
var 
service 
= 
serviceProvider )
.) *
GetRequiredService* <
<< =
IHttpsService= J
>J K
(K L
)L M
;M N
var 
settings 
= 
service "
." #
GetSettingsAsync# 3
(3 4
)4 5
.5 6

GetAwaiter6 @
(@ A
)A B
.B C
	GetResultC L
(L M
)M N
;N O
if 
( 
settings 
. 
RequireHttps %
)% &
{ 
app 
. 
UseHttpsRedirection '
(' (
)( )
;) *
} 
if   
(   
settings   
.   )
EnableStrictTransportSecurity   6
)  6 7
{!! 
app"" 
."" 
UseHsts"" 
("" 
)"" 
;"" 
}## 
}$$ 	
public&& 
override&& 
void&& 
ConfigureServices&& .
(&&. /
IServiceCollection&&/ A
services&&B J
)&&J K
{'' 	
services(( 
.(( 
	AddScoped(( 
<(( 
INavigationProvider(( 2
,((2 3
	AdminMenu((4 =
>((= >
(((> ?
)((? @
;((@ A
services)) 
.)) 
	AddScoped)) 
<)) 
IDisplayDriver)) -
<))- .
ISite)). 3
>))3 4
,))4 5&
HttpsSettingsDisplayDriver))6 P
>))P Q
())Q R
)))R S
;))S T
services** 
.** 
AddSingleton** !
<**! "
IHttpsService**" /
,**/ 0
HttpsService**1 =
>**= >
(**> ?
)**? @
;**@ A
services,, 
.,, 
	AddScoped,, 
<,, 
IPermissionProvider,, 2
,,,2 3
Permissions,,4 ?
>,,? @
(,,@ A
),,A B
;,,B C
services.. 
... 

AddOptions.. 
<..  #
HttpsRedirectionOptions..  7
>..7 8
(..8 9
)..9 :
.// 
	Configure// 
<// 
IHttpsService// (
>//( )
(//) *
(//* +
options//+ 2
,//2 3
service//4 ;
)//; <
=>//= ?
{00 
var11 
settings11  
=11! "
service11# *
.11* +
GetSettingsAsync11+ ;
(11; <
)11< =
.11= >

GetAwaiter11> H
(11H I
)11I J
.11J K
	GetResult11K T
(11T U
)11U V
;11V W
if22 
(22 
settings22  
.22  !!
RequireHttpsPermanent22! 6
)226 7
{33 
options44 
.44  
RedirectStatusCode44  2
=443 4
StatusCodes445 @
.44@ A&
Status308PermanentRedirect44A [
;44[ \
}55 
if77 
(77 
settings77  
.77  !
SslPort77! (
!=77) +
null77, 0
)770 1
{88 
options99 
.99  
	HttpsPort99  )
=99* +
settings99, 4
.994 5
SslPort995 <
;99< =
}:: 
};; 
);; 
;;; 
services== 
.== 
AddHsts== 
(== 
options== $
=>==% '
{>> 
options?? 
.?? 
Preload?? 
=??  !
false??" '
;??' (
options@@ 
.@@ 
IncludeSubDomains@@ )
=@@* +
true@@, 0
;@@0 1
optionsAA 
.AA 
MaxAgeAA 
=AA  
TimeSpanAA! )
.AA) *
FromDaysAA* 2
(AA2 3
$numAA3 6
)AA6 7
;AA7 8
}BB 
)BB 
;BB 
}CC 	
}DD 
[FF 
RequireFeaturesFF 
(FF 
$strFF -
)FF- .
]FF. /
publicGG 

classGG 
DeploymentStartupGG "
:GG# $
StartupBaseGG% 0
{HH 
publicII 
overrideII 
voidII 
ConfigureServicesII .
(II. /
IServiceCollectionII/ A
servicesIIB J
)IIJ K
{JJ 	
servicesKK 
.KK 
AddTransientKK !
<KK! "
IDeploymentSourceKK" 3
,KK3 40
$SiteSettingsPropertyDeploymentSourceKK5 Y
<KKY Z
HttpsSettingsKKZ g
>KKg h
>KKh i
(KKi j
)KKj k
;KKk l
servicesLL 
.LL 
	AddScopedLL 
<LL 
IDisplayDriverLL -
<LL- .
DeploymentStepLL. <
>LL< =
>LL= >
(LL> ?
spLL? A
=>LLB D
{MM 
varNN 
SNN 
=NN 
spNN 
.NN 

GetServiceNN %
<NN% &
IStringLocalizerNN& 6
<NN6 7
DeploymentStartupNN7 H
>NNH I
>NNI J
(NNJ K
)NNK L
;NNL M
returnOO 
newOO 4
(SiteSettingsPropertyDeploymentStepDriverOO C
<OOC D
HttpsSettingsOOD Q
>OOQ R
(OOR S
SOOS T
[OOT U
$strOOU e
]OOe f
,OOf g
SOOh i
[OOi j
$str	OOj ‡
]
OO‡ ˆ
)
OOˆ ‰
;
OO‰ Š
}PP 
)PP 
;PP 
servicesQQ 
.QQ 
AddSingletonQQ !
<QQ! ""
IDeploymentStepFactoryQQ" 8
>QQ8 9
(QQ9 :
newQQ: =5
)SiteSettingsPropertyDeploymentStepFactoryQQ> g
<QQg h
HttpsSettingsQQh u
>QQu v
(QQv w
)QQw x
)QQx y
;QQy z
}RR 	
}SS 
}TT Î	
–D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Https\ViewModels\HttpsSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Https 
. 

ViewModels &
{ 
public 

class "
HttpsSettingsViewModel '
{ 
public 
bool 
IsHttpsRequest "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool )
EnableStrictTransportSecurity 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
bool 
RequireHttps  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool !
RequireHttpsPermanent )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public		 
int		 
?		 
SslPort		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} 