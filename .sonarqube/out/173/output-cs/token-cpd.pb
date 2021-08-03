â3
ëD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
{		 
[

 
Feature

 
(

 ,
 MicrosoftAuthenticationConstants

 -
.

- .
Features

. 6
.

6 7
MicrosoftAccount

7 G
)

G H
]

H I
public 

class %
AdminMenuMicrosoftAccount *
:+ ,
INavigationProvider- @
{ 
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public %
AdminMenuMicrosoftAccount (
(( )
IStringLocalizer) 9
<9 :%
AdminMenuMicrosoftAccount: S
>S T
	localizerU ^
)^ _
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
$str *
]* +
,+ ,
S- .
[. /
$str/ :
]: ;
.; <
PrefixPosition< J
(J K
)K L
,L M
clientN T
=>U W
clientX ^
. 
AddClass !
(! "
$str" -
)- .
.. /
Id/ 1
(1 2
$str2 =
)= >
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
=c d-
 MicrosoftAuthenticationConstants	e Ö
.
Ö Ü
Features
Ü é
.
é è
MicrosoftAccount
è ü
}
† °
)
° ¢
. 

Permission '
(' (
Permissions( 3
.3 4)
ManageMicrosoftAuthentication4 Q
)Q R
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
(%% ,
 MicrosoftAuthenticationConstants%% -
.%%- .
Features%%. 6
.%%6 7
AAD%%7 :
)%%: ;
]%%; <
public&& 

class&& 
AdminMenuAAD&& 
:&& 
INavigationProvider&&  3
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
public++ 
AdminMenuAAD++ 
(++ 
IStringLocalizer,, 
<,, 
AdminMenuAAD,, )
>,,) *
	localizer,,+ 4
,,,4 5
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
$str77 (
]77( )
,77) *
security77+ 3
=>774 6
security777 ?
.88 
Add88 
(88 
S88 
[88 
$str88 /
]88/ 0
,880 1
authentication882 @
=>88A C
authentication88D R
.99 
Add99  
(99  !
S99! "
[99" #
$str99# ;
]99; <
,99< =
S99> ?
[99? @
$str99@ X
]99X Y
.99Y Z
PrefixPosition99Z h
(99h i
)99i j
,99j k
client99l r
=>99s u
client99v |
.::  !
AddClass::! )
(::) *
$str::* 3
)::3 4
.::4 5
Id::5 7
(::7 8
$str::8 A
)::A B
.;;  !
Action;;! '
(;;' (
$str;;( /
,;;/ 0
$str;;1 8
,;;8 9
new;;: =
{;;> ?
area;;@ D
=;;E F
$str;;G ]
,;;] ^
groupId;;_ f
=;;g h-
 MicrosoftAuthenticationConstants	;;i â
.
;;â ä
Features
;;ä í
.
;;í ì
AAD
;;ì ñ
}
;;ó ò
)
;;ò ô
.<<  !

Permission<<! +
(<<+ ,
Permissions<<, 7
.<<7 8)
ManageMicrosoftAuthentication<<8 U
)<<U V
.==  !
LocalNav==! )
(==) *
)==* +
)==+ ,
)>> 
)>> 
;>> 
}?? 
return@@ 
Task@@ 
.@@ 
CompletedTask@@ %
;@@% &
}AA 	
}BB 
}CC À=
±D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Configuration\AzureADOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Configuration/ <
{ 
public 

class '
AzureADOptionsConfiguration ,
:- .
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
< 
PolicySchemeOptions 2
>2 3
,3 4"
IConfigureNamedOptions 
< 
AzureADOptions -
>- .
{ 
private 
readonly 
IAzureADService (
_azureADService) 8
;8 9
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public '
AzureADOptionsConfiguration *
(* +
IAzureADService   
loginService   (
,  ( )
ShellSettings!! 
shellSettings!! '
,!!' (
ILogger"" 
<"" '
AzureADOptionsConfiguration"" /
>""/ 0
logger""1 7
)""7 8
{## 	
_azureADService$$ 
=$$ 
loginService$$ *
;$$* +
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
=++ #
GetAzureADSettingsAsync++ 2
(++2 3
)++3 4
.++4 5

GetAwaiter++5 ?
(++? @
)++@ A
.++A B
	GetResult++B K
(++K L
)++L M
;++M N
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
(22 
AzureADDefaults22 -
.22- . 
AuthenticationScheme22. B
,22B C
builder22D K
=>22L N
{33 
builder44 
.44 
DisplayName44 #
=44$ %
settings44& .
.44. /
DisplayName44/ :
;44: ;
builder55 
.55 
HandlerType55 #
=55$ %
typeof55& ,
(55, -
PolicySchemeHandler55- @
)55@ A
;55A B
}66 
)66 
;66 
options88 
.88 
	AddScheme88 
(88 
AzureADDefaults88 -
.88- .
OpenIdScheme88. :
,88: ;
builder88< C
=>88D F
{99 
builder:: 
.:: 
DisplayName:: #
=::$ %
$str::& (
;::( )
builder;; 
.;; 
HandlerType;; #
=;;$ %
typeof;;& ,
(;;, - 
OpenIdConnectHandler;;- A
);;A B
;;;B C
}<< 
)<< 
;<< 
}== 	
public?? 
void?? 
	Configure?? 
(?? 
string?? $
name??% )
,??) *
AzureADOptions??+ 9
options??: A
)??A B
{@@ 	
ifAA 
(AA 
!AA 
StringAA 
.AA 
EqualsAA 
(AA 
nameAA #
,AA# $
AzureADDefaultsAA% 4
.AA4 5 
AuthenticationSchemeAA5 I
)AAI J
)AAJ K
{BB 
returnCC 
;CC 
}DD 
varFF 
loginSettingsFF 
=FF #
GetAzureADSettingsAsyncFF  7
(FF7 8
)FF8 9
.FF9 :

GetAwaiterFF: D
(FFD E
)FFE F
.FFF G
	GetResultFFG P
(FFP Q
)FFQ R
;FFR S
ifGG 
(GG 
loginSettingsGG 
==GG  
nullGG! %
)GG% &
{HH 
returnII 
;II 
}JJ 
optionsLL 
.LL 
ClientIdLL 
=LL 
loginSettingsLL ,
.LL, -
AppIdLL- 2
;LL2 3
optionsMM 
.MM 
TenantIdMM 
=MM 
loginSettingsMM ,
.MM, -
TenantIdMM- 5
;MM5 6
optionsNN 
.NN 
InstanceNN 
=NN 
$strNN C
;NNC D
ifPP 
(PP 
loginSettingsPP 
.PP 
CallbackPathPP *
.PP* +
HasValuePP+ 3
)PP3 4
{QQ 
optionsRR 
.RR 
CallbackPathRR $
=RR% &
loginSettingsRR' 4
.RR4 5
CallbackPathRR5 A
;RRA B
}SS 
}TT 	
publicVV 
voidVV 
	ConfigureVV 
(VV 
AzureADOptionsVV ,
optionsVV- 4
)VV4 5
=>VV6 8
DebugVV9 >
.VV> ?
FailVV? C
(VVC D
$strVVD u
)VVu v
;VVv w
publicXX 
voidXX 
	ConfigureXX 
(XX 
stringXX $
nameXX% )
,XX) *
PolicySchemeOptionsXX+ >
optionsXX? F
)XXF G
{YY 	
ifZZ 
(ZZ 
!ZZ 
StringZZ 
.ZZ 
EqualsZZ 
(ZZ 
nameZZ #
,ZZ# $
AzureADDefaultsZZ% 4
.ZZ4 5 
AuthenticationSchemeZZ5 I
)ZZI J
)ZZJ K
{[[ 
return\\ 
;\\ 
}]] 
options__ 
.__ 
ForwardDefault__ "
=__# $
$str__% 8
;__8 9
options`` 
.`` 
ForwardChallenge`` $
=``% &
AzureADDefaults``' 6
.``6 7
OpenIdScheme``7 C
;``C D
}aa 	
publicbb 
voidbb 
	Configurebb 
(bb 
PolicySchemeOptionsbb 1
optionsbb2 9
)bb9 :
=>bb; =
Debugbb> C
.bbC D
FailbbD H
(bbH I
$strbbI z
)bbz {
;bb{ |
privatedd 
asyncdd 
Taskdd 
<dd 
AzureADSettingsdd *
>dd* +#
GetAzureADSettingsAsyncdd, C
(ddC D
)ddD E
{ee 	
varff 
settingsff 
=ff 
awaitff  
_azureADServiceff! 0
.ff0 1
GetSettingsAsyncff1 A
(ffA B
)ffB C
;ffC D
ifgg 
(gg 
_azureADServicegg 
.gg  
ValidateSettingsgg  0
(gg0 1
settingsgg1 9
)gg9 :
.gg: ;
Anygg; >
(gg> ?
resultgg? E
=>ggF H
resultggI O
!=ggP R
ValidationResultggS c
.ggc d
Successggd k
)ggk l
)ggl m
{hh 
ifii 
(ii 
_shellSettingsii "
.ii" #
Stateii# (
==ii) +
TenantStateii, 7
.ii7 8
Runningii8 ?
)ii? @
{jj 
_loggerkk 
.kk 

LogWarningkk &
(kk& '
$strkk' `
)kk` a
;kka b
}ll 
returnnn 
nullnn 
;nn 
}oo 
returnqq 
settingsqq 
;qq 
}rr 	
}ss 
}tt ‰
∞D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Configuration\CookieOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Configuration/ <
{ 
internal 
class &
CookieOptionsConfiguration -
:. /"
IConfigureNamedOptions0 F
<F G'
CookieAuthenticationOptionsG b
>b c
{ 
private 
readonly 
string 
_tenantPrefix  -
;- .
public &
CookieOptionsConfiguration )
() *
ShellSettings* 7
shellSettings8 E
)E F
{ 	
_tenantPrefix 
= 
$str 
+  !
shellSettings" /
./ 0
RequestUrlPrefix0 @
;@ A
} 	
public 
void 
	Configure 
( 
string $
name% )
,) *'
CookieAuthenticationOptions+ F
optionsG N
)N O
{ 	
if 
( 
name 
!= 
$str +
)+ ,
{ 
return 
; 
} 
options 
. 
Cookie 
. 
Path 
=  !
_tenantPrefix" /
;/ 0
options 
. 
	LoginPath 
= 
$"  "%
~/AzureAD/Account/SignIn/" ;
{; <
AzureADDefaults< K
.K L 
AuthenticationSchemeL `
}` a
"a b
;b c
options 
. 

LogoutPath 
=  
$"! #&
~/AzureAD/Account/SignOut/# =
{= >
AzureADDefaults> M
.M N 
AuthenticationSchemeN b
}b c
"c d
;d e
options   
.   
AccessDeniedPath   $
=  % &
$str  ' G
;  G H
}!! 	
public## 
void## 
	Configure## 
(## '
CookieAuthenticationOptions## 9
options##: A
)##A B
=>##C E
Debug##F K
.##K L
Fail##L P
(##P Q
$str	##Q Ç
)
##Ç É
;
##É Ñ
}$$ 
}%% •8
∫D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Configuration\MicrosoftAccountOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Configuration/ <
{ 
public 

class 0
$MicrosoftAccountOptionsConfiguration 5
:6 7
IConfigureOptions 
< !
AuthenticationOptions /
>/ 0
,0 1"
IConfigureNamedOptions 
< #
MicrosoftAccountOptions 6
>6 7
{ 
private 
readonly $
IMicrosoftAccountService 1$
_microsoftAccountService2 J
;J K
private 
readonly #
IDataProtectionProvider 0#
_dataProtectionProvider1 H
;H I
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly 
ILogger  
_logger! (
;( )
public 0
$MicrosoftAccountOptionsConfiguration 3
(3 4$
IMicrosoftAccountService $#
microsoftAccountService% <
,< =#
IDataProtectionProvider #"
dataProtectionProvider$ :
,: ;
ShellSettings 
shellSettings '
,' (
ILogger 
< 0
$MicrosoftAccountOptionsConfiguration 8
>8 9
logger: @
)@ A
{   	$
_microsoftAccountService!! $
=!!% &#
microsoftAccountService!!' >
;!!> ?#
_dataProtectionProvider"" #
=""$ %"
dataProtectionProvider""& <
;""< =
_shellSettings## 
=## 
shellSettings## *
;##* +
_logger$$ 
=$$ 
logger$$ 
;$$ 
}%% 	
public'' 
void'' 
	Configure'' 
('' !
AuthenticationOptions'' 3
options''4 ;
)''; <
{(( 	
var)) 
settings)) 
=)) ,
 GetMicrosoftAccountSettingsAsync)) ;
()); <
)))< =
.))= >

GetAwaiter))> H
())H I
)))I J
.))J K
	GetResult))K T
())T U
)))U V
;))V W
if** 
(** 
settings** 
==** 
null**  
)**  !
{++ 
return,, 
;,, 
}-- 
options00 
.00 
	AddScheme00 
(00 $
MicrosoftAccountDefaults00 6
.006 7 
AuthenticationScheme007 K
,00K L
builder00M T
=>00U W
{11 
builder22 
.22 
DisplayName22 #
=22$ %
$str22& 9
;229 :
builder33 
.33 
HandlerType33 #
=33$ %
typeof33& ,
(33, -#
MicrosoftAccountHandler33- D
)33D E
;33E F
}44 
)44 
;44 
}55 	
public77 
void77 
	Configure77 
(77 
string77 $
name77% )
,77) *#
MicrosoftAccountOptions77+ B
options77C J
)77J K
{88 	
if:: 
(:: 
!:: 
String:: 
.:: 
Equals:: 
(:: 
name:: #
,::# $$
MicrosoftAccountDefaults::% =
.::= > 
AuthenticationScheme::> R
)::R S
)::S T
{;; 
return<< 
;<< 
}== 
var?? 
loginSettings?? 
=?? ,
 GetMicrosoftAccountSettingsAsync??  @
(??@ A
)??A B
.??B C

GetAwaiter??C M
(??M N
)??N O
.??O P
	GetResult??P Y
(??Y Z
)??Z [
;??[ \
if@@ 
(@@ 
loginSettings@@ 
==@@  
null@@! %
)@@% &
{AA 
returnBB 
;BB 
}CC 
optionsEE 
.EE 
ClientIdEE 
=EE 
loginSettingsEE ,
.EE, -
AppIdEE- 2
;EE2 3
tryGG 
{HH 
optionsII 
.II 
ClientSecretII $
=II% &#
_dataProtectionProviderII' >
.II> ?
CreateProtectorII? N
(IIN O,
 MicrosoftAuthenticationConstantsIIO o
.IIo p
FeaturesIIp x
.IIx y
MicrosoftAccount	IIy â
)
IIâ ä
.
IIä ã
	Unprotect
IIã î
(
IIî ï
loginSettings
IIï ¢
.
II¢ £
	AppSecret
II£ ¨
)
II¨ ≠
;
II≠ Æ
}JJ 
catchKK 
{LL 
_loggerMM 
.MM 
LogErrorMM  
(MM  !
$str	MM! ç
)
MMç é
;
MMé è
}NN 
ifPP 
(PP 
loginSettingsPP 
.PP 
CallbackPathPP *
.PP* +
HasValuePP+ 3
)PP3 4
{QQ 
optionsRR 
.RR 
CallbackPathRR $
=RR% &
loginSettingsRR' 4
.RR4 5
CallbackPathRR5 A
;RRA B
}SS 
optionsUU 
.UU 

SaveTokensUU 
=UU  
loginSettingsUU! .
.UU. /

SaveTokensUU/ 9
;UU9 :
}VV 	
publicXX 
voidXX 
	ConfigureXX 
(XX #
MicrosoftAccountOptionsXX 5
optionsXX6 =
)XX= >
=>XX? A
DebugXXB G
.XXG H
FailXXH L
(XXL M
$strXXM ~
)XX~ 
;	XX Ä
privateZZ 
asyncZZ 
TaskZZ 
<ZZ $
MicrosoftAccountSettingsZZ 3
>ZZ3 4,
 GetMicrosoftAccountSettingsAsyncZZ5 U
(ZZU V
)ZZV W
{[[ 	
var\\ 
settings\\ 
=\\ 
await\\  $
_microsoftAccountService\\! 9
.\\9 :
GetSettingsAsync\\: J
(\\J K
)\\K L
;\\L M
if]] 
(]] $
_microsoftAccountService]] (
.]]( )
ValidateSettings]]) 9
(]]9 :
settings]]: B
)]]B C
.]]C D
Any]]D G
(]]G H
result]]H N
=>]]O Q
result]]R X
!=]]Y [
ValidationResult]]\ l
.]]l m
Success]]m t
)]]t u
)]]u v
{^^ 
if__ 
(__ 
_shellSettings__ "
.__" #
State__# (
==__) +
TenantState__, 7
.__7 8
Running__8 ?
)__? @
{`` 
_loggeraa 
.aa 

LogWarningaa &
(aa& '
$straa' j
)aaj k
;aak l
}bb 
returndd 
nulldd 
;dd 
}ee 
returngg 
settingsgg 
;gg 
}hh 	
}ii 
}jj √!
∑D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Configuration\OpenIdConnectOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Configuration/ <
{ 
internal 
class -
!OpenIdConnectOptionsConfiguration 4
:5 6"
IConfigureNamedOptions7 M
<M N 
OpenIdConnectOptionsN b
>b c
{ 
private 
readonly 
IOptionsMonitor (
<( )
AzureADOptions) 7
>7 8
_azureADOptions9 H
;H I
private 
readonly 
IAzureADService (
_azureADService) 8
;8 9
public -
!OpenIdConnectOptionsConfiguration 0
(0 1
IOptionsMonitor1 @
<@ A
AzureADOptionsA O
>O P
azureADOptionsQ _
,_ `
IAzureADServicea p
azureADServiceq 
)	 Ä
{ 	
_azureADOptions 
= 
azureADOptions ,
;, -
_azureADService 
= 
azureADService ,
;, -
} 	
public 
void 
	Configure 
( 
string $
name% )
,) * 
OpenIdConnectOptions+ ?
options@ G
)G H
{ 	
if 
( 
name 
!= 
AzureADDefaults '
.' (
OpenIdScheme( 4
)4 5
{ 
return 
; 
} 
var   
azureADOptions   
=    
_azureADOptions  ! 0
.  0 1
Get  1 4
(  4 5
AzureADDefaults  5 D
.  D E 
AuthenticationScheme  E Y
)  Y Z
;  Z [
options"" 
."" 
ClientId"" 
="" 
azureADOptions"" -
.""- .
ClientId"". 6
;""6 7
options## 
.## 
ClientSecret##  
=##! "
azureADOptions### 1
.##1 2
ClientSecret##2 >
;##> ?
options$$ 
.$$ 
	Authority$$ 
=$$ 
new$$  #
Uri$$$ '
($$' (
new$$( +
Uri$$, /
($$/ 0
azureADOptions$$0 >
.$$> ?
Instance$$? G
)$$G H
,$$H I
azureADOptions$$J X
.$$X Y
TenantId$$Y a
)$$a b
.$$b c
ToString$$c k
($$k l
)$$l m
;$$m n
options%% 
.%% 
CallbackPath%%  
=%%! "
azureADOptions%%# 1
.%%1 2
CallbackPath%%2 >
??%%? A
options%%B I
.%%I J
CallbackPath%%J V
;%%V W
options&& 
.&& !
SignedOutCallbackPath&& )
=&&* +
azureADOptions&&, :
.&&: ;!
SignedOutCallbackPath&&; P
??&&Q S
options&&T [
.&&[ \!
SignedOutCallbackPath&&\ q
;&&q r
options'' 
.'' 
SignInScheme''  
=''! "
$str''# 6
;''6 7
options(( 
.(( 
UseTokenLifetime(( $
=((% &
true((' +
;((+ ,
var** 
settings** 
=** 
_azureADService** *
.*** +
GetSettingsAsync**+ ;
(**; <
)**< =
.**= >

GetAwaiter**> H
(**H I
)**I J
.**J K
	GetResult**K T
(**T U
)**U V
;**V W
options++ 
.++ 

SaveTokens++ 
=++  
settings++! )
.++) *

SaveTokens++* 4
;++4 5
}-- 	
public// 
void// 
	Configure// 
(//  
OpenIdConnectOptions// 2
options//3 :
)//: ;
=>//< >
Debug//? D
.//D E
Fail//E I
(//I J
$str//J {
)//{ |
;//| }
}00 
}11 §8
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Drivers\AzureADSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Drivers/ 6
{ 
public 

class (
AzureADSettingsDisplayDriver -
:. / 
SectionDisplayDriver0 D
<D E
ISiteE J
,J K
AzureADSettingsL [
>[ \
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
public (
AzureADSettingsDisplayDriver +
(+ ,!
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
(!!< =
AzureADSettings!!= L
settings!!M U
,!!U V
BuildEditorContext!!W i
context!!j q
)!!q r
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
.$$] ^)
ManageMicrosoftAuthentication$$^ {
)$${ |
)$$| }
{%% 
return&& 
null&& 
;&& 
}'' 
return(( 

Initialize(( 
<(( $
AzureADSettingsViewModel(( 6
>((6 7
(((7 8
$str((8 N
,((N O
model((P U
=>((V X
{)) 
model** 
.** 
DisplayName** !
=**" #
settings**$ ,
.**, -
DisplayName**- 8
;**8 9
model++ 
.++ 
AppId++ 
=++ 
settings++ &
.++& '
AppId++' ,
;++, -
model,, 
.,, 
TenantId,, 
=,,  
settings,,! )
.,,) *
TenantId,,* 2
;,,2 3
model-- 
.-- 

SaveTokens--  
=--! "
settings--# +
.--+ ,

SaveTokens--, 6
;--6 7
if.. 
(.. 
settings.. 
... 
CallbackPath.. )
...) *
HasValue..* 2
)..2 3
{// 
model00 
.00 
CallbackPath00 &
=00' (
settings00) 1
.001 2
CallbackPath002 >
.00> ?
Value00? D
;00D E
}11 
}22 
)22 
.22 
Location22 
(22 
$str22 #
)22# $
.22$ %
OnGroup22% ,
(22, -,
 MicrosoftAuthenticationConstants22- M
.22M N
Features22N V
.22V W
AAD22W Z
)22Z [
;22[ \
}33 	
public55 
override55 
async55 
Task55 "
<55" #
IDisplayResult55# 1
>551 2
UpdateAsync553 >
(55> ?
AzureADSettings55? N
settings55O W
,55W X
BuildEditorContext55Y k
context55l s
)55s t
{66 	
if77 
(77 
context77 
.77 
GroupId77 
==77  ",
 MicrosoftAuthenticationConstants77# C
.77C D
Features77D L
.77L M
AAD77M P
)77P Q
{88 
var99 
user99 
=99  
_httpContextAccessor99 /
.99/ 0
HttpContext990 ;
?99; <
.99< =
User99= A
;99A B
if:: 
(:: 
user:: 
==:: 
null::  
||::! #
!::$ %
await::% *!
_authorizationService::+ @
.::@ A
AuthorizeAsync::A O
(::O P
user::P T
,::T U
Permissions::V a
.::a b)
ManageMicrosoftAuthentication::b 
)	:: Ä
)
::Ä Å
{;; 
return<< 
null<< 
;<<  
}== 
var>> 
model>> 
=>> 
new>> $
AzureADSettingsViewModel>>  8
(>>8 9
)>>9 :
;>>: ;
await?? 
context?? 
.?? 
Updater?? %
.??% &
TryUpdateModelAsync??& 9
(??9 :
model??: ?
,??? @
Prefix??A G
)??G H
;??H I
if@@ 
(@@ 
context@@ 
.@@ 
Updater@@ #
.@@# $

ModelState@@$ .
.@@. /
IsValid@@/ 6
)@@6 7
{AA 
settingsBB 
.BB 
DisplayNameBB (
=BB) *
modelBB+ 0
.BB0 1
DisplayNameBB1 <
;BB< =
settingsCC 
.CC 
AppIdCC "
=CC# $
modelCC% *
.CC* +
AppIdCC+ 0
;CC0 1
settingsDD 
.DD 
TenantIdDD %
=DD& '
modelDD( -
.DD- .
TenantIdDD. 6
;DD6 7
settingsEE 
.EE 
CallbackPathEE )
=EE* +
modelEE, 1
.EE1 2
CallbackPathEE2 >
;EE> ?
settingsFF 
.FF 

SaveTokensFF '
=FF( )
modelFF* /
.FF/ 0

SaveTokensFF0 :
;FF: ;
awaitGG 

_shellHostGG $
.GG$ %$
ReleaseShellContextAsyncGG% =
(GG= >
_shellSettingsGG> L
)GGL M
;GGM N
}HH 
}II 
returnJJ 
awaitJJ 
	EditAsyncJJ "
(JJ" #
settingsJJ# +
,JJ+ ,
contextJJ- 4
)JJ4 5
;JJ5 6
}KK 	
}LL 
}MM œI
µD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Drivers\MicrosoftAccountSettingsDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Drivers/ 6
{ 
public 

class 1
%MicrosoftAccountSettingsDisplayDriver 6
:7 8 
SectionDisplayDriver9 M
<M N
ISiteN S
,S T$
MicrosoftAccountSettingsU m
>m n
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
public 1
%MicrosoftAccountSettingsDisplayDriver 4
(4 5!
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
<   1
%MicrosoftAccountSettingsDisplayDriver   9
>  9 :
logger  ; A
)  A B
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
(**< =$
MicrosoftAccountSettings**= U
settings**V ^
,**^ _
BuildEditorContext**` r
context**s z
)**z {
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
.--] ^)
ManageMicrosoftAuthentication--^ {
)--{ |
)--| }
{.. 
return// 
null// 
;// 
}00 
return22 

Initialize22 
<22 -
!MicrosoftAccountSettingsViewModel22 ?
>22? @
(22@ A
$str22A `
,22` a
model22b g
=>22h j
{33 
model44 
.44 
AppId44 
=44 
settings44 &
.44& '
AppId44' ,
;44, -
if55 
(55 
!55 
string55 
.55 
IsNullOrWhiteSpace55 .
(55. /
settings55/ 7
.557 8
	AppSecret558 A
)55A B
)55B C
{66 
try77 
{88 
var99 
	protector99 %
=99& '#
_dataProtectionProvider99( ?
.99? @
CreateProtector99@ O
(99O P,
 MicrosoftAuthenticationConstants99P p
.99p q
Features99q y
.99y z
MicrosoftAccount	99z ä
)
99ä ã
;
99ã å
model:: 
.:: 
	AppSecret:: '
=::( )
	protector::* 3
.::3 4
	Unprotect::4 =
(::= >
settings::> F
.::F G
	AppSecret::G P
)::P Q
;::Q R
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
$str	>>) É
)
>>É Ñ
;
>>Ñ Ö
model?? 
.?? 
	AppSecret?? '
=??( )
string??* 0
.??0 1
Empty??1 6
;??6 7
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
.EE 
	AppSecretEE #
=EE$ %
stringEE& ,
.EE, -
EmptyEE- 2
;EE2 3
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
(LL, -,
 MicrosoftAuthenticationConstantsLL- M
.LLM N
FeaturesLLN V
.LLV W
MicrosoftAccountLLW g
)LLg h
;LLh i
}MM 	
publicOO 
overrideOO 
asyncOO 
TaskOO "
<OO" #
IDisplayResultOO# 1
>OO1 2
UpdateAsyncOO3 >
(OO> ?$
MicrosoftAccountSettingsOO? W
settingsOOX `
,OO` a
BuildEditorContextOOb t
contextOOu |
)OO| }
{PP 	
ifQQ 
(QQ 
contextQQ 
.QQ 
GroupIdQQ 
==QQ  ",
 MicrosoftAuthenticationConstantsQQ# C
.QQC D
FeaturesQQD L
.QQL M
MicrosoftAccountQQM ]
)QQ] ^
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
.TTa b)
ManageMicrosoftAuthenticationTTb 
)	TT Ä
)
TTÄ Å
{UU 
returnVV 
nullVV 
;VV  
}WW 
varYY 
modelYY 
=YY 
newYY -
!MicrosoftAccountSettingsViewModelYY  A
(YYA B
)YYB C
;YYC D
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
(^^K L,
 MicrosoftAuthenticationConstants^^L l
.^^l m
Features^^m u
.^^u v
MicrosoftAccount	^^v Ü
)
^^Ü á
;
^^á à
settings`` 
.`` 
AppId`` "
=``# $
model``% *
.``* +
AppId``+ 0
;``0 1
settingsaa 
.aa 
	AppSecretaa &
=aa' (
	protectoraa) 2
.aa2 3
Protectaa3 :
(aa: ;
modelaa; @
.aa@ A
	AppSecretaaA J
)aaJ K
;aaK L
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
}jj ≥
êD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str %
,% &
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
$str		 )
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
= ,
 MicrosoftAuthenticationConstants	 )
.) *
Features* 2
.2 3
MicrosoftAccount3 C
,C D
Name 
=	 

$str -
,- .
Category 
= 
$str )
,) *
Description 
= 
$str E
) 
] 
[ 
assembly 	
:	 

Feature 
( 
Id 
= ,
 MicrosoftAuthenticationConstants	 )
.) *
Features* 2
.2 3
AAD3 6
,6 7
Name 
=	 

$str <
,< =
Category 
= 
$str )
,) *
Description 
= 
$str R
) 
] ø
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\MIcrosoftAuthenticationConstants.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
{ 
public 

static 
class ,
 MicrosoftAuthenticationConstants 8
{ 
public 
static 
class 
Features $
{ 	
public 
const 
string 
MicrosoftAccount  0
=1 2
$str3 j
;j k
public 
const 
string 
AAD  #
=$ %
$str& T
;T U
}		 	
}

 
} ˇ
ìD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Permissions.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
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
 ))
ManageMicrosoftAuthentication

* G
= 
new 

Permission 
( 
nameof #
(# $)
ManageMicrosoftAuthentication$ A
)A B
,B C
$strD n
)n o
;o p
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
{) *)
ManageMicrosoftAuthentication+ H
}I J
.J K
AsEnumerableK W
(W X
)X Y
)Y Z
;Z [
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
{ )
ManageMicrosoftAuthentication 1
} 
} 
; 
} 	
} 
} Ö
£D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Recipes\AzureADSettingsStep.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Recipes/ 6
{		 
public 

class 
AzureADSettingsStep $
:% &
IRecipeStepHandler' 9
{ 
private 
readonly 
IAzureADService (
_azureADService) 8
;8 9
public 
AzureADSettingsStep "
(" #
IAzureADService# 2
azureADService3 A
)A B
{ 	
_azureADService 
= 
azureADService ,
;, -
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
(3 4
AzureADSettings4 C
)C D
,D E
StringComparisonF V
.V W
OrdinalIgnoreCaseW h
)h i
)i j
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
<- .$
AzureADSettingsStepModel. F
>F G
(G H
)H I
;I J
var 
settings 
= 
await  
_azureADService! 0
.0 1
LoadSettingsAsync1 B
(B C
)C D
;D E
settings   
.   
AppId   
=   
model   "
.  " #
AppId  # (
;  ( )
settings!! 
.!! 
TenantId!! 
=!! 
model!!  %
.!!% &
TenantId!!& .
;!!. /
settings"" 
."" 
DisplayName""  
=""! "
model""# (
.""( )
DisplayName"") 4
;""4 5
settings## 
.## 
CallbackPath## !
=##" #
model##$ )
.##) *
CallbackPath##* 6
;##6 7
await%% 
_azureADService%% !
.%%! "
UpdateSettingsAsync%%" 5
(%%5 6
settings%%6 >
)%%> ?
;%%? @
}&& 	
}'' 
public)) 

class)) $
AzureADSettingsStepModel)) )
{** 
public++ 
string++ 
DisplayName++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
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
string-- 
TenantId-- 
{--  
get--! $
;--$ %
set--& )
;--) *
}--+ ,
public.. 
string.. 
CallbackPath.. "
{..# $
get..% (
;..( )
set..* -
;..- .
}../ 0
}// 
}00 –
¨D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Recipes\MicrosoftAccountSettingsStep.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Recipes/ 6
{		 
public 

class (
MicrosoftAccountSettingsStep -
:. /
IRecipeStepHandler0 B
{ 
private 
readonly $
IMicrosoftAccountService 1$
_microsoftAccountService2 J
;J K
public (
MicrosoftAccountSettingsStep +
(+ ,$
IMicrosoftAccountService, D#
microsoftAccountServiceE \
)\ ]
{ 	$
_microsoftAccountService $
=% &#
microsoftAccountService' >
;> ?
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
(3 4$
MicrosoftAccountSettings4 L
)L M
,M N
StringComparisonO _
._ `
OrdinalIgnoreCase` q
)q r
)r s
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
<- .-
!MicrosoftAccountSettingsStepModel. O
>O P
(P Q
)Q R
;R S
var 
settings 
= 
await  $
_microsoftAccountService! 9
.9 :
LoadSettingsAsync: K
(K L
)L M
;M N
settings   
.   
AppId   
=   
model   "
.  " #
AppId  # (
;  ( )
settings!! 
.!! 
	AppSecret!! 
=!!  
model!!! &
.!!& '
	AppSecret!!' 0
;!!0 1
settings"" 
."" 
CallbackPath"" !
=""" #
model""$ )
."") *
CallbackPath""* 6
;""6 7
await$$ $
_microsoftAccountService$$ *
.$$* +
UpdateSettingsAsync$$+ >
($$> ?
settings$$? G
)$$G H
;$$H I
}%% 	
}&& 
public(( 

class(( -
!MicrosoftAccountSettingsStepModel(( 2
{)) 
public** 
string** 
AppId** 
{** 
get** !
;**! "
set**# &
;**& '
}**( )
public++ 
string++ 
	AppSecret++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
public,, 
string,, 
CallbackPath,, "
{,,# $
get,,% (
;,,( )
set,,* -
;,,- .
},,/ 0
}-- 
}.. ”3
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Services\AzureADService.cs
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
	Microsoft

 
.

  
Authentication

  .
.

. /
Services

/ 7
{ 
public 

class 
AzureADService 
:  !
IAzureADService" 1
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
public 
AzureADService 
( 
ISiteService 
siteService $
,$ %
IStringLocalizer 
< 
AzureADService +
>+ ,
stringLocalizer- <
)< =
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
< 
AzureADSettings )
>) *
GetSettingsAsync+ ;
(; <
)< =
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
<  
AzureADSettings  /
>/ 0
(0 1
)1 2
;2 3
} 	
public 
async 
Task 
< 
AzureADSettings )
>) *
LoadSettingsAsync+ <
(< =
)= >
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
<""  
AzureADSettings""  /
>""/ 0
(""0 1
)""1 2
;""2 3
}## 	
public%% 
async%% 
Task%% 
UpdateSettingsAsync%% -
(%%- .
AzureADSettings%%. =
settings%%> F
)%%F G
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
<-- 
AzureADSettings-- +
>--+ ,
(--, -
nameof--- 3
(--3 4
AzureADSettings--4 C
)--C D
,--D E
aspect--F L
=>--M O
{.. 
aspect// 
.// 
AppId// 
=// 
settings// '
.//' (
AppId//( -
;//- .
aspect00 
.00 
CallbackPath00 #
=00$ %
settings00& .
.00. /
CallbackPath00/ ;
;00; <
aspect11 
.11 
DisplayName11 "
=11# $
settings11% -
.11- .
DisplayName11. 9
;119 :
aspect22 
.22 
TenantId22 
=22  !
settings22" *
.22* +
TenantId22+ 3
;223 4
}33 
)33 
;33 
await55 
_siteService55 
.55 #
UpdateSiteSettingsAsync55 6
(556 7
	container557 @
)55@ A
;55A B
}66 	
public88 
IEnumerable88 
<88 
ValidationResult88 +
>88+ ,
ValidateSettings88- =
(88= >
AzureADSettings88> M
settings88N V
)88V W
{99 	
if:: 
(:: 
settings:: 
==:: 
null::  
)::  !
{;; 
throw<< 
new<< !
ArgumentNullException<< /
(<</ 0
nameof<<0 6
(<<6 7
settings<<7 ?
)<<? @
)<<@ A
;<<A B
}== 
if?? 
(?? 
String?? 
.?? 
IsNullOrWhiteSpace?? )
(??) *
settings??* 2
.??2 3
DisplayName??3 >
)??> ?
)??? @
{@@ 
yieldAA 
returnAA 
newAA  
ValidationResultAA! 1
(AA1 2
SAA2 3
[AA3 4
$strAA4 M
]AAM N
,AAN O
newAAP S
stringAAT Z
[AAZ [
]AA[ \
{AA] ^
nameofAA_ e
(AAe f
settingsAAf n
.AAn o
DisplayNameAAo z
)AAz {
}AA| }
)AA} ~
;AA~ 
}BB 
ifDD 
(DD 
StringDD 
.DD 
IsNullOrWhiteSpaceDD )
(DD) *
settingsDD* 2
.DD2 3
AppIdDD3 8
)DD8 9
)DD9 :
{EE 
yieldFF 
returnFF 
newFF  
ValidationResultFF! 1
(FF1 2
SFF2 3
[FF3 4
$strFF4 G
]FFG H
,FFH I
newFFJ M
stringFFN T
[FFT U
]FFU V
{FFW X
nameofFFY _
(FF_ `
settingsFF` h
.FFh i
AppIdFFi n
)FFn o
}FFp q
)FFq r
;FFr s
}GG 
ifII 
(II 
StringII 
.II 
IsNullOrWhiteSpaceII )
(II) *
settingsII* 2
.II2 3
TenantIdII3 ;
)II; <
)II< =
{JJ 
yieldKK 
returnKK 
newKK  
ValidationResultKK! 1
(KK1 2
SKK2 3
[KK3 4
$strKK4 J
]KKJ K
,KKK L
newKKM P
stringKKQ W
[KKW X
]KKX Y
{KKZ [
nameofKK\ b
(KKb c
settingsKKc k
.KKk l
TenantIdKKl t
)KKt u
}KKv w
)KKw x
;KKx y
}LL 
}MM 	
}NN 
}OO ﬁ
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Services\IAzureADService.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Services/ 7
{ 
public 

	interface 
IAzureADService $
{		 
Task

 
<

 
AzureADSettings

 
>

 
GetSettingsAsync

 .
(

. /
)

/ 0
;

0 1
Task 
< 
AzureADSettings 
> 
LoadSettingsAsync /
(/ 0
)0 1
;1 2
Task 
UpdateSettingsAsync  
(  !
AzureADSettings! 0
settings1 9
)9 :
;: ;
IEnumerable 
< 
ValidationResult $
>$ %
ValidateSettings& 6
(6 7
AzureADSettings7 F
settingsG O
)O P
;P Q
} 
} î	
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Services\IMicrosoftAccountService.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Services/ 7
{ 
public 

	interface $
IMicrosoftAccountService -
{		 
Task

 
<

 $
MicrosoftAccountSettings
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
MicrosoftAccountSettings %
>% &
LoadSettingsAsync' 8
(8 9
)9 :
;: ;
Task 
UpdateSettingsAsync  
(  !$
MicrosoftAccountSettings! 9
settings: B
)B C
;C D
IEnumerable 
< 
ValidationResult $
>$ %
ValidateSettings& 6
(6 7$
MicrosoftAccountSettings7 O
settingsP X
)X Y
;Y Z
} 
} ß.
®D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Services\MicrosoftAccountService.cs
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
	Microsoft

 
.

  
Authentication

  .
.

. /
Services

/ 7
{ 
public 

class #
MicrosoftAccountService (
:) *$
IMicrosoftAccountService+ C
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
public #
MicrosoftAccountService &
(& '
ISiteService 
siteService $
,$ %
IStringLocalizer 
< #
MicrosoftAccountService 4
>4 5
stringLocalizer6 E
)E F
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
< $
MicrosoftAccountSettings 2
>2 3
GetSettingsAsync4 D
(D E
)E F
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
<  $
MicrosoftAccountSettings  8
>8 9
(9 :
): ;
;; <
} 	
public 
async 
Task 
< $
MicrosoftAccountSettings 2
>2 3
LoadSettingsAsync4 E
(E F
)F G
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
<""  $
MicrosoftAccountSettings""  8
>""8 9
(""9 :
)"": ;
;""; <
}## 	
public%% 
async%% 
Task%% 
UpdateSettingsAsync%% -
(%%- .$
MicrosoftAccountSettings%%. F
settings%%G O
)%%O P
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
<-- $
MicrosoftAccountSettings-- 4
>--4 5
(--5 6
nameof--6 <
(--< =$
MicrosoftAccountSettings--= U
)--U V
,--V W
aspect--X ^
=>--_ a
{.. 
aspect// 
.// 
AppId// 
=// 
settings// '
.//' (
AppId//( -
;//- .
aspect00 
.00 
	AppSecret00  
=00! "
settings00# +
.00+ ,
	AppSecret00, 5
;005 6
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
(77= >$
MicrosoftAccountSettings77> V
settings77W _
)77_ `
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
.>>2 3
AppId>>3 8
)>>8 9
)>>9 :
{?? 
yield@@ 
return@@ 
new@@  
ValidationResult@@! 1
(@@1 2
S@@2 3
[@@3 4
$str@@4 G
]@@G H
,@@H I
new@@J M
string@@N T
[@@T U
]@@U V
{@@W X
nameof@@Y _
(@@_ `
settings@@` h
.@@h i
AppId@@i n
)@@n o
}@@p q
)@@q r
;@@r s
}AA 
ifCC 
(CC 
StringCC 
.CC 
IsNullOrWhiteSpaceCC )
(CC) *
settingsCC* 2
.CC2 3
	AppSecretCC3 <
)CC< =
)CC= >
{DD 
yieldEE 
returnEE 
newEE  
ValidationResultEE! 1
(EE1 2
SEE2 3
[EE3 4
$strEE4 K
]EEK L
,EEL M
newEEN Q
stringEER X
[EEX Y
]EEY Z
{EE[ \
nameofEE] c
(EEc d
settingsEEd l
.EEl m
	AppSecretEEm v
)EEv w
}EEx y
)EEy z
;EEz {
}FF 
}GG 	
}HH 
}II ◊	
†D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Settings\AzureADSettings.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Settings/ 7
{ 
public 

class 
AzureADSettings  
{ 
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
string 
AppId 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
TenantId		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 

PathString

 
CallbackPath

 &
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
3 4
public 
bool 

SaveTokens 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} À
©D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Settings\MicrosoftAccountSettings.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /
Settings/ 7
{ 
public 

class $
MicrosoftAccountSettings )
{ 
public 
string 
AppId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	AppSecret 
{  !
get" %
;% &
set' *
;* +
}, -
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
} ø6
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\Startup.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
{ 
[ 
Feature 
( ,
 MicrosoftAuthenticationConstants -
.- .
Features. 6
.6 7
MicrosoftAccount7 G
)G H
]H I
public 

class #
MicrosoftAccountStartup (
:) *
StartupBase+ 6
{ 
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
TryAddEnumerable %
(% &
new& )
ServiceDescriptor* ;
(; <
typeof< B
(B C
IPermissionProviderC V
)V W
,W X
typeofY _
(_ `
Permissions` k
)k l
,l m
ServiceLifetimen }
.} ~
Scoped	~ Ñ
)
Ñ Ö
)
Ö Ü
;
Ü á
services 
. 
AddSingleton !
<! "$
IMicrosoftAccountService" :
,: ;#
MicrosoftAccountService< S
>S T
(T U
)U V
;V W
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 51
%MicrosoftAccountSettingsDisplayDriver6 [
>[ \
(\ ]
)] ^
;^ _
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3%
AdminMenuMicrosoftAccount4 M
>M N
(N O
)O P
;P Q
services 
. "
AddRecipeExecutionStep +
<+ ,(
MicrosoftAccountSettingsStep, H
>H I
(I J
)J K
;K L
services!! 
.!! 
TryAddEnumerable!! %
(!!% &
new!!& )
[!!) *
]!!* +
{"" 
ServiceDescriptor$$ !
.$$! "
	Transient$$" +
<$$+ ,
IConfigureOptions$$, =
<$$= >!
AuthenticationOptions$$> S
>$$S T
,$$T U0
$MicrosoftAccountOptionsConfiguration$$V z
>$$z {
($${ |
)$$| }
,$$} ~
ServiceDescriptor%% !
.%%! "
	Transient%%" +
<%%+ ,
IConfigureOptions%%, =
<%%= >#
MicrosoftAccountOptions%%> U
>%%U V
,%%V W0
$MicrosoftAccountOptionsConfiguration%%X |
>%%| }
(%%} ~
)%%~ 
,	%% Ä
ServiceDescriptor'' !
.''! "
	Transient''" +
<''+ ,!
IPostConfigureOptions'', A
<''A B#
MicrosoftAccountOptions''B Y
>''Y Z
,''Z [%
OAuthPostConfigureOptions''\ u
<''u v$
MicrosoftAccountOptions	''v ç
,
''ç é%
MicrosoftAccountHandler
''é •
>
''• ¶
>
''¶ ß
(
''ß ®
)
''® ©
}(( 
)(( 
;(( 
})) 	
}** 
[,, 
Feature,, 
(,, ,
 MicrosoftAuthenticationConstants,, -
.,,- .
Features,,. 6
.,,6 7
AAD,,7 :
),,: ;
],,; <
public-- 

class-- 
AzureADStartup-- 
:--  !
StartupBase--" -
{.. 
public// 
override// 
void// 
ConfigureServices// .
(//. /
IServiceCollection/// A
services//B J
)//J K
{00 	
services11 
.11 
TryAddEnumerable11 %
(11% &
new11& )
ServiceDescriptor11* ;
(11; <
typeof11< B
(11B C
IPermissionProvider11C V
)11V W
,11W X
typeof11Y _
(11_ `
Permissions11` k
)11k l
,11l m
ServiceLifetime11n }
.11} ~
Scoped	11~ Ñ
)
11Ñ Ö
)
11Ö Ü
;
11Ü á
services33 
.33 
AddSingleton33 !
<33! "
IAzureADService33" 1
,331 2
AzureADService333 A
>33A B
(33B C
)33C D
;33D E
services44 
.44 "
AddRecipeExecutionStep44 +
<44+ ,
AzureADSettingsStep44, ?
>44? @
(44@ A
)44A B
;44B C
services55 
.55 
	AddScoped55 
<55 
IDisplayDriver55 -
<55- .
ISite55. 3
>553 4
,554 5(
AzureADSettingsDisplayDriver556 R
>55R S
(55S T
)55T U
;55U V
services66 
.66 
	AddScoped66 
<66 
INavigationProvider66 2
,662 3
AdminMenuAAD664 @
>66@ A
(66A B
)66B C
;66C D
services88 
.88 
TryAddEnumerable88 %
(88% &
new88& )
[88) *
]88* +
{99 
ServiceDescriptor@@ !
.@@! "
	Transient@@" +
<@@+ ,
IConfigureOptions@@, =
<@@= >!
AuthenticationOptions@@> S
>@@S T
,@@T U'
AzureADOptionsConfiguration@@V q
>@@q r
(@@r s
)@@s t
,@@t u
ServiceDescriptorAA !
.AA! "
	TransientAA" +
<AA+ ,
IConfigureOptionsAA, =
<AA= >
AzureADOptionsAA> L
>AAL M
,AAM N'
AzureADOptionsConfigurationAAO j
>AAj k
(AAk l
)AAl m
,AAm n
ServiceDescriptorBB !
.BB! "
	TransientBB" +
<BB+ ,
IConfigureOptionsBB, =
<BB= >
PolicySchemeOptionsBB> Q
>BBQ R
,BBR S'
AzureADOptionsConfigurationBBT o
>BBo p
(BBp q
)BBq r
,BBr s
ServiceDescriptorCC !
.CC! "
	TransientCC" +
<CC+ ,
IConfigureOptionsCC, =
<CC= > 
OpenIdConnectOptionsCC> R
>CCR S
,CCS T-
!OpenIdConnectOptionsConfigurationCCU v
>CCv w
(CCw x
)CCx y
,CCy z
ServiceDescriptorII !
.II! "
	SingletonII" +
<II+ ,!
IPostConfigureOptionsII, A
<IIA B 
OpenIdConnectOptionsIIB V
>IIV W
,IIW X-
!OpenIdConnectPostConfigureOptionsIIY z
>IIz {
(II{ |
)II| }
,II} ~
}JJ 
)JJ 
;JJ 
}KK 	
}LL 
}MM é
´D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\ViewModels\AzureADSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /

ViewModels/ 9
{ 
public 

class $
AzureADSettingsViewModel )
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
}. /
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
string 
AppId 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
AllowEmptyStrings #
=$ %
false& +
,+ ,
ErrorMessage- 9
=: ;
$str< S
)S T
]T U
public 
string 
TenantId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
RegularExpression	 
( 
$str U
,U V
ErrorMessageW c
=d e
$strf t
)t u
]u v
public 
string 
CallbackPath "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 

SaveTokens 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ÷
°D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\ViewModels\ErrorViewModel.cs
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
}		 Ú
¥D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Microsoft.Authentication\ViewModels\MicrosoftAccountSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
	Microsoft 
.  
Authentication  .
.. /

ViewModels/ 9
{ 
public 

class -
!MicrosoftAccountSettingsViewModel 2
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
$str< X
)X Y
]Y Z
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
< \
)

\ ]
]

] ^
public 
string 
	AppSecret 
{  !
get" %
;% &
set' *
;* +
}, -
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
} 