ñ2
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{		 
public

 

class

 
	AdminMenu

 
:

 
INavigationProvider

 0
{ 
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer 
< 
	AdminMenu &
>& '
	localizer( 1
,1 2
ShellDescriptor 
shellDescriptor +
)+ ,
{ 	
S 
= 
	localizer 
; 
_shellDescriptor 
= 
shellDescriptor .
;. /
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
String 
. 
Equals 
( 
name "
," #
$str$ +
,+ ,
StringComparison- =
.= >
OrdinalIgnoreCase> O
)O P
)P Q
{ 
builder 
. 
Add 
( 
S 
[ 
$str -
]- .
,. /
configuration0 =
=>> @
configurationA N
. 
Add 
( 
S 
[ 
$str )
]) *
,* +
settings, 4
=>5 7
settings8 @
. 
Add  
(  !
S! "
[" #
$str# 1
]1 2
,2 3
S4 5
[5 6
$str6 D
]D E
.E F
PrefixPositionF T
(T U
)U V
,V W
settingsX `
=>a c
settingsd l
. 
AddClass %
(% &
$str& 3
)3 4
.4 5
Id5 7
(7 8
$str8 E
)E F
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC Y
,Y Z
groupId[ b
=c d
FacebookConstantse v
.v w
Featuresw 
.	 Ä
Core
Ä Ñ
}
Ö Ü
)
Ü á
.   

Permission   '
(  ' (
Permissions  ( 3
.  3 4
ManageFacebookApp  4 E
)  E F
.!! 
LocalNav!! %
(!!% &
)!!& '
)!!' (
)"" 
)## 
;## 
}$$ 
return%% 
Task%% 
.%% 
CompletedTask%% %
;%%% &
}&& 	
}'' 
[)) 
Feature)) 
()) 
FacebookConstants)) 
.)) 
Features)) '
.))' (
Login))( -
)))- .
])). /
public** 

class** 
AdminMenuLogin** 
:**  !
INavigationProvider**" 5
{++ 
private,, 
readonly,, 
ShellDescriptor,, (
_shellDescriptor,,) 9
;,,9 :
private-- 
readonly-- 
IStringLocalizer-- )
S--* +
;--+ ,
public// 
AdminMenuLogin// 
(// 
IStringLocalizer00 
<00 
AdminMenuLogin00 +
>00+ ,
	localizer00- 6
,006 7
ShellDescriptor11 
shellDescriptor11 +
)11+ ,
{22 	
S33 
=33 
	localizer33 
;33 
_shellDescriptor44 
=44 
shellDescriptor44 .
;44. /
}55 	
public77 
Task77  
BuildNavigationAsync77 (
(77( )
string77) /
name770 4
,774 5
NavigationBuilder776 G
builder77H O
)77O P
{88 	
if99 
(99 
String99 
.99 
Equals99 
(99 
name99 "
,99" #
$str99$ +
,99+ ,
StringComparison99- =
.99= >
OrdinalIgnoreCase99> O
)99O P
)99P Q
{:: 
builder;; 
.;; 
Add;; 
(;; 
S;; 
[;; 
$str;; (
];;( )
,;;) *
security;;+ 3
=>;;4 6
security;;7 ?
.<< 
Add<< 
(<< 
S<< 
[<< 
$str<< /
]<</ 0
,<<0 1
authentication<<2 @
=><<A C
authentication<<D R
.== 
Add== 
(== 
S== 
[== 
$str== )
]==) *
,==* +
S==, -
[==- .
$str==. 8
]==8 9
.==9 :
PrefixPosition==: H
(==H I
)==I J
,==J K
settings==L T
=>==U W
settings==X `
.>> 
AddClass>> !
(>>! "
$str>>" ,
)>>, -
.>>- .
Id>>. 0
(>>0 1
$str>>1 ;
)>>; <
.?? 
Action?? #
(??# $
$str??$ +
,??+ ,
$str??- 4
,??4 5
new??6 9
{??: ;
area??< @
=??A B
$str??C Y
,??Y Z
groupId??[ b
=??c d
FacebookConstants??e v
.??v w
Features??w 
.	?? Ä
Login
??Ä Ö
}
??Ü á
)
??á à
.@@ 

Permission@@ '
(@@' (
Permissions@@( 3
.@@3 4
ManageFacebookApp@@4 E
)@@E F
.AA 
LocalNavAA %
(AA% &
)AA& '
)AA' (
)BB 
)BB 
;BB 
}CC 
returnEE 
TaskEE 
.EE 
CompletedTaskEE %
;EE% &
}FF 	
}GG 
}HH ©J
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Drivers\FacebookSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Drivers &
{ 
public 

class )
FacebookSettingsDisplayDriver .
:/ 0 
SectionDisplayDriver1 E
<E F
ISiteF K
,K L
FacebookSettingsM ]
>] ^
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
public )
FacebookSettingsDisplayDriver ,
(, -!
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
<   )
FacebookSettingsDisplayDriver   1
>  1 2
logger  3 9
)!! 
{"" 	!
_authorizationService## !
=##" # 
authorizationService##$ 8
;##8 9#
_dataProtectionProvider$$ #
=$$$ %"
dataProtectionProvider$$& <
;$$< = 
_httpContextAccessor%%  
=%%! "
httpContextAccessor%%# 6
;%%6 7

_shellHost&& 
=&& 
	shellHost&& "
;&&" #
_shellSettings'' 
='' 
shellSettings'' *
;''* +
_logger(( 
=(( 
logger(( 
;(( 
})) 	
public++ 
override++ 
async++ 
Task++ "
<++" #
IDisplayResult++# 1
>++1 2
	EditAsync++3 <
(++< =
FacebookSettings++= M
settings++N V
,++V W
BuildEditorContext++X j
context++k r
)++r s
{,, 	
var-- 
user-- 
=--  
_httpContextAccessor-- +
.--+ ,
HttpContext--, 7
?--7 8
.--8 9
User--9 =
;--= >
if.. 
(.. 
user.. 
==.. 
null.. 
||.. 
!..  !
await..! &!
_authorizationService..' <
...< =
AuthorizeAsync..= K
(..K L
user..L P
,..P Q
Permissions..R ]
...] ^
ManageFacebookApp..^ o
)..o p
)..p q
{// 
return00 
null00 
;00 
}11 
return33 

Initialize33 
<33 %
FacebookSettingsViewModel33 7
>337 8
(338 9
$str339 P
,33P Q
model33R W
=>33X Z
{44 
var55 
	protector55 
=55 #
_dataProtectionProvider55  7
.557 8
CreateProtector558 G
(55G H
FacebookConstants55H Y
.55Y Z
Features55Z b
.55b c
Core55c g
)55g h
;55h i
model77 
.77 
AppId77 
=77 
settings77 &
.77& '
AppId77' ,
;77, -
model88 
.88 
FBInit88 
=88 
settings88 '
.88' (
FBInit88( .
;88. /
model99 
.99 
FBInitParams99 "
=99# $
settings99% -
.99- .
FBInitParams99. :
;99: ;
model:: 
.:: 
Version:: 
=:: 
settings::  (
.::( )
Version::) 0
;::0 1
model;; 
.;; 
SdkJs;; 
=;; 
settings;; &
.;;& '
SdkJs;;' ,
;;;, -
if<< 
(<< 
!<< 
string<< 
.<< 
IsNullOrWhiteSpace<< .
(<<. /
settings<</ 7
.<<7 8
	AppSecret<<8 A
)<<A B
)<<B C
{== 
try>> 
{?? 
model@@ 
.@@ 
	AppSecret@@ '
=@@( )
	protector@@* 3
.@@3 4
	Unprotect@@4 =
(@@= >
settings@@> F
.@@F G
	AppSecret@@G P
)@@P Q
;@@Q R
}AA 
catchBB 
(BB "
CryptographicExceptionBB 1
)BB1 2
{CC 
_loggerDD 
.DD  
LogErrorDD  (
(DD( )
$str	DD) É
)
DDÉ Ñ
;
DDÑ Ö
modelEE 
.EE 
	AppSecretEE '
=EE( )
stringEE* 0
.EE0 1
EmptyEE1 6
;EE6 7
modelFF 
.FF 
HasDecryptionErrorFF 0
=FF1 2
trueFF3 7
;FF7 8
}GG 
}HH 
}II 
)II 
.II 
LocationII 
(II 
$strII #
)II# $
.II$ %
OnGroupII% ,
(II, -
FacebookConstantsII- >
.II> ?
FeaturesII? G
.IIG H
CoreIIH L
)IIL M
;IIM N
}JJ 	
publicLL 
overrideLL 
asyncLL 
TaskLL "
<LL" #
IDisplayResultLL# 1
>LL1 2
UpdateAsyncLL3 >
(LL> ?
FacebookSettingsLL? O
settingsLLP X
,LLX Y
BuildEditorContextLLZ l
contextLLm t
)LLt u
{MM 	
ifNN 
(NN 
contextNN 
.NN 
GroupIdNN 
==NN  "
FacebookConstantsNN# 4
.NN4 5
FeaturesNN5 =
.NN= >
CoreNN> B
)NNB C
{OO 
varPP 
userPP 
=PP  
_httpContextAccessorPP /
.PP/ 0
HttpContextPP0 ;
?PP; <
.PP< =
UserPP= A
;PPA B
ifRR 
(RR 
userRR 
==RR 
nullRR  
||RR! #
!RR$ %
awaitRR% *!
_authorizationServiceRR+ @
.RR@ A
AuthorizeAsyncRRA O
(RRO P
userRRP T
,RRT U
PermissionsRRV a
.RRa b
ManageFacebookAppRRb s
)RRs t
)RRt u
{SS 
returnTT 
nullTT 
;TT  
}UU 
varWW 
modelWW 
=WW 
newWW %
FacebookSettingsViewModelWW  9
(WW9 :
)WW: ;
;WW; <
awaitXX 
contextXX 
.XX 
UpdaterXX %
.XX% &
TryUpdateModelAsyncXX& 9
(XX9 :
modelXX: ?
,XX? @
PrefixXXA G
)XXG H
;XXH I
ifZZ 
(ZZ 
contextZZ 
.ZZ 
UpdaterZZ #
.ZZ# $

ModelStateZZ$ .
.ZZ. /
IsValidZZ/ 6
)ZZ6 7
{[[ 
var\\ 
	protector\\ !
=\\" ##
_dataProtectionProvider\\$ ;
.\\; <
CreateProtector\\< K
(\\K L
FacebookConstants\\L ]
.\\] ^
Features\\^ f
.\\f g
Core\\g k
)\\k l
;\\l m
settings]] 
.]] 
AppId]] "
=]]# $
model]]% *
.]]* +
AppId]]+ 0
;]]0 1
settings^^ 
.^^ 
	AppSecret^^ &
=^^' (
	protector^^) 2
.^^2 3
Protect^^3 :
(^^: ;
model^^; @
.^^@ A
	AppSecret^^A J
)^^J K
;^^K L
settings__ 
.__ 
FBInit__ #
=__$ %
model__& +
.__+ ,
FBInit__, 2
;__2 3
settings`` 
.`` 
SdkJs`` "
=``# $
model``% *
.``* +
SdkJs``+ 0
;``0 1
ifaa 
(aa 
!aa 
stringaa 
.aa  
IsNullOrWhiteSpaceaa  2
(aa2 3
modelaa3 8
.aa8 9
FBInitParamsaa9 E
)aaE F
)aaF G
settingsbb  
.bb  !
FBInitParamsbb! -
=bb. /
modelbb0 5
.bb5 6
FBInitParamsbb6 B
;bbB C
settingscc 
.cc 
Versioncc $
=cc% &
modelcc' ,
.cc, -
Versioncc- 4
;cc4 5
awaitee 

_shellHostee $
.ee$ %$
ReleaseShellContextAsyncee% =
(ee= >
_shellSettingsee> L
)eeL M
;eeM N
}ff 
}gg 
returnii 
awaitii 
	EditAsyncii "
(ii" #
settingsii# +
,ii+ ,
contextii- 4
)ii4 5
;ii5 6
}jj 	
}kk 
}ll €
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\FacebookConstants.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{ 
public 

static 
class 
FacebookConstants )
{ 
public 
static 
class 
Features $
{ 	
public 
const 
string 
Widgets  '
=( )
$str* H
;H I
public 
const 
string 
Login  %
=& '
$str( D
;D E
public		 
const		 
string		 
Core		  $
=		% &
$str		' =
;		= >
}

 	
} 
} ·
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Filters\FBInitFilter.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Filters &
{ 
public 

class 
FBInitFilter 
: 
IAsyncResultFilter  2
{ 
private 
readonly 
IResourceManager )
_resourceManager* :
;: ;
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
FBInitFilter 
( 
IResourceManager 
resourceManager ,
,, -
ISiteService 
siteService $
)$ %
{ 	
_resourceManager 
= 
resourceManager .
;. /
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task "
OnResultExecutionAsync 0
(0 1"
ResultExecutingContext1 G
contextH O
,O P#
ResultExecutionDelegateQ h
nexti m
)m n
{ 	
if 
( 
( 
context 
. 
Result 
is  "

ViewResult# -
||. 0
context1 8
.8 9
Result9 ?
is@ B

PageResultC M
)M N
&&O Q
! 
AdminAttribute 
.  
	IsApplied  )
() *
context* 1
.1 2
HttpContext2 =
)= >
)> ?
{ 
var   
site   
=   
(   
await   !
_siteService  " .
.  . / 
GetSiteSettingsAsync  / C
(  C D
)  D E
)  E F
;  F G
var!! 
settings!! 
=!! 
site!! #
.!!# $
As!!$ &
<!!& '
FacebookSettings!!' 7
>!!7 8
(!!8 9
)!!9 :
;!!: ;
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrWhiteSpace"" .
("". /
settings""/ 7
?""7 8
.""8 9
AppId""9 >
)""> ?
)""? @
{## 
if$$ 
($$ 
settings$$  
.$$  !
FBInit$$! '
)$$' (
{%% 
var&& 
setting&& #
=&&$ %
_resourceManager&&& 6
.&&6 7
RegisterResource&&7 G
(&&G H
$str&&H P
,&&P Q
$str&&R V
)&&V W
;&&W X
setting'' 
.''  

AtLocation''  *
(''* +
ResourceLocation''+ ;
.''; <
Foot''< @
)''@ A
;''A B
}(( 
})) 
}** 
await++ 
next++ 
.++ 
Invoke++ 
(++ 
)++ 
;++  
},, 	
}-- 
}.. ÆJ
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\Configuration\FacebookLoginConfiguration.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %
Configuration% 2
{ 
[ 
Feature 
( 
FacebookConstants 
. 
Features '
.' (
Login( -
)- .
]. /
public 

class &
FacebookLoginConfiguration +
:, -
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
< 
FacebookOptions .
>. /
{ 
private 
readonly 
IFacebookService )
_coreService* 6
;6 7
private 
readonly !
IFacebookLoginService .
_loginService/ <
;< =
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public   &
FacebookLoginConfiguration   )
(  ) *
IFacebookService!! 
coreService!! (
,!!( )!
IFacebookLoginService"" !
loginService""" .
,"". /#
IDataProtectionProvider## #"
dataProtectionProvider##$ :
,##: ;
ShellSettings$$ 
shellSettings$$ '
,$$' (
ILogger%% 
<%% &
FacebookLoginConfiguration%% .
>%%. /
logger%%0 6
)%%6 7
{&& 	
_coreService'' 
='' 
coreService'' &
;''& '
_loginService(( 
=(( 
loginService(( (
;((( )#
_dataProtectionProvider)) #
=))$ %"
dataProtectionProvider))& <
;))< =
_shellSettings** 
=** 
shellSettings** *
;*** +
_logger++ 
=++ 
logger++ 
;++ 
},, 	
public.. 
void.. 
	Configure.. 
(.. !
AuthenticationOptions.. 3
options..4 ;
)..; <
{// 	
var00 
coreSettings00 
=00 (
GetFacebookCoreSettingsAsync00 ;
(00; <
)00< =
.00= >

GetAwaiter00> H
(00H I
)00I J
.00J K
	GetResult00K T
(00T U
)00U V
;00V W
if11 
(11 
coreSettings11 
==11 
null11  $
)11$ %
{22 
return33 
;33 
}44 
var66 
loginSettings66 
=66 )
GetFacebookLoginSettingsAsync66  =
(66= >
)66> ?
.66? @

GetAwaiter66@ J
(66J K
)66K L
.66L M
	GetResult66M V
(66V W
)66W X
;66X Y
if77 
(77 
loginSettings77 
==77  
null77! %
)77% &
{88 
return99 
;99 
}:: 
options== 
.== 
	AddScheme== 
(== 
FacebookDefaults== .
.==. / 
AuthenticationScheme==/ C
,==C D
builder==E L
=>==M O
{>> 
builder?? 
.?? 
DisplayName?? #
=??$ %
$str??& 0
;??0 1
builder@@ 
.@@ 
HandlerType@@ #
=@@$ %
typeof@@& ,
(@@, -
FacebookHandler@@- <
)@@< =
;@@= >
}AA 
)AA 
;AA 
}BB 	
publicDD 
voidDD 
	ConfigureDD 
(DD 
stringDD $
nameDD% )
,DD) *
FacebookOptionsDD+ :
optionsDD; B
)DDB C
{EE 	
ifGG 
(GG 
!GG 
StringGG 
.GG 
EqualsGG 
(GG 
nameGG #
,GG# $
FacebookDefaultsGG% 5
.GG5 6 
AuthenticationSchemeGG6 J
)GGJ K
)GGK L
{HH 
returnII 
;II 
}JJ 
varLL 
coreSettingsLL 
=LL (
GetFacebookCoreSettingsAsyncLL ;
(LL; <
)LL< =
.LL= >

GetAwaiterLL> H
(LLH I
)LLI J
.LLJ K
	GetResultLLK T
(LLT U
)LLU V
;LLV W
ifMM 
(MM 
coreSettingsMM 
==MM 
nullMM  $
)MM$ %
{NN 
returnOO 
;OO 
}PP 
varRR 
loginSettingsRR 
=RR )
GetFacebookLoginSettingsAsyncRR  =
(RR= >
)RR> ?
.RR? @

GetAwaiterRR@ J
(RRJ K
)RRK L
.RRL M
	GetResultRRM V
(RRV W
)RRW X
;RRX Y
ifSS 
(SS 
loginSettingsSS 
==SS  
nullSS! %
)SS% &
{TT 
returnUU 
;UU 
}VV 
optionsXX 
.XX 
AppIdXX 
=XX 
coreSettingsXX (
.XX( )
AppIdXX) .
;XX. /
tryZZ 
{[[ 
options\\ 
.\\ 
	AppSecret\\ !
=\\" ##
_dataProtectionProvider\\$ ;
.\\; <
CreateProtector\\< K
(\\K L
FacebookConstants\\L ]
.\\] ^
Features\\^ f
.\\f g
Core\\g k
)\\k l
.\\l m
	Unprotect\\m v
(\\v w
coreSettings	\\w É
.
\\É Ñ
	AppSecret
\\Ñ ç
)
\\ç é
;
\\é è
}]] 
catch^^ 
{__ 
_logger`` 
.`` 
LogError``  
(``  !
$str	``! Ñ
)
``Ñ Ö
;
``Ö Ü
}aa 
ifcc 
(cc 
loginSettingscc 
.cc 
CallbackPathcc *
.cc* +
HasValuecc+ 3
)cc3 4
{dd 
optionsee 
.ee 
CallbackPathee $
=ee% &
loginSettingsee' 4
.ee4 5
CallbackPathee5 A
;eeA B
}ff 
optionshh 
.hh 

SaveTokenshh 
=hh  
loginSettingshh! .
.hh. /

SaveTokenshh/ 9
;hh9 :
}ii 	
publickk 
voidkk 
	Configurekk 
(kk 
FacebookOptionskk -
optionskk. 5
)kk5 6
=>kk7 9
Debugkk: ?
.kk? @
Failkk@ D
(kkD E
$strkkE v
)kkv w
;kkw x
privatemm 
asyncmm 
Taskmm 
<mm !
FacebookLoginSettingsmm 0
>mm0 1)
GetFacebookLoginSettingsAsyncmm2 O
(mmO P
)mmP Q
{nn 	
varoo 
settingsoo 
=oo 
awaitoo  
_loginServiceoo! .
.oo. /
GetSettingsAsyncoo/ ?
(oo? @
)oo@ A
;ooA B
ifpp 
(pp 
(pp 
awaitpp 
_loginServicepp $
.pp$ %!
ValidateSettingsAsyncpp% :
(pp: ;
settingspp; C
)ppC D
)ppD E
.ppE F
AnyppF I
(ppI J
resultppJ P
=>ppQ S
resultppT Z
!=pp[ ]
ValidationResultpp^ n
.ppn o
Successppo v
)ppv w
)ppw x
{qq 
_loggerrr 
.rr 

LogWarningrr "
(rr" #
$strrr# [
)rr[ \
;rr\ ]
returntt 
nulltt 
;tt 
}uu 
returnww 
settingsww 
;ww 
}xx 	
privatezz 
asynczz 
Taskzz 
<zz 
FacebookSettingszz +
>zz+ ,(
GetFacebookCoreSettingsAsynczz- I
(zzI J
)zzJ K
{{{ 	
var|| 
settings|| 
=|| 
await||  
_coreService||! -
.||- .
GetSettingsAsync||. >
(||> ?
)||? @
;||@ A
if}} 
(}} 
(}} 
await}} 
_coreService}} #
.}}# $!
ValidateSettingsAsync}}$ 9
(}}9 :
settings}}: B
)}}B C
)}}C D
.}}D E
Any}}E H
(}}H I
result}}I O
=>}}P R
result}}S Y
!=}}Z \
ValidationResult}}] m
.}}m n
Success}}n u
)}}u v
)}}v w
{~~ 
if 
( 
_shellSettings "
." #
State# (
==) +
TenantState, 7
.7 8
Running8 ?
)? @
{
ÄÄ 
_logger
ÅÅ 
.
ÅÅ 

LogWarning
ÅÅ &
(
ÅÅ& '
$str
ÅÅ' ^
)
ÅÅ^ _
;
ÅÅ_ `
}
ÇÇ 
return
ÑÑ 
null
ÑÑ 
;
ÑÑ 
}
ÖÖ 
return
áá 
settings
áá 
;
áá 
}
àà 	
}
ââ 
}ää ı/
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\Drivers\FacebookLoginSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %
Drivers% ,
{ 
public 

class .
"FacebookLoginSettingsDisplayDriver 3
:4 5 
SectionDisplayDriver6 J
<J K
ISiteK P
,P Q!
FacebookLoginSettingsR g
>g h
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public .
"FacebookLoginSettingsDisplayDriver 1
(1 2!
IAuthorizationService ! 
authorizationService" 6
,6 7 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
)' (
{ 	!
_authorizationService !
=" # 
authorizationService$ 8
;8 9 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7

_shellHost 
= 
	shellHost "
;" #
_shellSettings 
= 
shellSettings *
;* +
} 	
public!! 
override!! 
async!! 
Task!! "
<!!" #
IDisplayResult!!# 1
>!!1 2
	EditAsync!!3 <
(!!< =!
FacebookLoginSettings!!= R
settings!!S [
,!![ \
BuildEditorContext!!] o
context!!p w
)!!w x
{"" 	
var## 
user## 
=##  
_httpContextAccessor## +
.##+ ,
HttpContext##, 7
?##7 8
.##8 9
User##9 =
;##= >
if$$ 
($$ 
user$$ 
==$$ 
null$$ 
||$$ 
!$$  !
await$$! &!
_authorizationService$$' <
.$$< =
AuthorizeAsync$$= K
($$K L
user$$L P
,$$P Q
Permissions$$R ]
.$$] ^
ManageFacebookApp$$^ o
)$$o p
)$$p q
{%% 
return&& 
null&& 
;&& 
}'' 
return)) 

Initialize)) 
<)) *
FacebookLoginSettingsViewModel)) <
>))< =
())= >
$str))> Z
,))Z [
model))\ a
=>))b d
{** 
model++ 
.++ 
CallbackPath++ "
=++# $
settings++% -
.++- .
CallbackPath++. :
.++: ;
Value++; @
;++@ A
model,, 
.,, 

SaveTokens,,  
=,,! "
settings,,# +
.,,+ ,

SaveTokens,,, 6
;,,6 7
}-- 
)-- 
.-- 
Location-- 
(-- 
$str-- #
)--# $
.--$ %
OnGroup--% ,
(--, -
FacebookConstants--- >
.--> ?
Features--? G
.--G H
Login--H M
)--M N
;--N O
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IDisplayResult00# 1
>001 2
UpdateAsync003 >
(00> ?!
FacebookLoginSettings00? T
settings00U ]
,00] ^
BuildEditorContext00_ q
context00r y
)00y z
{11 	
if22 
(22 
context22 
.22 
GroupId22 
==22  "
FacebookConstants22# 4
.224 5
Features225 =
.22= >
Login22> C
)22C D
{33 
var44 
user44 
=44  
_httpContextAccessor44 /
.44/ 0
HttpContext440 ;
?44; <
.44< =
User44= A
;44A B
if55 
(55 
user55 
==55 
null55  
||55! #
!55$ %
await55% *!
_authorizationService55+ @
.55@ A
AuthorizeAsync55A O
(55O P
user55P T
,55T U
Permissions55V a
.55a b
ManageFacebookApp55b s
)55s t
)55t u
{66 
return77 
null77 
;77  
}88 
var:: 
model:: 
=:: 
new:: *
FacebookLoginSettingsViewModel::  >
(::> ?
)::? @
;::@ A
await;; 
context;; 
.;; 
Updater;; %
.;;% &
TryUpdateModelAsync;;& 9
(;;9 :
model;;: ?
,;;? @
Prefix;;A G
);;G H
;;;H I
if== 
(== 
context== 
.== 
Updater== #
.==# $

ModelState==$ .
.==. /
IsValid==/ 6
)==6 7
{>> 
settings?? 
.?? 
CallbackPath?? )
=??* +
model??, 1
.??1 2
CallbackPath??2 >
;??> ?
settings@@ 
.@@ 

SaveTokens@@ '
=@@( )
model@@* /
.@@/ 0

SaveTokens@@0 :
;@@: ;
awaitAA 

_shellHostAA $
.AA$ %$
ReleaseShellContextAsyncAA% =
(AA= >
_shellSettingsAA> L
)AAL M
;AAM N
}BB 
}CC 
returnDD 
awaitDD 
	EditAsyncDD "
(DD" #
settingsDD# +
,DD+ ,
contextDD- 4
)DD4 5
;DD5 6
}EE 	
}FF 
}GG À
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\Recipes\FacebookLoginSettingsStep.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %
Recipes% ,
{ 
public 

class %
FacebookLoginSettingsStep *
:+ ,
IRecipeStepHandler- ?
{ 
private 
readonly !
IFacebookLoginService .
_loginService/ <
;< =
public %
FacebookLoginSettingsStep (
(( )!
IFacebookLoginService) >
loginService? K
)K L
{ 	
_loginService 
= 
loginService (
;( )
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- D
,D E
StringComparisonF V
.V W
OrdinalIgnoreCaseW h
)h i
)i j
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .*
FacebookLoginSettingsStepModel. L
>L M
(M N
)N O
;O P
var 
settings 
= 
await  
_loginService! .
.. /
LoadSettingsAsync/ @
(@ A
)A B
;B C
settings 
. 
CallbackPath !
=" #
model$ )
.) *
CallbackPath* 6
;6 7
await!! 
_loginService!! 
.!!  
UpdateSettingsAsync!!  3
(!!3 4
settings!!4 <
)!!< =
;!!= >
}"" 	
}## 
public%% 

class%% *
FacebookLoginSettingsStepModel%% /
{&& 
public'' 
string'' 
CallbackPath'' "
{''# $
get''% (
;''( )
set''* -
;''- .
}''/ 0
}(( 
})) ˙!
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\Services\FacebookLoginService.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %
Services% -
{ 
public 

class  
FacebookLoginService %
:& '!
IFacebookLoginService( =
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public  
FacebookLoginService #
(# $
ISiteService 
siteService $
)$ %
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< !
FacebookLoginSettings /
>/ 0
GetSettingsAsync1 A
(A B
)B C
{ 	
var 
	container 
= 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
;E F
return 
	container 
. 
As 
<  !
FacebookLoginSettings  5
>5 6
(6 7
)7 8
;8 9
} 	
public 
async 
Task 
< !
FacebookLoginSettings /
>/ 0
LoadSettingsAsync1 B
(B C
)C D
{ 	
var 
	container 
= 
await !
_siteService" .
.. /!
LoadSiteSettingsAsync/ D
(D E
)E F
;F G
return   
	container   
.   
As   
<    !
FacebookLoginSettings    5
>  5 6
(  6 7
)  7 8
;  8 9
}!! 	
public## 
async## 
Task## 
UpdateSettingsAsync## -
(##- .!
FacebookLoginSettings##. C
settings##D L
)##L M
{$$ 	
if%% 
(%% 
settings%% 
==%% 
null%%  
)%%  !
{&& 
throw'' 
new'' !
ArgumentNullException'' /
(''/ 0
nameof''0 6
(''6 7
settings''7 ?
)''? @
)''@ A
;''A B
}(( 
var** 
	container** 
=** 
await** !
_siteService**" .
.**. /!
LoadSiteSettingsAsync**/ D
(**D E
)**E F
;**F G
	container++ 
.++ 

Properties++  
[++  !
nameof++! '
(++' (!
FacebookLoginSettings++( =
)++= >
]++> ?
=++@ A
JObject++B I
.++I J

FromObject++J T
(++T U
settings++U ]
)++] ^
;++^ _
await,, 
_siteService,, 
.,, #
UpdateSiteSettingsAsync,, 6
(,,6 7
	container,,7 @
),,@ A
;,,A B
}-- 	
public// 
Task// 
<// 
IEnumerable// 
<//  
ValidationResult//  0
>//0 1
>//1 2!
ValidateSettingsAsync//3 H
(//H I!
FacebookLoginSettings//I ^
settings//_ g
)//g h
{00 	
if11 
(11 
settings11 
==11 
null11  
)11  !
{22 
throw33 
new33 !
ArgumentNullException33 /
(33/ 0
nameof330 6
(336 7
settings337 ?
)33? @
)33@ A
;33A B
}44 
var66 
results66 
=66 
ImmutableArray66 (
.66( )
CreateBuilder66) 6
<666 7
ValidationResult667 G
>66G H
(66H I
)66I J
;66J K
return77 
Task77 
.77 

FromResult77 "
<77" #
IEnumerable77# .
<77. /
ValidationResult77/ ?
>77? @
>77@ A
(77A B
results77B I
)77I J
;77J K
}88 	
}99 
}:: £	
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\Services\IFacebookLoginService.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %
Services% -
{ 
public 

	interface !
IFacebookLoginService *
{		 
Task

 
<

 !
FacebookLoginSettings

 "
>

" #
GetSettingsAsync

$ 4
(

4 5
)

5 6
;

6 7
Task 
< !
FacebookLoginSettings "
>" #
LoadSettingsAsync$ 5
(5 6
)6 7
;7 8
Task 
UpdateSettingsAsync  
(  !!
FacebookLoginSettings! 6
settings7 ?
)? @
;@ A
Task 
< 
IEnumerable 
< 
ValidationResult )
>) *
>* +!
ValidateSettingsAsync, A
(A B!
FacebookLoginSettingsB W
settingsX `
)` a
;a b
} 
} ˚
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\Settings\FacebookLoginSettings.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %
Settings% -
{ 
public 

class !
FacebookLoginSettings &
{ 
public 

PathString 
CallbackPath &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
bool		 

SaveTokens		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
}

 
} ƒ
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Login\ViewModels\FacebookLoginSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Login $
.$ %

ViewModels% /
{ 
public 

class *
FacebookLoginSettingsViewModel /
{ 
[ 	
RegularExpression	 
( 
$str U
,U V
ErrorMessageW c
=d e
$strf t
)t u
]u v
public 
string 
CallbackPath "
{# $
get% (
;( )
set* -
;- .
}/ 0
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
} ∫
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
$str		 
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
= 
FacebookConstants	 
. 
Features #
.# $
Core$ (
,( )
Name 
=	 

$str 
, 
Category 
= 
$str 
, 
Description 
= 
$str P
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
FacebookConstants	 
. 
Features #
.# $
Login$ )
,) *
Name 
=	 

$str 
, 
Category 
= 
$str 
, 
Description 
= 
$str 6
,6 7
Dependencies 
= 
new 
[ 
] 
{ 
FacebookConstants ,
., -
Features- 5
.5 6
Core6 :
}; <
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
FacebookConstants	 
. 
Features #
.# $
Widgets$ +
,+ ,
Name 
=	 

$str ,
,, -
Category 
= 
$str 
, 
Description 
= 
$str L
,L M
Dependencies   
=   
new   
[   
]   
{   
FacebookConstants   ,
.  , -
Features  - 5
.  5 6
Core  6 :
,  : ;
$str  < Q
}  R S
)!! 
]!! ì
ÉD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Permissions.cs
	namespace 	
OrchardCore
 
. 
Facebook 
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
 )
ManageFacebookApp

* ;
= 
new 

Permission 
( 
nameof #
(# $
ManageFacebookApp$ 5
)5 6
,6 7
$str8 Y
)Y Z
;Z [
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
{) *
ManageFacebookApp+ <
}= >
.> ?
AsEnumerable? K
(K L
)L M
)M N
;N O
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
{ 
ManageFacebookApp %
} 
} 
; 
} 	
} 
} í
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Recipes\FacebookSettingsStep.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Recipes &
{ 
public 

class  
FacebookSettingsStep %
:& '
IRecipeStepHandler( :
{ 
private 
readonly 
IFacebookService )
_loginService* 7
;7 8
public  
FacebookSettingsStep #
(# $
IFacebookService$ 4
loginService5 A
)A B
{ 	
_loginService 
= 
loginService (
;( )
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
string 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- C
,C D
StringComparisonE U
.U V
OrdinalIgnoreCaseV g
)g h
)h i
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .)
FacebookCoreSettingsStepModel. K
>K L
(L M
)M N
;N O
var 
settings 
= 
await  
_loginService! .
.. /
GetSettingsAsync/ ?
(? @
)@ A
;A B
settings 
. 
AppId 
= 
model "
." #
AppId# (
;( )
settings   
.   
	AppSecret   
=    
model  ! &
.  & '
	AppSecret  ' 0
;  0 1
settings!! 
.!! 
SdkJs!! 
=!! 
model!! "
.!!" #
SdkJs!!# (
??!!) +
$str!!, 4
;!!4 5
settings"" 
."" 
FBInit"" 
="" 
model"" #
.""# $
FBInit""$ *
;""* +
settings## 
.## 
FBInitParams## !
=##" #
model##$ )
.##) *
FBInitParams##* 6
;##6 7
settings$$ 
.$$ 
Version$$ 
=$$ 
model$$ $
.$$$ %
Version$$% ,
??$$- /
$str$$0 5
;$$5 6
await&& 
_loginService&& 
.&&  
UpdateSettingsAsync&&  3
(&&3 4
settings&&4 <
)&&< =
;&&= >
}'' 	
}(( 
public** 

class** )
FacebookCoreSettingsStepModel** .
{++ 
public,, 
string,, 
AppId,, 
{,, 
get,, !
;,,! "
set,,# &
;,,& '
},,( )
public-- 
string-- 
	AppSecret-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
public.. 
string.. 
SdkJs.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
public// 
bool// 
FBInit// 
{// 
get//  
;//  !
set//" %
;//% &
}//' (
public00 
string00 
FBInitParams00 "
{00# $
get00% (
;00( )
set00* -
;00- .
}00/ 0
public11 
string11 
Version11 
{11 
get11  #
;11# $
set11% (
;11( )
}11* +
}22 
}33 ‡	
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\ResourceManifest.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{ 
public 

class 
ResourceManifest !
:" #%
IResourceManifestProvider$ =
{ 
public 
void 
BuildManifests "
(" #$
IResourceManifestBuilder# ;
builder< C
)C D
{ 	
var		 
manifest		 
=		 
builder		 "
.		" #
Add		# &
(		& '
)		' (
;		( )
manifest 
. 
DefineScript 
( 
$str "
)" #
. 
SetDependencies  
(  !
$str! (
)( )
. 
SetUrl 
( 
$str :
): ;
;; <
manifest 
. 
DefineScript 
( 
$str %
)% &
. 
SetUrl 
( 
$str =
)= >
;> ?
} 	
} 
}  2
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\ScriptsMiddleware.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{ 
public 

class 
ScriptsMiddleware "
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
ScriptsMiddleware  
(  !
RequestDelegate! 0
next1 5
,5 6
ISiteService7 C
siteServiceD O
)O P
{ 	
_next 
= 
next 
; 
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
httpContext- 8
)8 9
{ 	
if 
( 
httpContext 
. 
Request #
.# $
Path$ (
.( )
StartsWithSegments) ;
(; <
$str< W
,W X
StringComparisonY i
.i j
OrdinalIgnoreCasej {
){ |
)| }
{ 
var 
script 
= 
default $
($ %
string% +
)+ ,
;, -
var 
site 
= 
( 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
)E F
;F G
var 
settings 
= 
site #
.# $
As$ &
<& '
FacebookSettings' 7
>7 8
(8 9
)9 :
;: ;
if   
(   
Path   
.   
GetFileName   $
(  $ %
httpContext  % 0
.  0 1
Request  1 8
.  8 9
Path  9 =
.  = >
Value  > C
)  C D
==  E G
$str  H R
)  R S
{!! 
var"" 
locale"" 
=""  
CultureInfo""! ,
."", -
CurrentUICulture""- =
.""= >
Name""> B
.""B C
Replace""C J
(""J K
$char""K N
,""N O
$char""P S
)""S T
;""T U
script## 
=## 
$@"##  ì
Ü(function(d){{
                        var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {{ return; }}
                        js = d.createElement('script'); js.id = id; js.async = true;
                        js.src = ""https://connect.facebook.net/#&  @
{&&@ A
locale&&A G
}&&G H
/&&H I
{&&I J
settings&&J R
.&&R S
SdkJs&&S X
}&&X YÄ
t"";
                        d.getElementsByTagName('head')[0].appendChild(js);
                    }} (document));&(Y #
"((# $
;(($ %
})) 
else** 
if** 
(** 
Path** 
.** 
GetFileName** )
(**) *
httpContext*** 5
.**5 6
Request**6 =
.**= >
Path**> B
.**B C
Value**C H
)**H I
==**J L
$str**M T
)**T U
{++ 
if,, 
(,, 
!,, 
string,, 
.,,  
IsNullOrWhiteSpace,,  2
(,,2 3
settings,,3 ;
?,,; <
.,,< =
AppId,,= B
),,B C
),,C D
{-- 
var.. 
options.. #
=..$ %
$"..& (

{{ appId:'..( 2
{..2 3
settings..3 ;
...; <
AppId..< A
}..A B
',version:'..B M
{..M N
settings..N V
...V W
Version..W ^
}..^ _
'.._ `
"..` a
;..a b
if// 
(// 
string// "
.//" #
IsNullOrWhiteSpace//# 5
(//5 6
settings//6 >
.//> ?
FBInitParams//? K
)//K L
)//L M
{00 
options11 #
=11$ %
string11& ,
.11, -
Concat11- 3
(113 4
options114 ;
,11; <
$str11= @
)11@ A
;11A B
}22 
else33 
{44 
options55 #
=55$ %
string55& ,
.55, -
Concat55- 3
(553 4
options554 ;
,55; <
$str55= @
,55@ A
settings55B J
.55J K
FBInitParams55K W
,55W X
$str55Y \
)55\ ]
;55] ^
}66 
script77 
=77  
$"77! #6
*window.fbAsyncInit = function(){{ FB.init(77# M
{77M N
options77N U
}77U V
);}};77V [
"77[ \
;77\ ]
}88 
}99 
if;; 
(;; 
script;; 
!=;; 
null;; "
);;" #
{<< 
var== 
bytes== 
=== 
Encoding==  (
.==( )
UTF8==) -
.==- .
GetBytes==. 6
(==6 7
script==7 =
)=== >
;==> ?
var>> 
cancellationToken>> )
=>>* +
httpContext>>, 7
?>>7 8
.>>8 9
RequestAborted>>9 G
??>>H J
CancellationToken>>K \
.>>\ ]
None>>] a
;>>a b
await?? 
httpContext?? %
.??% &
Response??& .
.??. /
Body??/ 3
.??3 4

WriteAsync??4 >
(??> ?
Encoding??? G
.??G H
UTF8??H L
.??L M
GetBytes??M U
(??U V
script??V \
)??\ ]
,??] ^
$num??_ `
,??` a
bytes??b g
.??g h
Length??h n
,??n o
cancellationToken	??p Å
)
??Å Ç
;
??Ç É
return@@ 
;@@ 
}AA 
}BB 
awaitDD 
_nextDD 
.DD 
InvokeDD 
(DD 
httpContextDD *
)DD* +
;DD+ ,
}EE 	
}FF 
}GG ò)
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Services\FacebookService.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Services '
{ 
public 

class 
FacebookService  
:! "
IFacebookService# 3
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
FacebookService 
( 
ISiteService 
siteService $
,$ %
IStringLocalizer 
< 
FacebookService ,
>, -
stringLocalizer. =
)= >
{ 	
_siteService 
= 
siteService &
;& '
S 
= 
stringLocalizer 
;  
} 	
public 
async 
Task 
< 
FacebookSettings *
>* +
GetSettingsAsync, <
(< =
)= >
{ 	
var 
	container 
= 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
;E F
return 
	container 
. 
As 
<  
FacebookSettings  0
>0 1
(1 2
)2 3
;3 4
} 	
public   
async   
Task   
UpdateSettingsAsync   -
(  - .
FacebookSettings  . >
settings  ? G
)  G H
{!! 	
if"" 
("" 
settings"" 
=="" 
null""  
)""  !
{## 
throw$$ 
new$$ !
ArgumentNullException$$ /
($$/ 0
nameof$$0 6
($$6 7
settings$$7 ?
)$$? @
)$$@ A
;$$A B
}%% 
var'' 
	container'' 
='' 
await'' !
_siteService''" .
.''. /!
LoadSiteSettingsAsync''/ D
(''D E
)''E F
;''F G
	container(( 
.(( 

Properties((  
[((  !
nameof((! '
(((' (
FacebookSettings((( 8
)((8 9
]((9 :
=((; <
JObject((= D
.((D E

FromObject((E O
(((O P
settings((P X
)((X Y
;((Y Z
await)) 
_siteService)) 
.)) #
UpdateSiteSettingsAsync)) 6
())6 7
	container))7 @
)))@ A
;))A B
}** 	
public,, 
Task,, 
<,, 
IEnumerable,, 
<,,  
ValidationResult,,  0
>,,0 1
>,,1 2!
ValidateSettingsAsync,,3 H
(,,H I
FacebookSettings,,I Y
settings,,Z b
),,b c
{-- 	
if.. 
(.. 
settings.. 
==.. 
null..  
)..  !
{// 
throw00 
new00 !
ArgumentNullException00 /
(00/ 0
nameof000 6
(006 7
settings007 ?
)00? @
)00@ A
;00A B
}11 
var33 
results33 
=33 
new33 
List33 "
<33" #
ValidationResult33# 3
>333 4
(334 5
)335 6
;336 7
if55 
(55 
string55 
.55 
IsNullOrEmpty55 $
(55$ %
settings55% -
.55- .
AppId55. 3
)553 4
)554 5
{66 
results77 
.77 
Add77 
(77 
new77 
ValidationResult77  0
(770 1
S771 2
[772 3
$str773 K
]77K L
,77L M
new77N Q
[77Q R
]77R S
{88 
nameof99 
(99 
settings99 #
.99# $
AppId99$ )
)99) *
}:: 
):: 
):: 
;:: 
};; 
if== 
(== 
string== 
.== 
IsNullOrEmpty== $
(==$ %
settings==% -
.==- .
	AppSecret==. 7
)==7 8
)==8 9
{>> 
results?? 
.?? 
Add?? 
(?? 
new?? 
ValidationResult??  0
(??0 1
S??1 2
[??2 3
$str??3 P
]??P Q
,??Q R
new??S V
[??V W
]??W X
{@@ 
nameofAA 
(AA 
settingsAA #
.AA# $
	AppSecretAA$ -
)AA- .
}BB 
)BB 
)BB 
;BB 
}CC 
returnEE 
TaskEE 
.EE 

FromResultEE "
<EE" #
IEnumerableEE# .
<EE. /
ValidationResultEE/ ?
>EE? @
>EE@ A
(EEA B
resultsEEB I
)EEI J
;EEJ K
}FF 	
}GG 
}HH √
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Services\IFacebookService.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Services '
{ 
public 

	interface 
IFacebookService %
{		 
Task

 
<

 
FacebookSettings

 
>

 
GetSettingsAsync

 /
(

/ 0
)

0 1
;

1 2
Task 
UpdateSettingsAsync  
(  !
FacebookSettings! 1
settings2 :
): ;
;; <
Task 
< 
IEnumerable 
< 
ValidationResult )
>) *
>* +!
ValidateSettingsAsync, A
(A B
FacebookSettingsB R
settingsS [
)[ \
;\ ]
} 
} Ï
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Settings\FacebookSettings.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Settings '
{ 
public 

class 
FacebookSettings !
{ 
public 
string 
AppId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	AppSecret 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
FBInit 
{ 
get  
;  !
set" %
;% &
}' (
=) *
false+ 0
;0 1
public		 
string		 
FBInitParams		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
=		1 2
$str	3 
; 
public 
string 
SdkJs 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, 4
;4 5
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
$str. 4
;4 5
} 
} °
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Startup.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
builder; B
,B C!
IEndpointRouteBuilderD Y
routesZ `
,` a
IServiceProviderb r
serviceProvider	s Ç
)
Ç É
{ 	
builder 
. 
UseMiddleware !
<! "
ScriptsMiddleware" 3
>3 4
(4 5
)5 6
;6 7
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
IPermissionProvider 2
,2 3
Permissions4 ?
>? @
(@ A
)A B
;B C
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3
	AdminMenu4 =
>= >
(> ?
)? @
;@ A
services   
.   
AddSingleton   !
<  ! "
IFacebookService  " 2
,  2 3
FacebookService  4 C
>  C D
(  D E
)  E F
;  F G
services!! 
.!! 
	AddScoped!! 
<!! 
IDisplayDriver!! -
<!!- .
ISite!!. 3
>!!3 4
,!!4 5)
FacebookSettingsDisplayDriver!!6 S
>!!S T
(!!T U
)!!U V
;!!V W
services"" 
."" "
AddRecipeExecutionStep"" +
<""+ , 
FacebookSettingsStep"", @
>""@ A
(""A B
)""B C
;""C D
services$$ 
.$$ 
	AddScoped$$ 
<$$ %
IResourceManifestProvider$$ 8
,$$8 9
ResourceManifest$$: J
>$$J K
($$K L
)$$L M
;$$M N
services&& 
.&& 
	Configure&& 
<&& 

MvcOptions&& )
>&&) *
(&&* +
(&&+ ,
options&&, 3
)&&3 4
=>&&5 7
{'' 
options(( 
.(( 
Filters(( 
.((  
Add((  #
(((# $
typeof(($ *
(((* +
FBInitFilter((+ 7
)((7 8
)((8 9
;((9 :
})) 
))) 
;)) 
}** 	
}++ 
},, à
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\StartupLogin.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{ 
[ 
Feature 
( 
FacebookConstants 
. 
Features '
.' (
Login( -
)- .
]. /
public 

class 
StartupLogin 
: 
StartupBase  +
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3
AdminMenuLogin4 B
>B C
(C D
)D E
;E F
services 
. 
AddSingleton !
<! "!
IFacebookLoginService" 7
,7 8 
FacebookLoginService9 M
>M N
(N O
)O P
;P Q
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 5.
"FacebookLoginSettingsDisplayDriver6 X
>X Y
(Y Z
)Z [
;[ \
services 
. "
AddRecipeExecutionStep +
<+ ,%
FacebookLoginSettingsStep, E
>E F
(F G
)G H
;H I
services 
. 
TryAddEnumerable %
(% &
new& )
[) *
]* +
{ 
ServiceDescriptor!! !
.!!! "
	Transient!!" +
<!!+ ,
IConfigureOptions!!, =
<!!= >!
AuthenticationOptions!!> S
>!!S T
,!!T U&
FacebookLoginConfiguration!!V p
>!!p q
(!!q r
)!!r s
,!!s t
ServiceDescriptor"" !
.""! "
	Transient""" +
<""+ ,
IConfigureOptions"", =
<""= >
FacebookOptions""> M
>""M N
,""N O&
FacebookLoginConfiguration""P j
>""j k
(""k l
)""l m
,""m n
ServiceDescriptor%% !
.%%! "
	Transient%%" +
<%%+ ,!
IPostConfigureOptions%%, A
<%%A B
FacebookOptions%%B Q
>%%Q R
,%%R S%
OAuthPostConfigureOptions%%T m
<%%m n
FacebookOptions%%n }
,%%} ~
FacebookHandler	%% é
>
%%é è
>
%%è ê
(
%%ê ë
)
%%ë í
}&& 
)&& 
;&& 
}'' 	
}(( 
})) Ú
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\StartupWidgets.cs
	namespace 	
OrchardCore
 
. 
Facebook 
{ 
[ 
Feature 
( 
FacebookConstants 
. 
Features '
.' (
Widgets( /
)/ 0
]0 1
public 

class 
StartupWidgets 
:  !
StartupBase" -
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
< 
IDataMigration -
,- .
WidgetMigrations/ ?
>? @
(@ A
)A B
;B C
services 
. 
	AddScoped 
< 
IShapeTableProvider 2
,2 3
LiquidShapes4 @
>@ A
(A B
)B C
;C D
services 
. 
AddContentPart #
<# $
FacebookPluginPart$ 6
>6 7
(7 8
)8 9
. 
UseDisplayDriver !
<! "+
FacebookPluginPartDisplayDriver" A
>A B
(B C
)C D
. 

AddHandler 
< %
FacebookPluginPartHandler 5
>5 6
(6 7
)7 8
;8 9
services 
. 
	AddScoped 
< 3
'IContentTypePartDefinitionDisplayDriver F
,F G3
'FacebookPluginPartSettingsDisplayDriverH o
>o p
(p q
)q r
;r s
} 	
} 
}   ∆
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\ViewModels\ErrorViewModel.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 

ViewModels )
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
Error 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
ErrorDescription &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
}		 Ó
úD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\ViewModels\FacebookSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 

ViewModels )
{ 
public 

class %
FacebookSettingsViewModel *
{ 
[ 	
Required	 
] 
public 
string 
AppId 
{ 
get !
;! "
set# &
;& '
}( )
[

 	
Required

	 
]

 
public 
string 
	AppSecret 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
] 
public 
string 
SdkJs 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
FBInit 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
FBInitParams "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
RegularExpression	 
( 
$str )
)) *
]* +
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
HasDecryptionError &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} †F
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Drivers\FacebookPluginPartDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Widgets &
.& '
Drivers' .
{ 
public 

class +
FacebookPluginPartDisplayDriver 0
:1 2$
ContentPartDisplayDriver3 K
<K L
FacebookPluginPartL ^
>^ _
{ 
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplatemanager0 F
;F G
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public +
FacebookPluginPartDisplayDriver .
(. /%
IContentDefinitionManager %$
contentDefinitionManager& >
,> ?"
ILiquidTemplateManager "!
liquidTemplatemanager# 8
,8 9
IStringLocalizer 
< +
FacebookPluginPartDisplayDriver <
>< =
	localizer> G
)G H
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A"
_liquidTemplatemanager "
=# $!
liquidTemplatemanager% :
;: ;
S 
= 
	localizer 
; 
} 	
public   
override   
IDisplayResult   &
Display  ' .
(  . /
FacebookPluginPart  / A
part  B F
)  F G
{!! 	
return"" 
Combine"" 
("" 

Initialize## 
<## '
FacebookPluginPartViewModel## 6
>##6 7
(##7 8
$str##8 L
,##L M
m##N O
=>##P R
BuildViewModel##S a
(##a b
m##b c
,##c d
part##e i
)##i j
)##j k
.$$ 
Location$$ 
($$ 
$str$$ &
,$$& '
$str$$( 4
)$$4 5
,$$5 6

Initialize%% 
<%% '
FacebookPluginPartViewModel%% 6
>%%6 7
(%%7 8
$str%%8 T
,%%T U
m%%V W
=>%%X Z
BuildViewModel%%[ i
(%%i j
m%%j k
,%%k l
part%%m q
)%%q r
)%%r s
.&& 
Location&& 
(&& 
$str&& '
,&&' (
$str&&) 5
)&&5 6
)'' 
;'' 
}(( 	
private** 
void** 
BuildViewModel** #
(**# $'
FacebookPluginPartViewModel**$ ?
model**@ E
,**E F
FacebookPluginPart**G Y
part**Z ^
)**^ _
{++ 	
if,, 
(,, 
model,, 
==,, 
null,, 
),, 
{-- 
throw.. 
new.. !
ArgumentNullException.. /
(../ 0
nameof..0 6
(..6 7
model..7 <
)..< =
)..= >
;..> ?
}// 
model11 
.11 
FacebookPluginPart11 $
=11% &
part11' +
??11, .
throw11/ 4
new115 8!
ArgumentNullException119 N
(11N O
nameof11O U
(11U V
part11V Z
)11Z [
)11[ \
;11\ ]
model22 
.22 
Settings22 
=22 )
GetFacebookPluginPartSettings22 :
(22: ;
part22; ?
)22? @
;22@ A
model33 
.33 
Liquid33 
=33 
part33 
.33  
Liquid33  &
;33& '
model44 
.44 
ContentItem44 
=44 
part44  $
.44$ %
ContentItem44% 0
;440 1
}55 	
public77 
override77 
IDisplayResult77 &
Edit77' +
(77+ ,
FacebookPluginPart77, >
part77? C
)77C D
{88 	
return99 

Initialize99 
<99 '
FacebookPluginPartViewModel99 9
>999 :
(99: ;
$str99; T
,99T U
model99V [
=>99\ ^
{:: 
model;; 
.;; 
Settings;; 
=;;  )
GetFacebookPluginPartSettings;;! >
(;;> ?
part;;? C
);;C D
;;;D E
model<< 
.<< 
FacebookPluginPart<< (
=<<) *
part<<+ /
;<</ 0
model== 
.== 
Liquid== 
=== 
string== %
.==% &
IsNullOrWhiteSpace==& 8
(==8 9
part==9 =
.=== >
Liquid==> D
)==D E
?==F G
model==H M
.==M N
Settings==N V
.==V W
Liquid==W ]
:==^ _
part==` d
.==d e
Liquid==e k
;==k l
}>> 
)>> 
;>> 
}?? 	
privateAA &
FacebookPluginPartSettingsAA *)
GetFacebookPluginPartSettingsAA+ H
(AAH I
FacebookPluginPartAAI [
partAA\ `
)AA` a
{BB 	
ifCC 
(CC 
partCC 
==CC 
nullCC 
)CC 
{DD 
throwEE 
newEE !
ArgumentNullExceptionEE /
(EE/ 0
nameofEE0 6
(EE6 7
partEE7 ;
)EE; <
)EE< =
;EE= >
}FF 
varHH !
contentTypeDefinitionHH %
=HH& '%
_contentDefinitionManagerHH( A
.HHA B
GetTypeDefinitionHHB S
(HHS T
partHHT X
.HHX Y
ContentItemHHY d
.HHd e
ContentTypeHHe p
)HHp q
;HHq r
varII %
contentTypePartDefinitionII )
=II* +!
contentTypeDefinitionII, A
.IIA B
PartsIIB G
.IIG H
FirstOrDefaultIIH V
(IIV W
xIIW X
=>IIY [
StringII\ b
.IIb c
EqualsIIc i
(IIi j
xIIj k
.IIk l
PartDefinitionIIl z
.IIz {
NameII{ 
,	II Ä
nameof
IIÅ á
(
IIá à 
FacebookPluginPart
IIà ö
)
IIö õ
)
IIõ ú
)
IIú ù
;
IIù û
returnJJ %
contentTypePartDefinitionJJ ,
.JJ, -
GetSettingsJJ- 8
<JJ8 9&
FacebookPluginPartSettingsJJ9 S
>JJS T
(JJT U
)JJU V
;JJV W
}KK 	
publicMM 
overrideMM 
asyncMM 
TaskMM "
<MM" #
IDisplayResultMM# 1
>MM1 2
UpdateAsyncMM3 >
(MM> ?
FacebookPluginPartMM? Q
modelMMR W
,MMW X
IUpdateModelMMY e
updaterMMf m
)MMm n
{NN 	
varOO 
	viewModelOO 
=OO 
newOO '
FacebookPluginPartViewModelOO  ;
(OO; <
)OO< =
;OO= >
ifQQ 
(QQ 
awaitQQ 
updaterQQ 
.QQ 
TryUpdateModelAsyncQQ 1
(QQ1 2
	viewModelQQ2 ;
,QQ; <
PrefixQQ= C
,QQC D
tQQE F
=>QQG I
tQQJ K
.QQK L
LiquidQQL R
)QQR S
)QQS T
{RR 
ifSS 
(SS 
!SS 
stringSS 
.SS 
IsNullOrEmptySS )
(SS) *
	viewModelSS* 3
.SS3 4
LiquidSS4 :
)SS: ;
&&SS< >
!SS? @"
_liquidTemplatemanagerSS@ V
.SSV W
ValidateSSW _
(SS_ `
	viewModelSS` i
.SSi j
LiquidSSj p
,SSp q
outSSr u
varSSv y
errors	SSz Ä
)
SSÄ Å
)
SSÅ Ç
{TT 
updaterUU 
.UU 

ModelStateUU &
.UU& '
AddModelErrorUU' 4
(UU4 5
nameofUU5 ;
(UU; <
modelUU< A
.UUA B
LiquidUUB H
)UUH I
,UUI J
SUUK L
[UUL M
$str	UUM ò
,
UUò ô
string
UUö †
.
UU† °
Join
UU° •
(
UU• ¶
$str
UU¶ ©
,
UU© ™
errors
UU´ ±
)
UU± ≤
]
UU≤ ≥
)
UU≥ ¥
;
UU¥ µ
}VV 
elseWW 
{XX 
modelYY 
.YY 
LiquidYY  
=YY! "
	viewModelYY# ,
.YY, -
LiquidYY- 3
;YY3 4
}ZZ 
}[[ 
return]] 
Edit]] 
(]] 
model]] 
)]] 
;]] 
}^^ 	
}__ 
}`` ï
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Handlers\FacebookPluginPartHandler.cs
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
Facebook

 
.

 
Widgets

 &
.

& '
Handlers

' /
{ 
public 

class %
FacebookPluginPartHandler *
:+ ,
ContentPartHandler- ?
<? @
FacebookPluginPart@ R
>R S
{ 
private 
readonly "
ILiquidTemplateManager /"
_liquidTemplateManager0 F
;F G
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public %
FacebookPluginPartHandler (
(( )"
ILiquidTemplateManager) ?!
liquidTemplateManager@ U
,U V
HtmlEncoderW b
htmlEncoderc n
)n o
{ 	"
_liquidTemplateManager "
=# $!
liquidTemplateManager% :
;: ;
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
public 
override 
Task %
GetContentItemAspectAsync 6
(6 7$
ContentItemAspectContext7 O
contextP W
,W X
FacebookPluginPartY k
partl p
)p q
{ 	
return 
context 
. 
ForAsync #
<# $

BodyAspect$ .
>. /
(/ 0
async0 5

bodyAspect6 @
=>A C
{ 
try 
{ 
var 
model 
= 
new  #'
FacebookPluginPartViewModel$ ?
(? @
)@ A
{ 
Liquid 
=  
part! %
.% &
Liquid& ,
,, -
FacebookPluginPart   *
=  + ,
part  - 1
,  1 2
ContentItem!! #
=!!$ %
part!!& *
.!!* +
ContentItem!!+ 6
}"" 
;"" 
var$$ 
result$$ 
=$$  
await$$! &"
_liquidTemplateManager$$' =
.$$= >
RenderAsync$$> I
($$I J
part$$J N
.$$N O
Liquid$$O U
,$$U V
_htmlEncoder$$W c
,$$c d
model$$e j
,$$j k
scope%% 
=>%%  
scope%%! &
.%%& '
SetValue%%' /
(%%/ 0
$str%%0 =
,%%= >
model%%? D
.%%D E
ContentItem%%E P
)%%P Q
)%%Q R
;%%R S

bodyAspect'' 
.'' 
Body'' #
=''$ %
new''& )

HtmlString''* 4
(''4 5
result''5 ;
)''; <
;''< =
}(( 
catch)) 
{** 

bodyAspect++ 
.++ 
Body++ #
=++$ %

HtmlString++& 0
.++0 1
Empty++1 6
;++6 7
},, 
}-- 
)-- 
;-- 
}.. 	
}// 
}00 ˙
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Migrations.cs
	namespace		 	
OrchardCore		
 
.		 
Facebook		 
.		 
Widgets		 &
{

 
[ 
Feature 
( 
FacebookConstants 
. 
Features '
.' (
Widgets( /
)/ 0
]0 1
public 

class 
WidgetMigrations !
:" #
DataMigration$ 1
{ 
private 
readonly 
IRecipeMigrator (
_recipeMigrator) 8
;8 9
private 
readonly %
IContentDefinitionManager 2%
_contentDefinitionManager3 L
;L M
public 
WidgetMigrations 
(  
IRecipeMigrator  /
recipeMigrator0 >
,> ?%
IContentDefinitionManager@ Y$
contentDefinitionManagerZ r
)r s
{ 	
_recipeMigrator 
= 
recipeMigrator ,
;, -%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
async 
Task 
< 
int 
> 
CreateAsync *
(* +
)+ ,
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
nameof: @
(@ A
FacebookPluginPartA S
)S T
,T U
builderV ]
=>^ `
buildera h
. 

Attachable 
( 
) 
. 
WithDescription  
(  !
$str! l
)l m
)m n
;n o
await 
_recipeMigrator !
.! "
ExecuteAsync" .
(. /
$str/ N
,N O
thisP T
)T U
;U V
return 
await 
Task 
. 

FromResult (
(( )
$num) *
)* +
;+ ,
} 	
}   
}!! ˜
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Models\FacebookPluginPart.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Widgets &
.& '
Models' -
{ 
public 

class 
FacebookPluginPart #
:$ %
ContentPart& 1
{ 
public 
string 
Liquid 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}		 ≤
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Services\LiquidShapes.cs
	namespace		 	
OrchardCore		
 
.		 
Facebook		 
.		 
Widgets		 &
.		& '
Services		' /
{

 
public 

class 
LiquidShapes 
: 
IShapeTableProvider  3
{ 
private 
readonly 
HtmlEncoder $
_htmlEncoder% 1
;1 2
public 
LiquidShapes 
( 
HtmlEncoder '
htmlEncoder( 3
)3 4
{ 	
_htmlEncoder 
= 
htmlEncoder &
;& '
} 	
private 
async 
Task 
BuildViewModelAsync .
(. /
ShapeDisplayContext/ B
shapeDisplayContextC V
)V W
{ 	
var 
model 
= 
shapeDisplayContext +
.+ ,
Shape, 1
as2 4'
FacebookPluginPartViewModel5 P
;P Q
var !
liquidTemplateManager %
=& '
shapeDisplayContext( ;
.; <
ServiceProvider< K
.K L
GetRequiredServiceL ^
<^ _"
ILiquidTemplateManager_ u
>u v
(v w
)w x
;x y
model 
. 
Html 
= 
await !
liquidTemplateManager 4
.4 5
RenderAsync5 @
(@ A
modelA F
.F G
FacebookPluginPartG Y
.Y Z
LiquidZ `
,` a
_htmlEncoderb n
,n o 
shapeDisplayContext	p É
.
É Ñ
DisplayContext
Ñ í
.
í ì
Value
ì ò
,
ò ô
scope 
=> 
scope 
. 
SetValue '
(' (
$str( 5
,5 6
model7 <
.< =
ContentItem= H
)H I
)I J
;J K
} 	
public 
void 
Discover 
( 
ShapeTableBuilder .
builder/ 6
)6 7
{ 	
builder 
. 
Describe 
( 
$str 1
)1 2
.2 3
OnProcessing3 ?
(? @
BuildViewModelAsync@ S
)S T
;T U
builder   
.   
Describe   
(   
$str   9
)  9 :
.  : ;
OnProcessing  ; G
(  G H
BuildViewModelAsync  H [
)  [ \
;  \ ]
}!! 	
}"" 
}## „
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Settings\FacebookPluginPartSettings.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Widgets &
.& '
Settings' /
{ 
public 

class &
FacebookPluginPartSettings +
{ 
public 
string 
Liquid 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ï,
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Settings\FacebookPluginPartSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Widgets &
.& '
Settings' /
{ 
public 

class 3
'FacebookPluginPartSettingsDisplayDriver 8
:9 :2
&ContentTypePartDefinitionDisplayDriver; a
{ 
private 
readonly "
ILiquidTemplateManager /
_templateManager0 @
;@ A
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 3
'FacebookPluginPartSettingsDisplayDriver 6
(6 7"
ILiquidTemplateManager7 M
templateManagerN ]
,] ^
IStringLocalizer_ o
<o p4
'FacebookPluginPartSettingsDisplayDriver	p ó
>
ó ò
	localizer
ô ¢
)
¢ £
{ 	
_templateManager 
= 
templateManager .
;. /
S 
= 
	localizer 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,%
ContentTypePartDefinition, E%
contentTypePartDefinitionF _
,_ `
IUpdateModela m
updatern u
)u v
{ 	
if 
( 
! 
String 
. 
Equals 
( 
nameof %
(% &
FacebookPluginPart& 8
)8 9
,9 :%
contentTypePartDefinition; T
.T U
PartDefinitionU c
.c d
Named h
)h i
)i j
{ 
return 
null 
; 
} 
return 

Initialize 
< /
#FacebookPluginPartSettingsViewModel A
>A B
(B C
$strC d
,d e
modelf k
=>l n
{   
model!! 
.!! &
FacebookPluginPartSettings!! 0
=!!1 2%
contentTypePartDefinition!!3 L
.!!L M
GetSettings!!M X
<!!X Y&
FacebookPluginPartSettings!!Y s
>!!s t
(!!t u
)!!u v
;!!v w
model"" 
."" 
Liquid"" 
="" 
model"" $
.""$ %&
FacebookPluginPartSettings""% ?
.""? @
Liquid""@ F
;""F G
}## 
)## 
.## 
Location## 
(## 
$str## !
)##! "
;##" #
}$$ 	
public&& 
override&& 
async&& 
Task&& "
<&&" #
IDisplayResult&&# 1
>&&1 2
UpdateAsync&&3 >
(&&> ?%
ContentTypePartDefinition&&? X%
contentTypePartDefinition&&Y r
,&&r s(
UpdateTypePartEditorContext	&&t è
context
&&ê ó
)
&&ó ò
{'' 	
if(( 
((( 
!(( 
String(( 
.(( 
Equals(( 
((( 
nameof(( %
(((% &
FacebookPluginPart((& 8
)((8 9
,((9 :%
contentTypePartDefinition((; T
.((T U
PartDefinition((U c
.((c d
Name((d h
)((h i
)((i j
{)) 
return** 
null** 
;** 
}++ 
var-- 
model-- 
=-- 
new-- /
#FacebookPluginPartSettingsViewModel-- ?
(--? @
)--@ A
;--A B
await// 
context// 
.// 
Updater// !
.//! "
TryUpdateModelAsync//" 5
(//5 6
model//6 ;
,//; <
Prefix//= C
,//C D
m00 
=>00 
m00 
.00 
Liquid00 
)00 
;00 
if22 
(22 
!22 
string22 
.22 
IsNullOrEmpty22 %
(22% &
model22& +
.22+ ,
Liquid22, 2
)222 3
&&224 6
!227 8
_templateManager228 H
.22H I
Validate22I Q
(22Q R
model22R W
.22W X
Liquid22X ^
,22^ _
out22` c
var22d g
errors22h n
)22n o
)22o p
{33 
context44 
.44 
Updater44 
.44  

ModelState44  *
.44* +
AddModelError44+ 8
(448 9
nameof449 ?
(44? @
model44@ E
.44E F
Liquid44F L
)44L M
,44M N
S44O P
[44P Q
$str	44Q ì
,
44ì î
string
44ï õ
.
44õ ú
Join
44ú †
(
44† °
$str
44° §
,
44§ •
errors
44¶ ¨
)
44¨ ≠
]
44≠ Æ
)
44Æ Ø
;
44Ø ∞
}55 
else66 
{77 
context88 
.88 
Builder88 
.88  
WithSettings88  ,
(88, -
new88- 0&
FacebookPluginPartSettings881 K
{88L M
Liquid88N T
=88U V
model88W \
.88\ ]
Liquid88] c
}88d e
)88e f
;88f g
}99 
return;; 
Edit;; 
(;; %
contentTypePartDefinition;; 1
,;;1 2
context;;3 :
.;;: ;
Updater;;; B
);;B C
;;;C D
}<< 	
}== 
}>> Ï
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\Settings\FacebookPluginPartSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Widgets &
.& '
Settings' /
{ 
public 

class /
#FacebookPluginPartSettingsViewModel 4
{ 
public 
string 
Liquid 
{ 
get "
;" #
set$ '
;' (
}) *
[		 	
	BindNever			 
]		 
public

 &
FacebookPluginPartSettings

 )&
FacebookPluginPartSettings

* D
{

E F
get

G J
;

J K
set

L O
;

O P
}

Q R
} 
} ¶
¶D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Facebook\Widgets\ViewModels\FacebookPluginPartViewModel.cs
	namespace 	
OrchardCore
 
. 
Facebook 
. 
Widgets &
.& '

ViewModels' 1
{ 
public 

class '
FacebookPluginPartViewModel ,
{		 
public

 
string

 
Liquid

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
Html 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	BindNever	 
] 
public &
FacebookPluginPartSettings )
Settings* 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
[ 	
	BindNever	 
] 
public 
FacebookPluginPart !
FacebookPluginPart" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
[ 	
	BindNever	 
] 
public 
ContentItem 
ContentItem &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} 