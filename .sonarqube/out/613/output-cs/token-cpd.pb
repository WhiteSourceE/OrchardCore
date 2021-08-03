ÚB
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\AdminMenu.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
{

 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{ 
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer 
< 
	AdminMenu &
>& '
	localizer( 1
,1 2
ShellDescriptor 
shellDescriptor +
)+ ,
{ 	
S 
= 
	localizer 
; 
_shellDescriptor 
= 
shellDescriptor .
;. /
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str $
]$ %
,% &
security' /
=>0 2
security3 ;
.   
Add   
(   
S   
[   
$str   #
]  # $
,  $ %
S  & '
[  ' (
$str  ( 8
]  8 9
.  9 :
PrefixPosition  : H
(  H I
)  I J
,  J K
category  L T
=>  U W
{!! 
category"" 
."" 
AddClass"" !
(""! "
$str""" *
)""* +
.""+ ,
Id"", .
("". /
$str""/ 7
)""7 8
;""8 9
var$$ 
features$$ 
=$$ 
_shellDescriptor$$ /
.$$/ 0
Features$$0 8
.$$8 9
Select$$9 ?
($$? @
feature$$@ G
=>$$H J
feature$$K R
.$$R S
Id$$S U
)$$U V
.$$V W
ToImmutableArray$$W g
($$g h
)$$h i
;$$i j
if%% 
(%% 
features%% 
.%% 
Contains%% %
(%%% &
OpenIdConstants%%& 5
.%%5 6
Features%%6 >
.%%> ?
Client%%? E
)%%E F
||%%G I
features&& 
.&& 
Contains&& %
(&&% &
OpenIdConstants&&& 5
.&&5 6
Features&&6 >
.&&> ?
Server&&? E
)&&E F
||&&G I
features'' 
.'' 
Contains'' %
(''% &
OpenIdConstants''& 5
.''5 6
Features''6 >
.''> ?

Validation''? I
)''I J
)''J K
{(( 
category)) 
.)) 
Add))  
())  !
S))! "
[))" #
$str))# -
]))- .
,)). /
$str))0 3
,))3 4
settings))5 =
=>))> @
{** 
if++ 
(++ 
features++ $
.++$ %
Contains++% -
(++- .
OpenIdConstants++. =
.++= >
Features++> F
.++F G
Client++G M
)++M N
)++N O
{,, 
settings-- $
.--$ %
Add--% (
(--( )
S--) *
[--* +
$str--+ B
]--B C
,--C D
$str--E H
,--H I
client--J P
=>--Q S
client--T Z
...$ %
Action..% +
(..+ ,
$str.., 3
,..3 4
$str..5 <
,..< =
new..> A
{..B C
area..D H
=..I J
$str..K a
,..a b
groupId..c j
=..k l
$str	..m à
}
..â ä
)
..ä ã
.//$ %

Permission//% /
(/// 0
Permissions//0 ;
.//; < 
ManageClientSettings//< P
)//P Q
.00$ %
LocalNav00% -
(00- .
)00. /
)00/ 0
;000 1
}11 
if33 
(33 
features33 $
.33$ %
Contains33% -
(33- .
OpenIdConstants33. =
.33= >
Features33> F
.33F G
Server33G M
)33M N
)33N O
{44 
settings55 $
.55$ %
Add55% (
(55( )
S55) *
[55* +
$str55+ A
]55A B
,55B C
$str55D G
,55G H
server55I O
=>55P R
server55S Y
.66$ %
Action66% +
(66+ ,
$str66, 3
,663 4
$str665 J
,66J K
$str66L `
)66` a
.77$ %

Permission77% /
(77/ 0
Permissions770 ;
.77; < 
ManageServerSettings77< P
)77P Q
.88$ %
LocalNav88% -
(88- .
)88. /
)88/ 0
;880 1
}99 
if;; 
(;; 
features;; $
.;;$ %
Contains;;% -
(;;- .
OpenIdConstants;;. =
.;;= >
Features;;> F
.;;F G

Validation;;G Q
);;Q R
);;R S
{<< 
settings== $
.==$ %
Add==% (
(==( )
S==) *
[==* +
$str==+ =
]=== >
,==> ?
$str==@ C
,==C D

validation==E O
=>==P R

validation==S ]
.>>$ %
Action>>% +
(>>+ ,
$str>>, 3
,>>3 4
$str>>5 N
,>>N O
$str>>P d
)>>d e
.??$ %

Permission??% /
(??/ 0
Permissions??0 ;
.??; <$
ManageValidationSettings??< T
)??T U
.@@$ %
LocalNav@@% -
(@@- .
)@@. /
)@@/ 0
;@@0 1
}AA 
}BB 
)BB 
;BB 
}CC 
ifEE 
(EE 
featuresEE 
.EE 
ContainsEE %
(EE% &
OpenIdConstantsEE& 5
.EE5 6
FeaturesEE6 >
.EE> ?

ManagementEE? I
)EEI J
)EEJ K
{FF 
categoryGG 
.GG 
AddGG  
(GG  !
SGG! "
[GG" #
$strGG# /
]GG/ 0
,GG0 1
$strGG2 5
,GG5 6

managementGG7 A
=>GGB D
{HH 

managementII "
.II" #
AddII# &
(II& '
SII' (
[II( )
$strII) 7
]II7 8
,II8 9
$strII: =
,II= >
applicationsII? K
=>IIL N
applicationsIIO [
.JJ" #
ActionJJ# )
(JJ) *
$strJJ* 1
,JJ1 2
$strJJ3 @
,JJ@ A
$strJJB V
)JJV W
.KK" #

PermissionKK# -
(KK- .
PermissionsKK. 9
.KK9 :
ManageApplicationsKK: L
)KKL M
.LL" #
LocalNavLL# +
(LL+ ,
)LL, -
)LL- .
;LL. /

managementNN "
.NN" #
AddNN# &
(NN& '
SNN' (
[NN( )
$strNN) 1
]NN1 2
,NN2 3
$strNN4 7
,NN7 8
applicationsNN9 E
=>NNF H
applicationsNNI U
.OO" #
ActionOO# )
(OO) *
$strOO* 1
,OO1 2
$strOO3 :
,OO: ;
$strOO< P
)OOP Q
.PP" #

PermissionPP# -
(PP- .
PermissionsPP. 9
.PP9 :
ManageScopesPP: F
)PPF G
.QQ" #
LocalNavQQ# +
(QQ+ ,
)QQ, -
)QQ- .
;QQ. /
}RR 
)RR 
;RR 
}SS 
}TT 
)TT 
)TT 
;TT 
returnVV 
TaskVV 
.VV 
CompletedTaskVV %
;VV% &
}WW 	
}XX 
}YY §H
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Configuration\OpenIdClientConfiguration.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Configuration *
{ 
[ 
Feature 
( 
OpenIdConstants 
. 
Features %
.% &
Client& ,
), -
]- .
public 

class %
OpenIdClientConfiguration *
:+ ,
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
<  
OpenIdConnectOptions 3
>3 4
{ 
private 
readonly  
IOpenIdClientService -
_clientService. <
;< =
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public %
OpenIdClientConfiguration (
(( ) 
IOpenIdClientService  
clientService! .
,. /#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
ShellSettings   
shellSettings   '
,  ' (
ILogger!! 
<!! %
OpenIdClientConfiguration!! -
>!!- .
logger!!/ 5
)!!5 6
{"" 	
_clientService## 
=## 
clientService## *
;##* +#
_dataProtectionProvider$$ #
=$$$ %"
dataProtectionProvider$$& <
;$$< =
_shellSettings%% 
=%% 
shellSettings%% *
;%%* +
_logger&& 
=&& 
logger&& 
;&& 
}'' 	
public)) 
void)) 
	Configure)) 
()) !
AuthenticationOptions)) 3
options))4 ;
))); <
{** 	
var++ 
settings++ 
=++ "
GetClientSettingsAsync++ 1
(++1 2
)++2 3
.++3 4

GetAwaiter++4 >
(++> ?
)++? @
.++@ A
	GetResult++A J
(++J K
)++K L
;++L M
if,, 
(,, 
settings,, 
==,, 
null,,  
),,  !
{-- 
return.. 
;.. 
}// 
options22 
.22 
	AddScheme22 
<22  
OpenIdConnectHandler22 2
>222 3
(223 4!
OpenIdConnectDefaults224 I
.22I J 
AuthenticationScheme22J ^
,22^ _
settings22` h
.22h i
DisplayName22i t
)22t u
;22u v
}33 	
public55 
void55 
	Configure55 
(55 
string55 $
name55% )
,55) * 
OpenIdConnectOptions55+ ?
options55@ G
)55G H
{66 	
if88 
(88 
!88 
String88 
.88 
Equals88 
(88 
name88 #
,88# $!
OpenIdConnectDefaults88% :
.88: ; 
AuthenticationScheme88; O
)88O P
)88P Q
{99 
return:: 
;:: 
};; 
var== 
settings== 
=== "
GetClientSettingsAsync== 1
(==1 2
)==2 3
.==3 4

GetAwaiter==4 >
(==> ?
)==? @
.==@ A
	GetResult==A J
(==J K
)==K L
;==L M
if>> 
(>> 
settings>> 
==>> 
null>>  
)>>  !
{?? 
return@@ 
;@@ 
}AA 
optionsCC 
.CC 
	AuthorityCC 
=CC 
settingsCC  (
.CC( )
	AuthorityCC) 2
.CC2 3
AbsoluteUriCC3 >
;CC> ?
optionsDD 
.DD 
ClientIdDD 
=DD 
settingsDD '
.DD' (
ClientIdDD( 0
;DD0 1
optionsEE 
.EE  
SignedOutRedirectUriEE (
=EE) *
settingsEE+ 3
.EE3 4 
SignedOutRedirectUriEE4 H
??EEI K
optionsEEL S
.EES T 
SignedOutRedirectUriEET h
;EEh i
optionsFF 
.FF !
SignedOutCallbackPathFF )
=FF* +
settingsFF, 4
.FF4 5!
SignedOutCallbackPathFF5 J
??FFK M
optionsFFN U
.FFU V!
SignedOutCallbackPathFFV k
;FFk l
optionsGG 
.GG  
RequireHttpsMetadataGG (
=GG) *
StringGG+ 1
.GG1 2
EqualsGG2 8
(GG8 9
settingsGG9 A
.GGA B
	AuthorityGGB K
.GGK L
SchemeGGL R
,GGR S
UriGGT W
.GGW X
UriSchemeHttpsGGX f
,GGf g
StringComparisonGGh x
.GGx y
OrdinalIgnoreCase	GGy ä
)
GGä ã
;
GGã å
optionsHH 
.HH )
GetClaimsFromUserInfoEndpointHH 1
=HH2 3
trueHH4 8
;HH8 9
optionsII 
.II 
ResponseModeII  
=II! "
settingsII# +
.II+ ,
ResponseModeII, 8
;II8 9
optionsJJ 
.JJ 
ResponseTypeJJ  
=JJ! "
settingsJJ# +
.JJ+ ,
ResponseTypeJJ, 8
;JJ8 9
optionsKK 
.KK 

SaveTokensKK 
=KK  
settingsKK! )
.KK) *
StoreExternalTokensKK* =
;KK= >
optionsMM 
.MM 
CallbackPathMM  
=MM! "
settingsMM# +
.MM+ ,
CallbackPathMM, 8
??MM9 ;
optionsMM< C
.MMC D
CallbackPathMMD P
;MMP Q
ifOO 
(OO 
settingsOO 
.OO 
ScopesOO 
!=OO  "
nullOO# '
)OO' (
{PP 
foreachQQ 
(QQ 
varQQ 
scopeQQ "
inQQ# %
settingsQQ& .
.QQ. /
ScopesQQ/ 5
)QQ5 6
{RR 
optionsSS 
.SS 
ScopeSS !
.SS! "
AddSS" %
(SS% &
scopeSS& +
)SS+ ,
;SS, -
}TT 
}UU 
ifWW 
(WW 
!WW 
StringWW 
.WW 
IsNullOrEmptyWW %
(WW% &
settingsWW& .
.WW. /
ClientSecretWW/ ;
)WW; <
)WW< =
{XX 
varYY 
	protectorYY 
=YY #
_dataProtectionProviderYY  7
.YY7 8
CreateProtectorYY8 G
(YYG H
nameofYYH N
(YYN O%
OpenIdClientConfigurationYYO h
)YYh i
)YYi j
;YYj k
try[[ 
{\\ 
options]] 
.]] 
ClientSecret]] (
=]]) *
	protector]]+ 4
.]]4 5
	Unprotect]]5 >
(]]> ?
settings]]? G
.]]G H
ClientSecret]]H T
)]]T U
;]]U V
}^^ 
catch__ 
{`` 
_loggeraa 
.aa 
LogErroraa $
(aa$ %
$str	aa% Ç
)
aaÇ É
;
aaÉ Ñ
}bb 
}cc 
}dd 	
publicff 
voidff 
	Configureff 
(ff  
OpenIdConnectOptionsff 2
optionsff3 :
)ff: ;
=>ff< >
Debugff? D
.ffD E
FailffE I
(ffI J
$strffJ {
)ff{ |
;ff| }
privatehh 
asynchh 
Taskhh 
<hh  
OpenIdClientSettingshh /
>hh/ 0"
GetClientSettingsAsynchh1 G
(hhG H
)hhH I
{ii 	
varjj 
settingsjj 
=jj 
awaitjj  
_clientServicejj! /
.jj/ 0
GetSettingsAsyncjj0 @
(jj@ A
)jjA B
;jjB C
ifkk 
(kk 
(kk 
awaitkk 
_clientServicekk %
.kk% &!
ValidateSettingsAsynckk& ;
(kk; <
settingskk< D
)kkD E
)kkE F
.kkF G
AnykkG J
(kkJ K
resultkkK Q
=>kkR T
resultkkU [
!=kk\ ^
ValidationResultkk_ o
.kko p
Successkkp w
)kkw x
)kkx y
{ll 
ifmm 
(mm 
_shellSettingsmm "
.mm" #
Statemm# (
==mm) +
TenantStatemm, 7
.mm7 8
Runningmm8 ?
)mm? @
{nn 
_loggeroo 
.oo 

LogWarningoo &
(oo& '
$stroo' _
)oo_ `
;oo` a
}pp 
returnrr 
nullrr 
;rr 
}ss 
returnuu 
settingsuu 
;uu 
}vv 	
}ww 
}xx Çö
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Configuration\OpenIdServerConfiguration.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Configuration *
{ 
[ 
Feature 
( 
OpenIdConstants 
. 
Features %
.% &
Server& ,
), -
]- .
public 

class %
OpenIdServerConfiguration *
:+ ,
IConfigureOptions- >
<> ?!
AuthenticationOptions? T
>T U
,U V
IConfigureOptions 
< #
OpenIddictServerOptions 1
>1 2
,2 3
IConfigureOptions 
< 1
%OpenIddictServerDataProtectionOptions ?
>? @
,@ A"
IConfigureNamedOptions 
< -
!OpenIddictServerAspNetCoreOptions @
>@ A
{ 
private 
readonly  
IOpenIdServerService -
_serverService. <
;< =
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
public   %
OpenIdServerConfiguration   (
(  ( ) 
IOpenIdServerService!!  
serverService!!! .
,!!. /
ShellSettings"" 
shellSettings"" '
,""' (
ILogger## 
<## %
OpenIdServerConfiguration## -
>##- .
logger##/ 5
)##5 6
{$$ 	
_serverService%% 
=%% 
serverService%% *
;%%* +
_shellSettings&& 
=&& 
shellSettings&& *
;&&* +
_logger'' 
='' 
logger'' 
;'' 
}(( 	
public** 
void** 
	Configure** 
(** !
AuthenticationOptions** 3
options**4 ;
)**; <
{++ 	
var,, 
settings,, 
=,, "
GetServerSettingsAsync,, 1
(,,1 2
),,2 3
.,,3 4

GetAwaiter,,4 >
(,,> ?
),,? @
.,,@ A
	GetResult,,A J
(,,J K
),,K L
;,,L M
if-- 
(-- 
settings-- 
==-- 
null--  
)--  !
{.. 
return// 
;// 
}00 
options22 
.22 
	AddScheme22 
<22 -
!OpenIddictServerAspNetCoreHandler22 ?
>22? @
(22@ A.
"OpenIddictServerAspNetCoreDefaults33 2
.332 3 
AuthenticationScheme333 G
,33G H
displayName33I T
:33T U
null33V Z
)33Z [
;33[ \
}44 	
public66 
void66 
	Configure66 
(66 #
OpenIddictServerOptions66 5
options666 =
)66= >
{77 	
var88 
settings88 
=88 "
GetServerSettingsAsync88 1
(881 2
)882 3
.883 4

GetAwaiter884 >
(88> ?
)88? @
.88@ A
	GetResult88A J
(88J K
)88K L
;88L M
if99 
(99 
settings99 
==99 
null99  
)99  !
{:: 
return;; 
;;; 
}<< 
options>> 
.>> 
Issuer>> 
=>> 
settings>> %
.>>% &
	Authority>>& /
;>>/ 0
options?? 
.?? (
DisableAccessTokenEncryption?? 0
=??1 2
settings??3 ;
.??; <(
DisableAccessTokenEncryption??< X
;??X Y
options@@ 
.@@ '
DisableRollingRefreshTokens@@ /
=@@0 1
settings@@2 :
.@@: ;'
DisableRollingRefreshTokens@@; V
;@@V W
optionsAA 
.AA $
UseReferenceAccessTokensAA ,
=AA- .
settingsAA/ 7
.AA7 8$
UseReferenceAccessTokensAA8 P
;AAP Q
foreachCC 
(CC 
varCC 
keyCC 
inCC 
_serverServiceCC  .
.CC. /"
GetEncryptionKeysAsyncCC/ E
(CCE F
)CCF G
.CCG H

GetAwaiterCCH R
(CCR S
)CCS T
.CCT U
	GetResultCCU ^
(CC^ _
)CC_ `
)CC` a
{DD 
optionsEE 
.EE !
EncryptionCredentialsEE -
.EE- .
AddEE. 1
(EE1 2
newEE2 5!
EncryptingCredentialsEE6 K
(EEK L
keyEEL O
,EEO P
SecurityAlgorithmsFF &
.FF& '
RsaOAEPFF' .
,FF. /
SecurityAlgorithmsFF0 B
.FFB C
Aes256CbcHmacSha512FFC V
)FFV W
)FFW X
;FFX Y
}GG 
foreachII 
(II 
varII 
keyII 
inII 
_serverServiceII  .
.II. /
GetSigningKeysAsyncII/ B
(IIB C
)IIC D
.IID E

GetAwaiterIIE O
(IIO P
)IIP Q
.IIQ R
	GetResultIIR [
(II[ \
)II\ ]
)II] ^
{JJ 
optionsKK 
.KK 
SigningCredentialsKK *
.KK* +
AddKK+ .
(KK. /
newKK/ 2
SigningCredentialsKK3 E
(KKE F
keyKKF I
,KKI J
SecurityAlgorithmsKKK ]
.KK] ^
	RsaSha256KK^ g
)KKg h
)KKh i
;KKi j
}LL 
ifNN 
(NN 
settingsNN 
.NN %
AuthorizationEndpointPathNN 2
.NN2 3
HasValueNN3 ;
)NN; <
{OO 
optionsPP 
.PP %
AuthorizationEndpointUrisPP 1
.PP1 2
AddPP2 5
(PP5 6
newPP6 9
UriPP: =
(PP= >
settingsPP> F
.PPF G%
AuthorizationEndpointPathPPG `
.PP` a
ValuePPa f
,PPf g
UriKindPPh o
.PPo p
RelativePPp x
)PPx y
)PPy z
;PPz {
}QQ 
ifRR 
(RR 
settingsRR 
.RR 
LogoutEndpointPathRR +
.RR+ ,
HasValueRR, 4
)RR4 5
{SS 
optionsTT 
.TT 
LogoutEndpointUrisTT *
.TT* +
AddTT+ .
(TT. /
newTT/ 2
UriTT3 6
(TT6 7
settingsTT7 ?
.TT? @
LogoutEndpointPathTT@ R
.TTR S
ValueTTS X
,TTX Y
UriKindTTZ a
.TTa b
RelativeTTb j
)TTj k
)TTk l
;TTl m
}UU 
ifVV 
(VV 
settingsVV 
.VV 
TokenEndpointPathVV *
.VV* +
HasValueVV+ 3
)VV3 4
{WW 
optionsXX 
.XX 
TokenEndpointUrisXX )
.XX) *
AddXX* -
(XX- .
newXX. 1
UriXX2 5
(XX5 6
settingsXX6 >
.XX> ?
TokenEndpointPathXX? P
.XXP Q
ValueXXQ V
,XXV W
UriKindXXX _
.XX_ `
RelativeXX` h
)XXh i
)XXi j
;XXj k
}YY 
ifZZ 
(ZZ 
settingsZZ 
.ZZ  
UserinfoEndpointPathZZ -
.ZZ- .
HasValueZZ. 6
)ZZ6 7
{[[ 
options\\ 
.\\  
UserinfoEndpointUris\\ ,
.\\, -
Add\\- 0
(\\0 1
new\\1 4
Uri\\5 8
(\\8 9
settings\\9 A
.\\A B 
UserinfoEndpointPath\\B V
.\\V W
Value\\W \
,\\\ ]
UriKind\\^ e
.\\e f
Relative\\f n
)\\n o
)\\o p
;\\p q
}]] 
ifaa 
(aa 
settingsaa 
.aa &
AllowAuthorizationCodeFlowaa 3
)aa3 4
{bb 
optionscc 
.cc  
CodeChallengeMethodscc ,
.cc, -
Addcc- 0
(cc0 1 
CodeChallengeMethodscc1 E
.ccE F
Sha256ccF L
)ccL M
;ccM N
optionsee 
.ee 

GrantTypesee "
.ee" #
Addee# &
(ee& '

GrantTypesee' 1
.ee1 2
AuthorizationCodeee2 C
)eeC D
;eeD E
optionsgg 
.gg 
ResponseModesgg %
.gg% &
Addgg& )
(gg) *
ResponseModesgg* 7
.gg7 8
FormPostgg8 @
)gg@ A
;ggA B
optionshh 
.hh 
ResponseModeshh %
.hh% &
Addhh& )
(hh) *
ResponseModeshh* 7
.hh7 8
Fragmenthh8 @
)hh@ A
;hhA B
optionsii 
.ii 
ResponseModesii %
.ii% &
Addii& )
(ii) *
ResponseModesii* 7
.ii7 8
Queryii8 =
)ii= >
;ii> ?
optionskk 
.kk 
ResponseTypeskk %
.kk% &
Addkk& )
(kk) *
ResponseTypeskk* 7
.kk7 8
Codekk8 <
)kk< =
;kk= >
}ll 
ifmm 
(mm 
settingsmm 
.mm &
AllowClientCredentialsFlowmm 3
)mm3 4
{nn 
optionsoo 
.oo 

GrantTypesoo "
.oo" #
Addoo# &
(oo& '

GrantTypesoo' 1
.oo1 2
ClientCredentialsoo2 C
)ooC D
;ooD E
}pp 
ifqq 
(qq 
settingsqq 
.qq 
AllowHybridFlowqq (
)qq( )
{rr 
optionsss 
.ss  
CodeChallengeMethodsss ,
.ss, -
Addss- 0
(ss0 1 
CodeChallengeMethodsss1 E
.ssE F
Sha256ssF L
)ssL M
;ssM N
optionsuu 
.uu 

GrantTypesuu "
.uu" #
Adduu# &
(uu& '

GrantTypesuu' 1
.uu1 2
AuthorizationCodeuu2 C
)uuC D
;uuD E
optionsvv 
.vv 

GrantTypesvv "
.vv" #
Addvv# &
(vv& '

GrantTypesvv' 1
.vv1 2
Implicitvv2 :
)vv: ;
;vv; <
optionsxx 
.xx 
ResponseModesxx %
.xx% &
Addxx& )
(xx) *
ResponseModesxx* 7
.xx7 8
FormPostxx8 @
)xx@ A
;xxA B
optionsyy 
.yy 
ResponseModesyy %
.yy% &
Addyy& )
(yy) *
ResponseModesyy* 7
.yy7 8
Fragmentyy8 @
)yy@ A
;yyA B
options{{ 
.{{ 
ResponseTypes{{ %
.{{% &
Add{{& )
({{) *
ResponseTypes{{* 7
.{{7 8
Code{{8 <
+{{= >
$char{{? B
+{{C D
ResponseTypes{{E R
.{{R S
IdToken{{S Z
){{Z [
;{{[ \
options|| 
.|| 
ResponseTypes|| %
.||% &
Add||& )
(||) *
ResponseTypes||* 7
.||7 8
Code||8 <
+||= >
$char||? B
+||C D
ResponseTypes||E R
.||R S
IdToken||S Z
+||[ \
$char||] `
+||a b
ResponseTypes||c p
.||p q
Token||q v
)||v w
;||w x
options}} 
.}} 
ResponseTypes}} %
.}}% &
Add}}& )
(}}) *
ResponseTypes}}* 7
.}}7 8
Code}}8 <
+}}= >
$char}}? B
+}}C D
ResponseTypes}}E R
.}}R S
Token}}S X
)}}X Y
;}}Y Z
}~~ 
if 
( 
settings 
. 
AllowImplicitFlow *
)* +
{
ÄÄ 
options
ÅÅ 
.
ÅÅ 

GrantTypes
ÅÅ "
.
ÅÅ" #
Add
ÅÅ# &
(
ÅÅ& '

GrantTypes
ÅÅ' 1
.
ÅÅ1 2
Implicit
ÅÅ2 :
)
ÅÅ: ;
;
ÅÅ; <
options
ÉÉ 
.
ÉÉ 
ResponseModes
ÉÉ %
.
ÉÉ% &
Add
ÉÉ& )
(
ÉÉ) *
ResponseModes
ÉÉ* 7
.
ÉÉ7 8
FormPost
ÉÉ8 @
)
ÉÉ@ A
;
ÉÉA B
options
ÑÑ 
.
ÑÑ 
ResponseModes
ÑÑ %
.
ÑÑ% &
Add
ÑÑ& )
(
ÑÑ) *
ResponseModes
ÑÑ* 7
.
ÑÑ7 8
Fragment
ÑÑ8 @
)
ÑÑ@ A
;
ÑÑA B
options
ÜÜ 
.
ÜÜ 
ResponseTypes
ÜÜ %
.
ÜÜ% &
Add
ÜÜ& )
(
ÜÜ) *
ResponseTypes
ÜÜ* 7
.
ÜÜ7 8
IdToken
ÜÜ8 ?
)
ÜÜ? @
;
ÜÜ@ A
options
áá 
.
áá 
ResponseTypes
áá %
.
áá% &
Add
áá& )
(
áá) *
ResponseTypes
áá* 7
.
áá7 8
IdToken
áá8 ?
+
áá@ A
$char
ááB E
+
ááF G
ResponseTypes
ááH U
.
ááU V
Token
ááV [
)
áá[ \
;
áá\ ]
options
àà 
.
àà 
ResponseTypes
àà %
.
àà% &
Add
àà& )
(
àà) *
ResponseTypes
àà* 7
.
àà7 8
Token
àà8 =
)
àà= >
;
àà> ?
}
ââ 
if
ää 
(
ää 
settings
ää 
.
ää 
AllowPasswordFlow
ää *
)
ää* +
{
ãã 
options
åå 
.
åå 

GrantTypes
åå "
.
åå" #
Add
åå# &
(
åå& '

GrantTypes
åå' 1
.
åå1 2
Password
åå2 :
)
åå: ;
;
åå; <
}
çç 
if
éé 
(
éé 
settings
éé 
.
éé #
AllowRefreshTokenFlow
éé .
)
éé. /
{
èè 
options
êê 
.
êê 

GrantTypes
êê "
.
êê" #
Add
êê# &
(
êê& '

GrantTypes
êê' 1
.
êê1 2
RefreshToken
êê2 >
)
êê> ?
;
êê? @
options
íí 
.
íí 
Scopes
íí 
.
íí 
Add
íí "
(
íí" #
Scopes
íí# )
.
íí) *
OfflineAccess
íí* 7
)
íí7 8
;
íí8 9
}
ìì 
options
ïï 
.
ïï 
Scopes
ïï 
.
ïï 
Add
ïï 
(
ïï 
Scopes
ïï %
.
ïï% &
Email
ïï& +
)
ïï+ ,
;
ïï, -
options
ññ 
.
ññ 
Scopes
ññ 
.
ññ 
Add
ññ 
(
ññ 
Scopes
ññ %
.
ññ% &
Phone
ññ& +
)
ññ+ ,
;
ññ, -
options
óó 
.
óó 
Scopes
óó 
.
óó 
Add
óó 
(
óó 
Scopes
óó %
.
óó% &
Profile
óó& -
)
óó- .
;
óó. /
options
òò 
.
òò 
Scopes
òò 
.
òò 
Add
òò 
(
òò 
Scopes
òò %
.
òò% &
Roles
òò& +
)
òò+ ,
;
òò, -
}
ôô 	
public
õõ 
void
õõ 
	Configure
õõ 
(
õõ 3
%OpenIddictServerDataProtectionOptions
õõ C
options
õõD K
)
õõK L
{
úú 	
var
ùù 
settings
ùù 
=
ùù $
GetServerSettingsAsync
ùù 1
(
ùù1 2
)
ùù2 3
.
ùù3 4

GetAwaiter
ùù4 >
(
ùù> ?
)
ùù? @
.
ùù@ A
	GetResult
ùùA J
(
ùùJ K
)
ùùK L
;
ùùL M
if
ûû 
(
ûû 
settings
ûû 
==
ûû 
null
ûû  
)
ûû  !
{
üü 
return
†† 
;
†† 
}
°° 
options
•• 
.
•• ,
PreferDefaultAccessTokenFormat
•• 2
=
••3 4
settings
••5 =
.
••= >
AccessTokenFormat
••> O
==
••P R"
OpenIdServerSettings
••S g
.
••g h
TokenFormat
••h s
.
••s t
JsonWebToken••t Ä
;••Ä Å
}
¶¶ 	
public
®® 
void
®® 
	Configure
®® 
(
®® 
string
®® $
name
®®% )
,
®®) */
!OpenIddictServerAspNetCoreOptions
®®+ L
options
®®M T
)
®®T U
{
©© 	
options
¨¨ 
.
¨¨ 4
&EnableAuthorizationEndpointPassthrough
¨¨ :
=
¨¨; <
true
¨¨= A
;
¨¨A B
options
≠≠ 
.
≠≠ -
EnableLogoutEndpointPassthrough
≠≠ 3
=
≠≠4 5
true
≠≠6 :
;
≠≠: ;
options
ÆÆ 
.
ÆÆ ,
EnableTokenEndpointPassthrough
ÆÆ 2
=
ÆÆ3 4
true
ÆÆ5 9
;
ÆÆ9 :
options
ØØ 
.
ØØ /
!EnableUserinfoEndpointPassthrough
ØØ 5
=
ØØ6 7
true
ØØ8 <
;
ØØ< =
options
¥¥ 
.
¥¥ /
!EnableAuthorizationRequestCaching
¥¥ 5
=
¥¥6 7
true
¥¥8 <
;
¥¥< =
options
µµ 
.
µµ (
EnableLogoutRequestCaching
µµ .
=
µµ/ 0
true
µµ1 5
;
µµ5 6
options
∫∫ 
.
∫∫ $
EnableErrorPassthrough
∫∫ *
=
∫∫+ ,
true
∫∫- 1
;
∫∫1 2
options
øø 
.
øø 1
#DisableTransportSecurityRequirement
øø 7
=
øø8 9
true
øø: >
;
øø> ?
}
¿¿ 	
public
¬¬ 
void
¬¬ 
	Configure
¬¬ 
(
¬¬ /
!OpenIddictServerAspNetCoreOptions
¬¬ ?
options
¬¬@ G
)
¬¬G H
=>
√√ 
Debug
√√ 
.
√√ 
Fail
√√ 
(
√√ 
$str
√√ K
)
√√K L
;
√√L M
private
≈≈ 
async
≈≈ 
Task
≈≈ 
<
≈≈ "
OpenIdServerSettings
≈≈ /
>
≈≈/ 0$
GetServerSettingsAsync
≈≈1 G
(
≈≈G H
)
≈≈H I
{
∆∆ 	
var
«« 
settings
«« 
=
«« 
await
««  
_serverService
««! /
.
««/ 0
GetSettingsAsync
««0 @
(
««@ A
)
««A B
;
««B C
if
»» 
(
»» 
(
»» 
await
»» 
_serverService
»» %
.
»»% &#
ValidateSettingsAsync
»»& ;
(
»»; <
settings
»»< D
)
»»D E
)
»»E F
.
»»F G
Any
»»G J
(
»»J K
result
»»K Q
=>
»»R T
result
»»U [
!=
»»\ ^
ValidationResult
»»_ o
.
»»o p
Success
»»p w
)
»»w x
)
»»x y
{
…… 
if
   
(
   
_shellSettings
   "
.
  " #
State
  # (
==
  ) +
TenantState
  , 7
.
  7 8
Running
  8 ?
)
  ? @
{
ÀÀ 
_logger
ÃÃ 
.
ÃÃ 

LogWarning
ÃÃ &
(
ÃÃ& '
$str
ÃÃ' _
)
ÃÃ_ `
;
ÃÃ` a
}
ÕÕ 
return
œœ 
null
œœ 
;
œœ 
}
–– 
return
““ 
settings
““ 
;
““ 
}
”” 	
}
‘‘ 
}’’ Ùú
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Configuration\OpenIdValidationConfiguration.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Configuration *
{ 
[ 
Feature 
( 
OpenIdConstants 
. 
Features %
.% &

Validation& 0
)0 1
]1 2
public 

class )
OpenIdValidationConfiguration .
:/ 0
IConfigureOptions1 B
<B C!
AuthenticationOptionsC X
>X Y
,Y Z
IConfigureOptions 
< '
OpenIddictValidationOptions 5
>5 6
,6 7
IConfigureOptions 
< 5
)OpenIddictValidationDataProtectionOptions C
>C D
,D E"
IConfigureNamedOptions   
<   #
ApiAuthorizationOptions   6
>  6 7
{!! 
private"" 
readonly"" 
ILogger""  
_logger""! (
;""( )
private## 
readonly## $
IOpenIdValidationService## 1
_validationService##2 D
;##D E
private$$ 
readonly$$ 
IRunningShellTable$$ +
_runningShellTable$$, >
;$$> ?
private%% 
readonly%% 

IShellHost%% #

_shellHost%%$ .
;%%. /
private&& 
readonly&& 
ShellSettings&& &
_shellSettings&&' 5
;&&5 6
public(( )
OpenIdValidationConfiguration(( ,
(((, -
ILogger)) 
<)) )
OpenIdValidationConfiguration)) 1
>))1 2
logger))3 9
,))9 :$
IOpenIdValidationService** $
validationService**% 6
,**6 7
IRunningShellTable++ 
runningShellTable++ 0
,++0 1

IShellHost,, 
	shellHost,,  
,,,  !
ShellSettings-- 
shellSettings-- '
)--' (
{.. 	
_logger// 
=// 
logger// 
;// 
_validationService00 
=00  
validationService00! 2
;002 3
_runningShellTable11 
=11  
runningShellTable11! 2
;112 3

_shellHost22 
=22 
	shellHost22 "
;22" #
_shellSettings33 
=33 
shellSettings33 *
;33* +
}44 	
public66 
void66 
	Configure66 
(66 !
AuthenticationOptions66 3
options664 ;
)66; <
{77 	
var88 
settings88 
=88 &
GetValidationSettingsAsync88 5
(885 6
)886 7
.887 8

GetAwaiter888 B
(88B C
)88C D
.88D E
	GetResult88E N
(88N O
)88O P
;88P Q
if99 
(99 
settings99 
==99 
null99  
)99  !
{:: 
return;; 
;;; 
}<< 
if>> 
(>> 
settings>> 
.>> 
	Authority>> "
!=>># %
null>>& *
)>>* +
{?? 
options@@ 
.@@ 
	AddScheme@@ !
<@@! "1
%OpenIddictValidationAspNetCoreHandler@@" G
>@@G H
(@@H I2
&OpenIddictValidationAspNetCoreDefaultsAA :
.AA: ; 
AuthenticationSchemeAA; O
,AAO P
displayNameAAQ \
:AA\ ]
nullAA^ b
)AAb c
;AAc d
returnCC 
;CC 
}DD 
CreateTenantScopeHH 
(HH 
settingsHH &
.HH& '
TenantHH' -
)HH- .
.HH. /

UsingAsyncHH/ 9
(HH9 :
asyncHH: ?
scopeHH@ E
=>HHF H
{II 
varJJ 
serviceJJ 
=JJ 
scopeJJ #
.JJ# $
ServiceProviderJJ$ 3
.JJ3 4

GetServiceJJ4 >
<JJ> ? 
IOpenIdServerServiceJJ? S
>JJS T
(JJT U
)JJU V
;JJV W
ifKK 
(KK 
serviceKK 
==KK 
nullKK #
)KK# $
{LL 
returnMM 
;MM 
}NN 
varPP 
configurationPP !
=PP" #
awaitPP$ )"
GetServerSettingsAsyncPP* @
(PP@ A
servicePPA H
)PPH I
;PPI J
ifQQ 
(QQ 
configurationQQ !
==QQ" $
nullQQ% )
)QQ) *
{RR 
returnSS 
;SS 
}TT 
optionsVV 
.VV 
	AddSchemeVV !
<VV! "1
%OpenIddictValidationAspNetCoreHandlerVV" G
>VVG H
(VVH I2
&OpenIddictValidationAspNetCoreDefaultsWW :
.WW: ; 
AuthenticationSchemeWW; O
,WWO P
displayNameWWQ \
:WW\ ]
nullWW^ b
)WWb c
;WWc d
}XX 
)XX 
.XX 

GetAwaiterXX 
(XX 
)XX 
.XX 
	GetResultXX %
(XX% &
)XX& '
;XX' (
}YY 	
public[[ 
void[[ 
	Configure[[ 
([[ '
OpenIddictValidationOptions[[ 9
options[[: A
)[[A B
{\\ 	
var]] 
settings]] 
=]] &
GetValidationSettingsAsync]] 5
(]]5 6
)]]6 7
.]]7 8

GetAwaiter]]8 B
(]]B C
)]]C D
.]]D E
	GetResult]]E N
(]]N O
)]]O P
;]]P Q
if^^ 
(^^ 
settings^^ 
==^^ 
null^^  
)^^  !
{__ 
return`` 
;`` 
}aa 
ifii 
(ii 
settingsii 
.ii 
	Authorityii "
!=ii# %
nullii& *
)ii* +
{jj 
optionskk 
.kk 
Issuerkk 
=kk  
settingskk! )
.kk) *
	Authoritykk* 3
;kk3 4
optionsll 
.ll 
	Audiencesll !
.ll! "
Addll" %
(ll% &
settingsll& .
.ll. /
Audiencell/ 7
)ll7 8
;ll8 9
ifww 
(ww 
settingsww 
.ww &
DisableTokenTypeValidationww 7
)ww7 8
{xx 
optionsyy 
.yy %
TokenValidationParametersyy 5
.yy5 6
TypeValidatoryy6 C
=yyD E
(yyF G
typeyyG K
,yyK L
tokenyyM R
,yyR S

parametersyyT ^
)yy^ _
=>zz 
JsonWebTokenTypeszz ,
.zz, -
AccessTokenzz- 8
;zz8 9
}{{ 
}|| 
CreateTenantScope
ÄÄ 
(
ÄÄ 
settings
ÄÄ &
.
ÄÄ& '
Tenant
ÄÄ' -
)
ÄÄ- .
.
ÄÄ. /

UsingAsync
ÄÄ/ 9
(
ÄÄ9 :
async
ÄÄ: ?
scope
ÄÄ@ E
=>
ÄÄF H
{
ÅÅ 
var
ÇÇ 
service
ÇÇ 
=
ÇÇ 
scope
ÇÇ #
.
ÇÇ# $
ServiceProvider
ÇÇ$ 3
.
ÇÇ3 4

GetService
ÇÇ4 >
<
ÇÇ> ?"
IOpenIdServerService
ÇÇ? S
>
ÇÇS T
(
ÇÇT U
)
ÇÇU V
;
ÇÇV W
if
ÉÉ 
(
ÉÉ 
service
ÉÉ 
==
ÉÉ 
null
ÉÉ #
)
ÉÉ# $
{
ÑÑ 
return
ÖÖ 
;
ÖÖ 
}
ÜÜ 
var
àà 
configuration
àà !
=
àà" #
await
àà$ )$
GetServerSettingsAsync
àà* @
(
àà@ A
service
ààA H
)
ààH I
;
ààI J
if
ââ 
(
ââ 
configuration
ââ !
==
ââ" $
null
ââ% )
)
ââ) *
{
ää 
return
ãã 
;
ãã 
}
åå 
options
éé 
.
éé 
Configuration
éé %
=
éé& '
new
éé( +(
OpenIdConnectConfiguration
éé, F
{
èè 
Issuer
êê 
=
êê 
configuration
êê *
.
êê* +
	Authority
êê+ 4
?
êê4 5
.
êê5 6
AbsoluteUri
êê6 A
}
ëë 
;
ëë 
foreach
îî 
(
îî 
var
îî 
key
îî  
in
îî! #
await
îî$ )
service
îî* 1
.
îî1 2!
GetSigningKeysAsync
îî2 E
(
îîE F
)
îîF G
)
îîG H
{
ïï 
options
ññ 
.
ññ 
Configuration
ññ )
.
ññ) *
SigningKeys
ññ* 5
.
ññ5 6
Add
ññ6 9
(
ññ9 :
key
ññ: =
)
ññ= >
;
ññ> ?
}
óó 
foreach
öö 
(
öö 
var
öö 
key
öö  
in
öö! #
await
öö$ )
service
öö* 1
.
öö1 2$
GetEncryptionKeysAsync
öö2 H
(
ööH I
)
ööI J
)
ööJ K
{
õõ 
options
úú 
.
úú #
EncryptionCredentials
úú 1
.
úú1 2
Add
úú2 5
(
úú5 6
new
úú6 9#
EncryptingCredentials
úú: O
(
úúO P
key
úúP S
,
úúS T 
SecurityAlgorithms
ùù *
.
ùù* +
RsaOAEP
ùù+ 2
,
ùù2 3 
SecurityAlgorithms
ùù4 F
.
ùùF G!
Aes256CbcHmacSha512
ùùG Z
)
ùùZ [
)
ùù[ \
;
ùù\ ]
}
ûû 
options
££ 
.
££ 
	Audiences
££ !
.
££! "
Add
££" %
(
££% &
OpenIdConstants
££& 5
.
££5 6
Prefixes
££6 >
.
££> ?
Tenant
££? E
+
££F G
_shellSettings
££H V
.
££V W
Name
££W [
)
££[ \
;
££\ ]
options
¶¶ 
.
¶¶ (
EnableTokenEntryValidation
¶¶ 2
=
¶¶3 4
configuration
¶¶5 B
.
¶¶B C&
UseReferenceAccessTokens
¶¶C [
;
¶¶[ \
if
™™ 
(
™™ 
configuration
™™ !
.
™™! "
	Authority
™™" +
!=
™™, .
null
™™/ 3
)
™™3 4
{
´´ 
options
¨¨ 
.
¨¨ '
TokenValidationParameters
¨¨ 5
.
¨¨5 6
ValidIssuer
¨¨6 A
=
¨¨B C
configuration
¨¨D Q
.
¨¨Q R
	Authority
¨¨R [
.
¨¨[ \
AbsoluteUri
¨¨\ g
;
¨¨g h
}
≠≠ 
else
ÆÆ 
{
ØØ 
options
∞∞ 
.
∞∞ '
TokenValidationParameters
∞∞ 5
.
∞∞5 6
IssuerValidator
∞∞6 E
=
∞∞F G
(
∞∞H I
issuer
∞∞I O
,
∞∞O P
token
∞∞Q V
,
∞∞V W

parameters
∞∞X b
)
∞∞b c
=>
∞∞d f
{
±± 
if
≤≤ 
(
≤≤ 
!
≤≤ 
Uri
≤≤  
.
≤≤  !
	TryCreate
≤≤! *
(
≤≤* +
issuer
≤≤+ 1
,
≤≤1 2
UriKind
≤≤3 :
.
≤≤: ;
Absolute
≤≤; C
,
≤≤C D
out
≤≤E H
Uri
≤≤I L
uri
≤≤M P
)
≤≤P Q
)
≤≤Q R
{
≥≥ 
throw
¥¥ !
new
¥¥" %1
#SecurityTokenInvalidIssuerException
¥¥& I
(
¥¥I J
$str
¥¥J j
)
¥¥j k
;
¥¥k l
}
µµ 
var
∑∑ 
tenant
∑∑ "
=
∑∑# $ 
_runningShellTable
∑∑% 7
.
∑∑7 8
Match
∑∑8 =
(
∑∑= >

HostString
∑∑> H
.
∑∑H I
FromUriComponent
∑∑I Y
(
∑∑Y Z
uri
∑∑Z ]
)
∑∑] ^
,
∑∑^ _
uri
∑∑` c
.
∑∑c d
AbsolutePath
∑∑d p
)
∑∑p q
;
∑∑q r
if
∏∏ 
(
∏∏ 
tenant
∏∏ "
==
∏∏# %
null
∏∏& *
||
∏∏+ -
!
∏∏. /
String
∏∏/ 5
.
∏∏5 6
Equals
∏∏6 <
(
∏∏< =
tenant
∏∏= C
.
∏∏C D
Name
∏∏D H
,
∏∏H I
settings
∏∏J R
.
∏∏R S
Tenant
∏∏S Y
)
∏∏Y Z
)
∏∏Z [
{
ππ 
throw
∫∫ !
new
∫∫" %1
#SecurityTokenInvalidIssuerException
∫∫& I
(
∫∫I J
$str
∫∫J j
)
∫∫j k
;
∫∫k l
}
ªª 
return
ΩΩ 
issuer
ΩΩ %
;
ΩΩ% &
}
ææ 
;
ææ 
}
øø 
}
¿¿ 
)
¿¿ 
.
¿¿ 

GetAwaiter
¿¿ 
(
¿¿ 
)
¿¿ 
.
¿¿ 
	GetResult
¿¿ %
(
¿¿% &
)
¿¿& '
;
¿¿' (
}
¡¡ 	
public
√√ 
void
√√ 
	Configure
√√ 
(
√√ 7
)OpenIddictValidationDataProtectionOptions
√√ G
options
√√H O
)
√√O P
{
ƒƒ 	
var
≈≈ 
settings
≈≈ 
=
≈≈ (
GetValidationSettingsAsync
≈≈ 5
(
≈≈5 6
)
≈≈6 7
.
≈≈7 8

GetAwaiter
≈≈8 B
(
≈≈B C
)
≈≈C D
.
≈≈D E
	GetResult
≈≈E N
(
≈≈N O
)
≈≈O P
;
≈≈P Q
if
∆∆ 
(
∆∆ 
settings
∆∆ 
==
∆∆ 
null
∆∆  
)
∆∆  !
{
«« 
return
»» 
;
»» 
}
…… 
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
String
ÕÕ 
.
ÕÕ 
IsNullOrEmpty
ÕÕ %
(
ÕÕ% &
settings
ÕÕ& .
.
ÕÕ. /
Tenant
ÕÕ/ 5
)
ÕÕ5 6
&&
ÕÕ7 9
!
ŒŒ 
String
ŒŒ 
.
ŒŒ 
Equals
ŒŒ 
(
ŒŒ 
settings
ŒŒ '
.
ŒŒ' (
Tenant
ŒŒ( .
,
ŒŒ. /
_shellSettings
ŒŒ0 >
.
ŒŒ> ?
Name
ŒŒ? C
)
ŒŒC D
)
ŒŒD E
{
œœ 
CreateTenantScope
–– !
(
––! "
settings
––" *
.
––* +
Tenant
––+ 1
)
––1 2
.
––2 3

UsingAsync
––3 =
(
––= >
async
––> C
scope
––D I
=>
––J L
{
—— 
scope
÷÷ 
.
÷÷ 
ShellContext
÷÷ &
.
÷÷& '
AddDependentShell
÷÷' 8
(
÷÷8 9
await
÷÷9 >

_shellHost
÷÷? I
.
÷÷I J*
GetOrCreateShellContextAsync
÷÷J f
(
÷÷f g
_shellSettings
÷÷g u
)
÷÷u v
)
÷÷v w
;
÷÷w x
options
€€ 
.
€€ $
DataProtectionProvider
€€ 2
=
€€3 4
scope
€€5 :
.
€€: ;
ServiceProvider
€€; J
.
€€J K'
GetDataProtectionProvider
€€K d
(
€€d e
)
€€e f
;
€€f g
}
‹‹ 
)
‹‹ 
.
‹‹ 

GetAwaiter
‹‹ 
(
‹‹ 
)
‹‹ 
.
‹‹  
	GetResult
‹‹  )
(
‹‹) *
)
‹‹* +
;
‹‹+ ,
}
›› 
}
ﬁﬁ 	
public
‡‡ 
void
‡‡ 
	Configure
‡‡ 
(
‡‡ 
string
‡‡ $
name
‡‡% )
,
‡‡) *%
ApiAuthorizationOptions
‡‡+ B
options
‡‡C J
)
‡‡J K
{
·· 	
options
ÊÊ 
.
ÊÊ %
ApiAuthenticationScheme
ÊÊ +
=
ÊÊ, -4
&OpenIddictValidationAspNetCoreDefaults
ÊÊ. T
.
ÊÊT U"
AuthenticationScheme
ÊÊU i
;
ÊÊi j
}
ÁÁ 	
public
ÈÈ 
void
ÈÈ 
	Configure
ÈÈ 
(
ÈÈ %
ApiAuthorizationOptions
ÈÈ 5
options
ÈÈ6 =
)
ÈÈ= >
=>
ÍÍ 
Debug
ÍÍ 
.
ÍÍ 
Fail
ÍÍ 
(
ÍÍ 
$str
ÍÍ K
)
ÍÍK L
;
ÍÍL M
private
ÏÏ 

ShellScope
ÏÏ 
CreateTenantScope
ÏÏ ,
(
ÏÏ, -
string
ÏÏ- 3
tenant
ÏÏ4 :
)
ÏÏ: ;
{
ÌÌ 	
if
ÔÔ 
(
ÔÔ 
String
ÔÔ 
.
ÔÔ 
IsNullOrEmpty
ÔÔ $
(
ÔÔ$ %
tenant
ÔÔ% +
)
ÔÔ+ ,
||
ÔÔ- /
String
ÔÔ0 6
.
ÔÔ6 7
Equals
ÔÔ7 =
(
ÔÔ= >
tenant
ÔÔ> D
,
ÔÔD E
_shellSettings
ÔÔF T
.
ÔÔT U
Name
ÔÔU Y
)
ÔÔY Z
)
ÔÔZ [
{
 
return
ÒÒ 

ShellScope
ÒÒ !
.
ÒÒ! "
Current
ÒÒ" )
;
ÒÒ) *
}
ÚÚ 
return
ÙÙ 

_shellHost
ÙÙ 
.
ÙÙ 
GetScopeAsync
ÙÙ +
(
ÙÙ+ ,
tenant
ÙÙ, 2
)
ÙÙ2 3
.
ÙÙ3 4

GetAwaiter
ÙÙ4 >
(
ÙÙ> ?
)
ÙÙ? @
.
ÙÙ@ A
	GetResult
ÙÙA J
(
ÙÙJ K
)
ÙÙK L
;
ÙÙL M
}
ıı 	
private
˜˜ 
async
˜˜ 
Task
˜˜ 
<
˜˜ "
OpenIdServerSettings
˜˜ /
>
˜˜/ 0$
GetServerSettingsAsync
˜˜1 G
(
˜˜G H"
IOpenIdServerService
˜˜H \
service
˜˜] d
)
˜˜d e
{
¯¯ 	
var
˘˘ 
settings
˘˘ 
=
˘˘ 
await
˘˘  
service
˘˘! (
.
˘˘( )
GetSettingsAsync
˘˘) 9
(
˘˘9 :
)
˘˘: ;
;
˘˘; <
if
˙˙ 
(
˙˙ 
(
˙˙ 
await
˙˙ 
service
˙˙ 
.
˙˙ #
ValidateSettingsAsync
˙˙ 4
(
˙˙4 5
settings
˙˙5 =
)
˙˙= >
)
˙˙> ?
.
˙˙? @
Any
˙˙@ C
(
˙˙C D
result
˙˙D J
=>
˙˙K M
result
˙˙N T
!=
˙˙U W
ValidationResult
˙˙X h
.
˙˙h i
Success
˙˙i p
)
˙˙p q
)
˙˙q r
{
˚˚ 
if
¸¸ 
(
¸¸ 
_shellSettings
¸¸ "
.
¸¸" #
State
¸¸# (
==
¸¸) +
TenantState
¸¸, 7
.
¸¸7 8
Running
¸¸8 ?
)
¸¸? @
{
˝˝ 
_logger
˛˛ 
.
˛˛ 

LogWarning
˛˛ &
(
˛˛& '
$str
˛˛' _
)
˛˛_ `
;
˛˛` a
}
ˇˇ 
return
ÅÅ 
null
ÅÅ 
;
ÅÅ 
}
ÇÇ 
return
ÑÑ 
settings
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
private
áá 
async
áá 
Task
áá 
<
áá &
OpenIdValidationSettings
áá 3
>
áá3 4(
GetValidationSettingsAsync
áá5 O
(
ááO P
)
ááP Q
{
àà 	
var
ââ 
settings
ââ 
=
ââ 
await
ââ   
_validationService
ââ! 3
.
ââ3 4
GetSettingsAsync
ââ4 D
(
ââD E
)
ââE F
;
ââF G
if
ää 
(
ää 
(
ää 
await
ää  
_validationService
ää )
.
ää) *#
ValidateSettingsAsync
ää* ?
(
ää? @
settings
ää@ H
)
ääH I
)
ääI J
.
ääJ K
Any
ääK N
(
ääN O
result
ääO U
=>
ääV X
result
ääY _
!=
ää` b
ValidationResult
ääc s
.
ääs t
Success
äät {
)
ää{ |
)
ää| }
{
ãã 
if
åå 
(
åå 
_shellSettings
åå "
.
åå" #
State
åå# (
==
åå) +
TenantState
åå, 7
.
åå7 8
Running
åå8 ?
)
åå? @
{
çç 
_logger
éé 
.
éé 

LogWarning
éé &
(
éé& '
$str
éé' _
)
éé_ `
;
éé` a
}
èè 
return
ëë 
null
ëë 
;
ëë 
}
íí 
return
îî 
settings
îî 
;
îî 
}
ïï 	
}
ññ 
}óó Ì˘
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Controllers\AccessController.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Controllers (
{ 
[ 
	Authorize 
, 
Feature 
( 
OpenIdConstants '
.' (
Features( 0
.0 1
Server1 7
)7 8
]8 9
public 

class 
AccessController !
:" #

Controller$ .
{ 
private 
readonly %
IOpenIdApplicationManager 2
_applicationManager3 F
;F G
private   
readonly   '
IOpenIdAuthorizationManager   4!
_authorizationManager  5 J
;  J K
private!! 
readonly!! 
IOpenIdScopeManager!! ,
_scopeManager!!- :
;!!: ;
private"" 
readonly"" 
ShellSettings"" &
_shellSettings""' 5
;""5 6
public$$ 
AccessController$$ 
($$  %
IOpenIdApplicationManager%% %
applicationManager%%& 8
,%%8 9'
IOpenIdAuthorizationManager&& ' 
authorizationManager&&( <
,&&< =
IOpenIdScopeManager'' 
scopeManager''  ,
,'', -
ShellSettings(( 
shellSettings(( '
)((' (
{)) 	
_applicationManager** 
=**  !
applicationManager**" 4
;**4 5!
_authorizationManager++ !
=++" # 
authorizationManager++$ 8
;++8 9
_scopeManager,, 
=,, 
scopeManager,, (
;,,( )
_shellSettings-- 
=-- 
shellSettings-- *
;--* +
}.. 	
[00 	
AllowAnonymous00	 
,00 
HttpGet00  
,00  !
HttpPost00" *
,00* +"
IgnoreAntiforgeryToken00, B
]00B C
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
	Authorize11) 2
(112 3
)113 4
{22 	
var33 
response33 
=33 
HttpContext33 &
.33& ''
GetOpenIddictServerResponse33' B
(33B C
)33C D
;33D E
if44 
(44 
response44 
!=44 
null44  
)44  !
{55 
return66 
View66 
(66 
$str66 #
,66# $
new66% (
ErrorViewModel66) 7
{77 
Error88 
=88 
response88 $
.88$ %
Error88% *
,88* +
ErrorDescription99 $
=99% &
response99' /
.99/ 0
ErrorDescription990 @
}:: 
):: 
;:: 
};; 
var== 
request== 
=== 
HttpContext== %
.==% &&
GetOpenIddictServerRequest==& @
(==@ A
)==A B
;==B C
if>> 
(>> 
request>> 
==>> 
null>> 
)>>  
{?? 
return@@ 
NotFound@@ 
(@@  
)@@  !
;@@! "
}AA 
varEE 
resultEE 
=EE 
awaitEE 
HttpContextEE *
.EE* +
AuthenticateAsyncEE+ <
(EE< =
)EE= >
;EE> ?
ifFF 
(FF 
resultFF 
==FF 
nullFF 
||FF !
!FF" #
resultFF# )
.FF) *
	SucceededFF* 3
||FF4 6
requestFF7 >
.FF> ?
	HasPromptFF? H
(FFH I
PromptsFFI P
.FFP Q
LoginFFQ V
)FFV W
)FFW X
{GG 
returnHH 
RedirectToLoginPageHH *
(HH* +
requestHH+ 2
)HH2 3
;HH3 4
}II 
ifMM 
(MM 
requestMM 
.MM 
MaxAgeMM 
!=MM !
nullMM" &
&&MM' )
resultMM* 0
.MM0 1

PropertiesMM1 ;
.MM; <
	IssuedUtcMM< E
!=MMF H
nullMMI M
&&MMN P
DateTimeOffsetNN 
.NN 
UtcNowNN %
-NN& '
resultNN( .
.NN. /

PropertiesNN/ 9
.NN9 :
	IssuedUtcNN: C
>NND E
TimeSpanNNF N
.NNN O
FromSecondsNNO Z
(NNZ [
requestNN[ b
.NNb c
MaxAgeNNc i
.NNi j
ValueNNj o
)NNo p
)NNp q
{OO 
returnPP 
RedirectToLoginPagePP *
(PP* +
requestPP+ 2
)PP2 3
;PP3 4
}QQ 
varSS 
applicationSS 
=SS 
awaitSS #
_applicationManagerSS$ 7
.SS7 8
FindByClientIdAsyncSS8 K
(SSK L
requestSSL S
.SSS T
ClientIdSST \
)SS\ ]
??SS^ `
throwTT 
newTT %
InvalidOperationExceptionTT 3
(TT3 4
$strTT4 ^
)TT^ _
;TT_ `
varVV 
authorizationsVV 
=VV  
awaitVV! &!
_authorizationManagerVV' <
.VV< =
	FindAsyncVV= F
(VVF G
subjectWW 
:WW 
resultWW 
.WW  
	PrincipalWW  )
.WW) *
GetUserIdentifierWW* ;
(WW; <
)WW< =
,WW= >
clientXX 
:XX 
awaitXX 
_applicationManagerXX 1
.XX1 2

GetIdAsyncXX2 <
(XX< =
applicationXX= H
)XXH I
,XXI J
statusYY 
:YY 
StatusesYY  
.YY  !
ValidYY! &
,YY& '
typeZZ 
:ZZ 
AuthorizationTypesZZ (
.ZZ( )
	PermanentZZ) 2
,ZZ2 3
scopes[[ 
:[[ 
request[[ 
.[[  
	GetScopes[[  )
([[) *
)[[* +
)[[+ ,
.[[, -
ToListAsync[[- 8
([[8 9
)[[9 :
;[[: ;
switch]] 
(]] 
await]] 
_applicationManager]] -
.]]- .
GetConsentTypeAsync]]. A
(]]A B
application]]B M
)]]M N
)]]N O
{^^ 
case__ 
ConsentTypes__ !
.__! "
External__" *
when__+ /
!__0 1
authorizations__1 ?
.__? @
Any__@ C
(__C D
)__D E
:__E F
return`` 
Forbid`` !
(``! "
new``" %$
AuthenticationProperties``& >
(``> ?
new``? B

Dictionary``C M
<``M N
string``N T
,``T U
string``V \
>``\ ]
{aa 
[bb /
#OpenIddictServerAspNetCoreConstantsbb <
.bb< =

Propertiesbb= G
.bbG H
ErrorbbH M
]bbM N
=bbO P
ErrorsbbQ W
.bbW X
ConsentRequiredbbX g
,bbg h
[cc /
#OpenIddictServerAspNetCoreConstantscc <
.cc< =

Propertiescc= G
.ccG H
ErrorDescriptionccH X
]ccX Y
=ccZ [
$strdd b
}ee 
)ee 
,ee .
"OpenIddictServerAspNetCoreDefaultsee :
.ee: ; 
AuthenticationSchemeee; O
)eeO P
;eeP Q
casegg 
ConsentTypesgg !
.gg! "
Implicitgg" *
:gg* +
casehh 
ConsentTypeshh !
.hh! "
Externalhh" *
whenhh+ /
authorizationshh0 >
.hh> ?
Anyhh? B
(hhB C
)hhC D
:hhD E
caseii 
ConsentTypesii !
.ii! "
Explicitii" *
whenii+ /
authorizationsii0 >
.ii> ?
Anyii? B
(iiB C
)iiC D
&&iiE G
!iiH I
requestiiI P
.iiP Q
	HasPromptiiQ Z
(iiZ [
Promptsii[ b
.iib c
Consentiic j
)iij k
:iik l
varjj 
identityjj  
=jj! "
newjj# &
ClaimsIdentityjj' 5
(jj5 6
resultjj6 <
.jj< =
	Principaljj= F
.jjF G
ClaimsjjG M
,jjM N.
"OpenIddictServerAspNetCoreDefaultsjjO q
.jjq r!
AuthenticationScheme	jjr Ü
)
jjÜ á
;
jjá à
varkk 
	principalkk !
=kk" #
newkk$ '
ClaimsPrincipalkk( 7
(kk7 8
identitykk8 @
)kk@ A
;kkA B
identitymm 
.mm 
AddClaimmm %
(mm% &
OpenIdConstantsmm& 5
.mm5 6
Claimsmm6 <
.mm< =

EntityTypemm= G
,mmG H
OpenIdConstantsmmI X
.mmX Y
EntityTypesmmY d
.mmd e
Usermme i
,mmi j
Destinationsnn $
.nn$ %
AccessTokennn% 0
,nn0 1
Destinationsnn2 >
.nn> ?
IdentityTokennn? L
)nnL M
;nnM N
ifss 
(ss 
stringss 
.ss 
IsNullOrEmptyss ,
(ss, -
resultss- 3
.ss3 4
	Principalss4 =
.ss= >
	FindFirstss> G
(ssG H
ClaimsssH N
.ssN O
SubjectssO V
)ssV W
?ssW X
.ssX Y
ValuessY ^
)ss^ _
)ss_ `
{tt 
identityuu  
.uu  !
AddClaimuu! )
(uu) *
newuu* -
Claimuu. 3
(uu3 4
Claimsuu4 :
.uu: ;
Subjectuu; B
,uuB C
resultuuD J
.uuJ K
	PrincipaluuK T
.uuT U
GetUserIdentifieruuU f
(uuf g
)uug h
)uuh i
)uui j
;uuj k
}vv 
	principalxx 
.xx 
	SetScopesxx '
(xx' (
requestxx( /
.xx/ 0
	GetScopesxx0 9
(xx9 :
)xx: ;
)xx; <
;xx< =
	principalyy 
.yy 
SetResourcesyy *
(yy* +
awaityy+ 0
GetResourcesAsyncyy1 B
(yyB C
requestyyC J
.yyJ K
	GetScopesyyK T
(yyT U
)yyU V
)yyV W
)yyW X
;yyX Y
var}} 
authorization}} %
=}}& '
authorizations}}( 6
.}}6 7
LastOrDefault}}7 D
(}}D E
)}}E F
;}}F G
if~~ 
(~~ 
authorization~~ %
==~~& (
null~~) -
)~~- .
{ 
authorization
ÄÄ %
=
ÄÄ& '
await
ÄÄ( -#
_authorizationManager
ÄÄ. C
.
ÄÄC D
CreateAsync
ÄÄD O
(
ÄÄO P
	principal
ÅÅ %
:
ÅÅ% &
	principal
ÅÅ' 0
,
ÅÅ0 1
subject
ÇÇ #
:
ÇÇ# $
	principal
ÇÇ% .
.
ÇÇ. /
GetUserIdentifier
ÇÇ/ @
(
ÇÇ@ A
)
ÇÇA B
,
ÇÇB C
client
ÉÉ "
:
ÉÉ" #
await
ÉÉ$ )!
_applicationManager
ÉÉ* =
.
ÉÉ= >

GetIdAsync
ÉÉ> H
(
ÉÉH I
application
ÉÉI T
)
ÉÉT U
,
ÉÉU V
type
ÑÑ  
:
ÑÑ  ! 
AuthorizationTypes
ÑÑ" 4
.
ÑÑ4 5
	Permanent
ÑÑ5 >
,
ÑÑ> ?
scopes
ÖÖ "
:
ÖÖ" #
	principal
ÖÖ$ -
.
ÖÖ- .
	GetScopes
ÖÖ. 7
(
ÖÖ7 8
)
ÖÖ8 9
)
ÖÖ9 :
;
ÖÖ: ;
}
ÜÜ 
	principal
àà 
.
àà  
SetAuthorizationId
àà 0
(
àà0 1
await
àà1 6#
_authorizationManager
àà7 L
.
ààL M

GetIdAsync
ààM W
(
ààW X
authorization
ààX e
)
ààe f
)
ààf g
;
ààg h
foreach
ää 
(
ää 
var
ää  
claim
ää! &
in
ää' )
	principal
ää* 3
.
ää3 4
Claims
ää4 :
)
ää: ;
{
ãã 
claim
åå 
.
åå 
SetDestinations
åå -
(
åå- .
GetDestinations
åå. =
(
åå= >
claim
åå> C
,
ååC D
	principal
ååE N
)
ååN O
)
ååO P
;
ååP Q
}
çç 
return
èè 
SignIn
èè !
(
èè! "
	principal
èè" +
,
èè+ ,0
"OpenIddictServerAspNetCoreDefaults
èè- O
.
èèO P"
AuthenticationScheme
èèP d
)
èèd e
;
èèe f
case
ëë 
ConsentTypes
ëë !
.
ëë! "
Explicit
ëë" *
when
ëë+ /
request
ëë0 7
.
ëë7 8
	HasPrompt
ëë8 A
(
ëëA B
Prompts
ëëB I
.
ëëI J
None
ëëJ N
)
ëëN O
:
ëëO P
return
íí 
Forbid
íí !
(
íí! "
new
íí" %&
AuthenticationProperties
íí& >
(
íí> ?
new
íí? B

Dictionary
ííC M
<
ííM N
string
ííN T
,
ííT U
string
ííV \
>
íí\ ]
{
ìì 
[
îî 1
#OpenIddictServerAspNetCoreConstants
îî <
.
îî< =

Properties
îî= G
.
îîG H
Error
îîH M
]
îîM N
=
îîO P
Errors
îîQ W
.
îîW X
ConsentRequired
îîX g
,
îîg h
[
ïï 1
#OpenIddictServerAspNetCoreConstants
ïï <
.
ïï< =

Properties
ïï= G
.
ïïG H
ErrorDescription
ïïH X
]
ïïX Y
=
ïïZ [
$str
ññ C
}
óó 
)
óó 
,
óó 0
"OpenIddictServerAspNetCoreDefaults
óó :
.
óó: ;"
AuthenticationScheme
óó; O
)
óóO P
;
óóP Q
default
ôô 
:
ôô 
return
öö 
View
öö 
(
öö  
new
öö  # 
AuthorizeViewModel
öö$ 6
{
õõ 
ApplicationName
úú '
=
úú( )
await
úú* /!
_applicationManager
úú0 C
.
úúC D*
GetLocalizedDisplayNameAsync
úúD `
(
úú` a
application
úúa l
)
úúl m
,
úúm n
	RequestId
ùù !
=
ùù" #
request
ùù$ +
.
ùù+ ,
	RequestId
ùù, 5
,
ùù5 6
Scope
ûû 
=
ûû 
request
ûû  '
.
ûû' (
Scope
ûû( -
}
üü 
)
üü 
;
üü 
}
†† 
IActionResult
¢¢ !
RedirectToLoginPage
¢¢ -
(
¢¢- .
OpenIddictRequest
¢¢. ?
request
¢¢@ G
)
¢¢G H
{
££ 
if
¶¶ 
(
¶¶ 
request
¶¶ 
.
¶¶ 
	HasPrompt
¶¶ %
(
¶¶% &
Prompts
¶¶& -
.
¶¶- .
None
¶¶. 2
)
¶¶2 3
)
¶¶3 4
{
ßß 
return
®® 
Forbid
®® !
(
®®! "
new
®®" %&
AuthenticationProperties
®®& >
(
®®> ?
new
®®? B

Dictionary
®®C M
<
®®M N
string
®®N T
,
®®T U
string
®®V \
>
®®\ ]
{
©© 
[
™™ 1
#OpenIddictServerAspNetCoreConstants
™™ <
.
™™< =

Properties
™™= G
.
™™G H
Error
™™H M
]
™™M N
=
™™O P
Errors
™™Q W
.
™™W X
LoginRequired
™™X e
,
™™e f
[
´´ 1
#OpenIddictServerAspNetCoreConstants
´´ <
.
´´< =

Properties
´´= G
.
´´G H
ErrorDescription
´´H X
]
´´X Y
=
´´Z [
$str
´´\ x
}
¨¨ 
)
¨¨ 
,
¨¨ 0
"OpenIddictServerAspNetCoreDefaults
¨¨ :
.
¨¨: ;"
AuthenticationScheme
¨¨; O
)
¨¨O P
;
¨¨P Q
}
≠≠ 
string
ØØ 
GetRedirectUrl
ØØ %
(
ØØ% &
)
ØØ& '
{
∞∞ 
var
≤≤ 

parameters
≤≤ "
=
≤≤# $
Request
≤≤% ,
.
≤≤, -
Query
≤≤- 2
.
≤≤2 3
ToDictionary
≤≤3 ?
(
≤≤? @
kvp
≤≤@ C
=>
≤≤D F
kvp
≤≤G J
.
≤≤J K
Key
≤≤K N
,
≤≤N O
kvp
≤≤P S
=>
≤≤T V
kvp
≤≤W Z
.
≤≤Z [
Value
≤≤[ `
)
≤≤` a
;
≤≤a b

parameters
≥≥ 
[
≥≥ 

Parameters
≥≥ )
.
≥≥) *
Prompt
≥≥* 0
]
≥≥0 1
=
≥≥2 3
$str
≥≥4 >
;
≥≥> ?
return
µµ 
Request
µµ "
.
µµ" #
PathBase
µµ# +
+
µµ, -
Request
µµ. 5
.
µµ5 6
Path
µµ6 :
+
µµ; <
QueryString
µµ= H
.
µµH I
Create
µµI O
(
µµO P

parameters
µµP Z
)
µµZ [
;
µµ[ \
}
∂∂ 
return
∏∏ 
	Challenge
∏∏  
(
∏∏  !
new
∏∏! $&
AuthenticationProperties
∏∏% =
{
ππ 
RedirectUri
∫∫ 
=
∫∫  !
GetRedirectUrl
∫∫" 0
(
∫∫0 1
)
∫∫1 2
}
ªª 
)
ªª 
;
ªª 
}
ºº 
}
ΩΩ 	
[
øø 	

ActionName
øø	 
(
øø 
nameof
øø 
(
øø 
	Authorize
øø $
)
øø$ %
)
øø% &
]
øø& '
[
¿¿ 	
FormValueRequired
¿¿	 
(
¿¿ 
$str
¿¿ *
)
¿¿* +
,
¿¿+ ,
HttpPost
¿¿- 5
]
¿¿5 6
public
¡¡ 
async
¡¡ 
Task
¡¡ 
<
¡¡ 
IActionResult
¡¡ '
>
¡¡' (
AuthorizeAccept
¡¡) 8
(
¡¡8 9
)
¡¡9 :
{
¬¬ 	
var
»» 
response
»» 
=
»» 
HttpContext
»» &
.
»»& ')
GetOpenIddictServerResponse
»»' B
(
»»B C
)
»»C D
;
»»D E
if
…… 
(
…… 
response
…… 
!=
…… 
null
……  
)
……  !
{
   
return
ÀÀ 
View
ÀÀ 
(
ÀÀ 
$str
ÀÀ #
,
ÀÀ# $
new
ÀÀ% (
ErrorViewModel
ÀÀ) 7
{
ÃÃ 
Error
ÕÕ 
=
ÕÕ 
response
ÕÕ $
.
ÕÕ$ %
Error
ÕÕ% *
,
ÕÕ* +
ErrorDescription
ŒŒ $
=
ŒŒ% &
response
ŒŒ' /
.
ŒŒ/ 0
ErrorDescription
ŒŒ0 @
}
œœ 
)
œœ 
;
œœ 
}
–– 
var
““ 
request
““ 
=
““ 
HttpContext
““ %
.
““% &(
GetOpenIddictServerRequest
““& @
(
““@ A
)
““A B
;
““B C
if
”” 
(
”” 
request
”” 
==
”” 
null
”” 
)
””  
{
‘‘ 
return
’’ 
NotFound
’’ 
(
’’  
)
’’  !
;
’’! "
}
÷÷ 
var
ÿÿ 
application
ÿÿ 
=
ÿÿ 
await
ÿÿ #!
_applicationManager
ÿÿ$ 7
.
ÿÿ7 8!
FindByClientIdAsync
ÿÿ8 K
(
ÿÿK L
request
ÿÿL S
.
ÿÿS T
ClientId
ÿÿT \
)
ÿÿ\ ]
??
ŸŸ 
throw
ŸŸ 
new
ŸŸ '
InvalidOperationException
ŸŸ 6
(
ŸŸ6 7
$str
ŸŸ7 a
)
ŸŸa b
;
ŸŸb c
var
€€ 
authorizations
€€ 
=
€€  
await
€€! &#
_authorizationManager
€€' <
.
€€< =
	FindAsync
€€= F
(
€€F G
subject
‹‹ 
:
‹‹ 
User
‹‹ 
.
‹‹ 
GetUserIdentifier
‹‹ /
(
‹‹/ 0
)
‹‹0 1
,
‹‹1 2
client
›› 
:
›› 
await
›› !
_applicationManager
›› 1
.
››1 2

GetIdAsync
››2 <
(
››< =
application
››= H
)
››H I
,
››I J
status
ﬁﬁ 
:
ﬁﬁ 
Statuses
ﬁﬁ  
.
ﬁﬁ  !
Valid
ﬁﬁ! &
,
ﬁﬁ& '
type
ﬂﬂ 
:
ﬂﬂ  
AuthorizationTypes
ﬂﬂ (
.
ﬂﬂ( )
	Permanent
ﬂﬂ) 2
,
ﬂﬂ2 3
scopes
‡‡ 
:
‡‡ 
request
‡‡ 
.
‡‡  
	GetScopes
‡‡  )
(
‡‡) *
)
‡‡* +
)
‡‡+ ,
.
‡‡, -
ToListAsync
‡‡- 8
(
‡‡8 9
)
‡‡9 :
;
‡‡: ;
switch
ÂÂ 
(
ÂÂ 
await
ÂÂ !
_applicationManager
ÂÂ -
.
ÂÂ- .!
GetConsentTypeAsync
ÂÂ. A
(
ÂÂA B
application
ÂÂB M
)
ÂÂM N
)
ÂÂN O
{
ÊÊ 
case
ÁÁ 
ConsentTypes
ÁÁ !
.
ÁÁ! "
External
ÁÁ" *
when
ÁÁ+ /
!
ÁÁ0 1
authorizations
ÁÁ1 ?
.
ÁÁ? @
Any
ÁÁ@ C
(
ÁÁC D
)
ÁÁD E
:
ÁÁE F
return
ËË 
Forbid
ËË !
(
ËË! "
new
ËË" %&
AuthenticationProperties
ËË& >
(
ËË> ?
new
ËË? B

Dictionary
ËËC M
<
ËËM N
string
ËËN T
,
ËËT U
string
ËËV \
>
ËË\ ]
{
ÈÈ 
[
ÍÍ 1
#OpenIddictServerAspNetCoreConstants
ÍÍ <
.
ÍÍ< =

Properties
ÍÍ= G
.
ÍÍG H
Error
ÍÍH M
]
ÍÍM N
=
ÍÍO P
Errors
ÍÍQ W
.
ÍÍW X
ConsentRequired
ÍÍX g
,
ÍÍg h
[
ÎÎ 1
#OpenIddictServerAspNetCoreConstants
ÎÎ <
.
ÎÎ< =

Properties
ÎÎ= G
.
ÎÎG H
ErrorDescription
ÎÎH X
]
ÎÎX Y
=
ÎÎZ [
$str
ÏÏ b
}
ÌÌ 
)
ÌÌ 
,
ÌÌ 0
"OpenIddictServerAspNetCoreDefaults
ÌÌ :
.
ÌÌ: ;"
AuthenticationScheme
ÌÌ; O
)
ÌÌO P
;
ÌÌP Q
default
ÔÔ 
:
ÔÔ 
var
 
identity
  
=
! "
new
# &
ClaimsIdentity
' 5
(
5 6
User
6 :
.
: ;
Claims
; A
,
A B0
"OpenIddictServerAspNetCoreDefaults
C e
.
e f"
AuthenticationScheme
f z
)
z {
;
{ |
var
ÒÒ 
	principal
ÒÒ !
=
ÒÒ" #
new
ÒÒ$ '
ClaimsPrincipal
ÒÒ( 7
(
ÒÒ7 8
identity
ÒÒ8 @
)
ÒÒ@ A
;
ÒÒA B
identity
ÛÛ 
.
ÛÛ 
AddClaim
ÛÛ %
(
ÛÛ% &
OpenIdConstants
ÛÛ& 5
.
ÛÛ5 6
Claims
ÛÛ6 <
.
ÛÛ< =

EntityType
ÛÛ= G
,
ÛÛG H
OpenIdConstants
ÛÛI X
.
ÛÛX Y
EntityTypes
ÛÛY d
.
ÛÛd e
User
ÛÛe i
,
ÛÛi j
Destinations
ÙÙ $
.
ÙÙ$ %
AccessToken
ÙÙ% 0
,
ÙÙ0 1
Destinations
ÙÙ2 >
.
ÙÙ> ?
IdentityToken
ÙÙ? L
)
ÙÙL M
;
ÙÙM N
if
˘˘ 
(
˘˘ 
string
˘˘ 
.
˘˘ 
IsNullOrEmpty
˘˘ ,
(
˘˘, -
User
˘˘- 1
.
˘˘1 2
	FindFirst
˘˘2 ;
(
˘˘; <
Claims
˘˘< B
.
˘˘B C
Subject
˘˘C J
)
˘˘J K
?
˘˘K L
.
˘˘L M
Value
˘˘M R
)
˘˘R S
)
˘˘S T
{
˙˙ 
identity
˚˚  
.
˚˚  !
AddClaim
˚˚! )
(
˚˚) *
new
˚˚* -
Claim
˚˚. 3
(
˚˚3 4
Claims
˚˚4 :
.
˚˚: ;
Subject
˚˚; B
,
˚˚B C
User
˚˚D H
.
˚˚H I
GetUserIdentifier
˚˚I Z
(
˚˚Z [
)
˚˚[ \
)
˚˚\ ]
)
˚˚] ^
;
˚˚^ _
}
¸¸ 
	principal
˛˛ 
.
˛˛ 
	SetScopes
˛˛ '
(
˛˛' (
request
˛˛( /
.
˛˛/ 0
	GetScopes
˛˛0 9
(
˛˛9 :
)
˛˛: ;
)
˛˛; <
;
˛˛< =
	principal
ˇˇ 
.
ˇˇ 
SetResources
ˇˇ *
(
ˇˇ* +
await
ˇˇ+ 0
GetResourcesAsync
ˇˇ1 B
(
ˇˇB C
request
ˇˇC J
.
ˇˇJ K
	GetScopes
ˇˇK T
(
ˇˇT U
)
ˇˇU V
)
ˇˇV W
)
ˇˇW X
;
ˇˇX Y
var
ÉÉ 
authorization
ÉÉ %
=
ÉÉ& '
authorizations
ÉÉ( 6
.
ÉÉ6 7
LastOrDefault
ÉÉ7 D
(
ÉÉD E
)
ÉÉE F
;
ÉÉF G
if
ÑÑ 
(
ÑÑ 
authorization
ÑÑ %
==
ÑÑ& (
null
ÑÑ) -
)
ÑÑ- .
{
ÖÖ 
authorization
ÜÜ %
=
ÜÜ& '
await
ÜÜ( -#
_authorizationManager
ÜÜ. C
.
ÜÜC D
CreateAsync
ÜÜD O
(
ÜÜO P
	principal
áá %
:
áá% &
	principal
áá' 0
,
áá0 1
subject
àà #
:
àà# $
	principal
àà% .
.
àà. /
GetUserIdentifier
àà/ @
(
àà@ A
)
ààA B
,
ààB C
client
ââ "
:
ââ" #
await
ââ$ )!
_applicationManager
ââ* =
.
ââ= >

GetIdAsync
ââ> H
(
ââH I
application
ââI T
)
ââT U
,
ââU V
type
ää  
:
ää  ! 
AuthorizationTypes
ää" 4
.
ää4 5
	Permanent
ää5 >
,
ää> ?
scopes
ãã "
:
ãã" #
	principal
ãã$ -
.
ãã- .
	GetScopes
ãã. 7
(
ãã7 8
)
ãã8 9
)
ãã9 :
;
ãã: ;
}
åå 
	principal
éé 
.
éé  
SetAuthorizationId
éé 0
(
éé0 1
await
éé1 6#
_authorizationManager
éé7 L
.
ééL M

GetIdAsync
ééM W
(
ééW X
authorization
ééX e
)
éée f
)
ééf g
;
éég h
foreach
êê 
(
êê 
var
êê  
claim
êê! &
in
êê' )
	principal
êê* 3
.
êê3 4
Claims
êê4 :
)
êê: ;
{
ëë 
claim
íí 
.
íí 
SetDestinations
íí -
(
íí- .
GetDestinations
íí. =
(
íí= >
claim
íí> C
,
ííC D
	principal
ííE N
)
ííN O
)
ííO P
;
ííP Q
}
ìì 
return
ïï 
SignIn
ïï !
(
ïï! "
	principal
ïï" +
,
ïï+ ,0
"OpenIddictServerAspNetCoreDefaults
ïï- O
.
ïïO P"
AuthenticationScheme
ïïP d
)
ïïd e
;
ïïe f
}
ññ 
}
óó 	
[
ôô 	

ActionName
ôô	 
(
ôô 
nameof
ôô 
(
ôô 
	Authorize
ôô $
)
ôô$ %
)
ôô% &
]
ôô& '
[
öö 	
FormValueRequired
öö	 
(
öö 
$str
öö (
)
öö( )
,
öö) *
HttpPost
öö+ 3
]
öö3 4
public
õõ 
IActionResult
õõ 
AuthorizeDeny
õõ *
(
õõ* +
)
õõ+ ,
{
úú 	
var
ùù 
response
ùù 
=
ùù 
HttpContext
ùù &
.
ùù& ')
GetOpenIddictServerResponse
ùù' B
(
ùùB C
)
ùùC D
;
ùùD E
if
ûû 
(
ûû 
response
ûû 
!=
ûû 
null
ûû  
)
ûû  !
{
üü 
return
†† 
View
†† 
(
†† 
$str
†† #
,
††# $
new
††% (
ErrorViewModel
††) 7
{
°° 
Error
¢¢ 
=
¢¢ 
response
¢¢ $
.
¢¢$ %
Error
¢¢% *
,
¢¢* +
ErrorDescription
££ $
=
££% &
response
££' /
.
££/ 0
ErrorDescription
££0 @
}
§§ 
)
§§ 
;
§§ 
}
•• 
var
ßß 
request
ßß 
=
ßß 
HttpContext
ßß %
.
ßß% &(
GetOpenIddictServerRequest
ßß& @
(
ßß@ A
)
ßßA B
;
ßßB C
if
®® 
(
®® 
request
®® 
==
®® 
null
®® 
)
®®  
{
©© 
return
™™ 
NotFound
™™ 
(
™™  
)
™™  !
;
™™! "
}
´´ 
return
≠≠ 
Forbid
≠≠ 
(
≠≠ 0
"OpenIddictServerAspNetCoreDefaults
≠≠ <
.
≠≠< ="
AuthenticationScheme
≠≠= Q
)
≠≠Q R
;
≠≠R S
}
ÆÆ 	
[
∞∞ 	
AllowAnonymous
∞∞	 
,
∞∞ 
HttpGet
∞∞  
,
∞∞  !
HttpPost
∞∞" *
,
∞∞* +$
IgnoreAntiforgeryToken
∞∞, B
]
∞∞B C
public
±± 
async
±± 
Task
±± 
<
±± 
IActionResult
±± '
>
±±' (
Logout
±±) /
(
±±/ 0
)
±±0 1
{
≤≤ 	
var
≥≥ 
response
≥≥ 
=
≥≥ 
HttpContext
≥≥ &
.
≥≥& ')
GetOpenIddictServerResponse
≥≥' B
(
≥≥B C
)
≥≥C D
;
≥≥D E
if
¥¥ 
(
¥¥ 
response
¥¥ 
!=
¥¥ 
null
¥¥  
)
¥¥  !
{
µµ 
return
∂∂ 
View
∂∂ 
(
∂∂ 
$str
∂∂ #
,
∂∂# $
new
∂∂% (
ErrorViewModel
∂∂) 7
{
∑∑ 
Error
∏∏ 
=
∏∏ 
response
∏∏ $
.
∏∏$ %
Error
∏∏% *
,
∏∏* +
ErrorDescription
ππ $
=
ππ% &
response
ππ' /
.
ππ/ 0
ErrorDescription
ππ0 @
}
∫∫ 
)
∫∫ 
;
∫∫ 
}
ªª 
var
ΩΩ 
request
ΩΩ 
=
ΩΩ 
HttpContext
ΩΩ %
.
ΩΩ% &(
GetOpenIddictServerRequest
ΩΩ& @
(
ΩΩ@ A
)
ΩΩA B
;
ΩΩB C
if
ææ 
(
ææ 
request
ææ 
==
ææ 
null
ææ 
)
ææ  
{
øø 
return
¿¿ 
NotFound
¿¿ 
(
¿¿  
)
¿¿  !
;
¿¿! "
}
¡¡ 
if
√√ 
(
√√ 
!
√√ 
string
√√ 
.
√√ 
IsNullOrEmpty
√√ %
(
√√% &
request
√√& -
.
√√- .#
PostLogoutRedirectUri
√√. C
)
√√C D
)
√√D E
{
ƒƒ 
var
«« 
result
«« 
=
«« 
await
«« "
HttpContext
««# .
.
««. /
AuthenticateAsync
««/ @
(
««@ A
)
««A B
;
««B C
if
»» 
(
»» 
result
»» 
==
»» 
null
»» "
||
»»# %
!
»»& '
result
»»' -
.
»»- .
	Succeeded
»». 7
)
»»7 8
{
…… 
return
   
SignOut
   "
(
  " #0
"OpenIddictServerAspNetCoreDefaults
  # E
.
  E F"
AuthenticationScheme
  F Z
)
  Z [
;
  [ \
}
ÀÀ 
}
ÃÃ 
return
ŒŒ 
View
ŒŒ 
(
ŒŒ 
new
ŒŒ 
LogoutViewModel
ŒŒ +
{
œœ 
	RequestId
–– 
=
–– 
request
–– #
.
––# $
	RequestId
––$ -
}
—— 
)
—— 
;
—— 
}
““ 	
[
‘‘ 	

ActionName
‘‘	 
(
‘‘ 
nameof
‘‘ 
(
‘‘ 
Logout
‘‘ !
)
‘‘! "
)
‘‘" #
,
‘‘# $
AllowAnonymous
‘‘% 3
]
‘‘3 4
[
’’ 	
FormValueRequired
’’	 
(
’’ 
$str
’’ *
)
’’* +
,
’’+ ,
HttpPost
’’- 5
]
’’5 6
public
÷÷ 
async
÷÷ 
Task
÷÷ 
<
÷÷ 
IActionResult
÷÷ '
>
÷÷' (
LogoutAccept
÷÷) 5
(
÷÷5 6
)
÷÷6 7
{
◊◊ 	
var
ÿÿ 
response
ÿÿ 
=
ÿÿ 
HttpContext
ÿÿ &
.
ÿÿ& ')
GetOpenIddictServerResponse
ÿÿ' B
(
ÿÿB C
)
ÿÿC D
;
ÿÿD E
if
ŸŸ 
(
ŸŸ 
response
ŸŸ 
!=
ŸŸ 
null
ŸŸ  
)
ŸŸ  !
{
⁄⁄ 
return
€€ 
View
€€ 
(
€€ 
$str
€€ #
,
€€# $
new
€€% (
ErrorViewModel
€€) 7
{
‹‹ 
Error
›› 
=
›› 
response
›› $
.
››$ %
Error
››% *
,
››* +
ErrorDescription
ﬁﬁ $
=
ﬁﬁ% &
response
ﬁﬁ' /
.
ﬁﬁ/ 0
ErrorDescription
ﬁﬁ0 @
}
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
var
‚‚ 
request
‚‚ 
=
‚‚ 
HttpContext
‚‚ %
.
‚‚% &(
GetOpenIddictServerRequest
‚‚& @
(
‚‚@ A
)
‚‚A B
;
‚‚B C
if
„„ 
(
„„ 
request
„„ 
==
„„ 
null
„„ 
)
„„  
{
‰‰ 
return
ÂÂ 
NotFound
ÂÂ 
(
ÂÂ  
)
ÂÂ  !
;
ÂÂ! "
}
ÊÊ 
await
ÌÌ 
HttpContext
ÌÌ 
.
ÌÌ 
SignOutAsync
ÌÌ *
(
ÌÌ* +
)
ÌÌ+ ,
;
ÌÌ, -
if
ÒÒ 
(
ÒÒ 
string
ÒÒ 
.
ÒÒ 
IsNullOrEmpty
ÒÒ $
(
ÒÒ$ %
request
ÒÒ% ,
.
ÒÒ, -#
PostLogoutRedirectUri
ÒÒ- B
)
ÒÒB C
)
ÒÒC D
{
ÚÚ 
return
ÛÛ 
Redirect
ÛÛ 
(
ÛÛ  
$str
ÛÛ  $
)
ÛÛ$ %
;
ÛÛ% &
}
ÙÙ 
return
ˆˆ 
SignOut
ˆˆ 
(
ˆˆ 0
"OpenIddictServerAspNetCoreDefaults
ˆˆ =
.
ˆˆ= >"
AuthenticationScheme
ˆˆ> R
)
ˆˆR S
;
ˆˆS T
}
˜˜ 	
[
˘˘ 	

ActionName
˘˘	 
(
˘˘ 
nameof
˘˘ 
(
˘˘ 
Logout
˘˘ !
)
˘˘! "
)
˘˘" #
,
˘˘# $
AllowAnonymous
˘˘% 3
]
˘˘3 4
[
˙˙ 	
FormValueRequired
˙˙	 
(
˙˙ 
$str
˙˙ (
)
˙˙( )
,
˙˙) *
HttpPost
˙˙+ 3
]
˙˙3 4
public
˚˚ 
IActionResult
˚˚ 

LogoutDeny
˚˚ '
(
˚˚' (
)
˚˚( )
{
¸¸ 	
var
˝˝ 
response
˝˝ 
=
˝˝ 
HttpContext
˝˝ &
.
˝˝& ')
GetOpenIddictServerResponse
˝˝' B
(
˝˝B C
)
˝˝C D
;
˝˝D E
if
˛˛ 
(
˛˛ 
response
˛˛ 
!=
˛˛ 
null
˛˛  
)
˛˛  !
{
ˇˇ 
return
ÄÄ 
View
ÄÄ 
(
ÄÄ 
$str
ÄÄ #
,
ÄÄ# $
new
ÄÄ% (
ErrorViewModel
ÄÄ) 7
{
ÅÅ 
Error
ÇÇ 
=
ÇÇ 
response
ÇÇ $
.
ÇÇ$ %
Error
ÇÇ% *
,
ÇÇ* +
ErrorDescription
ÉÉ $
=
ÉÉ% &
response
ÉÉ' /
.
ÉÉ/ 0
ErrorDescription
ÉÉ0 @
}
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 
var
áá 
request
áá 
=
áá 
HttpContext
áá %
.
áá% &(
GetOpenIddictServerRequest
áá& @
(
áá@ A
)
ááA B
;
ááB C
if
àà 
(
àà 
request
àà 
==
àà 
null
àà 
)
àà  
{
ââ 
return
ää 
NotFound
ää 
(
ää  
)
ää  !
;
ää! "
}
ãã 
return
çç 
Redirect
çç 
(
çç 
$str
çç  
)
çç  !
;
çç! "
}
éé 	
[
êê 	
AllowAnonymous
êê	 
,
êê 
HttpPost
êê !
]
êê! "
[
ëë 	$
IgnoreAntiforgeryToken
ëë	 
]
ëë  
[
íí 	
Produces
íí	 
(
íí 
$str
íí $
)
íí$ %
]
íí% &
public
ìì 
async
ìì 
Task
ìì 
<
ìì 
IActionResult
ìì '
>
ìì' (
Token
ìì) .
(
ìì. /
)
ìì/ 0
{
îî 	
var
õõ 
request
õõ 
=
õõ 
HttpContext
õõ %
.
õõ% &(
GetOpenIddictServerRequest
õõ& @
(
õõ@ A
)
õõA B
;
õõB C
if
úú 
(
úú 
request
úú 
==
úú 
null
úú 
)
úú  
{
ùù 
return
ûû 
NotFound
ûû 
(
ûû  
)
ûû  !
;
ûû! "
}
üü 
if
°° 
(
°° 
request
°° 
.
°° !
IsPasswordGrantType
°° +
(
°°+ ,
)
°°, -
)
°°- .
{
¢¢ 
return
££ 
await
££ '
ExchangePasswordGrantType
££ 6
(
££6 7
request
££7 >
)
££> ?
;
££? @
}
§§ 
if
¶¶ 
(
¶¶ 
request
¶¶ 
.
¶¶ *
IsClientCredentialsGrantType
¶¶ 4
(
¶¶4 5
)
¶¶5 6
)
¶¶6 7
{
ßß 
return
®® 
await
®® 0
"ExchangeClientCredentialsGrantType
®® ?
(
®®? @
request
®®@ G
)
®®G H
;
®®H I
}
©© 
if
´´ 
(
´´ 
request
´´ 
.
´´ *
IsAuthorizationCodeGrantType
´´ 4
(
´´4 5
)
´´5 6
||
´´7 9
request
´´: A
.
´´A B%
IsRefreshTokenGrantType
´´B Y
(
´´Y Z
)
´´Z [
)
´´[ \
{
¨¨ 
return
≠≠ 
await
≠≠ >
0ExchangeAuthorizationCodeOrRefreshTokenGrantType
≠≠ M
(
≠≠M N
request
≠≠N U
)
≠≠U V
;
≠≠V W
}
ÆÆ 
throw
∞∞ 
new
∞∞ #
NotSupportedException
∞∞ +
(
∞∞+ ,
$str
∞∞, X
)
∞∞X Y
;
∞∞Y Z
}
±± 	
private
≥≥ 
async
≥≥ 
Task
≥≥ 
<
≥≥ 
IActionResult
≥≥ (
>
≥≥( )0
"ExchangeClientCredentialsGrantType
≥≥* L
(
≥≥L M
OpenIddictRequest
≥≥M ^
request
≥≥_ f
)
≥≥f g
{
¥¥ 	
var
∂∂ 
application
∂∂ 
=
∂∂ 
await
∂∂ #!
_applicationManager
∂∂$ 7
.
∂∂7 8!
FindByClientIdAsync
∂∂8 K
(
∂∂K L
request
∂∂L S
.
∂∂S T
ClientId
∂∂T \
)
∂∂\ ]
??
∂∂^ `
throw
∑∑ 
new
∑∑ '
InvalidOperationException
∑∑ 3
(
∑∑3 4
$str
∑∑4 ^
)
∑∑^ _
;
∑∑_ `
var
ππ 
identity
ππ 
=
ππ 
new
ππ 
ClaimsIdentity
ππ -
(
ππ- .0
"OpenIddictServerAspNetCoreDefaults
∫∫ 2
.
∫∫2 3"
AuthenticationScheme
∫∫3 G
,
∫∫G H
Claims
ªª 
.
ªª 
Name
ªª 
,
ªª 
Claims
ªª #
.
ªª# $
Role
ªª$ (
)
ªª( )
;
ªª) *
identity
ΩΩ 
.
ΩΩ 
AddClaim
ΩΩ 
(
ΩΩ 
OpenIdConstants
ΩΩ -
.
ΩΩ- .
Claims
ΩΩ. 4
.
ΩΩ4 5

EntityType
ΩΩ5 ?
,
ΩΩ? @
OpenIdConstants
ΩΩA P
.
ΩΩP Q
EntityTypes
ΩΩQ \
.
ΩΩ\ ]
Application
ΩΩ] h
,
ΩΩh i
Destinations
ææ 
.
ææ 
AccessToken
ææ (
,
ææ( )
Destinations
ææ* 6
.
ææ6 7
IdentityToken
ææ7 D
)
ææD E
;
ææE F
identity
¿¿ 
.
¿¿ 
AddClaim
¿¿ 
(
¿¿ 
Claims
¿¿ $
.
¿¿$ %
Subject
¿¿% ,
,
¿¿, -
request
¿¿. 5
.
¿¿5 6
ClientId
¿¿6 >
,
¿¿> ?
Destinations
¡¡ 
.
¡¡ 
AccessToken
¡¡ (
,
¡¡( )
Destinations
¡¡* 6
.
¡¡6 7
IdentityToken
¡¡7 D
)
¡¡D E
;
¡¡E F
identity
√√ 
.
√√ 
AddClaim
√√ 
(
√√ 
Claims
√√ $
.
√√$ %
Name
√√% )
,
√√) *
await
ƒƒ !
_applicationManager
ƒƒ )
.
ƒƒ) *!
GetDisplayNameAsync
ƒƒ* =
(
ƒƒ= >
application
ƒƒ> I
)
ƒƒI J
,
ƒƒJ K
Destinations
≈≈ 
.
≈≈ 
AccessToken
≈≈ (
,
≈≈( )
Destinations
≈≈* 6
.
≈≈6 7
IdentityToken
≈≈7 D
)
≈≈D E
;
≈≈E F
var
…… 
roleService
…… 
=
…… 
HttpContext
…… )
.
……) *
RequestServices
……* 9
.
……9 :

GetService
……: D
<
……D E
IRoleService
……E Q
>
……Q R
(
……R S
)
……S T
;
……T U
foreach
ÀÀ 
(
ÀÀ 
var
ÀÀ 
role
ÀÀ 
in
ÀÀ  
await
ÀÀ! &!
_applicationManager
ÀÀ' :
.
ÀÀ: ;
GetRolesAsync
ÀÀ; H
(
ÀÀH I
application
ÀÀI T
)
ÀÀT U
)
ÀÀU V
{
ÃÃ 
identity
ÕÕ 
.
ÕÕ 
AddClaim
ÕÕ !
(
ÕÕ! "
identity
ÕÕ" *
.
ÕÕ* +
RoleClaimType
ÕÕ+ 8
,
ÕÕ8 9
role
ÕÕ: >
,
ÕÕ> ?
Destinations
ŒŒ  
.
ŒŒ  !
AccessToken
ŒŒ! ,
,
ŒŒ, -
Destinations
ŒŒ. :
.
ŒŒ: ;
IdentityToken
ŒŒ; H
)
ŒŒH I
;
ŒŒI J
if
–– 
(
–– 
roleService
–– 
!=
––  "
null
––# '
)
––' (
{
—— 
foreach
““ 
(
““ 
var
““  
claim
““! &
in
““' )
await
““* /
roleService
““0 ;
.
““; < 
GetRoleClaimsAsync
““< N
(
““N O
role
““O S
)
““S T
)
““T U
{
”” 
identity
‘‘  
.
‘‘  !
AddClaim
‘‘! )
(
‘‘) *
claim
‘‘* /
.
‘‘/ 0
SetDestinations
‘‘0 ?
(
‘‘? @
Destinations
‘‘@ L
.
‘‘L M
AccessToken
‘‘M X
,
‘‘X Y
Destinations
‘‘Z f
.
‘‘f g
IdentityToken
‘‘g t
)
‘‘t u
)
‘‘u v
;
‘‘v w
}
’’ 
}
÷÷ 
}
◊◊ 
var
ŸŸ 
	principal
ŸŸ 
=
ŸŸ 
new
ŸŸ 
ClaimsPrincipal
ŸŸ  /
(
ŸŸ/ 0
identity
ŸŸ0 8
)
ŸŸ8 9
;
ŸŸ9 :
	principal
⁄⁄ 
.
⁄⁄ 
SetResources
⁄⁄ "
(
⁄⁄" #
await
⁄⁄# (
GetResourcesAsync
⁄⁄) :
(
⁄⁄: ;
request
⁄⁄; B
.
⁄⁄B C
	GetScopes
⁄⁄C L
(
⁄⁄L M
)
⁄⁄M N
)
⁄⁄N O
)
⁄⁄O P
;
⁄⁄P Q
return
‹‹ 
SignIn
‹‹ 
(
‹‹ 
	principal
‹‹ #
,
‹‹# $0
"OpenIddictServerAspNetCoreDefaults
‹‹% G
.
‹‹G H"
AuthenticationScheme
‹‹H \
)
‹‹\ ]
;
‹‹] ^
}
›› 	
private
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
IActionResult
ﬂﬂ (
>
ﬂﬂ( )'
ExchangePasswordGrantType
ﬂﬂ* C
(
ﬂﬂC D
OpenIddictRequest
ﬂﬂD U
request
ﬂﬂV ]
)
ﬂﬂ] ^
{
‡‡ 	
var
·· 
application
·· 
=
·· 
await
·· #!
_applicationManager
··$ 7
.
··7 8!
FindByClientIdAsync
··8 K
(
··K L
request
··L S
.
··S T
ClientId
··T \
)
··\ ]
??
··^ `
throw
‚‚ 
new
‚‚ '
InvalidOperationException
‚‚ 3
(
‚‚3 4
$str
‚‚4 ^
)
‚‚^ _
;
‚‚_ `
var
ÊÊ 
service
ÊÊ 
=
ÊÊ 
HttpContext
ÊÊ %
.
ÊÊ% &
RequestServices
ÊÊ& 5
.
ÊÊ5 6

GetService
ÊÊ6 @
<
ÊÊ@ A
IUserService
ÊÊA M
>
ÊÊM N
(
ÊÊN O
)
ÊÊO P
;
ÊÊP Q
if
ÁÁ 
(
ÁÁ 
service
ÁÁ 
==
ÁÁ 
null
ÁÁ 
)
ÁÁ  
{
ËË 
return
ÈÈ 
Forbid
ÈÈ 
(
ÈÈ 
new
ÈÈ !&
AuthenticationProperties
ÈÈ" :
(
ÈÈ: ;
new
ÈÈ; >

Dictionary
ÈÈ? I
<
ÈÈI J
string
ÈÈJ P
,
ÈÈP Q
string
ÈÈR X
>
ÈÈX Y
{
ÍÍ 
[
ÎÎ 1
#OpenIddictServerAspNetCoreConstants
ÎÎ 8
.
ÎÎ8 9

Properties
ÎÎ9 C
.
ÎÎC D
Error
ÎÎD I
]
ÎÎI J
=
ÎÎK L
Errors
ÎÎM S
.
ÎÎS T"
UnsupportedGrantType
ÎÎT h
,
ÎÎh i
[
ÏÏ 1
#OpenIddictServerAspNetCoreConstants
ÏÏ 8
.
ÏÏ8 9

Properties
ÏÏ9 C
.
ÏÏC D
ErrorDescription
ÏÏD T
]
ÏÏT U
=
ÏÏV W
$str
ÌÌ Y
}
ÓÓ 
)
ÓÓ 
,
ÓÓ 0
"OpenIddictServerAspNetCoreDefaults
ÓÓ 6
.
ÓÓ6 7"
AuthenticationScheme
ÓÓ7 K
)
ÓÓK L
;
ÓÓL M
}
ÔÔ 
string
ÒÒ 
error
ÒÒ 
=
ÒÒ 
null
ÒÒ 
;
ÒÒ  
var
ÚÚ 
user
ÚÚ 
=
ÚÚ 
await
ÚÚ 
service
ÚÚ $
.
ÚÚ$ %
AuthenticateAsync
ÚÚ% 6
(
ÚÚ6 7
request
ÚÚ7 >
.
ÚÚ> ?
Username
ÚÚ? G
,
ÚÚG H
request
ÚÚI P
.
ÚÚP Q
Password
ÚÚQ Y
,
ÚÚY Z
(
ÚÚ[ \
key
ÚÚ\ _
,
ÚÚ_ `
message
ÚÚa h
)
ÚÚh i
=>
ÚÚj l
error
ÚÚm r
=
ÚÚs t
message
ÚÚu |
)
ÚÚ| }
;
ÚÚ} ~
if
ÛÛ 
(
ÛÛ 
user
ÛÛ 
==
ÛÛ 
null
ÛÛ 
)
ÛÛ 
{
ÙÙ 
return
ıı 
Forbid
ıı 
(
ıı 
new
ıı !&
AuthenticationProperties
ıı" :
(
ıı: ;
new
ıı; >

Dictionary
ıı? I
<
ııI J
string
ııJ P
,
ııP Q
string
ııR X
>
ııX Y
{
ˆˆ 
[
˜˜ 1
#OpenIddictServerAspNetCoreConstants
˜˜ 8
.
˜˜8 9

Properties
˜˜9 C
.
˜˜C D
Error
˜˜D I
]
˜˜I J
=
˜˜K L
Errors
˜˜M S
.
˜˜S T
InvalidGrant
˜˜T `
,
˜˜` a
[
¯¯ 1
#OpenIddictServerAspNetCoreConstants
¯¯ 8
.
¯¯8 9

Properties
¯¯9 C
.
¯¯C D
ErrorDescription
¯¯D T
]
¯¯T U
=
¯¯V W
error
¯¯X ]
}
˘˘ 
)
˘˘ 
,
˘˘ 0
"OpenIddictServerAspNetCoreDefaults
˘˘ 6
.
˘˘6 7"
AuthenticationScheme
˘˘7 K
)
˘˘K L
;
˘˘L M
}
˙˙ 
var
¸¸ 
	principal
¸¸ 
=
¸¸ 
await
¸¸ !
service
¸¸" )
.
¸¸) *"
CreatePrincipalAsync
¸¸* >
(
¸¸> ?
user
¸¸? C
)
¸¸C D
;
¸¸D E
var
˛˛ 
authorizations
˛˛ 
=
˛˛  
await
˛˛! &#
_authorizationManager
˛˛' <
.
˛˛< =
	FindAsync
˛˛= F
(
˛˛F G
subject
ˇˇ 
:
ˇˇ 
	principal
ˇˇ "
.
ˇˇ" #
GetUserIdentifier
ˇˇ# 4
(
ˇˇ4 5
)
ˇˇ5 6
,
ˇˇ6 7
client
ÄÄ 
:
ÄÄ 
await
ÄÄ !
_applicationManager
ÄÄ 1
.
ÄÄ1 2

GetIdAsync
ÄÄ2 <
(
ÄÄ< =
application
ÄÄ= H
)
ÄÄH I
,
ÄÄI J
status
ÅÅ 
:
ÅÅ 
Statuses
ÅÅ  
.
ÅÅ  !
Valid
ÅÅ! &
,
ÅÅ& '
type
ÇÇ 
:
ÇÇ  
AuthorizationTypes
ÇÇ (
.
ÇÇ( )
	Permanent
ÇÇ) 2
,
ÇÇ2 3
scopes
ÉÉ 
:
ÉÉ 
request
ÉÉ 
.
ÉÉ  
	GetScopes
ÉÉ  )
(
ÉÉ) *
)
ÉÉ* +
)
ÉÉ+ ,
.
ÉÉ, -
ToListAsync
ÉÉ- 8
(
ÉÉ8 9
)
ÉÉ9 :
;
ÉÉ: ;
switch
áá 
(
áá 
await
áá !
_applicationManager
áá -
.
áá- .!
GetConsentTypeAsync
áá. A
(
ááA B
application
ááB M
)
ááM N
)
ááN O
{
àà 
case
ââ 
ConsentTypes
ââ !
.
ââ! "
External
ââ" *
when
ââ+ /
!
ââ0 1
authorizations
ââ1 ?
.
ââ? @
Any
ââ@ C
(
ââC D
)
ââD E
:
ââE F
return
ää 
Forbid
ää !
(
ää! "
new
ää" %&
AuthenticationProperties
ää& >
(
ää> ?
new
ää? B

Dictionary
ääC M
<
ääM N
string
ääN T
,
ääT U
string
ääV \
>
ää\ ]
{
ãã 
[
åå 1
#OpenIddictServerAspNetCoreConstants
åå <
.
åå< =

Properties
åå= G
.
ååG H
Error
ååH M
]
ååM N
=
ååO P
Errors
ååQ W
.
ååW X
ConsentRequired
ååX g
,
ååg h
[
çç 1
#OpenIddictServerAspNetCoreConstants
çç <
.
çç< =

Properties
çç= G
.
ççG H
ErrorDescription
ççH X
]
ççX Y
=
ççZ [
$str
éé b
}
èè 
)
èè 
,
èè 0
"OpenIddictServerAspNetCoreDefaults
èè :
.
èè: ;"
AuthenticationScheme
èè; O
)
èèO P
;
èèP Q
}
êê 
var
íí 
identity
íí 
=
íí 
(
íí 
ClaimsIdentity
íí *
)
íí* +
	principal
íí+ 4
.
íí4 5
Identity
íí5 =
;
íí= >
identity
îî 
.
îî 
AddClaim
îî 
(
îî 
OpenIdConstants
îî -
.
îî- .
Claims
îî. 4
.
îî4 5

EntityType
îî5 ?
,
îî? @
OpenIdConstants
îîA P
.
îîP Q
EntityTypes
îîQ \
.
îî\ ]
User
îî] a
,
îîa b
Destinations
ïï 
.
ïï 
AccessToken
ïï (
,
ïï( )
Destinations
ïï* 6
.
ïï6 7
IdentityToken
ïï7 D
)
ïïD E
;
ïïE F
if
öö 
(
öö 
string
öö 
.
öö 
IsNullOrEmpty
öö $
(
öö$ %
	principal
öö% .
.
öö. /
	FindFirst
öö/ 8
(
öö8 9
Claims
öö9 ?
.
öö? @
Subject
öö@ G
)
ööG H
?
ööH I
.
ööI J
Value
ööJ O
)
ööO P
)
ööP Q
{
õõ 
identity
úú 
.
úú 
AddClaim
úú !
(
úú! "
new
úú" %
Claim
úú& +
(
úú+ ,
Claims
úú, 2
.
úú2 3
Subject
úú3 :
,
úú: ;
	principal
úú< E
.
úúE F
GetUserIdentifier
úúF W
(
úúW X
)
úúX Y
)
úúY Z
)
úúZ [
;
úú[ \
}
ùù 
	principal
üü 
.
üü 
	SetScopes
üü 
(
üü  
request
üü  '
.
üü' (
	GetScopes
üü( 1
(
üü1 2
)
üü2 3
)
üü3 4
;
üü4 5
	principal
†† 
.
†† 
SetResources
†† "
(
††" #
await
††# (
GetResourcesAsync
††) :
(
††: ;
request
††; B
.
††B C
	GetScopes
††C L
(
††L M
)
††M N
)
††N O
)
††O P
;
††P Q
var
§§ 
authorization
§§ 
=
§§ 
authorizations
§§  .
.
§§. /
FirstOrDefault
§§/ =
(
§§= >
)
§§> ?
;
§§? @
if
•• 
(
•• 
authorization
•• 
==
••  
null
••! %
)
••% &
{
¶¶ 
authorization
ßß 
=
ßß 
await
ßß  %#
_authorizationManager
ßß& ;
.
ßß; <
CreateAsync
ßß< G
(
ßßG H
	principal
®® 
:
®® 
	principal
®® (
,
®®( )
subject
©© 
:
©© 
	principal
©© &
.
©©& '
GetUserIdentifier
©©' 8
(
©©8 9
)
©©9 :
,
©©: ;
client
™™ 
:
™™ 
await
™™ !!
_applicationManager
™™" 5
.
™™5 6

GetIdAsync
™™6 @
(
™™@ A
application
™™A L
)
™™L M
,
™™M N
type
´´ 
:
´´  
AuthorizationTypes
´´ ,
.
´´, -
	Permanent
´´- 6
,
´´6 7
scopes
¨¨ 
:
¨¨ 
	principal
¨¨ %
.
¨¨% &
	GetScopes
¨¨& /
(
¨¨/ 0
)
¨¨0 1
)
¨¨1 2
;
¨¨2 3
}
≠≠ 
	principal
ØØ 
.
ØØ  
SetAuthorizationId
ØØ (
(
ØØ( )
await
ØØ) .#
_authorizationManager
ØØ/ D
.
ØØD E

GetIdAsync
ØØE O
(
ØØO P
authorization
ØØP ]
)
ØØ] ^
)
ØØ^ _
;
ØØ_ `
foreach
±± 
(
±± 
var
±± 
claim
±± 
in
±± !
	principal
±±" +
.
±±+ ,
Claims
±±, 2
)
±±2 3
{
≤≤ 
claim
≥≥ 
.
≥≥ 
SetDestinations
≥≥ %
(
≥≥% &
GetDestinations
≥≥& 5
(
≥≥5 6
claim
≥≥6 ;
,
≥≥; <
	principal
≥≥= F
)
≥≥F G
)
≥≥G H
;
≥≥H I
}
¥¥ 
return
∂∂ 
SignIn
∂∂ 
(
∂∂ 
	principal
∂∂ #
,
∂∂# $0
"OpenIddictServerAspNetCoreDefaults
∂∂% G
.
∂∂G H"
AuthenticationScheme
∂∂H \
)
∂∂\ ]
;
∂∂] ^
}
∑∑ 	
private
ππ 
async
ππ 
Task
ππ 
<
ππ 
IActionResult
ππ (
>
ππ( )>
0ExchangeAuthorizationCodeOrRefreshTokenGrantType
ππ* Z
(
ππZ [
OpenIddictRequest
ππ[ l
request
ππm t
)
ππt u
{
∫∫ 	
var
ªª 
application
ªª 
=
ªª 
await
ªª #!
_applicationManager
ªª$ 7
.
ªª7 8!
FindByClientIdAsync
ªª8 K
(
ªªK L
request
ªªL S
.
ªªS T
ClientId
ªªT \
)
ªª\ ]
??
ªª^ `
throw
ºº 
new
ºº '
InvalidOperationException
ºº 3
(
ºº3 4
$str
ºº4 ^
)
ºº^ _
;
ºº_ `
var
øø 
info
øø 
=
øø 
await
øø 
HttpContext
øø (
.
øø( )
AuthenticateAsync
øø) :
(
øø: ;0
"OpenIddictServerAspNetCoreDefaults
øø; ]
.
øø] ^"
AuthenticationScheme
øø^ r
)
øør s
??
øøt v
throw
¿¿ 
new
¿¿ '
InvalidOperationException
¿¿ 3
(
¿¿3 4
$str
¿¿4 \
)
¿¿\ ]
;
¿¿] ^
if
¬¬ 
(
¬¬ 
request
¬¬ 
.
¬¬ %
IsRefreshTokenGrantType
¬¬ /
(
¬¬/ 0
)
¬¬0 1
)
¬¬1 2
{
√√ 
var
ƒƒ 
type
ƒƒ 
=
ƒƒ 
info
ƒƒ 
.
ƒƒ  
	Principal
ƒƒ  )
.
ƒƒ) *
	FindFirst
ƒƒ* 3
(
ƒƒ3 4
OpenIdConstants
ƒƒ4 C
.
ƒƒC D
Claims
ƒƒD J
.
ƒƒJ K

EntityType
ƒƒK U
)
ƒƒU V
?
ƒƒV W
.
ƒƒW X
Value
ƒƒX ]
;
ƒƒ] ^
if
≈≈ 
(
≈≈ 
!
≈≈ 
string
≈≈ 
.
≈≈ 
Equals
≈≈ "
(
≈≈" #
type
≈≈# '
,
≈≈' (
OpenIdConstants
≈≈) 8
.
≈≈8 9
EntityTypes
≈≈9 D
.
≈≈D E
User
≈≈E I
)
≈≈I J
)
≈≈J K
{
∆∆ 
return
«« 
Forbid
«« !
(
««! "
new
««" %&
AuthenticationProperties
««& >
(
««> ?
new
««? B

Dictionary
««C M
<
««M N
string
««N T
,
««T U
string
««V \
>
««\ ]
{
»» 
[
…… 1
#OpenIddictServerAspNetCoreConstants
…… <
.
……< =

Properties
……= G
.
……G H
Error
……H M
]
……M N
=
……O P
Errors
……Q W
.
……W X 
UnauthorizedClient
……X j
,
……j k
[
   1
#OpenIddictServerAspNetCoreConstants
   <
.
  < =

Properties
  = G
.
  G H
ErrorDescription
  H X
]
  X Y
=
  Z [
$strÀÀ â
}
ÃÃ 
)
ÃÃ 
,
ÃÃ 0
"OpenIddictServerAspNetCoreDefaults
ÃÃ :
.
ÃÃ: ;"
AuthenticationScheme
ÃÃ; O
)
ÃÃO P
;
ÃÃP Q
}
ÕÕ 
}
ŒŒ 
var
—— 
	principal
—— 
=
—— 
info
——  
.
——  !
	Principal
——! *
;
——* +
var
’’ 
service
’’ 
=
’’ 
HttpContext
’’ %
.
’’% &
RequestServices
’’& 5
.
’’5 6

GetService
’’6 @
<
’’@ A
IUserService
’’A M
>
’’M N
(
’’N O
)
’’O P
;
’’P Q
if
÷÷ 
(
÷÷ 
service
÷÷ 
!=
÷÷ 
null
÷÷ 
)
÷÷  
{
◊◊ 
var
ÿÿ 
user
ÿÿ 
=
ÿÿ 
await
ÿÿ  
service
ÿÿ! (
.
ÿÿ( )$
GetUserByUniqueIdAsync
ÿÿ) ?
(
ÿÿ? @
	principal
ÿÿ@ I
.
ÿÿI J
GetUserIdentifier
ÿÿJ [
(
ÿÿ[ \
)
ÿÿ\ ]
)
ÿÿ] ^
;
ÿÿ^ _
if
ŸŸ 
(
ŸŸ 
user
ŸŸ 
!=
ŸŸ 
null
ŸŸ  
)
ŸŸ  !
{
⁄⁄ 
	principal
€€ 
=
€€ 
await
€€  %
service
€€& -
.
€€- ."
CreatePrincipalAsync
€€. B
(
€€B C
user
€€C G
)
€€G H
;
€€H I
}
‹‹ 
}
›› 
var
ﬂﬂ 
identity
ﬂﬂ 
=
ﬂﬂ 
(
ﬂﬂ 
ClaimsIdentity
ﬂﬂ *
)
ﬂﬂ* +
	principal
ﬂﬂ+ 4
.
ﬂﬂ4 5
Identity
ﬂﬂ5 =
;
ﬂﬂ= >
identity
·· 
.
·· 
AddClaim
·· 
(
·· 
OpenIdConstants
·· -
.
··- .
Claims
··. 4
.
··4 5

EntityType
··5 ?
,
··? @
OpenIdConstants
··A P
.
··P Q
EntityTypes
··Q \
.
··\ ]
User
··] a
,
··a b
Destinations
‚‚ 
.
‚‚ 
AccessToken
‚‚ (
,
‚‚( )
Destinations
‚‚* 6
.
‚‚6 7
IdentityToken
‚‚7 D
)
‚‚D E
;
‚‚E F
if
ÁÁ 
(
ÁÁ 
string
ÁÁ 
.
ÁÁ 
IsNullOrEmpty
ÁÁ $
(
ÁÁ$ %
	principal
ÁÁ% .
.
ÁÁ. /
	FindFirst
ÁÁ/ 8
(
ÁÁ8 9
Claims
ÁÁ9 ?
.
ÁÁ? @
Subject
ÁÁ@ G
)
ÁÁG H
?
ÁÁH I
.
ÁÁI J
Value
ÁÁJ O
)
ÁÁO P
)
ÁÁP Q
{
ËË 
identity
ÈÈ 
.
ÈÈ 
AddClaim
ÈÈ !
(
ÈÈ! "
new
ÈÈ" %
Claim
ÈÈ& +
(
ÈÈ+ ,
Claims
ÈÈ, 2
.
ÈÈ2 3
Subject
ÈÈ3 :
,
ÈÈ: ;
	principal
ÈÈ< E
.
ÈÈE F
GetUserIdentifier
ÈÈF W
(
ÈÈW X
)
ÈÈX Y
)
ÈÈY Z
)
ÈÈZ [
;
ÈÈ[ \
}
ÍÍ 
foreach
ÏÏ 
(
ÏÏ 
var
ÏÏ 
claim
ÏÏ 
in
ÏÏ !
	principal
ÏÏ" +
.
ÏÏ+ ,
Claims
ÏÏ, 2
)
ÏÏ2 3
{
ÌÌ 
claim
ÓÓ 
.
ÓÓ 
SetDestinations
ÓÓ %
(
ÓÓ% &
GetDestinations
ÓÓ& 5
(
ÓÓ5 6
claim
ÓÓ6 ;
,
ÓÓ; <
	principal
ÓÓ= F
)
ÓÓF G
)
ÓÓG H
;
ÓÓH I
}
ÔÔ 
return
ÒÒ 
SignIn
ÒÒ 
(
ÒÒ 
	principal
ÒÒ #
,
ÒÒ# $0
"OpenIddictServerAspNetCoreDefaults
ÒÒ% G
.
ÒÒG H"
AuthenticationScheme
ÒÒH \
)
ÒÒ\ ]
;
ÒÒ] ^
}
ÚÚ 	
private
ÙÙ 
IEnumerable
ÙÙ 
<
ÙÙ 
string
ÙÙ "
>
ÙÙ" #
GetDestinations
ÙÙ$ 3
(
ÙÙ3 4
Claim
ÙÙ4 9
claim
ÙÙ: ?
,
ÙÙ? @
ClaimsPrincipal
ÙÙA P
	principal
ÙÙQ Z
)
ÙÙZ [
{
ıı 	
switch
˙˙ 
(
˙˙ 
claim
˙˙ 
.
˙˙ 
Type
˙˙ 
)
˙˙ 
{
˚˚ 
case
˝˝ 
$str
˝˝ 4
:
˝˝4 5
break
˛˛ 
;
˛˛ 
case
ÇÇ 
OpenIdConstants
ÇÇ $
.
ÇÇ$ %
Claims
ÇÇ% +
.
ÇÇ+ ,

EntityType
ÇÇ, 6
:
ÇÇ6 7
case
ÉÉ 
Claims
ÉÉ 
.
ÉÉ 
Name
ÉÉ  
when
ÉÉ! %
	principal
ÉÉ& /
.
ÉÉ/ 0
HasScope
ÉÉ0 8
(
ÉÉ8 9
Scopes
ÉÉ9 ?
.
ÉÉ? @
Profile
ÉÉ@ G
)
ÉÉG H
:
ÉÉH I
case
ÑÑ 
Claims
ÑÑ 
.
ÑÑ 
Email
ÑÑ !
when
ÑÑ" &
	principal
ÑÑ' 0
.
ÑÑ0 1
HasScope
ÑÑ1 9
(
ÑÑ9 :
Scopes
ÑÑ: @
.
ÑÑ@ A
Email
ÑÑA F
)
ÑÑF G
:
ÑÑG H
case
ÖÖ 
Claims
ÖÖ 
.
ÖÖ 
Role
ÖÖ  
when
ÖÖ! %
	principal
ÖÖ& /
.
ÖÖ/ 0
HasScope
ÖÖ0 8
(
ÖÖ8 9
Scopes
ÖÖ9 ?
.
ÖÖ? @
Roles
ÖÖ@ E
)
ÖÖE F
:
ÖÖF G
yield
ÜÜ 
return
ÜÜ  
Destinations
ÜÜ! -
.
ÜÜ- .
AccessToken
ÜÜ. 9
;
ÜÜ9 :
yield
áá 
return
áá  
Destinations
áá! -
.
áá- .
IdentityToken
áá. ;
;
áá; <
break
àà 
;
àà 
default
ää 
:
ää 
yield
ãã 
return
ãã  
Destinations
ãã! -
.
ãã- .
AccessToken
ãã. 9
;
ãã9 :
break
åå 
;
åå 
}
çç 
}
éé 	
private
êê 
async
êê 
Task
êê 
<
êê 
IEnumerable
êê &
<
êê& '
string
êê' -
>
êê- .
>
êê. /
GetResourcesAsync
êê0 A
(
êêA B
ImmutableArray
êêB P
<
êêP Q
string
êêQ W
>
êêW X
scopes
êêY _
)
êê_ `
{
ëë 	
var
ïï 
	resources
ïï 
=
ïï 
new
ïï 
List
ïï  $
<
ïï$ %
string
ïï% +
>
ïï+ ,
(
ïï, -
$num
ïï- .
)
ïï. /
{
ññ 
OpenIdConstants
óó 
.
óó  
Prefixes
óó  (
.
óó( )
Tenant
óó) /
+
óó0 1
_shellSettings
óó2 @
.
óó@ A
Name
óóA E
}
òò 
;
òò 
await
öö 
foreach
öö 
(
öö 
var
öö 
resource
öö '
in
öö( *
_scopeManager
öö+ 8
.
öö8 9 
ListResourcesAsync
öö9 K
(
ööK L
scopes
ööL R
)
ööR S
)
ööS T
{
õõ 
	resources
úú 
.
úú 
Add
úú 
(
úú 
resource
úú &
)
úú& '
;
úú' (
}
ùù 
return
üü 
	resources
üü 
;
üü 
}
†† 	
}
°° 
}¢¢ ·ó
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Controllers\ApplicationController.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Controllers (
{ 
[ 
Admin 

,
 
Feature 
( 
OpenIdConstants #
.# $
Features$ ,
., -

Management- 7
)7 8
]8 9
public 

class !
ApplicationController &
:' (

Controller) 3
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private   
readonly   
IHtmlLocalizer   '
H  ( )
;  ) *
private!! 
readonly!! 
ISiteService!! %
_siteService!!& 2
;!!2 3
private"" 
readonly"" %
IOpenIdApplicationManager"" 2
_applicationManager""3 F
;""F G
private## 
readonly## 
IOpenIdScopeManager## ,
_scopeManager##- :
;##: ;
private$$ 
readonly$$ 
	INotifier$$ "
	_notifier$$# ,
;$$, -
private%% 
readonly%% 
ShellDescriptor%% (
_shellDescriptor%%) 9
;%%9 :
private&& 
readonly&& 
dynamic&&  
New&&! $
;&&$ %
public(( !
ApplicationController(( $
((($ %
IShapeFactory)) 
shapeFactory)) &
,))& '
ISiteService** 
siteService** $
,**$ %
IStringLocalizer++ 
<++ !
ApplicationController++ 2
>++2 3
stringLocalizer++4 C
,++C D!
IAuthorizationService,, ! 
authorizationService,," 6
,,,6 7%
IOpenIdApplicationManager-- %
applicationManager--& 8
,--8 9
IOpenIdScopeManager.. 
scopeManager..  ,
,.., -
IHtmlLocalizer// 
<// !
ApplicationController// 0
>//0 1
htmlLocalizer//2 ?
,//? @
	INotifier00 
notifier00 
,00 
ShellDescriptor11 
shellDescriptor11 +
)11+ ,
{22 	
New33 
=33 
shapeFactory33 
;33 
_siteService44 
=44 
siteService44 &
;44& '
S55 
=55 
stringLocalizer55 
;55  
H66 
=66 
htmlLocalizer66 
;66 !
_authorizationService77 !
=77" # 
authorizationService77$ 8
;778 9
_applicationManager88 
=88  !
applicationManager88" 4
;884 5
_scopeManager99 
=99 
scopeManager99 (
;99( )
	_notifier:: 
=:: 
notifier::  
;::  !
_shellDescriptor;; 
=;; 
shellDescriptor;; .
;;;. /
}<< 	
public>> 
async>> 
Task>> 
<>> 
ActionResult>> &
>>>& '
Index>>( -
(>>- .
PagerParameters>>. =
pagerParameters>>> M
)>>M N
{?? 	
if@@ 
(@@ 
!@@ 
await@@ !
_authorizationService@@ ,
.@@, -
AuthorizeAsync@@- ;
(@@; <
User@@< @
,@@@ A
Permissions@@B M
.@@M N
ManageApplications@@N `
)@@` a
)@@a b
{AA 
returnBB 
ForbidBB 
(BB 
)BB 
;BB  
}CC 
varEE 
siteSettingsEE 
=EE 
awaitEE $
_siteServiceEE% 1
.EE1 2 
GetSiteSettingsAsyncEE2 F
(EEF G
)EEG H
;EEH I
varFF 
pagerFF 
=FF 
newFF 
PagerFF !
(FF! "
pagerParametersFF" 1
,FF1 2
siteSettingsFF3 ?
.FF? @
PageSizeFF@ H
)FFH I
;FFI J
varGG 
countGG 
=GG 
awaitGG 
_applicationManagerGG 1
.GG1 2

CountAsyncGG2 <
(GG< =
)GG= >
;GG> ?
varII 
modelII 
=II 
newII ,
 OpenIdApplicationsIndexViewModelII <
{JJ 
PagerKK 
=KK 
(KK 
awaitKK 
NewKK "
.KK" #
PagerKK# (
(KK( )
pagerKK) .
)KK. /
)KK/ 0
.KK0 1
TotalItemCountKK1 ?
(KK? @
countKK@ E
)KKE F
}LL 
;LL 
awaitNN 
foreachNN 
(NN 
varNN 
applicationNN *
inNN+ -
_applicationManagerNN. A
.NNA B
	ListAsyncNNB K
(NNK L
pagerNNL Q
.NNQ R
PageSizeNNR Z
,NNZ [
pagerNN\ a
.NNa b
GetStartIndexNNb o
(NNo p
)NNp q
)NNq r
)NNr s
{OO 
modelPP 
.PP 
ApplicationsPP "
.PP" #
AddPP# &
(PP& '
newPP' *"
OpenIdApplicationEntryPP+ A
{QQ 
DisplayNameRR 
=RR  !
awaitRR" '
_applicationManagerRR( ;
.RR; <
GetDisplayNameAsyncRR< O
(RRO P
applicationRRP [
)RR[ \
,RR\ ]
IdSS 
=SS 
awaitSS 
_applicationManagerSS 2
.SS2 3
GetPhysicalIdAsyncSS3 E
(SSE F
applicationSSF Q
)SSQ R
}TT 
)TT 
;TT 
}UU 
returnWW 
ViewWW 
(WW 
modelWW 
)WW 
;WW 
}XX 	
[ZZ 	
HttpGetZZ	 
]ZZ 
public[[ 
async[[ 
Task[[ 
<[[ 
IActionResult[[ '
>[[' (
Create[[) /
([[/ 0
string[[0 6
	returnUrl[[7 @
=[[A B
null[[C G
)[[G H
{\\ 	
if]] 
(]] 
!]] 
await]] !
_authorizationService]] ,
.]], -
AuthorizeAsync]]- ;
(]]; <
User]]< @
,]]@ A
Permissions]]B M
.]]M N
ManageApplications]]N `
)]]` a
)]]a b
{^^ 
return__ 
Forbid__ 
(__ 
)__ 
;__  
}`` 
varbb 
modelbb 
=bb 
newbb ,
 CreateOpenIdApplicationViewModelbb <
(bb< =
)bb= >
;bb> ?
vardd 
roleServicedd 
=dd 
HttpContextdd )
.dd) *
RequestServicesdd* 9
?dd9 :
.dd: ;

GetServicedd; E
<ddE F
IRoleServiceddF R
>ddR S
(ddS T
)ddT U
;ddU V
ifee 
(ee 
roleServiceee 
!=ee 
nullee #
)ee# $
{ff 
foreachgg 
(gg 
vargg 
rolegg !
ingg" $
awaitgg% *
roleServicegg+ 6
.gg6 7
GetRoleNamesAsyncgg7 H
(ggH I
)ggI J
)ggJ K
{hh 
modelii 
.ii 
RoleEntriesii %
.ii% &
Addii& )
(ii) *
newii* -,
 CreateOpenIdApplicationViewModelii. N
.iiN O
	RoleEntryiiO X
{jj 
Namekk 
=kk 
rolekk #
}ll 
)ll 
;ll 
}mm 
}nn 
elseoo 
{pp 
	_notifierqq 
.qq 
Warningqq !
(qq! "
Hqq" #
[qq# $
$strqq$ X
]qqX Y
)qqY Z
;qqZ [
}rr 
awaittt 
foreachtt 
(tt 
vartt 
scopett $
intt% '
_scopeManagertt( 5
.tt5 6
	ListAsynctt6 ?
(tt? @
nulltt@ D
,ttD E
nullttF J
,ttJ K
defaultttL S
)ttS T
)ttT U
{uu 
modelvv 
.vv 
ScopeEntriesvv "
.vv" #
Addvv# &
(vv& '
newvv' *,
 CreateOpenIdApplicationViewModelvv+ K
.vvK L

ScopeEntryvvL V
{ww 
Namexx 
=xx 
awaitxx  
_scopeManagerxx! .
.xx. /
GetNameAsyncxx/ ;
(xx; <
scopexx< A
)xxA B
}yy 
)yy 
;yy 
}zz 
ViewData|| 
[|| 
nameof|| 
(||  
OpenIdServerSettings|| 0
)||0 1
]||1 2
=||3 4
await||5 :"
GetServerSettingsAsync||; Q
(||Q R
)||R S
;||S T
ViewData}} 
[}} 
$str}}  
]}}  !
=}}" #
	returnUrl}}$ -
;}}- .
return~~ 
View~~ 
(~~ 
model~~ 
)~~ 
;~~ 
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
Create
ÇÇ) /
(
ÇÇ/ 0.
 CreateOpenIdApplicationViewModel
ÇÇ0 P
model
ÇÇQ V
,
ÇÇV W
string
ÇÇX ^
	returnUrl
ÇÇ_ h
=
ÇÇi j
null
ÇÇk o
)
ÇÇo p
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
await
ÑÑ #
_authorizationService
ÑÑ ,
.
ÑÑ, -
AuthorizeAsync
ÑÑ- ;
(
ÑÑ; <
User
ÑÑ< @
,
ÑÑ@ A
Permissions
ÑÑB M
.
ÑÑM N 
ManageApplications
ÑÑN `
)
ÑÑ` a
)
ÑÑa b
{
ÖÖ 
return
ÜÜ 
Forbid
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ  
}
áá 
if
ââ 
(
ââ 
!
ââ 
string
ââ 
.
ââ 
IsNullOrEmpty
ââ %
(
ââ% &
model
ââ& +
.
ââ+ ,
ClientSecret
ââ, 8
)
ââ8 9
&&
ââ: <
string
ää 
.
ää 
Equals
ää 
(
ää 
model
ää $
.
ää$ %
Type
ää% )
,
ää) *!
OpenIddictConstants
ää+ >
.
ää> ?
ClientTypes
ää? J
.
ääJ K
Public
ääK Q
,
ääQ R
StringComparison
ääS c
.
ääc d
OrdinalIgnoreCase
ääd u
)
ääu v
)
ääv w
{
ãã 

ModelState
åå 
.
åå 
AddModelError
åå (
(
åå( )
nameof
åå) /
(
åå/ 0
model
åå0 5
.
åå5 6
ClientSecret
åå6 B
)
ååB C
,
ååC D
S
ååE F
[
ååF G
$str
ååG }
]
åå} ~
)
åå~ 
;åå Ä
}
çç 
else
éé 
if
éé 
(
éé 
string
éé 
.
éé 
IsNullOrEmpty
éé )
(
éé) *
model
éé* /
.
éé/ 0
ClientSecret
éé0 <
)
éé< =
&&
éé> @
string
èè 
.
èè 
Equals
èè "
(
èè" #
model
èè# (
.
èè( )
Type
èè) -
,
èè- .!
OpenIddictConstants
èè/ B
.
èèB C
ClientTypes
èèC N
.
èèN O
Confidential
èèO [
,
èè[ \
StringComparison
èè] m
.
èèm n
OrdinalIgnoreCase
èèn 
)èè Ä
)èèÄ Å
{
êê 

ModelState
ëë 
.
ëë 
AddModelError
ëë (
(
ëë( )
nameof
ëë) /
(
ëë/ 0
model
ëë0 5
.
ëë5 6
ClientSecret
ëë6 B
)
ëëB C
,
ëëC D
S
ëëE F
[
ëëF G
$strëëG Ö
]ëëÖ Ü
)ëëÜ á
;ëëá à
}
íí 
if
îî 
(
îî 
!
îî 
string
îî 
.
îî 
IsNullOrEmpty
îî %
(
îî% &
model
îî& +
.
îî+ ,
ClientId
îî, 4
)
îî4 5
&&
îî6 8
await
îî9 >!
_applicationManager
îî? R
.
îîR S!
FindByClientIdAsync
îîS f
(
îîf g
model
îîg l
.
îîl m
ClientId
îîm u
)
îîu v
!=
îîw y
null
îîz ~
)
îî~ 
{
ïï 

ModelState
ññ 
.
ññ 
AddModelError
ññ (
(
ññ( )
nameof
ññ) /
(
ññ/ 0
model
ññ0 5
.
ññ5 6
ClientId
ññ6 >
)
ññ> ?
,
ññ? @
S
ññA B
[
ññB C
$strññC É
]ññÉ Ñ
)ññÑ Ö
;ññÖ Ü
}
óó 
if
ôô 
(
ôô 
!
ôô 

ModelState
ôô 
.
ôô 
IsValid
ôô #
)
ôô# $
{
öö 
ViewData
õõ 
[
õõ 
nameof
õõ 
(
õõ  "
OpenIdServerSettings
õõ  4
)
õõ4 5
]
õõ5 6
=
õõ7 8
await
õõ9 >$
GetServerSettingsAsync
õõ? U
(
õõU V
)
õõV W
;
õõW X
ViewData
úú 
[
úú 
$str
úú $
]
úú$ %
=
úú& '
	returnUrl
úú( 1
;
úú1 2
return
ùù 
View
ùù 
(
ùù 
model
ùù !
)
ùù! "
;
ùù" #
}
ûû 
var
†† 

descriptor
†† 
=
†† 
new
††  )
OpenIdApplicationDescriptor
††! <
{
°° 
ClientId
¢¢ 
=
¢¢ 
model
¢¢  
.
¢¢  !
ClientId
¢¢! )
,
¢¢) *
ClientSecret
££ 
=
££ 
model
££ $
.
££$ %
ClientSecret
££% 1
,
££1 2
ConsentType
§§ 
=
§§ 
model
§§ #
.
§§# $
ConsentType
§§$ /
,
§§/ 0
DisplayName
•• 
=
•• 
model
•• #
.
••# $
DisplayName
••$ /
,
••/ 0
Type
¶¶ 
=
¶¶ 
model
¶¶ 
.
¶¶ 
Type
¶¶ !
}
ßß 
;
ßß 
if
©© 
(
©© 
model
©© 
.
©© !
AllowLogoutEndpoint
©© )
)
©©) *
{
™™ 

descriptor
´´ 
.
´´ 
Permissions
´´ &
.
´´& '
Add
´´' *
(
´´* +!
OpenIddictConstants
´´+ >
.
´´> ?
Permissions
´´? J
.
´´J K
	Endpoints
´´K T
.
´´T U
Logout
´´U [
)
´´[ \
;
´´\ ]
}
¨¨ 
if
≠≠ 
(
≠≠ 
model
≠≠ 
.
≠≠ (
AllowAuthorizationCodeFlow
≠≠ 0
)
≠≠0 1
{
ÆÆ 

descriptor
ØØ 
.
ØØ 
Permissions
ØØ &
.
ØØ& '
Add
ØØ' *
(
ØØ* +!
OpenIddictConstants
ØØ+ >
.
ØØ> ?
Permissions
ØØ? J
.
ØØJ K

GrantTypes
ØØK U
.
ØØU V
AuthorizationCode
ØØV g
)
ØØg h
;
ØØh i
}
∞∞ 
if
±± 
(
±± 
model
±± 
.
±± (
AllowClientCredentialsFlow
±± 0
)
±±0 1
{
≤≤ 

descriptor
≥≥ 
.
≥≥ 
Permissions
≥≥ &
.
≥≥& '
Add
≥≥' *
(
≥≥* +!
OpenIddictConstants
≥≥+ >
.
≥≥> ?
Permissions
≥≥? J
.
≥≥J K

GrantTypes
≥≥K U
.
≥≥U V
ClientCredentials
≥≥V g
)
≥≥g h
;
≥≥h i
}
¥¥ 
if
µµ 
(
µµ 
model
µµ 
.
µµ 
AllowImplicitFlow
µµ '
)
µµ' (
{
∂∂ 

descriptor
∑∑ 
.
∑∑ 
Permissions
∑∑ &
.
∑∑& '
Add
∑∑' *
(
∑∑* +!
OpenIddictConstants
∑∑+ >
.
∑∑> ?
Permissions
∑∑? J
.
∑∑J K

GrantTypes
∑∑K U
.
∑∑U V
Implicit
∑∑V ^
)
∑∑^ _
;
∑∑_ `
}
∏∏ 
if
ππ 
(
ππ 
model
ππ 
.
ππ 
AllowPasswordFlow
ππ '
)
ππ' (
{
∫∫ 

descriptor
ªª 
.
ªª 
Permissions
ªª &
.
ªª& '
Add
ªª' *
(
ªª* +!
OpenIddictConstants
ªª+ >
.
ªª> ?
Permissions
ªª? J
.
ªªJ K

GrantTypes
ªªK U
.
ªªU V
Password
ªªV ^
)
ªª^ _
;
ªª_ `
}
ºº 
if
ΩΩ 
(
ΩΩ 
model
ΩΩ 
.
ΩΩ #
AllowRefreshTokenFlow
ΩΩ +
)
ΩΩ+ ,
{
ææ 

descriptor
øø 
.
øø 
Permissions
øø &
.
øø& '
Add
øø' *
(
øø* +!
OpenIddictConstants
øø+ >
.
øø> ?
Permissions
øø? J
.
øøJ K

GrantTypes
øøK U
.
øøU V
RefreshToken
øøV b
)
øøb c
;
øøc d
}
¿¿ 
if
¡¡ 
(
¡¡ 
model
¡¡ 
.
¡¡ (
AllowAuthorizationCodeFlow
¡¡ 0
||
¡¡1 3
model
¡¡4 9
.
¡¡9 :
AllowImplicitFlow
¡¡: K
)
¡¡K L
{
¬¬ 

descriptor
√√ 
.
√√ 
Permissions
√√ &
.
√√& '
Add
√√' *
(
√√* +!
OpenIddictConstants
√√+ >
.
√√> ?
Permissions
√√? J
.
√√J K
	Endpoints
√√K T
.
√√T U
Authorization
√√U b
)
√√b c
;
√√c d
}
ƒƒ 
if
≈≈ 
(
≈≈ 
model
≈≈ 
.
≈≈ (
AllowAuthorizationCodeFlow
≈≈ 0
||
≈≈1 3
model
≈≈4 9
.
≈≈9 :(
AllowClientCredentialsFlow
≈≈: T
||
≈≈U W
model
∆∆ 
.
∆∆ 
AllowPasswordFlow
∆∆ '
||
∆∆( *
model
∆∆+ 0
.
∆∆0 1#
AllowRefreshTokenFlow
∆∆1 F
)
∆∆F G
{
«« 

descriptor
»» 
.
»» 
Permissions
»» &
.
»»& '
Add
»»' *
(
»»* +!
OpenIddictConstants
»»+ >
.
»»> ?
Permissions
»»? J
.
»»J K
	Endpoints
»»K T
.
»»T U
Token
»»U Z
)
»»Z [
;
»»[ \
}
…… 
if
ÀÀ 
(
ÀÀ 
model
ÀÀ 
.
ÀÀ (
AllowAuthorizationCodeFlow
ÀÀ 0
)
ÀÀ0 1
{
ÃÃ 

descriptor
ÕÕ 
.
ÕÕ 
Permissions
ÕÕ &
.
ÕÕ& '
Add
ÕÕ' *
(
ÕÕ* +!
OpenIddictConstants
ÕÕ+ >
.
ÕÕ> ?
Permissions
ÕÕ? J
.
ÕÕJ K
ResponseTypes
ÕÕK X
.
ÕÕX Y
Code
ÕÕY ]
)
ÕÕ] ^
;
ÕÕ^ _
}
ŒŒ 
if
œœ 
(
œœ 
model
œœ 
.
œœ 
AllowImplicitFlow
œœ '
)
œœ' (
{
–– 

descriptor
—— 
.
—— 
Permissions
—— &
.
——& '
Add
——' *
(
——* +!
OpenIddictConstants
——+ >
.
——> ?
Permissions
——? J
.
——J K
ResponseTypes
——K X
.
——X Y
IdToken
——Y `
)
——` a
;
——a b
if
”” 
(
”” 
string
”” 
.
”” 
Equals
”” !
(
””! "
model
””" '
.
””' (
Type
””( ,
,
””, -!
OpenIddictConstants
””. A
.
””A B
ClientTypes
””B M
.
””M N
Public
””N T
,
””T U
StringComparison
””V f
.
””f g
OrdinalIgnoreCase
””g x
)
””x y
)
””y z
{
‘‘ 

descriptor
’’ 
.
’’ 
Permissions
’’ *
.
’’* +
Add
’’+ .
(
’’. /!
OpenIddictConstants
’’/ B
.
’’B C
Permissions
’’C N
.
’’N O
ResponseTypes
’’O \
.
’’\ ]
IdTokenToken
’’] i
)
’’i j
;
’’j k

descriptor
÷÷ 
.
÷÷ 
Permissions
÷÷ *
.
÷÷* +
Add
÷÷+ .
(
÷÷. /!
OpenIddictConstants
÷÷/ B
.
÷÷B C
Permissions
÷÷C N
.
÷÷N O
ResponseTypes
÷÷O \
.
÷÷\ ]
Token
÷÷] b
)
÷÷b c
;
÷÷c d
}
◊◊ 
}
ÿÿ 
if
ŸŸ 
(
ŸŸ 
model
ŸŸ 
.
ŸŸ 
AllowHybridFlow
ŸŸ %
)
ŸŸ% &
{
⁄⁄ 

descriptor
€€ 
.
€€ 
Permissions
€€ &
.
€€& '
Add
€€' *
(
€€* +!
OpenIddictConstants
€€+ >
.
€€> ?
Permissions
€€? J
.
€€J K
ResponseTypes
€€K X
.
€€X Y
CodeIdToken
€€Y d
)
€€d e
;
€€e f
if
›› 
(
›› 
string
›› 
.
›› 
Equals
›› !
(
››! "
model
››" '
.
››' (
Type
››( ,
,
››, -!
OpenIddictConstants
››. A
.
››A B
ClientTypes
››B M
.
››M N
Public
››N T
,
››T U
StringComparison
››V f
.
››f g
OrdinalIgnoreCase
››g x
)
››x y
)
››y z
{
ﬁﬁ 

descriptor
ﬂﬂ 
.
ﬂﬂ 
Permissions
ﬂﬂ *
.
ﬂﬂ* +
Add
ﬂﬂ+ .
(
ﬂﬂ. /!
OpenIddictConstants
ﬂﬂ/ B
.
ﬂﬂB C
Permissions
ﬂﬂC N
.
ﬂﬂN O
ResponseTypes
ﬂﬂO \
.
ﬂﬂ\ ]
CodeIdTokenToken
ﬂﬂ] m
)
ﬂﬂm n
;
ﬂﬂn o

descriptor
‡‡ 
.
‡‡ 
Permissions
‡‡ *
.
‡‡* +
Add
‡‡+ .
(
‡‡. /!
OpenIddictConstants
‡‡/ B
.
‡‡B C
Permissions
‡‡C N
.
‡‡N O
ResponseTypes
‡‡O \
.
‡‡\ ]
	CodeToken
‡‡] f
)
‡‡f g
;
‡‡g h
}
·· 
}
‚‚ 

descriptor
‰‰ 
.
‰‰ $
PostLogoutRedirectUris
‰‰ -
.
‰‰- .
	UnionWith
‰‰. 7
(
‰‰7 8
from
ÂÂ 
uri
ÂÂ 
in
ÂÂ 
model
ÂÂ !
.
ÂÂ! "$
PostLogoutRedirectUris
ÂÂ" 8
?
ÂÂ8 9
.
ÂÂ9 :
Split
ÂÂ: ?
(
ÂÂ? @
new
ÂÂ@ C
[
ÂÂC D
]
ÂÂD E
{
ÂÂF G
$str
ÂÂH K
,
ÂÂK L
$str
ÂÂM P
}
ÂÂQ R
,
ÂÂR S 
StringSplitOptions
ÂÂT f
.
ÂÂf g 
RemoveEmptyEntries
ÂÂg y
)
ÂÂy z
??
ÂÂ{ }
ArrayÂÂ~ É
.ÂÂÉ Ñ
EmptyÂÂÑ â
<ÂÂâ ä
stringÂÂä ê
>ÂÂê ë
(ÂÂë í
)ÂÂí ì
select
ÊÊ 
new
ÊÊ 
Uri
ÊÊ 
(
ÊÊ 
uri
ÊÊ "
,
ÊÊ" #
UriKind
ÊÊ$ +
.
ÊÊ+ ,
Absolute
ÊÊ, 4
)
ÊÊ4 5
)
ÊÊ5 6
;
ÊÊ6 7

descriptor
ËË 
.
ËË 
RedirectUris
ËË #
.
ËË# $
	UnionWith
ËË$ -
(
ËË- .
from
ÈÈ 
uri
ÈÈ 
in
ÈÈ 
model
ÈÈ !
.
ÈÈ! "
RedirectUris
ÈÈ" .
?
ÈÈ. /
.
ÈÈ/ 0
Split
ÈÈ0 5
(
ÈÈ5 6
new
ÈÈ6 9
[
ÈÈ9 :
]
ÈÈ: ;
{
ÈÈ< =
$str
ÈÈ> A
,
ÈÈA B
$str
ÈÈC F
}
ÈÈG H
,
ÈÈH I 
StringSplitOptions
ÈÈJ \
.
ÈÈ\ ] 
RemoveEmptyEntries
ÈÈ] o
)
ÈÈo p
??
ÈÈq s
Array
ÈÈt y
.
ÈÈy z
Empty
ÈÈz 
<ÈÈ Ä
stringÈÈÄ Ü
>ÈÈÜ á
(ÈÈá à
)ÈÈà â
select
ÍÍ 
new
ÍÍ 
Uri
ÍÍ 
(
ÍÍ 
uri
ÍÍ "
,
ÍÍ" #
UriKind
ÍÍ$ +
.
ÍÍ+ ,
Absolute
ÍÍ, 4
)
ÍÍ4 5
)
ÍÍ5 6
;
ÍÍ6 7

descriptor
ÏÏ 
.
ÏÏ 
Roles
ÏÏ 
.
ÏÏ 
	UnionWith
ÏÏ &
(
ÏÏ& '
model
ÏÏ' ,
.
ÏÏ, -
RoleEntries
ÏÏ- 8
.
ÌÌ 
Where
ÌÌ 
(
ÌÌ 
role
ÌÌ 
=>
ÌÌ 
role
ÌÌ #
.
ÌÌ# $
Selected
ÌÌ$ ,
)
ÌÌ, -
.
ÓÓ 
Select
ÓÓ 
(
ÓÓ 
role
ÓÓ 
=>
ÓÓ 
role
ÓÓ  $
.
ÓÓ$ %
Name
ÓÓ% )
)
ÓÓ) *
)
ÓÓ* +
;
ÓÓ+ ,

descriptor
 
.
 
Permissions
 "
.
" #
	UnionWith
# ,
(
, -
model
- 2
.
2 3
ScopeEntries
3 ?
.
ÒÒ 
Where
ÒÒ 
(
ÒÒ 
scope
ÒÒ 
=>
ÒÒ 
scope
ÒÒ  %
.
ÒÒ% &
Selected
ÒÒ& .
)
ÒÒ. /
.
ÚÚ 
Select
ÚÚ 
(
ÚÚ 
scope
ÚÚ 
=>
ÚÚ  !
OpenIddictConstants
ÚÚ! 4
.
ÚÚ4 5
Permissions
ÚÚ5 @
.
ÚÚ@ A
Prefixes
ÚÚA I
.
ÚÚI J
Scope
ÚÚJ O
+
ÚÚP Q
scope
ÚÚR W
.
ÚÚW X
Name
ÚÚX \
)
ÚÚ\ ]
)
ÚÚ] ^
;
ÚÚ^ _
await
ÙÙ !
_applicationManager
ÙÙ %
.
ÙÙ% &
CreateAsync
ÙÙ& 1
(
ÙÙ1 2

descriptor
ÙÙ2 <
)
ÙÙ< =
;
ÙÙ= >
if
ˆˆ 
(
ˆˆ 
string
ˆˆ 
.
ˆˆ 
IsNullOrEmpty
ˆˆ $
(
ˆˆ$ %
	returnUrl
ˆˆ% .
)
ˆˆ. /
)
ˆˆ/ 0
{
˜˜ 
return
¯¯ 
RedirectToAction
¯¯ '
(
¯¯' (
$str
¯¯( /
)
¯¯/ 0
;
¯¯0 1
}
˘˘ 
return
˚˚ 
LocalRedirect
˚˚  
(
˚˚  !
	returnUrl
˚˚! *
)
˚˚* +
;
˚˚+ ,
}
¸¸ 	
public
˛˛ 
async
˛˛ 
Task
˛˛ 
<
˛˛ 
IActionResult
˛˛ '
>
˛˛' (
Edit
˛˛) -
(
˛˛- .
string
˛˛. 4
id
˛˛5 7
,
˛˛7 8
string
˛˛9 ?
	returnUrl
˛˛@ I
=
˛˛J K
null
˛˛L P
)
˛˛P Q
{
ˇˇ 	
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
await
ÄÄ #
_authorizationService
ÄÄ ,
.
ÄÄ, -
AuthorizeAsync
ÄÄ- ;
(
ÄÄ; <
User
ÄÄ< @
,
ÄÄ@ A
Permissions
ÄÄB M
.
ÄÄM N 
ManageApplications
ÄÄN `
)
ÄÄ` a
)
ÄÄa b
{
ÅÅ 
return
ÇÇ 
Forbid
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ  
}
ÉÉ 
var
ÖÖ 
application
ÖÖ 
=
ÖÖ 
await
ÖÖ #!
_applicationManager
ÖÖ$ 7
.
ÖÖ7 8#
FindByPhysicalIdAsync
ÖÖ8 M
(
ÖÖM N
id
ÖÖN P
)
ÖÖP Q
;
ÖÖQ R
if
ÜÜ 
(
ÜÜ 
application
ÜÜ 
==
ÜÜ 
null
ÜÜ #
)
ÜÜ# $
{
áá 
return
àà 
NotFound
àà 
(
àà  
)
àà  !
;
àà! "
}
ââ 
	ValueTask
ãã 
<
ãã 
bool
ãã 
>
ãã  
HasPermissionAsync
ãã .
(
ãã. /
string
ãã/ 5

permission
ãã6 @
)
ãã@ A
=>
ããB D!
_applicationManager
ããE X
.
ããX Y 
HasPermissionAsync
ããY k
(
ããk l
application
ããl w
,
ããw x

permissionããy É
)ããÉ Ñ
;ããÑ Ö
var
çç 
model
çç 
=
çç 
new
çç ,
EditOpenIdApplicationViewModel
çç :
{
éé (
AllowAuthorizationCodeFlow
èè *
=
èè+ ,
await
èè- 2 
HasPermissionAsync
èè3 E
(
èèE F!
OpenIddictConstants
èèF Y
.
èèY Z
Permissions
èèZ e
.
èèe f

GrantTypes
èèf p
.
èèp q 
AuthorizationCodeèèq Ç
)èèÇ É
,èèÉ Ñ(
AllowClientCredentialsFlow
êê *
=
êê+ ,
await
êê- 2 
HasPermissionAsync
êê3 E
(
êêE F!
OpenIddictConstants
êêF Y
.
êêY Z
Permissions
êêZ e
.
êêe f

GrantTypes
êêf p
.
êêp q 
ClientCredentialsêêq Ç
)êêÇ É
,êêÉ Ñ
AllowImplicitFlow
ëë !
=
ëë" #
await
ëë$ ) 
HasPermissionAsync
ëë* <
(
ëë< =!
OpenIddictConstants
ëë= P
.
ëëP Q
Permissions
ëëQ \
.
ëë\ ]

GrantTypes
ëë] g
.
ëëg h
Implicit
ëëh p
)
ëëp q
,
ëëq r
AllowPasswordFlow
íí !
=
íí" #
await
íí$ ) 
HasPermissionAsync
íí* <
(
íí< =!
OpenIddictConstants
íí= P
.
ííP Q
Permissions
ííQ \
.
íí\ ]

GrantTypes
íí] g
.
ííg h
Password
ííh p
)
ííp q
,
ííq r#
AllowRefreshTokenFlow
ìì %
=
ìì& '
await
ìì( - 
HasPermissionAsync
ìì. @
(
ìì@ A!
OpenIddictConstants
ììA T
.
ììT U
Permissions
ììU `
.
ìì` a

GrantTypes
ììa k
.
ììk l
RefreshToken
ììl x
)
ììx y
,
ììy z!
AllowLogoutEndpoint
îî #
=
îî$ %
await
îî& + 
HasPermissionAsync
îî, >
(
îî> ?!
OpenIddictConstants
îî? R
.
îîR S
Permissions
îîS ^
.
îî^ _
	Endpoints
îî_ h
.
îîh i
Logout
îîi o
)
îîo p
,
îîp q
ClientId
ïï 
=
ïï 
await
ïï  !
_applicationManager
ïï! 4
.
ïï4 5
GetClientIdAsync
ïï5 E
(
ïïE F
application
ïïF Q
)
ïïQ R
,
ïïR S
ConsentType
ññ 
=
ññ 
await
ññ #!
_applicationManager
ññ$ 7
.
ññ7 8!
GetConsentTypeAsync
ññ8 K
(
ññK L
application
ññL W
)
ññW X
,
ññX Y
DisplayName
óó 
=
óó 
await
óó #!
_applicationManager
óó$ 7
.
óó7 8!
GetDisplayNameAsync
óó8 K
(
óóK L
application
óóL W
)
óóW X
,
óóX Y
Id
òò 
=
òò 
await
òò !
_applicationManager
òò .
.
òò. / 
GetPhysicalIdAsync
òò/ A
(
òòA B
application
òòB M
)
òòM N
,
òòN O$
PostLogoutRedirectUris
ôô &
=
ôô' (
string
ôô) /
.
ôô/ 0
Join
ôô0 4
(
ôô4 5
$str
ôô5 8
,
ôô8 9
await
ôô: ?!
_applicationManager
ôô@ S
.
ôôS T,
GetPostLogoutRedirectUrisAsync
ôôT r
(
ôôr s
application
ôôs ~
)
ôô~ 
)ôô Ä
,ôôÄ Å
RedirectUris
öö 
=
öö 
string
öö %
.
öö% &
Join
öö& *
(
öö* +
$str
öö+ .
,
öö. /
await
öö0 5!
_applicationManager
öö6 I
.
ööI J"
GetRedirectUrisAsync
ööJ ^
(
öö^ _
application
öö_ j
)
ööj k
)
öök l
,
ööl m
Type
õõ 
=
õõ 
await
õõ !
_applicationManager
õõ 0
.
õõ0 1 
GetClientTypeAsync
õõ1 C
(
õõC D
application
õõD O
)
õõO P
}
úú 
;
úú 
var
ûû 
roleService
ûû 
=
ûû 
HttpContext
ûû )
.
ûû) *
RequestServices
ûû* 9
?
ûû9 :
.
ûû: ;

GetService
ûû; E
<
ûûE F
IRoleService
ûûF R
>
ûûR S
(
ûûS T
)
ûûT U
;
ûûU V
if
üü 
(
üü 
roleService
üü 
!=
üü 
null
üü #
)
üü# $
{
†† 
var
°° 
roles
°° 
=
°° 
await
°° !!
_applicationManager
°°" 5
.
°°5 6
GetRolesAsync
°°6 C
(
°°C D
application
°°D O
)
°°O P
;
°°P Q
foreach
££ 
(
££ 
var
££ 
role
££ !
in
££" $
await
££% *
roleService
££+ 6
.
££6 7
GetRoleNamesAsync
££7 H
(
££H I
)
££I J
)
££J K
{
§§ 
model
•• 
.
•• 
RoleEntries
•• %
.
••% &
Add
••& )
(
••) *
new
••* -,
EditOpenIdApplicationViewModel
••. L
.
••L M
	RoleEntry
••M V
{
¶¶ 
Name
ßß 
=
ßß 
role
ßß #
,
ßß# $
Selected
®®  
=
®®! "
roles
®®# (
.
®®( )
Contains
®®) 1
(
®®1 2
role
®®2 6
,
®®6 7
StringComparer
®®8 F
.
®®F G
OrdinalIgnoreCase
®®G X
)
®®X Y
}
©© 
)
©© 
;
©© 
}
™™ 
}
´´ 
else
¨¨ 
{
≠≠ 
	_notifier
ÆÆ 
.
ÆÆ 
Warning
ÆÆ !
(
ÆÆ! "
H
ÆÆ" #
[
ÆÆ# $
$str
ÆÆ$ X
]
ÆÆX Y
)
ÆÆY Z
;
ÆÆZ [
}
ØØ 
var
±± 
permissions
±± 
=
±± 
await
±± #!
_applicationManager
±±$ 7
.
±±7 8!
GetPermissionsAsync
±±8 K
(
±±K L
application
±±L W
)
±±W X
;
±±X Y
await
≤≤ 
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
scope
≤≤ $
in
≤≤% '
_scopeManager
≤≤( 5
.
≤≤5 6
	ListAsync
≤≤6 ?
(
≤≤? @
)
≤≤@ A
)
≤≤A B
{
≥≥ 
var
¥¥ 
	scopeName
¥¥ 
=
¥¥ 
await
¥¥  %
_scopeManager
¥¥& 3
.
¥¥3 4
GetNameAsync
¥¥4 @
(
¥¥@ A
scope
¥¥A F
)
¥¥F G
;
¥¥G H
model
µµ 
.
µµ 
ScopeEntries
µµ "
.
µµ" #
Add
µµ# &
(
µµ& '
new
µµ' *,
EditOpenIdApplicationViewModel
µµ+ I
.
µµI J

ScopeEntry
µµJ T
{
∂∂ 
Name
∑∑ 
=
∑∑ 
	scopeName
∑∑ $
,
∑∑$ %
Selected
∏∏ 
=
∏∏ 
await
∏∏ $!
_applicationManager
∏∏% 8
.
∏∏8 9 
HasPermissionAsync
∏∏9 K
(
∏∏K L
application
∏∏L W
,
∏∏W X!
OpenIddictConstants
∏∏Y l
.
∏∏l m
Permissions
∏∏m x
.
∏∏x y
Prefixes∏∏y Å
.∏∏Å Ç
Scope∏∏Ç á
+∏∏à â
	scopeName∏∏ä ì
)∏∏ì î
}
ππ 
)
ππ 
;
ππ 
}
∫∫ 
ViewData
ºº 
[
ºº 
nameof
ºº 
(
ºº "
OpenIdServerSettings
ºº 0
)
ºº0 1
]
ºº1 2
=
ºº3 4
await
ºº5 :$
GetServerSettingsAsync
ºº; Q
(
ººQ R
)
ººR S
;
ººS T
ViewData
ΩΩ 
[
ΩΩ 
$str
ΩΩ  
]
ΩΩ  !
=
ΩΩ" #
	returnUrl
ΩΩ$ -
;
ΩΩ- .
return
ææ 
View
ææ 
(
ææ 
model
ææ 
)
ææ 
;
ææ 
}
øø 	
[
¡¡ 	
HttpPost
¡¡	 
]
¡¡ 
public
¬¬ 
async
¬¬ 
Task
¬¬ 
<
¬¬ 
IActionResult
¬¬ '
>
¬¬' (
Edit
¬¬) -
(
¬¬- .,
EditOpenIdApplicationViewModel
¬¬. L
model
¬¬M R
,
¬¬R S
string
¬¬T Z
	returnUrl
¬¬[ d
=
¬¬e f
null
¬¬g k
)
¬¬k l
{
√√ 	
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
await
ƒƒ #
_authorizationService
ƒƒ ,
.
ƒƒ, -
AuthorizeAsync
ƒƒ- ;
(
ƒƒ; <
User
ƒƒ< @
,
ƒƒ@ A
Permissions
ƒƒB M
.
ƒƒM N 
ManageApplications
ƒƒN `
)
ƒƒ` a
)
ƒƒa b
{
≈≈ 
return
∆∆ 
Forbid
∆∆ 
(
∆∆ 
)
∆∆ 
;
∆∆  
}
«« 
var
…… 
application
…… 
=
…… 
await
…… #!
_applicationManager
……$ 7
.
……7 8#
FindByPhysicalIdAsync
……8 M
(
……M N
model
……N S
.
……S T
Id
……T V
)
……V W
;
……W X
if
   
(
   
application
   
==
   
null
   #
)
  # $
{
ÀÀ 
return
ÃÃ 
NotFound
ÃÃ 
(
ÃÃ  
)
ÃÃ  !
;
ÃÃ! "
}
ÕÕ 
if
–– 
(
–– 
string
–– 
.
–– 
IsNullOrEmpty
–– $
(
––$ %
model
––% *
.
––* +
ClientSecret
––+ 7
)
––7 8
&&
––9 ;
!
—— 
string
—— 
.
—— 
Equals
—— 
(
—— 
model
—— #
.
——# $
Type
——$ (
,
——( )!
OpenIddictConstants
——* =
.
——= >
ClientTypes
——> I
.
——I J
Public
——J P
,
——P Q
StringComparison
——R b
.
——b c
OrdinalIgnoreCase
——c t
)
——t u
&&
——v x
await
““ !
_applicationManager
““ )
.
““) * 
HasClientTypeAsync
““* <
(
““< =
application
““= H
,
““H I!
OpenIddictConstants
““J ]
.
““] ^
ClientTypes
““^ i
.
““i j
Public
““j p
)
““p q
)
““q r
{
”” 

ModelState
‘‘ 
.
‘‘ 
AddModelError
‘‘ (
(
‘‘( )
nameof
‘‘) /
(
‘‘/ 0
model
‘‘0 5
.
‘‘5 6
ClientSecret
‘‘6 B
)
‘‘B C
,
‘‘C D
S
‘‘E F
[
‘‘F G
$str
‘‘G q
]
‘‘q r
)
‘‘r s
;
‘‘s t
}
’’ 
if
◊◊ 
(
◊◊ 
!
◊◊ 
string
◊◊ 
.
◊◊ 
IsNullOrEmpty
◊◊ %
(
◊◊% &
model
◊◊& +
.
◊◊+ ,
ClientSecret
◊◊, 8
)
◊◊8 9
&&
◊◊: <
string
ÿÿ 
.
ÿÿ 
Equals
ÿÿ 
(
ÿÿ 
model
ÿÿ $
.
ÿÿ$ %
Type
ÿÿ% )
,
ÿÿ) *!
OpenIddictConstants
ÿÿ+ >
.
ÿÿ> ?
ClientTypes
ÿÿ? J
.
ÿÿJ K
Public
ÿÿK Q
,
ÿÿQ R
StringComparison
ÿÿS c
.
ÿÿc d
OrdinalIgnoreCase
ÿÿd u
)
ÿÿu v
)
ÿÿv w
{
ŸŸ 

ModelState
⁄⁄ 
.
⁄⁄ 
AddModelError
⁄⁄ (
(
⁄⁄( )
nameof
⁄⁄) /
(
⁄⁄/ 0
model
⁄⁄0 5
.
⁄⁄5 6
ClientSecret
⁄⁄6 B
)
⁄⁄B C
,
⁄⁄C D
S
⁄⁄E F
[
⁄⁄F G
$str
⁄⁄G }
]
⁄⁄} ~
)
⁄⁄~ 
;⁄⁄ Ä
}
€€ 
if
›› 
(
›› 

ModelState
›› 
.
›› 
IsValid
›› "
)
››" #
{
ﬁﬁ 
var
ﬂﬂ 
other
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ !!
_applicationManager
ﬂﬂ" 5
.
ﬂﬂ5 6!
FindByClientIdAsync
ﬂﬂ6 I
(
ﬂﬂI J
model
ﬂﬂJ O
.
ﬂﬂO P
ClientId
ﬂﬂP X
)
ﬂﬂX Y
;
ﬂﬂY Z
if
‡‡ 
(
‡‡ 
other
‡‡ 
!=
‡‡ 
null
‡‡ !
&&
‡‡" $
!
‡‡% &
string
‡‡& ,
.
‡‡, -
Equals
‡‡- 3
(
‡‡3 4
await
·· !
_applicationManager
·· -
.
··- .

GetIdAsync
··. 8
(
··8 9
other
··9 >
)
··> ?
,
··? @
await
‚‚ !
_applicationManager
‚‚ -
.
‚‚- .

GetIdAsync
‚‚. 8
(
‚‚8 9
application
‚‚9 D
)
‚‚D E
,
‚‚E F
StringComparison
‚‚G W
.
‚‚W X
Ordinal
‚‚X _
)
‚‚_ `
)
‚‚` a
{
„„ 

ModelState
‰‰ 
.
‰‰ 
AddModelError
‰‰ ,
(
‰‰, -
nameof
‰‰- 3
(
‰‰3 4
model
‰‰4 9
.
‰‰9 :
ClientId
‰‰: B
)
‰‰B C
,
‰‰C D
S
‰‰E F
[
‰‰F G
$str‰‰G á
]‰‰á à
)‰‰à â
;‰‰â ä
}
ÂÂ 
}
ÊÊ 
if
ËË 
(
ËË 
!
ËË 

ModelState
ËË 
.
ËË 
IsValid
ËË #
)
ËË# $
{
ÈÈ 
ViewData
ÍÍ 
[
ÍÍ 
nameof
ÍÍ 
(
ÍÍ  "
OpenIdServerSettings
ÍÍ  4
)
ÍÍ4 5
]
ÍÍ5 6
=
ÍÍ7 8
await
ÍÍ9 >$
GetServerSettingsAsync
ÍÍ? U
(
ÍÍU V
)
ÍÍV W
;
ÍÍW X
ViewData
ÎÎ 
[
ÎÎ 
$str
ÎÎ $
]
ÎÎ$ %
=
ÎÎ& '
	returnUrl
ÎÎ( 1
;
ÎÎ1 2
return
ÏÏ 
View
ÏÏ 
(
ÏÏ 
model
ÏÏ !
)
ÏÏ! "
;
ÏÏ" #
}
ÌÌ 
var
ÔÔ 

descriptor
ÔÔ 
=
ÔÔ 
new
ÔÔ  )
OpenIdApplicationDescriptor
ÔÔ! <
(
ÔÔ< =
)
ÔÔ= >
;
ÔÔ> ?
await
 !
_applicationManager
 %
.
% &
PopulateAsync
& 3
(
3 4

descriptor
4 >
,
> ?
application
@ K
)
K L
;
L M

descriptor
ÚÚ 
.
ÚÚ 
ClientId
ÚÚ 
=
ÚÚ  !
model
ÚÚ" '
.
ÚÚ' (
ClientId
ÚÚ( 0
;
ÚÚ0 1

descriptor
ÛÛ 
.
ÛÛ 
ConsentType
ÛÛ "
=
ÛÛ# $
model
ÛÛ% *
.
ÛÛ* +
ConsentType
ÛÛ+ 6
;
ÛÛ6 7

descriptor
ÙÙ 
.
ÙÙ 
DisplayName
ÙÙ "
=
ÙÙ# $
model
ÙÙ% *
.
ÙÙ* +
DisplayName
ÙÙ+ 6
;
ÙÙ6 7

descriptor
ıı 
.
ıı 
Type
ıı 
=
ıı 
model
ıı #
.
ıı# $
Type
ıı$ (
;
ıı( )
if
˜˜ 
(
˜˜ 
!
˜˜ 
string
˜˜ 
.
˜˜ 
IsNullOrEmpty
˜˜ %
(
˜˜% &
model
˜˜& +
.
˜˜+ ,
ClientSecret
˜˜, 8
)
˜˜8 9
)
˜˜9 :
{
¯¯ 

descriptor
˘˘ 
.
˘˘ 
ClientSecret
˘˘ '
=
˘˘( )
model
˘˘* /
.
˘˘/ 0
ClientSecret
˘˘0 <
;
˘˘< =
}
˙˙ 
if
¸¸ 
(
¸¸ 
string
¸¸ 
.
¸¸ 
Equals
¸¸ 
(
¸¸ 

descriptor
¸¸ (
.
¸¸( )
Type
¸¸) -
,
¸¸- .!
OpenIddictConstants
¸¸/ B
.
¸¸B C
ClientTypes
¸¸C N
.
¸¸N O
Public
¸¸O U
,
¸¸U V
StringComparison
¸¸W g
.
¸¸g h
OrdinalIgnoreCase
¸¸h y
)
¸¸y z
)
¸¸z {
{
˝˝ 

descriptor
˛˛ 
.
˛˛ 
ClientSecret
˛˛ '
=
˛˛( )
null
˛˛* .
;
˛˛. /
}
ˇˇ 
if
ÅÅ 
(
ÅÅ 
model
ÅÅ 
.
ÅÅ !
AllowLogoutEndpoint
ÅÅ )
)
ÅÅ) *
{
ÇÇ 

descriptor
ÉÉ 
.
ÉÉ 
Permissions
ÉÉ &
.
ÉÉ& '
Add
ÉÉ' *
(
ÉÉ* +!
OpenIddictConstants
ÉÉ+ >
.
ÉÉ> ?
Permissions
ÉÉ? J
.
ÉÉJ K
	Endpoints
ÉÉK T
.
ÉÉT U
Logout
ÉÉU [
)
ÉÉ[ \
;
ÉÉ\ ]
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 

descriptor
áá 
.
áá 
Permissions
áá &
.
áá& '
Remove
áá' -
(
áá- .!
OpenIddictConstants
áá. A
.
ááA B
Permissions
ááB M
.
ááM N
	Endpoints
ááN W
.
ááW X
Logout
ááX ^
)
áá^ _
;
áá_ `
}
àà 
if
ää 
(
ää 
model
ää 
.
ää (
AllowAuthorizationCodeFlow
ää 0
)
ää0 1
{
ãã 

descriptor
åå 
.
åå 
Permissions
åå &
.
åå& '
Add
åå' *
(
åå* +!
OpenIddictConstants
åå+ >
.
åå> ?
Permissions
åå? J
.
ååJ K

GrantTypes
ååK U
.
ååU V
AuthorizationCode
ååV g
)
ååg h
;
ååh i
}
çç 
else
éé 
{
èè 

descriptor
êê 
.
êê 
Permissions
êê &
.
êê& '
Remove
êê' -
(
êê- .!
OpenIddictConstants
êê. A
.
êêA B
Permissions
êêB M
.
êêM N

GrantTypes
êêN X
.
êêX Y
AuthorizationCode
êêY j
)
êêj k
;
êêk l
}
ëë 
if
ìì 
(
ìì 
model
ìì 
.
ìì (
AllowClientCredentialsFlow
ìì 0
)
ìì0 1
{
îî 

descriptor
ïï 
.
ïï 
Permissions
ïï &
.
ïï& '
Add
ïï' *
(
ïï* +!
OpenIddictConstants
ïï+ >
.
ïï> ?
Permissions
ïï? J
.
ïïJ K

GrantTypes
ïïK U
.
ïïU V
ClientCredentials
ïïV g
)
ïïg h
;
ïïh i
}
ññ 
else
óó 
{
òò 

descriptor
ôô 
.
ôô 
Permissions
ôô &
.
ôô& '
Remove
ôô' -
(
ôô- .!
OpenIddictConstants
ôô. A
.
ôôA B
Permissions
ôôB M
.
ôôM N

GrantTypes
ôôN X
.
ôôX Y
ClientCredentials
ôôY j
)
ôôj k
;
ôôk l
}
öö 
if
úú 
(
úú 
model
úú 
.
úú 
AllowImplicitFlow
úú '
)
úú' (
{
ùù 

descriptor
ûû 
.
ûû 
Permissions
ûû &
.
ûû& '
Add
ûû' *
(
ûû* +!
OpenIddictConstants
ûû+ >
.
ûû> ?
Permissions
ûû? J
.
ûûJ K

GrantTypes
ûûK U
.
ûûU V
Implicit
ûûV ^
)
ûû^ _
;
ûû_ `
}
üü 
else
†† 
{
°° 

descriptor
¢¢ 
.
¢¢ 
Permissions
¢¢ &
.
¢¢& '
Remove
¢¢' -
(
¢¢- .!
OpenIddictConstants
¢¢. A
.
¢¢A B
Permissions
¢¢B M
.
¢¢M N

GrantTypes
¢¢N X
.
¢¢X Y
Implicit
¢¢Y a
)
¢¢a b
;
¢¢b c
}
££ 
if
•• 
(
•• 
model
•• 
.
•• 
AllowPasswordFlow
•• '
)
••' (
{
¶¶ 

descriptor
ßß 
.
ßß 
Permissions
ßß &
.
ßß& '
Add
ßß' *
(
ßß* +!
OpenIddictConstants
ßß+ >
.
ßß> ?
Permissions
ßß? J
.
ßßJ K

GrantTypes
ßßK U
.
ßßU V
Password
ßßV ^
)
ßß^ _
;
ßß_ `
}
®® 
else
©© 
{
™™ 

descriptor
´´ 
.
´´ 
Permissions
´´ &
.
´´& '
Remove
´´' -
(
´´- .!
OpenIddictConstants
´´. A
.
´´A B
Permissions
´´B M
.
´´M N

GrantTypes
´´N X
.
´´X Y
Password
´´Y a
)
´´a b
;
´´b c
}
¨¨ 
if
ÆÆ 
(
ÆÆ 
model
ÆÆ 
.
ÆÆ #
AllowRefreshTokenFlow
ÆÆ +
)
ÆÆ+ ,
{
ØØ 

descriptor
∞∞ 
.
∞∞ 
Permissions
∞∞ &
.
∞∞& '
Add
∞∞' *
(
∞∞* +!
OpenIddictConstants
∞∞+ >
.
∞∞> ?
Permissions
∞∞? J
.
∞∞J K

GrantTypes
∞∞K U
.
∞∞U V
RefreshToken
∞∞V b
)
∞∞b c
;
∞∞c d
}
±± 
else
≤≤ 
{
≥≥ 

descriptor
¥¥ 
.
¥¥ 
Permissions
¥¥ &
.
¥¥& '
Remove
¥¥' -
(
¥¥- .!
OpenIddictConstants
¥¥. A
.
¥¥A B
Permissions
¥¥B M
.
¥¥M N

GrantTypes
¥¥N X
.
¥¥X Y
RefreshToken
¥¥Y e
)
¥¥e f
;
¥¥f g
}
µµ 
if
∑∑ 
(
∑∑ 
model
∑∑ 
.
∑∑ (
AllowAuthorizationCodeFlow
∑∑ 0
||
∑∑1 3
model
∑∑4 9
.
∑∑9 :
AllowImplicitFlow
∑∑: K
)
∑∑K L
{
∏∏ 

descriptor
ππ 
.
ππ 
Permissions
ππ &
.
ππ& '
Add
ππ' *
(
ππ* +!
OpenIddictConstants
ππ+ >
.
ππ> ?
Permissions
ππ? J
.
ππJ K
	Endpoints
ππK T
.
ππT U
Authorization
ππU b
)
ππb c
;
ππc d
}
∫∫ 
else
ªª 
{
ºº 

descriptor
ΩΩ 
.
ΩΩ 
Permissions
ΩΩ &
.
ΩΩ& '
Remove
ΩΩ' -
(
ΩΩ- .!
OpenIddictConstants
ΩΩ. A
.
ΩΩA B
Permissions
ΩΩB M
.
ΩΩM N
	Endpoints
ΩΩN W
.
ΩΩW X
Authorization
ΩΩX e
)
ΩΩe f
;
ΩΩf g
}
ææ 
if
¿¿ 
(
¿¿ 
model
¿¿ 
.
¿¿ (
AllowAuthorizationCodeFlow
¿¿ 0
||
¿¿1 3
model
¿¿4 9
.
¿¿9 :(
AllowClientCredentialsFlow
¿¿: T
||
¿¿U W
model
¡¡ 
.
¡¡ 
AllowPasswordFlow
¡¡ '
||
¡¡( *
model
¡¡+ 0
.
¡¡0 1#
AllowRefreshTokenFlow
¡¡1 F
)
¡¡F G
{
¬¬ 

descriptor
√√ 
.
√√ 
Permissions
√√ &
.
√√& '
Add
√√' *
(
√√* +!
OpenIddictConstants
√√+ >
.
√√> ?
Permissions
√√? J
.
√√J K
	Endpoints
√√K T
.
√√T U
Token
√√U Z
)
√√Z [
;
√√[ \
}
ƒƒ 
else
≈≈ 
{
∆∆ 

descriptor
«« 
.
«« 
Permissions
«« &
.
««& '
Remove
««' -
(
««- .!
OpenIddictConstants
««. A
.
««A B
Permissions
««B M
.
««M N
	Endpoints
««N W
.
««W X
Token
««X ]
)
««] ^
;
««^ _
}
»» 
if
   
(
   
model
   
.
   (
AllowAuthorizationCodeFlow
   0
)
  0 1
{
ÀÀ 

descriptor
ÃÃ 
.
ÃÃ 
Permissions
ÃÃ &
.
ÃÃ& '
Add
ÃÃ' *
(
ÃÃ* +!
OpenIddictConstants
ÃÃ+ >
.
ÃÃ> ?
Permissions
ÃÃ? J
.
ÃÃJ K
ResponseTypes
ÃÃK X
.
ÃÃX Y
Code
ÃÃY ]
)
ÃÃ] ^
;
ÃÃ^ _
}
ÕÕ 
else
ŒŒ 
{
œœ 

descriptor
–– 
.
–– 
Permissions
–– &
.
––& '
Remove
––' -
(
––- .!
OpenIddictConstants
––. A
.
––A B
Permissions
––B M
.
––M N
ResponseTypes
––N [
.
––[ \
Code
––\ `
)
––` a
;
––a b
}
—— 
if
”” 
(
”” 
model
”” 
.
”” 
AllowImplicitFlow
”” '
)
””' (
{
‘‘ 

descriptor
’’ 
.
’’ 
Permissions
’’ &
.
’’& '
Add
’’' *
(
’’* +!
OpenIddictConstants
’’+ >
.
’’> ?
Permissions
’’? J
.
’’J K
ResponseTypes
’’K X
.
’’X Y
IdToken
’’Y `
)
’’` a
;
’’a b
if
◊◊ 
(
◊◊ 
string
◊◊ 
.
◊◊ 
Equals
◊◊ !
(
◊◊! "
model
◊◊" '
.
◊◊' (
Type
◊◊( ,
,
◊◊, -!
OpenIddictConstants
◊◊. A
.
◊◊A B
ClientTypes
◊◊B M
.
◊◊M N
Public
◊◊N T
,
◊◊T U
StringComparison
◊◊V f
.
◊◊f g
OrdinalIgnoreCase
◊◊g x
)
◊◊x y
)
◊◊y z
{
ÿÿ 

descriptor
ŸŸ 
.
ŸŸ 
Permissions
ŸŸ *
.
ŸŸ* +
Add
ŸŸ+ .
(
ŸŸ. /!
OpenIddictConstants
ŸŸ/ B
.
ŸŸB C
Permissions
ŸŸC N
.
ŸŸN O
ResponseTypes
ŸŸO \
.
ŸŸ\ ]
IdTokenToken
ŸŸ] i
)
ŸŸi j
;
ŸŸj k

descriptor
⁄⁄ 
.
⁄⁄ 
Permissions
⁄⁄ *
.
⁄⁄* +
Add
⁄⁄+ .
(
⁄⁄. /!
OpenIddictConstants
⁄⁄/ B
.
⁄⁄B C
Permissions
⁄⁄C N
.
⁄⁄N O
ResponseTypes
⁄⁄O \
.
⁄⁄\ ]
Token
⁄⁄] b
)
⁄⁄b c
;
⁄⁄c d
}
€€ 
else
‹‹ 
{
›› 

descriptor
ﬁﬁ 
.
ﬁﬁ 
Permissions
ﬁﬁ *
.
ﬁﬁ* +
Remove
ﬁﬁ+ 1
(
ﬁﬁ1 2!
OpenIddictConstants
ﬁﬁ2 E
.
ﬁﬁE F
Permissions
ﬁﬁF Q
.
ﬁﬁQ R
ResponseTypes
ﬁﬁR _
.
ﬁﬁ_ `
IdTokenToken
ﬁﬁ` l
)
ﬁﬁl m
;
ﬁﬁm n

descriptor
ﬂﬂ 
.
ﬂﬂ 
Permissions
ﬂﬂ *
.
ﬂﬂ* +
Remove
ﬂﬂ+ 1
(
ﬂﬂ1 2!
OpenIddictConstants
ﬂﬂ2 E
.
ﬂﬂE F
Permissions
ﬂﬂF Q
.
ﬂﬂQ R
ResponseTypes
ﬂﬂR _
.
ﬂﬂ_ `
Token
ﬂﬂ` e
)
ﬂﬂe f
;
ﬂﬂf g
}
‡‡ 
}
·· 
else
‚‚ 
{
„„ 

descriptor
‰‰ 
.
‰‰ 
Permissions
‰‰ &
.
‰‰& '
Remove
‰‰' -
(
‰‰- .!
OpenIddictConstants
‰‰. A
.
‰‰A B
Permissions
‰‰B M
.
‰‰M N
ResponseTypes
‰‰N [
.
‰‰[ \
IdToken
‰‰\ c
)
‰‰c d
;
‰‰d e

descriptor
ÂÂ 
.
ÂÂ 
Permissions
ÂÂ &
.
ÂÂ& '
Remove
ÂÂ' -
(
ÂÂ- .!
OpenIddictConstants
ÂÂ. A
.
ÂÂA B
Permissions
ÂÂB M
.
ÂÂM N
ResponseTypes
ÂÂN [
.
ÂÂ[ \
IdTokenToken
ÂÂ\ h
)
ÂÂh i
;
ÂÂi j

descriptor
ÊÊ 
.
ÊÊ 
Permissions
ÊÊ &
.
ÊÊ& '
Remove
ÊÊ' -
(
ÊÊ- .!
OpenIddictConstants
ÊÊ. A
.
ÊÊA B
Permissions
ÊÊB M
.
ÊÊM N
ResponseTypes
ÊÊN [
.
ÊÊ[ \
Token
ÊÊ\ a
)
ÊÊa b
;
ÊÊb c
}
ÁÁ 
if
ËË 
(
ËË 
model
ËË 
.
ËË 
AllowHybridFlow
ËË %
)
ËË% &
{
ÈÈ 

descriptor
ÍÍ 
.
ÍÍ 
Permissions
ÍÍ &
.
ÍÍ& '
Add
ÍÍ' *
(
ÍÍ* +!
OpenIddictConstants
ÍÍ+ >
.
ÍÍ> ?
Permissions
ÍÍ? J
.
ÍÍJ K
ResponseTypes
ÍÍK X
.
ÍÍX Y
CodeIdToken
ÍÍY d
)
ÍÍd e
;
ÍÍe f
if
ÏÏ 
(
ÏÏ 
string
ÏÏ 
.
ÏÏ 
Equals
ÏÏ !
(
ÏÏ! "
model
ÏÏ" '
.
ÏÏ' (
Type
ÏÏ( ,
,
ÏÏ, -!
OpenIddictConstants
ÏÏ. A
.
ÏÏA B
ClientTypes
ÏÏB M
.
ÏÏM N
Public
ÏÏN T
,
ÏÏT U
StringComparison
ÏÏV f
.
ÏÏf g
OrdinalIgnoreCase
ÏÏg x
)
ÏÏx y
)
ÏÏy z
{
ÌÌ 

descriptor
ÓÓ 
.
ÓÓ 
Permissions
ÓÓ *
.
ÓÓ* +
Add
ÓÓ+ .
(
ÓÓ. /!
OpenIddictConstants
ÓÓ/ B
.
ÓÓB C
Permissions
ÓÓC N
.
ÓÓN O
ResponseTypes
ÓÓO \
.
ÓÓ\ ]
CodeIdTokenToken
ÓÓ] m
)
ÓÓm n
;
ÓÓn o

descriptor
ÔÔ 
.
ÔÔ 
Permissions
ÔÔ *
.
ÔÔ* +
Add
ÔÔ+ .
(
ÔÔ. /!
OpenIddictConstants
ÔÔ/ B
.
ÔÔB C
Permissions
ÔÔC N
.
ÔÔN O
ResponseTypes
ÔÔO \
.
ÔÔ\ ]
	CodeToken
ÔÔ] f
)
ÔÔf g
;
ÔÔg h
}
 
else
ÒÒ 
{
ÚÚ 

descriptor
ÛÛ 
.
ÛÛ 
Permissions
ÛÛ *
.
ÛÛ* +
Remove
ÛÛ+ 1
(
ÛÛ1 2!
OpenIddictConstants
ÛÛ2 E
.
ÛÛE F
Permissions
ÛÛF Q
.
ÛÛQ R
ResponseTypes
ÛÛR _
.
ÛÛ_ `
CodeIdTokenToken
ÛÛ` p
)
ÛÛp q
;
ÛÛq r

descriptor
ÙÙ 
.
ÙÙ 
Permissions
ÙÙ *
.
ÙÙ* +
Remove
ÙÙ+ 1
(
ÙÙ1 2!
OpenIddictConstants
ÙÙ2 E
.
ÙÙE F
Permissions
ÙÙF Q
.
ÙÙQ R
ResponseTypes
ÙÙR _
.
ÙÙ_ `
	CodeToken
ÙÙ` i
)
ÙÙi j
;
ÙÙj k
}
ıı 
}
ˆˆ 
else
˜˜ 
{
¯¯ 

descriptor
˘˘ 
.
˘˘ 
Permissions
˘˘ &
.
˘˘& '
Remove
˘˘' -
(
˘˘- .!
OpenIddictConstants
˘˘. A
.
˘˘A B
Permissions
˘˘B M
.
˘˘M N
ResponseTypes
˘˘N [
.
˘˘[ \
CodeIdToken
˘˘\ g
)
˘˘g h
;
˘˘h i

descriptor
˙˙ 
.
˙˙ 
Permissions
˙˙ &
.
˙˙& '
Remove
˙˙' -
(
˙˙- .!
OpenIddictConstants
˙˙. A
.
˙˙A B
Permissions
˙˙B M
.
˙˙M N
ResponseTypes
˙˙N [
.
˙˙[ \
CodeIdTokenToken
˙˙\ l
)
˙˙l m
;
˙˙m n

descriptor
˚˚ 
.
˚˚ 
Permissions
˚˚ &
.
˚˚& '
Remove
˚˚' -
(
˚˚- .!
OpenIddictConstants
˚˚. A
.
˚˚A B
Permissions
˚˚B M
.
˚˚M N
ResponseTypes
˚˚N [
.
˚˚[ \
	CodeToken
˚˚\ e
)
˚˚e f
;
˚˚f g
}
¸¸ 

descriptor
˛˛ 
.
˛˛ 
Roles
˛˛ 
.
˛˛ 
Clear
˛˛ "
(
˛˛" #
)
˛˛# $
;
˛˛$ %
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
selectedRole
ÄÄ %
in
ÄÄ& (
(
ÄÄ) *
model
ÄÄ* /
.
ÄÄ/ 0
RoleEntries
ÄÄ0 ;
.
ÅÅ 
Where
ÅÅ 
(
ÅÅ 
role
ÅÅ 
=>
ÅÅ 
role
ÅÅ #
.
ÅÅ# $
Selected
ÅÅ$ ,
)
ÅÅ, -
.
ÇÇ 
Select
ÇÇ 
(
ÇÇ 
role
ÇÇ 
=>
ÇÇ 
role
ÇÇ  $
.
ÇÇ$ %
Name
ÇÇ% )
)
ÇÇ) *
)
ÇÇ* +
)
ÇÇ+ ,
{
ÉÉ 

descriptor
ÑÑ 
.
ÑÑ 
Roles
ÑÑ  
.
ÑÑ  !
Add
ÑÑ! $
(
ÑÑ$ %
selectedRole
ÑÑ% 1
)
ÑÑ1 2
;
ÑÑ2 3
}
ÖÖ 

descriptor
áá 
.
áá 
Permissions
áá "
.
áá" #
RemoveWhere
áá# .
(
áá. /

permission
áá/ 9
=>
áá: <

permission
áá= G
.
ááG H

StartsWith
ááH R
(
ááR S!
OpenIddictConstants
ááS f
.
ááf g
Permissions
áág r
.
áár s
Prefixes
áás {
.
áá{ |
Scopeáá| Å
)ááÅ Ç
)ááÇ É
;ááÉ Ñ
foreach
àà 
(
àà 
var
àà 
selectedScope
àà &
in
àà' )
(
àà* +
model
àà+ 0
.
àà0 1
ScopeEntries
àà1 =
.
ââ 
Where
ââ 
(
ââ 
scope
ââ 
=>
ââ 
scope
ââ  %
.
ââ% &
Selected
ââ& .
)
ââ. /
.
ää 
Select
ää 
(
ää 
scope
ää 
=>
ää  
scope
ää! &
.
ää& '
Name
ää' +
)
ää+ ,
)
ää, -
)
ää- .
{
ãã 

descriptor
åå 
.
åå 
Permissions
åå &
.
åå& '
Add
åå' *
(
åå* +!
OpenIddictConstants
åå+ >
.
åå> ?
Permissions
åå? J
.
ååJ K
Prefixes
ååK S
.
ååS T
Scope
ååT Y
+
ååZ [
selectedScope
åå\ i
)
ååi j
;
ååj k
}
çç 

descriptor
èè 
.
èè $
PostLogoutRedirectUris
èè -
.
èè- .
Clear
èè. 3
(
èè3 4
)
èè4 5
;
èè5 6
foreach
êê 
(
êê 
Uri
êê 
uri
êê 
in
êê 
(
ëë 
from
ëë 
uri
ëë 
in
ëë 
model
ëë "
.
ëë" #$
PostLogoutRedirectUris
ëë# 9
?
ëë9 :
.
ëë: ;
Split
ëë; @
(
ëë@ A
new
ëëA D
[
ëëD E
]
ëëE F
{
ëëG H
$str
ëëI L
,
ëëL M
$str
ëëN Q
}
ëëR S
,
ëëS T 
StringSplitOptions
ëëU g
.
ëëg h 
RemoveEmptyEntries
ëëh z
)
ëëz {
??
ëë| ~
Arrayëë Ñ
.ëëÑ Ö
EmptyëëÖ ä
<ëëä ã
stringëëã ë
>ëëë í
(ëëí ì
)ëëì î
select
íí 
new
íí 
Uri
íí 
(
íí  
uri
íí  #
,
íí# $
UriKind
íí% ,
.
íí, -
Absolute
íí- 5
)
íí5 6
)
íí6 7
)
íí7 8
{
ìì 

descriptor
îî 
.
îî $
PostLogoutRedirectUris
îî 1
.
îî1 2
Add
îî2 5
(
îî5 6
uri
îî6 9
)
îî9 :
;
îî: ;
}
ïï 

descriptor
óó 
.
óó 
RedirectUris
óó #
.
óó# $
Clear
óó$ )
(
óó) *
)
óó* +
;
óó+ ,
foreach
òò 
(
òò 
Uri
òò 
uri
òò 
in
òò 
(
ôô 
from
ôô 
uri
ôô 
in
ôô 
model
ôô !
.
ôô! "
RedirectUris
ôô" .
?
ôô. /
.
ôô/ 0
Split
ôô0 5
(
ôô5 6
new
ôô6 9
[
ôô9 :
]
ôô: ;
{
ôô< =
$str
ôô> A
,
ôôA B
$str
ôôC F
}
ôôG H
,
ôôH I 
StringSplitOptions
ôôJ \
.
ôô\ ] 
RemoveEmptyEntries
ôô] o
)
ôôo p
??
ôôq s
Array
ôôt y
.
ôôy z
Empty
ôôz 
<ôô Ä
stringôôÄ Ü
>ôôÜ á
(ôôá à
)ôôà â
select
öö 
new
öö 
Uri
öö 
(
öö 
uri
öö "
,
öö" #
UriKind
öö$ +
.
öö+ ,
Absolute
öö, 4
)
öö4 5
)
öö5 6
)
öö6 7
{
õõ 

descriptor
úú 
.
úú 
RedirectUris
úú '
.
úú' (
Add
úú( +
(
úú+ ,
uri
úú, /
)
úú/ 0
;
úú0 1
}
ùù 
await
üü !
_applicationManager
üü %
.
üü% &
UpdateAsync
üü& 1
(
üü1 2
application
üü2 =
,
üü= >

descriptor
üü? I
)
üüI J
;
üüJ K
if
°° 
(
°° 
string
°° 
.
°° 
IsNullOrEmpty
°° $
(
°°$ %
	returnUrl
°°% .
)
°°. /
)
°°/ 0
{
¢¢ 
return
££ 
RedirectToAction
££ '
(
££' (
$str
££( /
)
££/ 0
;
££0 1
}
§§ 
return
¶¶ 
LocalRedirect
¶¶  
(
¶¶  !
	returnUrl
¶¶! *
)
¶¶* +
;
¶¶+ ,
}
ßß 	
[
©© 	
HttpPost
©©	 
]
©© 
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IActionResult
™™ '
>
™™' (
Delete
™™) /
(
™™/ 0
string
™™0 6
id
™™7 9
)
™™9 :
{
´´ 	
if
¨¨ 
(
¨¨ 
!
¨¨ 
await
¨¨ #
_authorizationService
¨¨ ,
.
¨¨, -
AuthorizeAsync
¨¨- ;
(
¨¨; <
User
¨¨< @
,
¨¨@ A
Permissions
¨¨B M
.
¨¨M N 
ManageApplications
¨¨N `
)
¨¨` a
)
¨¨a b
{
≠≠ 
return
ÆÆ 
Forbid
ÆÆ 
(
ÆÆ 
)
ÆÆ 
;
ÆÆ  
}
ØØ 
var
±± 
application
±± 
=
±± 
await
±± #!
_applicationManager
±±$ 7
.
±±7 8#
FindByPhysicalIdAsync
±±8 M
(
±±M N
id
±±N P
)
±±P Q
;
±±Q R
if
≤≤ 
(
≤≤ 
application
≤≤ 
==
≤≤ 
null
≤≤ #
)
≤≤# $
{
≥≥ 
return
¥¥ 
NotFound
¥¥ 
(
¥¥  
)
¥¥  !
;
¥¥! "
}
µµ 
await
∑∑ !
_applicationManager
∑∑ %
.
∑∑% &
DeleteAsync
∑∑& 1
(
∑∑1 2
application
∑∑2 =
)
∑∑= >
;
∑∑> ?
return
ππ 
RedirectToAction
ππ #
(
ππ# $
nameof
ππ$ *
(
ππ* +
Index
ππ+ 0
)
ππ0 1
)
ππ1 2
;
ππ2 3
}
∫∫ 	
private
ºº 
async
ºº 
Task
ºº 
<
ºº "
OpenIdServerSettings
ºº /
>
ºº/ 0$
GetServerSettingsAsync
ºº1 G
(
ººG H
)
ººH I
{
ΩΩ 	
if
ææ 
(
ææ 
_shellDescriptor
ææ  
.
ææ  !
Features
ææ! )
.
ææ) *
Any
ææ* -
(
ææ- .
feature
ææ. 5
=>
ææ6 8
feature
ææ9 @
.
ææ@ A
Id
ææA C
==
ææD F
OpenIdConstants
ææG V
.
ææV W
Features
ææW _
.
ææ_ `
Server
ææ` f
)
ææf g
)
ææg h
{
øø 
var
¿¿ 
service
¿¿ 
=
¿¿ 
HttpContext
¿¿ )
.
¿¿) *
RequestServices
¿¿* 9
.
¿¿9 : 
GetRequiredService
¿¿: L
<
¿¿L M"
IOpenIdServerService
¿¿M a
>
¿¿a b
(
¿¿b c
)
¿¿c d
;
¿¿d e
var
¡¡ 
settings
¡¡ 
=
¡¡ 
await
¡¡ $
service
¡¡% ,
.
¡¡, -
GetSettingsAsync
¡¡- =
(
¡¡= >
)
¡¡> ?
;
¡¡? @
if
¬¬ 
(
¬¬ 
(
¬¬ 
await
¬¬ 
service
¬¬ "
.
¬¬" ##
ValidateSettingsAsync
¬¬# 8
(
¬¬8 9
settings
¬¬9 A
)
¬¬A B
)
¬¬B C
.
¬¬C D
Any
¬¬D G
(
¬¬G H
result
¬¬H N
=>
¬¬O Q
result
¬¬R X
!=
¬¬Y [
ValidationResult
¬¬\ l
.
¬¬l m
Success
¬¬m t
)
¬¬t u
)
¬¬u v
{
√√ 
	_notifier
ƒƒ 
.
ƒƒ 
Warning
ƒƒ %
(
ƒƒ% &
H
ƒƒ& '
[
ƒƒ' (
$str
ƒƒ( ^
]
ƒƒ^ _
)
ƒƒ_ `
;
ƒƒ` a
}
≈≈ 
return
«« 
settings
«« 
;
««  
}
»» 
return
   
null
   
;
   
}
ÀÀ 	
}
ÃÃ 
}ÕÕ ˜œ
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Controllers\ScopeController.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Controllers (
{ 
[ 
Admin 

,
 
Feature 
( 
OpenIdConstants #
.# $
Features$ ,
., -

Management- 7
)7 8
]8 9
public 

class 
ScopeController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
IStringLocalizer )
S* +
;+ ,
private 
readonly 
IOpenIdScopeManager ,
_scopeManager- :
;: ;
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private   
readonly   
ShellSettings   &
_shellSettings  ' 5
;  5 6
private!! 
readonly!! 

IShellHost!! #

_shellHost!!$ .
;!!. /
private"" 
readonly"" 
dynamic""  
New""! $
;""$ %
public$$ 
ScopeController$$ 
($$ 
IOpenIdScopeManager%% 
scopeManager%%  ,
,%%, -
IShapeFactory&& 
shapeFactory&& &
,&&& '
ISiteService'' 
siteService'' $
,''$ %
IStringLocalizer(( 
<(( 
ScopeController(( ,
>((, -
stringLocalizer((. =
,((= >!
IAuthorizationService)) ! 
authorizationService))" 6
,))6 7
IHtmlLocalizer** 
<** 
ScopeController** *
>*** +
htmlLocalizer**, 9
,**9 :
	INotifier++ 
notifier++ 
,++ 
ShellDescriptor,, 
shellDescriptor,, +
,,,+ ,
ShellSettings-- 
shellSettings-- '
,--' (

IShellHost.. 
	shellHost..  
)..  !
{// 	
_scopeManager00 
=00 
scopeManager00 (
;00( )
New11 
=11 
shapeFactory11 
;11 
_siteService22 
=22 
siteService22 &
;22& '
S33 
=33 
stringLocalizer33 
;33  !
_authorizationService44 !
=44" # 
authorizationService44$ 8
;448 9
	_notifier55 
=55 
notifier55  
;55  !
_shellDescriptor66 
=66 
shellDescriptor66 .
;66. /
_shellSettings77 
=77 
shellSettings77 *
;77* +

_shellHost88 
=88 
	shellHost88 "
;88" #
}99 	
public;; 
async;; 
Task;; 
<;; 
ActionResult;; &
>;;& '
Index;;( -
(;;- .
PagerParameters;;. =
pagerParameters;;> M
);;M N
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
,==@ A
Permissions==B M
.==M N
ManageScopes==N Z
)==Z [
)==[ \
{>> 
return?? 
Forbid?? 
(?? 
)?? 
;??  
}@@ 
varBB 
siteSettingsBB 
=BB 
awaitBB $
_siteServiceBB% 1
.BB1 2 
GetSiteSettingsAsyncBB2 F
(BBF G
)BBG H
;BBH I
varCC 
pagerCC 
=CC 
newCC 
PagerCC !
(CC! "
pagerParametersCC" 1
,CC1 2
siteSettingsCC3 ?
.CC? @
PageSizeCC@ H
)CCH I
;CCI J
varDD 
countDD 
=DD 
awaitDD 
_scopeManagerDD +
.DD+ ,

CountAsyncDD, 6
(DD6 7
)DD7 8
;DD8 9
varFF 
modelFF 
=FF 
newFF %
OpenIdScopeIndexViewModelFF 5
{GG 
PagerHH 
=HH 
(HH 
awaitHH 
NewHH "
.HH" #
PagerHH# (
(HH( )
pagerHH) .
)HH. /
)HH/ 0
.HH0 1
TotalItemCountHH1 ?
(HH? @
countHH@ E
)HHE F
}II 
;II 
awaitKK 
foreachKK 
(KK 
varKK 
scopeKK $
inKK% '
_scopeManagerKK( 5
.KK5 6
	ListAsyncKK6 ?
(KK? @
pagerKK@ E
.KKE F
PageSizeKKF N
,KKN O
pagerKKP U
.KKU V
GetStartIndexKKV c
(KKc d
)KKd e
)KKe f
)KKf g
{LL 
modelMM 
.MM 
ScopesMM 
.MM 
AddMM  
(MM  !
newMM! $
OpenIdScopeEntryMM% 5
{NN 
DescriptionOO 
=OO  !
awaitOO" '
_scopeManagerOO( 5
.OO5 6
GetDescriptionAsyncOO6 I
(OOI J
scopeOOJ O
)OOO P
,OOP Q
DisplayNamePP 
=PP  !
awaitPP" '
_scopeManagerPP( 5
.PP5 6
GetDisplayNameAsyncPP6 I
(PPI J
scopePPJ O
)PPO P
,PPP Q
IdQQ 
=QQ 
awaitQQ 
_scopeManagerQQ ,
.QQ, -
GetPhysicalIdAsyncQQ- ?
(QQ? @
scopeQQ@ E
)QQE F
,QQF G
NameRR 
=RR 
awaitRR  
_scopeManagerRR! .
.RR. /
GetNameAsyncRR/ ;
(RR; <
scopeRR< A
)RRA B
}SS 
)SS 
;SS 
}TT 
returnVV 
ViewVV 
(VV 
modelVV 
)VV 
;VV 
}WW 	
[YY 	
HttpGetYY	 
]YY 
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IActionResultZZ '
>ZZ' (
CreateZZ) /
(ZZ/ 0
stringZZ0 6
	returnUrlZZ7 @
=ZZA B
nullZZC G
)ZZG H
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
,\\@ A
Permissions\\B M
.\\M N
ManageScopes\\N Z
)\\Z [
)\\[ \
{]] 
return^^ 
Forbid^^ 
(^^ 
)^^ 
;^^  
}__ 
varaa 
modelaa 
=aa 
newaa &
CreateOpenIdScopeViewModelaa 6
(aa6 7
)aa7 8
;aa8 9
foreachcc 
(cc 
varcc 
tenantcc 
incc  "

_shellHostcc# -
.cc- .
GetAllSettingscc. <
(cc< =
)cc= >
.cc> ?
Wherecc? D
(ccD E
sccE F
=>ccG I
sccJ K
.ccK L
StateccL Q
==ccR T
TenantStateccU `
.cc` a
Runningcca h
)cch i
)cci j
{dd 
modelee 
.ee 
Tenantsee 
.ee 
Addee !
(ee! "
newee" %&
CreateOpenIdScopeViewModelee& @
.ee@ A
TenantEntryeeA L
{ff 
Currentgg 
=gg 
stringgg $
.gg$ %
Equalsgg% +
(gg+ ,
tenantgg, 2
.gg2 3
Namegg3 7
,gg7 8
_shellSettingsgg9 G
.ggG H
NameggH L
)ggL M
,ggM N
Namehh 
=hh 
tenanthh !
.hh! "
Namehh" &
}ii 
)ii 
;ii 
}jj 
ViewDatall 
[ll 
$strll  
]ll  !
=ll" #
	returnUrlll$ -
;ll- .
returnmm 
Viewmm 
(mm 
modelmm 
)mm 
;mm 
}nn 	
[pp 	
HttpPostpp	 
]pp 
publicqq 
asyncqq 
Taskqq 
<qq 
IActionResultqq '
>qq' (
Createqq) /
(qq/ 0&
CreateOpenIdScopeViewModelqq0 J
modelqqK P
,qqP Q
stringqqR X
	returnUrlqqY b
=qqc d
nullqqe i
)qqi j
{rr 	
ifss 
(ss 
!ss 
awaitss !
_authorizationServicess ,
.ss, -
AuthorizeAsyncss- ;
(ss; <
Userss< @
,ss@ A
PermissionsssB M
.ssM N
ManageScopesssN Z
)ssZ [
)ss[ \
{tt 
returnuu 
Forbiduu 
(uu 
)uu 
;uu  
}vv 
ifxx 
(xx 
awaitxx 
_scopeManagerxx #
.xx# $
FindByNameAsyncxx$ 3
(xx3 4
modelxx4 9
.xx9 :
Namexx: >
)xx> ?
!=xx@ B
nullxxC G
)xxG H
{yy 

ModelStatezz 
.zz 
AddModelErrorzz (
(zz( )
nameofzz) /
(zz/ 0
modelzz0 5
.zz5 6
Namezz6 :
)zz: ;
,zz; <
Szz= >
[zz> ?
$strzz? l
]zzl m
)zzm n
;zzn o
}{{ 
if}} 
(}} 
!}} 

ModelState}} 
.}} 
IsValid}} #
)}}# $
{~~ 
ViewData 
[ 
$str $
]$ %
=& '
	returnUrl( 1
;1 2
return
ÄÄ 
View
ÄÄ 
(
ÄÄ 
model
ÄÄ !
)
ÄÄ! "
;
ÄÄ" #
}
ÅÅ 
var
ÉÉ 

descriptor
ÉÉ 
=
ÉÉ 
new
ÉÉ  #
OpenIdScopeDescriptor
ÉÉ! 6
{
ÑÑ 
Description
ÖÖ 
=
ÖÖ 
model
ÖÖ #
.
ÖÖ# $
Description
ÖÖ$ /
,
ÖÖ/ 0
DisplayName
ÜÜ 
=
ÜÜ 
model
ÜÜ #
.
ÜÜ# $
DisplayName
ÜÜ$ /
,
ÜÜ/ 0
Name
áá 
=
áá 
model
áá 
.
áá 
Name
áá !
}
àà 
;
àà 
if
ää 
(
ää 
!
ää 
string
ää 
.
ää 
IsNullOrEmpty
ää %
(
ää% &
model
ää& +
.
ää+ ,
	Resources
ää, 5
)
ää5 6
)
ää6 7
{
ãã 

descriptor
åå 
.
åå 
	Resources
åå $
.
åå$ %
	UnionWith
åå% .
(
åå. /
model
åå/ 4
.
åå4 5
	Resources
åå5 >
.
åå> ?
Split
åå? D
(
ååD E
$char
ååE H
,
ååH I 
StringSplitOptions
ååJ \
.
åå\ ] 
RemoveEmptyEntries
åå] o
)
ååo p
)
ååp q
;
ååq r
}
çç 

descriptor
èè 
.
èè 
	Resources
èè  
.
èè  !
	UnionWith
èè! *
(
èè* +
model
èè+ 0
.
èè0 1
Tenants
èè1 8
.
êê 
Where
êê 
(
êê 
tenant
êê 
=>
êê  
tenant
êê! '
.
êê' (
Selected
êê( 0
)
êê0 1
.
ëë 
Where
ëë 
(
ëë 
tenant
ëë 
=>
ëë  
!
ëë! "
string
ëë" (
.
ëë( )
Equals
ëë) /
(
ëë/ 0
tenant
ëë0 6
.
ëë6 7
Name
ëë7 ;
,
ëë; <
_shellSettings
ëë= K
.
ëëK L
Name
ëëL P
)
ëëP Q
)
ëëQ R
.
íí 
Select
íí 
(
íí 
tenant
íí 
=>
íí !
OpenIdConstants
íí" 1
.
íí1 2
Prefixes
íí2 :
.
íí: ;
Tenant
íí; A
+
ííB C
tenant
ííD J
.
ííJ K
Name
ííK O
)
ííO P
)
ííP Q
;
ííQ R
await
îî 
_scopeManager
îî 
.
îî  
CreateAsync
îî  +
(
îî+ ,

descriptor
îî, 6
)
îî6 7
;
îî7 8
if
ññ 
(
ññ 
string
ññ 
.
ññ 
IsNullOrEmpty
ññ $
(
ññ$ %
	returnUrl
ññ% .
)
ññ. /
)
ññ/ 0
{
óó 
return
òò 
RedirectToAction
òò '
(
òò' (
$str
òò( /
)
òò/ 0
;
òò0 1
}
ôô 
return
õõ 
LocalRedirect
õõ  
(
õõ  !
	returnUrl
õõ! *
)
õõ* +
;
õõ+ ,
}
úú 	
public
ûû 
async
ûû 
Task
ûû 
<
ûû 
IActionResult
ûû '
>
ûû' (
Edit
ûû) -
(
ûû- .
string
ûû. 4
id
ûû5 7
,
ûû7 8
string
ûû9 ?
	returnUrl
ûû@ I
=
ûûJ K
null
ûûL P
)
ûûP Q
{
üü 	
if
†† 
(
†† 
!
†† 
await
†† #
_authorizationService
†† ,
.
††, -
AuthorizeAsync
††- ;
(
††; <
User
††< @
,
††@ A
Permissions
††B M
.
††M N
ManageScopes
††N Z
)
††Z [
)
††[ \
{
°° 
return
¢¢ 
Forbid
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢  
}
££ 
var
•• 
scope
•• 
=
•• 
await
•• 
_scopeManager
•• +
.
••+ ,#
FindByPhysicalIdAsync
••, A
(
••A B
id
••B D
)
••D E
;
••E F
if
¶¶ 
(
¶¶ 
scope
¶¶ 
==
¶¶ 
null
¶¶ 
)
¶¶ 
{
ßß 
return
®® 
NotFound
®® 
(
®®  
)
®®  !
;
®®! "
}
©© 
var
´´ 
model
´´ 
=
´´ 
new
´´ &
EditOpenIdScopeViewModel
´´ 4
{
¨¨ 
Description
≠≠ 
=
≠≠ 
await
≠≠ #
_scopeManager
≠≠$ 1
.
≠≠1 2!
GetDescriptionAsync
≠≠2 E
(
≠≠E F
scope
≠≠F K
)
≠≠K L
,
≠≠L M
DisplayName
ÆÆ 
=
ÆÆ 
await
ÆÆ #
_scopeManager
ÆÆ$ 1
.
ÆÆ1 2!
GetDisplayNameAsync
ÆÆ2 E
(
ÆÆE F
scope
ÆÆF K
)
ÆÆK L
,
ÆÆL M
Id
ØØ 
=
ØØ 
await
ØØ 
_scopeManager
ØØ (
.
ØØ( ) 
GetPhysicalIdAsync
ØØ) ;
(
ØØ; <
scope
ØØ< A
)
ØØA B
,
ØØB C
Name
∞∞ 
=
∞∞ 
await
∞∞ 
_scopeManager
∞∞ *
.
∞∞* +
GetNameAsync
∞∞+ 7
(
∞∞7 8
scope
∞∞8 =
)
∞∞= >
}
±± 
;
±± 
var
≥≥ 
	resources
≥≥ 
=
≥≥ 
await
≥≥ !
_scopeManager
≥≥" /
.
≥≥/ 0
GetResourcesAsync
≥≥0 A
(
≥≥A B
scope
≥≥B G
)
≥≥G H
;
≥≥H I
model
µµ 
.
µµ 
	Resources
µµ 
=
µµ 
string
µµ $
.
µµ$ %
Join
µµ% )
(
µµ) *
$str
µµ* -
,
µµ- .
from
∂∂ 
resource
∂∂ 
in
∂∂  
	resources
∂∂! *
where
∑∑ 
!
∑∑ 
string
∑∑ 
.
∑∑ 
IsNullOrEmpty
∑∑ +
(
∑∑+ ,
resource
∑∑, 4
)
∑∑4 5
&&
∑∑6 8
!
∑∑9 :
resource
∑∑: B
.
∑∑B C

StartsWith
∑∑C M
(
∑∑M N
OpenIdConstants
∑∑N ]
.
∑∑] ^
Prefixes
∑∑^ f
.
∑∑f g
Tenant
∑∑g m
,
∑∑m n
StringComparison
∑∑o 
.∑∑ Ä
Ordinal∑∑Ä á
)∑∑á à
select
∏∏ 
resource
∏∏ 
)
∏∏  
;
∏∏  !
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
tenant
∫∫ 
in
∫∫  "

_shellHost
∫∫# -
.
∫∫- .
GetAllSettings
∫∫. <
(
∫∫< =
)
∫∫= >
.
∫∫> ?
Where
∫∫? D
(
∫∫D E
s
∫∫E F
=>
∫∫G I
s
∫∫J K
.
∫∫K L
State
∫∫L Q
==
∫∫R T
TenantState
∫∫U `
.
∫∫` a
Running
∫∫a h
)
∫∫h i
)
∫∫i j
{
ªª 
model
ºº 
.
ºº 
Tenants
ºº 
.
ºº 
Add
ºº !
(
ºº! "
new
ºº" %&
EditOpenIdScopeViewModel
ºº& >
.
ºº> ?
TenantEntry
ºº? J
{
ΩΩ 
Current
ææ 
=
ææ 
string
ææ $
.
ææ$ %
Equals
ææ% +
(
ææ+ ,
tenant
ææ, 2
.
ææ2 3
Name
ææ3 7
,
ææ7 8
_shellSettings
ææ9 G
.
ææG H
Name
ææH L
)
ææL M
,
ææM N
Name
øø 
=
øø 
tenant
øø !
.
øø! "
Name
øø" &
,
øø& '
Selected
¿¿ 
=
¿¿ 
	resources
¿¿ (
.
¿¿( )
Contains
¿¿) 1
(
¿¿1 2
OpenIdConstants
¿¿2 A
.
¿¿A B
Prefixes
¿¿B J
.
¿¿J K
Tenant
¿¿K Q
+
¿¿R S
tenant
¿¿T Z
.
¿¿Z [
Name
¿¿[ _
)
¿¿_ `
}
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 
ViewData
ƒƒ 
[
ƒƒ 
$str
ƒƒ  
]
ƒƒ  !
=
ƒƒ" #
	returnUrl
ƒƒ$ -
;
ƒƒ- .
return
≈≈ 
View
≈≈ 
(
≈≈ 
model
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 	
[
»» 	
HttpPost
»»	 
]
»» 
public
…… 
async
…… 
Task
…… 
<
…… 
IActionResult
…… '
>
……' (
Edit
……) -
(
……- .&
EditOpenIdScopeViewModel
……. F
model
……G L
,
……L M
string
……N T
	returnUrl
……U ^
=
……_ `
null
……a e
)
……e f
{
   	
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
await
ÀÀ #
_authorizationService
ÀÀ ,
.
ÀÀ, -
AuthorizeAsync
ÀÀ- ;
(
ÀÀ; <
User
ÀÀ< @
,
ÀÀ@ A
Permissions
ÀÀB M
.
ÀÀM N
ManageScopes
ÀÀN Z
)
ÀÀZ [
)
ÀÀ[ \
{
ÃÃ 
return
ÕÕ 
Forbid
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ  
}
ŒŒ 
var
–– 
scope
–– 
=
–– 
await
–– 
_scopeManager
–– +
.
––+ ,#
FindByPhysicalIdAsync
––, A
(
––A B
model
––B G
.
––G H
Id
––H J
)
––J K
;
––K L
if
—— 
(
—— 
scope
—— 
==
—— 
null
—— 
)
—— 
{
““ 
return
”” 
NotFound
”” 
(
””  
)
””  !
;
””! "
}
‘‘ 
if
÷÷ 
(
÷÷ 

ModelState
÷÷ 
.
÷÷ 
IsValid
÷÷ "
)
÷÷" #
{
◊◊ 
var
ÿÿ 
other
ÿÿ 
=
ÿÿ 
await
ÿÿ !
_scopeManager
ÿÿ" /
.
ÿÿ/ 0
FindByNameAsync
ÿÿ0 ?
(
ÿÿ? @
model
ÿÿ@ E
.
ÿÿE F
Name
ÿÿF J
)
ÿÿJ K
;
ÿÿK L
if
ŸŸ 
(
ŸŸ 
other
ŸŸ 
!=
ŸŸ 
null
ŸŸ !
&&
ŸŸ" $
!
ŸŸ% &
string
ŸŸ& ,
.
ŸŸ, -
Equals
ŸŸ- 3
(
ŸŸ3 4
await
⁄⁄ 
_scopeManager
⁄⁄ '
.
⁄⁄' (

GetIdAsync
⁄⁄( 2
(
⁄⁄2 3
other
⁄⁄3 8
)
⁄⁄8 9
,
⁄⁄9 :
await
€€ 
_scopeManager
€€ '
.
€€' (

GetIdAsync
€€( 2
(
€€2 3
scope
€€3 8
)
€€8 9
)
€€9 :
)
€€: ;
{
‹‹ 

ModelState
›› 
.
›› 
AddModelError
›› ,
(
››, -
nameof
››- 3
(
››3 4
model
››4 9
.
››9 :
Name
››: >
)
››> ?
,
››? @
S
››A B
[
››B C
$str
››C p
]
››p q
)
››q r
;
››r s
}
ﬁﬁ 
}
ﬂﬂ 
if
·· 
(
·· 
!
·· 

ModelState
·· 
.
·· 
IsValid
·· #
)
··# $
{
‚‚ 
ViewData
„„ 
[
„„ 
$str
„„ $
]
„„$ %
=
„„& '
	returnUrl
„„( 1
;
„„1 2
return
‰‰ 
View
‰‰ 
(
‰‰ 
model
‰‰ !
)
‰‰! "
;
‰‰" #
}
ÂÂ 
var
ÁÁ 

descriptor
ÁÁ 
=
ÁÁ 
new
ÁÁ  #
OpenIdScopeDescriptor
ÁÁ! 6
(
ÁÁ6 7
)
ÁÁ7 8
;
ÁÁ8 9
await
ËË 
_scopeManager
ËË 
.
ËË  
PopulateAsync
ËË  -
(
ËË- .

descriptor
ËË. 8
,
ËË8 9
scope
ËË: ?
)
ËË? @
;
ËË@ A

descriptor
ÍÍ 
.
ÍÍ 
Description
ÍÍ "
=
ÍÍ# $
model
ÍÍ% *
.
ÍÍ* +
Description
ÍÍ+ 6
;
ÍÍ6 7

descriptor
ÎÎ 
.
ÎÎ 
DisplayName
ÎÎ "
=
ÎÎ# $
model
ÎÎ% *
.
ÎÎ* +
DisplayName
ÎÎ+ 6
;
ÎÎ6 7

descriptor
ÏÏ 
.
ÏÏ 
Name
ÏÏ 
=
ÏÏ 
model
ÏÏ #
.
ÏÏ# $
Name
ÏÏ$ (
;
ÏÏ( )

descriptor
ÓÓ 
.
ÓÓ 
	Resources
ÓÓ  
.
ÓÓ  !
Clear
ÓÓ! &
(
ÓÓ& '
)
ÓÓ' (
;
ÓÓ( )
if
 
(
 
!
 
string
 
.
 
IsNullOrEmpty
 %
(
% &
model
& +
.
+ ,
	Resources
, 5
)
5 6
)
6 7
{
ÒÒ 

descriptor
ÚÚ 
.
ÚÚ 
	Resources
ÚÚ $
.
ÚÚ$ %
	UnionWith
ÚÚ% .
(
ÚÚ. /
model
ÚÚ/ 4
.
ÚÚ4 5
	Resources
ÚÚ5 >
.
ÚÚ> ?
Split
ÚÚ? D
(
ÚÚD E
$char
ÚÚE H
,
ÚÚH I 
StringSplitOptions
ÚÚJ \
.
ÚÚ\ ] 
RemoveEmptyEntries
ÚÚ] o
)
ÚÚo p
)
ÚÚp q
;
ÚÚq r
}
ÛÛ 

descriptor
ıı 
.
ıı 
	Resources
ıı  
.
ıı  !
	UnionWith
ıı! *
(
ıı* +
model
ıı+ 0
.
ıı0 1
Tenants
ıı1 8
.
ˆˆ 
Where
ˆˆ 
(
ˆˆ 
tenant
ˆˆ 
=>
ˆˆ  
tenant
ˆˆ! '
.
ˆˆ' (
Selected
ˆˆ( 0
)
ˆˆ0 1
.
˜˜ 
Where
˜˜ 
(
˜˜ 
tenant
˜˜ 
=>
˜˜  
!
˜˜! "
string
˜˜" (
.
˜˜( )
Equals
˜˜) /
(
˜˜/ 0
tenant
˜˜0 6
.
˜˜6 7
Name
˜˜7 ;
,
˜˜; <
_shellSettings
˜˜= K
.
˜˜K L
Name
˜˜L P
)
˜˜P Q
)
˜˜Q R
.
¯¯ 
Select
¯¯ 
(
¯¯ 
tenant
¯¯ 
=>
¯¯ !
OpenIdConstants
¯¯" 1
.
¯¯1 2
Prefixes
¯¯2 :
.
¯¯: ;
Tenant
¯¯; A
+
¯¯B C
tenant
¯¯D J
.
¯¯J K
Name
¯¯K O
)
¯¯O P
)
¯¯P Q
;
¯¯Q R
await
˙˙ 
_scopeManager
˙˙ 
.
˙˙  
UpdateAsync
˙˙  +
(
˙˙+ ,
scope
˙˙, 1
,
˙˙1 2

descriptor
˙˙3 =
)
˙˙= >
;
˙˙> ?
if
¸¸ 
(
¸¸ 
string
¸¸ 
.
¸¸ 
IsNullOrEmpty
¸¸ $
(
¸¸$ %
	returnUrl
¸¸% .
)
¸¸. /
)
¸¸/ 0
{
˝˝ 
return
˛˛ 
RedirectToAction
˛˛ '
(
˛˛' (
$str
˛˛( /
)
˛˛/ 0
;
˛˛0 1
}
ˇˇ 
return
ÅÅ 
LocalRedirect
ÅÅ  
(
ÅÅ  !
	returnUrl
ÅÅ! *
)
ÅÅ* +
;
ÅÅ+ ,
}
ÇÇ 	
[
ÑÑ 	
HttpPost
ÑÑ	 
]
ÑÑ 
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
IActionResult
ÖÖ '
>
ÖÖ' (
Delete
ÖÖ) /
(
ÖÖ/ 0
string
ÖÖ0 6
id
ÖÖ7 9
)
ÖÖ9 :
{
ÜÜ 	
if
áá 
(
áá 
!
áá 
await
áá #
_authorizationService
áá ,
.
áá, -
AuthorizeAsync
áá- ;
(
áá; <
User
áá< @
,
áá@ A
Permissions
ááB M
.
ááM N
ManageScopes
ááN Z
)
ááZ [
)
áá[ \
{
àà 
return
ââ 
Forbid
ââ 
(
ââ 
)
ââ 
;
ââ  
}
ää 
var
åå 
scope
åå 
=
åå 
await
åå 
_scopeManager
åå +
.
åå+ ,#
FindByPhysicalIdAsync
åå, A
(
ååA B
id
ååB D
)
ååD E
;
ååE F
if
çç 
(
çç 
scope
çç 
==
çç 
null
çç 
)
çç 
{
éé 
return
èè 
NotFound
èè 
(
èè  
)
èè  !
;
èè! "
}
êê 
await
íí 
_scopeManager
íí 
.
íí  
DeleteAsync
íí  +
(
íí+ ,
scope
íí, 1
)
íí1 2
;
íí2 3
return
îî 
RedirectToAction
îî #
(
îî# $
nameof
îî$ *
(
îî* +
Index
îî+ 0
)
îî0 1
)
îî1 2
;
îî2 3
}
ïï 	
}
ññ 
}óó á?
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Controllers\ServerConfigurationController.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Controllers (
{ 
[ 
Admin 

,
 
Feature 
( 
OpenIdConstants #
.# $
Features$ ,
., -
Server- 3
)3 4
]4 5
public 

class )
ServerConfigurationController .
:/ 0

Controller1 ;
{ 
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
readonly  
IOpenIdServerService -
_serverService. <
;< =
private 
readonly 
IDisplayManager (
<( ) 
OpenIdServerSettings) =
>= >)
_serverSettingsDisplayManager? \
;\ ]
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public )
ServerConfigurationController ,
(, -!
IAuthorizationService ! 
authorizationService" 6
,6 7
IHtmlLocalizer   
<   )
ServerConfigurationController   8
>  8 9
htmlLocalizer  : G
,  G H
	INotifier!! 
notifier!! 
,!!  
IOpenIdServerService""  
serverService""! .
,"". /
IDisplayManager## 
<##  
OpenIdServerSettings## 0
>##0 1(
serverSettingsDisplayManager##2 N
,##N O

IShellHost$$ 
	shellHost$$  
,$$  !
ShellSettings%% 
shellSettings%% '
,%%' ( 
IUpdateModelAccessor&&  
updateModelAccessor&&! 4
)&&4 5
{'' 	!
_authorizationService(( !
=((" # 
authorizationService(($ 8
;((8 9
H)) 
=)) 
htmlLocalizer)) 
;)) 
	_notifier** 
=** 
notifier**  
;**  !
_serverService++ 
=++ 
serverService++ *
;++* +)
_serverSettingsDisplayManager,, )
=,,* +(
serverSettingsDisplayManager,,, H
;,,H I

_shellHost-- 
=-- 
	shellHost-- "
;--" #
_shellSettings.. 
=.. 
shellSettings.. *
;..* + 
_updateModelAccessor//  
=//! "
updateModelAccessor//# 6
;//6 7
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Index22) .
(22. /
)22/ 0
{33 	
if44 
(44 
!44 
await44 !
_authorizationService44 ,
.44, -
AuthorizeAsync44- ;
(44; <
User44< @
,44@ A
Permissions44B M
.44M N 
ManageServerSettings44N b
)44b c
)44c d
{55 
return66 
Forbid66 
(66 
)66 
;66  
}77 
var99 
settings99 
=99 
await99  
_serverService99! /
.99/ 0
GetSettingsAsync990 @
(99@ A
)99A B
;99B C
var:: 
shape:: 
=:: 
await:: )
_serverSettingsDisplayManager:: ;
.::; <
BuildEditorAsync::< L
(::L M
settings::M U
,::U V
updater::W ^
:::^ _ 
_updateModelAccessor::` t
.::t u
ModelUpdater	::u Å
,
::Å Ç
isNew
::É à
:
::à â
false
::ä è
)
::è ê
;
::ê ë
return<< 
View<< 
(<< 
shape<< 
)<< 
;<< 
}== 	
[?? 	
HttpPost??	 
]?? 
[@@ 	

ActionName@@	 
(@@ 
nameof@@ 
(@@ 
Index@@  
)@@  !
)@@! "
]@@" #
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
	IndexPostAA) 2
(AA2 3
)AA3 4
{BB 	
ifCC 
(CC 
!CC 
awaitCC !
_authorizationServiceCC ,
.CC, -
AuthorizeAsyncCC- ;
(CC; <
UserCC< @
,CC@ A
PermissionsCCB M
.CCM N 
ManageServerSettingsCCN b
)CCb c
)CCc d
{DD 
returnEE 
ForbidEE 
(EE 
)EE 
;EE  
}FF 
varHH 
settingsHH 
=HH 
awaitHH  
_serverServiceHH! /
.HH/ 0
GetSettingsAsyncHH0 @
(HH@ A
)HHA B
;HHB C
varII 
shapeII 
=II 
awaitII )
_serverSettingsDisplayManagerII ;
.II; <
UpdateEditorAsyncII< M
(IIM N
settingsIIN V
,IIV W
updaterIIX _
:II_ ` 
_updateModelAccessorIIa u
.IIu v
ModelUpdater	IIv Ç
,
IIÇ É
isNew
IIÑ â
:
IIâ ä
false
IIã ê
)
IIê ë
;
IIë í
ifKK 
(KK 
!KK 

ModelStateKK 
.KK 
IsValidKK #
)KK# $
{LL 
returnMM 
ViewMM 
(MM 
shapeMM !
)MM! "
;MM" #
}NN 
foreachPP 
(PP 
varPP 
resultPP 
inPP  "
awaitPP# (
_serverServicePP) 7
.PP7 8!
ValidateSettingsAsyncPP8 M
(PPM N
settingsPPN V
)PPV W
)PPW X
{QQ 
ifRR 
(RR 
resultRR 
!=RR 
ValidationResultRR .
.RR. /
SuccessRR/ 6
)RR6 7
{SS 
varTT 
keyTT 
=TT 
resultTT $
.TT$ %
MemberNamesTT% 0
.TT0 1
FirstOrDefaultTT1 ?
(TT? @
)TT@ A
??TTB D
stringTTE K
.TTK L
EmptyTTL Q
;TTQ R

ModelStateUU 
.UU 
AddModelErrorUU ,
(UU, -
keyUU- 0
,UU0 1
resultUU2 8
.UU8 9
ErrorMessageUU9 E
)UUE F
;UUF G
}VV 
}WW 
ifYY 
(YY 
!YY 

ModelStateYY 
.YY 
IsValidYY #
)YY# $
{ZZ 
return[[ 
View[[ 
([[ 
shape[[ !
)[[! "
;[[" #
}\\ 
await^^ 
_serverService^^  
.^^  !
UpdateSettingsAsync^^! 4
(^^4 5
settings^^5 =
)^^= >
;^^> ?
	_notifier`` 
.`` 
Success`` 
(`` 
H`` 
[``  
$str``  S
]``S T
)``T U
;``U V
awaitbb 

_shellHostbb 
.bb $
ReleaseShellContextAsyncbb 5
(bb5 6
_shellSettingsbb6 D
)bbD E
;bbE F
returndd 
RedirectToActiondd #
(dd# $
nameofdd$ *
(dd* +
Indexdd+ 0
)dd0 1
)dd1 2
;dd2 3
}ee 	
}ff 
}gg ≈{
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Controllers\UserInfoController.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Controllers (
{ 
[ 
Feature 
( 
OpenIdConstants 
. 
Features %
.% &
Server& ,
), -
,- .
SkipStatusCodePages/ B
]B C
public 

class 
UserInfoController #
:$ %

Controller& 0
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
UserInfoController !
(! "
IStringLocalizer" 2
<2 3
UserInfoController3 E
>E F
	localizerG P
)P Q
=> 
S 
= 
	localizer 
; 
[ 	
AcceptVerbs	 
( 
$str 
, 
$str "
)" #
]# $
[ 	"
IgnoreAntiforgeryToken	 
]  
[ 	
Produces	 
( 
$str $
)$ %
]% &
public 
async 
Task 
< 
IActionResult '
>' (
Me) +
(+ ,
), -
{ 	
var%% 
request%% 
=%% 
HttpContext%% %
.%%% &&
GetOpenIddictServerRequest%%& @
(%%@ A
)%%A B
;%%B C
if&& 
(&& 
request&& 
==&& 
null&& 
)&&  
{'' 
return(( 
NotFound(( 
(((  
)((  !
;((! "
})) 
var.. 
	principal.. 
=.. 
(.. 
await.. "
HttpContext..# .
.... /
AuthenticateAsync../ @
(..@ A.
"OpenIddictServerAspNetCoreDefaults..A c
...c d 
AuthenticationScheme..d x
)..x y
)..y z
?..z {
...{ |
	Principal	..| Ö
;
..Ö Ü
if// 
(// 
	principal// 
==// 
null// !
)//! "
{00 
return11 
	Challenge11  
(11  !.
"OpenIddictServerAspNetCoreDefaults11! C
.11C D 
AuthenticationScheme11D X
)11X Y
;11Y Z
}22 
var55 
type55 
=55 
	principal55  
.55  !
	FindFirst55! *
(55* +
OpenIdConstants55+ :
.55: ;
Claims55; A
.55A B

EntityType55B L
)55L M
?55M N
.55N O
Value55O T
;55T U
if66 
(66 
!66 
string66 
.66 
Equals66 
(66 
type66 #
,66# $
OpenIdConstants66% 4
.664 5
EntityTypes665 @
.66@ A
User66A E
)66E F
)66F G
{77 
return88 
Forbid88 
(88 
new88 !$
AuthenticationProperties88" :
(88: ;
new88; >

Dictionary88? I
<88I J
string88J P
,88P Q
string88R X
>88X Y
{99 
[:: /
#OpenIddictServerAspNetCoreConstants:: 8
.::8 9

Properties::9 C
.::C D
Error::D I
]::I J
=::K L
Errors::M S
.::S T
InvalidRequest::T b
,::b c
[;; /
#OpenIddictServerAspNetCoreConstants;; 8
.;;8 9

Properties;;9 C
.;;C D
ErrorDescription;;D T
];;T U
=;;V W
S<< 
[<< 
$str<< i
]<<i j
}== 
)== 
,== .
"OpenIddictServerAspNetCoreDefaults== 6
.==6 7 
AuthenticationScheme==7 K
)==K L
;==L M
}>> 
var@@ 
claims@@ 
=@@ 
new@@ 

Dictionary@@ '
<@@' (
string@@( .
,@@. /
object@@0 6
>@@6 7
(@@7 8
)@@8 9
;@@9 :
ifBB 
(BB 
	principalBB 
.BB 
HasScopeBB "
(BB" #
ScopesBB# )
.BB) *
ProfileBB* 1
)BB1 2
)BB2 3
{CC 
varDD 
preferredUsernameDD %
=DD& '
	principalDD( 1
.DD1 2
	FindFirstDD2 ;
(DD; <
ClaimsDD< B
.DDB C
PreferredUsernameDDC T
)DDT U
?DDU V
.DDV W
ValueDDW \
;DD\ ]
ifEE 
(EE 
!EE 
stringEE 
.EE 
IsNullOrEmptyEE )
(EE) *
preferredUsernameEE* ;
)EE; <
)EE< =
{FF 
claimsGG 
[GG 
ClaimsGG !
.GG! "
PreferredUsernameGG" 3
]GG3 4
=GG5 6
preferredUsernameGG7 H
;GGH I
}HH 
varJJ 
nameJJ 
=JJ 
	principalJJ $
.JJ$ %
	FindFirstJJ% .
(JJ. /
ClaimsJJ/ 5
.JJ5 6
NameJJ6 :
)JJ: ;
?JJ; <
.JJ< =
ValueJJ= B
??JJC E
	principalJJF O
.JJO P
	FindFirstJJP Y
(JJY Z

ClaimTypesJJZ d
.JJd e
NameJJe i
)JJi j
?JJj k
.JJk l
ValueJJl q
;JJq r
ifKK 
(KK 
!KK 
stringKK 
.KK 
IsNullOrEmptyKK )
(KK) *
nameKK* .
)KK. /
)KK/ 0
{LL 
claimsMM 
[MM 
ClaimsMM !
.MM! "
NameMM" &
]MM& '
=MM( )
nameMM* .
;MM. /
}NN 
varPP 

familyNamePP 
=PP  
	principalPP! *
.PP* +
	FindFirstPP+ 4
(PP4 5
ClaimsPP5 ;
.PP; <

FamilyNamePP< F
)PPF G
?PPG H
.PPH I
ValuePPI N
??PPO Q
	principalPPR [
.PP[ \
	FindFirstPP\ e
(PPe f

ClaimTypesPPf p
.PPp q
SurnamePPq x
)PPx y
?PPy z
.PPz {
Value	PP{ Ä
;
PPÄ Å
ifQQ 
(QQ 
!QQ 
stringQQ 
.QQ 
IsNullOrEmptyQQ )
(QQ) *

familyNameQQ* 4
)QQ4 5
)QQ5 6
{RR 
claimsSS 
[SS 
ClaimsSS !
.SS! "

FamilyNameSS" ,
]SS, -
=SS. /

familyNameSS0 :
;SS: ;
}TT 
varVV 
	givenNameVV 
=VV 
	principalVV  )
.VV) *
	FindFirstVV* 3
(VV3 4
ClaimsVV4 :
.VV: ;
	GivenNameVV; D
)VVD E
?VVE F
.VVF G
ValueVVG L
??VVM O
	principalVVP Y
.VVY Z
	FindFirstVVZ c
(VVc d

ClaimTypesVVd n
.VVn o
	GivenNameVVo x
)VVx y
?VVy z
.VVz {
Value	VV{ Ä
;
VVÄ Å
ifWW 
(WW 
!WW 
stringWW 
.WW 
IsNullOrEmptyWW )
(WW) *
	givenNameWW* 3
)WW3 4
)WW4 5
{XX 
claimsYY 
[YY 
ClaimsYY !
.YY! "
	GivenNameYY" +
]YY+ ,
=YY- .
	givenNameYY/ 8
;YY8 9
}ZZ 
var\\ 

middleName\\ 
=\\  
	principal\\! *
.\\* +
	FindFirst\\+ 4
(\\4 5
Claims\\5 ;
.\\; <

MiddleName\\< F
)\\F G
?\\G H
.\\H I
Value\\I N
;\\N O
if]] 
(]] 
!]] 
string]] 
.]] 
IsNullOrEmpty]] )
(]]) *

middleName]]* 4
)]]4 5
)]]5 6
{^^ 
claims__ 
[__ 
Claims__ !
.__! "

MiddleName__" ,
]__, -
=__. /

middleName__0 :
;__: ;
}`` 
varbb 
picturebb 
=bb 
	principalbb '
.bb' (
	FindFirstbb( 1
(bb1 2
Claimsbb2 8
.bb8 9
Picturebb9 @
)bb@ A
?bbA B
.bbB C
ValuebbC H
;bbH I
ifcc 
(cc 
!cc 
stringcc 
.cc 
IsNullOrEmptycc )
(cc) *
picturecc* 1
)cc1 2
)cc2 3
{dd 
claimsee 
[ee 
Claimsee !
.ee! "
Pictureee" )
]ee) *
=ee+ ,
pictureee- 4
;ee4 5
}ff 
varhh 
updatedAtClaimValuehh '
=hh( )
	principalhh* 3
.hh3 4
	FindFirsthh4 =
(hh= >
Claimshh> D
.hhD E
	UpdatedAthhE N
)hhN O
?hhO P
.hhP Q
ValuehhQ V
;hhV W
ifii 
(ii 
!ii 
stringii 
.ii 
IsNullOrEmptyii )
(ii) *
updatedAtClaimValueii* =
)ii= >
)ii> ?
{jj 
claimskk 
[kk 
Claimskk !
.kk! "
	UpdatedAtkk" +
]kk+ ,
=kk- .
longkk/ 3
.kk3 4
Parsekk4 9
(kk9 :
updatedAtClaimValuekk: M
,kkM N
CultureInfokkO Z
.kkZ [
InvariantCulturekk[ k
)kkk l
;kkl m
}ll 
}mm 
claimspp 
[pp 
Claimspp 
.pp 
Subjectpp !
]pp! "
=pp# $
	principalpp% .
.pp. /
GetUserIdentifierpp/ @
(pp@ A
)ppA B
;ppB C
ifrr 
(rr 
	principalrr 
.rr 
HasScoperr "
(rr" #
Scopesrr# )
.rr) *
Emailrr* /
)rr/ 0
)rr0 1
{ss 
vartt 
addresstt 
=tt 
	principaltt '
.tt' (
	FindFirsttt( 1
(tt1 2
Claimstt2 8
.tt8 9
Emailtt9 >
)tt> ?
?tt? @
.tt@ A
ValuettA F
??ttG I
	principalttJ S
.ttS T
	FindFirstttT ]
(tt] ^

ClaimTypestt^ h
.tth i
Emailtti n
)ttn o
?tto p
.ttp q
Valuettq v
;ttv w
ifvv 
(vv 
!vv 
stringvv 
.vv 
IsNullOrEmptyvv )
(vv) *
addressvv* 1
)vv1 2
)vv2 3
{ww 
claimsxx 
[xx 
Claimsxx !
.xx! "
Emailxx" '
]xx' (
=xx) *
addressxx+ 2
;xx2 3
varzz 
statuszz 
=zz  
	principalzz! *
.zz* +
	FindFirstzz+ 4
(zz4 5
Claimszz5 ;
.zz; <
EmailVerifiedzz< I
)zzI J
?zzJ K
.zzK L
ValuezzL Q
;zzQ R
if{{ 
({{ 
!{{ 
string{{ 
.{{  
IsNullOrEmpty{{  -
({{- .
status{{. 4
){{4 5
){{5 6
{|| 
claims}} 
[}} 
Claims}} %
.}}% &
EmailVerified}}& 3
]}}3 4
=}}5 6
bool}}7 ;
.}}; <
Parse}}< A
(}}A B
status}}B H
)}}H I
;}}I J
}~~ 
} 
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
	principal
ÇÇ 
.
ÇÇ 
HasScope
ÇÇ "
(
ÇÇ" #
Scopes
ÇÇ# )
.
ÇÇ) *
Phone
ÇÇ* /
)
ÇÇ/ 0
)
ÇÇ0 1
{
ÉÉ 
var
ÑÑ 
phone
ÑÑ 
=
ÑÑ 
	principal
ÑÑ %
.
ÑÑ% &
	FindFirst
ÑÑ& /
(
ÑÑ/ 0
Claims
ÑÑ0 6
.
ÑÑ6 7
PhoneNumber
ÑÑ7 B
)
ÑÑB C
?
ÑÑC D
.
ÑÑD E
Value
ÑÑE J
??
ÑÑK M
	principal
ÖÖ %
.
ÖÖ% &
	FindFirst
ÖÖ& /
(
ÖÖ/ 0

ClaimTypes
ÖÖ0 :
.
ÖÖ: ;
MobilePhone
ÖÖ; F
)
ÖÖF G
?
ÖÖG H
.
ÖÖH I
Value
ÖÖI N
??
ÖÖO Q
	principal
ÜÜ %
.
ÜÜ% &
	FindFirst
ÜÜ& /
(
ÜÜ/ 0

ClaimTypes
ÜÜ0 :
.
ÜÜ: ;
	HomePhone
ÜÜ; D
)
ÜÜD E
?
ÜÜE F
.
ÜÜF G
Value
ÜÜG L
??
ÜÜM O
	principal
áá %
.
áá% &
	FindFirst
áá& /
(
áá/ 0

ClaimTypes
áá0 :
.
áá: ;

OtherPhone
áá; E
)
ááE F
?
ááF G
.
ááG H
Value
ááH M
;
ááM N
if
ââ 
(
ââ 
!
ââ 
string
ââ 
.
ââ 
IsNullOrEmpty
ââ )
(
ââ) *
phone
ââ* /
)
ââ/ 0
)
ââ0 1
{
ää 
claims
ãã 
[
ãã 
Claims
ãã !
.
ãã! "
PhoneNumber
ãã" -
]
ãã- .
=
ãã/ 0
phone
ãã1 6
;
ãã6 7
var
çç 
status
çç 
=
çç  
	principal
çç! *
.
çç* +
	FindFirst
çç+ 4
(
çç4 5
Claims
çç5 ;
.
çç; <!
PhoneNumberVerified
çç< O
)
ççO P
?
ççP Q
.
ççQ R
Value
ççR W
;
ççW X
if
éé 
(
éé 
!
éé 
string
éé 
.
éé  
IsNullOrEmpty
éé  -
(
éé- .
status
éé. 4
)
éé4 5
)
éé5 6
{
èè 
claims
êê 
[
êê 
Claims
êê %
.
êê% &!
PhoneNumberVerified
êê& 9
]
êê9 :
=
êê; <
bool
êê= A
.
êêA B
Parse
êêB G
(
êêG H
status
êêH N
)
êêN O
;
êêO P
}
ëë 
}
íí 
}
ìì 
if
ïï 
(
ïï 
	principal
ïï 
.
ïï 
HasScope
ïï "
(
ïï" #
Scopes
ïï# )
.
ïï) *
Roles
ïï* /
)
ïï/ 0
)
ïï0 1
{
ññ 
var
óó 
roles
óó 
=
óó 
	principal
óó %
.
óó% &
FindAll
óó& -
(
óó- .
Claims
óó. 4
.
óó4 5
Role
óó5 9
)
óó9 :
.
òò% &
Concat
òò& ,
(
òò, -
	principal
òò- 6
.
òò6 7
FindAll
òò7 >
(
òò> ?

ClaimTypes
òò? I
.
òòI J
Role
òòJ N
)
òòN O
)
òòO P
.
ôô% &
Select
ôô& ,
(
ôô, -
claim
ôô- 2
=>
ôô3 5
claim
ôô6 ;
.
ôô; <
Value
ôô< A
)
ôôA B
.
öö% &
ToArray
öö& -
(
öö- .
)
öö. /
;
öö/ 0
if
úú 
(
úú 
roles
úú 
.
úú 
Length
úú  
!=
úú! #
$num
úú$ %
)
úú% &
{
ùù 
claims
ûû 
[
ûû 
$str
ûû "
]
ûû" #
=
ûû$ %
roles
ûû& +
;
ûû+ ,
}
üü 
}
†† 
return
•• 
Ok
•• 
(
•• 
claims
•• 
)
•• 
;
•• 
}
¶¶ 	
}
ßß 
}®® Î?
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Controllers\ValidationConfigurationController.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Controllers (
{ 
[ 
Admin 

,
 
Feature 
( 
OpenIdConstants #
.# $
Features$ ,
., -

Validation- 7
)7 8
]8 9
public 

class -
!ValidationConfigurationController 2
:3 4

Controller5 ?
{ 
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
readonly $
IOpenIdValidationService 1
_validationService2 D
;D E
private 
readonly 
IDisplayManager (
<( )$
OpenIdValidationSettings) A
>A B-
!_validationSettingsDisplayManagerC d
;d e
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IHtmlLocalizer '
H( )
;) *
public -
!ValidationConfigurationController 0
(0 1!
IAuthorizationService ! 
authorizationService" 6
,6 7
IHtmlLocalizer   
<   -
!ValidationConfigurationController   <
>  < =
htmlLocalizer  > K
,  K L
	INotifier!! 
notifier!! 
,!! $
IOpenIdValidationService"" $
validationService""% 6
,""6 7
IDisplayManager## 
<## $
OpenIdValidationSettings## 4
>##4 5,
 validationSettingsDisplayManager##6 V
,##V W

IShellHost$$ 
	shellHost$$  
,$$  !
ShellSettings%% 
shellSettings%% '
,%%' ( 
IUpdateModelAccessor&&  
updateModelAccessor&&! 4
)&&4 5
{'' 	!
_authorizationService(( !
=((" # 
authorizationService(($ 8
;((8 9
H)) 
=)) 
htmlLocalizer)) 
;)) 
	_notifier** 
=** 
notifier**  
;**  !
_validationService++ 
=++  
validationService++! 2
;++2 3-
!_validationSettingsDisplayManager,, -
=,,. /,
 validationSettingsDisplayManager,,0 P
;,,P Q

_shellHost-- 
=-- 
	shellHost-- "
;--" #
_shellSettings.. 
=.. 
shellSettings.. *
;..* + 
_updateModelAccessor//  
=//! "
updateModelAccessor//# 6
;//6 7
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Index22) .
(22. /
)22/ 0
{33 	
if44 
(44 
!44 
await44 !
_authorizationService44 ,
.44, -
AuthorizeAsync44- ;
(44; <
User44< @
,44@ A
Permissions44B M
.44M N$
ManageValidationSettings44N f
)44f g
)44g h
{55 
return66 
Forbid66 
(66 
)66 
;66  
}77 
var99 
settings99 
=99 
await99  
_validationService99! 3
.993 4
GetSettingsAsync994 D
(99D E
)99E F
;99F G
var:: 
shape:: 
=:: 
await:: -
!_validationSettingsDisplayManager:: ?
.::? @
BuildEditorAsync::@ P
(::P Q
settings::Q Y
,::Y Z
updater::[ b
:::b c 
_updateModelAccessor::d x
.::x y
ModelUpdater	::y Ö
,
::Ö Ü
isNew
::á å
:
::å ç
false
::é ì
)
::ì î
;
::î ï
return<< 
View<< 
(<< 
shape<< 
)<< 
;<< 
}== 	
[?? 	
HttpPost??	 
]?? 
[@@ 	

ActionName@@	 
(@@ 
nameof@@ 
(@@ 
Index@@  
)@@  !
)@@! "
]@@" #
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
	IndexPostAA) 2
(AA2 3
)AA3 4
{BB 	
ifCC 
(CC 
!CC 
awaitCC !
_authorizationServiceCC ,
.CC, -
AuthorizeAsyncCC- ;
(CC; <
UserCC< @
,CC@ A
PermissionsCCB M
.CCM N$
ManageValidationSettingsCCN f
)CCf g
)CCg h
{DD 
returnEE 
ForbidEE 
(EE 
)EE 
;EE  
}FF 
varHH 
settingsHH 
=HH 
awaitHH  
_validationServiceHH! 3
.HH3 4
GetSettingsAsyncHH4 D
(HHD E
)HHE F
;HHF G
varII 
shapeII 
=II 
awaitII -
!_validationSettingsDisplayManagerII ?
.II? @
UpdateEditorAsyncII@ Q
(IIQ R
settingsIIR Z
,IIZ [
updaterII\ c
:IIc d 
_updateModelAccessorIIe y
.IIy z
ModelUpdater	IIz Ü
,
IIÜ á
isNew
IIà ç
:
IIç é
false
IIè î
)
IIî ï
;
IIï ñ
ifKK 
(KK 
!KK 

ModelStateKK 
.KK 
IsValidKK #
)KK# $
{LL 
returnMM 
ViewMM 
(MM 
shapeMM !
)MM! "
;MM" #
}NN 
foreachPP 
(PP 
varPP 
resultPP 
inPP  "
awaitPP# (
_validationServicePP) ;
.PP; <!
ValidateSettingsAsyncPP< Q
(PPQ R
settingsPPR Z
)PPZ [
)PP[ \
{QQ 
ifRR 
(RR 
resultRR 
!=RR 
ValidationResultRR .
.RR. /
SuccessRR/ 6
)RR6 7
{SS 
varTT 
keyTT 
=TT 
resultTT $
.TT$ %
MemberNamesTT% 0
.TT0 1
FirstOrDefaultTT1 ?
(TT? @
)TT@ A
??TTB D
stringTTE K
.TTK L
EmptyTTL Q
;TTQ R

ModelStateUU 
.UU 
AddModelErrorUU ,
(UU, -
keyUU- 0
,UU0 1
resultUU2 8
.UU8 9
ErrorMessageUU9 E
)UUE F
;UUF G
}VV 
}WW 
ifYY 
(YY 
!YY 

ModelStateYY 
.YY 
IsValidYY #
)YY# $
{ZZ 
return[[ 
View[[ 
([[ 
shape[[ !
)[[! "
;[[" #
}\\ 
await^^ 
_validationService^^ $
.^^$ %
UpdateSettingsAsync^^% 8
(^^8 9
settings^^9 A
)^^A B
;^^B C
	_notifier`` 
.`` 
Success`` 
(`` 
H`` 
[``  
$str``  W
]``W X
)``X Y
;``Y Z
awaitbb 

_shellHostbb 
.bb $
ReleaseShellContextAsyncbb 5
(bb5 6
_shellSettingsbb6 D
)bbD E
;bbE F
returndd 
RedirectToActiondd #
(dd# $
nameofdd$ *
(dd* +
Indexdd+ 0
)dd0 1
)dd1 2
;dd2 3
}ee 	
}ff 
}gg ∏
ùD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Deployment\OpenIdServerDeploymentSource.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

Deployment '
{ 
public 

class (
OpenIdServerDeploymentSource -
:. /
IDeploymentSource0 A
{		 
private

 
readonly

  
IOpenIdServerService

 - 
_openIdServerService

. B
;

B C
public (
OpenIdServerDeploymentSource +
(+ , 
IOpenIdServerService, @
openIdServerServiceA T
)T U
{ 	 
_openIdServerService  
=! "
openIdServerService# 6
;6 7
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
var 
openIdServerStep  
=! "
step# '
as( *&
OpenIdServerDeploymentStep+ E
;E F
if 
( 
openIdServerStep  
==! #
null$ (
)( )
{ 
return 
; 
} 
var 
serverSettings 
=  
await! & 
_openIdServerService' ;
.; <
GetSettingsAsync< L
(L M
)M N
;N O
result 
. 
Steps 
. 
Add 
( 
new  
JObject! (
(( )
new 
	JProperty 
( 
$str $
,$ %
$str& 4
)4 5
,5 6
new 
	JProperty 
( 
$str ,
,, -
JObject. 5
.5 6

FromObject6 @
(@ A
serverSettingsA O
)O P
)P Q
) 
) 
; 
}   	
}!! 
}"" Ç
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Deployment\OpenIdServerDeploymentStep.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

Deployment '
{ 
public 

class &
OpenIdServerDeploymentStep +
:, -
DeploymentStep. <
{		 
public

 &
OpenIdServerDeploymentStep
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
= 
$str "
;" #
} 	
} 
} ’
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Deployment\OpenIdServerDeploymentStepDriver.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

Deployment '
{ 
public 

class ,
 OpenIdServerDeploymentStepDriver 1
:2 3
DisplayDriver4 A
<A B
DeploymentStepB P
,P Q&
OpenIdServerDeploymentStepR l
>l m
{ 
public		 
override		 
IDisplayResult		 &
Display		' .
(		. /&
OpenIdServerDeploymentStep		/ I
step		J N
)		N O
{

 	
return 
Combine 
( 
View 
( 
$str =
,= >
step? C
)C D
.D E
LocationE M
(M N
$strN W
,W X
$strY b
)b c
,c d
View 
( 
$str ?
,? @
stepA E
)E F
.F G
LocationG O
(O P
$strP [
,[ \
$str] f
)f g
) 
; 
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,&
OpenIdServerDeploymentStep, F
stepG K
)K L
{ 	
return 
View 
( 
$str 9
,9 :
step; ?
)? @
.@ A
LocationA I
(I J
$strJ S
)S T
;T U
} 	
} 
} ôä
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Drivers\OpenIdClientSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Drivers $
{ 
public 

class -
!OpenIdClientSettingsDisplayDriver 2
:3 4 
SectionDisplayDriver5 I
<I J
ISiteJ O
,O P 
OpenIdClientSettingsQ e
>e f
{ 
private 
const 
string 
SettingsGroupId ,
=- .
$str/ J
;J K
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly  
IOpenIdClientService -
_clientService. <
;< =
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
public   -
!OpenIdClientSettingsDisplayDriver   0
(  0 1!
IAuthorizationService!! ! 
authorizationService!!" 6
,!!6 7#
IDataProtectionProvider"" #"
dataProtectionProvider""$ :
,"": ; 
IOpenIdClientService##  
clientService##! .
,##. / 
IHttpContextAccessor$$  
httpContextAccessor$$! 4
,$$4 5

IShellHost%% 
	shellHost%%  
,%%  !
ShellSettings&& 
shellSettings&& '
)&&' (
{'' 	!
_authorizationService(( !
=((" # 
authorizationService(($ 8
;((8 9#
_dataProtectionProvider)) #
=))$ %"
dataProtectionProvider))& <
;))< =
_clientService** 
=** 
clientService** *
;*** + 
_httpContextAccessor++  
=++! "
httpContextAccessor++# 6
;++6 7

_shellHost,, 
=,, 
	shellHost,, "
;,," #
_shellSettings-- 
=-- 
shellSettings-- *
;--* +
}.. 	
public00 
override00 
async00 
Task00 "
<00" #
IDisplayResult00# 1
>001 2
	EditAsync003 <
(00< = 
OpenIdClientSettings00= Q
settings00R Z
,00Z [
BuildEditorContext00\ n
context00o v
)00v w
{11 	
var22 
user22 
=22  
_httpContextAccessor22 +
.22+ ,
HttpContext22, 7
?227 8
.228 9
User229 =
;22= >
if33 
(33 
user33 
==33 
null33 
||33 
!33  !
await33! &!
_authorizationService33' <
.33< =
AuthorizeAsync33= K
(33K L
user33L P
,33P Q
Permissions33R ]
.33] ^ 
ManageClientSettings33^ r
)33r s
)33s t
{44 
return55 
null55 
;55 
}66 
return88 

Initialize88 
<88 )
OpenIdClientSettingsViewModel88 ;
>88; <
(88< =
$str88= X
,88X Y
model88Z _
=>88` b
{99 
model:: 
.:: 
DisplayName:: !
=::" #
settings::$ ,
.::, -
DisplayName::- 8
;::8 9
model;; 
.;; 
Scopes;; 
=;; 
settings;; '
.;;' (
Scopes;;( .
!=;;/ 1
null;;2 6
?;;7 8
string;;9 ?
.;;? @
Join;;@ D
(;;D E
$str;;E H
,;;H I
settings;;J R
.;;R S
Scopes;;S Y
);;Y Z
:;;[ \
null;;] a
;;;a b
model<< 
.<< 
	Authority<< 
=<<  !
settings<<" *
.<<* +
	Authority<<+ 4
?<<4 5
.<<5 6
AbsoluteUri<<6 A
;<<A B
model== 
.== 
CallbackPath== "
===# $
settings==% -
.==- .
CallbackPath==. :
;==: ;
model>> 
.>> 
ClientId>> 
=>>  
settings>>! )
.>>) *
ClientId>>* 2
;>>2 3
model?? 
.?? 
ClientSecret?? "
=??# $
settings??% -
.??- .
ClientSecret??. :
;??: ;
model@@ 
.@@ !
SignedOutCallbackPath@@ +
=@@, -
settings@@. 6
.@@6 7!
SignedOutCallbackPath@@7 L
;@@L M
modelAA 
.AA  
SignedOutRedirectUriAA *
=AA+ ,
settingsAA- 5
.AA5 6 
SignedOutRedirectUriAA6 J
;AAJ K
modelBB 
.BB 
ResponseModeBB "
=BB# $
settingsBB% -
.BB- .
ResponseModeBB. :
;BB: ;
modelCC 
.CC 
StoreExternalTokensCC )
=CC* +
settingsCC, 4
.CC4 5
StoreExternalTokensCC5 H
;CCH I
ifEE 
(EE 
settingsEE 
.EE 
ResponseTypeEE )
==EE* ,%
OpenIdConnectResponseTypeEE- F
.EEF G
CodeEEG K
)EEK L
{FF 
modelGG 
.GG 
UseCodeFlowGG %
=GG& '
trueGG( ,
;GG, -
}HH 
elseII 
ifII 
(II 
settingsII !
.II! "
ResponseTypeII" .
==II/ 1%
OpenIdConnectResponseTypeII2 K
.IIK L
CodeIdTokenIIL W
)IIW X
{JJ 
modelKK 
.KK 
UseCodeIdTokenFlowKK ,
=KK- .
trueKK/ 3
;KK3 4
}LL 
elseMM 
ifMM 
(MM 
settingsMM !
.MM! "
ResponseTypeMM" .
==MM/ 1%
OpenIdConnectResponseTypeMM2 K
.MMK L
CodeIdTokenTokenMML \
)MM\ ]
{NN 
modelOO 
.OO #
UseCodeIdTokenTokenFlowOO 1
=OO2 3
trueOO4 8
;OO8 9
}PP 
elseQQ 
ifQQ 
(QQ 
settingsQQ !
.QQ! "
ResponseTypeQQ" .
==QQ/ 1%
OpenIdConnectResponseTypeQQ2 K
.QQK L
	CodeTokenQQL U
)QQU V
{RR 
modelSS 
.SS 
UseCodeTokenFlowSS *
=SS+ ,
trueSS- 1
;SS1 2
}TT 
elseUU 
ifUU 
(UU 
settingsUU !
.UU! "
ResponseTypeUU" .
==UU/ 1%
OpenIdConnectResponseTypeUU2 K
.UUK L
IdTokenUUL S
)UUS T
{VV 
modelWW 
.WW 
UseIdTokenFlowWW (
=WW) *
trueWW+ /
;WW/ 0
}XX 
elseYY 
ifYY 
(YY 
settingsYY !
.YY! "
ResponseTypeYY" .
==YY/ 1%
OpenIdConnectResponseTypeYY2 K
.YYK L
IdTokenTokenYYL X
)YYX Y
{ZZ 
model[[ 
.[[ 
UseIdTokenTokenFlow[[ -
=[[. /
true[[0 4
;[[4 5
}\\ 
}]] 
)]] 
.]] 
Location]] 
(]] 
$str]] #
)]]# $
.]]$ %
OnGroup]]% ,
(]], -
SettingsGroupId]]- <
)]]< =
;]]= >
}^^ 	
public`` 
override`` 
async`` 
Task`` "
<``" #
IDisplayResult``# 1
>``1 2
UpdateAsync``3 >
(``> ? 
OpenIdClientSettings``? S
settings``T \
,``\ ]
BuildEditorContext``^ p
context``q x
)``x y
{aa 	
varbb 
userbb 
=bb  
_httpContextAccessorbb +
.bb+ ,
HttpContextbb, 7
?bb7 8
.bb8 9
Userbb9 =
;bb= >
ifcc 
(cc 
usercc 
==cc 
nullcc 
||cc 
!cc  !
awaitcc! &!
_authorizationServicecc' <
.cc< =
AuthorizeAsynccc= K
(ccK L
userccL P
,ccP Q
PermissionsccR ]
.cc] ^ 
ManageClientSettingscc^ r
)ccr s
)ccs t
{dd 
returnee 
nullee 
;ee 
}ff 
ifhh 
(hh 
contexthh 
.hh 
GroupIdhh 
==hh  "
SettingsGroupIdhh# 2
)hh2 3
{ii 
varjj  
previousClientSecretjj (
=jj) *
settingsjj+ 3
.jj3 4
ClientSecretjj4 @
;jj@ A
varkk 
modelkk 
=kk 
newkk )
OpenIdClientSettingsViewModelkk  =
(kk= >
)kk> ?
;kk? @
awaitll 
contextll 
.ll 
Updaterll %
.ll% &
TryUpdateModelAsyncll& 9
(ll9 :
modelll: ?
,ll? @
PrefixllA G
)llG H
;llH I
modelnn 
.nn 
Scopesnn 
=nn 
modelnn $
.nn$ %
Scopesnn% +
??nn, .
stringnn/ 5
.nn5 6
Emptynn6 ;
;nn; <
settingspp 
.pp 
DisplayNamepp $
=pp% &
modelpp' ,
.pp, -
DisplayNamepp- 8
;pp8 9
settingsqq 
.qq 
Scopesqq 
=qq  !
modelqq" '
.qq' (
Scopesqq( .
.qq. /
Splitqq/ 4
(qq4 5
newqq5 8
charqq9 =
[qq= >
]qq> ?
{qq@ A
$charqqB E
,qqE F
$charqqG J
}qqK L
,qqL M
StringSplitOptionsqqN `
.qq` a
RemoveEmptyEntriesqqa s
)qqs t
;qqt u
settingsrr 
.rr 
	Authorityrr "
=rr# $
!rr% &
stringrr& ,
.rr, -
IsNullOrEmptyrr- :
(rr: ;
modelrr; @
.rr@ A
	AuthorityrrA J
)rrJ K
?rrL M
newrrN Q
UrirrR U
(rrU V
modelrrV [
.rr[ \
	Authorityrr\ e
,rre f
UriKindrrg n
.rrn o
Absoluterro w
)rrw x
:rry z
nullrr{ 
;	rr Ä
settingsss 
.ss 
CallbackPathss %
=ss& '
modelss( -
.ss- .
CallbackPathss. :
;ss: ;
settingstt 
.tt 
ClientIdtt !
=tt" #
modeltt$ )
.tt) *
ClientIdtt* 2
;tt2 3
settingsuu 
.uu !
SignedOutCallbackPathuu .
=uu/ 0
modeluu1 6
.uu6 7!
SignedOutCallbackPathuu7 L
;uuL M
settingsvv 
.vv  
SignedOutRedirectUrivv -
=vv. /
modelvv0 5
.vv5 6 
SignedOutRedirectUrivv6 J
;vvJ K
settingsww 
.ww 
ResponseModeww %
=ww& '
modelww( -
.ww- .
ResponseModeww. :
;ww: ;
settingsxx 
.xx 
StoreExternalTokensxx ,
=xx- .
modelxx/ 4
.xx4 5
StoreExternalTokensxx5 H
;xxH I
boolzz 
useClientSecretzz $
=zz% &
truezz' +
;zz+ ,
if|| 
(|| 
model|| 
.|| 
UseCodeFlow|| %
)||% &
{}} 
settings~~ 
.~~ 
ResponseType~~ )
=~~* +%
OpenIdConnectResponseType~~, E
.~~E F
Code~~F J
;~~J K
} 
else
ÄÄ 
if
ÄÄ 
(
ÄÄ 
model
ÄÄ 
.
ÄÄ  
UseCodeIdTokenFlow
ÄÄ 1
)
ÄÄ1 2
{
ÅÅ 
settings
ÇÇ 
.
ÇÇ 
ResponseType
ÇÇ )
=
ÇÇ* +'
OpenIdConnectResponseType
ÇÇ, E
.
ÇÇE F
CodeIdToken
ÇÇF Q
;
ÇÇQ R
}
ÉÉ 
else
ÑÑ 
if
ÑÑ 
(
ÑÑ 
model
ÑÑ 
.
ÑÑ %
UseCodeIdTokenTokenFlow
ÑÑ 6
)
ÑÑ6 7
{
ÖÖ 
settings
ÜÜ 
.
ÜÜ 
ResponseType
ÜÜ )
=
ÜÜ* +'
OpenIdConnectResponseType
ÜÜ, E
.
ÜÜE F
CodeIdTokenToken
ÜÜF V
;
ÜÜV W
}
áá 
else
àà 
if
àà 
(
àà 
model
àà 
.
àà 
UseCodeTokenFlow
àà /
)
àà/ 0
{
ââ 
settings
ää 
.
ää 
ResponseType
ää )
=
ää* +'
OpenIdConnectResponseType
ää, E
.
ääE F
	CodeToken
ääF O
;
ääO P
}
ãã 
else
åå 
if
åå 
(
åå 
model
åå 
.
åå 
UseIdTokenFlow
åå -
)
åå- .
{
çç 
settings
éé 
.
éé 
ResponseType
éé )
=
éé* +'
OpenIdConnectResponseType
éé, E
.
ééE F
IdToken
ééF M
;
ééM N
useClientSecret
èè #
=
èè$ %
false
èè& +
;
èè+ ,
}
êê 
else
ëë 
if
ëë 
(
ëë 
model
ëë 
.
ëë !
UseIdTokenTokenFlow
ëë 2
)
ëë2 3
{
íí 
settings
ìì 
.
ìì 
ResponseType
ìì )
=
ìì* +'
OpenIdConnectResponseType
ìì, E
.
ììE F
IdTokenToken
ììF R
;
ììR S
useClientSecret
îî #
=
îî$ %
false
îî& +
;
îî+ ,
}
ïï 
else
ññ 
{
óó 
settings
òò 
.
òò 
ResponseType
òò )
=
òò* +'
OpenIdConnectResponseType
òò, E
.
òòE F
None
òòF J
;
òòJ K
useClientSecret
ôô #
=
ôô$ %
false
ôô& +
;
ôô+ ,
}
öö 
if
úú 
(
úú 
!
úú 
useClientSecret
úú $
)
úú$ %
{
ùù 
model
ûû 
.
ûû 
ClientSecret
ûû &
=
ûû' ("
previousClientSecret
ûû) =
=
ûû> ?
null
ûû@ D
;
ûûD E
}
üü 
if
¢¢ 
(
¢¢ 
string
¢¢ 
.
¢¢ 
IsNullOrEmpty
¢¢ (
(
¢¢( )
model
¢¢) .
.
¢¢. /
ClientSecret
¢¢/ ;
)
¢¢; <
)
¢¢< =
{
££ 
settings
§§ 
.
§§ 
ClientSecret
§§ )
=
§§* +"
previousClientSecret
§§, @
;
§§@ A
}
•• 
else
¶¶ 
{
ßß 
var
®® 
	protector
®® !
=
®®" #%
_dataProtectionProvider
®®$ ;
.
®®; <
CreateProtector
®®< K
(
®®K L
nameof
®®L R
(
®®R S'
OpenIdClientConfiguration
®®S l
)
®®l m
)
®®m n
;
®®n o
settings
©© 
.
©© 
ClientSecret
©© )
=
©©* +
	protector
©©, 5
.
©©5 6
Protect
©©6 =
(
©©= >
model
©©> C
.
©©C D
ClientSecret
©©D P
)
©©P Q
;
©©Q R
}
™™ 
foreach
¨¨ 
(
¨¨ 
var
¨¨ 
result
¨¨ #
in
¨¨$ &
await
¨¨' ,
_clientService
¨¨- ;
.
¨¨; <#
ValidateSettingsAsync
¨¨< Q
(
¨¨Q R
settings
¨¨R Z
)
¨¨Z [
)
¨¨[ \
{
≠≠ 
if
ÆÆ 
(
ÆÆ 
result
ÆÆ 
!=
ÆÆ !
ValidationResult
ÆÆ" 2
.
ÆÆ2 3
Success
ÆÆ3 :
)
ÆÆ: ;
{
ØØ 
var
∞∞ 
key
∞∞ 
=
∞∞  !
result
∞∞" (
.
∞∞( )
MemberNames
∞∞) 4
.
∞∞4 5
FirstOrDefault
∞∞5 C
(
∞∞C D
)
∞∞D E
??
∞∞F H
string
∞∞I O
.
∞∞O P
Empty
∞∞P U
;
∞∞U V
context
±± 
.
±±  
Updater
±±  '
.
±±' (

ModelState
±±( 2
.
±±2 3
AddModelError
±±3 @
(
±±@ A
key
±±A D
,
±±D E
result
±±F L
.
±±L M
ErrorMessage
±±M Y
)
±±Y Z
;
±±Z [
}
≤≤ 
}
≥≥ 
if
∂∂ 
(
∂∂ 
context
∂∂ 
.
∂∂ 
Updater
∂∂ #
.
∂∂# $

ModelState
∂∂$ .
.
∂∂. /
IsValid
∂∂/ 6
)
∂∂6 7
{
∑∑ 
await
∏∏ 

_shellHost
∏∏ $
.
∏∏$ %&
ReleaseShellContextAsync
∏∏% =
(
∏∏= >
_shellSettings
∏∏> L
)
∏∏L M
;
∏∏M N
}
ππ 
}
∫∫ 
return
ºº 
await
ºº 
	EditAsync
ºº "
(
ºº" #
settings
ºº# +
,
ºº+ ,
context
ºº- 4
)
ºº4 5
;
ºº5 6
}
ΩΩ 	
}
ææ 
}øø Îd
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Drivers\OpenIdServerSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Drivers $
{ 
public 

class -
!OpenIdServerSettingsDisplayDriver 2
:3 4
DisplayDriver5 B
<B C 
OpenIdServerSettingsC W
>W X
{ 
private 
readonly  
IOpenIdServerService -
_serverService. <
;< =
public -
!OpenIdServerSettingsDisplayDriver 0
(0 1 
IOpenIdServerService1 E
serverServiceF S
)S T
=> 
_serverService 
= 
serverService  -
;- .
public 
override 
Task 
< 
IDisplayResult +
>+ ,
	EditAsync- 6
(6 7 
OpenIdServerSettings7 K
settingsL T
,T U
BuildEditorContextV h
contexti p
)p q
=> 
Task 
. 

FromResult 
< 
IDisplayResult -
>- .
(. /

Initialize/ 9
<9 :)
OpenIdServerSettingsViewModel: W
>W X
(X Y
$strY t
,t u
asyncv {
model	| Å
=>
Ç Ñ
{ 
model 
. 
AccessTokenFormat '
=( )
settings* 2
.2 3
AccessTokenFormat3 D
;D E
model 
. 
	Authority 
=  !
settings" *
.* +
	Authority+ 4
?4 5
.5 6
AbsoluteUri6 A
;A B
model 
. .
"EncryptionCertificateStoreLocation 8
=9 :
settings; C
.C D.
"EncryptionCertificateStoreLocationD f
;f g
model 
. *
EncryptionCertificateStoreName 4
=5 6
settings7 ?
.? @*
EncryptionCertificateStoreName@ ^
;^ _
model 
. +
EncryptionCertificateThumbprint 5
=6 7
settings8 @
.@ A+
EncryptionCertificateThumbprintA `
;` a
model 
. +
SigningCertificateStoreLocation 5
=6 7
settings8 @
.@ A+
SigningCertificateStoreLocationA `
;` a
model   
.   '
SigningCertificateStoreName   1
=  2 3
settings  4 <
.  < ='
SigningCertificateStoreName  = X
;  X Y
model!! 
.!! (
SigningCertificateThumbprint!! 2
=!!3 4
settings!!5 =
.!!= >(
SigningCertificateThumbprint!!> Z
;!!Z [
model## 
.## '
EnableAuthorizationEndpoint## 1
=##2 3
settings##4 <
.##< =%
AuthorizationEndpointPath##= V
.##V W
HasValue##W _
;##_ `
model$$ 
.$$  
EnableLogoutEndpoint$$ *
=$$+ ,
settings$$- 5
.$$5 6
LogoutEndpointPath$$6 H
.$$H I
HasValue$$I Q
;$$Q R
model%% 
.%% 
EnableTokenEndpoint%% )
=%%* +
settings%%, 4
.%%4 5
TokenEndpointPath%%5 F
.%%F G
HasValue%%G O
;%%O P
model&& 
.&& "
EnableUserInfoEndpoint&& ,
=&&- .
settings&&/ 7
.&&7 8 
UserinfoEndpointPath&&8 L
.&&L M
HasValue&&M U
;&&U V
model(( 
.(( &
AllowAuthorizationCodeFlow(( 0
=((1 2
settings((3 ;
.((; <&
AllowAuthorizationCodeFlow((< V
;((V W
model)) 
.)) &
AllowClientCredentialsFlow)) 0
=))1 2
settings))3 ;
.)); <&
AllowClientCredentialsFlow))< V
;))V W
model** 
.** 
AllowHybridFlow** %
=**& '
settings**( 0
.**0 1
AllowHybridFlow**1 @
;**@ A
model++ 
.++ 
AllowImplicitFlow++ '
=++( )
settings++* 2
.++2 3
AllowImplicitFlow++3 D
;++D E
model,, 
.,, 
AllowPasswordFlow,, '
=,,( )
settings,,* 2
.,,2 3
AllowPasswordFlow,,3 D
;,,D E
model-- 
.-- !
AllowRefreshTokenFlow-- +
=--, -
settings--. 6
.--6 7!
AllowRefreshTokenFlow--7 L
;--L M
model// 
.// (
DisableAccessTokenEncryption// 2
=//3 4
settings//5 =
.//= >(
DisableAccessTokenEncryption//> Z
;//Z [
model00 
.00 '
DisableRollingRefreshTokens00 1
=002 3
settings004 <
.00< ='
DisableRollingRefreshTokens00= X
;00X Y
model11 
.11 $
UseReferenceAccessTokens11 .
=11/ 0
settings111 9
.119 :$
UseReferenceAccessTokens11: R
;11R S
foreach33 
(33 
var33 
(33 
certificate33 )
,33) *
location33+ 3
,333 4
name335 9
)339 :
in33; =
await33> C
_serverService33D R
.33R S)
GetAvailableCertificatesAsync33S p
(33p q
)33q r
)33r s
{44 
model55 
.55 !
AvailableCertificates55 /
.55/ 0
Add550 3
(553 4
new554 7
CertificateInfo558 G
{66 
StoreLocation77 %
=77& '
location77( 0
,770 1
	StoreName88 !
=88" #
name88$ (
,88( )
FriendlyName99 $
=99% &
certificate99' 2
.992 3
FriendlyName993 ?
,99? @
Issuer:: 
=::  
certificate::! ,
.::, -
Issuer::- 3
,::3 4
Subject;; 
=;;  !
certificate;;" -
.;;- .
Subject;;. 5
,;;5 6
	NotBefore<< !
=<<" #
certificate<<$ /
.<</ 0
	NotBefore<<0 9
,<<9 :
NotAfter==  
===! "
certificate==# .
.==. /
NotAfter==/ 7
,==7 8

ThumbPrint>> "
=>># $
certificate>>% 0
.>>0 1

Thumbprint>>1 ;
,>>; <
HasPrivateKey?? %
=??& '
certificate??( 3
.??3 4
HasPrivateKey??4 A
,??A B
Archived@@  
=@@! "
certificate@@# .
.@@. /
Archived@@/ 7
}AA 
)AA 
;AA 
}BB 
}CC 
)CC 
.CC 
LocationCC 
(CC 
$strCC #
)CC# $
)CC$ %
;CC% &
publicEE 
overrideEE 
asyncEE 
TaskEE "
<EE" #
IDisplayResultEE# 1
>EE1 2
UpdateAsyncEE3 >
(EE> ? 
OpenIdServerSettingsEE? S
settingsEET \
,EE\ ]
UpdateEditorContextEE^ q
contextEEr y
)EEy z
{FF 	
varGG 
modelGG 
=GG 
newGG )
OpenIdServerSettingsViewModelGG 9
(GG9 :
)GG: ;
;GG; <
awaitHH 
contextHH 
.HH 
UpdaterHH !
.HH! "
TryUpdateModelAsyncHH" 5
(HH5 6
modelHH6 ;
,HH; <
PrefixHH= C
)HHC D
;HHD E
settingsJJ 
.JJ 
AccessTokenFormatJJ &
=JJ' (
modelJJ) .
.JJ. /
AccessTokenFormatJJ/ @
;JJ@ A
settingsKK 
.KK 
	AuthorityKK 
=KK  
!KK! "
stringKK" (
.KK( )
IsNullOrEmptyKK) 6
(KK6 7
modelKK7 <
.KK< =
	AuthorityKK= F
)KKF G
?KKH I
newKKJ M
UriKKN Q
(KKQ R
modelKKR W
.KKW X
	AuthorityKKX a
,KKa b
UriKindKKc j
.KKj k
AbsoluteKKk s
)KKs t
:KKu v
nullKKw {
;KK{ |
settingsMM 
.MM .
"EncryptionCertificateStoreLocationMM 7
=MM8 9
modelMM: ?
.MM? @.
"EncryptionCertificateStoreLocationMM@ b
;MMb c
settingsNN 
.NN *
EncryptionCertificateStoreNameNN 3
=NN4 5
modelNN6 ;
.NN; <*
EncryptionCertificateStoreNameNN< Z
;NNZ [
settingsOO 
.OO +
EncryptionCertificateThumbprintOO 4
=OO5 6
modelOO7 <
.OO< =+
EncryptionCertificateThumbprintOO= \
;OO\ ]
settingsQQ 
.QQ +
SigningCertificateStoreLocationQQ 4
=QQ5 6
modelQQ7 <
.QQ< =+
SigningCertificateStoreLocationQQ= \
;QQ\ ]
settingsRR 
.RR '
SigningCertificateStoreNameRR 0
=RR1 2
modelRR3 8
.RR8 9'
SigningCertificateStoreNameRR9 T
;RRT U
settingsSS 
.SS (
SigningCertificateThumbprintSS 1
=SS2 3
modelSS4 9
.SS9 :(
SigningCertificateThumbprintSS: V
;SSV W
settingsUU 
.UU %
AuthorizationEndpointPathUU .
=UU/ 0
modelUU1 6
.UU6 7'
EnableAuthorizationEndpointUU7 R
?UUS T
newVV 

PathStringVV 
(VV 
$strVV 3
)VV3 4
:VV5 6

PathStringVV7 A
.VVA B
EmptyVVB G
;VVG H
settingsWW 
.WW 
LogoutEndpointPathWW '
=WW( )
modelWW* /
.WW/ 0 
EnableLogoutEndpointWW0 D
?WWE F
newXX 

PathStringXX 
(XX 
$strXX 0
)XX0 1
:XX2 3

PathStringXX4 >
.XX> ?
EmptyXX? D
;XXD E
settingsYY 
.YY 
TokenEndpointPathYY &
=YY' (
modelYY) .
.YY. /
EnableTokenEndpointYY/ B
?YYC D
newZZ 

PathStringZZ 
(ZZ 
$strZZ /
)ZZ/ 0
:ZZ1 2

PathStringZZ3 =
.ZZ= >
EmptyZZ> C
;ZZC D
settings[[ 
.[[  
UserinfoEndpointPath[[ )
=[[* +
model[[, 1
.[[1 2"
EnableUserInfoEndpoint[[2 H
?[[I J
new\\ 

PathString\\ 
(\\ 
$str\\ 2
)\\2 3
:\\4 5

PathString\\6 @
.\\@ A
Empty\\A F
;\\F G
settings^^ 
.^^ &
AllowAuthorizationCodeFlow^^ /
=^^0 1
model^^2 7
.^^7 8&
AllowAuthorizationCodeFlow^^8 R
;^^R S
settings__ 
.__ &
AllowClientCredentialsFlow__ /
=__0 1
model__2 7
.__7 8&
AllowClientCredentialsFlow__8 R
;__R S
settings`` 
.`` 
AllowHybridFlow`` $
=``% &
model``' ,
.``, -
AllowHybridFlow``- <
;``< =
settingsaa 
.aa 
AllowImplicitFlowaa &
=aa' (
modelaa) .
.aa. /
AllowImplicitFlowaa/ @
;aa@ A
settingsbb 
.bb 
AllowPasswordFlowbb &
=bb' (
modelbb) .
.bb. /
AllowPasswordFlowbb/ @
;bb@ A
settingscc 
.cc !
AllowRefreshTokenFlowcc *
=cc+ ,
modelcc- 2
.cc2 3!
AllowRefreshTokenFlowcc3 H
;ccH I
settingsee 
.ee (
DisableAccessTokenEncryptionee 1
=ee2 3
modelee4 9
.ee9 :(
DisableAccessTokenEncryptionee: V
;eeV W
settingsff 
.ff '
DisableRollingRefreshTokensff 0
=ff1 2
modelff3 8
.ff8 9'
DisableRollingRefreshTokensff9 T
;ffT U
settingsgg 
.gg $
UseReferenceAccessTokensgg -
=gg. /
modelgg0 5
.gg5 6$
UseReferenceAccessTokensgg6 N
;ggN O
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
}ll ô2
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Drivers\OpenIdValidationSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Drivers $
{ 
public 

class 1
%OpenIdValidationSettingsDisplayDriver 6
:7 8
DisplayDriver9 F
<F G$
OpenIdValidationSettingsG _
>_ `
{ 
private 
readonly 

IShellHost #

_shellHost$ .
;. /
public 1
%OpenIdValidationSettingsDisplayDriver 4
(4 5

IShellHost5 ?
	shellHost@ I
)I J
=> 

_shellHost 
= 
	shellHost %
;% &
public 
override 
Task 
< 
IDisplayResult +
>+ ,
	EditAsync- 6
(6 7$
OpenIdValidationSettings7 O
settingsP X
,X Y
BuildEditorContextZ l
contextm t
)t u
=> 
Task 
. 

FromResult 
< 
IDisplayResult -
>- .
(. /

Initialize/ 9
<9 :-
!OpenIdValidationSettingsViewModel: [
>[ \
(\ ]
$str] |
,| }
async	~ É
model
Ñ â
=>
ä å
{ 
model 
. 
	Authority 
=  !
settings" *
.* +
	Authority+ 4
?4 5
.5 6
AbsoluteUri6 A
;A B
model 
. 
Audience 
=  
settings! )
.) *
Audience* 2
;2 3
model 
. &
DisableTokenTypeValidation 0
=1 2
settings3 ;
.; <&
DisableTokenTypeValidation< V
;V W
model 
. 
Tenant 
= 
settings '
.' (
Tenant( .
;. /
var 
availableTenants $
=% &
new' *
List+ /
</ 0
string0 6
>6 7
(7 8
)8 9
;9 :
foreach!! 
(!! 
var!! 
shellSettings!! *
in!!+ -

_shellHost!!. 8
.!!8 9
GetAllSettings!!9 G
(!!G H
)!!H I
."" 
Where"" 
("" 
s"" 
=>"" 
s""  !
.""! "
State""" '
==""( *
TenantState""+ 6
.""6 7
Running""7 >
)""> ?
)""? @
{## 
var$$ 

shellScope$$ "
=$$# $
await$$% *

_shellHost$$+ 5
.$$5 6
GetScopeAsync$$6 C
($$C D
shellSettings$$D Q
)$$Q R
;$$R S
await&& 

shellScope&& $
.&&$ %

UsingAsync&&% /
(&&/ 0
scope&&0 5
=>&&6 8
{'' 
var(( 

descriptor(( &
=((' (
scope(() .
.((. /
ServiceProvider((/ >
.((> ?
GetRequiredService((? Q
<((Q R
ShellDescriptor((R a
>((a b
(((b c
)((c d
;((d e
if)) 
()) 

descriptor)) &
.))& '
Features))' /
.))/ 0
Any))0 3
())3 4
feature))4 ;
=>))< >
feature))? F
.))F G
Id))G I
==))J L
OpenIdConstants))M \
.))\ ]
Features))] e
.))e f
Server))f l
)))l m
)))m n
{** 
availableTenants++ ,
.++, -
Add++- 0
(++0 1
shellSettings++1 >
.++> ?
Name++? C
)++C D
;++D E
},, 
return-- 
Task-- #
.--# $
CompletedTask--$ 1
;--1 2
}.. 
).. 
;.. 
}// 
model11 
.11 
AvailableTenants11 &
=11' (
availableTenants11) 9
;119 :
}22 
)22 
.22 
Location22 
(22 
$str22 #
)22# $
)22$ %
;22% &
public44 
override44 
async44 
Task44 "
<44" #
IDisplayResult44# 1
>441 2
UpdateAsync443 >
(44> ?$
OpenIdValidationSettings44? W
settings44X `
,44` a
UpdateEditorContext44b u
context44v }
)44} ~
{55 	
var66 
model66 
=66 
new66 -
!OpenIdValidationSettingsViewModel66 =
(66= >
)66> ?
;66? @
await88 
context88 
.88 
Updater88 !
.88! "
TryUpdateModelAsync88" 5
(885 6
model886 ;
,88; <
Prefix88= C
)88C D
;88D E
settings:: 
.:: 
	Authority:: 
=::  
!::! "
string::" (
.::( )
IsNullOrEmpty::) 6
(::6 7
model::7 <
.::< =
	Authority::= F
)::F G
?::H I
new::J M
Uri::N Q
(::Q R
model::R W
.::W X
	Authority::X a
,::a b
UriKind::c j
.::j k
Absolute::k s
)::s t
:::u v
null::w {
;::{ |
settings;; 
.;; 
Audience;; 
=;; 
model;;  %
.;;% &
Audience;;& .
?;;. /
.;;/ 0
Trim;;0 4
(;;4 5
);;5 6
;;;6 7
settings<< 
.<< &
DisableTokenTypeValidation<< /
=<<0 1
model<<2 7
.<<7 8&
DisableTokenTypeValidation<<8 R
;<<R S
settings== 
.== 
Tenant== 
=== 
model== #
.==# $
Tenant==$ *
;==* +
return?? 
await?? 
	EditAsync?? "
(??" #
settings??# +
,??+ ,
context??- 4
)??4 5
;??5 6
}@@ 	
}AA 
}BB ã
ßD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Handlers\OpenIdApplicationRoleRemovedEventHandler.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
.% &
Handlers& .
{ 
public 

class 4
(OpenIdApplicationRoleRemovedEventHandler 9
:: ;$
IRoleRemovedEventHandler< T
{		 
private

 
readonly

 %
IOpenIdApplicationManager

 2
_manager

3 ;
;

; <
public 4
(OpenIdApplicationRoleRemovedEventHandler 7
(7 8%
IOpenIdApplicationManager8 Q
managerR Y
)Y Z
=> 
_manager 
= 
manager !
;! "
public 
async 
Task 
RoleRemovedAsync *
(* +
string+ 1
roleName2 :
): ;
{ 	
await 
foreach 
( 
var 
application *
in+ -
_manager. 6
.6 7
ListInRoleAsync7 F
(F G
roleNameG O
)O P
)P Q
{ 
var 
roles 
= 
await !
_manager" *
.* +
GetRolesAsync+ 8
(8 9
application9 D
)D E
;E F
await 
_manager 
. 
SetRolesAsync ,
(, -
application- 8
,8 9
roles: ?
.? @
Remove@ F
(F G
roleNameG O
,O P
StringComparerQ _
._ `
OrdinalIgnoreCase` q
)q r
)r s
;s t
} 
} 	
} 
} ß
~D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Manifest.cs
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
)		 
]		 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
OpenIdConstants	 
. 
Features !
.! "
Core" &
,& '
Name 
=	 

$str #
,# $
Category 
= 
$str 
,  
Description 
= 
$str L
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
OpenIdConstants	 
. 
Features !
.! "
Client" (
,( )
Name 
=	 

$str 
, 
Category 
= 
$str 
,  
Description 
= 
$str Z
,Z [
Dependencies 
= 
new 
[ 
] 
{ 
OpenIdConstants *
.* +
Features+ 3
.3 4
Core4 8
}9 :
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
OpenIdConstants	 
. 
Features !
.! "

Management" ,
,, -
Name 
=	 

$str (
,( )
Category 
= 
$str 
,  
Description 
= 
$str T
,T U
Dependencies 
= 
new 
[ 
] 
{ 
OpenIdConstants *
.* +
Features+ 3
.3 4
Core4 8
}9 :
)   
]   
["" 
assembly"" 	
:""	 

Feature"" 
("" 
Id## 
=## 
OpenIdConstants##	 
.## 
Features## !
.##! "
Server##" (
,##( )
Name$$ 
=$$	 

$str$$ (
,$$( )
Category%% 
=%% 
$str%% 
,%%  
Description&& 
=&& 
$str&& q
,&&q r
Dependencies'' 
='' 
new'' 
['' 
]'' 
{(( 
OpenIdConstants)) 
.)) 
Features))  
.))  !
Core))! %
,))% &
OpenIdConstants** 
.** 
Features**  
.**  !

Management**! +
}++ 
),, 
],, 
[.. 
assembly.. 	
:..	 

Feature.. 
(.. 
Id// 
=// 
OpenIdConstants//	 
.// 
Features// !
.//! "

Validation//" ,
,//, -
Name00 
=00	 

$str00 $
,00$ %
Category11 
=11 
$str11 
,11  
Description22 
=22 
$str	22 ã
,
22ã å
Dependencies33 
=33 
new33 
[33 
]33 
{33 
OpenIdConstants33 *
.33* +
Features33+ 3
.333 4
Core334 8
}339 :
)44 
]44 ﬂ
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\OpenIdExtensions.cs
	namespace 	
OrchardCore
 
. 
OpenId 
{ 
internal		 
static		 
class		 
OpenIdExtensions		 *
{

 
internal 
static 
string 
GetUserIdentifier 0
(0 1
this1 5
ClaimsPrincipal6 E
	principalF O
)O P
=> 
	principal 
. 
	FindFirst "
(" #
Claims# )
.) *
Subject* 1
)1 2
?2 3
.3 4
Value4 9
??: <
	principal 
. 
	FindFirst "
(" #

ClaimTypes# -
.- .
NameIdentifier. <
)< =
?= >
.> ?
Value? D
??E G
	principal 
. 
	FindFirst "
(" #

ClaimTypes# -
.- .
Upn. 1
)1 2
?2 3
.3 4
Value4 9
??: <
throw 
new %
InvalidOperationException 2
(2 3
$str3 o
)o p
;p q
internal 
static 
async 
Task "
<" #
bool# '
>' (
AnyAsync) 1
<1 2
T2 3
>3 4
(4 5
this5 9
IAsyncEnumerable: J
<J K
TK L
>L M
sourceN T
)T U
{ 	
if 
( 
source 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
source7 =
)= >
)> ?
;? @
} 
await 
using 
var 

enumerator &
=' (
source) /
./ 0
GetAsyncEnumerator0 B
(B C
)C D
;D E
return 
await 

enumerator #
.# $
MoveNextAsync$ 1
(1 2
)2 3
;3 4
} 	
internal 
static 
Task 
< 
List !
<! "
T" #
># $
>$ %
ToListAsync& 1
<1 2
T2 3
>3 4
(4 5
this5 9
IAsyncEnumerable: J
<J K
TK L
>L M
sourceN T
)T U
{ 	
if 
( 
source 
== 
null 
) 
{ 
throw   
new   !
ArgumentNullException   /
(  / 0
nameof  0 6
(  6 7
source  7 =
)  = >
)  > ?
;  ? @
}!! 
return## 
ExecuteAsync## 
(##  
)##  !
;##! "
async%% 
Task%% 
<%% 
List%% 
<%% 
T%% 
>%% 
>%% 
ExecuteAsync%%  ,
(%%, -
)%%- .
{&& 
var'' 
list'' 
='' 
new'' 
List'' #
<''# $
T''$ %
>''% &
(''& '
)''' (
;''( )
await)) 
foreach)) 
()) 
var)) "
element))# *
in))+ -
source)). 4
)))4 5
{** 
list++ 
.++ 
Add++ 
(++ 
element++ $
)++$ %
;++% &
},, 
return.. 
list.. 
;.. 
}// 
}00 	
}11 
}22 ”
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Permissions.cs
	namespace 	
OrchardCore
 
. 
OpenId 
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
ManageApplications

* <
= 
new 

Permission 
( 
nameof #
(# $
ManageApplications$ 6
)6 7
,7 8
$str9 v
)v w
;w x
public 
static 
readonly 

Permission )
ManageScopes* 6
= 
new 

Permission 
( 
nameof #
(# $
ManageScopes$ 0
)0 1
,1 2
$str3 j
)j k
;k l
public 
static 
readonly 

Permission ) 
ManageClientSettings* >
= 
new 

Permission 
( 
nameof #
(# $ 
ManageClientSettings$ 8
)8 9
,9 :
$str; n
)n o
;o p
public 
static 
readonly 

Permission ) 
ManageServerSettings* >
= 
new 

Permission 
( 
nameof #
(# $ 
ManageServerSettings$ 8
)8 9
,9 :
$str; n
)n o
;o p
public 
static 
readonly 

Permission )$
ManageValidationSettings* B
= 
new 

Permission 
( 
nameof #
(# $$
ManageValidationSettings$ <
)< =
,= >
$str? r
)r s
;s t
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{ 
ManageApplications "
," #
ManageScopes 
,  
ManageClientSettings $
,$ % 
ManageServerSettings   $
,  $ %$
ManageValidationSettings!! (
}"" 
.## 
AsEnumerable## 
(## 
)## 
)## 
;## 
}$$ 	
public&& 
IEnumerable&& 
<&&  
PermissionStereotype&& /
>&&/ 0!
GetDefaultStereotypes&&1 F
(&&F G
)&&G H
{'' 	
yield(( 
return(( 
new((  
PermissionStereotype(( 1
{)) 
Name** 
=** 
$str** &
,**& '
Permissions++ 
=++ 
new++ !
[++! "
]++" #
{,, 
ManageApplications-- &
,--& '
ManageScopes..  
,..  ! 
ManageClientSettings// (
,//( ) 
ManageServerSettings00 (
,00( )$
ManageValidationSettings11 ,
}22 
}33 
;33 
}44 	
}55 
}66 ®B
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdApplicationStep.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Recipes $
{ 
public 

class !
OpenIdApplicationStep &
:' (
IRecipeStepHandler) ;
{ 
private 
readonly %
IOpenIdApplicationManager 2
_applicationManager3 F
;F G
public !
OpenIdApplicationStep $
($ %%
IOpenIdApplicationManager% >
applicationManager? Q
)Q R
{ 	
_applicationManager 
=  !
applicationManager" 4
;4 5
} 	
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
string 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- @
,@ A
StringComparisonB R
.R S
OrdinalIgnoreCaseS d
)d e
)e f
{ 
return 
; 
} 
var   
model   
=   
context   
.    
Step    $
.  $ %
ToObject  % -
<  - .,
 CreateOpenIdApplicationViewModel  . N
>  N O
(  O P
)  P Q
;  Q R
var"" 

descriptor"" 
="" 
new""  '
OpenIdApplicationDescriptor""! <
{## 
ClientId$$ 
=$$ 
model$$  
.$$  !
ClientId$$! )
,$$) *
ClientSecret%% 
=%% 
model%% $
.%%$ %
ClientSecret%%% 1
,%%1 2
ConsentType&& 
=&& 
model&& #
.&&# $
ConsentType&&$ /
,&&/ 0
DisplayName'' 
='' 
model'' #
.''# $
DisplayName''$ /
,''/ 0
Type(( 
=(( 
model(( 
.(( 
Type(( !
})) 
;)) 
if++ 
(++ 
model++ 
.++ &
AllowAuthorizationCodeFlow++ 0
)++0 1
{,, 

descriptor-- 
.-- 
Permissions-- &
.--& '
Add--' *
(--* +
OpenIddictConstants--+ >
.--> ?
Permissions--? J
.--J K

GrantTypes--K U
.--U V
AuthorizationCode--V g
)--g h
;--h i
}.. 
if// 
(// 
model// 
.// &
AllowClientCredentialsFlow// 0
)//0 1
{00 

descriptor11 
.11 
Permissions11 &
.11& '
Add11' *
(11* +
OpenIddictConstants11+ >
.11> ?
Permissions11? J
.11J K

GrantTypes11K U
.11U V
ClientCredentials11V g
)11g h
;11h i
}22 
if33 
(33 
model33 
.33 
AllowImplicitFlow33 '
)33' (
{44 

descriptor55 
.55 
Permissions55 &
.55& '
Add55' *
(55* +
OpenIddictConstants55+ >
.55> ?
Permissions55? J
.55J K

GrantTypes55K U
.55U V
Implicit55V ^
)55^ _
;55_ `
}66 
if77 
(77 
model77 
.77 
AllowPasswordFlow77 '
)77' (
{88 

descriptor99 
.99 
Permissions99 &
.99& '
Add99' *
(99* +
OpenIddictConstants99+ >
.99> ?
Permissions99? J
.99J K

GrantTypes99K U
.99U V
Password99V ^
)99^ _
;99_ `
}:: 
if;; 
(;; 
model;; 
.;; !
AllowRefreshTokenFlow;; +
);;+ ,
{<< 

descriptor== 
.== 
Permissions== &
.==& '
Add==' *
(==* +
OpenIddictConstants==+ >
.==> ?
Permissions==? J
.==J K

GrantTypes==K U
.==U V
RefreshToken==V b
)==b c
;==c d
}>> 
if?? 
(?? 
model?? 
.?? &
AllowAuthorizationCodeFlow?? 0
||??1 3
model??4 9
.??9 :
AllowImplicitFlow??: K
)??K L
{@@ 

descriptorAA 
.AA 
PermissionsAA &
.AA& '
AddAA' *
(AA* +
OpenIddictConstantsAA+ >
.AA> ?
PermissionsAA? J
.AAJ K
	EndpointsAAK T
.AAT U
AuthorizationAAU b
)AAb c
;AAc d
}BB 
ifCC 
(CC 
modelCC 
.CC 
AllowLogoutEndpointCC )
)CC) *
{DD 

descriptorEE 
.EE 
PermissionsEE &
.EE& '
AddEE' *
(EE* +
OpenIddictConstantsEE+ >
.EE> ?
PermissionsEE? J
.EEJ K
	EndpointsEEK T
.EET U
LogoutEEU [
)EE[ \
;EE\ ]
}FF 
ifGG 
(GG 
modelGG 
.GG &
AllowAuthorizationCodeFlowGG 0
||GG1 3
modelGG4 9
.GG9 :&
AllowClientCredentialsFlowGG: T
||GGU W
modelHH 
.HH 
AllowPasswordFlowHH '
||HH( *
modelHH+ 0
.HH0 1!
AllowRefreshTokenFlowHH1 F
)HHF G
{II 

descriptorJJ 
.JJ 
PermissionsJJ &
.JJ& '
AddJJ' *
(JJ* +
OpenIddictConstantsJJ+ >
.JJ> ?
PermissionsJJ? J
.JJJ K
	EndpointsJJK T
.JJT U
TokenJJU Z
)JJZ [
;JJ[ \
}KK 

descriptorMM 
.MM "
PostLogoutRedirectUrisMM -
.MM- .
	UnionWithMM. 7
(MM7 8
fromNN 
uriNN 
inNN 
modelNN !
.NN! ""
PostLogoutRedirectUrisNN" 8
?NN8 9
.NN9 :
SplitNN: ?
(NN? @
$charNN@ C
,NNC D
StringSplitOptionsNNE W
.NNW X
RemoveEmptyEntriesNNX j
)NNj k
??NNl n
ArrayNNo t
.NNt u
EmptyNNu z
<NNz {
string	NN{ Å
>
NNÅ Ç
(
NNÇ É
)
NNÉ Ñ
selectOO 
newOO 
UriOO 
(OO 
uriOO "
,OO" #
UriKindOO$ +
.OO+ ,
AbsoluteOO, 4
)OO4 5
)OO5 6
;OO6 7

descriptorQQ 
.QQ 
RedirectUrisQQ #
.QQ# $
	UnionWithQQ$ -
(QQ- .
fromRR 
uriRR 
inRR 
modelRR !
.RR! "
RedirectUrisRR" .
?RR. /
.RR/ 0
SplitRR0 5
(RR5 6
$charRR6 9
,RR9 :
StringSplitOptionsRR; M
.RRM N
RemoveEmptyEntriesRRN `
)RR` a
??RRb d
ArrayRRe j
.RRj k
EmptyRRk p
<RRp q
stringRRq w
>RRw x
(RRx y
)RRy z
selectSS 
newSS 
UriSS 
(SS 
uriSS "
,SS" #
UriKindSS$ +
.SS+ ,
AbsoluteSS, 4
)SS4 5
)SS5 6
;SS6 7

descriptorUU 
.UU 
RolesUU 
.UU 
	UnionWithUU &
(UU& '
modelUU' ,
.UU, -
RoleEntriesUU- 8
.VV 
WhereVV 
(VV 
roleVV 
=>VV 
roleVV #
.VV# $
SelectedVV$ ,
)VV, -
.WW 
SelectWW 
(WW 
roleWW 
=>WW 
roleWW  $
.WW$ %
NameWW% )
)WW) *
)WW* +
;WW+ ,
awaitYY 
_applicationManagerYY %
.YY% &
CreateAsyncYY& 1
(YY1 2

descriptorYY2 <
)YY< =
;YY= >
}ZZ 	
}[[ 
}\\ ©-
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdClientSettingsStep.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Recipes $
{		 
public 

class $
OpenIdClientSettingsStep )
:* +
IRecipeStepHandler, >
{ 
private 
readonly  
IOpenIdClientService -
_clientService. <
;< =
public $
OpenIdClientSettingsStep '
(' ( 
IOpenIdClientService( <
clientService= J
)J K
{ 	
_clientService 
= 
clientService *
;* +
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
string 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
$str- C
,C D
StringComparisonE U
.U V
OrdinalIgnoreCaseV g
)g h
)h i
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
.$ %
ToObject% -
<- .)
OpenIdClientSettingsStepModel. K
>K L
(L M
)M N
;N O
var 
settings 
= 
await  
_clientService! /
./ 0
LoadSettingsAsync0 A
(A B
)B C
;C D
settings   
.   
Scopes   
=   
model   #
.  # $
Scopes  $ *
.  * +
Split  + 0
(  0 1
$char  1 4
,  4 5
$char  6 9
)  9 :
;  : ;
settings!! 
.!! 
	Authority!! 
=!!  
!!!! "
string!!" (
.!!( )
IsNullOrEmpty!!) 6
(!!6 7
model!!7 <
.!!< =
	Authority!!= F
)!!F G
?!!H I
new!!J M
Uri!!N Q
(!!Q R
model!!R W
.!!W X
	Authority!!X a
,!!a b
UriKind!!c j
.!!j k
Absolute!!k s
)!!s t
:!!u v
null!!w {
;!!{ |
settings"" 
."" 
CallbackPath"" !
=""" #
model""$ )
."") *
CallbackPath""* 6
;""6 7
settings## 
.## 
ClientId## 
=## 
model##  %
.##% &
ClientId##& .
;##. /
settings$$ 
.$$ 
ClientSecret$$ !
=$$" #
model$$$ )
.$$) *
ClientSecret$$* 6
;$$6 7
settings%% 
.%% 
DisplayName%%  
=%%! "
model%%# (
.%%( )
DisplayName%%) 4
;%%4 5
settings&& 
.&& 
ResponseMode&& !
=&&" #
model&&$ )
.&&) *
ResponseMode&&* 6
;&&6 7
settings'' 
.'' 
ResponseType'' !
=''" #
model''$ )
.'') *
ResponseType''* 6
;''6 7
settings(( 
.(( !
SignedOutCallbackPath(( *
=((+ ,
model((- 2
.((2 3!
SignedOutCallbackPath((3 H
;((H I
settings)) 
.))  
SignedOutRedirectUri)) )
=))* +
model)), 1
.))1 2 
SignedOutRedirectUri))2 F
;))F G
await++ 
_clientService++  
.++  !
UpdateSettingsAsync++! 4
(++4 5
settings++5 =
)++= >
;++> ?
},, 	
}-- 
public// 

class// )
OpenIdClientSettingsStepModel// .
{00 
public11 
string11 
DisplayName11 !
{11" #
get11$ '
;11' (
set11) ,
;11, -
}11. /
[33 	
Url33	 
]33 
public44 
string44 
	Authority44 
{44  !
get44" %
;44% &
set44' *
;44* +
}44, -
public66 
string66 
ClientId66 
{66  
get66! $
;66$ %
set66& )
;66) *
}66+ ,
public77 
string77 
ClientSecret77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
public88 
string88 
CallbackPath88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public99 
string99  
SignedOutRedirectUri99 *
{99+ ,
get99- 0
;990 1
set992 5
;995 6
}997 8
public:: 
string:: !
SignedOutCallbackPath:: +
{::, -
get::. 1
;::1 2
set::3 6
;::6 7
}::8 9
public;; 
string;; 
Scopes;; 
{;; 
get;; "
;;;" #
set;;$ '
;;;' (
};;) *
public<< 
string<< 
ResponseType<< "
{<<# $
get<<% (
;<<( )
set<<* -
;<<- .
}<</ 0
public== 
string== 
ResponseMode== "
{==# $
get==% (
;==( )
set==* -
;==- .
}==/ 0
}>> 
}?? ñ
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdScopeStep.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 
Recipes		 $
{

 
public 

class 
OpenIdScopeStep  
:! "
IRecipeStepHandler# 5
{ 
private 
readonly 
IOpenIdScopeManager ,
_scopeManager- :
;: ;
public 
OpenIdScopeStep 
( 
IOpenIdScopeManager 2
scopeManager3 ?
)? @
{ 	
_scopeManager 
= 
scopeManager (
;( )
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
,+ ,
$str- :
,: ;
StringComparison< L
.L M
OrdinalIgnoreCaseM ^
)^ _
)_ `
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .$
OpenIdScopeStepViewModel. F
>F G
(G H
)H I
;I J
var 

descriptor 
= 
new  !
OpenIdScopeDescriptor! 6
{   
Description!! 
=!! 
model!! #
.!!# $
Description!!$ /
,!!/ 0
Name"" 
="" 
model"" 
."" 
	ScopeName"" &
,""& '
DisplayName## 
=## 
model## #
.### $
DisplayName##$ /
}$$ 
;$$ 
if&& 
(&& 
!&& 
string&& 
.&& 
IsNullOrEmpty&& %
(&&% &
model&&& +
.&&+ ,
	Resources&&, 5
)&&5 6
)&&6 7
{'' 

descriptor(( 
.(( 
	Resources(( $
.(($ %
	UnionWith((% .
(((. /
model((/ 4
.((4 5
	Resources((5 >
.((> ?
Split((? D
(((D E
new((E H
[((H I
]((I J
{((K L
$str((M P
}((Q R
,((R S
StringSplitOptions((T f
.((f g
RemoveEmptyEntries((g y
)((y z
)((z {
;(({ |
})) 
await++ 
_scopeManager++ 
.++  
CreateAsync++  +
(+++ ,

descriptor++, 6
)++6 7
;++7 8
},, 	
}-- 
}.. ∑5
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdServerSettingsStep.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 
Recipes		 $
{

 
public 

class $
OpenIdServerSettingsStep )
:* +
IRecipeStepHandler, >
{ 
private 
readonly  
IOpenIdServerService -
_serverService. <
;< =
public $
OpenIdServerSettingsStep '
(' ( 
IOpenIdServerService( <
serverService= J
)J K
=> 
_serverService 
= 
serverService  -
;- .
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
,+ ,
nameof- 3
(3 4 
OpenIdServerSettings4 H
)H I
,I J
StringComparisonK [
.[ \
OrdinalIgnoreCase\ m
)m n
)n o
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
OpenIdServerSettingsStepModel. K
>K L
(L M
)M N
;N O
var 
settings 
= 
await  
_serverService! /
./ 0
LoadSettingsAsync0 A
(A B
)B C
;C D
settings 
. 
AccessTokenFormat &
=' (
model) .
.. /
AccessTokenFormat/ @
;@ A
settings   
.   
	Authority   
=    
!  ! "
String  " (
.  ( )
IsNullOrEmpty  ) 6
(  6 7
model  7 <
.  < =
	Authority  = F
)  F G
?  H I
new  J M
Uri  N Q
(  Q R
model  R W
.  W X
	Authority  X a
,  a b
UriKind  c j
.  j k
Absolute  k s
)  s t
:  u v
null  w {
;  { |
settings"" 
."" .
"EncryptionCertificateStoreLocation"" 7
=""8 9
model"": ?
.""? @.
"EncryptionCertificateStoreLocation""@ b
;""b c
settings## 
.## *
EncryptionCertificateStoreName## 3
=##4 5
model##6 ;
.##; <*
EncryptionCertificateStoreName##< Z
;##Z [
settings$$ 
.$$ +
EncryptionCertificateThumbprint$$ 4
=$$5 6
model$$7 <
.$$< =+
EncryptionCertificateThumbprint$$= \
;$$\ ]
settings&& 
.&& +
SigningCertificateStoreLocation&& 4
=&&5 6
model&&7 <
.&&< =+
SigningCertificateStoreLocation&&= \
;&&\ ]
settings'' 
.'' '
SigningCertificateStoreName'' 0
=''1 2
model''3 8
.''8 9'
SigningCertificateStoreName''9 T
;''T U
settings(( 
.(( (
SigningCertificateThumbprint(( 1
=((2 3
model((4 9
.((9 :(
SigningCertificateThumbprint((: V
;((V W
settings** 
.** %
AuthorizationEndpointPath** .
=**/ 0
model**1 6
.**6 7'
EnableAuthorizationEndpoint**7 R
?**S T
new++ 

PathString++ 
(++ 
$str++ 3
)++3 4
:++5 6

PathString++7 A
.++A B
Empty++B G
;++G H
settings,, 
.,, 
LogoutEndpointPath,, '
=,,( )
model,,* /
.,,/ 0 
EnableLogoutEndpoint,,0 D
?,,E F
new-- 

PathString-- 
(-- 
$str-- 0
)--0 1
:--2 3

PathString--4 >
.--> ?
Empty--? D
;--D E
settings.. 
... 
TokenEndpointPath.. &
=..' (
model..) .
.... /
EnableTokenEndpoint../ B
?..C D
new// 

PathString// 
(// 
$str// /
)/// 0
://1 2

PathString//3 =
.//= >
Empty//> C
;//C D
settings00 
.00  
UserinfoEndpointPath00 )
=00* +
model00, 1
.001 2"
EnableUserInfoEndpoint002 H
?00I J
new11 

PathString11 
(11 
$str11 2
)112 3
:114 5

PathString116 @
.11@ A
Empty11A F
;11F G
settings33 
.33 &
AllowAuthorizationCodeFlow33 /
=330 1
model332 7
.337 8&
AllowAuthorizationCodeFlow338 R
;33R S
settings44 
.44 &
AllowClientCredentialsFlow44 /
=440 1
model442 7
.447 8&
AllowClientCredentialsFlow448 R
;44R S
settings55 
.55 
AllowHybridFlow55 $
=55% &
model55' ,
.55, -
AllowHybridFlow55- <
;55< =
settings66 
.66 
AllowImplicitFlow66 &
=66' (
model66) .
.66. /
AllowImplicitFlow66/ @
;66@ A
settings77 
.77 
AllowPasswordFlow77 &
=77' (
model77) .
.77. /
AllowPasswordFlow77/ @
;77@ A
settings88 
.88 !
AllowRefreshTokenFlow88 *
=88+ ,
model88- 2
.882 3!
AllowRefreshTokenFlow883 H
;88H I
settings:: 
.:: (
DisableAccessTokenEncryption:: 1
=::2 3
model::4 9
.::9 :(
DisableAccessTokenEncryption::: V
;::V W
settings;; 
.;; '
DisableRollingRefreshTokens;; 0
=;;1 2
model;;3 8
.;;8 9'
DisableRollingRefreshTokens;;9 T
;;;T U
settings<< 
.<< $
UseReferenceAccessTokens<< -
=<<. /
model<<0 5
.<<5 6$
UseReferenceAccessTokens<<6 N
;<<N O
await>> 
_serverService>>  
.>>  !
UpdateSettingsAsync>>! 4
(>>4 5
settings>>5 =
)>>= >
;>>> ?
}?? 	
}@@ 
}AA ˝ 
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdServerSettingsStepModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Recipes $
{ 
public 

class )
OpenIdServerSettingsStepModel .
{ 
public		 
TokenFormat		 
AccessTokenFormat		 ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
=		; <
TokenFormat		= H
.		H I
DataProtection		I W
;		W X
[

 	
Url

	 
]

 
public 
string 
	Authority 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool (
DisableAccessTokenEncryption 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
StoreLocation 
? .
"EncryptionCertificateStoreLocation @
{A B
getC F
;F G
setH K
;K L
}M N
public 
	StoreName 
? *
EncryptionCertificateStoreName 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
string +
EncryptionCertificateThumbprint 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
StoreLocation 
? +
SigningCertificateStoreLocation =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
	StoreName 
? '
SigningCertificateStoreName 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
string (
SigningCertificateThumbprint 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
bool 
EnableTokenEndpoint '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool '
EnableAuthorizationEndpoint /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
bool  
EnableLogoutEndpoint (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool "
EnableUserInfoEndpoint *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool 
AllowPasswordFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool &
AllowClientCredentialsFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool &
AllowAuthorizationCodeFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool !
AllowRefreshTokenFlow )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
AllowHybridFlow #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
AllowImplicitFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool '
DisableRollingRefreshTokens /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
bool $
UseReferenceAccessTokens ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
}   
}!! †
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdValidationSettingsStep.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Recipes $
{		 
public 

class (
OpenIdValidationSettingsStep -
:. /
IRecipeStepHandler0 B
{ 
private 
readonly $
IOpenIdValidationService 1
_validationService2 D
;D E
public (
OpenIdValidationSettingsStep +
(+ ,$
IOpenIdValidationService, D
validationServiceE V
)V W
=> 
_validationService !
=" #
validationService$ 5
;5 6
public 
async 
Task 
ExecuteAsync &
(& '"
RecipeExecutionContext' =
context> E
)E F
{ 	
if 
( 
! 
String 
. 
Equals 
( 
context &
.& '
Name' +
,+ ,
nameof- 3
(3 4$
OpenIdValidationSettings4 L
)L M
,M N
StringComparisonO _
._ `
OrdinalIgnoreCase` q
)q r
)r s
{ 
return 
; 
} 
var 
model 
= 
context 
.  
Step  $
.$ %
ToObject% -
<- .-
!OpenIdValidationSettingsStepModel. O
>O P
(P Q
)Q R
;R S
var 
settings 
= 
await  
_validationService! 3
.3 4
LoadSettingsAsync4 E
(E F
)F G
;G H
settings 
. 
Tenant 
= 
model #
.# $
Tenant$ *
;* +
settings 
. 
	Authority 
=  
!! "
string" (
.( )
IsNullOrEmpty) 6
(6 7
model7 <
.< =
	Authority= F
)F G
?H I
newJ M
UriN Q
(Q R
modelR W
.W X
	AuthorityX a
,a b
UriKindc j
.j k
Absolutek s
)s t
:u v
nullw {
;{ |
settings   
.   
Audience   
=   
model    %
.  % &
Audience  & .
;  . /
settings!! 
.!! &
DisableTokenTypeValidation!! /
=!!0 1
model!!2 7
.!!7 8&
DisableTokenTypeValidation!!8 R
;!!R S
await## 
_validationService## $
.##$ %
UpdateSettingsAsync##% 8
(##8 9
settings##9 A
)##A B
;##B C
}$$ 	
}%% 
}&& §
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Recipes\OpenIdValidationSettingsStepModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Recipes $
{ 
public 

class -
!OpenIdValidationSettingsStepModel 2
{ 
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	Authority 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool &
DisableTokenTypeValidation .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public

 
string

 
Tenant
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
) *
} 
} Ù
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Services\IOpenIdClientService.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
{ 
public 

	interface  
IOpenIdClientService )
{		 
Task

 
<

  
OpenIdClientSettings

 !
>

! "
GetSettingsAsync

# 3
(

3 4
)

4 5
;

5 6
Task 
<  
OpenIdClientSettings !
>! "
LoadSettingsAsync# 4
(4 5
)5 6
;6 7
Task 
UpdateSettingsAsync  
(  ! 
OpenIdClientSettings! 5
settings6 >
)> ?
;? @
Task 
< 
ImmutableArray 
< 
ValidationResult ,
>, -
>- .!
ValidateSettingsAsync/ D
(D E 
OpenIdClientSettingsE Y
settingsZ b
)b c
;c d
} 
} ô
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Services\IOpenIdServerService.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
{		 
public

 

	interface

  
IOpenIdServerService

 )
{ 
Task 
<  
OpenIdServerSettings !
>! "
GetSettingsAsync# 3
(3 4
)4 5
;5 6
Task 
<  
OpenIdServerSettings !
>! "
LoadSettingsAsync# 4
(4 5
)5 6
;6 7
Task 
UpdateSettingsAsync  
(  ! 
OpenIdServerSettings! 5
settings6 >
)> ?
;? @
Task 
< 
ImmutableArray 
< 
ValidationResult ,
>, -
>- .!
ValidateSettingsAsync/ D
(D E 
OpenIdServerSettingsE Y
settingsZ b
)b c
;c d
Task 
< 
ImmutableArray 
< 
( 
X509Certificate2 -
certificate. 9
,9 :
StoreLocation; H
locationI Q
,Q R
	StoreNameS \
name] a
)a b
>b c
>c d*
GetAvailableCertificatesAsync	e Ç
(
Ç É
)
É Ñ
;
Ñ Ö
Task 
< 
ImmutableArray 
< 
SecurityKey '
>' (
>( )"
GetEncryptionKeysAsync* @
(@ A
)A B
;B C
Task 
< 
ImmutableArray 
< 
SecurityKey '
>' (
>( )
GetSigningKeysAsync* =
(= >
)> ?
;? @
Task )
PruneManagedCertificatesAsync *
(* +
)+ ,
;, -
} 
} å	
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Services\IOpenIdValidationService.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
{ 
public 

	interface $
IOpenIdValidationService -
{		 
Task

 
<

 $
OpenIdValidationSettings

 %
>

% &
GetSettingsAsync

' 7
(

7 8
)

8 9
;

9 :
Task 
< $
OpenIdValidationSettings %
>% &
LoadSettingsAsync' 8
(8 9
)9 :
;: ;
Task 
UpdateSettingsAsync  
(  !$
OpenIdValidationSettings! 9
settings: B
)B C
;C D
Task 
< 
ImmutableArray 
< 
ValidationResult ,
>, -
>- .!
ValidateSettingsAsync/ D
(D E$
OpenIdValidationSettingsE ]
settings^ f
)f g
;g h
} 
} ®U
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Services\OpenIdClientService.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
{ 
public 

class 
OpenIdClientService $
:% & 
IOpenIdClientService' ;
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public 
OpenIdClientService "
(" #
ISiteService 
siteService $
,$ %
IStringLocalizer 
< 
OpenIdClientService 0
>0 1
stringLocalizer2 A
)A B
{ 	
_siteService 
= 
siteService &
;& '
S 
= 
stringLocalizer 
;  
} 	
public 
async 
Task 
<  
OpenIdClientSettings .
>. /
GetSettingsAsync0 @
(@ A
)A B
{ 	
var 
	container 
= 
await !
_siteService" .
.. / 
GetSiteSettingsAsync/ C
(C D
)D E
;E F
return 
	container 
. 
As 
<   
OpenIdClientSettings  4
>4 5
(5 6
)6 7
;7 8
} 	
public!! 
async!! 
Task!! 
<!!  
OpenIdClientSettings!! .
>!!. /
LoadSettingsAsync!!0 A
(!!A B
)!!B C
{"" 	
var## 
	container## 
=## 
await## !
_siteService##" .
.##. /!
LoadSiteSettingsAsync##/ D
(##D E
)##E F
;##F G
return$$ 
	container$$ 
.$$ 
As$$ 
<$$   
OpenIdClientSettings$$  4
>$$4 5
($$5 6
)$$6 7
;$$7 8
}%% 	
public'' 
async'' 
Task'' 
UpdateSettingsAsync'' -
(''- . 
OpenIdClientSettings''. B
settings''C K
)''K L
{(( 	
if)) 
()) 
settings)) 
==)) 
null))  
)))  !
{** 
throw++ 
new++ !
ArgumentNullException++ /
(++/ 0
nameof++0 6
(++6 7
settings++7 ?
)++? @
)++@ A
;++A B
},, 
var.. 
	container.. 
=.. 
await.. !
_siteService.." .
.... /!
LoadSiteSettingsAsync../ D
(..D E
)..E F
;..F G
	container// 
.// 

Properties//  
[//  !
nameof//! '
(//' ( 
OpenIdClientSettings//( <
)//< =
]//= >
=//? @
JObject//A H
.//H I

FromObject//I S
(//S T
settings//T \
)//\ ]
;//] ^
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
Task33 
<33 
ImmutableArray33 "
<33" #
ValidationResult33# 3
>333 4
>334 5!
ValidateSettingsAsync336 K
(33K L 
OpenIdClientSettings33L `
settings33a i
)33i j
{44 	
if55 
(55 
settings55 
==55 
null55  
)55  !
{66 
throw77 
new77 !
ArgumentNullException77 /
(77/ 0
nameof770 6
(776 7
settings777 ?
)77? @
)77@ A
;77A B
}88 
var:: 
results:: 
=:: 
ImmutableArray:: (
.::( )
CreateBuilder::) 6
<::6 7
ValidationResult::7 G
>::G H
(::H I
)::I J
;::J K
if<< 
(<< 
settings<< 
.<< 
	Authority<< "
==<<# %
null<<& *
)<<* +
{== 
results>> 
.>> 
Add>> 
(>> 
new>> 
ValidationResult>>  0
(>>0 1
S>>1 2
[>>2 3
$str>>3 [
]>>[ \
,>>\ ]
new>>^ a
[>>a b
]>>b c
{?? 
nameof@@ 
(@@ 
settings@@ #
.@@# $
	Authority@@$ -
)@@- .
}AA 
)AA 
)AA 
;AA 
}BB 
elseCC 
ifCC 
(CC 
!CC 
settingsCC 
.CC 
	AuthorityCC (
.CC( )
IsAbsoluteUriCC) 6
||CC7 9
!CC: ;
settingsCC; C
.CCC D
	AuthorityCCD M
.CCM N&
IsWellFormedOriginalStringCCN h
(CCh i
)CCi j
)CCj k
{DD 
resultsEE 
.EE 
AddEE 
(EE 
newEE 
ValidationResultEE  0
(EE0 1
SEE1 2
[EE2 3
$strEE3 `
]EE` a
,EEa b
newEEc f
[EEf g
]EEg h
{FF 
nameofGG 
(GG 
settingsGG #
.GG# $
	AuthorityGG$ -
)GG- .
}HH 
)HH 
)HH 
;HH 
}II 
elseJJ 
ifJJ 
(JJ 
!JJ 
StringJJ 
.JJ 
IsNullOrEmptyJJ *
(JJ* +
settingsJJ+ 3
.JJ3 4
	AuthorityJJ4 =
.JJ= >
QueryJJ> C
)JJC D
||JJE G
!JJH I
StringJJI O
.JJO P
IsNullOrEmptyJJP ]
(JJ] ^
settingsJJ^ f
.JJf g
	AuthorityJJg p
.JJp q
FragmentJJq y
)JJy z
)JJz {
{KK 
resultsLL 
.LL 
AddLL 
(LL 
newLL 
ValidationResultLL  0
(LL0 1
SLL1 2
[LL2 3
$strLL3 o
]LLo p
,LLp q
newLLr u
[LLu v
]LLv w
{MM 
nameofNN 
(NN 
settingsNN #
.NN# $
	AuthorityNN$ -
)NN- .
}OO 
)OO 
)OO 
;OO 
}PP 
ifRR 
(RR 
StringRR 
.RR 
IsNullOrEmptyRR $
(RR$ %
settingsRR% -
.RR- .
ResponseTypeRR. :
)RR: ;
)RR; <
{SS 
resultsTT 
.TT 
AddTT 
(TT 
newTT 
ValidationResultTT  0
(TT0 1
STT1 2
[TT2 3
$strTT3 _
]TT_ `
,TT` a
newTTb e
[TTe f
]TTf g
{UU 
nameofVV 
(VV 
settingsVV #
.VV# $
ResponseTypeVV$ 0
)VV0 1
}WW 
)WW 
)WW 
;WW 
}XX 
elseYY 
ifYY 
(YY 
settingsYY 
.YY 
ResponseTypeYY *
!=YY+ -%
OpenIdConnectResponseTypeYY. G
.YYG H
CodeYYH L
&&YYM O
settingsYYP X
.YYX Y
ResponseTypeYYY e
!=YYf h&
OpenIdConnectResponseType	YYi Ç
.
YYÇ É
CodeIdToken
YYÉ é
&&
YYè ë
settingsZZ 
.ZZ 
ResponseTypeZZ %
!=ZZ& (%
OpenIdConnectResponseTypeZZ) B
.ZZB C
CodeIdTokenTokenZZC S
&&ZZT V
settingsZZW _
.ZZ_ `
ResponseTypeZZ` l
!=ZZm o&
OpenIdConnectResponseType	ZZp â
.
ZZâ ä
	CodeToken
ZZä ì
&&
ZZî ñ
settings[[ 
.[[ 
ResponseType[[ %
!=[[& (%
OpenIdConnectResponseType[[) B
.[[B C
IdToken[[C J
&&[[K M
settings[[N V
.[[V W
ResponseType[[W c
!=[[d f&
OpenIdConnectResponseType	[[g Ä
.
[[Ä Å
IdTokenToken
[[Å ç
)
[[ç é
{\\ 
results]] 
.]] 
Add]] 
(]] 
new]] 
ValidationResult]]  0
(]]0 1
S]]1 2
[]]2 3
$str]]3 L
]]]L M
,]]M N
new]]O R
[]]R S
]]]S T
{^^ 
nameof__ 
(__ 
settings__ #
.__# $
ResponseType__$ 0
)__0 1
}`` 
)`` 
)`` 
;`` 
}aa 
ifcc 
(cc 
Stringcc 
.cc 
IsNullOrEmptycc $
(cc$ %
settingscc% -
.cc- .
ResponseModecc. :
)cc: ;
)cc; <
{dd 
resultsee 
.ee 
Addee 
(ee 
newee 
ValidationResultee  0
(ee0 1
See1 2
[ee2 3
$stree3 _
]ee_ `
,ee` a
neweeb e
[eee f
]eef g
{ff 
nameofgg 
(gg 
settingsgg #
.gg# $
ResponseModegg$ 0
)gg0 1
}hh 
)hh 
)hh 
;hh 
}ii 
elsejj 
ifjj 
(jj 
settingsjj 
.jj 
ResponseModejj *
!=jj+ -%
OpenIdConnectResponseModejj. G
.jjG H
FormPostjjH P
&&jjQ S
settingsjjT \
.jj\ ]
ResponseModejj] i
!=jjj l&
OpenIdConnectResponseMode	jjm Ü
.
jjÜ á
Fragment
jjá è
&&
jjê í
settingskk 
.kk 
ResponseModekk %
!=kk& (%
OpenIdConnectResponseModekk) B
.kkB C
QuerykkC H
)kkH I
{ll 
resultsmm 
.mm 
Addmm 
(mm 
newmm 
ValidationResultmm  0
(mm0 1
Smm1 2
[mm2 3
$strmm3 K
]mmK L
,mmL M
newmmN Q
[mmQ R
]mmR S
{nn 
nameofoo 
(oo 
settingsoo #
.oo# $
ResponseModeoo$ 0
)oo0 1
}pp 
)pp 
)pp 
;pp 
}qq 
returnss 
Taskss 
.ss 

FromResultss "
(ss" #
resultsss# *
.ss* +
ToImmutabless+ 6
(ss6 7
)ss7 8
)ss8 9
;ss9 :
}tt 	
}uu 
}vv ‘ﬁ
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Services\OpenIdServerService.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
{ 
public 

class 
OpenIdServerService $
:% & 
IOpenIdServerService' ;
{ 
private 
readonly 
IDataProtector '
_dataProtector( 6
;6 7
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IMemoryCache %
_memoryCache& 2
;2 3
private 
readonly 
IOptionsMonitor (
<( )
ShellOptions) 5
>5 6
_shellOptions7 D
;D E
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private   
readonly   
IStringLocalizer   )
S  * +
;  + ,
public"" 
OpenIdServerService"" "
(""" ##
IDataProtectionProvider## #"
dataProtectionProvider##$ :
,##: ;
ILogger$$ 
<$$ 
OpenIdServerService$$ '
>$$' (
logger$$) /
,$$/ 0
IMemoryCache%% 
memoryCache%% $
,%%$ %
IOptionsMonitor&& 
<&& 
ShellOptions&& (
>&&( )
shellOptions&&* 6
,&&6 7
ShellSettings'' 
shellSettings'' '
,''' (
ISiteService(( 
siteService(( $
,(($ %
IStringLocalizer)) 
<)) 
OpenIdServerService)) 0
>))0 1
stringLocalizer))2 A
)))A B
{** 	
_dataProtector++ 
=++ "
dataProtectionProvider++ 3
.++3 4
CreateProtector++4 C
(++C D
nameof++D J
(++J K
OpenIdServerService++K ^
)++^ _
)++_ `
;++` a
_logger,, 
=,, 
logger,, 
;,, 
_memoryCache-- 
=-- 
memoryCache-- &
;--& '
_shellOptions.. 
=.. 
shellOptions.. (
;..( )
_shellSettings// 
=// 
shellSettings// *
;//* +
_siteService00 
=00 
siteService00 &
;00& '
S11 
=11 
stringLocalizer11 
;11  
}22 	
public44 
async44 
Task44 
<44  
OpenIdServerSettings44 .
>44. /
GetSettingsAsync440 @
(44@ A
)44A B
{55 	
var66 
	container66 
=66 
await66 !
_siteService66" .
.66. / 
GetSiteSettingsAsync66/ C
(66C D
)66D E
;66E F
return77 $
GetSettingsFromContainer77 +
(77+ ,
	container77, 5
)775 6
;776 7
}88 	
public:: 
async:: 
Task:: 
<::  
OpenIdServerSettings:: .
>::. /
LoadSettingsAsync::0 A
(::A B
)::B C
{;; 	
var<< 
	container<< 
=<< 
await<< !
_siteService<<" .
.<<. /!
LoadSiteSettingsAsync<</ D
(<<D E
)<<E F
;<<F G
return== $
GetSettingsFromContainer== +
(==+ ,
	container==, 5
)==5 6
;==6 7
}>> 	
private@@  
OpenIdServerSettings@@ $$
GetSettingsFromContainer@@% =
(@@= >
ISite@@> C
	container@@D M
)@@M N
{AA 	
ifBB 
(BB 
	containerBB 
.BB 

PropertiesBB $
.BB$ %
TryGetValueBB% 0
(BB0 1
nameofBB1 7
(BB7 8 
OpenIdServerSettingsBB8 L
)BBL M
,BBM N
outBBO R
varBBS V
settingsBBW _
)BB_ `
)BB` a
{CC 
returnDD 
settingsDD 
.DD  
ToObjectDD  (
<DD( ) 
OpenIdServerSettingsDD) =
>DD= >
(DD> ?
)DD? @
;DD@ A
}EE 
returnJJ 
newJJ  
OpenIdServerSettingsJJ +
{KK &
AllowAuthorizationCodeFlowLL *
=LL+ ,
trueLL- 1
,LL1 2!
AllowRefreshTokenFlowMM %
=MM& '
trueMM( ,
,MM, -%
AuthorizationEndpointPathNN )
=NN* +
$strNN, @
,NN@ A
LogoutEndpointPathOO "
=OO# $
$strOO% 6
,OO6 7
TokenEndpointPathPP !
=PP" #
$strPP$ 4
,PP4 5 
UserinfoEndpointPathQQ $
=QQ% &
$strQQ' :
}RR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
UpdateSettingsAsyncUU -
(UU- . 
OpenIdServerSettingsUU. B
settingsUUC K
)UUK L
{VV 	
ifWW 
(WW 
settingsWW 
==WW 
nullWW  
)WW  !
{XX 
throwYY 
newYY !
ArgumentNullExceptionYY /
(YY/ 0
nameofYY0 6
(YY6 7
settingsYY7 ?
)YY? @
)YY@ A
;YYA B
}ZZ 
var\\ 
	container\\ 
=\\ 
await\\ !
_siteService\\" .
.\\. /!
LoadSiteSettingsAsync\\/ D
(\\D E
)\\E F
;\\F G
	container]] 
.]] 

Properties]]  
[]]  !
nameof]]! '
(]]' ( 
OpenIdServerSettings]]( <
)]]< =
]]]= >
=]]? @
JObject]]A H
.]]H I

FromObject]]I S
(]]S T
settings]]T \
)]]\ ]
;]]] ^
await^^ 
_siteService^^ 
.^^ #
UpdateSiteSettingsAsync^^ 6
(^^6 7
	container^^7 @
)^^@ A
;^^A B
}__ 	
publicaa 
Taskaa 
<aa 
ImmutableArrayaa "
<aa" #
ValidationResultaa# 3
>aa3 4
>aa4 5!
ValidateSettingsAsyncaa6 K
(aaK L 
OpenIdServerSettingsaaL `
settingsaaa i
)aai j
{bb 	
ifcc 
(cc 
settingscc 
==cc 
nullcc  
)cc  !
{dd 
throwee 
newee !
ArgumentNullExceptionee /
(ee/ 0
nameofee0 6
(ee6 7
settingsee7 ?
)ee? @
)ee@ A
;eeA B
}ff 
varhh 
resultshh 
=hh 
ImmutableArrayhh (
.hh( )
CreateBuilderhh) 6
<hh6 7
ValidationResulthh7 G
>hhG H
(hhH I
)hhI J
;hhJ K
ifjj 
(jj 
!jj 
settingsjj 
.jj &
AllowAuthorizationCodeFlowjj 4
&&jj5 7
!jj8 9
settingsjj9 A
.jjA B&
AllowClientCredentialsFlowjjB \
&&jj] _
!kk 
settingskk 
.kk 
AllowHybridFlowkk )
&&kk* ,
!kk- .
settingskk. 6
.kk6 7
AllowImplicitFlowkk7 H
&&kkI K
!ll 
settingsll 
.ll 
AllowPasswordFlowll +
&&ll, .
!ll/ 0
settingsll0 8
.ll8 9!
AllowRefreshTokenFlowll9 N
)llN O
{mm 
resultsnn 
.nn 
Addnn 
(nn 
newnn 
ValidationResultnn  0
(nn0 1
Snn1 2
[nn2 3
$strnn3 f
]nnf g
)nng h
)nnh i
;nni j
}oo 
ifqq 
(qq 
settingsqq 
.qq 
	Authorityqq "
!=qq# %
nullqq& *
)qq* +
{rr 
ifss 
(ss 
!ss 
settingsss 
.ss 
	Authorityss '
.ss' (
IsAbsoluteUriss( 5
||ss6 8
!ss9 :
settingsss: B
.ssB C
	AuthorityssC L
.ssL M&
IsWellFormedOriginalStringssM g
(ssg h
)ssh i
)ssi j
{tt 
resultsuu 
.uu 
Adduu 
(uu  
newuu  #
ValidationResultuu$ 4
(uu4 5
Suu5 6
[uu6 7
$struu7 d
]uud e
,uue f
newuug j
[uuj k
]uuk l
{vv 
nameofww 
(ww 
settingsww '
.ww' (
	Authorityww( 1
)ww1 2
}xx 
)xx 
)xx 
;xx 
}yy 
if{{ 
({{ 
!{{ 
String{{ 
.{{ 
IsNullOrEmpty{{ )
({{) *
settings{{* 2
.{{2 3
	Authority{{3 <
.{{< =
Query{{= B
){{B C
||{{D F
!{{G H
String{{H N
.{{N O
IsNullOrEmpty{{O \
({{\ ]
settings{{] e
.{{e f
	Authority{{f o
.{{o p
Fragment{{p x
){{x y
){{y z
{|| 
results}} 
.}} 
Add}} 
(}}  
new}}  #
ValidationResult}}$ 4
(}}4 5
S}}5 6
[}}6 7
$str}}7 s
]}}s t
,}}t u
new}}v y
[}}y z
]}}z {
{~~ 
nameof 
( 
settings '
.' (
	Authority( 1
)1 2
}
ÄÄ 
)
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 
}
ÇÇ 
if
ÑÑ 
(
ÑÑ 
settings
ÑÑ 
.
ÑÑ -
SigningCertificateStoreLocation
ÑÑ 8
!=
ÑÑ9 ;
null
ÑÑ< @
&&
ÑÑA C
settings
ÖÖ 
.
ÖÖ )
SigningCertificateStoreName
ÖÖ 4
!=
ÖÖ5 7
null
ÖÖ8 <
&&
ÖÖ= ?
!
ÜÜ 
String
ÜÜ 
.
ÜÜ 
IsNullOrEmpty
ÜÜ %
(
ÜÜ% &
settings
ÜÜ& .
.
ÜÜ. /*
SigningCertificateThumbprint
ÜÜ/ K
)
ÜÜK L
)
ÜÜL M
{
áá 
var
àà 
certificate
àà 
=
àà  !
GetCertificate
àà" 0
(
àà0 1
settings
ââ 
.
ââ -
SigningCertificateStoreLocation
ââ <
.
ââ< =
Value
ââ= B
,
ââB C
settings
ää 
.
ää )
SigningCertificateStoreName
ää 8
.
ää8 9
Value
ää9 >
,
ää> ?
settings
ää@ H
.
ääH I*
SigningCertificateThumbprint
ääI e
)
ääe f
;
ääf g
if
åå 
(
åå 
certificate
åå 
==
åå  "
null
åå# '
)
åå' (
{
çç 
results
éé 
.
éé 
Add
éé 
(
éé  
new
éé  #
ValidationResult
éé$ 4
(
éé4 5
S
éé5 6
[
éé6 7
$str
éé7 Y
]
ééY Z
,
ééZ [
new
éé\ _
[
éé_ `
]
éé` a
{
èè 
nameof
êê 
(
êê 
settings
êê '
.
êê' (*
SigningCertificateThumbprint
êê( D
)
êêD E
}
ëë 
)
ëë 
)
ëë 
;
ëë 
}
íí 
else
ìì 
if
ìì 
(
ìì 
!
ìì 
certificate
ìì %
.
ìì% &
HasPrivateKey
ìì& 3
)
ìì3 4
{
îî 
results
ïï 
.
ïï 
Add
ïï 
(
ïï  
new
ïï  #
ValidationResult
ïï$ 4
(
ïï4 5
S
ïï5 6
[
ïï6 7
$str
ïï7 r
]
ïïr s
,
ïïs t
new
ïïu x
[
ïïx y
]
ïïy z
{
ññ 
nameof
óó 
(
óó 
settings
óó '
.
óó' (*
SigningCertificateThumbprint
óó( D
)
óóD E
}
òò 
)
òò 
)
òò 
;
òò 
}
ôô 
else
öö 
if
öö 
(
öö 
certificate
öö $
.
öö$ %
Archived
öö% -
)
öö- .
{
õõ 
results
úú 
.
úú 
Add
úú 
(
úú  
new
úú  #
ValidationResult
úú$ 4
(
úú4 5
S
úú5 6
[
úú6 7
$str
úú7 w
]
úúw x
,
úúx y
new
úúz }
[
úú} ~
]
úú~ 
{
ùù 
nameof
ûû 
(
ûû 
settings
ûû '
.
ûû' (*
SigningCertificateThumbprint
ûû( D
)
ûûD E
}
üü 
)
üü 
)
üü 
;
üü 
}
†† 
else
°° 
if
°° 
(
°° 
certificate
°° $
.
°°$ %
	NotBefore
°°% .
>
°°/ 0
DateTime
°°1 9
.
°°9 :
Now
°°: =
||
°°> @
certificate
°°A L
.
°°L M
NotAfter
°°M U
<
°°V W
DateTime
°°X `
.
°°` a
Now
°°a d
)
°°d e
{
¢¢ 
results
££ 
.
££ 
Add
££ 
(
££  
new
££  #
ValidationResult
££$ 4
(
££4 5
S
££5 6
[
££6 7
$str
££7 g
]
££g h
,
££h i
new
££j m
[
££m n
]
££n o
{
§§ 
nameof
•• 
(
•• 
settings
•• '
.
••' (*
SigningCertificateThumbprint
••( D
)
••D E
}
¶¶ 
)
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 
}
®® 
if
™™ 
(
™™ 
settings
™™ 
.
™™ 
AllowPasswordFlow
™™ *
&&
™™+ -
!
™™. /
settings
™™/ 7
.
™™7 8
TokenEndpointPath
™™8 I
.
™™I J
HasValue
™™J R
)
™™R S
{
´´ 
results
¨¨ 
.
¨¨ 
Add
¨¨ 
(
¨¨ 
new
¨¨ 
ValidationResult
¨¨  0
(
¨¨0 1
S
¨¨1 2
[
¨¨2 3
$str
¨¨3 }
]
¨¨} ~
,
¨¨~ 
new¨¨Ä É
[¨¨É Ñ
]¨¨Ñ Ö
{
≠≠ 
nameof
ÆÆ 
(
ÆÆ 
settings
ÆÆ #
.
ÆÆ# $
AllowPasswordFlow
ÆÆ$ 5
)
ÆÆ5 6
}
ØØ 
)
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 
if
≤≤ 
(
≤≤ 
settings
≤≤ 
.
≤≤ (
AllowClientCredentialsFlow
≤≤ 3
&&
≤≤4 6
!
≤≤7 8
settings
≤≤8 @
.
≤≤@ A
TokenEndpointPath
≤≤A R
.
≤≤R S
HasValue
≤≤S [
)
≤≤[ \
{
≥≥ 
results
¥¥ 
.
¥¥ 
Add
¥¥ 
(
¥¥ 
new
¥¥ 
ValidationResult
¥¥  0
(
¥¥0 1
S
¥¥1 2
[
¥¥2 3
$str¥¥3 á
]¥¥á à
,¥¥à â
new¥¥ä ç
[¥¥ç é
]¥¥é è
{
µµ 
nameof
∂∂ 
(
∂∂ 
settings
∂∂ #
.
∂∂# $(
AllowClientCredentialsFlow
∂∂$ >
)
∂∂> ?
}
∑∑ 
)
∑∑ 
)
∑∑ 
;
∑∑ 
}
∏∏ 
if
∫∫ 
(
∫∫ 
settings
∫∫ 
.
∫∫ (
AllowAuthorizationCodeFlow
∫∫ 3
&&
∫∫4 6
(
∫∫7 8
!
∫∫8 9
settings
∫∫9 A
.
∫∫A B'
AuthorizationEndpointPath
∫∫B [
.
∫∫[ \
HasValue
∫∫\ d
||
∫∫e g
!
∫∫h i
settings
∫∫i q
.
∫∫q r 
TokenEndpointPath∫∫r É
.∫∫É Ñ
HasValue∫∫Ñ å
)∫∫å ç
)∫∫ç é
{
ªª 
results
ºº 
.
ºº 
Add
ºº 
(
ºº 
new
ºº 
ValidationResult
ºº  0
(
ºº0 1
S
ºº1 2
[
ºº2 3
$strºº3 õ
]ººõ ú
,ººú ù
newººû °
[ºº° ¢
]ºº¢ £
{
ΩΩ 
nameof
ææ 
(
ææ 
settings
ææ #
.
ææ# $(
AllowAuthorizationCodeFlow
ææ$ >
)
ææ> ?
}
øø 
)
øø 
)
øø 
;
øø 
}
¿¿ 
if
¬¬ 
(
¬¬ 
settings
¬¬ 
.
¬¬ #
AllowRefreshTokenFlow
¬¬ .
)
¬¬. /
{
√√ 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
settings
ƒƒ 
.
ƒƒ 
TokenEndpointPath
ƒƒ /
.
ƒƒ/ 0
HasValue
ƒƒ0 8
)
ƒƒ8 9
{
≈≈ 
results
∆∆ 
.
∆∆ 
Add
∆∆ 
(
∆∆  
new
∆∆  #
ValidationResult
∆∆$ 4
(
∆∆4 5
S
∆∆5 6
[
∆∆6 7
$str∆∆7 Ü
]∆∆Ü á
,∆∆á à
new∆∆â å
[∆∆å ç
]∆∆ç é
{
«« 
nameof
»» 
(
»» 
settings
»» '
.
»»' (#
AllowRefreshTokenFlow
»»( =
)
»»= >
}
…… 
)
…… 
)
…… 
;
…… 
}
   
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
settings
ÃÃ 
.
ÃÃ 
AllowPasswordFlow
ÃÃ /
&&
ÃÃ0 2
!
ÃÃ3 4
settings
ÃÃ4 <
.
ÃÃ< =(
AllowAuthorizationCodeFlow
ÃÃ= W
&&
ÃÃX Z
!
ÃÃ[ \
settings
ÃÃ\ d
.
ÃÃd e
AllowHybridFlow
ÃÃe t
)
ÃÃt u
{
ÕÕ 
results
ŒŒ 
.
ŒŒ 
Add
ŒŒ 
(
ŒŒ  
new
ŒŒ  #
ValidationResult
ŒŒ$ 4
(
ŒŒ4 5
S
ŒŒ5 6
[
ŒŒ6 7
$strŒŒ7 §
]ŒŒ§ •
,ŒŒ• ¶
newŒŒß ™
[ŒŒ™ ´
]ŒŒ´ ¨
{
œœ 
nameof
–– 
(
–– 
settings
–– '
.
––' (#
AllowRefreshTokenFlow
––( =
)
––= >
}
—— 
)
—— 
)
—— 
;
—— 
}
““ 
}
”” 
if
’’ 
(
’’ 
settings
’’ 
.
’’ 
AllowImplicitFlow
’’ *
&&
’’+ -
!
’’. /
settings
’’/ 7
.
’’7 8'
AuthorizationEndpointPath
’’8 Q
.
’’Q R
HasValue
’’R Z
)
’’Z [
{
÷÷ 
results
◊◊ 
.
◊◊ 
Add
◊◊ 
(
◊◊ 
new
◊◊ 
ValidationResult
◊◊  0
(
◊◊0 1
S
◊◊1 2
[
◊◊2 3
$str◊◊3 Ö
]◊◊Ö Ü
,◊◊Ü á
new◊◊à ã
[◊◊ã å
]◊◊å ç
{
ÿÿ 
nameof
ŸŸ 
(
ŸŸ 
settings
ŸŸ #
.
ŸŸ# $
AllowImplicitFlow
ŸŸ$ 5
)
ŸŸ5 6
}
⁄⁄ 
)
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 
if
›› 
(
›› 
settings
›› 
.
›› 
AllowHybridFlow
›› (
&&
››) +
(
››, -
!
››- .
settings
››. 6
.
››6 7'
AuthorizationEndpointPath
››7 P
.
››P Q
HasValue
››Q Y
||
››Z \
!
››] ^
settings
››^ f
.
››f g
TokenEndpointPath
››g x
.
››x y
HasValue››y Å
)››Å Ç
)››Ç É
{
ﬁﬁ 
results
ﬂﬂ 
.
ﬂﬂ 
Add
ﬂﬂ 
(
ﬂﬂ 
new
ﬂﬂ 
ValidationResult
ﬂﬂ  0
(
ﬂﬂ0 1
S
ﬂﬂ1 2
[
ﬂﬂ2 3
$strﬂﬂ3 è
]ﬂﬂè ê
,ﬂﬂê ë
newﬂﬂí ï
[ﬂﬂï ñ
]ﬂﬂñ ó
{
‡‡ 
nameof
·· 
(
·· 
settings
·· #
.
··# $
AllowHybridFlow
··$ 3
)
··3 4
}
‚‚ 
)
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 
if
ÂÂ 
(
ÂÂ 
settings
ÂÂ 
.
ÂÂ *
DisableAccessTokenEncryption
ÂÂ 5
&&
ÂÂ6 8
settings
ÂÂ9 A
.
ÂÂA B
AccessTokenFormat
ÂÂB S
!=
ÂÂT V"
OpenIdServerSettings
ÂÂW k
.
ÂÂk l
TokenFormat
ÂÂl w
.
ÂÂw x
JsonWebTokenÂÂx Ñ
)ÂÂÑ Ö
{
ÊÊ 
results
ÁÁ 
.
ÁÁ 
Add
ÁÁ 
(
ÁÁ 
new
ÁÁ 
ValidationResult
ÁÁ  0
(
ÁÁ0 1
S
ÁÁ1 2
[
ÁÁ2 3
$str
ÁÁ3 x
]
ÁÁx y
,
ÁÁy z
new
ÁÁ{ ~
[
ÁÁ~ 
]ÁÁ Ä
{
ËË 
nameof
ÈÈ 
(
ÈÈ 
settings
ÈÈ #
.
ÈÈ# $*
DisableAccessTokenEncryption
ÈÈ$ @
)
ÈÈ@ A
}
ÍÍ 
)
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 
return
ÌÌ 
Task
ÌÌ 
.
ÌÌ 

FromResult
ÌÌ "
(
ÌÌ" #
results
ÌÌ# *
.
ÌÌ* +
ToImmutable
ÌÌ+ 6
(
ÌÌ6 7
)
ÌÌ7 8
)
ÌÌ8 9
;
ÌÌ9 :
}
ÓÓ 	
public
 
Task
 
<
 
ImmutableArray
 "
<
" #
(
# $
X509Certificate2
$ 4
certificate
5 @
,
@ A
StoreLocation
B O
location
P X
,
X Y
	StoreName
Z c
name
d h
)
h i
>
i j
>
j k,
GetAvailableCertificatesAsyncl â
(â ä
)ä ã
{
ÒÒ 	
var
ÚÚ 
certificates
ÚÚ 
=
ÚÚ 
ImmutableArray
ÚÚ -
.
ÚÚ- .
CreateBuilder
ÚÚ. ;
<
ÚÚ; <
(
ÚÚ< =
X509Certificate2
ÚÚ= M
,
ÚÚM N
StoreLocation
ÚÚO \
,
ÚÚ\ ]
	StoreName
ÚÚ^ g
)
ÚÚg h
>
ÚÚh i
(
ÚÚi j
)
ÚÚj k
;
ÚÚk l
foreach
ÙÙ 
(
ÙÙ 
StoreLocation
ÙÙ "
location
ÙÙ# +
in
ÙÙ, .
Enum
ÙÙ/ 3
.
ÙÙ3 4
	GetValues
ÙÙ4 =
(
ÙÙ= >
typeof
ÙÙ> D
(
ÙÙD E
StoreLocation
ÙÙE R
)
ÙÙR S
)
ÙÙS T
)
ÙÙT U
{
ıı 
foreach
ˆˆ 
(
ˆˆ 
	StoreName
ˆˆ "
name
ˆˆ# '
in
ˆˆ( *
Enum
ˆˆ+ /
.
ˆˆ/ 0
	GetValues
ˆˆ0 9
(
ˆˆ9 :
typeof
ˆˆ: @
(
ˆˆ@ A
	StoreName
ˆˆA J
)
ˆˆJ K
)
ˆˆK L
)
ˆˆL M
{
˜˜ 
try
˙˙ 
{
˚˚ 
using
¸¸ 
var
¸¸ !
store
¸¸" '
=
¸¸( )
new
¸¸* -
	X509Store
¸¸. 7
(
¸¸7 8
name
¸¸8 <
,
¸¸< =
location
¸¸> F
)
¸¸F G
;
¸¸G H
store
˝˝ 
.
˝˝ 
Open
˝˝ "
(
˝˝" #
	OpenFlags
˝˝# ,
.
˝˝, -
ReadOnly
˝˝- 5
)
˝˝5 6
;
˝˝6 7
foreach
ˇˇ 
(
ˇˇ  !
var
ˇˇ! $
certificate
ˇˇ% 0
in
ˇˇ1 3
store
ˇˇ4 9
.
ˇˇ9 :
Certificates
ˇˇ: F
)
ˇˇF G
{
ÄÄ 
if
ÅÅ 
(
ÅÅ  
!
ÅÅ  !
certificate
ÅÅ! ,
.
ÅÅ, -
Archived
ÅÅ- 5
&&
ÅÅ6 8
certificate
ÅÅ9 D
.
ÅÅD E
HasPrivateKey
ÅÅE R
)
ÅÅR S
{
ÇÇ 
certificates
ÉÉ  ,
.
ÉÉ, -
Add
ÉÉ- 0
(
ÉÉ0 1
(
ÉÉ1 2
certificate
ÉÉ2 =
,
ÉÉ= >
location
ÉÉ? G
,
ÉÉG H
name
ÉÉI M
)
ÉÉM N
)
ÉÉN O
;
ÉÉO P
}
ÑÑ 
}
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá $
CryptographicException
áá 1
)
áá1 2
{
àà 
continue
ââ  
;
ââ  !
}
ää 
}
ãã 
}
åå 
return
éé 
Task
éé 
.
éé 

FromResult
éé "
(
éé" #
certificates
éé# /
.
éé/ 0
ToImmutable
éé0 ;
(
éé; <
)
éé< =
)
éé= >
;
éé> ?
}
èè 	
public
ëë 
async
ëë 
Task
ëë 
<
ëë 
ImmutableArray
ëë (
<
ëë( )
SecurityKey
ëë) 4
>
ëë4 5
>
ëë5 6$
GetEncryptionKeysAsync
ëë7 M
(
ëëM N
)
ëëN O
{
íí 	
var
ìì 
settings
ìì 
=
ìì 
await
ìì  
GetSettingsAsync
ìì! 1
(
ìì1 2
)
ìì2 3
;
ìì3 4
if
óó 
(
óó 
settings
óó 
.
óó 0
"EncryptionCertificateStoreLocation
óó ;
!=
óó< >
null
óó? C
&&
óóD F
settings
òò 
.
òò ,
EncryptionCertificateStoreName
òò 7
!=
òò8 :
null
òò; ?
&&
òò@ B
!
ôô 
String
ôô 
.
ôô 
IsNullOrEmpty
ôô %
(
ôô% &
settings
ôô& .
.
ôô. /-
EncryptionCertificateThumbprint
ôô/ N
)
ôôN O
)
ôôO P
{
öö 
var
õõ 
certificate
õõ 
=
õõ  !
GetCertificate
õõ" 0
(
õõ0 1
settings
úú 
.
úú 0
"EncryptionCertificateStoreLocation
úú ?
.
úú? @
Value
úú@ E
,
úúE F
settings
ùù 
.
ùù ,
EncryptionCertificateStoreName
ùù ;
.
ùù; <
Value
ùù< A
,
ùùA B
settings
ùùC K
.
ùùK L-
EncryptionCertificateThumbprint
ùùL k
)
ùùk l
;
ùùl m
if
üü 
(
üü 
certificate
üü 
!=
üü  "
null
üü# '
)
üü' (
{
†† 
return
°° 
ImmutableArray
°° )
.
°°) *
Create
°°* 0
<
°°0 1
SecurityKey
°°1 <
>
°°< =
(
°°= >
new
°°> A
X509SecurityKey
°°B Q
(
°°Q R
certificate
°°R ]
)
°°] ^
)
°°^ _
;
°°_ `
}
¢¢ 
_logger
§§ 
.
§§ 

LogWarning
§§ "
(
§§" #
$str
§§# i
+
§§j k
$str
••# G
,
••G H
settings
••I Q
.
••Q R-
EncryptionCertificateThumbprint
••R q
,
••q r
settings
¶¶# +
.
¶¶+ ,0
"EncryptionCertificateStoreLocation
¶¶, N
.
¶¶N O
Value
¶¶O T
.
¶¶T U
ToString
¶¶U ]
(
¶¶] ^
)
¶¶^ _
,
¶¶_ `
settings
ßß# +
.
ßß+ ,,
EncryptionCertificateStoreName
ßß, J
.
ßßJ K
Value
ßßK P
.
ßßP Q
ToString
ßßQ Y
(
ßßY Z
)
ßßZ [
)
ßß[ \
;
ßß\ ]
}
®® 
try
™™ 
{
´´ 
var
¨¨ 
	directory
¨¨ 
=
¨¨ /
!GetEncryptionCertificateDirectory
¨¨  A
(
¨¨A B
_shellOptions
¨¨B O
.
¨¨O P
CurrentValue
¨¨P \
,
¨¨\ ]
_shellSettings
¨¨^ l
)
¨¨l m
;
¨¨m n
var
ÆÆ 
certificates
ÆÆ  
=
ÆÆ! "
(
ÆÆ# $
await
ÆÆ$ )"
GetCertificatesAsync
ÆÆ* >
(
ÆÆ> ?
	directory
ÆÆ? H
)
ÆÆH I
)
ÆÆI J
.
ÆÆJ K
Select
ÆÆK Q
(
ÆÆQ R
tuple
ÆÆR W
=>
ÆÆX Z
tuple
ÆÆ[ `
.
ÆÆ` a
certificate
ÆÆa l
)
ÆÆl m
.
ÆÆm n
ToList
ÆÆn t
(
ÆÆt u
)
ÆÆu v
;
ÆÆv w
if
ØØ 
(
ØØ 
certificates
ØØ  
.
ØØ  !
Any
ØØ! $
(
ØØ$ %
certificate
ØØ% 0
=>
ØØ1 3
certificate
ØØ4 ?
.
ØØ? @
NotAfter
ØØ@ H
.
ØØH I
AddDays
ØØI P
(
ØØP Q
-
ØØQ R
$num
ØØR S
)
ØØS T
>
ØØU V
DateTime
ØØW _
.
ØØ_ `
Now
ØØ` c
)
ØØc d
)
ØØd e
{
∞∞ 
return
±± 
ImmutableArray
±± )
.
±±) *
CreateRange
±±* 5
<
±±5 6
SecurityKey
±±6 A
>
±±A B
(
±±B C
from
≤≤ 
certificate
≤≤ (
in
≤≤) +
certificates
≤≤, 8
select
≥≥ 
new
≥≥ "
X509SecurityKey
≥≥# 2
(
≥≥2 3
certificate
≥≥3 >
)
≥≥> ?
)
≥≥? @
;
≥≥@ A
}
¥¥ 
try
∂∂ 
{
∑∑ 
var
ªª 
certificate
ªª #
=
ªª$ %+
GenerateEncryptionCertificate
ªª& C
(
ªªC D
_shellSettings
ªªD R
)
ªªR S
;
ªªS T
await
ºº %
PersistCertificateAsync
ºº 1
(
ºº1 2
	directory
ºº2 ;
,
ºº; <
certificate
ºº= H
)
ººH I
;
ººI J
certificates
ææ  
.
ææ  !
Insert
ææ! '
(
ææ' (
$num
ææ( )
,
ææ) *
certificate
ææ+ 6
)
ææ6 7
;
ææ7 8
return
¿¿ 
certificates
¿¿ '
.
¿¿' (
Select
¿¿( .
(
¿¿. /
certificate
¿¿/ :
=>
¿¿; =
new
¿¿> A
X509SecurityKey
¿¿B Q
(
¿¿Q R
certificate
¿¿R ]
)
¿¿] ^
)
¿¿^ _
.
¿¿_ `
ToImmutableArray
¿¿` p
<
¿¿p q
SecurityKey
¿¿q |
>
¿¿| }
(
¿¿} ~
)
¿¿~ 
;¿¿ Ä
}
¡¡ 
catch
¬¬ 
(
¬¬ 
	Exception
¬¬  
	exception
¬¬! *
)
¬¬* +
{
√√ 
_logger
ƒƒ 
.
ƒƒ 
LogError
ƒƒ $
(
ƒƒ$ %
	exception
ƒƒ% .
,
ƒƒ. /
$str
ƒƒ0 |
)
ƒƒ| }
;
ƒƒ} ~
}
≈≈ 
}
∆∆ 
catch
«« 
(
«« 
	Exception
«« 
	exception
«« &
)
««& '
{
»» 
_logger
…… 
.
…… 

LogWarning
…… "
(
……" #
	exception
……# ,
,
……, -
$str
……. }
)
……} ~
;
……~ 
}
   
return
ŒŒ 
ImmutableArray
ŒŒ !
.
ŒŒ! "
Create
ŒŒ" (
<
ŒŒ( )
SecurityKey
ŒŒ) 4
>
ŒŒ4 5
(
ŒŒ5 6
_memoryCache
ŒŒ6 B
.
ŒŒB C
GetOrCreate
ŒŒC N
(
ŒŒN O
$str
ŒŒO u
,
ŒŒu v
entry
ŒŒw |
=>
ŒŒ} 
{
œœ 
entry
–– 
.
–– 
SetPriority
–– !
(
––! "
CacheItemPriority
––" 3
.
––3 4
NeverRemove
––4 ?
)
––? @
;
––@ A
return
““ 
new
““ 
RsaSecurityKey
““ )
(
““) *$
GenerateRsaSecurityKey
““* @
(
““@ A
size
““A E
:
““E F
$num
““G K
)
““K L
)
““L M
;
““M N
}
”” 
)
”” 
)
”” 
;
”” 
}
‘‘ 	
public
÷÷ 
async
÷÷ 
Task
÷÷ 
<
÷÷ 
ImmutableArray
÷÷ (
<
÷÷( )
SecurityKey
÷÷) 4
>
÷÷4 5
>
÷÷5 6!
GetSigningKeysAsync
÷÷7 J
(
÷÷J K
)
÷÷K L
{
◊◊ 	
var
ÿÿ 
settings
ÿÿ 
=
ÿÿ 
await
ÿÿ  
GetSettingsAsync
ÿÿ! 1
(
ÿÿ1 2
)
ÿÿ2 3
;
ÿÿ3 4
if
‹‹ 
(
‹‹ 
settings
‹‹ 
.
‹‹ -
SigningCertificateStoreLocation
‹‹ 8
!=
‹‹9 ;
null
‹‹< @
&&
‹‹A C
settings
›› 
.
›› )
SigningCertificateStoreName
›› 4
!=
››5 7
null
››8 <
&&
››= ?
!
ﬁﬁ 
String
ﬁﬁ 
.
ﬁﬁ 
IsNullOrEmpty
ﬁﬁ %
(
ﬁﬁ% &
settings
ﬁﬁ& .
.
ﬁﬁ. /*
SigningCertificateThumbprint
ﬁﬁ/ K
)
ﬁﬁK L
)
ﬁﬁL M
{
ﬂﬂ 
var
‡‡ 
certificate
‡‡ 
=
‡‡  !
GetCertificate
‡‡" 0
(
‡‡0 1
settings
·· 
.
·· -
SigningCertificateStoreLocation
·· <
.
··< =
Value
··= B
,
··B C
settings
‚‚ 
.
‚‚ )
SigningCertificateStoreName
‚‚ 8
.
‚‚8 9
Value
‚‚9 >
,
‚‚> ?
settings
‚‚@ H
.
‚‚H I*
SigningCertificateThumbprint
‚‚I e
)
‚‚e f
;
‚‚f g
if
‰‰ 
(
‰‰ 
certificate
‰‰ 
!=
‰‰  "
null
‰‰# '
)
‰‰' (
{
ÂÂ 
return
ÊÊ 
ImmutableArray
ÊÊ )
.
ÊÊ) *
Create
ÊÊ* 0
<
ÊÊ0 1
SecurityKey
ÊÊ1 <
>
ÊÊ< =
(
ÊÊ= >
new
ÊÊ> A
X509SecurityKey
ÊÊB Q
(
ÊÊQ R
certificate
ÊÊR ]
)
ÊÊ] ^
)
ÊÊ^ _
;
ÊÊ_ `
}
ÁÁ 
_logger
ÈÈ 
.
ÈÈ 

LogWarning
ÈÈ "
(
ÈÈ" #
$str
ÈÈ# f
+
ÈÈg h
$str
ÍÍ# G
,
ÍÍG H
settings
ÍÍI Q
.
ÍÍQ R*
SigningCertificateThumbprint
ÍÍR n
,
ÍÍn o
settings
ÎÎ# +
.
ÎÎ+ ,-
SigningCertificateStoreLocation
ÎÎ, K
.
ÎÎK L
Value
ÎÎL Q
.
ÎÎQ R
ToString
ÎÎR Z
(
ÎÎZ [
)
ÎÎ[ \
,
ÎÎ\ ]
settings
ÏÏ# +
.
ÏÏ+ ,)
SigningCertificateStoreName
ÏÏ, G
.
ÏÏG H
Value
ÏÏH M
.
ÏÏM N
ToString
ÏÏN V
(
ÏÏV W
)
ÏÏW X
)
ÏÏX Y
;
ÏÏY Z
}
ÌÌ 
try
ÔÔ 
{
 
var
ÒÒ 
	directory
ÒÒ 
=
ÒÒ ,
GetSigningCertificateDirectory
ÒÒ  >
(
ÒÒ> ?
_shellOptions
ÒÒ? L
.
ÒÒL M
CurrentValue
ÒÒM Y
,
ÒÒY Z
_shellSettings
ÒÒ[ i
)
ÒÒi j
;
ÒÒj k
var
ÛÛ 
certificates
ÛÛ  
=
ÛÛ! "
(
ÛÛ# $
await
ÛÛ$ )"
GetCertificatesAsync
ÛÛ* >
(
ÛÛ> ?
	directory
ÛÛ? H
)
ÛÛH I
)
ÛÛI J
.
ÛÛJ K
Select
ÛÛK Q
(
ÛÛQ R
tuple
ÛÛR W
=>
ÛÛX Z
tuple
ÛÛ[ `
.
ÛÛ` a
certificate
ÛÛa l
)
ÛÛl m
.
ÛÛm n
ToList
ÛÛn t
(
ÛÛt u
)
ÛÛu v
;
ÛÛv w
if
ÙÙ 
(
ÙÙ 
certificates
ÙÙ  
.
ÙÙ  !
Any
ÙÙ! $
(
ÙÙ$ %
certificate
ÙÙ% 0
=>
ÙÙ1 3
certificate
ÙÙ4 ?
.
ÙÙ? @
NotAfter
ÙÙ@ H
.
ÙÙH I
AddDays
ÙÙI P
(
ÙÙP Q
-
ÙÙQ R
$num
ÙÙR S
)
ÙÙS T
>
ÙÙU V
DateTime
ÙÙW _
.
ÙÙ_ `
Now
ÙÙ` c
)
ÙÙc d
)
ÙÙd e
{
ıı 
return
ˆˆ 
ImmutableArray
ˆˆ )
.
ˆˆ) *
CreateRange
ˆˆ* 5
<
ˆˆ5 6
SecurityKey
ˆˆ6 A
>
ˆˆA B
(
ˆˆB C
from
˜˜ 
certificate
˜˜ (
in
˜˜) +
certificates
˜˜, 8
select
¯¯ 
new
¯¯ "
X509SecurityKey
¯¯# 2
(
¯¯2 3
certificate
¯¯3 >
)
¯¯> ?
)
¯¯? @
;
¯¯@ A
}
˘˘ 
try
˚˚ 
{
¸¸ 
var
ÄÄ 
certificate
ÄÄ #
=
ÄÄ$ %(
GenerateSigningCertificate
ÄÄ& @
(
ÄÄ@ A
_shellSettings
ÄÄA O
)
ÄÄO P
;
ÄÄP Q
await
ÅÅ %
PersistCertificateAsync
ÅÅ 1
(
ÅÅ1 2
	directory
ÅÅ2 ;
,
ÅÅ; <
certificate
ÅÅ= H
)
ÅÅH I
;
ÅÅI J
certificates
ÉÉ  
.
ÉÉ  !
Insert
ÉÉ! '
(
ÉÉ' (
$num
ÉÉ( )
,
ÉÉ) *
certificate
ÉÉ+ 6
)
ÉÉ6 7
;
ÉÉ7 8
return
ÖÖ 
certificates
ÖÖ '
.
ÖÖ' (
Select
ÖÖ( .
(
ÖÖ. /
certificate
ÖÖ/ :
=>
ÖÖ; =
new
ÖÖ> A
X509SecurityKey
ÖÖB Q
(
ÖÖQ R
certificate
ÖÖR ]
)
ÖÖ] ^
)
ÖÖ^ _
.
ÖÖ_ `
ToImmutableArray
ÖÖ` p
<
ÖÖp q
SecurityKey
ÖÖq |
>
ÖÖ| }
(
ÖÖ} ~
)
ÖÖ~ 
;ÖÖ Ä
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá  
	exception
áá! *
)
áá* +
{
àà 
_logger
ââ 
.
ââ 
LogError
ââ $
(
ââ$ %
	exception
ââ% .
,
ââ. /
$str
ââ0 y
)
âây z
;
ââz {
}
ää 
}
ãã 
catch
åå 
(
åå 
	Exception
åå 
	exception
åå &
)
åå& '
{
çç 
_logger
éé 
.
éé 

LogWarning
éé "
(
éé" #
	exception
éé# ,
,
éé, -
$str
éé. z
)
ééz {
;
éé{ |
}
èè 
return
ìì 
ImmutableArray
ìì !
.
ìì! "
Create
ìì" (
<
ìì( )
SecurityKey
ìì) 4
>
ìì4 5
(
ìì5 6
_memoryCache
ìì6 B
.
ììB C
GetOrCreate
ììC N
(
ììN O
$str
ììO u
,
ììu v
entry
ììw |
=>
ìì} 
{
îî 
entry
ïï 
.
ïï 
SetPriority
ïï !
(
ïï! "
CacheItemPriority
ïï" 3
.
ïï3 4
NeverRemove
ïï4 ?
)
ïï? @
;
ïï@ A
return
óó 
new
óó 
RsaSecurityKey
óó )
(
óó) *$
GenerateRsaSecurityKey
óó* @
(
óó@ A
size
óóA E
:
óóE F
$num
óóG K
)
óóK L
)
óóL M
;
óóM N
}
òò 
)
òò 
)
òò 
;
òò 
}
ôô 	
public
õõ 
async
õõ 
Task
õõ +
PruneManagedCertificatesAsync
õõ 7
(
õõ7 8
)
õõ8 9
{
úú 	
List
ùù 
<
ùù 
	Exception
ùù 
>
ùù 

exceptions
ùù &
=
ùù' (
null
ùù) -
;
ùù- .
var
üü 
certificates
üü 
=
üü 
new
üü "
List
üü# '
<
üü' (
(
üü( )
string
üü) /
path
üü0 4
,
üü4 5
X509Certificate2
üü6 F
certificate
üüG R
)
üüR S
>
üüS T
(
üüT U
)
üüU V
;
üüV W
certificates
†† 
.
†† 
AddRange
†† !
(
††! "
await
††" '"
GetCertificatesAsync
††( <
(
††< =/
!GetEncryptionCertificateDirectory
††= ^
(
††^ _
_shellOptions
††_ l
.
††l m
CurrentValue
††m y
,
††y z
_shellSettings††{ â
)††â ä
)††ä ã
)††ã å
;††å ç
certificates
°° 
.
°° 
AddRange
°° !
(
°°! "
await
°°" '"
GetCertificatesAsync
°°( <
(
°°< =,
GetSigningCertificateDirectory
°°= [
(
°°[ \
_shellOptions
°°\ i
.
°°i j
CurrentValue
°°j v
,
°°v w
_shellSettings°°x Ü
)°°Ü á
)°°á à
)°°à â
;°°â ä
foreach
££ 
(
££ 
var
££ 
(
££ 
path
££ 
,
££ 
certificate
££  +
)
££+ ,
in
££- /
certificates
££0 <
)
££< =
{
§§ 
if
¶¶ 
(
¶¶ 
certificate
¶¶ 
.
¶¶  
NotAfter
¶¶  (
.
¶¶( )
AddDays
¶¶) 0
(
¶¶0 1
$num
¶¶1 2
)
¶¶2 3
<
¶¶4 5
DateTime
¶¶6 >
.
¶¶> ?
Now
¶¶? B
)
¶¶B C
{
ßß 
try
®® 
{
©© 
File
´´ 
.
´´ 
Delete
´´ #
(
´´# $
path
´´$ (
)
´´( )
;
´´) *
File
¨¨ 
.
¨¨ 
Delete
¨¨ #
(
¨¨# $
Path
¨¨$ (
.
¨¨( )
ChangeExtension
¨¨) 8
(
¨¨8 9
path
¨¨9 =
,
¨¨= >
$str
¨¨? E
)
¨¨E F
)
¨¨F G
;
¨¨G H
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
	Exception
ÆÆ $
	exception
ÆÆ% .
)
ÆÆ. /
{
ØØ 
if
∞∞ 
(
∞∞ 

exceptions
∞∞ &
==
∞∞' )
null
∞∞* .
)
∞∞. /
{
±± 

exceptions
≤≤ &
=
≤≤' (
new
≤≤) ,
List
≤≤- 1
<
≤≤1 2
	Exception
≤≤2 ;
>
≤≤; <
(
≤≤< =
)
≤≤= >
;
≤≤> ?
}
≥≥ 

exceptions
µµ "
.
µµ" #
Add
µµ# &
(
µµ& '
	exception
µµ' 0
)
µµ0 1
;
µµ1 2
}
∂∂ 
}
∑∑ 
}
∏∏ 
if
∫∫ 
(
∫∫ 

exceptions
∫∫ 
!=
∫∫ 
null
∫∫ "
)
∫∫" #
{
ªª 
throw
ºº 
new
ºº  
AggregateException
ºº ,
(
ºº, -

exceptions
ºº- 7
)
ºº7 8
;
ºº8 9
}
ΩΩ 
}
ææ 	
private
¿¿ 
static
¿¿ 
X509Certificate2
¿¿ '
GetCertificate
¿¿( 6
(
¿¿6 7
StoreLocation
¿¿7 D
location
¿¿E M
,
¿¿M N
	StoreName
¿¿O X
name
¿¿Y ]
,
¿¿] ^
string
¿¿_ e

thumbprint
¿¿f p
)
¿¿p q
{
¡¡ 	
using
¬¬ 
var
¬¬ 
store
¬¬ 
=
¬¬ 
new
¬¬ !
	X509Store
¬¬" +
(
¬¬+ ,
name
¬¬, 0
,
¬¬0 1
location
¬¬2 :
)
¬¬: ;
;
¬¬; <
store
√√ 
.
√√ 
Open
√√ 
(
√√ 
	OpenFlags
√√  
.
√√  !
ReadOnly
√√! )
)
√√) *
;
√√* +
var
≈≈ 
certificates
≈≈ 
=
≈≈ 
store
≈≈ $
.
≈≈$ %
Certificates
≈≈% 1
.
≈≈1 2
Find
≈≈2 6
(
≈≈6 7
X509FindType
≈≈7 C
.
≈≈C D
FindByThumbprint
≈≈D T
,
≈≈T U

thumbprint
≈≈V `
,
≈≈` a
	validOnly
≈≈b k
:
≈≈k l
false
≈≈m r
)
≈≈r s
;
≈≈s t
return
«« 
certificates
«« 
.
««  
Count
««  %
switch
««& ,
{
»» 
$num
…… 
=>
…… 
null
…… 
,
…… 
$num
   
=>
   
certificates
   !
[
  ! "
$num
  " #
]
  # $
,
  $ %
_
ÀÀ 
=>
ÀÀ 
throw
ÀÀ 
new
ÀÀ '
InvalidOperationException
ÀÀ 8
(
ÀÀ8 9
$str
ÀÀ9 u
)
ÀÀu v
,
ÀÀv w
}
ÃÃ 
;
ÃÃ 
}
ÕÕ 	
private
œœ 
static
œœ 
DirectoryInfo
œœ $/
!GetEncryptionCertificateDirectory
œœ% F
(
œœF G
ShellOptions
œœG S
options
œœT [
,
œœ[ \
ShellSettings
œœ] j
settings
œœk s
)
œœs t
=>
–– 
	Directory
–– 
.
–– 
CreateDirectory
–– (
(
––( )
Path
––) -
.
––- .
Combine
––. 5
(
––5 6
options
—— 
.
—— '
ShellsApplicationDataPath
—— 1
,
——1 2
options
““ 
.
““ !
ShellsContainerName
““ +
,
““+ ,
settings
”” 
.
”” 
Name
”” 
,
”” 
$str
”” F
)
””F G
)
””G H
;
””H I
private
’’ 
static
’’ 
DirectoryInfo
’’ $,
GetSigningCertificateDirectory
’’% C
(
’’C D
ShellOptions
’’D P
options
’’Q X
,
’’X Y
ShellSettings
’’Z g
settings
’’h p
)
’’p q
=>
÷÷ 
	Directory
÷÷ 
.
÷÷ 
CreateDirectory
÷÷ (
(
÷÷( )
Path
÷÷) -
.
÷÷- .
Combine
÷÷. 5
(
÷÷5 6
options
◊◊ 
.
◊◊ '
ShellsApplicationDataPath
◊◊ 1
,
◊◊1 2
options
ÿÿ 
.
ÿÿ !
ShellsContainerName
ÿÿ +
,
ÿÿ+ ,
settings
ŸŸ 
.
ŸŸ 
Name
ŸŸ 
,
ŸŸ 
$str
ŸŸ C
)
ŸŸC D
)
ŸŸD E
;
ŸŸE F
private
€€ 
async
€€ 
Task
€€ 
<
€€ 
ImmutableArray
€€ )
<
€€) *
(
€€* +
string
€€+ 1
path
€€2 6
,
€€6 7
X509Certificate2
€€8 H
certificate
€€I T
)
€€T U
>
€€U V
>
€€V W"
GetCertificatesAsync
€€X l
(
€€l m
DirectoryInfo
€€m z
	directory€€{ Ñ
)€€Ñ Ö
{
‹‹ 	
if
›› 
(
›› 
!
›› 
	directory
›› 
.
›› 
Exists
›› !
)
››! "
{
ﬁﬁ 
return
ﬂﬂ 
ImmutableArray
ﬂﬂ %
.
ﬂﬂ% &
Create
ﬂﬂ& ,
<
ﬂﬂ, -
(
ﬂﬂ- .
string
ﬂﬂ. 4
,
ﬂﬂ4 5
X509Certificate2
ﬂﬂ6 F
)
ﬂﬂF G
>
ﬂﬂG H
(
ﬂﬂH I
)
ﬂﬂI J
;
ﬂﬂJ K
}
‡‡ 
var
‚‚ 
certificates
‚‚ 
=
‚‚ 
ImmutableArray
‚‚ -
.
‚‚- .
CreateBuilder
‚‚. ;
<
‚‚; <
(
‚‚< =
string
‚‚= C
,
‚‚C D
X509Certificate2
‚‚E U
)
‚‚U V
>
‚‚V W
(
‚‚W X
)
‚‚X Y
;
‚‚Y Z
foreach
‰‰ 
(
‰‰ 
var
‰‰ 
file
‰‰ 
in
‰‰  
	directory
‰‰! *
.
‰‰* +
EnumerateFiles
‰‰+ 9
(
‰‰9 :
$str
‰‰: A
,
‰‰A B
SearchOption
‰‰C O
.
‰‰O P
TopDirectoryOnly
‰‰P `
)
‰‰` a
)
‰‰a b
{
ÂÂ 
try
ÊÊ 
{
ÁÁ 
var
ÈÈ 
certificate
ÈÈ #
=
ÈÈ$ %
await
ÈÈ& +!
GetCertificateAsync
ÈÈ, ?
(
ÈÈ? @
file
ÈÈ@ D
.
ÈÈD E
FullName
ÈÈE M
)
ÈÈM N
;
ÈÈN O
if
ÍÍ 
(
ÍÍ 
certificate
ÍÍ #
.
ÍÍ# $
	NotBefore
ÍÍ$ -
<=
ÍÍ. 0
DateTime
ÍÍ1 9
.
ÍÍ9 :
Now
ÍÍ: =
&&
ÍÍ> @
certificate
ÍÍA L
.
ÍÍL M
NotAfter
ÍÍM U
>
ÍÍV W
DateTime
ÍÍX `
.
ÍÍ` a
Now
ÍÍa d
)
ÍÍd e
{
ÎÎ 
certificates
ÏÏ $
.
ÏÏ$ %
Add
ÏÏ% (
(
ÏÏ( )
(
ÏÏ) *
file
ÏÏ* .
.
ÏÏ. /
FullName
ÏÏ/ 7
,
ÏÏ7 8
certificate
ÏÏ9 D
)
ÏÏD E
)
ÏÏE F
;
ÏÏF G
}
ÌÌ 
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
	Exception
ÔÔ  
	exception
ÔÔ! *
)
ÔÔ* +
{
 
_logger
ÒÒ 
.
ÒÒ 

LogWarning
ÒÒ &
(
ÒÒ& '
	exception
ÒÒ' 0
,
ÒÒ0 1
$str
ÒÒ2 r
)
ÒÒr s
;
ÒÒs t
continue
ÛÛ 
;
ÛÛ 
}
ÙÙ 
}
ıı 
return
˜˜ 
certificates
˜˜ 
.
˜˜  
ToImmutable
˜˜  +
(
˜˜+ ,
)
˜˜, -
;
˜˜- .
async
˘˘ 
Task
˘˘ 
<
˘˘ 
string
˘˘ 
>
˘˘ 
GetPasswordAsync
˘˘ /
(
˘˘/ 0
string
˘˘0 6
path
˘˘7 ;
)
˘˘; <
{
˙˙ 
using
˚˚ 
var
˚˚ 
stream
˚˚  
=
˚˚! "
File
˚˚# '
.
˚˚' (
Open
˚˚( ,
(
˚˚, -
path
˚˚- 1
,
˚˚1 2
FileMode
˚˚3 ;
.
˚˚; <
Open
˚˚< @
,
˚˚@ A

FileAccess
˚˚B L
.
˚˚L M
Read
˚˚M Q
,
˚˚Q R
	FileShare
˚˚S \
.
˚˚\ ]
Read
˚˚] a
)
˚˚a b
;
˚˚b c
using
¸¸ 
var
¸¸ 
reader
¸¸  
=
¸¸! "
new
¸¸# &
StreamReader
¸¸' 3
(
¸¸3 4
stream
¸¸4 :
)
¸¸: ;
;
¸¸; <
return
˛˛ 
_dataProtector
˛˛ %
.
˛˛% &
	Unprotect
˛˛& /
(
˛˛/ 0
await
˛˛0 5
reader
˛˛6 <
.
˛˛< =
ReadToEndAsync
˛˛= K
(
˛˛K L
)
˛˛L M
)
˛˛M N
;
˛˛N O
}
ˇˇ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
X509Certificate2
ÅÅ '
>
ÅÅ' (!
GetCertificateAsync
ÅÅ) <
(
ÅÅ< =
string
ÅÅ= C
path
ÅÅD H
)
ÅÅH I
{
ÇÇ 
var
ÑÑ 
password
ÑÑ 
=
ÑÑ 
await
ÑÑ $
GetPasswordAsync
ÑÑ% 5
(
ÑÑ5 6
Path
ÑÑ6 :
.
ÑÑ: ;
ChangeExtension
ÑÑ; J
(
ÑÑJ K
path
ÑÑK O
,
ÑÑO P
$str
ÑÑQ W
)
ÑÑW X
)
ÑÑX Y
;
ÑÑY Z
try
ÜÜ 
{
áá 
var
ââ 
flags
ââ 
=
ââ  
RuntimeInformation
ââ  2
.
ââ2 3
IsOSPlatform
ââ3 ?
(
ââ? @

OSPlatform
ââ@ J
.
ââJ K
Windows
ââK R
)
ââR S
?
ââT U!
X509KeyStorageFlags
ää +
.
ää+ ,
EphemeralKeySet
ää, ;
:
ää< =!
X509KeyStorageFlags
ãã +
.
ãã+ ,
MachineKeySet
ãã, 9
;
ãã9 :
return
çç 
new
çç 
X509Certificate2
çç /
(
çç/ 0
path
çç0 4
,
çç4 5
password
çç6 >
,
çç> ?
flags
çç@ E
)
ççE F
;
ççF G
}
éé 
catch
ìì 
(
ìì $
CryptographicException
ìì -
	exception
ìì. 7
)
ìì7 8
{
îî 
_logger
ïï 
.
ïï 
LogDebug
ïï $
(
ïï$ %
	exception
ïï% .
,
ïï. /
$str
ïï0 l
+
ïïm n
$str
ññ0 k
)
ññk l
;
ññl m
return
òò 
new
òò 
X509Certificate2
òò /
(
òò/ 0
path
òò0 4
,
òò4 5
password
òò6 >
,
òò> ?!
X509KeyStorageFlags
ôô +
.
ôô+ ,
MachineKeySet
ôô, 9
|
ôô: ;!
X509KeyStorageFlags
öö +
.
öö+ ,
PersistKeySet
öö, 9
|
öö: ;!
X509KeyStorageFlags
õõ +
.
õõ+ ,

Exportable
õõ, 6
)
õõ6 7
;
õõ7 8
}
úú 
}
üü 
}
†† 	
private
¢¢ 
X509Certificate2
¢¢  +
GenerateEncryptionCertificate
¢¢! >
(
¢¢> ?
ShellSettings
¢¢? L
settings
¢¢M U
)
¢¢U V
{
££ 	
var
§§ 
	algorithm
§§ 
=
§§ $
GenerateRsaSecurityKey
§§ 2
(
§§2 3
size
§§3 7
:
§§7 8
$num
§§9 =
)
§§= >
;
§§> ?
var
•• 
certificate
•• 
=
•• !
GenerateCertificate
•• 1
(
••1 2
X509KeyUsageFlags
••2 C
.
••C D
KeyEncipherment
••D S
,
••S T
	algorithm
••U ^
,
••^ _
settings
••` h
)
••h i
;
••i j
if
©© 
(
©©  
RuntimeInformation
©© "
.
©©" #
IsOSPlatform
©©# /
(
©©/ 0

OSPlatform
©©0 :
.
©©: ;
Windows
©©; B
)
©©B C
)
©©C D
{
™™ 
certificate
´´ 
.
´´ 
FriendlyName
´´ (
=
´´) *
$str
´´+ ]
;
´´] ^
}
¨¨ 
return
ÆÆ 
certificate
ÆÆ 
;
ÆÆ 
}
ØØ 	
private
±± 
static
±± 
X509Certificate2
±± '(
GenerateSigningCertificate
±±( B
(
±±B C
ShellSettings
±±C P
settings
±±Q Y
)
±±Y Z
{
≤≤ 	
var
≥≥ 
	algorithm
≥≥ 
=
≥≥ $
GenerateRsaSecurityKey
≥≥ 2
(
≥≥2 3
size
≥≥3 7
:
≥≥7 8
$num
≥≥9 =
)
≥≥= >
;
≥≥> ?
var
¥¥ 
certificate
¥¥ 
=
¥¥ !
GenerateCertificate
¥¥ 1
(
¥¥1 2
X509KeyUsageFlags
¥¥2 C
.
¥¥C D
DigitalSignature
¥¥D T
,
¥¥T U
	algorithm
¥¥V _
,
¥¥_ `
settings
¥¥a i
)
¥¥i j
;
¥¥j k
if
∏∏ 
(
∏∏  
RuntimeInformation
∏∏ "
.
∏∏" #
IsOSPlatform
∏∏# /
(
∏∏/ 0

OSPlatform
∏∏0 :
.
∏∏: ;
Windows
∏∏; B
)
∏∏B C
)
∏∏C D
{
ππ 
certificate
∫∫ 
.
∫∫ 
FriendlyName
∫∫ (
=
∫∫) *
$str
∫∫+ Z
;
∫∫Z [
}
ªª 
return
ΩΩ 
certificate
ΩΩ 
;
ΩΩ 
}
ææ 	
private
¿¿ 
static
¿¿ 
X509Certificate2
¿¿ '!
GenerateCertificate
¿¿( ;
(
¿¿; <
X509KeyUsageFlags
¿¿< M
type
¿¿N R
,
¿¿R S
RSA
¿¿T W
	algorithm
¿¿X a
,
¿¿a b
ShellSettings
¿¿c p
settings
¿¿q y
)
¿¿y z
{
¡¡ 	
var
¬¬ 
subject
¬¬ 
=
¬¬ 
GetSubjectName
¬¬ (
(
¬¬( )
)
¬¬) *
;
¬¬* +
var
∆∆ 
request
∆∆ 
=
∆∆ 
new
∆∆  
CertificateRequest
∆∆ 0
(
∆∆0 1
subject
∆∆1 8
,
∆∆8 9
	algorithm
∆∆: C
,
∆∆C D
HashAlgorithmName
∆∆E V
.
∆∆V W
SHA256
∆∆W ]
,
∆∆] ^!
RSASignaturePadding
∆∆_ r
.
∆∆r s
Pkcs1
∆∆s x
)
∆∆x y
;
∆∆y z
request
«« 
.
«« #
CertificateExtensions
«« )
.
««) *
Add
««* -
(
««- .
new
««. 1#
X509KeyUsageExtension
««2 G
(
««G H
type
««H L
,
««L M
critical
««N V
:
««V W
true
««X \
)
««\ ]
)
««] ^
;
««^ _
return
…… 
request
…… 
.
…… 
CreateSelfSigned
…… +
(
……+ ,
DateTimeOffset
……, :
.
……: ;
UtcNow
……; A
,
……A B
DateTimeOffset
……C Q
.
……Q R
UtcNow
……R X
.
……X Y
	AddMonths
……Y b
(
……b c
$num
……c d
)
……d e
)
……e f
;
……f g#
X500DistinguishedName
ÀÀ !
GetSubjectName
ÀÀ" 0
(
ÀÀ0 1
)
ÀÀ1 2
{
ÃÃ 
try
ÕÕ 
{
ÕÕ 
return
ÕÕ 
new
ÕÕ  #
X500DistinguishedName
ÕÕ! 6
(
ÕÕ6 7
$str
ÕÕ7 <
+
ÕÕ= >
(
ÕÕ? @
settings
ÕÕ@ H
.
ÕÕH I
RequestUrlHost
ÕÕI W
??
ÕÕX Z
$str
ÕÕ[ f
)
ÕÕf g
)
ÕÕg h
;
ÕÕh i
}
ÕÕj k
catch
ŒŒ 
{
ŒŒ 
return
ŒŒ 
new
ŒŒ "#
X500DistinguishedName
ŒŒ# 8
(
ŒŒ8 9
$str
ŒŒ9 G
)
ŒŒG H
;
ŒŒH I
}
ŒŒJ K
}
œœ 
}
–– 	
private
““ 
static
““ 
RSA
““ $
GenerateRsaSecurityKey
““ 1
(
““1 2
int
““2 5
size
““6 :
)
““: ;
{
”” 	
if
⁄⁄ 
(
⁄⁄  
RuntimeInformation
⁄⁄ "
.
⁄⁄" #
IsOSPlatform
⁄⁄# /
(
⁄⁄/ 0

OSPlatform
⁄⁄0 :
.
⁄⁄: ;
Windows
⁄⁄; B
)
⁄⁄B C
)
⁄⁄C D
{
€€ 
var
›› 
key
›› 
=
›› 
CngKey
››  
.
››  !
Create
››! '
(
››' (
CngAlgorithm
››( 4
.
››4 5
Rsa
››5 8
,
››8 9
keyName
››: A
:
››A B
null
››C G
,
››G H
new
››I L&
CngKeyCreationParameters
››M e
{
ﬁﬁ 
ExportPolicy
ﬂﬂ  
=
ﬂﬂ! "
CngExportPolicies
ﬂﬂ# 4
.
ﬂﬂ4 5"
AllowPlaintextExport
ﬂﬂ5 I
,
ﬂﬂI J 
KeyCreationOptions
‡‡ &
=
‡‡' (#
CngKeyCreationOptions
‡‡) >
.
‡‡> ?

MachineKey
‡‡? I
,
‡‡I J

Parameters
·· 
=
··  
{
··! "
new
··# &
CngProperty
··' 2
(
··2 3
$str
··3 ;
,
··; <
BitConverter
··= I
.
··I J
GetBytes
··J R
(
··R S
size
··S W
)
··W X
,
··X Y 
CngPropertyOptions
··Z l
.
··l m
None
··m q
)
··q r
}
··s t
}
‚‚ 
)
‚‚ 
;
‚‚ 
return
‰‰ 
new
‰‰ 
RSACng
‰‰ !
(
‰‰! "
key
‰‰" %
)
‰‰% &
;
‰‰& '
}
ÂÂ 
return
ÁÁ 
RSA
ÁÁ 
.
ÁÁ 
Create
ÁÁ 
(
ÁÁ 
size
ÁÁ "
)
ÁÁ" #
;
ÁÁ# $
}
ËË 	
private
ÍÍ 
async
ÍÍ 
Task
ÍÍ %
PersistCertificateAsync
ÍÍ 2
(
ÍÍ2 3
DirectoryInfo
ÍÍ3 @
	directory
ÍÍA J
,
ÍÍJ K
X509Certificate2
ÍÍL \
certificate
ÍÍ] h
)
ÍÍh i
{
ÎÎ 	
var
ÏÏ 
password
ÏÏ 
=
ÏÏ 
GeneratePassword
ÏÏ +
(
ÏÏ+ ,
)
ÏÏ, -
;
ÏÏ- .
var
ÌÌ 
path
ÌÌ 
=
ÌÌ 
Path
ÌÌ 
.
ÌÌ 
Combine
ÌÌ #
(
ÌÌ# $
	directory
ÌÌ$ -
.
ÌÌ- .
FullName
ÌÌ. 6
,
ÌÌ6 7
Guid
ÌÌ8 <
.
ÌÌ< =
NewGuid
ÌÌ= D
(
ÌÌD E
)
ÌÌE F
.
ÌÌF G
ToString
ÌÌG O
(
ÌÌO P
)
ÌÌP Q
)
ÌÌQ R
;
ÌÌR S
await
ÔÔ 
File
ÔÔ 
.
ÔÔ  
WriteAllBytesAsync
ÔÔ )
(
ÔÔ) *
Path
ÔÔ* .
.
ÔÔ. /
ChangeExtension
ÔÔ/ >
(
ÔÔ> ?
path
ÔÔ? C
,
ÔÔC D
$str
ÔÔE K
)
ÔÔK L
,
ÔÔL M
certificate
ÔÔN Y
.
ÔÔY Z
Export
ÔÔZ `
(
ÔÔ` a
X509ContentType
ÔÔa p
.
ÔÔp q
Pfx
ÔÔq t
,
ÔÔt u
password
ÔÔv ~
)
ÔÔ~ 
)ÔÔ Ä
;ÔÔÄ Å
await
 
File
 
.
 
WriteAllTextAsync
 (
(
( )
Path
) -
.
- .
ChangeExtension
. =
(
= >
path
> B
,
B C
$str
D J
)
J K
,
K L
_dataProtector
M [
.
[ \
Protect
\ c
(
c d
password
d l
)
l m
)
m n
;
n o
static
ÚÚ 
string
ÚÚ 
GeneratePassword
ÚÚ *
(
ÚÚ* +
)
ÚÚ+ ,
{
ÛÛ 
Span
ÙÙ 
<
ÙÙ 
byte
ÙÙ 
>
ÙÙ 
data
ÙÙ 
=
ÙÙ  !

stackalloc
ÙÙ" ,
byte
ÙÙ- 1
[
ÙÙ1 2
$num
ÙÙ2 5
/
ÙÙ6 7
$num
ÙÙ8 9
]
ÙÙ9 :
;
ÙÙ: ;#
RandomNumberGenerator
ıı %
.
ıı% &
Fill
ıı& *
(
ıı* +
data
ıı+ /
)
ıı/ 0
;
ıı0 1
return
ˆˆ 
Convert
ˆˆ 
.
ˆˆ 
ToBase64String
ˆˆ -
(
ˆˆ- .
data
ˆˆ. 2
,
ˆˆ2 3%
Base64FormattingOptions
ˆˆ4 K
.
ˆˆK L
None
ˆˆL P
)
ˆˆP Q
;
ˆˆQ R
}
˜˜ 
}
¯¯ 	
}
˘˘ 
}˙˙ ∂ç
ñD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Services\OpenIdValidationService.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Services %
{ 
public 

class #
OpenIdValidationService (
:) *$
IOpenIdValidationService+ C
{ 
private 
readonly 
ShellDescriptor (
_shellDescriptor) 9
;9 :
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public #
OpenIdValidationService &
(& '
ShellDescriptor 
shellDescriptor +
,+ ,
ShellSettings 
shellSettings '
,' (

IShellHost 
	shellHost  
,  !
ISiteService 
siteService $
,$ %
IStringLocalizer   
<   #
OpenIdValidationService   4
>  4 5
stringLocalizer  6 E
)  E F
{!! 	
_shellDescriptor"" 
="" 
shellDescriptor"" .
;"". /
_shellSettings## 
=## 
shellSettings## *
;##* +

_shellHost$$ 
=$$ 
	shellHost$$ "
;$$" #
_siteService%% 
=%% 
siteService%% &
;%%& '
S&& 
=&& 
stringLocalizer&& 
;&&  
}'' 	
public)) 
async)) 
Task)) 
<)) $
OpenIdValidationSettings)) 2
>))2 3
GetSettingsAsync))4 D
())D E
)))E F
{** 	
var++ 
	container++ 
=++ 
await++ !
_siteService++" .
.++. / 
GetSiteSettingsAsync++/ C
(++C D
)++D E
;++E F
return,, $
GetSettingsFromContainer,, +
(,,+ ,
	container,,, 5
),,5 6
;,,6 7
}-- 	
public// 
async// 
Task// 
<// $
OpenIdValidationSettings// 2
>//2 3
LoadSettingsAsync//4 E
(//E F
)//F G
{00 	
var11 
	container11 
=11 
await11 !
_siteService11" .
.11. /!
LoadSiteSettingsAsync11/ D
(11D E
)11E F
;11F G
return22 $
GetSettingsFromContainer22 +
(22+ ,
	container22, 5
)225 6
;226 7
}33 	
private55 $
OpenIdValidationSettings55 ($
GetSettingsFromContainer55) A
(55A B
ISite55B G
	container55H Q
)55Q R
{66 	
if77 
(77 
	container77 
.77 

Properties77 $
.77$ %
TryGetValue77% 0
(770 1
nameof771 7
(777 8$
OpenIdValidationSettings778 P
)77P Q
,77Q R
out77S V
var77W Z
settings77[ c
)77c d
)77d e
{88 
return99 
settings99 
.99  
ToObject99  (
<99( )$
OpenIdValidationSettings99) A
>99A B
(99B C
)99C D
;99D E
}:: 
if>> 
(>> 
_shellDescriptor>>  
.>>  !
Features>>! )
.>>) *
Any>>* -
(>>- .
feature>>. 5
=>>>6 8
feature>>9 @
.>>@ A
Id>>A C
==>>D F
OpenIdConstants>>G V
.>>V W
Features>>W _
.>>_ `
Server>>` f
)>>f g
)>>g h
{?? 
return@@ 
new@@ $
OpenIdValidationSettings@@ 3
{AA 
TenantBB 
=BB 
_shellSettingsBB +
.BB+ ,
NameBB, 0
}CC 
;CC 
}DD 
returnFF 
newFF $
OpenIdValidationSettingsFF /
(FF/ 0
)FF0 1
;FF1 2
}GG 	
publicII 
asyncII 
TaskII 
UpdateSettingsAsyncII -
(II- .$
OpenIdValidationSettingsII. F
settingsIIG O
)IIO P
{JJ 	
ifKK 
(KK 
settingsKK 
==KK 
nullKK  
)KK  !
{LL 
throwMM 
newMM !
ArgumentNullExceptionMM /
(MM/ 0
nameofMM0 6
(MM6 7
settingsMM7 ?
)MM? @
)MM@ A
;MMA B
}NN 
varPP 
	containerPP 
=PP 
awaitPP !
_siteServicePP" .
.PP. /!
LoadSiteSettingsAsyncPP/ D
(PPD E
)PPE F
;PPF G
	containerQQ 
.QQ 

PropertiesQQ  
[QQ  !
nameofQQ! '
(QQ' ($
OpenIdValidationSettingsQQ( @
)QQ@ A
]QQA B
=QQC D
JObjectQQE L
.QQL M

FromObjectQQM W
(QQW X
settingsQQX `
)QQ` a
;QQa b
awaitRR 
_siteServiceRR 
.RR #
UpdateSiteSettingsAsyncRR 6
(RR6 7
	containerRR7 @
)RR@ A
;RRA B
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
ImmutableArrayUU (
<UU( )
ValidationResultUU) 9
>UU9 :
>UU: ;!
ValidateSettingsAsyncUU< Q
(UUQ R$
OpenIdValidationSettingsUUR j
settingsUUk s
)UUs t
{VV 	
ifWW 
(WW 
settingsWW 
==WW 
nullWW  
)WW  !
{XX 
throwYY 
newYY !
ArgumentNullExceptionYY /
(YY/ 0
nameofYY0 6
(YY6 7
settingsYY7 ?
)YY? @
)YY@ A
;YYA B
}ZZ 
var\\ 
results\\ 
=\\ 
ImmutableArray\\ (
.\\( )
CreateBuilder\\) 6
<\\6 7
ValidationResult\\7 G
>\\G H
(\\H I
)\\I J
;\\J K
if^^ 
(^^ 
!^^ 
(^^ 
settings^^ 
.^^ 
	Authority^^ $
==^^% '
null^^( ,
^^^- .
string^^/ 5
.^^5 6
IsNullOrEmpty^^6 C
(^^C D
settings^^D L
.^^L M
Tenant^^M S
)^^S T
)^^T U
)^^U V
{__ 
results`` 
.`` 
Add`` 
(`` 
new`` 
ValidationResult``  0
(``0 1
S``1 2
[``2 3
$str``3 h
]``h i
,``i j
new``k n
[``n o
]``o p
{aa 
nameofbb 
(bb 
settingsbb #
.bb# $
	Authoritybb$ -
)bb- .
,bb. /
nameofcc 
(cc 
settingscc #
.cc# $
Tenantcc$ *
)cc* +
}dd 
)dd 
)dd 
;dd 
}ee 
ifgg 
(gg 
settingsgg 
.gg 
	Authoritygg "
!=gg# %
nullgg& *
)gg* +
{hh 
ifii 
(ii 
!ii 
settingsii 
.ii 
	Authorityii '
.ii' (
IsAbsoluteUriii( 5
||ii6 8
!ii9 :
settingsii: B
.iiB C
	AuthorityiiC L
.iiL M&
IsWellFormedOriginalStringiiM g
(iig h
)iih i
)iii j
{jj 
resultskk 
.kk 
Addkk 
(kk  
newkk  #
ValidationResultkk$ 4
(kk4 5
Skk5 6
[kk6 7
$strkk7 ^
]kk^ _
,kk_ `
newkka d
[kkd e
]kke f
{ll 
nameofmm 
(mm 
settingsmm '
.mm' (
	Authoritymm( 1
)mm1 2
}nn 
)nn 
)nn 
;nn 
}oo 
ifqq 
(qq 
!qq 
Stringqq 
.qq 
IsNullOrEmptyqq )
(qq) *
settingsqq* 2
.qq2 3
	Authorityqq3 <
.qq< =
Queryqq= B
)qqB C
||qqD F
!qqG H
stringqqH N
.qqN O
IsNullOrEmptyqqO \
(qq\ ]
settingsqq] e
.qqe f
	Authorityqqf o
.qqo p
Fragmentqqp x
)qqx y
)qqy z
{rr 
resultsss 
.ss 
Addss 
(ss  
newss  #
ValidationResultss$ 4
(ss4 5
Sss5 6
[ss6 7
$strss7 s
]sss t
,sst u
newssv y
[ssy z
]ssz {
{tt 
nameofuu 
(uu 
settingsuu '
.uu' (
	Authorityuu( 1
)uu1 2
}vv 
)vv 
)vv 
;vv 
}ww 
}xx 
ifzz 
(zz 
!zz 
Stringzz 
.zz 
IsNullOrEmptyzz %
(zz% &
settingszz& .
.zz. /
Tenantzz/ 5
)zz5 6
&&zz7 9
!zz: ;
stringzz; A
.zzA B
IsNullOrEmptyzzB O
(zzO P
settingszzP X
.zzX Y
AudiencezzY a
)zza b
)zzb c
{{{ 
results|| 
.|| 
Add|| 
(|| 
new|| 
ValidationResult||  0
(||0 1
S||1 2
[||2 3
$str||3 f
]||f g
,||g h
new||i l
[||l m
]||m n
{}} 
nameof~~ 
(~~ 
settings~~ #
.~~# $
Audience~~$ ,
)~~, -
} 
) 
) 
; 
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
settings
ÇÇ 
.
ÇÇ 
	Authority
ÇÇ "
!=
ÇÇ# %
null
ÇÇ& *
&&
ÇÇ+ -
string
ÇÇ. 4
.
ÇÇ4 5
IsNullOrEmpty
ÇÇ5 B
(
ÇÇB C
settings
ÇÇC K
.
ÇÇK L
Audience
ÇÇL T
)
ÇÇT U
)
ÇÇU V
{
ÉÉ 
results
ÑÑ 
.
ÑÑ 
Add
ÑÑ 
(
ÑÑ 
new
ÑÑ 
ValidationResult
ÑÑ  0
(
ÑÑ0 1
S
ÑÑ1 2
[
ÑÑ2 3
$str
ÑÑ3 l
]
ÑÑl m
,
ÑÑm n
new
ÑÑo r
[
ÑÑr s
]
ÑÑs t
{
ÖÖ 
nameof
ÜÜ 
(
ÜÜ 
settings
ÜÜ #
.
ÜÜ# $
Audience
ÜÜ$ ,
)
ÜÜ, -
}
áá 
)
áá 
)
áá 
;
áá 
}
àà 
if
ää 
(
ää 
settings
ää 
.
ää 
	Authority
ää "
==
ää# %
null
ää& *
&&
ää+ -
settings
ää. 6
.
ää6 7(
DisableTokenTypeValidation
ää7 Q
)
ääQ R
{
ãã 
results
åå 
.
åå 
Add
åå 
(
åå 
new
åå 
ValidationResult
åå  0
(
åå0 1
S
åå1 2
[
åå2 3
$str
åå3 s
]
åås t
,
ååt u
new
ååv y
[
ååy z
]
ååz {
{
çç 
nameof
éé 
(
éé 
settings
éé #
.
éé# $(
DisableTokenTypeValidation
éé$ >
)
éé> ?
}
èè 
)
èè 
)
èè 
;
èè 
}
êê 
if
íí 
(
íí 
!
íí 
String
íí 
.
íí 
IsNullOrEmpty
íí %
(
íí% &
settings
íí& .
.
íí. /
Audience
íí/ 7
)
íí7 8
&&
íí9 ;
settings
ìì 
.
ìì 
Audience
ìì !
.
ìì! "

StartsWith
ìì" ,
(
ìì, -
OpenIdConstants
ìì- <
.
ìì< =
Prefixes
ìì= E
.
ììE F
Tenant
ììF L
,
ììL M
StringComparison
ììN ^
.
ìì^ _
OrdinalIgnoreCase
ìì_ p
)
ììp q
)
ììq r
{
îî 
results
ïï 
.
ïï 
Add
ïï 
(
ïï 
new
ïï 
ValidationResult
ïï  0
(
ïï0 1
S
ïï1 2
[
ïï2 3
$str
ïï3 n
]
ïïn o
,
ïïo p
new
ïïq t
[
ïït u
]
ïïu v
{
ññ 
nameof
óó 
(
óó 
settings
óó #
.
óó# $
Audience
óó$ ,
)
óó, -
}
òò 
)
òò 
)
òò 
;
òò 
}
ôô 
if
ùù 
(
ùù 
!
ùù 
String
ùù 
.
ùù 
IsNullOrEmpty
ùù %
(
ùù% &
settings
ùù& .
.
ùù. /
Tenant
ùù/ 5
)
ùù5 6
&&
ùù7 9
!
ûû 
String
ûû 
.
ûû 
Equals
ûû 
(
ûû 
settings
ûû '
.
ûû' (
Tenant
ûû( .
,
ûû. /
_shellSettings
ûû0 >
.
ûû> ?
Name
ûû? C
)
ûûC D
)
ûûD E
{
üü 
if
†† 
(
†† 
!
†† 

_shellHost
†† 
.
††  
TryGetSettings
††  .
(
††. /
settings
††/ 7
.
††7 8
Tenant
††8 >
,
††> ?
out
††@ C
var
††D G
shellSettings
††H U
)
††U V
)
††V W
{
°° 
results
¢¢ 
.
¢¢ 
Add
¢¢ 
(
¢¢  
new
¢¢  #
ValidationResult
¢¢$ 4
(
¢¢4 5
S
¢¢5 6
[
¢¢6 7
$str
¢¢7 [
]
¢¢[ \
)
¢¢\ ]
)
¢¢] ^
;
¢¢^ _
}
££ 
else
§§ 
{
•• 
var
¶¶ 

shellScope
¶¶ "
=
¶¶# $
await
¶¶% *

_shellHost
¶¶+ 5
.
¶¶5 6
GetScopeAsync
¶¶6 C
(
¶¶C D
shellSettings
¶¶D Q
)
¶¶Q R
;
¶¶R S
await
®® 

shellScope
®® $
.
®®$ %

UsingAsync
®®% /
(
®®/ 0
async
®®0 5
scope
®®6 ;
=>
®®< >
{
©© 
var
™™ 
options
™™ #
=
™™$ %
scope
™™& +
.
™™+ ,
ServiceProvider
™™, ;
.
™™; < 
GetRequiredService
™™< N
<
™™N O
IOptionsMonitor
™™O ^
<
™™^ _%
OpenIddictServerOptions
™™_ v
>
™™v w
>
™™w x
(
™™x y
)
™™y z
.
™™z {
CurrentValue™™{ á
;™™á à
if
´´ 
(
´´ 
options
´´ #
.
´´# $&
UseReferenceAccessTokens
´´$ <
)
´´< =
{
¨¨ 
results
≠≠ #
.
≠≠# $
Add
≠≠$ '
(
≠≠' (
new
≠≠( +
ValidationResult
≠≠, <
(
≠≠< =
S
≠≠= >
[
≠≠> ?
$str≠≠? §
]≠≠§ •
,≠≠• ¶
new≠≠ß ™
[≠≠™ ´
]≠≠´ ¨
{
ÆÆ 
nameof
ØØ  &
(
ØØ& '
settings
ØØ' /
.
ØØ/ 0
Tenant
ØØ0 6
)
ØØ6 7
}
∞∞ 
)
∞∞ 
)
∞∞ 
;
∞∞  
}
±± 
var
≥≥ 
manager
≥≥ #
=
≥≥$ %
scope
≥≥& +
.
≥≥+ ,
ServiceProvider
≥≥, ;
.
≥≥; <

GetService
≥≥< F
<
≥≥F G!
IOpenIdScopeManager
≥≥G Z
>
≥≥Z [
(
≥≥[ \
)
≥≥\ ]
;
≥≥] ^
if
¥¥ 
(
¥¥ 
manager
¥¥ #
==
¥¥$ &
null
¥¥' +
)
¥¥+ ,
{
µµ 
results
∂∂ #
.
∂∂# $
Add
∂∂$ '
(
∂∂' (
new
∂∂( +
ValidationResult
∂∂, <
(
∂∂< =
S
∂∂= >
[
∂∂> ?
$str
∂∂? c
]
∂∂c d
,
∂∂d e
new
∂∂f i
[
∂∂i j
]
∂∂j k
{
∑∑ 
nameof
∏∏  &
(
∏∏& '
settings
∏∏' /
.
∏∏/ 0
Tenant
∏∏0 6
)
∏∏6 7
}
ππ 
)
ππ 
)
ππ 
;
ππ  
}
∫∫ 
else
ªª 
{
ºº 
var
ΩΩ 
resource
ΩΩ  (
=
ΩΩ) *
OpenIdConstants
ΩΩ+ :
.
ΩΩ: ;
Prefixes
ΩΩ; C
.
ΩΩC D
Tenant
ΩΩD J
+
ΩΩK L
_shellSettings
ΩΩM [
.
ΩΩ[ \
Name
ΩΩ\ `
;
ΩΩ` a
if
ææ 
(
ææ  
!
ææ  !
await
ææ! &
manager
ææ' .
.
ææ. /!
FindByResourceAsync
ææ/ B
(
ææB C
resource
ææC K
)
ææK L
.
ææL M
AnyAsync
ææM U
(
ææU V
)
ææV W
)
ææW X
{
øø 
results
¿¿  '
.
¿¿' (
Add
¿¿( +
(
¿¿+ ,
new
¿¿, /
ValidationResult
¿¿0 @
(
¿¿@ A
S
¿¿A B
[
¿¿B C
$str
¿¿C d
]
¿¿d e
,
¿¿e f
new
¿¿g j
[
¿¿j k
]
¿¿k l
{
¡¡  !
nameof
¬¬$ *
(
¬¬* +
settings
¬¬+ 3
.
¬¬3 4
Tenant
¬¬4 :
)
¬¬: ;
}
√√  !
)
√√! "
)
√√" #
;
√√# $
}
ƒƒ 
}
≈≈ 
}
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 
}
»» 
return
   
results
   
.
   
ToImmutable
   &
(
  & '
)
  ' (
;
  ( )
}
ÀÀ 	
}
ÃÃ 
}ÕÕ ©
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Settings\OpenIdClientSettings.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Settings %
{ 
public 

class  
OpenIdClientSettings %
{ 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
Uri		 
	Authority		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
ClientId
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
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
CallbackPath "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string  
SignedOutRedirectUri *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string !
SignedOutCallbackPath +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
IEnumerable 
< 
string !
>! "
Scopes# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
ResponseType "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
ResponseMode "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
StoreExternalTokens '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Õ!
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Settings\OpenIdServerSettings.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Settings %
{ 
public 

class  
OpenIdServerSettings %
{ 
public		 
TokenFormat		 
AccessTokenFormat		 ,
{		- .
get		/ 2
;		2 3
set		4 7
;		7 8
}		9 :
public 
Uri 
	Authority 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool (
DisableAccessTokenEncryption 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
StoreLocation 
? .
"EncryptionCertificateStoreLocation @
{A B
getC F
;F G
setH K
;K L
}M N
public 
	StoreName 
? *
EncryptionCertificateStoreName 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
string +
EncryptionCertificateThumbprint 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
StoreLocation 
? +
SigningCertificateStoreLocation =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
	StoreName 
? '
SigningCertificateStoreName 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
string (
SigningCertificateThumbprint 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 

PathString %
AuthorizationEndpointPath 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 

PathString 
LogoutEndpointPath ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 

PathString 
TokenEndpointPath +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 

PathString  
UserinfoEndpointPath .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool 
AllowPasswordFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool &
AllowClientCredentialsFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool &
AllowAuthorizationCodeFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool !
AllowRefreshTokenFlow )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public   
bool   
AllowHybridFlow   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public!! 
bool!! 
AllowImplicitFlow!! %
{!!& '
get!!( +
;!!+ ,
set!!- 0
;!!0 1
}!!2 3
public## 
bool## '
DisableRollingRefreshTokens## /
{##0 1
get##2 5
;##5 6
set##7 :
;##: ;
}##< =
public%% 
bool%% $
UseReferenceAccessTokens%% ,
{%%- .
get%%/ 2
;%%2 3
set%%4 7
;%%7 8
}%%9 :
public'' 
enum'' 
TokenFormat'' 
{(( 	
DataProtection)) 
=)) 
$num)) 
,)) 
JsonWebToken** 
=** 
$num** 
}++ 	
},, 
}-- ë
óD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Settings\OpenIdValidationSettings.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Settings %
{ 
public 

class $
OpenIdValidationSettings )
{ 
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Uri 
	Authority 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
bool		 &
DisableTokenTypeValidation		 .
{		/ 0
get		1 4
;		4 5
set		6 9
;		9 :
}		; <
public

 
string

 
Tenant
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
) *
} 
} Óé
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Startup.cs
	namespace)) 	
OrchardCore))
 
.)) 
OpenId)) 
{** 
public++ 

class++ 
Startup++ 
:++ 
StartupBase++ &
{,, 
public-- 
override-- 
void-- 
ConfigureServices-- .
(--. /
IServiceCollection--/ A
services--B J
)--J K
{.. 	
services22 
.22 
AddOpenIddict22 "
(22" #
)22# $
.33 
AddCore33 
(33 
options33  
=>33! #
{44 
options55 
.55  
AddOrchardMigrations55 0
(550 1
)551 2
.66 
UseOrchardManagers66 .
(66. /
)66/ 0
.77 
	UseYesSql77 %
(77% &
)77& '
;77' (
}88 
)88 
;88 
services;; 
.;; 
TryAddEnumerable;; %
(;;% &
new;;& )
[;;) *
];;* +
{<< 
ServiceDescriptor== !
.==! "
Scoped==" (
<==( )
IPermissionProvider==) <
,==< =
Permissions==> I
>==I J
(==J K
)==K L
,==L M
ServiceDescriptor>> !
.>>! "
Scoped>>" (
<>>( )
INavigationProvider>>) <
,>>< =
	AdminMenu>>> G
>>>G H
(>>H I
)>>I J
,>>J K
}?? 
)?? 
;?? 
}@@ 	
}AA 
[CC 
FeatureCC 
(CC 
OpenIdConstantsCC 
.CC 
FeaturesCC %
.CC% &
ClientCC& ,
)CC, -
]CC- .
publicDD 

classDD 
ClientStartupDD 
:DD  
StartupBaseDD! ,
{EE 
publicFF 
overrideFF 
voidFF 
ConfigureServicesFF .
(FF. /
IServiceCollectionFF/ A
servicesFFB J
)FFJ K
{GG 	
servicesHH 
.HH 
TryAddSingletonHH $
<HH$ % 
IOpenIdClientServiceHH% 9
,HH9 :
OpenIdClientServiceHH; N
>HHN O
(HHO P
)HHP Q
;HHQ R
servicesKK 
.KK 
TryAddEnumerableKK %
(KK% &
newKK& )
[KK) *
]KK* +
{LL 
ServiceDescriptorMM !
.MM! "
ScopedMM" (
<MM( )
IDisplayDriverMM) 7
<MM7 8
ISiteMM8 =
>MM= >
,MM> ?-
!OpenIdClientSettingsDisplayDriverMM@ a
>MMa b
(MMb c
)MMc d
,MMd e
ServiceDescriptorNN !
.NN! "
ScopedNN" (
<NN( )
IRecipeStepHandlerNN) ;
,NN; <$
OpenIdClientSettingsStepNN= U
>NNU V
(NNV W
)NNW X
}OO 
)OO 
;OO 
servicesRR 
.RR 
TryAddEnumerableRR %
(RR% &
newRR& )
[RR) *
]RR* +
{SS 
ServiceDescriptorUU !
.UU! "
	SingletonUU" +
<UU+ ,
IConfigureOptionsUU, =
<UU= >!
AuthenticationOptionsUU> S
>UUS T
,UUT U%
OpenIdClientConfigurationUUV o
>UUo p
(UUp q
)UUq r
,UUr s
ServiceDescriptorVV !
.VV! "
	SingletonVV" +
<VV+ ,
IConfigureOptionsVV, =
<VV= > 
OpenIdConnectOptionsVV> R
>VVR S
,VVS T%
OpenIdClientConfigurationVVU n
>VVn o
(VVo p
)VVp q
,VVq r
ServiceDescriptorYY !
.YY! "
	SingletonYY" +
<YY+ ,!
IPostConfigureOptionsYY, A
<YYA B 
OpenIdConnectOptionsYYB V
>YYV W
,YYW X-
!OpenIdConnectPostConfigureOptionsYYY z
>YYz {
(YY{ |
)YY| }
}ZZ 
)ZZ 
;ZZ 
}[[ 	
}\\ 
[^^ 
Feature^^ 
(^^ 
OpenIdConstants^^ 
.^^ 
Features^^ %
.^^% &

Management^^& 0
)^^0 1
]^^1 2
public__ 

class__ 
ManagementStartup__ "
:__# $
StartupBase__% 0
{`` 
publicaa 
overrideaa 
voidaa 
	Configureaa &
(aa& '
IApplicationBuilderaa' :
builderaa; B
,aaB C!
IEndpointRouteBuilderaaD Y
routesaaZ `
,aa` a
IServiceProvideraab r
serviceProvider	aas Ç
)
aaÇ É
{bb 	
varcc 
optionscc 
=cc 
serviceProvidercc )
.cc) *
GetRequiredServicecc* <
<cc< =
IOptionscc= E
<ccE F
AdminOptionsccF R
>ccR S
>ccS T
(ccT U
)ccU V
.ccV W
ValueccW \
;cc\ ]
varff %
applicationControllerNameff )
=ff* +
typeofff, 2
(ff2 3!
ApplicationControllerff3 H
)ffH I
.ffI J
ControllerNameffJ X
(ffX Y
)ffY Z
;ffZ [
routeshh 
.hh "
MapAreaControllerRoutehh )
(hh) *
nameii 
:ii 
$strii )
,ii) *
areaNamejj 
:jj 
$strjj .
,jj. /
patternkk 
:kk 
optionskk  
.kk  !
AdminUrlPrefixkk! /
+kk0 1
$strkk2 G
,kkG H
defaultsll 
:ll 
newll 
{ll 

controllerll  *
=ll+ ,%
applicationControllerNamell- F
,llF G
actionllH N
=llO P
nameofllQ W
(llW X!
ApplicationControllerllX m
.llm n
Indexlln s
)lls t
}llu v
)mm 
;mm 
routesnn 
.nn "
MapAreaControllerRoutenn )
(nn) *
nameoo 
:oo 
$stroo /
,oo/ 0
areaNamepp 
:pp 
$strpp .
,pp. /
patternqq 
:qq 
optionsqq  
.qq  !
AdminUrlPrefixqq! /
+qq0 1
$strqq2 N
,qqN O
defaultsrr 
:rr 
newrr 
{rr 

controllerrr  *
=rr+ ,%
applicationControllerNamerr- F
,rrF G
actionrrH N
=rrO P
nameofrrQ W
(rrW X!
ApplicationControllerrrX m
.rrm n
Createrrn t
)rrt u
}rrv w
)ss 
;ss 
routestt 
.tt "
MapAreaControllerRoutett )
(tt) *
nameuu 
:uu 
$struu /
,uu/ 0
areaNamevv 
:vv 
$strvv .
,vv. /
patternww 
:ww 
optionsww  
.ww  !
AdminUrlPrefixww! /
+ww0 1
$strww2 S
,wwS T
defaultsxx 
:xx 
newxx 
{xx 

controllerxx  *
=xx+ ,%
applicationControllerNamexx- F
,xxF G
actionxxH N
=xxO P
nameofxxQ W
(xxW X!
ApplicationControllerxxX m
.xxm n
Deletexxn t
)xxt u
}xxv w
)yy 
;yy 
routeszz 
.zz "
MapAreaControllerRoutezz )
(zz) *
name{{ 
:{{ 
$str{{ -
,{{- .
areaName|| 
:|| 
$str|| .
,||. /
pattern}} 
:}} 
options}}  
.}}  !
AdminUrlPrefix}}! /
+}}0 1
$str}}2 Q
,}}Q R
defaults~~ 
:~~ 
new~~ 
{~~ 

controller~~  *
=~~+ ,%
applicationControllerName~~- F
,~~F G
action~~H N
=~~O P
nameof~~Q W
(~~W X!
ApplicationController~~X m
.~~m n
Edit~~n r
)~~r s
}~~t u
) 
; 
var
ÇÇ !
scopeControllerName
ÇÇ #
=
ÇÇ$ %
typeof
ÇÇ& ,
(
ÇÇ, -
ScopeController
ÇÇ- <
)
ÇÇ< =
.
ÇÇ= >
ControllerName
ÇÇ> L
(
ÇÇL M
)
ÇÇM N
;
ÇÇN O
routes
ÑÑ 
.
ÑÑ $
MapAreaControllerRoute
ÑÑ )
(
ÑÑ) *
name
ÖÖ 
:
ÖÖ 
$str
ÖÖ #
,
ÖÖ# $
areaName
ÜÜ 
:
ÜÜ 
$str
ÜÜ .
,
ÜÜ. /
pattern
áá 
:
áá 
options
áá  
.
áá  !
AdminUrlPrefix
áá! /
+
áá0 1
$str
áá2 A
,
ááA B
defaults
àà 
:
àà 
new
àà 
{
àà 

controller
àà  *
=
àà+ ,!
scopeControllerName
àà- @
,
àà@ A
action
ààB H
=
ààI J
nameof
ààK Q
(
ààQ R
ScopeController
ààR a
.
ààa b
Index
ààb g
)
ààg h
}
àài j
)
ââ 
;
ââ 
routes
ää 
.
ää $
MapAreaControllerRoute
ää )
(
ää) *
name
ãã 
:
ãã 
$str
ãã )
,
ãã) *
areaName
åå 
:
åå 
$str
åå .
,
åå. /
pattern
çç 
:
çç 
options
çç  
.
çç  !
AdminUrlPrefix
çç! /
+
çç0 1
$str
çç2 H
,
ççH I
defaults
éé 
:
éé 
new
éé 
{
éé 

controller
éé  *
=
éé+ ,!
scopeControllerName
éé- @
,
éé@ A
action
ééB H
=
ééI J
nameof
ééK Q
(
ééQ R
ScopeController
ééR a
.
ééa b
Create
ééb h
)
ééh i
}
ééj k
)
èè 
;
èè 
routes
êê 
.
êê $
MapAreaControllerRoute
êê )
(
êê) *
name
ëë 
:
ëë 
$str
ëë )
,
ëë) *
areaName
íí 
:
íí 
$str
íí .
,
íí. /
pattern
ìì 
:
ìì 
options
ìì  
.
ìì  !
AdminUrlPrefix
ìì! /
+
ìì0 1
$str
ìì2 M
,
ììM N
defaults
îî 
:
îî 
new
îî 
{
îî 

controller
îî  *
=
îî+ ,!
scopeControllerName
îî- @
,
îî@ A
action
îîB H
=
îîI J
nameof
îîK Q
(
îîQ R
ScopeController
îîR a
.
îîa b
Delete
îîb h
)
îîh i
}
îîj k
)
ïï 
;
ïï 
routes
ññ 
.
ññ $
MapAreaControllerRoute
ññ )
(
ññ) *
name
óó 
:
óó 
$str
óó '
,
óó' (
areaName
òò 
:
òò 
$str
òò .
,
òò. /
pattern
ôô 
:
ôô 
options
ôô  
.
ôô  !
AdminUrlPrefix
ôô! /
+
ôô0 1
$str
ôô2 K
,
ôôK L
defaults
öö 
:
öö 
new
öö 
{
öö 

controller
öö  *
=
öö+ ,!
scopeControllerName
öö- @
,
öö@ A
action
ööB H
=
ööI J
nameof
ööK Q
(
ööQ R
ScopeController
ööR a
.
ööa b
Edit
ööb f
)
ööf g
}
ööh i
)
õõ 
;
õõ 
}
úú 	
}
ùù 
[
üü 
Feature
üü 
(
üü 
OpenIdConstants
üü 
.
üü 
Features
üü %
.
üü% &
Server
üü& ,
)
üü, -
]
üü- .
public
†† 

class
†† 
ServerStartup
†† 
:
††  
StartupBase
††! ,
{
°° 
public
¢¢ 
override
¢¢ 
void
¢¢ 
ConfigureServices
¢¢ .
(
¢¢. / 
IServiceCollection
¢¢/ A
services
¢¢B J
)
¢¢J K
{
££ 	
services
§§ 
.
§§ 
AddOpenIddict
§§ "
(
§§" #
)
§§# $
.
•• 
	AddServer
•• 
(
•• 
options
•• "
=>
••# %
{
¶¶ 
options
ßß 
.
ßß 
UseAspNetCore
ßß )
(
ßß) *
)
ßß* +
;
ßß+ ,
options
®® 
.
®® 
UseDataProtection
®® -
(
®®- .
)
®®. /
;
®®/ 0
}
©© 
)
©© 
;
©© 
services
´´ 
.
´´ 
TryAddSingleton
´´ $
<
´´$ %"
IOpenIdServerService
´´% 9
,
´´9 :!
OpenIdServerService
´´; N
>
´´N O
(
´´O P
)
´´P Q
;
´´Q R
services
ÆÆ 
.
ÆÆ 
TryAddEnumerable
ÆÆ %
(
ÆÆ% &
new
ÆÆ& )
[
ÆÆ) *
]
ÆÆ* +
{
ØØ 
ServiceDescriptor
∞∞ !
.
∞∞! "
Scoped
∞∞" (
<
∞∞( )&
IRoleRemovedEventHandler
∞∞) A
,
∞∞A B6
(OpenIdApplicationRoleRemovedEventHandler
∞∞C k
>
∞∞k l
(
∞∞l m
)
∞∞m n
,
∞∞n o
ServiceDescriptor
±± !
.
±±! "
Scoped
±±" (
<
±±( )
IDisplayDriver
±±) 7
<
±±7 8"
OpenIdServerSettings
±±8 L
>
±±L M
,
±±M N/
!OpenIdServerSettingsDisplayDriver
±±O p
>
±±p q
(
±±q r
)
±±r s
,
±±s t
ServiceDescriptor
≤≤ !
.
≤≤! "
Scoped
≤≤" (
<
≤≤( )
IDisplayManager
≤≤) 8
<
≤≤8 9"
OpenIdServerSettings
≤≤9 M
>
≤≤M N
,
≤≤N O
DisplayManager
≤≤P ^
<
≤≤^ _"
OpenIdServerSettings
≤≤_ s
>
≤≤s t
>
≤≤t u
(
≤≤u v
)
≤≤v w
,
≤≤w x
ServiceDescriptor
≥≥ !
.
≥≥! "
Scoped
≥≥" (
<
≥≥( ) 
IRecipeStepHandler
≥≥) ;
,
≥≥; <&
OpenIdServerSettingsStep
≥≥= U
>
≥≥U V
(
≥≥V W
)
≥≥W X
,
≥≥X Y
ServiceDescriptor
¥¥ !
.
¥¥! "
Scoped
¥¥" (
<
¥¥( ) 
IRecipeStepHandler
¥¥) ;
,
¥¥; <#
OpenIdApplicationStep
¥¥= R
>
¥¥R S
(
¥¥S T
)
¥¥T U
,
¥¥U V
ServiceDescriptor
µµ !
.
µµ! "
Scoped
µµ" (
<
µµ( ) 
IRecipeStepHandler
µµ) ;
,
µµ; <
OpenIdScopeStep
µµ= L
>
µµL M
(
µµM N
)
µµN O
,
µµO P
ServiceDescriptor
∑∑ !
.
∑∑! "
	Singleton
∑∑" +
<
∑∑+ ,
IBackgroundTask
∑∑, ;
,
∑∑; <"
OpenIdBackgroundTask
∑∑= Q
>
∑∑Q R
(
∑∑R S
)
∑∑S T
,
∑∑T U
ServiceDescriptor
∫∫ !
.
∫∫! "
Scoped
∫∫" (
<
∫∫( )
IDisplayDriver
∫∫) 7
<
∫∫7 8
DeploymentStep
∫∫8 F
>
∫∫F G
,
∫∫G H.
 OpenIdServerDeploymentStepDriver
∫∫I i
>
∫∫i j
(
∫∫j k
)
∫∫k l
,
∫∫l m
ServiceDescriptor
ªª !
.
ªª! "
	Transient
ªª" +
<
ªª+ ,
IDeploymentSource
ªª, =
,
ªª= >*
OpenIdServerDeploymentSource
ªª? [
>
ªª[ \
(
ªª\ ]
)
ªª] ^
,
ªª^ _
ServiceDescriptor
ºº !
.
ºº! "
	Singleton
ºº" +
<
ºº+ ,$
IDeploymentStepFactory
ºº, B
,
ººB C#
DeploymentStepFactory
ººD Y
<
ººY Z(
OpenIdServerDeploymentStep
ººZ t
>
ººt u
>
ººu v
(
ººv w
)
ººw x
,
ººx y
}
ΩΩ 
)
ΩΩ 
;
ΩΩ 
services
ƒƒ 
.
ƒƒ 
	RemoveAll
ƒƒ 
<
ƒƒ 
IConfigureOptions
ƒƒ 0
<
ƒƒ0 1#
AuthenticationOptions
ƒƒ1 F
>
ƒƒF G
,
ƒƒG H5
'OpenIddictServerAspNetCoreConfiguration
ƒƒI p
>
ƒƒp q
(
ƒƒq r
)
ƒƒr s
;
ƒƒs t
services
∆∆ 
.
∆∆ 
TryAddEnumerable
∆∆ %
(
∆∆% &
new
∆∆& )
[
∆∆) *
]
∆∆* +
{
«« 
ServiceDescriptor
»» !
.
»»! "
	Singleton
»»" +
<
»»+ ,
IConfigureOptions
»», =
<
»»= >#
AuthenticationOptions
»»> S
>
»»S T
,
»»T U'
OpenIdServerConfiguration
»»V o
>
»»o p
(
»»p q
)
»»q r
,
»»r s
ServiceDescriptor
…… !
.
……! "
	Singleton
……" +
<
……+ ,
IConfigureOptions
……, =
<
……= >%
OpenIddictServerOptions
……> U
>
……U V
,
……V W'
OpenIdServerConfiguration
……X q
>
……q r
(
……r s
)
……s t
,
……t u
ServiceDescriptor
   !
.
  ! "
	Singleton
  " +
<
  + ,
IConfigureOptions
  , =
<
  = >/
!OpenIddictServerAspNetCoreOptions
  > _
>
  _ `
,
  ` a'
OpenIdServerConfiguration
  b {
>
  { |
(
  | }
)
  } ~
,
  ~ 
ServiceDescriptor
ÀÀ !
.
ÀÀ! "
	Singleton
ÀÀ" +
<
ÀÀ+ ,
IConfigureOptions
ÀÀ, =
<
ÀÀ= >3
%OpenIddictServerDataProtectionOptions
ÀÀ> c
>
ÀÀc d
,
ÀÀd e'
OpenIdServerConfiguration
ÀÀf 
>ÀÀ Ä
(ÀÀÄ Å
)ÀÀÅ Ç
}
ÃÃ 
)
ÃÃ 
;
ÃÃ 
}
ÕÕ 	
public
œœ 
override
œœ 
void
œœ 
	Configure
œœ &
(
œœ& '!
IApplicationBuilder
œœ' :
app
œœ; >
,
œœ> ?#
IEndpointRouteBuilder
œœ@ U
routes
œœV \
,
œœ\ ]
IServiceProvider
œœ^ n
serviceProvider
œœo ~
)
œœ~ 
{
–– 	
var
—— 
options
—— 
=
—— 
serviceProvider
—— )
.
——) * 
GetRequiredService
——* <
<
——< =
IOptions
——= E
<
——E F
AdminOptions
——F R
>
——R S
>
——S T
(
——T U
)
——U V
.
——V W
Value
——W \
;
——\ ]
routes
”” 
.
”” $
MapAreaControllerRoute
”” )
(
””) *
name
‘‘ 
:
‘‘ 
$str
‘‘ 1
,
‘‘1 2
areaName
’’ 
:
’’ 
$str
’’ .
,
’’. /
pattern
÷÷ 
:
÷÷ 
options
÷÷  
.
÷÷  !
AdminUrlPrefix
÷÷! /
+
÷÷0 1
$str
÷÷2 O
,
÷÷O P
defaults
◊◊ 
:
◊◊ 
new
◊◊ 
{
◊◊ 

controller
◊◊  *
=
◊◊+ ,
typeof
◊◊- 3
(
◊◊3 4+
ServerConfigurationController
◊◊4 Q
)
◊◊Q R
.
◊◊R S
ControllerName
◊◊S a
(
◊◊a b
)
◊◊b c
,
◊◊c d
action
◊◊e k
=
◊◊l m
nameof
◊◊n t
(
◊◊t u,
ServerConfigurationController◊◊u í
.◊◊í ì
Index◊◊ì ò
)◊◊ò ô
}◊◊ö õ
)
ÿÿ 
;
ÿÿ 
var
⁄⁄ 
settings
⁄⁄ 
=
⁄⁄ $
GetServerSettingsAsync
⁄⁄ 1
(
⁄⁄1 2
)
⁄⁄2 3
.
⁄⁄3 4

GetAwaiter
⁄⁄4 >
(
⁄⁄> ?
)
⁄⁄? @
.
⁄⁄@ A
	GetResult
⁄⁄A J
(
⁄⁄J K
)
⁄⁄K L
;
⁄⁄L M
if
€€ 
(
€€ 
settings
€€ 
==
€€ 
null
€€  
)
€€  !
{
‹‹ 
return
›› 
;
›› 
}
ﬁﬁ 
if
‡‡ 
(
‡‡ 
settings
‡‡ 
.
‡‡ '
AuthorizationEndpointPath
‡‡ 2
.
‡‡2 3
HasValue
‡‡3 ;
)
‡‡; <
{
·· 
routes
‚‚ 
.
‚‚ $
MapAreaControllerRoute
‚‚ -
(
‚‚- .
name
„„ 
:
„„ 
$str
„„ ,
,
„„, -
areaName
‰‰ 
:
‰‰ 
typeof
‰‰ $
(
‰‰$ %
Startup
‰‰% ,
)
‰‰, -
.
‰‰- .
	Namespace
‰‰. 7
,
‰‰7 8
pattern
ÂÂ 
:
ÂÂ 
settings
ÂÂ %
.
ÂÂ% &'
AuthorizationEndpointPath
ÂÂ& ?
.
ÂÂ? @
Value
ÂÂ@ E
,
ÂÂE F
defaults
ÊÊ 
:
ÊÊ 
new
ÊÊ !
{
ÊÊ" #

controller
ÊÊ$ .
=
ÊÊ/ 0
$str
ÊÊ1 9
,
ÊÊ9 :
action
ÊÊ; A
=
ÊÊB C
$str
ÊÊD O
}
ÊÊP Q
)
ÁÁ 
;
ÁÁ 
}
ËË 
if
ÍÍ 
(
ÍÍ 
settings
ÍÍ 
.
ÍÍ  
LogoutEndpointPath
ÍÍ +
.
ÍÍ+ ,
HasValue
ÍÍ, 4
)
ÍÍ4 5
{
ÎÎ 
routes
ÏÏ 
.
ÏÏ $
MapAreaControllerRoute
ÏÏ -
(
ÏÏ- .
name
ÌÌ 
:
ÌÌ 
$str
ÌÌ )
,
ÌÌ) *
areaName
ÓÓ 
:
ÓÓ 
typeof
ÓÓ $
(
ÓÓ$ %
Startup
ÓÓ% ,
)
ÓÓ, -
.
ÓÓ- .
	Namespace
ÓÓ. 7
,
ÓÓ7 8
pattern
ÔÔ 
:
ÔÔ 
settings
ÔÔ %
.
ÔÔ% & 
LogoutEndpointPath
ÔÔ& 8
.
ÔÔ8 9
Value
ÔÔ9 >
,
ÔÔ> ?
defaults
 
:
 
new
 !
{
" #

controller
$ .
=
/ 0
$str
1 9
,
9 :
action
; A
=
B C
$str
D L
}
M N
)
ÒÒ 
;
ÒÒ 
}
ÚÚ 
if
ÙÙ 
(
ÙÙ 
settings
ÙÙ 
.
ÙÙ 
TokenEndpointPath
ÙÙ *
.
ÙÙ* +
HasValue
ÙÙ+ 3
)
ÙÙ3 4
{
ıı 
routes
ˆˆ 
.
ˆˆ $
MapAreaControllerRoute
ˆˆ -
(
ˆˆ- .
name
˜˜ 
:
˜˜ 
$str
˜˜ (
,
˜˜( )
areaName
¯¯ 
:
¯¯ 
typeof
¯¯ $
(
¯¯$ %
Startup
¯¯% ,
)
¯¯, -
.
¯¯- .
	Namespace
¯¯. 7
,
¯¯7 8
pattern
˘˘ 
:
˘˘ 
settings
˘˘ %
.
˘˘% &
TokenEndpointPath
˘˘& 7
.
˘˘7 8
Value
˘˘8 =
,
˘˘= >
defaults
˙˙ 
:
˙˙ 
new
˙˙ !
{
˙˙" #

controller
˙˙$ .
=
˙˙/ 0
$str
˙˙1 9
,
˙˙9 :
action
˙˙; A
=
˙˙B C
$str
˙˙D K
}
˙˙L M
)
˚˚ 
;
˚˚ 
}
¸¸ 
if
˛˛ 
(
˛˛ 
settings
˛˛ 
.
˛˛ "
UserinfoEndpointPath
˛˛ -
.
˛˛- .
HasValue
˛˛. 6
)
˛˛6 7
{
ˇˇ 
routes
ÄÄ 
.
ÄÄ $
MapAreaControllerRoute
ÄÄ -
(
ÄÄ- .
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ '
,
ÅÅ' (
areaName
ÇÇ 
:
ÇÇ 
typeof
ÇÇ $
(
ÇÇ$ %
Startup
ÇÇ% ,
)
ÇÇ, -
.
ÇÇ- .
	Namespace
ÇÇ. 7
,
ÇÇ7 8
pattern
ÉÉ 
:
ÉÉ 
settings
ÉÉ %
.
ÉÉ% &"
UserinfoEndpointPath
ÉÉ& :
.
ÉÉ: ;
Value
ÉÉ; @
,
ÉÉ@ A
defaults
ÑÑ 
:
ÑÑ 
new
ÑÑ !
{
ÑÑ" #

controller
ÑÑ$ .
=
ÑÑ/ 0
$str
ÑÑ1 ;
,
ÑÑ; <
action
ÑÑ= C
=
ÑÑD E
$str
ÑÑF J
}
ÑÑK L
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
async
àà 
Task
àà 
<
àà "
OpenIdServerSettings
àà +
>
àà+ ,$
GetServerSettingsAsync
àà- C
(
ààC D
)
ààD E
{
ââ 
var
åå 
service
åå 
=
åå 
serviceProvider
åå -
.
åå- . 
GetRequiredService
åå. @
<
åå@ A"
IOpenIdServerService
ååA U
>
ååU V
(
ååV W
)
ååW X
;
ååX Y
var
éé 
configuration
éé !
=
éé" #
await
éé$ )
service
éé* 1
.
éé1 2
GetSettingsAsync
éé2 B
(
ééB C
)
ééC D
;
ééD E
if
èè 
(
èè 
(
èè 
await
èè 
service
èè "
.
èè" ##
ValidateSettingsAsync
èè# 8
(
èè8 9
configuration
èè9 F
)
èèF G
)
èèG H
.
èèH I
Any
èèI L
(
èèL M
result
èèM S
=>
èèT V
result
èèW ]
!=
èè^ `
ValidationResult
èèa q
.
èèq r
Success
èèr y
)
èèy z
)
èèz {
{
êê 
return
ëë 
null
ëë 
;
ëë  
}
íí 
return
îî 
configuration
îî $
;
îî$ %
}
ïï 
}
ññ 	
}
óó 
[
ôô 
Feature
ôô 
(
ôô 
OpenIdConstants
ôô 
.
ôô 
Features
ôô %
.
ôô% &

Validation
ôô& 0
)
ôô0 1
]
ôô1 2
public
öö 

class
öö 
ValidationStartup
öö "
:
öö# $
StartupBase
öö% 0
{
õõ 
public
úú 
override
úú 
void
úú 
ConfigureServices
úú .
(
úú. / 
IServiceCollection
úú/ A
services
úúB J
)
úúJ K
{
ùù 	
services
ûû 
.
ûû 
AddOpenIddict
ûû "
(
ûû" #
)
ûû# $
.
üü 
AddValidation
üü 
(
üü 
options
üü &
=>
üü' )
{
†† 
options
°° 
.
°° 
UseAspNetCore
°° )
(
°°) *
)
°°* +
;
°°+ ,
options
¢¢ 
.
¢¢ 
UseDataProtection
¢¢ -
(
¢¢- .
)
¢¢. /
;
¢¢/ 0
options
££ 
.
££ 
UseSystemNetHttp
££ ,
(
££, -
)
££- .
;
££. /
}
§§ 
)
§§ 
;
§§ 
services
¶¶ 
.
¶¶ 
TryAddSingleton
¶¶ $
<
¶¶$ %&
IOpenIdValidationService
¶¶% =
,
¶¶= >%
OpenIdValidationService
¶¶? V
>
¶¶V W
(
¶¶W X
)
¶¶X Y
;
¶¶Y Z
services
©© 
.
©© 
TryAddEnumerable
©© %
(
©©% &
new
©©& )
[
©©) *
]
©©* +
{
™™ 
ServiceDescriptor
´´ !
.
´´! "
Scoped
´´" (
<
´´( )
IDisplayDriver
´´) 7
<
´´7 8&
OpenIdValidationSettings
´´8 P
>
´´P Q
,
´´Q R3
%OpenIdValidationSettingsDisplayDriver
´´S x
>
´´x y
(
´´y z
)
´´z {
,
´´{ |
ServiceDescriptor
¨¨ !
.
¨¨! "
Scoped
¨¨" (
<
¨¨( )
IDisplayManager
¨¨) 8
<
¨¨8 9&
OpenIdValidationSettings
¨¨9 Q
>
¨¨Q R
,
¨¨R S
DisplayManager
¨¨T b
<
¨¨b c&
OpenIdValidationSettings
¨¨c {
>
¨¨{ |
>
¨¨| }
(
¨¨} ~
)
¨¨~ 
,¨¨ Ä
ServiceDescriptor
≠≠ !
.
≠≠! "
Scoped
≠≠" (
<
≠≠( ) 
IRecipeStepHandler
≠≠) ;
,
≠≠; <*
OpenIdValidationSettingsStep
≠≠= Y
>
≠≠Y Z
(
≠≠Z [
)
≠≠[ \
}
ÆÆ 
)
ÆÆ 
;
ÆÆ 
services
µµ 
.
µµ 
	RemoveAll
µµ 
<
µµ 
IConfigureOptions
µµ 0
<
µµ0 1#
AuthenticationOptions
µµ1 F
>
µµF G
,
µµG H9
+OpenIddictValidationAspNetCoreConfiguration
µµI t
>
µµt u
(
µµu v
)
µµv w
;
µµw x
services
∑∑ 
.
∑∑ 
TryAddEnumerable
∑∑ %
(
∑∑% &
new
∑∑& )
[
∑∑) *
]
∑∑* +
{
∏∏ 
ServiceDescriptor
ππ !
.
ππ! "
	Singleton
ππ" +
<
ππ+ ,
IConfigureOptions
ππ, =
<
ππ= >#
AuthenticationOptions
ππ> S
>
ππS T
,
ππT U+
OpenIdValidationConfiguration
ππV s
>
ππs t
(
ππt u
)
ππu v
,
ππv w
ServiceDescriptor
∫∫ !
.
∫∫! "
	Singleton
∫∫" +
<
∫∫+ ,
IConfigureOptions
∫∫, =
<
∫∫= >%
ApiAuthorizationOptions
∫∫> U
>
∫∫U V
,
∫∫V W+
OpenIdValidationConfiguration
∫∫X u
>
∫∫u v
(
∫∫v w
)
∫∫w x
,
∫∫x y
ServiceDescriptor
ªª !
.
ªª! "
	Singleton
ªª" +
<
ªª+ ,
IConfigureOptions
ªª, =
<
ªª= >)
OpenIddictValidationOptions
ªª> Y
>
ªªY Z
,
ªªZ [+
OpenIdValidationConfiguration
ªª\ y
>
ªªy z
(
ªªz {
)
ªª{ |
,
ªª| }
ServiceDescriptor
ºº !
.
ºº! "
	Singleton
ºº" +
<
ºº+ ,
IConfigureOptions
ºº, =
<
ºº= >7
)OpenIddictValidationDataProtectionOptions
ºº> g
>
ººg h
,
ººh i,
OpenIdValidationConfigurationººj á
>ººá à
(ººà â
)ººâ ä
}
ΩΩ 
)
ΩΩ 
;
ΩΩ 
}
ææ 	
public
¿¿ 
override
¿¿ 
void
¿¿ 
	Configure
¿¿ &
(
¿¿& '!
IApplicationBuilder
¿¿' :
builder
¿¿; B
,
¿¿B C#
IEndpointRouteBuilder
¿¿D Y
routes
¿¿Z `
,
¿¿` a
IServiceProvider
¿¿b r
serviceProvider¿¿s Ç
)¿¿Ç É
{
¡¡ 	
var
¬¬ 
options
¬¬ 
=
¬¬ 
serviceProvider
¬¬ )
.
¬¬) * 
GetRequiredService
¬¬* <
<
¬¬< =
IOptions
¬¬= E
<
¬¬E F
AdminOptions
¬¬F R
>
¬¬R S
>
¬¬S T
(
¬¬T U
)
¬¬U V
.
¬¬V W
Value
¬¬W \
;
¬¬\ ]
routes
ƒƒ 
.
ƒƒ $
MapAreaControllerRoute
ƒƒ )
(
ƒƒ) *
name
≈≈ 
:
≈≈ 
$str
≈≈ 5
,
≈≈5 6
areaName
∆∆ 
:
∆∆ 
$str
∆∆ .
,
∆∆. /
pattern
«« 
:
«« 
options
««  
.
««  !
AdminUrlPrefix
««! /
+
««0 1
$str
««2 S
,
««S T
defaults
»» 
:
»» 
new
»» 
{
»» 

controller
»»  *
=
»»+ ,
typeof
»»- 3
(
»»3 4/
!ValidationConfigurationController
»»4 U
)
»»U V
.
»»V W
ControllerName
»»W e
(
»»e f
)
»»f g
,
»»g h
action
»»i o
=
»»p q
nameof
»»r x
(
»»x y0
!ValidationConfigurationController»»y ö
.»»ö õ
Index»»õ †
)»»† °
}»»¢ £
)
…… 
;
…… 
}
   	
}
ÀÀ 
internal
ÕÕ 
static
ÕÕ 
class
ÕÕ /
!OpenIdServiceCollectionExtensions
ÕÕ ;
{
ŒŒ 
public
œœ 
static
œœ  
IServiceCollection
œœ (
	RemoveAll
œœ) 2
(
œœ2 3
this
œœ3 7 
IServiceCollection
œœ8 J
services
œœK S
,
œœS T
Type
œœU Y
serviceType
œœZ e
,
œœe f
Type
œœg k 
implementationType
œœl ~
)
œœ~ 
{
–– 	
Debug
—— 
.
—— 
Assert
—— 
(
—— 
services
—— !
!=
——" $
null
——% )
,
——) *
$str
——+ W
)
——W X
;
——X Y
Debug
““ 
.
““ 
Assert
““ 
(
““ 
serviceType
““ $
!=
““% '
null
““( ,
,
““, -
$str
““. S
)
““S T
;
““T U
Debug
”” 
.
”” 
Assert
”” 
(
””  
implementationType
”” +
!=
””, .
null
””/ 3
,
””3 4
$str
””5 a
)
””a b
;
””b c
for
’’ 
(
’’ 
var
’’ 
index
’’ 
=
’’ 
services
’’ %
.
’’% &
Count
’’& +
-
’’, -
$num
’’. /
;
’’/ 0
index
’’1 6
>=
’’7 9
$num
’’: ;
;
’’; <
index
’’= B
--
’’B D
)
’’D E
{
÷÷ 
var
◊◊ 

descriptor
◊◊ 
=
◊◊  
services
◊◊! )
[
◊◊) *
index
◊◊* /
]
◊◊/ 0
;
◊◊0 1
if
ÿÿ 
(
ÿÿ 

descriptor
ÿÿ 
.
ÿÿ 
ServiceType
ÿÿ *
==
ÿÿ+ -
serviceType
ÿÿ. 9
&&
ÿÿ: <

descriptor
ÿÿ= G
.
ÿÿG H 
ImplementationType
ÿÿH Z
==
ÿÿ[ ] 
implementationType
ÿÿ^ p
)
ÿÿp q
{
ŸŸ 
services
⁄⁄ 
.
⁄⁄ 
RemoveAt
⁄⁄ %
(
⁄⁄% &
index
⁄⁄& +
)
⁄⁄+ ,
;
⁄⁄, -
}
€€ 
}
‹‹ 
return
ﬁﬁ 
services
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 	
public
·· 
static
··  
IServiceCollection
·· (
	RemoveAll
··) 2
<
··2 3
TService
··3 ;
,
··; <
TImplementation
··= L
>
··L M
(
··M N
this
··N R 
IServiceCollection
··S e
services
··f n
)
··n o
where
‚‚ 
TImplementation
‚‚ !
:
‚‚" #
TService
‚‚$ ,
=>
„„ 
services
„„ 
.
„„ 
	RemoveAll
„„ !
(
„„! "
typeof
„„" (
(
„„( )
TService
„„) 1
)
„„1 2
,
„„2 3
typeof
„„4 :
(
„„: ;
TImplementation
„„; J
)
„„J K
)
„„K L
;
„„L M
}
‰‰ 
}ÂÂ ü,
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\Tasks\OpenIdBackgroundTask.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 
Tasks "
{ 
[ 
BackgroundTask 
( 
Schedule 
= 
$str -
,- .
Description/ :
=; <
$str= 
)	 Ä
]
Ä Å
public 

class  
OpenIdBackgroundTask %
:& '
IBackgroundTask( 7
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly  
IOpenIdServerService -
_serverService. <
;< =
public  
OpenIdBackgroundTask #
(# $
ILogger 
<  
OpenIdBackgroundTask (
>( )
logger* 0
,0 1 
IOpenIdServerService  
serverService! .
). /
{ 	
_logger 
= 
logger 
; 
_serverService 
= 
serverService *
;* +
} 	
public 
async 
Task 
DoWorkAsync %
(% &
IServiceProvider& 6
serviceProvider7 F
,F G
CancellationTokenH Y
cancellationTokenZ k
)k l
{ 	
try 
{ 
await 
_serverService $
.$ %)
PruneManagedCertificatesAsync% B
(B C
)C D
;D E
}   
catch!! 
(!! &
OperationCanceledException!! -
	exception!!. 7
)!!7 8
when!!9 =
(!!> ?
	exception!!? H
.!!H I
CancellationToken!!I Z
==!![ ]
cancellationToken!!^ o
)!!o p
{"" 
_logger## 
.## 
LogDebug##  
(##  !
$str##! S
)##S T
;##T U
}$$ 
catch%% 
(%% 
	Exception%% 
	exception%% &
)%%& '
{&& 
_logger'' 
.'' 
LogError''  
(''  !
	exception''! *
,''* +
$str'', x
)''x y
;''y z
}(( 
var44 
	threshold44 
=44 
DateTimeOffset44 *
.44* +
UtcNow44+ 1
-442 3
TimeSpan444 <
.44< =
FromDays44= E
(44E F
$num44F H
)44H I
;44I J
try66 
{77 
await88 
serviceProvider88 %
.88% &
GetRequiredService88& 8
<888 9
IOpenIdTokenManager889 L
>88L M
(88M N
)88N O
.88O P

PruneAsync88P Z
(88Z [
	threshold88[ d
,88d e
cancellationToken88f w
)88w x
;88x y
}99 
catch:: 
(::  
OpenIddictExceptions:: '
.::' ( 
ConcurrencyException::( <
	exception::= F
)::F G
{;; 
_logger<< 
.<< 
LogDebug<<  
(<<  !
	exception<<! *
,<<* +
$str<<, r
)<<r s
;<<s t
}== 
catch>> 
(>> &
OperationCanceledException>> -
	exception>>. 7
)>>7 8
when>>9 =
(>>> ?
	exception>>? H
.>>H I
CancellationToken>>I Z
==>>[ ]
cancellationToken>>^ o
)>>o p
{?? 
_logger@@ 
.@@ 
LogDebug@@  
(@@  !
$str@@! G
)@@G H
;@@H I
}AA 
catchBB 
(BB 
	ExceptionBB 
	exceptionBB &
)BB& '
{CC 
_loggerDD 
.DD 
LogErrorDD  
(DD  !
	exceptionDD! *
,DD* +
$strDD, g
)DDg h
;DDh i
}EE 
tryGG 
{HH 
awaitII 
serviceProviderII %
.II% &
GetRequiredServiceII& 8
<II8 9'
IOpenIdAuthorizationManagerII9 T
>IIT U
(IIU V
)IIV W
.IIW X

PruneAsyncIIX b
(IIb c
	thresholdIIc l
,IIl m
cancellationTokenIIn 
)	II Ä
;
IIÄ Å
}JJ 
catchKK 
(KK  
OpenIddictExceptionsKK '
.KK' ( 
ConcurrencyExceptionKK( <
	exceptionKK= F
)KKF G
{LL 
_loggerMM 
.MM 
LogDebugMM  
(MM  !
	exceptionMM! *
,MM* +
$strMM, z
)MMz {
;MM{ |
}NN 
catchOO 
(OO &
OperationCanceledExceptionOO -
	exceptionOO. 7
)OO7 8
whenOO9 =
(OO> ?
	exceptionOO? H
.OOH I
CancellationTokenOOI Z
==OO[ ]
cancellationTokenOO^ o
)OOo p
{PP 
_loggerQQ 
.QQ 
LogDebugQQ  
(QQ  !
$strQQ! O
)QQO P
;QQP Q
}RR 
catchSS 
(SS 
	ExceptionSS 
	exceptionSS &
)SS& '
{TT 
_loggerUU 
.UU 
LogErrorUU  
(UU  !
	exceptionUU! *
,UU* +
$strUU, o
)UUo p
;UUp q
}VV 
}WW 	
}XX 
}YY Ê
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\AuthorizeViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class 
AuthorizeViewModel #
{ 
public 
string 
ApplicationName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
Scope		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} “7
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\CreateOpenIdApplicationViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{		 
public

 

class

 ,
 CreateOpenIdApplicationViewModel

 1
:

2 3
IValidatableObject

4 F
{ 
[ 	
Required	 
] 
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
RedirectUris "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string "
PostLogoutRedirectUris ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ConsentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
	RoleEntry 
> 
RoleEntries *
{+ ,
get- 0
;0 1
}2 3
=4 5
new6 9
List: >
<> ?
	RoleEntry? H
>H I
(I J
)J K
;K L
public 
List 
< 

ScopeEntry 
> 
ScopeEntries  ,
{- .
get/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A

ScopeEntryA K
>K L
(L M
)M N
;N O
public 
bool 
AllowPasswordFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool &
AllowClientCredentialsFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool &
AllowAuthorizationCodeFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool !
AllowRefreshTokenFlow )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
AllowHybridFlow #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
AllowImplicitFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
AllowLogoutEndpoint '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public!! 
IEnumerable!! 
<!! 
ValidationResult!! +
>!!+ ,
Validate!!- 5
(!!5 6
ValidationContext!!6 G
validationContext!!H Y
)!!Y Z
=>!![ ]
ValidateUrls!!^ j
(!!j k
validationContext!!k |
,!!| }
nameof	!!~ Ñ
(
!!Ñ Ö
RedirectUris
!!Ö ë
)
!!ë í
,
!!í ì
RedirectUris
!!î †
)
!!† °
."" 
Union"" 
("" 
ValidateUrls"" 
(""  
validationContext""  1
,""1 2
nameof""3 9
(""9 :"
PostLogoutRedirectUris"": P
)""P Q
,""Q R"
PostLogoutRedirectUris""S i
)""i j
)""j k
;""k l
public$$ 
class$$ 
	RoleEntry$$ 
{%% 	
public&& 
string&& 
Name&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public'' 
bool'' 
Selected''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
}(( 	
public)) 
class)) 

ScopeEntry)) 
{** 	
public++ 
string++ 
Name++ 
{++  
get++! $
;++$ %
set++& )
;++) *
}+++ ,
public,, 
bool,, 
Selected,,  
{,,! "
get,,# &
;,,& '
set,,( +
;,,+ ,
},,- .
}-- 	
private// 
IEnumerable// 
<// 
ValidationResult// ,
>//, -
ValidateUrls//. :
(//: ;
ValidationContext//; L
context//M T
,//T U
string//V \

memberName//] g
,//g h
string//i o
member//p v
)//v w
{00 	
if11 
(11 
member11 
!=11 
null11 
)11 
{22 
var33 
S33 
=33 
context33 
.33  
GetRequiredService33  2
<332 3
IStringLocalizer333 C
<33C D,
 CreateOpenIdApplicationViewModel33D d
>33d e
>33e f
(33f g
)33g h
;33h i
foreach55 
(55 
var55 
url55  
in55! #
member55$ *
.55* +
Split55+ 0
(550 1
new551 4
[554 5
]555 6
{557 8
$char559 <
,55< =
$char55> A
}55B C
,55C D
StringSplitOptions55E W
.55W X
RemoveEmptyEntries55X j
)55j k
)55k l
{66 
if77 
(77 
!77 
Uri77 
.77 
	TryCreate77 &
(77& '
url77' *
,77* +
UriKind77, 3
.773 4
Absolute774 <
,77< =
out77> A
var77B E
uri77F I
)77I J
||77K M
!77N O
uri77O R
.77R S&
IsWellFormedOriginalString77S m
(77m n
)77n o
)77o p
{88 
yield99 
return99 $
new99% (
ValidationResult99) 9
(999 :
S99: ;
[99; <
$str99< T
,99T U
url99V Y
]99Y Z
,99Z [
new99\ _
[99_ `
]99` a
{99b c

memberName99d n
}99o p
)99p q
;99q r
}:: 
};; 
}<< 
}== 	
}>> 
}?? Á
õD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\CreateOpenIdScopeViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class &
CreateOpenIdScopeViewModel +
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
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
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Resources 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
TenantEntry 
>  
Tenants! (
{) *
get+ .
;. /
}0 1
=2 3
new4 7
List8 <
<< =
TenantEntry= H
>H I
(I J
)J K
;K L
public 
class 
TenantEntry  
{ 	
public 
bool 
Current 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
Selected  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 	
} 
} ô9
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\EditOpenIdApplicationViewModel.cs
	namespace		 	
OrchardCore		
 
.		 
OpenId		 
.		 

ViewModels		 '
{

 
public 

class *
EditOpenIdApplicationViewModel /
:0 1
IValidatableObject2 D
{ 
[ 	
HiddenInput	 
] 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
[ 	
Required	 
] 
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
RedirectUris "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string "
PostLogoutRedirectUris ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ConsentType !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
	RoleEntry 
> 
RoleEntries *
{+ ,
get- 0
;0 1
}2 3
=4 5
new6 9
List: >
<> ?
	RoleEntry? H
>H I
(I J
)J K
;K L
public 
List 
< 

ScopeEntry 
> 
ScopeEntries  ,
{- .
get/ 2
;2 3
}4 5
=6 7
new8 ;
List< @
<@ A

ScopeEntryA K
>K L
(L M
)M N
;N O
public 
bool 
AllowPasswordFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool &
AllowClientCredentialsFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool &
AllowAuthorizationCodeFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public   
bool   !
AllowRefreshTokenFlow   )
{  * +
get  , /
;  / 0
set  1 4
;  4 5
}  6 7
public!! 
bool!! 
AllowHybridFlow!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
public"" 
bool"" 
AllowImplicitFlow"" %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
public## 
bool## 
AllowLogoutEndpoint## '
{##( )
get##* -
;##- .
set##/ 2
;##2 3
}##4 5
public%% 
IEnumerable%% 
<%% 
ValidationResult%% +
>%%+ ,
Validate%%- 5
(%%5 6
ValidationContext%%6 G
validationContext%%H Y
)%%Y Z
=>%%[ ]
ValidateUrls%%^ j
(%%j k
validationContext%%k |
,%%| }
nameof	%%~ Ñ
(
%%Ñ Ö
RedirectUris
%%Ö ë
)
%%ë í
,
%%í ì
RedirectUris
%%î †
)
%%† °
.&& 
Union&& 
(&& 
ValidateUrls&& #
(&&# $
validationContext&&$ 5
,&&5 6
nameof&&7 =
(&&= >"
PostLogoutRedirectUris&&> T
)&&T U
,&&U V"
PostLogoutRedirectUris&&W m
)&&m n
)&&n o
;&&o p
public(( 
class(( 
	RoleEntry(( 
{)) 	
public** 
string** 
Name** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
public++ 
bool++ 
Selected++  
{++! "
get++# &
;++& '
set++( +
;+++ ,
}++- .
},, 	
public.. 
class.. 

ScopeEntry.. 
{// 	
public00 
string00 
Name00 
{00  
get00! $
;00$ %
set00& )
;00) *
}00+ ,
public11 
bool11 
Selected11  
{11! "
get11# &
;11& '
set11( +
;11+ ,
}11- .
}22 	
private44 
IEnumerable44 
<44 
ValidationResult44 ,
>44, -
ValidateUrls44. :
(44: ;
ValidationContext44; L
context44M T
,44T U
string44V \

memberName44] g
,44g h
string44i o
member44p v
)44v w
{55 	
if66 
(66 
member66 
!=66 
null66 
)66 
{77 
var88 
S88 
=88 
context88 
.88  
GetRequiredService88  2
<882 3
IStringLocalizer883 C
<88C D*
EditOpenIdApplicationViewModel88D b
>88b c
>88c d
(88d e
)88e f
;88f g
foreach:: 
(:: 
var:: 
url::  
in::! #
member::$ *
.::* +
Split::+ 0
(::0 1
new::1 4
[::4 5
]::5 6
{::7 8
$char::9 <
,::< =
$char::> A
}::B C
,::C D
StringSplitOptions::E W
.::W X
RemoveEmptyEntries::X j
)::j k
)::k l
{;; 
if<< 
(<< 
!<< 
Uri<< 
.<< 
	TryCreate<< &
(<<& '
url<<' *
,<<* +
UriKind<<, 3
.<<3 4
Absolute<<4 <
,<<< =
out<<> A
var<<B E
uri<<F I
)<<I J
||<<K M
!<<N O
uri<<O R
.<<R S&
IsWellFormedOriginalString<<S m
(<<m n
)<<n o
)<<o p
{== 
yield>> 
return>> $
new>>% (
ValidationResult>>) 9
(>>9 :
S>>: ;
[>>; <
$str>>< T
,>>T U
url>>V Y
]>>Y Z
,>>Z [
new>>\ _
[>>_ `
]>>` a
{>>b c

memberName>>d n
}>>o p
)>>p q
;>>q r
}?? 
}@@ 
}AA 
}BB 	
}CC 
}DD ≠
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\EditOpenIdScopeViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class $
EditOpenIdScopeViewModel )
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
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
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
] 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	Resources 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
TenantEntry 
>  
Tenants! (
{) *
get+ .
;. /
}0 1
=2 3
new4 7
List8 <
<< =
TenantEntry= H
>H I
(I J
)J K
;K L
public 
class 
TenantEntry  
{ 	
public 
bool 
Current 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Name 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
Selected  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 	
} 
} ¬
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\ErrorViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
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
}		 §
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\LogoutViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class 
LogoutViewModel  
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ›
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\OpenIdApplicationIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class ,
 OpenIdApplicationsIndexViewModel 1
{ 
public 
IList 
< "
OpenIdApplicationEntry +
>+ ,
Applications- 9
{: ;
get< ?
;? @
}A B
=C D
newE H
ListI M
<M N"
OpenIdApplicationEntryN d
>d e
(e f
)f g
;g h
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
public 

class "
OpenIdApplicationEntry '
{ 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} §
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\OpenIdClientSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class )
OpenIdClientSettingsViewModel .
{ 
[ 	
Required	 
] 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 
bool

 
TestingModeEnabled

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
string 
	Authority 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
ClientSecret "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
RegularExpression	 
( 
$str U
,U V
ErrorMessageW c
=d e
$strf t
)t u
]u v
public 
string 
CallbackPath "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Url	 
( 
ErrorMessage 
= 
$str <
)< =
]= >
public 
string  
SignedOutRedirectUri *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
[ 	
RegularExpression	 
( 
$str U
,U V
ErrorMessageW c
=d e
$strf t
)t u
]u v
public 
string !
SignedOutCallbackPath +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
Scopes 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
ResponseMode "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
StoreExternalTokens '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public   
bool   
UseCodeFlow   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public!! 
bool!! #
UseCodeIdTokenTokenFlow!! +
{!!, -
get!!. 1
;!!1 2
set!!3 6
;!!6 7
}!!8 9
public"" 
bool"" 
UseCodeIdTokenFlow"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
public## 
bool## 
UseCodeTokenFlow## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
public$$ 
bool$$ 
UseIdTokenFlow$$ "
{$$# $
get$$% (
;$$( )
set$$* -
;$$- .
}$$/ 0
public%% 
bool%% 
UseIdTokenTokenFlow%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
}&& 
}'' Ô
öD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\OpenIdScopeIndexViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class %
OpenIdScopeIndexViewModel *
{ 
public 
IList 
< 
OpenIdScopeEntry %
>% &
Scopes' -
{. /
get0 3
;3 4
}5 6
=7 8
new9 <
List= A
<A B
OpenIdScopeEntryB R
>R S
(S T
)T U
;U V
public 
dynamic 
Pager 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
public 

class 
OpenIdScopeEntry !
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
	IsChecked 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ë
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\OpenIdScopeStepViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class $
OpenIdScopeStepViewModel )
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
	ScopeName		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
string 
	Resources 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ë0
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\OpenIdServerSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public		 

class		 )
OpenIdServerSettingsViewModel		 .
{

 
public 
TokenFormat 
AccessTokenFormat ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	
Url	 
] 
public 
string 
	Authority 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool (
DisableAccessTokenEncryption 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
StoreLocation 
? .
"EncryptionCertificateStoreLocation @
{A B
getC F
;F G
setH K
;K L
}M N
public 
	StoreName 
? *
EncryptionCertificateStoreName 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
string +
EncryptionCertificateThumbprint 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
StoreLocation 
? +
SigningCertificateStoreLocation =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
	StoreName 
? '
SigningCertificateStoreName 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
string (
SigningCertificateThumbprint 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
IList 
< 
CertificateInfo $
>$ %!
AvailableCertificates& ;
{< =
get> A
;A B
}C D
=E F
newG J
ListK O
<O P
CertificateInfoP _
>_ `
(` a
)a b
;b c
public 
bool 
EnableTokenEndpoint '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool '
EnableAuthorizationEndpoint /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
bool  
EnableLogoutEndpoint (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool "
EnableUserInfoEndpoint *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool 
AllowPasswordFlow %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool &
AllowClientCredentialsFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool &
AllowAuthorizationCodeFlow .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
bool !
AllowRefreshTokenFlow )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
AllowHybridFlow #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
bool   
AllowImplicitFlow   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
public!! 
bool!! '
DisableRollingRefreshTokens!! /
{!!0 1
get!!2 5
;!!5 6
set!!7 :
;!!: ;
}!!< =
public"" 
bool"" $
UseReferenceAccessTokens"" ,
{""- .
get""/ 2
;""2 3
set""4 7
;""7 8
}""9 :
public$$ 
class$$ 
CertificateInfo$$ $
{%% 	
public&& 
string&& 
FriendlyName&& &
{&&' (
get&&) ,
;&&, -
set&&. 1
;&&1 2
}&&3 4
public'' 
string'' 
Issuer''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
public(( 
DateTime(( 
NotAfter(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
public)) 
DateTime)) 
	NotBefore)) %
{))& '
get))( +
;))+ ,
set))- 0
;))0 1
}))2 3
public** 
StoreLocation**  
StoreLocation**! .
{**/ 0
get**1 4
;**4 5
set**6 9
;**9 :
}**; <
public++ 
	StoreName++ 
	StoreName++ &
{++' (
get++) ,
;++, -
set++. 1
;++1 2
}++3 4
public,, 
string,, 
Subject,, !
{,," #
get,,$ '
;,,' (
set,,) ,
;,,, -
},,. /
public-- 
string-- 

ThumbPrint-- $
{--% &
get--' *
;--* +
set--, /
;--/ 0
}--1 2
public.. 
bool.. 
HasPrivateKey.. %
{..& '
get..( +
;..+ ,
set..- 0
;..0 1
}..2 3
public// 
bool// 
Archived//  
{//! "
get//# &
;//& '
set//( +
;//+ ,
}//- .
}00 	
}11 
}22 ¥

¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.OpenId\ViewModels\OpenIdValidationSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
OpenId 
. 

ViewModels '
{ 
public 

class -
!OpenIdValidationSettingsViewModel 2
{ 
[ 	
Url	 
] 
public		 
string		 
	Authority		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool &
DisableTokenTypeValidation .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
string 
Tenant 
{ 
get "
;" #
set$ '
;' (
}) *
public 
IEnumerable 
< 
string !
>! "
AvailableTenants# 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} 