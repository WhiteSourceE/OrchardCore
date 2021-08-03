Å
}D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
Cors 
{ 
public 

class 
	AdminMenu 
: 
INavigationProvider 0
{		 
public

 
	AdminMenu

 
(

 
IStringLocalizer

 )
<

) *
	AdminMenu

* 3
>

3 4
	localizer

5 >
)

> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
IStringLocalizer 
S  !
{" #
get$ '
;' (
set) ,
;, -
}. /
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
,' (
configuration) 6
=>7 9
configuration: G
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
$str %
]% &
,& '
S( )
[) *
$str* 0
]0 1
.1 2
PrefixPosition2 @
(@ A
)A B
,B C
entryD I
=>J L
entryM R
. 
AddClass !
(! "
$str" (
)( )
.) *
Id* ,
(, -
$str- 3
)3 4
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC U
}V W
)W X
. 

Permission '
(' (
Permissions( 3
.3 4
ManageCorsSettings4 F
)F G
. 
LocalNav %
(% &
)& '
)   
)   
)!! 
;!! 
return## 
Task## 
.## 
CompletedTask## %
;##% &
}$$ 	
}%% 
}&& ÁG
èD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Controllers\AdminController.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 
Controllers &
{ 
[ 
Admin 

]
 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
private 
readonly 
CorsService $
_corsService% 1
;1 2
private 
readonly 
	INotifier "
	_notifier# ,
;, -
private 
readonly 
IStringLocalizer )
T* +
;+ ,
private 
readonly 
IHtmlLocalizer '
<' (
AdminController( 7
>7 8
TH9 ;
;; <
public 
AdminController 
( !
IAuthorizationService ! 
authorizationService" 6
,6 7
IStringLocalizer 
< 
AdminController ,
>, -
stringLocalizer. =
,= >
IHtmlLocalizer 
< 
AdminController *
>* +
htmlLocalizer, 9
,9 :
CorsService 
corsService #
,# $
	INotifier   
notifier   
)!! 
{"" 	
TH## 
=## 
htmlLocalizer## 
;## 
	_notifier$$ 
=$$ 
notifier$$  
;$$  !
_corsService%% 
=%% 
corsService%% &
;%%& '
T&& 
=&& 
stringLocalizer&& 
;&&  !
_authorizationService'' !
=''" # 
authorizationService''$ 8
;''8 9
}(( 	
[** 	
HttpGet**	 
]** 
public++ 
async++ 
Task++ 
<++ 
ActionResult++ &
>++& '
Index++( -
(++- .
)++. /
{,, 	
if-- 
(-- 
!-- 
await-- !
_authorizationService-- ,
.--, -
AuthorizeAsync--- ;
(--; <
User--< @
,--@ A
Permissions--B M
.--M N
ManageCorsSettings--N `
)--` a
)--a b
{.. 
return// 
Unauthorized// #
(//# $
)//$ %
;//% &
}00 
var22 
settings22 
=22 
await22  
_corsService22! -
.22- .
GetSettingsAsync22. >
(22> ?
)22? @
;22@ A
var44 
list44 
=44 
new44 
List44 
<44  
CorsPolicyViewModel44  3
>443 4
(444 5
)445 6
;446 7
if66 
(66 
settings66 
?66 
.66 
Policies66 "
!=66# %
null66& *
)66* +
{77 
foreach88 
(88 
var88 
policySetting88 *
in88+ -
settings88. 6
.886 7
Policies887 ?
)88? @
{99 
var:: 
policyViewModel:: '
=::( )
new::* -
CorsPolicyViewModel::. A
(::A B
)::B C
{;; 
Name<< 
=<< 
policySetting<< ,
.<<, -
Name<<- 1
,<<1 2
AllowAnyHeader== &
===' (
policySetting==) 6
.==6 7
AllowAnyHeader==7 E
,==E F
AllowedHeaders>> &
=>>' (
policySetting>>) 6
.>>6 7
AllowedHeaders>>7 E
,>>E F
AllowAnyMethod?? &
=??' (
policySetting??) 6
.??6 7
AllowAnyMethod??7 E
,??E F
AllowedMethods@@ &
=@@' (
policySetting@@) 6
.@@6 7
AllowedMethods@@7 E
,@@E F
AllowAnyOriginAA &
=AA' (
policySettingAA) 6
.AA6 7
AllowAnyOriginAA7 E
,AAE F
AllowedOriginsBB &
=BB' (
policySettingBB) 6
.BB6 7
AllowedOriginsBB7 E
,BBE F
AllowCredentialsCC (
=CC) *
policySettingCC+ 8
.CC8 9
AllowCredentialsCC9 I
,CCI J
IsDefaultPolicyDD '
=DD( )
policySettingDD* 7
.DD7 8
IsDefaultPolicyDD8 G
}EE 
;EE 
listGG 
.GG 
AddGG 
(GG 
policyViewModelGG ,
)GG, -
;GG- .
}HH 
}II 
varKK 
	viewModelKK 
=KK 
newKK !
CorsSettingsViewModelKK  5
{LL 
PoliciesMM 
=MM 
listMM 
.MM  
ToArrayMM  '
(MM' (
)MM( )
}NN 
;NN 
returnPP 
ViewPP 
(PP 
	viewModelPP !
)PP! "
;PP" #
}QQ 	
[SS 	
HttpPostSS	 
]SS 
[TT 	

ActionNameTT	 
(TT 
nameofTT 
(TT 
IndexTT  
)TT  !
)TT! "
]TT" #
publicUU 
asyncUU 
TaskUU 
<UU 
ActionResultUU &
>UU& '
	IndexPOSTUU( 1
(UU1 2
)UU2 3
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
.WWM N
ManageCorsSettingsWWN `
)WW` a
)WWa b
{XX 
returnYY 
UnauthorizedYY #
(YY# $
)YY$ %
;YY% &
}ZZ 
var\\ 
model\\ 
=\\ 
new\\ !
CorsSettingsViewModel\\ 1
(\\1 2
)\\2 3
;\\3 4
var]] 

configJson]] 
=]] 
Request]] $
.]]$ %
Form]]% )
[]]) *
$str]]* 8
]]]8 9
.]]9 :
First]]: ?
(]]? @
)]]@ A
;]]A B
model^^ 
.^^ 
Policies^^ 
=^^ 
JsonConvert^^ (
.^^( )
DeserializeObject^^) :
<^^: ;
CorsPolicyViewModel^^; N
[^^N O
]^^O P
>^^P Q
(^^Q R

configJson^^R \
)^^\ ]
;^^] ^
var`` 
corsPolicies`` 
=`` 
new`` "
List``# '
<``' (
CorsPolicySetting``( 9
>``9 :
(``: ;
)``; <
;``< =
foreachbb 
(bb 
varbb 
settingViewModelbb )
inbb* ,
modelbb- 2
.bb2 3
Policiesbb3 ;
)bb; <
{cc 
corsPoliciesdd 
.dd 
Adddd  
(dd  !
newdd! $
CorsPolicySettingdd% 6
{ee 
Nameff 
=ff 
settingViewModelff +
.ff+ ,
Nameff, 0
,ff0 1
AllowAnyHeadergg "
=gg# $
settingViewModelgg% 5
.gg5 6
AllowAnyHeadergg6 D
,ggD E
AllowAnyMethodhh "
=hh# $
settingViewModelhh% 5
.hh5 6
AllowAnyMethodhh6 D
,hhD E
AllowAnyOriginii "
=ii# $
settingViewModelii% 5
.ii5 6
AllowAnyOriginii6 D
,iiD E
AllowCredentialsjj $
=jj% &
settingViewModeljj' 7
.jj7 8
AllowCredentialsjj8 H
,jjH I
AllowedHeaderskk "
=kk# $
settingViewModelkk% 5
.kk5 6
AllowedHeaderskk6 D
,kkD E
AllowedMethodsll "
=ll# $
settingViewModelll% 5
.ll5 6
AllowedMethodsll6 D
,llD E
AllowedOriginsmm "
=mm# $
settingViewModelmm% 5
.mm5 6
AllowedOriginsmm6 D
,mmD E
IsDefaultPolicynn #
=nn$ %
settingViewModelnn% 5
.nn5 6
IsDefaultPolicynn6 E
}pp 
)pp 
;pp 
}qq 
varss 
corsSettingsss 
=ss 
newss "
CorsSettingsss# /
(ss/ 0
)ss0 1
{tt 
Policiesuu 
=uu 
corsPoliciesuu '
}vv 
;vv 
awaitxx 
_corsServicexx 
.xx 
UpdateSettingsAsyncxx 2
(xx2 3
corsSettingsxx3 ?
)xx? @
;xx@ A
	_notifierzz 
.zz 
Successzz 
(zz 
THzz  
[zz  !
$strzz! O
]zzO P
)zzP Q
;zzQ R
return|| 
View|| 
(|| 
model|| 
)|| 
;|| 
}}} 	
}~~ 
} ≤
|D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
,  
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
$str ;
,; <
Category		 
=		 
$str		 
)		 
]		 
D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Permissions.cs
	namespace 	
OrchardCore
 
. 
Cors 
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
ManageCorsSettings

* <
=

= >
new

? B

Permission

C M
(

M N
$str

N b
,

b c
$str

d |
,

| }
isSecurityCritical	

~ ê
:


ê ë
true


í ñ
)


ñ ó
;


ó ò
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
{ 
ManageCorsSettings "
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
{ 
new  
PermissionStereotype (
{) *
Name 
= 
$str *
,* +
Permissions 
=  !
new" %
[% &
]& '
{( )
ManageCorsSettings* <
}= >
} 
, 
} 
; 
} 	
} 
}   û,
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Services\CorsOptionsConfiguration.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 
Services #
{ 
public 

class $
CorsOptionsConfiguration )
:* +
IConfigureOptions, =
<= >
CorsOptions> I
>I J
{		 
private

 
readonly

 
CorsService

 $
_corsService

% 1
;

1 2
private 
readonly 
ILogger  
<  !$
CorsOptionsConfiguration! 9
>9 :
_logger; B
;B C
public $
CorsOptionsConfiguration '
(' (
CorsService( 3
corsService4 ?
,? @
ILoggerA H
<H I$
CorsOptionsConfigurationI a
>a b
loggerc i
)i j
{ 	
_corsService 
= 
corsService &
;& '
_logger 
= 
logger 
; 
} 	
public 
void 
	Configure 
( 
CorsOptions )
options* 1
)1 2
{ 	
var 
corsSettings 
= 
_corsService +
.+ ,
GetSettingsAsync, <
(< =
)= >
.> ?

GetAwaiter? I
(I J
)J K
.K L
	GetResultL U
(U V
)V W
;W X
if 
( 
corsSettings 
? 
. 
Policies &
==' )
null* .
||/ 1
!2 3
corsSettings3 ?
.? @
Policies@ H
.H I
AnyI L
(L M
)M N
)N O
{ 
return 
; 
} 
foreach 
( 
var 

corsPolicy #
in$ &
corsSettings' 3
.3 4
Policies4 <
)< =
{ 
if 
( 

corsPolicy 
. 
AllowCredentials /
&&0 2

corsPolicy3 =
.= >
AllowAnyOrigin> L
)L M
{ 
_logger 
. 

LogWarning &
(& '
$str	' Æ
,
Æ Ø

corsPolicy
∞ ∫
.
∫ ª
Name
ª ø
)
ø ¿
;
¿ ¡
continue   
;   
}!! 
options## 
.## 
	AddPolicy## !
(##! "

corsPolicy##" ,
.##, -
Name##- 1
,##1 2
configurePolicy##3 B
=>##C E
{$$ 
if%% 
(%% 

corsPolicy%% "
.%%" #
AllowAnyHeader%%# 1
)%%1 2
{&& 
configurePolicy'' '
.''' (
AllowAnyHeader''( 6
(''6 7
)''7 8
;''8 9
}(( 
else)) 
{** 
configurePolicy++ '
.++' (
WithHeaders++( 3
(++3 4

corsPolicy++4 >
.++> ?
AllowedOrigins++? M
)++M N
;++N O
},, 
if.. 
(.. 

corsPolicy.. "
..." #
AllowAnyMethod..# 1
)..1 2
{// 
configurePolicy00 '
.00' (
AllowAnyMethod00( 6
(006 7
)007 8
;008 9
}11 
else22 
{33 
configurePolicy44 '
.44' (
WithMethods44( 3
(443 4

corsPolicy444 >
.44> ?
AllowedMethods44? M
)44M N
;44N O
}55 
if77 
(77 

corsPolicy77 "
.77" #
AllowAnyOrigin77# 1
)771 2
{88 
configurePolicy99 '
.99' (
AllowAnyOrigin99( 6
(996 7
)997 8
;998 9
}:: 
else;; 
{<< 
configurePolicy== '
.==' (
WithOrigins==( 3
(==3 4

corsPolicy==4 >
.==> ?
AllowedOrigins==? M
)==M N
;==N O
}>> 
if@@ 
(@@ 

corsPolicy@@ "
.@@" #
AllowCredentials@@# 3
)@@3 4
{AA 
configurePolicyBB '
.BB' (
AllowCredentialsBB( 8
(BB8 9
)BB9 :
;BB: ;
}CC 
elseDD 
{EE 
configurePolicyFF '
.FF' (
DisallowCredentialsFF( ;
(FF; <
)FF< =
;FF= >
}GG 
}HH 
)HH 
;HH 
ifJJ 
(JJ 

corsPolicyJJ 
.JJ 
IsDefaultPolicyJJ -
)JJ- .
{KK 
optionsLL 
.LL 
DefaultPolicyNameLL -
=LL. /

corsPolicyLL0 :
.LL: ;
NameLL; ?
;LL? @
}MM 
}NN 
ifPP 
(PP 
optionsPP 
.PP 
DefaultPolicyNamePP )
==PP* ,
nullPP- 1
)PP1 2
{QQ 
optionsRR 
.RR 
DefaultPolicyNameRR )
=RR* +
corsSettingsRR, 8
.RR8 9
PoliciesRR9 A
.RRA B
FirstOrDefaultRRB P
(RRP Q
)RRQ R
?RRR S
.RRS T
NameRRT X
;RRX Y
}SS 
}TT 	
}UU 
}VV ã
àD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Services\CorsService.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 
Services #
{ 
public		 

class		 
CorsService		 
{

 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public 
CorsService 
( 
ISiteService '
siteService( 3
)3 4
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
async 
Task 
< 
CorsSettings &
>& '
GetSettingsAsync( 8
(8 9
)9 :
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2 
GetSiteSettingsAsync2 F
(F G
)G H
;H I
return 
siteSettings 
.  
As  "
<" #
CorsSettings# /
>/ 0
(0 1
)1 2
;2 3
} 	
internal 
async 
Task 
UpdateSettingsAsync /
(/ 0
CorsSettings0 <
corsSettings= I
)I J
{ 	
var 
siteSettings 
= 
await $
_siteService% 1
.1 2!
LoadSiteSettingsAsync2 G
(G H
)H I
;I J
siteSettings 
. 

Properties #
[# $
nameof$ *
(* +
CorsSettings+ 7
)7 8
]8 9
=: ;
JObject< C
.C D

FromObjectD N
(N O
corsSettingsO [
)[ \
;\ ]
await 
_siteService 
. #
UpdateSiteSettingsAsync 6
(6 7
siteSettings7 C
)C D
;D E
} 	
} 
} ˛
éD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Settings\CorsPolicySetting.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 
Settings #
{ 
public 

class 
CorsPolicySetting "
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
AllowAnyOrigin "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
[		 
]		 
AllowedOrigins		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public 
bool 
AllowAnyHeader "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 
AllowedHeaders &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
AllowAnyMethod "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 
AllowedMethods &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
AllowCredentials $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
IsDefaultPolicy #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ◊
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Settings\CorsSettings.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 
Settings #
{ 
public 

class 
CorsSettings 
{ 
public 
IEnumerable 
< 
CorsPolicySetting ,
>, -
Policies. 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
}		 °
{D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\Startup.cs
	namespace 	
OrchardCore
 
. 
Cors 
{ 
public 

class 
Startup 
: 
StartupBase &
{ 
private 
readonly 
AdminOptions %
_adminOptions& 3
;3 4
public 
Startup 
( 
IOptions 
<  
AdminOptions  ,
>, -
adminOptions. :
): ;
{ 	
_adminOptions 
= 
adminOptions (
.( )
Value) .
;. /
} 	
public 
override 
int 
Order !
=>" $
-% &
$num& '
;' (
public 
override 
void 
	Configure &
(& '
IApplicationBuilder' :
app; >
,> ?!
IEndpointRouteBuilder@ U
routesV \
,\ ]
IServiceProvider^ n
serviceProvidero ~
)~ 
{ 	
app   
.   
UseCors   
(   
)   
;   
var"" 
adminControllerName"" #
=""$ %
typeof""& ,
("", -
AdminController""- <
)""< =
.""= >
ControllerName""> L
(""L M
)""M N
;""N O
routes$$ 
.$$ "
MapAreaControllerRoute$$ )
($$) *
name%% 
:%% 
$str%% !
,%%! "
areaName&& 
:&& 
$str&& ,
,&&, -
pattern'' 
:'' 
_adminOptions'' &
.''& '
AdminUrlPrefix''' 5
+''6 7
$str''8 ?
,''? @
defaults(( 
:(( 
new(( 
{(( 

controller((  *
=((+ ,
adminControllerName((- @
,((@ A
action((B H
=((I J
nameof((K Q
(((Q R
AdminController((R a
.((a b
Index((b g
)((g h
}((i j
))) 
;)) 
}** 	
public,, 
override,, 
void,, 
ConfigureServices,, .
(,,. /
IServiceCollection,,/ A
services,,B J
),,J K
{-- 	
services.. 
... 
	AddScoped.. 
<.. 
INavigationProvider.. 2
,..2 3
	AdminMenu..4 =
>..= >
(..> ?
)..? @
;..@ A
services// 
.// 
	AddScoped// 
<// 
IPermissionProvider// 2
,//2 3
Permissions//4 ?
>//? @
(//@ A
)//A B
;//B C
services00 
.00 
AddSingleton00 !
<00! "
CorsService00" -
>00- .
(00. /
)00/ 0
;000 1
services22 
.22 
TryAddEnumerable22 %
(22% &
ServiceDescriptor22& 7
.33 
	Transient33 
<33 
IConfigureOptions33 ,
<33, -
CorsOptions33- 8
>338 9
,339 :$
CorsOptionsConfiguration33; S
>33S T
(33T U
)33U V
)33V W
;33W X
}44 	
}55 
}66 Ü
íD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\ViewModels\CorsPolicyViewModel.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 

ViewModels %
{ 
public 

class 
CorsPolicyViewModel $
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
AllowAnyOrigin "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
string		 
[		 
]		 
AllowedOrigins		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public 
bool 
AllowAnyHeader "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 
AllowedHeaders &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
AllowAnyMethod "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
[ 
] 
AllowedMethods &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
AllowCredentials $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
IsDefaultPolicy #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ˚
îD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.Cors\ViewModels\CorsSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
Cors 
. 

ViewModels %
{ 
public 

class !
CorsSettingsViewModel &
{ 
public 
CorsPolicyViewModel "
[" #
]# $
Policies% -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
string 
DefaultPolicyName '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
}		 