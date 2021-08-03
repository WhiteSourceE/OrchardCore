ÿ
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\ActionFilters\Detection\IDetectRobots.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
ActionFilters  -
.- .
	Detection. 7
{ 
public 

	interface 
IDetectRobots "
{  
RobotDetectionResult 
DetectRobot (
(( )
)) *
;* +
void 
IsNotARobot 
( 
) 
; 
void 
FlagAsRobot 
( 
) 
; 
} 
public 

class  
RobotDetectionResult %
{ 
public 
bool 
IsRobot 
{ 
get !
;! "
set# &
;& '
}( )
} 
} æ"
§D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\ActionFilters\Detection\IpAddressRobotDetector.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
ActionFilters  -
.- .
	Detection. 7
{ 
public 

class "
IpAddressRobotDetector '
:( )
IDetectRobots* 7
{		 
private

 
const

 
string

 *
IpAddressAbuseDetectorCacheKey

 ;
=

< =
$str

> V
;

V W
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
private 
readonly 
HttpContext $
_httpContext% 1
;1 2
private 
readonly 
ReCaptchaSettings *
	_settings+ 4
;4 5
public "
IpAddressRobotDetector %
(% & 
IHttpContextAccessor& :
httpContextAccessor; N
,N O
IMemoryCacheP \
memoryCache] h
,h i
IOptionsj r
<r s
ReCaptchaSettings	s Ñ
>
Ñ Ö
settingsAccessor
Ü ñ
)
ñ ó
{ 	
_httpContext 
= 
httpContextAccessor .
.. /
HttpContext/ :
;: ;
_memoryCache 
= 
memoryCache &
;& '
	_settings 
= 
settingsAccessor (
.( )
Value) .
;. /
} 	
public 
void 
IsNotARobot 
(  
)  !
{ 	
var 
ipAddressKey 
=  
GetIpAddressCacheKey 3
(3 4
)4 5
;5 6
_memoryCache 
. 
Remove 
(  
ipAddressKey  ,
), -
;- .
} 	
private 
string  
GetIpAddressCacheKey +
(+ ,
), -
{ 	
return 
$" 
{ *
IpAddressAbuseDetectorCacheKey 4
}4 5
:5 6
{6 7
GetIpAddress7 C
(C D
)D E
}E F
"F G
;G H
}   	
private"" 
string"" 
GetIpAddress"" #
(""# $
)""$ %
{## 	
return$$ 
_httpContext$$ 
.$$  

Connection$$  *
.$$* +
RemoteIpAddress$$+ :
.$$: ;
ToString$$; C
($$C D
)$$D E
;$$E F
}%% 	
public''  
RobotDetectionResult'' #
DetectRobot''$ /
(''/ 0
)''0 1
{(( 	
var)) 
ipAddressKey)) 
=))  
GetIpAddressCacheKey)) 3
())3 4
)))4 5
;))5 6
var** 
faultyRequestCount** "
=**# $
_memoryCache**% 1
.**1 2
GetOrCreate**2 =
(**= >
ipAddressKey**> J
,**J K
fact**L P
=>**Q S
$num**T U
)**U V
;**V W
return,, 
new,,  
RobotDetectionResult,, +
(,,+ ,
),,, -
{-- 
IsRobot.. 
=.. 
faultyRequestCount.. ,
>..- .
	_settings../ 8
...8 9
DetectionThreshold..9 K
}// 
;// 
}00 	
public22 
void22 
FlagAsRobot22 
(22  
)22  !
{33 	
var44 
ipAddressKey44 
=44  
GetIpAddressCacheKey44 3
(443 4
)444 5
;445 6
var77 
faultyRequestCount77 "
=77# $
_memoryCache77% 1
.771 2
GetOrCreate772 =
(77= >
ipAddressKey77> J
,77J K
fact77L P
=>77Q S
$num77T U
)77U V
;77V W
faultyRequestCount88 
++88  
;88  !
_memoryCache99 
.99 
Set99 
(99 
ipAddressKey99 )
,99) *
faultyRequestCount99+ =
)99= >
;99> ?
}:: 	
};; 
}<< Õ
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\ActionFilters\ReCaptchaMode.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
ActionFilters  -
{ 
public 

enum 
ReCaptchaMode 
{ 

AlwaysShow 
, 
PreventRobots 
} 
} Ã%
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\ActionFilters\ValidateReCaptchaAttribute.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
ActionFilters  -
{		 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Class

% *
|

+ ,
AttributeTargets

- =
.

= >
Method

> D
,

D E
AllowMultiple

F S
=

T U
false

V [
,

[ \
	Inherited

] f
=

g h
true

i m
)

m n
]

n o
public 

class &
ValidateReCaptchaAttribute +
:, -!
ActionFilterAttribute. C
{ 
private 
readonly 
ReCaptchaMode &
_mode' ,
;, -
public &
ValidateReCaptchaAttribute )
() *
ReCaptchaMode* 7
mode8 <
== >
ReCaptchaMode? L
.L M

AlwaysShowM W
)W X
{ 	
_mode 
= 
mode 
; 
} 	
public 
override 
async 
Task ""
OnResultExecutionAsync# 9
(9 :"
ResultExecutingContext: P
contextQ X
,X Y#
ResultExecutionDelegateZ q
nextr v
)v w
{ 	
var 
recaptchaService  
=! "
context# *
.* +
HttpContext+ 6
.6 7
RequestServices7 F
.F G

GetServiceG Q
<Q R
ReCaptchaServiceR b
>b c
(c d
)d e
;e f
var 
S 
= 
context 
. 
HttpContext '
.' (
RequestServices( 7
.7 8

GetService8 B
<B C
IStringLocalizerC S
<S T
ReCaptchaServiceT d
>d e
>e f
(f g
)g h
;h i
var 
isValidCaptcha 
=  
false! &
;& '
var 
reCaptchaResponse !
=" #
context$ +
.+ ,
HttpContext, 7
.7 8
Request8 ?
?? @
.@ A
FormA E
?E F
[F G
	ConstantsG P
.P Q-
!ReCaptchaServerResponseHeaderNameQ r
]r s
.s t
ToStringt |
(| }
)} ~
;~ 
if 
( 
! 
String 
. 
IsNullOrWhiteSpace *
(* +
reCaptchaResponse+ <
)< =
)= >
isValidCaptcha 
=  
await! &
recaptchaService' 7
.7 8&
VerifyCaptchaResponseAsync8 R
(R S
reCaptchaResponseS d
)d e
;e f
var 
isRobot 
= 
false 
;  
switch   
(   
_mode   
)   
{!! 
case"" 
ReCaptchaMode"" "
.""" #
PreventRobots""# 0
:""0 1
isRobot## 
=## 
recaptchaService## .
.##. /
IsThisARobot##/ ;
(##; <
)##< =
;##= >
break$$ 
;$$ 
case%% 
ReCaptchaMode%% "
.%%" #

AlwaysShow%%# -
:%%- .
isRobot&& 
=&& 
true&& "
;&&" #
break'' 
;'' 
}(( 
if** 
(** 
isRobot** 
&&** 
!** 
isValidCaptcha** *
)*** +
{++ 
context,, 
.,, 

ModelState,, "
.,," #
AddModelError,,# 0
(,,0 1
$str,,1 <
,,,< =
S,,> ?
[,,? @
$str,,@ \
],,\ ]
),,] ^
;,,^ _
}-- 
await// 
next// 
(// 
)// 
;// 
if11 
(11 
context11 
.11 

ModelState11 "
.11" #
IsValid11# *
)11* +
{22 
recaptchaService33  
.33  !
ThisIsAHuman33! -
(33- .
)33. /
;33/ 0
}44 
else55 
{66 
recaptchaService77  
.77  !
MaybeThisIsARobot77! 2
(772 3
)773 4
;774 5
}88 
return:: 
;:: 
};; 	
}<< 
}== „
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\Configuration\ReCaptchaSettings.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Configuration  -
{ 
public 

class 
ReCaptchaSettings "
{ 
public 
string 
SiteKey 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	SecretKey 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
ReCaptchaScriptUri		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
=		7 8
	Constants		9 B
.		B C
ReCaptchaScriptUri		C U
;		U V
public 
string 
ReCaptchaApiUri %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
	Constants6 ?
.? @
ReCaptchaApiUri@ O
;O P
public 
int 
DetectionThreshold %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
$num6 7
;7 8
public 
bool 
IsValid 
( 
) 
{ 	
return 
! 
string 
. 
IsNullOrWhiteSpace -
(- .
SiteKey. 5
)5 6
&&7 9
!: ;
string; A
.A B
IsNullOrWhiteSpaceB T
(T U
	SecretKeyU ^
)^ _
;_ `
} 	
} 
} Ë
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\Configuration\ReCaptchaSettingsConfiguration.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Configuration  -
{ 
public 

class *
ReCaptchaSettingsConfiguration /
:0 1
IConfigureOptions2 C
<C D
ReCaptchaSettingsD U
>U V
{ 
private		 
readonly		 
ISiteService		 %
_site		& +
;		+ ,
public *
ReCaptchaSettingsConfiguration -
(- .
ISiteService. :
site; ?
)? @
{ 	
_site 
= 
site 
; 
} 	
public 
void 
	Configure 
( 
ReCaptchaSettings /
options0 7
)7 8
{ 	
var 
settings 
= 
_site  
.  ! 
GetSiteSettingsAsync! 5
(5 6
)6 7
. 

GetAwaiter 
( 
) 
. 
	GetResult '
(' (
)( )
. 
As 
< 
ReCaptchaSettings %
>% &
(& '
)' (
;( )
options 
. 
SiteKey 
= 
settings &
.& '
SiteKey' .
;. /
options 
. 
	SecretKey 
= 
settings  (
.( )
	SecretKey) 2
;2 3
} 	
} 
} å
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\Constants.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
{ 
public 

static 
class 
	Constants !
{ 
public 
const 
string 
ReCaptchaScriptUri .
=/ 0
$str1 Z
;Z [
public 
const 
string 
ReCaptchaApiUri +
=, -
$str. U
;U V
public		 
const		 
string		 -
!ReCaptchaServerResponseHeaderName		 =
=		> ?
$str		@ V
;		V W
}

 
} ì
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\ServiceCollectionExtensions.cs
	namespace

 	
OrchardCore


 
.

 
	ReCaptcha

 
.

  
Core

  $
{ 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection (
AddReCaptcha) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
,V W
ActionX ^
<^ _
ReCaptchaSettings_ p
>p q
	configurer {
=| }
null	~ Ç
)
Ç É
{ 	
services 
. 
AddHttpClient "
<" #
ReCaptchaClient# 2
>2 3
(3 4
)4 5
. '
AddTransientHttpErrorPolicy ,
(, -
policy- 3
=>4 6
policy7 =
.= >
WaitAndRetryAsync> O
(O P
$numP Q
,Q R
attemptS Z
=>[ ]
TimeSpan^ f
.f g
FromSecondsg r
(r s
$nums v
*w x
attempt	y Ä
)
Ä Å
)
Å Ç
)
Ç É
;
É Ñ
services 
. 
AddTransient !
<! "
IDetectRobots" /
,/ 0"
IpAddressRobotDetector1 G
>G H
(H I
)I J
;J K
services 
. 
AddTransient !
<! "
IConfigureOptions" 3
<3 4
ReCaptchaSettings4 E
>E F
,F G*
ReCaptchaSettingsConfigurationH f
>f g
(g h
)h i
;i j
services 
. 
AddTransient !
<! "
ReCaptchaService" 2
>2 3
(3 4
)4 5
;5 6
services 
. 
AddTagHelpers "
<" #
ReCaptchaTagHelper# 5
>5 6
(6 7
)7 8
;8 9
if 
( 
	configure 
!= 
null !
)! "
{ 
services 
. 
	Configure "
(" #
	configure# ,
), -
;- .
} 
return 
services 
; 
} 	
} 
}   Õ
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\Services\ReCaptchaClient.cs
	namespace

 	
OrchardCore


 
.

 
	ReCaptcha

 
.

  
Services

  (
{ 
public 

class 
ReCaptchaClient  
{ 
private 
readonly 

HttpClient #
_httpClient$ /
;/ 0
private 
readonly 
ILogger  
_logger! (
;( )
public 
ReCaptchaClient 
( 

HttpClient )

httpClient* 4
,4 5
IOptions6 >
<> ?
ReCaptchaSettings? P
>P Q
optionsAccessorR a
,a b
ILoggerc j
<j k
ReCaptchaClientk z
>z {
logger	| Ç
)
Ç É
{ 	
var 
options 
= 
optionsAccessor )
.) *
Value* /
;/ 0
_httpClient 
= 

httpClient $
;$ %
_httpClient 
. 
BaseAddress #
=$ %
new& )
Uri* -
(- .
options. 5
.5 6
ReCaptchaApiUri6 E
)E F
;F G
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
bool 
> 
VerifyAsync  +
(+ ,
string, 2
responseToken3 @
,@ A
stringB H
	secretKeyI R
)R S
{   	
if!! 
(!! 
string!! 
.!! 
IsNullOrWhiteSpace!! )
(!!) *
responseToken!!* 7
)!!7 8
)!!8 9
{"" 
return## 
false## 
;## 
}$$ 
var&& 
content&& 
=&& 
new&& !
FormUrlEncodedContent&& 3
(&&3 4
new&&4 7

Dictionary&&8 B
<&&B C
string&&C I
,&&I J
string&&K Q
>&&Q R
{'' 
{(( 
$str(( 
,(( 
	secretKey(( %
}((& '
,((' (
{)) 
$str)) 
,)) 
responseToken)) +
})), -
}** 
)** 
;** 
try++ 
{,, 
var-- 
response-- 
=-- 
await-- $
_httpClient--% 0
.--0 1
	PostAsync--1 :
(--: ;
$str--; G
,--G H
content--I P
)--P Q
;--Q R
response.. 
... #
EnsureSuccessStatusCode.. 0
(..0 1
)..1 2
;..2 3
var// 
responseJson//  
=//! "
await//# (
response//) 1
.//1 2
Content//2 9
.//9 :
ReadAsStringAsync//: K
(//K L
)//L M
;//M N
var00 
responseModel00 !
=00" #
JObject00$ +
.00+ ,
Parse00, 1
(001 2
responseJson002 >
)00> ?
;00? @
return22 
responseModel22 $
[22$ %
$str22% .
]22. /
.22/ 0
Value220 5
<225 6
bool226 :
>22: ;
(22; <
)22< =
;22= >
}33 
catch44 
(44  
HttpRequestException44 '
e44( )
)44) *
{55 
_logger66 
.66 
LogError66  
(66  !
e66! "
,66" #
$str66$ P
)66P Q
;66Q R
}77 
return99 
false99 
;99 
}:: 	
};; 
}<< Ù.
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\Services\ReCaptchaService.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Services  (
{ 
public 

class 
ReCaptchaService !
{ 
private 
readonly 
ReCaptchaClient (
_reCaptchaClient) 9
;9 :
private 
readonly 
ReCaptchaSettings *
	_settings+ 4
;4 5
private 
readonly 
IEnumerable $
<$ %
IDetectRobots% 2
>2 3
_robotDetectors4 C
;C D
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ReCaptchaService 
(  
ReCaptchaClient  /
reCaptchaClient0 ?
,? @
IOptionsA I
<I J
ReCaptchaSettingsJ [
>[ \
optionsAccessor] l
,l m
IEnumerablen y
<y z
IDetectRobots	z á
>
á à
robotDetectors
â ó
,
ó ò"
IHttpContextAccessor
ô ≠!
httpContextAccessor
Æ ¡
,
¡ ¬
ILogger
√  
<
  À
ReCaptchaService
À €
>
€ ‹
logger
› „
,
„ ‰
IStringLocalizer
Â ı
<
ı ˆ
ReCaptchaService
ˆ Ü
>
Ü á
stringLocalizer
à ó
)
ó ò
{ 	
_reCaptchaClient 
= 
reCaptchaClient .
;. /
	_settings 
= 
optionsAccessor '
.' (
Value( -
;- .
_robotDetectors 
= 
robotDetectors ,
;, - 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
_logger 
= 
logger 
; 
S 
= 
stringLocalizer 
;  
}   	
public%% 
void%% 
MaybeThisIsARobot%% %
(%%% &
)%%& '
{&& 	
_robotDetectors'' 
.'' 
Invoke'' "
(''" #
i''# $
=>''% '
i''( )
.'') *
FlagAsRobot''* 5
(''5 6
)''6 7
,''7 8
_logger''9 @
)''@ A
;''A B
}(( 	
public.. 
bool.. 
IsThisARobot..  
(..  !
)..! "
{// 	
var00 
result00 
=00 
_robotDetectors00 (
.00( )
Invoke00) /
(00/ 0
i000 1
=>002 4
i005 6
.006 7
DetectRobot007 B
(00B C
)00C D
,00D E
_logger00F M
)00M N
;00N O
return11 
result11 
.11 
Any11 
(11 
a11 
=>11  "
a11# $
.11$ %
IsRobot11% ,
)11, -
;11- .
}22 	
public88 
void88 
ThisIsAHuman88  
(88  !
)88! "
{99 	
_robotDetectors:: 
.:: 
Invoke:: "
(::" #
i::# $
=>::% '
i::( )
.::) *
IsNotARobot::* 5
(::5 6
)::6 7
,::7 8
_logger::9 @
)::@ A
;::A B
};; 	
publicBB 
asyncBB 
TaskBB 
<BB 
boolBB 
>BB &
VerifyCaptchaResponseAsyncBB  :
(BB: ;
stringBB; A
reCaptchaResponseBBB S
)BBS T
{CC 	
returnDD 
!DD 
StringDD 
.DD 
IsNullOrWhiteSpaceDD -
(DD- .
reCaptchaResponseDD. ?
)DD? @
&&DDA C
awaitDDD I
_reCaptchaClientDDJ Z
.DDZ [
VerifyAsyncDD[ f
(DDf g
reCaptchaResponseDDg x
,DDx y
	_settings	DDz É
.
DDÉ Ñ
	SecretKey
DDÑ ç
)
DDç é
;
DDé è
}EE 	
publicKK 
asyncKK 
TaskKK 
<KK 
boolKK 
>KK  
ValidateCaptchaAsyncKK  4
(KK4 5
ActionKK5 ;
<KK; <
stringKK< B
,KKB C
stringKKD J
>KKJ K
reportErrorKKL W
)KKW X
{LL 	
varMM 
reCaptchaResponseMM !
=MM" # 
_httpContextAccessorMM$ 8
.MM8 9
HttpContextMM9 D
?MMD E
.MME F
RequestMMF M
?MMM N
.MMN O
FormMMO S
?MMS T
[MMT U
	ConstantsMMU ^
.MM^ _.
!ReCaptchaServerResponseHeaderName	MM_ Ä
]
MMÄ Å
.
MMÅ Ç
ToString
MMÇ ä
(
MMä ã
)
MMã å
;
MMå ç
varOO 
isValidOO 
=OO 
!OO 
StringOO !
.OO! "
IsNullOrEmptyOO" /
(OO/ 0
reCaptchaResponseOO0 A
)OOA B
&&OOC E
awaitOOF K&
VerifyCaptchaResponseAsyncOOL f
(OOf g
reCaptchaResponseOOg x
)OOx y
;OOy z
ifQQ 
(QQ 
!QQ 
isValidQQ 
)QQ 
{RR 
reportErrorSS 
(SS 
$strSS '
,SS' (
SSS) *
[SS* +
$strSS+ G
]SSG H
)SSH I
;SSI J
}TT 
returnVV 
isValidVV 
;VV 
}WW 	
}XX 
}YY ≤D
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore\OrchardCore.ReCaptcha.Core\TagHelpers\ReCaptchaTagHelper.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  

TagHelpers  *
{ 
[ 
HtmlTargetElement 
( 
$str  
,  !
TagStructure" .
=/ 0
TagStructure1 =
.= >
WithoutEndTag> K
)K L
]L M
[ 
HtmlTargetElement 
( 
$str  
,  !

Attributes" ,
=- .
$str/ >
,> ?
TagStructure@ L
=M N
TagStructureO [
.[ \
WithoutEndTag\ i
)i j
]j k
public 

class 
ReCaptchaTagHelper #
:$ %
	TagHelper& /
{ 
private 
readonly 
IResourceManager )
_resourceManager* :
;: ;
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 
ReCaptchaSettings *
	_settings+ 4
;4 5
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly  
ILocalizationService - 
_localizationService. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
ReCaptchaTagHelper !
(! "
IOptions" *
<* +
ReCaptchaSettings+ <
>< =
optionsAccessor> M
,M N
IResourceManagerO _
resourceManager` o
,o p!
ILocalizationService	q Ö!
localizationService
Ü ô
,
ô ö"
IHttpContextAccessor
õ Ø!
httpContextAccessor
∞ √
,
√ ƒ
ILogger
≈ Ã
<
Ã Õ 
ReCaptchaTagHelper
Õ ﬂ
>
ﬂ ‡
logger
· Á
,
Á Ë
IStringLocalizer
È ˘
<
˘ ˙ 
ReCaptchaTagHelper
˙ å
>
å ç
	localizer
é ó
)
ó ò
{   	
_resourceManager!! 
=!! 
resourceManager!! .
;!!. / 
_httpContextAccessor""  
=""! "
httpContextAccessor""# 6
;""6 7
	_settings## 
=## 
optionsAccessor## '
.##' (
Value##( -
;##- .
Mode$$ 
=$$ 
ReCaptchaMode$$  
.$$  !
PreventRobots$$! .
;$$. /
_logger%% 
=%% 
logger%% 
;%%  
_localizationService&&  
=&&! "
localizationService&&# 6
;&&6 7
S'' 
='' 
	localizer'' 
;'' 
}(( 	
[** 	
HtmlAttributeName**	 
(** 
$str** !
)**! "
]**" #
public++ 
ReCaptchaMode++ 
Mode++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
[11 	
HtmlAttributeName11	 
(11 
$str11 %
)11% &
]11& '
public22 
string22 
Language22 
{22  
get22! $
;22$ %
set22& )
;22) *
}22+ ,
public44 
override44 
async44 
Task44 "
ProcessAsync44# /
(44/ 0
TagHelperContext440 @
context44A H
,44H I
TagHelperOutput44J Y
output44Z `
)44` a
{55 	
var66 
robotDetectors66 
=66   
_httpContextAccessor66! 5
.665 6
HttpContext666 A
.66A B
RequestServices66B Q
.66Q R
GetServices66R ]
<66] ^
IDetectRobots66^ k
>66k l
(66l m
)66m n
;66n o
var77 
robotDetected77 
=77 
robotDetectors77  .
.77. /
Invoke77/ 5
(775 6
d776 7
=>778 :
d77; <
.77< =
DetectRobot77= H
(77H I
)77I J
,77J K
_logger77L S
)77S T
.77T U
Any77U X
(77X Y
d77Y Z
=>77[ ]
d77^ _
.77_ `
IsRobot77` g
)77g h
&&77i k
Mode77l p
==77q s
ReCaptchaMode	77t Å
.
77Å Ç
PreventRobots
77Ç è
;
77è ê
var88 

alwaysShow88 
=88 
Mode88 !
==88" $
ReCaptchaMode88% 2
.882 3

AlwaysShow883 =
;88= >
var99 
isConfigured99 
=99 
	_settings99 (
!=99) +
null99, 0
;990 1
if;; 
(;; 
isConfigured;; 
&&;; 
(;;  !
robotDetected;;! .
||;;/ 1

alwaysShow;;2 <
);;< =
);;= >
{<< 
await== 
ShowCaptcha== !
(==! "
output==" (
)==( )
;==) *
}>> 
else?? 
{@@ 
outputAA 
.AA 
SuppressOutputAA %
(AA% &
)AA& '
;AA' (
}BB 
}CC 	
privateEE 
asyncEE 
TaskEE 
ShowCaptchaEE &
(EE& '
TagHelperOutputEE' 6
outputEE7 =
)EE= >
{FF 	
outputGG 
.GG 
TagNameGG 
=GG 
$strGG "
;GG" #
outputHH 
.HH 

AttributesHH 
.HH 
SetAttributeHH *
(HH* +
$strHH+ 2
,HH2 3
$strHH4 A
)HHA B
;HHB C
outputII 
.II 

AttributesII 
.II 
SetAttributeII *
(II* +
$strII+ 9
,II9 :
	_settingsII; D
.IID E
SiteKeyIIE L
)IIL M
;IIM N
outputJJ 
.JJ 
TagModeJJ 
=JJ 
TagModeJJ $
.JJ$ %
StartTagAndEndTagJJ% 6
;JJ6 7
varLL 
builderLL 
=LL 
newLL 

TagBuilderLL (
(LL( )
$strLL) 1
)LL1 2
;LL2 3
varMM 
cultureInfoMM 
=MM 
awaitMM #
GetCultureAsyncMM$ 3
(MM3 4
)MM4 5
;MM5 6
varOO 
settingsUrlOO 
=OO 
$"OO  
{OO  !
	_settingsOO! *
.OO* +
ReCaptchaScriptUriOO+ =
}OO= >
?hl=OO> B
{OOB C
cultureInfoOOC N
.OON O$
TwoLetterISOLanguageNameOOO g
}OOg h
"OOh i
;OOi j
builderQQ 
.QQ 

AttributesQQ 
.QQ 
AddQQ "
(QQ" #
$strQQ# (
,QQ( )
settingsUrlQQ* 5
)QQ5 6
;QQ6 7
_resourceManagerRR 
.RR 
RegisterFootScriptRR /
(RR/ 0
builderRR0 7
)RR7 8
;RR8 9
}SS 	
privateUU 
asyncUU 
TaskUU 
<UU 
CultureInfoUU &
>UU& '
GetCultureAsyncUU( 7
(UU7 8
)UU8 9
{VV 	
varWW 
languageWW 
=WW 
LanguageWW #
;WW# $
CultureInfoXX 
cultureXX 
=XX  !
nullXX" &
;XX& '
ifZZ 
(ZZ 
stringZZ 
.ZZ 
IsNullOrWhiteSpaceZZ )
(ZZ) *
languageZZ* 2
)ZZ2 3
)ZZ3 4
language[[ 
=[[ 
await[[   
_localizationService[[! 5
.[[5 6"
GetDefaultCultureAsync[[6 L
([[L M
)[[M N
;[[N O
try]] 
{^^ 
culture__ 
=__ 
CultureInfo__ %
.__% &
GetCultureInfo__& 4
(__4 5
language__5 =
)__= >
;__> ?
}`` 
catchaa 
(aa $
CultureNotFoundExceptionaa +
)aa+ ,
{bb 
_loggercc 
.cc 

LogWarningcc "
(cc" #
Scc# $
[cc$ %
$strcc% G
,ccG H
languageccI Q
]ccQ R
)ccR S
;ccS T
}dd 
returnff 
cultureff 
;ff 
}gg 	
}hh 
}ii 