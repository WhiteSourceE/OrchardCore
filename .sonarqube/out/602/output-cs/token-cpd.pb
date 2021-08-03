≈
ÇD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\AdminMenu.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
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
readonly 
IStringLocalizer )
S* +
;+ ,
public 
	AdminMenu 
( 
IStringLocalizer )
<) *
	AdminMenu* 3
>3 4
	localizer5 >
)> ?
{ 	
S 
= 
	localizer 
; 
} 	
public 
Task  
BuildNavigationAsync (
(( )
string) /
name0 4
,4 5
NavigationBuilder6 G
builderH O
)O P
{ 	
if 
( 
! 
String 
. 
Equals 
( 
name #
,# $
$str% ,
,, -
StringComparison. >
.> ?
OrdinalIgnoreCase? P
)P Q
)Q R
{ 
return 
Task 
. 
CompletedTask )
;) *
} 
builder 
. 
Add 
( 
S 
[ 
$str !
]! "
," #
security$ ,
=>- /
security0 8
. 
Add 
( 
S 
[ 
$str %
]% &
,& '
settings( 0
=>1 3
settings4 <
. 
Add 
( 
S 
[ 
$str *
]* +
,+ ,
S- .
[. /
$str/ :
]: ;
.; <
PrefixPosition< J
(J K
)K L
,L M
registrationN Z
=>[ ]
registration^ j
. 

Permission '
(' (
Permissions( 3
.3 4#
ManageReCaptchaSettings4 K
)K L
. 
Action #
(# $
$str$ +
,+ ,
$str- 4
,4 5
new6 9
{: ;
area< @
=A B
$strC Y
,Y Z
groupId[ b
=c d+
ReCaptchaSettingsDisplayDriver	e É
.
É Ñ
GroupId
Ñ ã
}
å ç
)
ç é
. 
LocalNav %
(% &
)& '
)   
)   
)   
;   
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% €-
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Drivers\ReCaptchaSectionDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Drivers  '
{ 
public 

class *
ReCaptchaSettingsDisplayDriver /
:0 1 
SectionDisplayDriver2 F
<F G
ISiteG L
,L M
ReCaptchaSettingsN _
>_ `
{ 
public 
const 
string 
GroupId #
=$ %
$str& 1
;1 2
private 
readonly 

IShellHost #

_shellHost$ .
;. /
private 
readonly 
ShellSettings &
_shellSettings' 5
;5 6
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
private 
readonly !
IAuthorizationService .!
_authorizationService/ D
;D E
public *
ReCaptchaSettingsDisplayDriver -
(- .

IShellHost 
	shellHost  
,  !
ShellSettings 
shellSettings '
,' ( 
IHttpContextAccessor  
httpContextAccessor! 4
,4 5!
IAuthorizationService ! 
authorizationService" 6
)6 7
{ 	

_shellHost 
= 
	shellHost "
;" #
_shellSettings 
= 
shellSettings *
;* + 
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7!
_authorizationService !
=" # 
authorizationService$ 8
;8 9
}   	
public"" 
override"" 
async"" 
Task"" "
<""" #
IDisplayResult""# 1
>""1 2
	EditAsync""3 <
(""< =
ReCaptchaSettings""= N
settings""O W
,""W X
BuildEditorContext""Y k
context""l s
)""s t
{## 	
var$$ 
user$$ 
=$$  
_httpContextAccessor$$ +
.$$+ ,
HttpContext$$, 7
?$$7 8
.$$8 9
User$$9 =
;$$= >
if&& 
(&& 
!&& 
await&& !
_authorizationService&& ,
.&&, -
AuthorizeAsync&&- ;
(&&; <
user&&< @
,&&@ A
Permissions&&B M
.&&M N#
ManageReCaptchaSettings&&N e
)&&e f
)&&f g
{'' 
return(( 
null(( 
;(( 
})) 
return++ 

Initialize++ 
<++ &
ReCaptchaSettingsViewModel++ 8
>++8 9
(++9 :
$str++: R
,++R S
model++T Y
=>++Z \
{,, 
model-- 
.-- 
SiteKey-- !
=--" #
settings--$ ,
.--, -
SiteKey--- 4
;--4 5
model.. 
... 
	SecretKey.. #
=..$ %
settings..& .
.... /
	SecretKey../ 8
;..8 9
}// 
)// 
.00 
Location00 
(00 
$str00 #
)00# $
.11 
OnGroup11 
(11 
GroupId11  
)11  !
;11! "
}22 	
public44 
override44 
async44 
Task44 "
<44" #
IDisplayResult44# 1
>441 2
UpdateAsync443 >
(44> ?
ReCaptchaSettings44? P
section44Q X
,44X Y
BuildEditorContext44Z l
context44m t
)44t u
{55 	
var66 
user66 
=66  
_httpContextAccessor66 +
.66+ ,
HttpContext66, 7
?667 8
.668 9
User669 =
;66= >
if88 
(88 
!88 
await88 !
_authorizationService88 ,
.88, -
AuthorizeAsync88- ;
(88; <
user88< @
,88@ A
Permissions88B M
.88M N#
ManageReCaptchaSettings88N e
)88e f
)88f g
{99 
return:: 
null:: 
;:: 
};; 
if== 
(== 
context== 
.== 
GroupId== 
====  "
GroupId==# *
)==* +
{>> 
var?? 
model?? 
=?? 
new?? &
ReCaptchaSettingsViewModel??  :
(??: ;
)??; <
;??< =
ifAA 
(AA 
awaitAA 
contextAA !
.AA! "
UpdaterAA" )
.AA) *
TryUpdateModelAsyncAA* =
(AA= >
modelAA> C
,AAC D
PrefixAAE K
)AAK L
)AAL M
{BB 
sectionCC 
.CC 
SiteKeyCC #
=CC$ %
modelCC& +
.CC+ ,
SiteKeyCC, 3
?CC3 4
.CC4 5
TrimCC5 9
(CC9 :
)CC: ;
;CC; <
sectionDD 
.DD 
	SecretKeyDD %
=DD& '
modelDD( -
.DD- .
	SecretKeyDD. 7
?DD7 8
.DD8 9
TrimDD9 =
(DD= >
)DD> ?
;DD? @
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
returnKK 
awaitKK 
	EditAsyncKK "
(KK" #
sectionKK# *
,KK* +
contextKK, 3
)KK3 4
;KK4 5
}LL 	
}MM 
}NN Ø
âD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Forms\Migrations.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Forms  %
{ 
public 

class 

Migrations 
: 
DataMigration +
{ 
private		 
readonly		 %
IContentDefinitionManager		 2%
_contentDefinitionManager		3 L
;		L M
public 

Migrations 
( %
IContentDefinitionManager 3$
contentDefinitionManager4 L
)L M
{ 	%
_contentDefinitionManager %
=& '$
contentDefinitionManager( @
;@ A
} 	
public 
int 
Create 
( 
) 
{ 	%
_contentDefinitionManager %
.% &
AlterPartDefinition& 9
(9 :
$str: I
,I J
partK O
=>P R
partS W
. 
WithDescription  
(  !
$str! ?
)? @
)@ A
;A B%
_contentDefinitionManager %
.% &
AlterTypeDefinition& 9
(9 :
$str: E
,E F
typeG K
=>L N
typeO S
. 
WithPart 
( 
$str )
)) *
. 

Stereotype 
( 
$str $
)$ %
)% &
;& '
return 
$num 
; 
} 	
} 
} ß
åD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Forms\ReCaptchaPart.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Forms  %
{ 
public 

class 
ReCaptchaPart 
:  
ContentPart! ,
{ 
} 
} ≥
ôD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Forms\ReCaptchaPartDisplayDriver.cs
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
  
Forms

  %
{ 
public 

class &
ReCaptchaPartDisplayDriver +
:, -$
ContentPartDisplayDriver. F
<F G
ReCaptchaPartG T
>T U
{ 
private 
readonly 
ISiteService %
_siteService& 2
;2 3
public &
ReCaptchaPartDisplayDriver )
() *
ISiteService* 6
siteService7 B
)B C
{ 	
_siteService 
= 
siteService &
;& '
} 	
public 
override 
IDisplayResult &
Display' .
(. /
ReCaptchaPart/ <
part= A
,A B#
BuildPartDisplayContextC Z
context[ b
)b c
{ 	
return 

Initialize 
( 
$str -
,- .
(/ 0
Func0 4
<4 5"
ReCaptchaPartViewModel5 K
,K L
	ValueTaskM V
>V W
)W X
(X Y
asyncY ^
m_ `
=>a c
{ 
var 
siteSettings  
=! "
await# (
_siteService) 5
.5 6 
GetSiteSettingsAsync6 J
(J K
)K L
;L M
var 
settings 
= 
siteSettings +
.+ ,
As, .
<. /
ReCaptchaSettings/ @
>@ A
(A B
)B C
;C D
m 
. !
SettingsAreConfigured '
=( )
settings* 2
.2 3
IsValid3 :
(: ;
); <
;< =
} 
) 
) 
. 
Location 
( 
$str !
,! "
$str# ,
), -
;- .
} 	
public 
override 
IDisplayResult &
Edit' +
(+ ,
ReCaptchaPart, 9
part: >
,> ?"
BuildPartEditorContext@ V
contextW ^
)^ _
{   	
return!! 

Initialize!! 
<!! "
ReCaptchaPartViewModel!! 4
>!!4 5
(!!5 6
$str!!6 Q
,!!Q R
async!!S X
m!!Y Z
=>!![ ]
{"" 
var## 
siteSettings##  
=##! "
await### (
_siteService##) 5
.##5 6 
GetSiteSettingsAsync##6 J
(##J K
)##K L
;##L M
var$$ 
settings$$ 
=$$ 
siteSettings$$ +
.$$+ ,
As$$, .
<$$. /
ReCaptchaSettings$$/ @
>$$@ A
($$A B
)$$B C
;$$C D
m%% 
.%% !
SettingsAreConfigured%% '
=%%( )
settings%%* 2
.%%2 3
IsValid%%3 :
(%%: ;
)%%; <
;%%< =
}&& 
)&& 
;&& 
}'' 	
}(( 
})) ∏
ïD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Forms\ReCaptchaPartViewModel.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Forms  %
{ 
public 

class "
ReCaptchaPartViewModel '
{ 
public 
bool !
SettingsAreConfigured )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ∫
ÜD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Forms\Startup.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Forms  %
{		 
[

 
RequireFeatures

 
(

 
$str

 (
,

( )
$str

* A
)

A B
]

B C
public 

class 
Startup 
: 
StartupBase &
{ 
static 
Startup 
( 
) 
{ 	
TemplateContext 
. &
GlobalMemberAccessStrategy 6
.6 7
Register7 ?
<? @
ReCaptchaPart@ M
>M N
(N O
)O P
;P Q
} 	
public 
override 
void 
ConfigureServices .
(. /
IServiceCollection/ A
servicesB J
)J K
{ 	
services 
. 
AddContentPart #
<# $
ReCaptchaPart$ 1
>1 2
(2 3
)3 4
. 
UseDisplayDriver !
<! "&
ReCaptchaPartDisplayDriver" <
>< =
(= >
)> ?
;? @
services 
. 
	AddScoped 
< 
IDataMigration -
,- .

Migrations/ 9
>9 :
(: ;
); <
;< =
} 	
} 
} Õ
ÅD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Manifest.cs
[ 
assembly 	
:	 

Module 
( 
Name 
=	 

$str 
, 
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
)2 3
]3 4
[		 
assembly		 	
:			 

Feature		 
(		 
Id

 
=

 
$str

	  
,

  !
Name 
=	 

$str 
, 
Category 
= 
$str 
, 
Description 
= 
$str :
): ;
]; <
[ 
assembly 	
:	 

Feature 
( 
Id 
= 
$str	 &
,& '
Name 
=	 

$str 
, 
Description 
= 
$str z
,z {
Category 
= 
$str 
, 
Dependencies 
= 
new 
[ 
] 
{ 
$str 2
,2 3
$str4 G
}H I
)I J
]J K¢
ÑD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Permissions.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
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
 )#
ManageReCaptchaSettings

* A
=

B C
new 

Permission 
( 
$str )
,) *
$str +
) 
; 
public 
Task 
< 
IEnumerable 
<  

Permission  *
>* +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
return 
Task 
. 

FromResult "
(" #
new# &
[& '
]' (
{ #
ManageReCaptchaSettings '
} 
. 
AsEnumerable 
( 
) 
) 
; 
} 	
public 
IEnumerable 
<  
PermissionStereotype /
>/ 0!
GetDefaultStereotypes1 F
(F G
)G H
{ 	
return 
new 
[ 
] 
{ 
new  
PermissionStereotype (
{ 
Name   
=   
$str   *
,  * +
Permissions!! 
=!!  !
new!!" %
[!!% &
]!!& '
{!!( )#
ManageReCaptchaSettings!!* A
}!!B C
}"" 
}## 
;## 
}$$ 	
}%% 
}&& Â+
çD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\ReCaptchaLoginFilter.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
{ 
public 

class  
ReCaptchaLoginFilter %
:& '
IAsyncResultFilter( :
{ 
private 
readonly 
ILayoutAccessor (
_layoutAccessor) 8
;8 9
private 
readonly 
ISiteService %
_siteService& 2
;2 3
private 
readonly 
ReCaptchaService )
_reCaptchaService* ;
;; <
private 
readonly 
IShapeFactory &
_shapeFactory' 4
;4 5
public  
ReCaptchaLoginFilter #
(# $
ILayoutAccessor 
layoutAccessor *
,* +
ISiteService 
siteService $
,$ %
ReCaptchaService 
reCaptchaService -
,- .
IShapeFactory 
shapeFactory &
)& '
{ 	
_layoutAccessor 
= 
layoutAccessor ,
;, -
_siteService 
= 
siteService &
;& '
_reCaptchaService 
= 
reCaptchaService  0
;0 1
_shapeFactory 
= 
shapeFactory (
;( )
}   	
public"" 
async"" 
Task"" "
OnResultExecutionAsync"" 0
(""0 1"
ResultExecutingContext""1 G
context""H O
,""O P#
ResultExecutionDelegate""Q h
next""i m
)""m n
{## 	
if$$ 
($$ 
!$$ 
($$ 
context$$ 
.$$ 
Result$$  
is$$! #

ViewResult$$$ .
||$$/ 1
context$$2 9
.$$9 :
Result$$: @
is$$A C

PageResult$$D N
)$$N O
||%% 
!%% 
String%% 
.%% 
Equals%% !
(%%! "
$str%%" 5
,%%5 6
Convert%%7 >
.%%> ?
ToString%%? G
(%%G H
context%%H O
.%%O P
	RouteData%%P Y
.%%Y Z
Values%%Z `
[%%` a
$str%%a g
]%%g h
)%%h i
,%%i j
StringComparison%%k {
.%%{ |
OrdinalIgnoreCase	%%| ç
)
%%ç é
)
%%é è
{&& 
await'' 
next'' 
('' 
)'' 
;'' 
return(( 
;(( 
})) 
var++ 
settings++ 
=++ 
(++ 
await++ !
_siteService++" .
.++. / 
GetSiteSettingsAsync++/ C
(++C D
)++D E
)++E F
.++F G
As++G I
<++I J
ReCaptchaSettings++J [
>++[ \
(++\ ]
)++] ^
;++^ _
if-- 
(-- 
!-- 
settings-- 
.-- 
IsValid-- !
(--! "
)--" #
)--# $
{.. 
await// 
next// 
(// 
)// 
;// 
return00 
;00 
}11 
dynamic33 
layout33 
=33 
await33 "
_layoutAccessor33# 2
.332 3
GetLayoutAsync333 A
(33A B
)33B C
;33C D
var55 
afterLoginZone55 
=55  
layout55! '
.55' (
Zones55( -
[55- .
$str55. :
]55: ;
;55; <
if77 
(77 
_reCaptchaService77 !
.77! "
IsThisARobot77" .
(77. /
)77/ 0
)770 1
{88 
afterLoginZone99 
.99 
Add99 "
(99" #
await99# (
_shapeFactory99) 6
.996 7
New997 :
.99: ;
	ReCaptcha99; D
(99D E
)99E F
)99F G
;99G H
}:: 
var<< 
afterForgotPassword<< #
=<<$ %
layout<<& ,
.<<, -
Zones<<- 2
[<<2 3
$str<<3 H
]<<H I
;<<I J
afterForgotPassword== 
.==  
Add==  #
(==# $
await==$ )
_shapeFactory==* 7
.==7 8
New==8 ;
.==; <
	ReCaptcha==< E
(==E F
)==F G
)==G H
;==H I
var?? 
afterRegister?? 
=?? 
layout??  &
.??& '
Zones??' ,
[??, -
$str??- <
]??< =
;??= >
afterRegister@@ 
.@@ 
Add@@ 
(@@ 
await@@ #
_shapeFactory@@$ 1
.@@1 2
New@@2 5
.@@5 6
	ReCaptcha@@6 ?
(@@? @
)@@@ A
)@@A B
;@@B C
varBB 
afterResetPasswordBB "
=BB# $
layoutBB% +
.BB+ ,
ZonesBB, 1
[BB1 2
$strBB2 F
]BBF G
;BBG H
afterResetPasswordCC 
.CC 
AddCC "
(CC" #
awaitCC# (
_shapeFactoryCC) 6
.CC6 7
NewCC7 :
.CC: ;
	ReCaptchaCC; D
(CCD E
)CCE F
)CCF G
;CCG H
awaitEE 
nextEE 
(EE 
)EE 
;EE 
}FF 	
}GG 
}HH Œ&
ÄD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Startup.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
{ 
[ 
Feature 
( 
$str $
)$ %
]% &
public 

class 
Startup 
: 
StartupBase &
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
. 
AddReCaptcha !
(! "
)" #
;# $
services 
. 
	AddScoped 
< 
IDisplayDriver -
<- .
ISite. 3
>3 4
,4 5*
ReCaptchaSettingsDisplayDriver6 T
>T U
(U V
)V W
;W X
services 
. 
	AddScoped 
< 
INavigationProvider 2
,2 3
	AdminMenu4 =
>= >
(> ?
)? @
;@ A
} 	
} 
[ 
Feature 
( 
$str $
)$ %
]% &
[ 
RequireFeatures 
( 
$str -
)- .
]. /
public   

class   
DeploymentStartup   "
:  # $
StartupBase  % 0
{!! 
public"" 
override"" 
void"" 
ConfigureServices"" .
("". /
IServiceCollection""/ A
services""B J
)""J K
{## 	
services$$ 
.$$ 
AddTransient$$ !
<$$! "
IDeploymentSource$$" 3
,$$3 40
$SiteSettingsPropertyDeploymentSource$$5 Y
<$$Y Z
ReCaptchaSettings$$Z k
>$$k l
>$$l m
($$m n
)$$n o
;$$o p
services%% 
.%% 
	AddScoped%% 
<%% 
IDisplayDriver%% -
<%%- .
DeploymentStep%%. <
>%%< =
>%%= >
(%%> ?
sp%%? A
=>%%B D
{&& 
var'' 
S'' 
='' 
sp'' 
.'' 

GetService'' %
<''% &
IStringLocalizer''& 6
<''6 7
DeploymentStartup''7 H
>''H I
>''I J
(''J K
)''K L
;''L M
return(( 
new(( 4
(SiteSettingsPropertyDeploymentStepDriver(( C
<((C D
ReCaptchaSettings((D U
>((U V
(((V W
S((W X
[((X Y
$str((Y m
]((m n
,((n o
S((p q
[((q r
$str	((r ì
]
((ì î
)
((î ï
;
((ï ñ
})) 
))) 
;)) 
services** 
.** 
AddSingleton** !
<**! ""
IDeploymentStepFactory**" 8
>**8 9
(**9 :
new**: =5
)SiteSettingsPropertyDeploymentStepFactory**> g
<**g h
ReCaptchaSettings**h y
>**y z
(**z {
)**{ |
)**| }
;**} ~
}++ 	
},, 
[.. 
Feature.. 
(.. 
$str.. *
)..* +
]..+ ,
public// 

class// 
StartupUsers// 
:// 
StartupBase//  +
{00 
public11 
override11 
void11 
ConfigureServices11 .
(11. /
IServiceCollection11/ A
services11B J
)11J K
{22 	
services33 
.33 
	AddScoped33 
<33 #
IRegistrationFormEvents33 6
,336 7(
RegistrationFormEventHandler338 T
>33T U
(33U V
)33V W
;33W X
services44 
.44 
	AddScoped44 
<44 
ILoginFormEvent44 .
,44. /&
LoginFormEventEventHandler440 J
>44J K
(44K L
)44L M
;44M N
services55 
.55 
	AddScoped55 
<55 '
IPasswordRecoveryFormEvents55 :
,55: ;1
%PasswordRecoveryFormEventEventHandler55< a
>55a b
(55b c
)55c d
;55d e
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
(88* + 
ReCaptchaLoginFilter88+ ?
)88? @
)88@ A
;88A B
}99 
)99 
;99 
}:: 	
};; 
}<< ¢
¢D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Users\Handlers\LoginFormEventEventHandler.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Users  %
.% &
Handlers& .
{ 
public 

class &
LoginFormEventEventHandler +
:, -
ILoginFormEvent. =
{		 
private

 
readonly

 
ReCaptchaService

 )
_reCaptchaService

* ;
;

; <
public &
LoginFormEventEventHandler )
() *
ReCaptchaService* :
reCaptchaService; K
)K L
{ 	
_reCaptchaService 
= 
reCaptchaService  0
;0 1
} 	
public 
Task 
LoggedInAsync !
(! "
string" (
userName) 1
)1 2
{ 	
_reCaptchaService 
. 
ThisIsAHuman *
(* +
)+ ,
;, -
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
async 
Task 
LoggingInAsync (
(( )
string) /
userName0 8
,8 9
Action: @
<@ A
stringA G
,G H
stringI O
>O P
reportErrorQ \
)\ ]
{ 	
if 
( 
_reCaptchaService !
.! "
IsThisARobot" .
(. /
)/ 0
)0 1
{ 
await 
_reCaptchaService '
.' ( 
ValidateCaptchaAsync( <
(< =
reportError= H
)H I
;I J
} 
} 	
public 
Task  
LoggingInFailedAsync (
(( )
string) /
userName0 8
)8 9
{   	
_reCaptchaService!! 
.!! 
MaybeThisIsARobot!! /
(!!/ 0
)!!0 1
;!!1 2
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% —
≠D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Users\Handlers\PasswordRecoveryFormEventEventHandler.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Users  %
.% &
Handlers& .
{ 
public 

class 1
%PasswordRecoveryFormEventEventHandler 6
:7 8'
IPasswordRecoveryFormEvents9 T
{		 
private

 
readonly

 
ReCaptchaService

 )
_recaptchaService

* ;
;

; <
public 1
%PasswordRecoveryFormEventEventHandler 4
(4 5
ReCaptchaService5 E
recaptchaServiceF V
)V W
{ 	
_recaptchaService 
= 
recaptchaService  0
;0 1
} 	
public 
Task #
RecoveringPasswordAsync +
(+ ,
Action, 2
<2 3
string3 9
,9 :
string; A
>A B
reportErrorC N
)N O
{ 	
return 
_recaptchaService $
.$ % 
ValidateCaptchaAsync% 9
(9 :
reportError: E
)E F
;F G
} 	
public 
Task 
PasswordResetAsync &
(& '
)' (
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task "
ResettingPasswordAsync *
(* +
Action+ 1
<1 2
string2 8
,8 9
string: @
>@ A
reportErrorB M
)M N
{ 	
return 
_recaptchaService $
.$ % 
ValidateCaptchaAsync% 9
(9 :
reportError: E
)E F
;F G
} 	
public   
Task   "
PasswordRecoveredAsync   *
(  * +
)  + ,
{!! 	
return"" 
Task"" 
."" 
CompletedTask"" %
;""% &
}## 	
}$$ 
}%% º
üD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Users\Handlers\RegistrationFormHandler.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
Users  %
.% &
Handlers& .
{ 
public		 

class		 (
RegistrationFormEventHandler		 -
:		. /#
IRegistrationFormEvents		0 G
{

 
private 
readonly 
ReCaptchaService )
_reCaptchaService* ;
;; <
public (
RegistrationFormEventHandler +
(+ ,
ReCaptchaService, <
recaptchaService= M
)M N
{ 	
_reCaptchaService 
= 
recaptchaService  0
;0 1
} 	
public 
Task 
RegisteredAsync #
(# $
IUser$ )
user* .
). /
{ 	
return 
Task 
. 
CompletedTask %
;% &
} 	
public 
Task '
RegistrationValidationAsync /
(/ 0
Action0 6
<6 7
string7 =
,= >
string? E
>E F
reportErrorG R
)R S
{ 	
return 
_reCaptchaService $
.$ % 
ValidateCaptchaAsync% 9
(9 :
reportError: E
)E F
;F G
} 	
} 
} €
ûD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\ViewModels\ReCaptchaSettingsViewModel.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  

ViewModels  *
{ 
public 

class &
ReCaptchaSettingsViewModel +
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
}, -
} 
}		 Á
äD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Workflows\Startup.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
	Workflows  )
{ 
[ 
RequireFeatures 
( 
$str ,
,, -
$str. E
)E F
]F G
public 

class 
Startup 
: 
StartupBase &
{		 
public

 
override

 
void

 
ConfigureServices

 .
(

. /
IServiceCollection

/ A
services

B J
)

J K
{ 	
services 
. 
AddActivity  
<  !!
ValidateReCaptchaTask! 6
,6 7.
"ValidateReCaptchaTaskDisplayDriver8 Z
>Z [
([ \
)\ ]
;] ^
} 	
} 
} ˙!
òD:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Workflows\ValidateReCaptchaTask.cs
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
  
	Workflows

  )
{ 
public 

class !
ValidateReCaptchaTask &
:' (
TaskActivity) 5
{ 
private 
readonly 
ReCaptchaService )
_reCaptchaService* ;
;; <
private 
readonly  
IUpdateModelAccessor - 
_updateModelAccessor. B
;B C
private 
readonly 
IStringLocalizer )
S* +
;+ ,
public !
ValidateReCaptchaTask $
($ %
ReCaptchaService 
reCaptchaService -
,- . 
IUpdateModelAccessor  
updateModelAccessor! 4
,4 5
IStringLocalizer 
< !
ValidateReCaptchaTask 2
>2 3
	localizer4 =
) 	
{ 	
_reCaptchaService 
= 
reCaptchaService  0
;0 1 
_updateModelAccessor  
=! "
updateModelAccessor# 6
;6 7
S 
= 
	localizer 
; 
} 	
public 
override 
string 
Name #
=>$ &
nameof' -
(- .!
ValidateReCaptchaTask. C
)C D
;D E
public 
override 
LocalizedString '
DisplayText( 3
=>4 6
S7 8
[8 9
$str9 R
]R S
;S T
public!! 
override!! 
LocalizedString!! '
Category!!( 0
=>!!1 3
S!!4 5
[!!5 6
$str!!6 B
]!!B C
;!!C D
public## 
override## 
bool## 
	HasEditor## &
=>##' )
false##* /
;##/ 0
public%% 
override%% 
IEnumerable%% #
<%%# $
Outcome%%$ +
>%%+ ,
GetPossibleOutcomes%%- @
(%%@ A$
WorkflowExecutionContext%%A Y
workflowContext%%Z i
,%%i j
ActivityContext%%k z
activityContext	%%{ ä
)
%%ä ã
{&& 	
return'' 
Outcomes'' 
('' 
S'' 
['' 
$str'' $
]''$ %
,''% &
S''' (
[''( )
$str'') 0
]''0 1
,''1 2
S''3 4
[''4 5
$str''5 >
]''> ?
)''? @
;''@ A
}(( 	
public** 
override** 
async** 
Task** "
<**" ##
ActivityExecutionResult**# :
>**: ;
ExecuteAsync**< H
(**H I$
WorkflowExecutionContext**I a
workflowContext**b q
,**q r
ActivityContext	**s Ç
activityContext
**É í
)
**í ì
{++ 	
var,, 
outcome,, 
=,, 
$str,, !
;,,! "
await.. 
_reCaptchaService.. #
...# $ 
ValidateCaptchaAsync..$ 8
(..8 9
(..9 :
key..: =
,..= >
error..? D
)..D E
=>..F H
{// 
var00 
updater00 
=00  
_updateModelAccessor00 2
.002 3
ModelUpdater003 ?
;00? @
outcome11 
=11 
$str11 #
;11# $
if22 
(22 
updater22 
!=22 
null22 #
)22# $
{33 
updater44 
.44 

ModelState44 &
.44& '
TryAddModelError44' 7
(447 8
	Constants448 A
.44A B-
!ReCaptchaServerResponseHeaderName44B c
,44c d
S44e f
[44f g
$str	44g é
]
44é è
)
44è ê
;
44ê ë
}55 
}66 
)66 
;66 
return88 
Outcomes88 
(88 
$str88 "
,88" #
outcome88$ +
)88+ ,
;88, -
}99 	
}:: 
};; §
•D:\Projects\DefensePoint\whitesource-testcases-csharp\CWE79\OrchardCore\src\OrchardCore.Modules\OrchardCore.ReCaptcha\Workflows\ValidateReCaptchaTaskDisplayDriver.cs
	namespace 	
OrchardCore
 
. 
	ReCaptcha 
.  
	Workflows  )
{ 
public 

class .
"ValidateReCaptchaTaskDisplayDriver 3
:4 5!
ActivityDisplayDriver6 K
<K L!
ValidateReCaptchaTaskL a
>a b
{ 
} 
} 